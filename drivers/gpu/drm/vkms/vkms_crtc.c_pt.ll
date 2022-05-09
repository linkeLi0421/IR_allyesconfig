; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/vkms/vkms_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/vkms/vkms_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.vkms_output = type { %struct.drm_crtc, %struct.drm_encoder, %struct.drm_connector, %struct.drm_writeback_connector, %struct.hrtimer, i64, ptr, ptr, %struct.spinlock, i8, ptr, %struct.spinlock }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, [32 x i8] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vkms_crtc_state = type { %struct.drm_crtc_state, %struct.work_struct, i32, ptr, ptr, i8, i8, i64, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.drm_vblank_crtc = type { ptr, %struct.wait_queue_head, %struct.timer_list, %struct.seqlock_t, %struct.atomic64_t, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, i8, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic64_t = type { i64 }
%struct.vkms_device = type { %struct.drm_device, ptr, %struct.vkms_output, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }

@vkms_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @vkms_atomic_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @vkms_atomic_crtc_duplicate_state, ptr @vkms_atomic_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr @vkms_set_crc_source, ptr @vkms_verify_crc_source, ptr @vkms_get_crc_sources, ptr null, ptr null, ptr @vkms_enable_vblank, ptr @vkms_disable_vblank, ptr @vkms_get_vblank_timestamp }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Failed to init CRTC\0A\00", [43 x i8] zeroinitializer }, align 32
@vkms_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vkms_crtc_atomic_check, ptr @vkms_crtc_atomic_begin, ptr @vkms_crtc_atomic_flush, ptr @vkms_crtc_atomic_enable, ptr @vkms_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@vkms_crtc_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&vkms_out->lock\00", [16 x i8] zeroinitializer }, align 32
@vkms_crtc_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&vkms_out->composer_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vkms_composer\00", [18 x i8] zeroinitializer }, align 32
@vkms_atomic_crtc_reset.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&vkms_state->composer_work)\00", [50 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/vkms/vkms_crtc.c\00", [63 x i8] zeroinitializer }, align 32
@vkms_atomic_crtc_duplicate_state.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@vkms_vblank_simulate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.6, i32 26, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\014%s: vblank timer overrun\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vkms_vblank_simulate\00", [43 x i8] zeroinitializer }, align 32
@vkms_vblank_simulate._entry_ptr = internal global ptr @vkms_vblank_simulate._entry, section ".printk_index", align 4
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"vkms failure on handling vblank\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"crc worker falling behind, frame_start: %llu, frame_end: %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Composer worker already queued\0A\00", [32 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"vkms_crtc_funcs\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 162, i32 36 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 288, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [23 x i8] c"vkms_crtc_helper_funcs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 271, i32 43 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 294, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 295, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 297, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 159, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 123, i32 6 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 132, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 26, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 31, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 46, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [36 x i8] c"../drivers/gpu/drm/vkms/vkms_crtc.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 54, i32 4 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @vkms_vblank_simulate._entry, ptr @vkms_vblank_simulate._entry_ptr, ptr @vkms_crtc_funcs, ptr @.str, ptr @vkms_crtc_helper_funcs, ptr @vkms_crtc_init.__key, ptr @.str.1, ptr @vkms_crtc_init.__key.2, ptr @.str.3, ptr @.str.4, ptr @vkms_atomic_crtc_reset.__key, ptr @.str.5, ptr @.str.6, ptr @vkms_atomic_crtc_duplicate_state.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_crtc_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_crtc_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_atomic_crtc_reset.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_atomic_crtc_duplicate_state.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vkms_vblank_simulate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vkms_crtc_init(ptr noundef %dev, ptr noundef %crtc, ptr noundef %primary, ptr noundef %cursor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %dev, ptr noundef %crtc, ptr noundef %primary, ptr noundef %cursor, ptr noundef nonnull @vkms_crtc_funcs, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %helper_private.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 19
  %0 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @vkms_crtc_helper_funcs, ptr %helper_private.i, align 8
  %lock = getelementptr inbounds %struct.vkms_output, ptr %crtc, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @vkms_crtc_init.__key, i16 noundef signext 3) #6
  %composer_lock = getelementptr inbounds %struct.vkms_output, ptr %crtc, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %composer_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @vkms_crtc_init.__key.2, i16 noundef signext 3) #6
  %call6 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.4, i32 noundef 655362, i32 noundef 1) #6
  %composer_workq = getelementptr inbounds %struct.vkms_output, ptr %crtc, i32 0, i32 7
  %1 = ptrtoint ptr %composer_workq to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call6, ptr %composer_workq, align 4
  %tobool8.not = icmp eq ptr %call6, null
  %. = select i1 %tobool8.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vkms_atomic_crtc_reset(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 360) #9
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %2) #6
  %composer_work.i = getelementptr inbounds %struct.vkms_crtc_state, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %composer_work.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %composer_work.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.vkms_atomic_crtc_destroy_state.exit_crit_edge, label %do.end.i, !prof !41

