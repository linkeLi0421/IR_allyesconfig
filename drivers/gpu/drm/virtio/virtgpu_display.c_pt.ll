; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/virtio/virtgpu_display.c_pt.bc'
source_filename = "../drivers/gpu/drm/virtio/virtgpu_display.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_gpu_device = type { ptr, ptr, ptr, [16 x %struct.virtio_gpu_output], i32, %struct.virtio_gpu_queue, %struct.virtio_gpu_queue, ptr, %struct.atomic_t, %struct.ida, %struct.wait_queue_head, %struct.spinlock, i8, %struct.virtio_gpu_fence_driver, %struct.ida, i8, i8, i8, i8, i8, i8, i8, %struct.virtio_shm_region, %struct.drm_mm, %struct.work_struct, %struct.work_struct, %struct.spinlock, %struct.list_head, ptr, i32, i64, %struct.list_head, %struct.spinlock, %struct.spinlock }
%struct.virtio_gpu_output = type { i32, %struct.drm_crtc, %struct.drm_connector, %struct.drm_encoder, %struct.virtio_gpu_display_one, %struct.virtio_gpu_update_cursor, ptr, i32, i32, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.virtio_gpu_display_one = type { %struct.virtio_gpu_rect, i32, i32 }
%struct.virtio_gpu_rect = type { i32, i32, i32, i32 }
%struct.virtio_gpu_update_cursor = type { %struct.virtio_gpu_ctrl_hdr, %struct.virtio_gpu_cursor_pos, i32, i32, i32, i32 }
%struct.virtio_gpu_ctrl_hdr = type { i32, i32, i64, i32, i8, [3 x i8] }
%struct.virtio_gpu_cursor_pos = type { i32, i32, i32, i32 }
%struct.virtio_gpu_queue = type { ptr, %struct.spinlock, %struct.wait_queue_head, %struct.work_struct }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.virtio_gpu_fence_driver = type { %struct.atomic64_t, i64, i64, %struct.list_head, %struct.spinlock }
%struct.atomic64_t = type { i64 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.virtio_shm_region = type { i64, i64 }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@virtio_gpu_mode_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @virtio_gpu_user_framebuffer_create, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@virtio_gpu_fb_funcs = internal constant { %struct.drm_framebuffer_funcs, [20 x i8] } { %struct.drm_framebuffer_funcs { ptr @drm_gem_fb_destroy, ptr @drm_gem_fb_create_handle, ptr @drm_atomic_helper_dirtyfb }, [20 x i8] zeroinitializer }, align 32
@virtio_gpu_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@virtio_gpu_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtio_gpu_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr @virtio_gpu_crtc_atomic_check, ptr null, ptr @virtio_gpu_crtc_atomic_flush, ptr @virtio_gpu_crtc_atomic_enable, ptr @virtio_gpu_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@virtio_gpu_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @virtio_gpu_conn_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @virtio_gpu_conn_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@virtio_gpu_conn_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @virtio_gpu_conn_get_modes, ptr null, ptr @virtio_gpu_conn_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@virtio_gpu_enc_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @virtio_gpu_enc_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @virtio_gpu_enc_disable, ptr @virtio_gpu_enc_enable, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"add mode: %dx%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"del mode: %dx%d\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 875708738, i64 875714626]
@___asan_gen_.2 = private unnamed_addr constant [22 x i8] c"virtio_gpu_mode_funcs\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 326, i32 43 }
@___asan_gen_.5 = private unnamed_addr constant [20 x i8] c"virtio_gpu_fb_funcs\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 59, i32 43 }
@___asan_gen_.8 = private unnamed_addr constant [22 x i8] c"virtio_gpu_crtc_funcs\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 49, i32 36 }
@___asan_gen_.11 = private unnamed_addr constant [29 x i8] c"virtio_gpu_crtc_helper_funcs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 137, i32 43 }
@___asan_gen_.14 = private unnamed_addr constant [27 x i8] c"virtio_gpu_connector_funcs\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 242, i32 41 }
@___asan_gen_.17 = private unnamed_addr constant [29 x i8] c"virtio_gpu_conn_helper_funcs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 218, i32 48 }
@___asan_gen_.20 = private unnamed_addr constant [28 x i8] c"virtio_gpu_enc_helper_funcs\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 212, i32 46 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 179, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [44 x i8] c"../drivers/gpu/drm/virtio/virtgpu_display.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 208, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @virtio_gpu_mode_funcs, ptr @virtio_gpu_fb_funcs, ptr @virtio_gpu_crtc_funcs, ptr @virtio_gpu_crtc_helper_funcs, ptr @virtio_gpu_connector_funcs, ptr @virtio_gpu_conn_helper_funcs, ptr @virtio_gpu_enc_helper_funcs, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_mode_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_fb_funcs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_conn_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_gpu_enc_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_gpu_modeset_init(ptr noundef %vgdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 1
  %0 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddev, align 4
  %call = tail call i32 @drmm_mode_config_init(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddev, align 4
  %quirk_addfb_prefer_host_byte_order = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 95
  %4 = ptrtoint ptr %quirk_addfb_prefer_host_byte_order to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %quirk_addfb_prefer_host_byte_order, align 2
  %5 = load ptr, ptr %ddev, align 4
  %funcs = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 27
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @virtio_gpu_mode_funcs, ptr %funcs, align 4
  %7 = load ptr, ptr %ddev, align 4
  %min_width = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 23
  %8 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %min_width, align 4
  %9 = load ptr, ptr %ddev, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 30, i32 24
  %10 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 32, ptr %min_height, align 4
  %11 = load ptr, ptr %ddev, align 4
  %max_width = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 25
  %12 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8192, ptr %max_width, align 4
  %13 = load ptr, ptr %ddev, align 4
  %max_height = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 26
  %14 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8192, ptr %max_height, align 4
  %num_scanouts = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 4
  %15 = ptrtoint ptr %num_scanouts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_scanouts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp27.not = icmp eq i32 %16, 0
  br i1 %cmp27.not, label %if.end.for.end_crit_edge, label %if.end.i.peel

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.i.peel:                                    ; preds = %if.end
  %outputs.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 3
  %has_edid.i = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 16
  %17 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ddev, align 4
  %conn.i.peel = getelementptr %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 3, i32 0, i32 2
  %enc.i.peel = getelementptr %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 3, i32 0, i32 3
  %crtc1.i.peel = getelementptr %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 3, i32 0, i32 1
  %19 = ptrtoint ptr %outputs.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %outputs.i, align 8
  %height.i = getelementptr %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 3, i32 0, i32 4, i32 0, i32 3
  %width.i = getelementptr %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 3, i32 0, i32 4, i32 0, i32 2
  %enabled.i = getelementptr %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 3, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16777216, ptr %enabled.i, align 8
  %21 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 262144, ptr %width.i, align 8
  %22 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 196608, ptr %height.i, align 4
  %call.i.peel = tail call ptr @virtio_gpu_plane_init(ptr noundef %vgdev, i32 noundef 1, i32 noundef 0) #8
  %cmp.i.i.peel = icmp ugt ptr %call.i.peel, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.peel, label %if.end.i.peel.vgdev_output_init.exit.peel_crit_edge, label %if.end9.i.peel

if.end.i.peel.vgdev_output_init.exit.peel_crit_edge: ; preds = %if.end.i.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %vgdev_output_init.exit.peel

if.end9.i.peel:                                   ; preds = %if.end.i.peel
  %call10.i.peel = tail call ptr @virtio_gpu_plane_init(ptr noundef %vgdev, i32 noundef 2, i32 noundef 0) #8
  %cmp.i1.i.peel = icmp ugt ptr %call10.i.peel, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i.peel, label %if.end9.i.peel.vgdev_output_init.exit.peel_crit_edge, label %if.end14.i.peel

if.end9.i.peel.vgdev_output_init.exit.peel_crit_edge: ; preds = %if.end9.i.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %vgdev_output_init.exit.peel

if.end14.i.peel:                                  ; preds = %if.end9.i.peel
  %call15.i.peel = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %18, ptr noundef %crtc1.i.peel, ptr noundef %call.i.peel, ptr noundef %call10.i.peel, ptr noundef nonnull @virtio_gpu_crtc_funcs, ptr noundef null) #8
  %helper_private.i.i.peel = getelementptr %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 3, i32 0, i32 1, i32 19
  %23 = ptrtoint ptr %helper_private.i.i.peel to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @virtio_gpu_crtc_helper_funcs, ptr %helper_private.i.i.peel, align 8
  %call16.i.peel = tail call i32 @drm_connector_init(ptr noundef %18, ptr noundef %conn.i.peel, ptr noundef nonnull @virtio_gpu_connector_funcs, i32 noundef 15) #8
  %helper_private.i2.i.peel = getelementptr %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 3, i32 0, i32 2, i32 35
  %24 = ptrtoint ptr %helper_private.i2.i.peel to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @virtio_gpu_conn_helper_funcs, ptr %helper_private.i2.i.peel, align 4
  %25 = ptrtoint ptr %has_edid.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_edid.i, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.peel = icmp eq i8 %26, 0
  br i1 %tobool.not.i.peel, label %if.end14.i.peel.if.end18.i.peel_crit_edge, label %if.then17.i.peel

if.end14.i.peel.if.end18.i.peel_crit_edge:        ; preds = %if.end14.i.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i.peel

if.then17.i.peel:                                 ; preds = %if.end14.i.peel
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_connector_attach_edid_property(ptr noundef %conn.i.peel) #8
  br label %if.end18.i.peel

if.end18.i.peel:                                  ; preds = %if.then17.i.peel, %if.end14.i.peel.if.end18.i.peel_crit_edge
  %call19.i.peel = tail call i32 @drm_simple_encoder_init(ptr noundef %18, ptr noundef %enc.i.peel, i32 noundef 5) #8
  %helper_private.i3.i.peel = getelementptr %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 3, i32 0, i32 3, i32 11
  %27 = ptrtoint ptr %helper_private.i3.i.peel to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @virtio_gpu_enc_helper_funcs, ptr %helper_private.i3.i.peel, align 4
  %possible_crtcs.i.peel = getelementptr %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 3, i32 0, i32 3, i32 6
  %28 = ptrtoint ptr %possible_crtcs.i.peel to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %possible_crtcs.i.peel, align 4
  %call20.i.peel = tail call i32 @drm_connector_attach_encoder(ptr noundef %conn.i.peel, ptr noundef %enc.i.peel) #8
  %call21.i.peel = tail call i32 @drm_connector_register(ptr noundef %conn.i.peel) #8
  br label %vgdev_output_init.exit.peel

vgdev_output_init.exit.peel:                      ; preds = %if.end18.i.peel, %if.end9.i.peel.vgdev_output_init.exit.peel_crit_edge, %if.end.i.peel.vgdev_output_init.exit.peel_crit_edge
  %29 = ptrtoint ptr %num_scanouts to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_scanouts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.peel = icmp ugt i32 %30, 1
  br i1 %cmp.peel, label %vgdev_output_init.exit.peel.if.end.i_crit_edge, label %vgdev_output_init.exit.peel.for.end_crit_edge

vgdev_output_init.exit.peel.for.end_crit_edge:    ; preds = %vgdev_output_init.exit.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

vgdev_output_init.exit.peel.if.end.i_crit_edge:   ; preds = %vgdev_output_init.exit.peel
  br label %if.end.i

if.end.i:                                         ; preds = %vgdev_output_init.exit.if.end.i_crit_edge, %vgdev_output_init.exit.peel.if.end.i_crit_edge
  %i.028 = phi i32 [ %inc, %vgdev_output_init.exit.if.end.i_crit_edge ], [ 1, %vgdev_output_init.exit.peel.if.end.i_crit_edge ]
  %31 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ddev, align 4
  %add.ptr.i = getelementptr %struct.virtio_gpu_output, ptr %outputs.i, i32 %i.028
  %conn.i = getelementptr %struct.virtio_gpu_output, ptr %outputs.i, i32 %i.028, i32 2
  %enc.i = getelementptr %struct.virtio_gpu_output, ptr %outputs.i, i32 %i.028, i32 3
  %crtc1.i = getelementptr %struct.virtio_gpu_output, ptr %outputs.i, i32 %i.028, i32 1
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %i.028, ptr %add.ptr.i, align 8
  %call.i = tail call ptr @virtio_gpu_plane_init(ptr noundef %vgdev, i32 noundef 1, i32 noundef %i.028) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.vgdev_output_init.exit_crit_edge, label %if.end9.i

if.end.i.vgdev_output_init.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vgdev_output_init.exit

if.end9.i:                                        ; preds = %if.end.i
  %call10.i = tail call ptr @virtio_gpu_plane_init(ptr noundef %vgdev, i32 noundef 2, i32 noundef %i.028) #8
  %cmp.i1.i = icmp ugt ptr %call10.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %if.end9.i.vgdev_output_init.exit_crit_edge, label %if.end14.i

if.end9.i.vgdev_output_init.exit_crit_edge:       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vgdev_output_init.exit

if.end14.i:                                       ; preds = %if.end9.i
  %call15.i = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %32, ptr noundef %crtc1.i, ptr noundef %call.i, ptr noundef %call10.i, ptr noundef nonnull @virtio_gpu_crtc_funcs, ptr noundef null) #8
  %helper_private.i.i = getelementptr %struct.virtio_gpu_output, ptr %outputs.i, i32 %i.028, i32 1, i32 19
  %34 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @virtio_gpu_crtc_helper_funcs, ptr %helper_private.i.i, align 8
  %call16.i = tail call i32 @drm_connector_init(ptr noundef %32, ptr noundef %conn.i, ptr noundef nonnull @virtio_gpu_connector_funcs, i32 noundef 15) #8
  %helper_private.i2.i = getelementptr %struct.virtio_gpu_output, ptr %outputs.i, i32 %i.028, i32 2, i32 35
  %35 = ptrtoint ptr %helper_private.i2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @virtio_gpu_conn_helper_funcs, ptr %helper_private.i2.i, align 4
  %36 = ptrtoint ptr %has_edid.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %has_edid.i, align 1, !range !27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i, label %if.end14.i.if.end18.i_crit_edge, label %if.then17.i

if.end14.i.if.end18.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_connector_attach_edid_property(ptr noundef %conn.i) #8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end18.i_crit_edge
  %call19.i = tail call i32 @drm_simple_encoder_init(ptr noundef %32, ptr noundef %enc.i, i32 noundef 5) #8
  %helper_private.i3.i = getelementptr %struct.virtio_gpu_output, ptr %outputs.i, i32 %i.028, i32 3, i32 11
  %38 = ptrtoint ptr %helper_private.i3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @virtio_gpu_enc_helper_funcs, ptr %helper_private.i3.i, align 4
  %shl.i = shl nuw i32 1, %i.028
  %possible_crtcs.i = getelementptr %struct.virtio_gpu_output, ptr %outputs.i, i32 %i.028, i32 3, i32 6
  %39 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shl.i, ptr %possible_crtcs.i, align 4
  %call20.i = tail call i32 @drm_connector_attach_encoder(ptr noundef %conn.i, ptr noundef %enc.i) #8
  %call21.i = tail call i32 @drm_connector_register(ptr noundef %conn.i) #8
  br label %vgdev_output_init.exit

vgdev_output_init.exit:                           ; preds = %if.end18.i, %if.end9.i.vgdev_output_init.exit_crit_edge, %if.end.i.vgdev_output_init.exit_crit_edge
  %inc = add nuw i32 %i.028, 1
  %40 = ptrtoint ptr %num_scanouts to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_scanouts, align 8
  %cmp = icmp ult i32 %inc, %41
  br i1 %cmp, label %vgdev_output_init.exit.if.end.i_crit_edge, label %vgdev_output_init.exit.for.end_crit_edge, !llvm.loop !28

vgdev_output_init.exit.for.end_crit_edge:         ; preds = %vgdev_output_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

vgdev_output_init.exit.if.end.i_crit_edge:        ; preds = %vgdev_output_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

for.end:                                          ; preds = %vgdev_output_init.exit.for.end_crit_edge, %vgdev_output_init.exit.peel.for.end_crit_edge, %if.end.for.end_crit_edge
  %42 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ddev, align 4
  tail call void @drm_mode_config_reset(ptr noundef %43) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_gpu_modeset_fini(ptr nocapture noundef readonly %vgdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_scanouts = getelementptr inbounds %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 4
  %0 = ptrtoint ptr %num_scanouts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_scanouts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp4.not = icmp eq i32 %1, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %edid = getelementptr %struct.virtio_gpu_device, ptr %vgdev, i32 0, i32 3, i32 %i.05, i32 6
  %2 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edid, align 8
  tail call void @kfree(ptr noundef %3) #8
  %inc = add nuw i32 %i.05, 1
  %4 = ptrtoint ptr %num_scanouts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_scanouts, align 8
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @virtio_gpu_user_framebuffer_create(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %mode_cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 3
  %0 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixel_format, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 875714626, label %entry.if.end_crit_edge
    i32 875708738, label %entry.if.end_crit_edge39
  ]

entry.if.end_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge39
  %handles = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 5
  %3 = ptrtoint ptr %handles to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %handles, align 4
  %call3 = tail call ptr @drm_gem_object_lookup(ptr noundef %file_priv, i32 noundef %4) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 152) #11
  %cmp8 = icmp eq ptr %call7.i.i, null
  br i1 %cmp8, label %if.then.i, label %if.end11

if.then.i:                                        ; preds = %if.end6
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call3, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr nonnull %call3, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call3, ptr nonnull %call3, i32 1, ptr nonnull elementtype(i32) %call3) #8, !srcloc !31
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !32

if.end5.i.i.i.i.i.i.cleanup_crit_edge:            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call3, i32 noundef 3) #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !33
  tail call void @drm_gem_object_free(ptr noundef nonnull %call3) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %obj1.i = getelementptr inbounds %struct.drm_framebuffer, ptr %call7.i.i, i32 0, i32 15
  %7 = ptrtoint ptr %obj1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %obj1.i, align 4
  tail call void @drm_helper_mode_fill_fb_struct(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef %mode_cmd) #8
  %call.i = tail call i32 @drm_framebuffer_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @virtio_gpu_fb_funcs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i27 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i27, label %if.end11.cleanup_crit_edge, label %if.then.i33

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i33:                                      ; preds = %if.end11
  %8 = ptrtoint ptr %obj1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %obj1.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %call.i.i.i.i.i.i.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call3, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !30
  tail call void @llvm.prefetch.p0(ptr nonnull %call3, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call3, ptr nonnull %call3, i32 1, ptr nonnull elementtype(i32) %call3) #8, !srcloc !31
  %asmresult.i.i.i.i.i.i.i.i.i31 = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i31)
  %cmp.i.i.i.i.i.i32 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i31, 1
  br i1 %cmp.i.i.i.i.i.i32, label %if.then.i.i.i37, label %if.end5.i.i.i.i.i.i35