if.then.vkms_atomic_crtc_destroy_state.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %vkms_atomic_crtc_destroy_state.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 144, i32 noundef 9, ptr noundef null) #6
  br label %vkms_atomic_crtc_destroy_state.exit

vkms_atomic_crtc_destroy_state.exit:              ; preds = %do.end.i, %if.then.vkms_atomic_crtc_destroy_state.exit_crit_edge
  %active_planes.i = getelementptr inbounds %struct.vkms_crtc_state, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %active_planes.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %active_planes.i, align 4
  tail call void @kfree(ptr noundef %6) #6
  tail call void @kfree(ptr noundef nonnull %2) #6
  br label %if.end

if.end:                                           ; preds = %vkms_atomic_crtc_destroy_state.exit, %entry.if.end_crit_edge
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %crtc, ptr noundef %call7.i.i) #6
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %do.body

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %composer_work = getelementptr inbounds %struct.vkms_crtc_state, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %composer_work, i32 noundef 0) #6
  %7 = ptrtoint ptr %composer_work to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %composer_work, align 4
  %lockdep_map = getelementptr inbounds %struct.vkms_crtc_state, ptr %call7.i.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @vkms_atomic_crtc_reset.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry7 = getelementptr inbounds %struct.vkms_crtc_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %entry7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry7, ptr %entry7, align 8
  %prev.i = getelementptr inbounds %struct.vkms_crtc_state, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry7, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.vkms_crtc_state, ptr %call7.i.i, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @vkms_composer_worker, ptr %func, align 8
  br label %if.end9