if.end5.i.i.i.i.i.i35:                            ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i31)
  %.not.i.i.i.i.i.i34 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i31, 0
  br i1 %.not.i.i.i.i.i.i34, label %if.end5.i.i.i.i.i.i35.cleanup_crit_edge, label %if.then10.i.i.i.i.i.i36, !prof !32

if.end5.i.i.i.i.i.i35.cleanup_crit_edge:          ; preds = %if.end5.i.i.i.i.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i.i.i36:                          ; preds = %if.end5.i.i.i.i.i.i35
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call3, i32 noundef 3) #8
  br label %cleanup

if.then.i.i.i37:                                  ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !33
  tail call void @drm_gem_object_free(ptr noundef nonnull %call3) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i.i37, %if.then10.i.i.i.i.i.i36, %if.end5.i.i.i.i.i.i35.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end5.i.i.i.i.i.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then10.i.i.i.i.i.i ], [ inttoptr (i32 -12 to ptr), %if.then.i.i.i ], [ null, %if.end5.i.i.i.i.i.i35.cleanup_crit_edge ], [ null, %if.then10.i.i.i.i.i.i36 ], [ null, %if.then.i.i.i37 ], [ %call7.i.i, %if.end11.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_create_handle(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_dirtyfb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtio_gpu_plane_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_attach_edid_property(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_crtc_mode_set_nofb(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %add.ptr = getelementptr i8, ptr %crtc, i32 -8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 8
  %hdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %7 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 6
  %8 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vdisplay, align 2
  %conv3 = zext i16 %9 to i32
  tail call void @virtio_gpu_cmd_set_scanout(ptr noundef %3, i32 noundef %5, i32 noundef 0, i32 noundef %conv, i32 noundef %conv3, i32 noundef 0, i32 noundef 0) #8
  tail call void @virtio_gpu_notify(ptr noundef %3) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @virtio_gpu_crtc_atomic_check(ptr nocapture noundef readnone %crtc, ptr nocapture noundef readnone %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @virtio_gpu_crtc_atomic_flush(ptr nocapture noundef %crtc, ptr nocapture noundef readonly %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %7 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %.not = icmp eq i8 %7, 0
  br i1 %.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %needs_modeset = getelementptr i8, ptr %crtc, i32 2196
  %8 = ptrtoint ptr %needs_modeset to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %needs_modeset, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @virtio_gpu_crtc_atomic_enable(ptr nocapture noundef %crtc, ptr nocapture noundef %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_crtc_atomic_disable(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %add.ptr = getelementptr i8, ptr %crtc, i32 -8
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 8
  tail call void @virtio_gpu_cmd_set_scanout(ptr noundef %3, i32 noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  tail call void @virtio_gpu_notify(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_cmd_set_scanout(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_gpu_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @virtio_gpu_conn_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %connector, i32 1128
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %. = select i1 %tobool.not, i32 2, i32 1
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_gpu_conn_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_unregister(ptr noundef %connector) #8
  tail call void @drm_connector_cleanup(ptr noundef %connector) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_conn_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %edid = getelementptr i8, ptr %connector, i32 1192
  %0 = ptrtoint ptr %edid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edid, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %width5 = getelementptr i8, ptr %connector, i32 1120
  %2 = ptrtoint ptr %width5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width5, align 8
  %height8 = getelementptr i8, ptr %connector, i32 1124
  %4 = ptrtoint ptr %height8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height8, align 4
  %call9 = tail call i32 @drm_add_modes_noedid(ptr noundef %connector, i32 noundef 8192, i32 noundef 8192) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp eq i32 %5, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp10
  br i1 %or.cond, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_set_preferred_mode(ptr noundef %connector, i32 noundef 1024, i32 noundef 768) #8
  br label %cleanup

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str, i32 noundef %7, i32 noundef %6) #8
  %8 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connector, align 8
  %call12 = tail call ptr @drm_cvt_mode(ptr noundef %9, i32 noundef %7, i32 noundef %6, i32 noundef 60, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call12, i32 0, i32 28
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type, align 2
  %12 = or i8 %11, 8
  store i8 %12, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef %call12) #8
  %inc = add i32 %call9, 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then.cleanup_crit_edge ], [ %call9, %if.then11 ], [ %inc, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_gpu_conn_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %width1 = getelementptr i8, ptr %connector, i32 1120
  %0 = ptrtoint ptr %width1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width1, align 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %height4 = getelementptr i8, ptr %connector, i32 1124
  %3 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %height4, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 28
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 2
  %8 = and i8 %7, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %9 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %10)
  %cmp = icmp eq i16 %10, 1024
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %11 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %12)
  %cmp8 = icmp eq i16 %12, 768
  br i1 %cmp8, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end11_crit_edge

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %conv13 = zext i16 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv13)
  %cmp14.not = icmp slt i32 %2, %conv13
  %sub = add i32 %2, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %conv13)
  %cmp19.not = icmp sgt i32 %sub, %conv13
  %or.cond = or i1 %cmp14.not, %cmp19.not
  br i1 %or.cond, label %if.end11.if.end33_crit_edge, label %land.lhs.true21

if.end11.if.end33_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

land.lhs.true21:                                  ; preds = %if.end11
  %vdisplay22 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %13 = ptrtoint ptr %vdisplay22 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdisplay22, align 2
  %conv23 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv23)
  %cmp24.not = icmp slt i32 %5, %conv23
  %sub29 = add i32 %5, -16
  call void @__sanitizer_cov_trace_cmp4(i32 %sub29, i32 %conv23)
  %cmp30.not = icmp sgt i32 %sub29, %conv23
  %or.cond52 = or i1 %cmp24.not, %cmp30.not
  br i1 %or.cond52, label %land.lhs.true21.if.end33_crit_edge, label %land.lhs.true21.cleanup_crit_edge

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true21.if.end33_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true21.if.end33_crit_edge, %if.end11.if.end33_crit_edge
  %vdisplay36 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %15 = ptrtoint ptr %vdisplay36 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vdisplay36, align 2
  %conv37 = zext i16 %16 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %conv13, i32 noundef %conv37) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %land.lhs.true21.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.end33 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true21.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_modes_noedid(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_set_preferred_mode(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_cvt_mode(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @virtio_gpu_enc_mode_set(ptr nocapture noundef %encoder, ptr nocapture noundef %mode, ptr nocapture noundef %adjusted_mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @virtio_gpu_enc_disable(ptr nocapture noundef %encoder) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @virtio_gpu_enc_enable(ptr nocapture noundef %encoder) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @virtio_gpu_mode_funcs, !1, !"virtio_gpu_mode_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/virtio/virtgpu_display.c", i32 326, i32 43}
!2 = !{ptr @virtio_gpu_fb_funcs, !3, !"virtio_gpu_fb_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/virtio/virtgpu_display.c", i32 59, i32 43}
!4 = !{ptr @virtio_gpu_crtc_funcs, !5, !"virtio_gpu_crtc_funcs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/virtio/virtgpu_display.c", i32 49, i32 36}
!6 = !{ptr @virtio_gpu_crtc_helper_funcs, !7, !"virtio_gpu_crtc_helper_funcs", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/virtio/virtgpu_display.c", i32 137, i32 43}
!8 = !{ptr @virtio_gpu_connector_funcs, !9, !"virtio_gpu_connector_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/virtio/virtgpu_display.c", i32 242, i32 41}
!10 = !{ptr @virtio_gpu_conn_helper_funcs, !11, !"virtio_gpu_conn_helper_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/virtio/virtgpu_display.c", i32 218, i32 48}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/virtio/virtgpu_display.c", i32 179, i32 3}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/virtio/virtgpu_display.c", i32 208, i32 2}
!16 = !{ptr @virtio_gpu_enc_helper_funcs, !17, !"virtio_gpu_enc_helper_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/virtio/virtgpu_display.c", i32 212, i32 46}
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
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.peeled.count", i32 1}
!30 = !{i64 2148496472}
!31 = !{i64 2148410924, i64 2148410956, i64 2148410985, i64 2148411019, i64 2148411050, i64 2148411073}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{i64 2150144623}