if.end9:                                          ; preds = %do.body, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vkms_atomic_crtc_duplicate_state(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !42

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 123, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 360) #9
  %tobool24.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.end26

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %crtc, ptr noundef nonnull %call7.i.i) #6
  %composer_work = getelementptr inbounds %struct.vkms_crtc_state, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_work(ptr noundef %composer_work, i32 noundef 0) #6
  %3 = ptrtoint ptr %composer_work to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %composer_work, align 4
  %lockdep_map = getelementptr inbounds %struct.vkms_crtc_state, ptr %call7.i.i, i32 0, i32 1, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @vkms_atomic_crtc_duplicate_state.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry31 = getelementptr inbounds %struct.vkms_crtc_state, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry31, ptr %entry31, align 8
  %prev.i = getelementptr inbounds %struct.vkms_crtc_state, ptr %call7.i.i, i32 0, i32 1, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry31, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.vkms_crtc_state, ptr %call7.i.i, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vkms_composer_worker, ptr %func, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call7.i.i, %if.end26 ], [ null, %if.end23.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vkms_atomic_crtc_destroy_state(ptr nocapture noundef readnone %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %state) #6
  %composer_work = getelementptr inbounds %struct.vkms_crtc_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %composer_work to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %composer_work, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !41

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 144, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %active_planes = getelementptr inbounds %struct.vkms_crtc_state, ptr %state, i32 0, i32 3
  %2 = ptrtoint ptr %active_planes to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_planes, align 4
  tail call void @kfree(ptr noundef %3) #6
  tail call void @kfree(ptr noundef %state) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vkms_set_crc_source(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vkms_verify_crc_source(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vkms_get_crc_sources(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vkms_enable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i, align 4
  %vblank2 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %vblank2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vblank2, align 4
  %mode = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12
  tail call void @drm_calc_timestamping_constants(ptr noundef %crtc, ptr noundef %mode) #6
  %vblank_hrtimer = getelementptr inbounds %struct.vkms_output, ptr %crtc, i32 0, i32 4
  tail call void @hrtimer_init(ptr noundef %vblank_hrtimer, i32 noundef 1, i32 noundef 1) #6
  %function = getelementptr inbounds %struct.vkms_output, ptr %crtc, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vkms_vblank_simulate, ptr %function, align 8
  %framedur_ns = getelementptr %struct.drm_vblank_crtc, ptr %5, i32 %3, i32 11
  %7 = ptrtoint ptr %framedur_ns to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %framedur_ns, align 4
  %conv.i = zext i32 %8 to i64
  %period_ns = getelementptr inbounds %struct.vkms_output, ptr %crtc, i32 0, i32 5
  %9 = ptrtoint ptr %period_ns to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv.i, ptr %period_ns, align 8
  tail call void @hrtimer_start_range_ns(ptr noundef %vblank_hrtimer, i64 noundef %conv.i, i64 noundef 0, i32 noundef 1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vkms_disable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vblank_hrtimer = getelementptr inbounds %struct.vkms_output, ptr %crtc, i32 0, i32 4
  %call = tail call i32 @hrtimer_cancel(ptr noundef %vblank_hrtimer) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vkms_get_vblank_timestamp(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readnone %max_error, ptr nocapture noundef %vblank_time, i1 noundef zeroext %in_vblank_irq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %vblank3 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %vblank3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vblank3, align 4
  %enabled = getelementptr %struct.drm_vblank_crtc, ptr %5, i32 %3, i32 14
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %enabled, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %do.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i64 @ktime_get() #6
  %8 = ptrtoint ptr %vblank_time to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call, ptr %vblank_time, align 8
  br label %cleanup

do.end9:                                          ; preds = %entry
  %expires = getelementptr inbounds %struct.vkms_device, ptr %1, i32 0, i32 2, i32 4, i32 0, i32 1
  %9 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load volatile i64, ptr %expires, align 8
  %11 = ptrtoint ptr %vblank_time to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %vblank_time, align 8
  %time = getelementptr %struct.drm_vblank_crtc, ptr %5, i32 %3, i32 5
  %12 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %time, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %10, i64 %13)
  %cmp = icmp eq i64 %10, %13
  br i1 %cmp, label %do.end22, label %if.end38, !prof !42

do.end22:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 103, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end38:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  %period_ns = getelementptr inbounds %struct.vkms_device, ptr %1, i32 0, i32 2, i32 5
  %14 = ptrtoint ptr %period_ns to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %period_ns, align 8
  %sub = sub i64 %10, %15
  %16 = ptrtoint ptr %vblank_time to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %sub, ptr %vblank_time, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end22, %if.then
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vkms_composer_worker(ptr noundef) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_calc_timestamping_constants(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vkms_vblank_simulate(ptr noundef %timer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %timer, i32 -3360
  %call = tail call zeroext i1 @dma_fence_begin_signalling() #6
  %period_ns = getelementptr i8, ptr %timer, i32 48
  %0 = ptrtoint ptr %period_ns to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %period_ns, align 8
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %5() #6
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call.i, i64 noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %call1.i)
  %cmp.not = icmp eq i64 %call1.i, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lock = getelementptr i8, ptr %timer, i32 64
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %call5 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %add.ptr) #6
  br i1 %call5, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %composer_state = getelementptr i8, ptr %timer, i32 112
  %6 = ptrtoint ptr %composer_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %composer_state, align 8
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  %tobool10.not = icmp eq ptr %7, null
  br i1 %tobool10.not, label %if.end8.if.end25_crit_edge, label %land.lhs.true

if.end8.if.end25_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end8
  %composer_enabled = getelementptr i8, ptr %timer, i32 108
  %8 = ptrtoint ptr %composer_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %composer_enabled, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not = icmp eq i8 %9, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end25_crit_edge, label %if.then12

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then12:                                        ; preds = %land.lhs.true
  %call13 = tail call i64 @drm_crtc_accurate_vblank_count(ptr noundef %add.ptr) #6
  %composer_lock = getelementptr i8, ptr %timer, i32 116
  tail call void @_raw_spin_lock(ptr noundef %composer_lock) #6
  %crc_pending = getelementptr inbounds %struct.vkms_crtc_state, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %crc_pending to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %crc_pending, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not = icmp eq i8 %11, 0
  %frame_start = getelementptr inbounds %struct.vkms_crtc_state, ptr %7, i32 0, i32 7
  br i1 %tobool14.not, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %frame_start to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %call13, ptr %frame_start, align 8
  br label %if.end17

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %frame_start to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %frame_start, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i64 noundef %14, i64 noundef %call13) #6
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15
  %frame_end = getelementptr inbounds %struct.vkms_crtc_state, ptr %7, i32 0, i32 8
  %15 = ptrtoint ptr %frame_end to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call13, ptr %frame_end, align 8
  %16 = ptrtoint ptr %crc_pending to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %crc_pending, align 4
  tail call void @_raw_spin_unlock(ptr noundef %composer_lock) #6
  %composer_workq = getelementptr i8, ptr %timer, i32 60
  %17 = ptrtoint ptr %composer_workq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %composer_workq, align 4
  %composer_work = getelementptr inbounds %struct.vkms_crtc_state, ptr %7, i32 0, i32 1
  %call.i46 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %composer_work) #6
  br i1 %call.i46, label %if.end17.if.end25_crit_edge, label %if.then23

if.end17.if.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then23:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end17.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %if.end8.if.end25_crit_edge
  tail call void @dma_fence_end_signalling(i1 noundef zeroext %call) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dma_fence_begin_signalling() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_crtc_accurate_vblank_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_fence_end_signalling(i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vkms_crtc_atomic_check(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %active_planes = getelementptr inbounds %struct.vkms_crtc_state, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %active_planes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_planes, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %state1 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 20
  %8 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state1, align 4
  %call2 = tail call i32 @drm_atomic_add_affected_planes(ptr noundef %9, ptr noundef %crtc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 8
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 30, i32 18
  %12 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn145 = load ptr, ptr %plane_list, align 4
  %cmp11.not147 = icmp eq ptr %.pn145, %plane_list
  br i1 %cmp11.not147, label %if.end4.for.end_crit_edge, label %for.body.lr.ph

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end4
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn149 = phi ptr [ %.pn145, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %i.0148 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %plane_mask, align 4
  %index.i.i133 = getelementptr i8, ptr %.pn149, i32 480
  %15 = ptrtoint ptr %index.i.i133 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index.i.i133, align 4
  %shl.i = shl nuw i32 1, %16
  %and = and i32 %shl.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %for.body
  %17 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state1, align 4
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %planes.i, align 4
  %state1.i = getelementptr %struct.__drm_planes_state, ptr %20, i32 %16, i32 1
  %21 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state1.i, align 4
  %tobool17.not = icmp eq ptr %22, null
  br i1 %tobool17.not, label %do.end, label %if.else.if.end34_crit_edge, !prof !42

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 197, i32 noundef 9, ptr noundef null) #6
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.else.if.end34_crit_edge
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %22, i32 0, i32 22
  %23 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %visible, align 4, !range !43
  %25 = zext i8 %24 to i32
  %spec.select = add i32 %i.0148, %25
  br label %for.inc

for.inc:                                          ; preds = %if.end34, %for.body.for.inc_crit_edge
  %i.1 = phi i32 [ %i.0148, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end34 ]
  %26 = ptrtoint ptr %.pn149 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn149, align 4
  %27 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %crtc, align 8
  %plane_list10 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 30, i32 18
  %cmp11.not = icmp eq ptr %.pn, %plane_list10
  br i1 %cmp11.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end4.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end4.for.end_crit_edge ], [ %i.1, %for.inc.for.end_crit_edge ]
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.0.lcssa, i32 4) #6
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !42

kcalloc.exit.thread:                              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %active_planes to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %active_planes, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %for.end
  %32 = extractvalue { i32, i1 } %29, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %32, i32 noundef 3520) #11
  %33 = ptrtoint ptr %active_planes to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call8.i.i, ptr %active_planes, align 4
  %tobool54.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool54.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end56

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end56:                                         ; preds = %if.end7.i.i
  %num_active_planes = getelementptr inbounds %struct.vkms_crtc_state, ptr %5, i32 0, i32 2
  %34 = ptrtoint ptr %num_active_planes to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %i.0.lcssa, ptr %num_active_planes, align 8
  %35 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %crtc, align 8
  %plane_list60 = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 30, i32 18
  %37 = ptrtoint ptr %plane_list60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn132150 = load ptr, ptr %plane_list60, align 4
  %cmp69.not152 = icmp eq ptr %.pn132150, %plane_list60
  br i1 %cmp69.not152, label %if.end56.cleanup_crit_edge, label %for.body72.lr.ph

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body72.lr.ph:                                 ; preds = %if.end56
  %plane_mask73 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 4
  br label %for.body72

for.body72:                                       ; preds = %for.inc91.for.body72_crit_edge, %for.body72.lr.ph
  %.pn132154 = phi ptr [ %.pn132150, %for.body72.lr.ph ], [ %.pn132, %for.inc91.for.body72_crit_edge ]
  %i.2153 = phi i32 [ 0, %for.body72.lr.ph ], [ %i.3, %for.inc91.for.body72_crit_edge ]
  %38 = ptrtoint ptr %plane_mask73 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %plane_mask73, align 4
  %index.i.i135 = getelementptr i8, ptr %.pn132154, i32 480
  %40 = ptrtoint ptr %index.i.i135 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %index.i.i135, align 4
  %shl.i136 = shl nuw i32 1, %41
  %and75 = and i32 %shl.i136, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %for.body72.for.inc91_crit_edge, label %if.else78

for.body72.for.inc91_crit_edge:                   ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc91

if.else78:                                        ; preds = %for.body72
  %42 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state1, align 4
  %planes.i137 = getelementptr inbounds %struct.drm_atomic_state, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %planes.i137 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %planes.i137, align 4
  %state1.i139 = getelementptr %struct.__drm_planes_state, ptr %45, i32 %41, i32 1
  %46 = ptrtoint ptr %state1.i139 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %state1.i139, align 4
  %visible81 = getelementptr inbounds %struct.drm_plane_state, ptr %47, i32 0, i32 22
  %48 = ptrtoint ptr %visible81 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %visible81, align 4, !range !43
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool82.not = icmp eq i8 %49, 0
  br i1 %tobool82.not, label %if.else78.for.inc91_crit_edge, label %if.end84

if.else78.for.inc91_crit_edge:                    ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc91

if.end84:                                         ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %active_planes to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %active_planes, align 4
  %inc89 = add i32 %i.2153, 1
  %arrayidx = getelementptr ptr, ptr %51, i32 %i.2153
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %47, ptr %arrayidx, align 4
  br label %for.inc91

for.inc91:                                        ; preds = %if.end84, %if.else78.for.inc91_crit_edge, %for.body72.for.inc91_crit_edge
  %i.3 = phi i32 [ %inc89, %if.end84 ], [ %i.2153, %if.else78.for.inc91_crit_edge ], [ %i.2153, %for.body72.for.inc91_crit_edge ]
  %53 = ptrtoint ptr %.pn132154 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn132 = load ptr, ptr %.pn132154, align 4
  %54 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %crtc, align 8
  %plane_list68 = getelementptr inbounds %struct.drm_device, ptr %55, i32 0, i32 30, i32 18
  %cmp69.not = icmp eq ptr %.pn132, %plane_list68
  br i1 %cmp69.not, label %for.inc91.cleanup_crit_edge, label %for.inc91.for.body72_crit_edge

for.inc91.for.body72_crit_edge:                   ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body72

for.inc91.cleanup_crit_edge:                      ; preds = %for.inc91
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc91.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %if.end56.cleanup_crit_edge ], [ 0, %for.inc91.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vkms_crtc_atomic_begin(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.vkms_output, ptr %crtc, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vkms_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %event_lock) #6
  %call = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  %event6 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %event6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event6, align 4
  br i1 %cmp.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %9) #6
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %crtc, ptr noundef %9) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 8
  %event_lock8 = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 28
  tail call void @_raw_spin_unlock(ptr noundef %event_lock8) #6
  %12 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state1, align 4
  %event10 = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %event10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %event10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry.if.end11_crit_edge
  %15 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state1, align 4
  %composer_state = getelementptr inbounds %struct.vkms_output, ptr %crtc, i32 0, i32 10
  %17 = ptrtoint ptr %composer_state to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %composer_state, align 8
  %lock = getelementptr inbounds %struct.vkms_output, ptr %crtc, i32 0, i32 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vkms_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vkms_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_planes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !15, !17, !19, !21, !22, !23, !24, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/vkms/vkms_crtc.c", i32 288, i32 3}
!2 = !{ptr @vkms_crtc_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/vkms/vkms_crtc.c", i32 294, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @vkms_crtc_init.__key.2, !6, !"__key", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/vkms/vkms_crtc.c", i32 295, i32 2}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/vkms/vkms_crtc.c", i32 297, i32 29}
!10 = !{ptr @vkms_crtc_funcs, !11, !"vkms_crtc_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/vkms/vkms_crtc.c", i32 162, i32 36}
!12 = !{ptr @vkms_atomic_crtc_reset.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/vkms/vkms_crtc.c", i32 159, i32 3}
!14 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/vkms/vkms_crtc.c", i32 123, i32 6}
!17 = !{ptr @vkms_atomic_crtc_duplicate_state.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/vkms/vkms_crtc.c", i32 132, i32 2}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/vkms/vkms_crtc.c", i32 26, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @vkms_vblank_simulate._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @vkms_vblank_simulate._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/vkms/vkms_crtc.c", i32 31, i32 3}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/vkms/vkms_crtc.c", i32 46, i32 4}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/vkms/vkms_crtc.c", i32 54, i32 4}
!30 = !{ptr @vkms_crtc_helper_funcs, !31, !"vkms_crtc_helper_funcs", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/vkms/vkms_crtc.c", i32 271, i32 43}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 2000, i32 1}
!42 = !{!"branch_weights", i32 1, i32 2000}
!43 = !{i8 0, i8 2}
