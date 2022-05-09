; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/shmobile/shmob_drm_plane.c_pt.bc'
source_filename = "../drivers/gpu/drm/shmobile/shmob_drm_plane.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
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
%struct.anon.85 = type { i32, ptr }
%struct.shmob_drm_plane = type { %struct.drm_plane, i32, i32, ptr, [2 x i32], i32, i32, i32, i32, i32, i32 }
%struct.shmob_drm_device = type { ptr, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, ptr, %struct.shmob_drm_crtc, %struct.shmob_drm_encoder, %struct.shmob_drm_connector }
%struct.shmob_drm_crtc = type { %struct.drm_crtc, ptr, i32, ptr, [2 x i32], i32, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.shmob_drm_encoder = type { %struct.drm_encoder, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.shmob_drm_connector = type { %struct.drm_connector, ptr, ptr }
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
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.shmob_drm_format_info = type { i32, i32, i8, i32 }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }

@shmob_drm_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @shmob_drm_plane_update, ptr @shmob_drm_plane_disable, ptr @shmob_drm_plane_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@formats = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 909199186, i32 875710290, i32 875713089, i32 842094158, i32 825382478, i32 909203022, i32 825644622, i32 875714126, i32 842290766], [60 x i8] zeroinitializer }, align 32
@__shmob_drm_plane_setup.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"shmob_drm\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"__shmob_drm_plane_setup\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/shmobile/shmob_drm_plane.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(%u): %s 0x%08x 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LDBnBSIFR\00", [22 x i8] zeroinitializer }, align 32
@__shmob_drm_plane_setup.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LDBnBSSZR\00", [22 x i8] zeroinitializer }, align 32
@__shmob_drm_plane_setup.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LDBnBLOCR\00", [22 x i8] zeroinitializer }, align 32
@__shmob_drm_plane_setup.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LDBnBSMWR\00", [22 x i8] zeroinitializer }, align 32
@__shmob_drm_plane_setup.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LDBnBSAYR\00", [22 x i8] zeroinitializer }, align 32
@__shmob_drm_plane_setup.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LDBnBSACR\00", [22 x i8] zeroinitializer }, align 32
@__shmob_drm_plane_setup.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s(%u): %s 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDBCR\00", [26 x i8] zeroinitializer }, align 32
@__shmob_drm_plane_setup.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__shmob_drm_plane_setup.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__shmob_drm_plane_setup.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 38, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__shmob_drm_plane_setup.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 38, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__shmob_drm_plane_setup.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 38, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__shmob_drm_plane_setup.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 38, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__shmob_drm_plane_setup.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@shmob_drm_plane_update.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"shmob_drm_plane_update\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"update_plane: unsupported format %08x\0A\00", [57 x i8] zeroinitializer }, align 32
@shmob_drm_plane_update.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: scaling not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 842290766, i64 875710290, i64 875714126, i64 909199186, i64 909203022]
@__sancov_gen_cov_switch_values.15 = internal global [9 x i64] [i64 7, i64 32, i64 825382478, i64 825644622, i64 842094158, i64 875710290, i64 875713089, i64 909199186, i64 909203022]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 10, i64 34]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 11]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 12]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 14]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 15]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 10, i64 34]
@___asan_gen_.22 = private unnamed_addr constant [22 x i8] c"shmob_drm_plane_funcs\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 224, i32 37 }
@___asan_gen_.25 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 230, i32 23 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 118, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 119, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 120, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 121, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 122, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 123, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 126, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 183, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [46 x i8] c"../drivers/gpu/drm/shmobile/shmob_drm_plane.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 189, i32 3 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @shmob_drm_plane_funcs, ptr @formats, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shmob_drm_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @shmob_drm_plane_setup(ptr noundef %plane) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %fb = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 12
  %0 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fb, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call fastcc void @__shmob_drm_plane_setup(ptr noundef %plane, ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__shmob_drm_plane_setup(ptr noundef %splane, ptr noundef %fb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %splane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %splane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %alpha = getelementptr inbounds %struct.shmob_drm_plane, ptr %splane, i32 0, i32 2
  %4 = ptrtoint ptr %alpha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %alpha, align 4
  %shl = shl i32 %5, 16
  %format1 = getelementptr inbounds %struct.shmob_drm_plane, ptr %splane, i32 0, i32 3
  %6 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %format1, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %sw.default [
    i32 909199186, label %entry.sw.epilog_crit_edge
    i32 825382478, label %entry.sw.epilog_crit_edge716
    i32 825644622, label %entry.sw.epilog_crit_edge717
    i32 842290766, label %entry.sw.epilog_crit_edge718
    i32 875710290, label %entry.sw.bb3_crit_edge
    i32 842094158, label %entry.sw.bb3_crit_edge719
    i32 909203022, label %entry.sw.bb3_crit_edge720
    i32 875714126, label %entry.sw.bb3_crit_edge721
  ]

entry.sw.bb3_crit_edge721:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3

entry.sw.bb3_crit_edge720:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3

entry.sw.bb3_crit_edge719:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb3

entry.sw.epilog_crit_edge718:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.sw.epilog_crit_edge717:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.sw.epilog_crit_edge716:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge719, %entry.sw.bb3_crit_edge720, %entry.sw.bb3_crit_edge721
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge716, %entry.sw.epilog_crit_edge717, %entry.sw.epilog_crit_edge718
  %.sink = phi i32 [ -2147482624, %sw.default ], [ -2147481856, %sw.bb3 ], [ -2147482112, %entry.sw.epilog_crit_edge ], [ -2147482112, %entry.sw.epilog_crit_edge716 ], [ -2147482112, %entry.sw.epilog_crit_edge717 ], [ -2147482112, %entry.sw.epilog_crit_edge718 ]
  %or6 = or i32 %shl, %.sink
  %11 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %9, label %sw.epilog.do.body_crit_edge [
    i32 909199186, label %sw.bb9
    i32 875710290, label %sw.bb11
    i32 875713089, label %sw.bb13
    i32 842094158, label %sw.epilog.sw.bb15_crit_edge
    i32 825382478, label %sw.epilog.sw.bb15_crit_edge722
    i32 909203022, label %sw.epilog.sw.bb17_crit_edge
    i32 825644622, label %sw.epilog.sw.bb17_crit_edge723
  ]

sw.epilog.sw.bb17_crit_edge723:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb17

sw.epilog.sw.bb17_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb17

sw.epilog.sw.bb15_crit_edge722:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb15

sw.epilog.sw.bb15_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb15

sw.epilog.do.body_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body

sw.bb9:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %or10 = or i32 %or6, 131
  br label %do.body

sw.bb11:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %or12 = or i32 %or6, 139
  br label %do.body

sw.bb13:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #5
  %or14 = or i32 %or6, 16512
  br label %do.body

sw.bb15:                                          ; preds = %sw.epilog.sw.bb15_crit_edge, %sw.epilog.sw.bb15_crit_edge722
  %or16 = or i32 %or6, 2
  br label %do.body

sw.bb17:                                          ; preds = %sw.epilog.sw.bb17_crit_edge, %sw.epilog.sw.bb17_crit_edge723
  %or18 = or i32 %or6, 1
  br label %do.body

do.body:                                          ; preds = %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.epilog.do.body_crit_edge
  %format.1 = phi i32 [ %or18, %sw.bb17 ], [ %or16, %sw.bb15 ], [ %or14, %sw.bb13 ], [ %or12, %sw.bb11 ], [ %or10, %sw.bb9 ], [ %or6, %sw.epilog.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__shmob_drm_plane_setup, %if.then)) #3
          to label %do.body34 [label %if.then], !srcloc !60

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %ddev = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 8
  %12 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ddev, align 8
  %dev24 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev24, align 4
  %index = getelementptr inbounds %struct.shmob_drm_plane, ptr %splane, i32 0, i32 1
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 8
  %mul = shl i32 %17, 5
  %add = add i32 %mul, 2848
  %mmio.i = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #3, !srcloc !61
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %22 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index, align 8
  %mul29 = shl i32 %23, 5
  %add32 = add i32 %mul29, 6944
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i609 = getelementptr i8, ptr %25, i32 %add32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i609) #3, !srcloc !61
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug316, ptr noundef %15, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %17, ptr noundef nonnull @.str.4, i32 noundef %21, i32 noundef %27) #3
  br label %do.body34

do.body34:                                        ; preds = %if.then, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__shmob_drm_plane_setup, %if.then46)) #3
          to label %do.body64 [label %if.then46], !srcloc !60

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #5
  %ddev47 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 8
  %28 = ptrtoint ptr %ddev47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ddev47, align 8
  %dev48 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %dev48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev48, align 4
  %index49 = getelementptr inbounds %struct.shmob_drm_plane, ptr %splane, i32 0, i32 1
  %32 = ptrtoint ptr %index49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index49, align 8
  %mul51 = shl i32 %33, 5
  %add53 = add i32 %mul51, 2852
  %mmio.i610 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 2
  %34 = ptrtoint ptr %mmio.i610 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i610, align 8
  %add.ptr.i611 = getelementptr i8, ptr %35, i32 %add53
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i611) #3, !srcloc !61
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %38 = ptrtoint ptr %index49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index49, align 8
  %mul56 = shl i32 %39, 5
  %add59 = add i32 %mul56, 6948
  %40 = ptrtoint ptr %mmio.i610 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mmio.i610, align 8
  %add.ptr.i613 = getelementptr i8, ptr %41, i32 %add59
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i613) #3, !srcloc !61
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug317, ptr noundef %31, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %33, ptr noundef nonnull @.str.5, i32 noundef %37, i32 noundef %43) #3
  br label %do.body64

do.body64:                                        ; preds = %if.then46, %do.body34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__shmob_drm_plane_setup, %if.then76)) #3
          to label %do.body94 [label %if.then76], !srcloc !60

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #5
  %ddev77 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 8
  %44 = ptrtoint ptr %ddev77 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ddev77, align 8
  %dev78 = getelementptr inbounds %struct.drm_device, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %dev78 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev78, align 4
  %index79 = getelementptr inbounds %struct.shmob_drm_plane, ptr %splane, i32 0, i32 1
  %48 = ptrtoint ptr %index79 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index79, align 8
  %mul81 = shl i32 %49, 5
  %add83 = add i32 %mul81, 2856
  %mmio.i614 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 2
  %50 = ptrtoint ptr %mmio.i614 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mmio.i614, align 8
  %add.ptr.i615 = getelementptr i8, ptr %51, i32 %add83
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i615) #3, !srcloc !61
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %54 = ptrtoint ptr %index79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %index79, align 8
  %mul86 = shl i32 %55, 5
  %add89 = add i32 %mul86, 6952
  %56 = ptrtoint ptr %mmio.i614 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mmio.i614, align 8
  %add.ptr.i617 = getelementptr i8, ptr %57, i32 %add89
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i617) #3, !srcloc !61
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug318, ptr noundef %47, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %49, ptr noundef nonnull @.str.6, i32 noundef %53, i32 noundef %59) #3
  br label %do.body94

do.body94:                                        ; preds = %if.then76, %do.body64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__shmob_drm_plane_setup, %if.then106)) #3
          to label %do.body124 [label %if.then106], !srcloc !60

if.then106:                                       ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #5
  %ddev107 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 8
  %60 = ptrtoint ptr %ddev107 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ddev107, align 8
  %dev108 = getelementptr inbounds %struct.drm_device, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %dev108 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev108, align 4
  %index109 = getelementptr inbounds %struct.shmob_drm_plane, ptr %splane, i32 0, i32 1
  %64 = ptrtoint ptr %index109 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %index109, align 8
  %mul111 = shl i32 %65, 5
  %add113 = add i32 %mul111, 2860
  %mmio.i618 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 2
  %66 = ptrtoint ptr %mmio.i618 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio.i618, align 8
  %add.ptr.i619 = getelementptr i8, ptr %67, i32 %add113
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i619) #3, !srcloc !61
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %70 = ptrtoint ptr %index109 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %index109, align 8
  %mul116 = shl i32 %71, 5
  %add119 = add i32 %mul116, 6956
  %72 = ptrtoint ptr %mmio.i618 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mmio.i618, align 8
  %add.ptr.i621 = getelementptr i8, ptr %73, i32 %add119
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i621) #3, !srcloc !61
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug319, ptr noundef %63, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %65, ptr noundef nonnull @.str.7, i32 noundef %69, i32 noundef %75) #3
  br label %do.body124

do.body124:                                       ; preds = %if.then106, %do.body94
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__shmob_drm_plane_setup, %if.then136)) #3
          to label %do.body154 [label %if.then136], !srcloc !60

if.then136:                                       ; preds = %do.body124
  call void @__sanitizer_cov_trace_pc() #5
  %ddev137 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 8
  %76 = ptrtoint ptr %ddev137 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ddev137, align 8
  %dev138 = getelementptr inbounds %struct.drm_device, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev138, align 4
  %index139 = getelementptr inbounds %struct.shmob_drm_plane, ptr %splane, i32 0, i32 1
  %80 = ptrtoint ptr %index139 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %index139, align 8
  %mul141 = shl i32 %81, 5
  %add143 = add i32 %mul141, 2864
  %mmio.i622 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 2
  %82 = ptrtoint ptr %mmio.i622 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mmio.i622, align 8
  %add.ptr.i623 = getelementptr i8, ptr %83, i32 %add143
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i623) #3, !srcloc !61
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %86 = ptrtoint ptr %index139 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %index139, align 8
  %mul146 = shl i32 %87, 5
  %add149 = add i32 %mul146, 6960
  %88 = ptrtoint ptr %mmio.i622 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mmio.i622, align 8
  %add.ptr.i625 = getelementptr i8, ptr %89, i32 %add149
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i625) #3, !srcloc !61
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug320, ptr noundef %79, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %81, ptr noundef nonnull @.str.8, i32 noundef %85, i32 noundef %91) #3
  br label %do.body154

do.body154:                                       ; preds = %if.then136, %do.body124
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__shmob_drm_plane_setup, %if.then166)) #3
          to label %do.end183 [label %if.then166], !srcloc !60

if.then166:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #5
  %ddev167 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 8
  %92 = ptrtoint ptr %ddev167 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ddev167, align 8
  %dev168 = getelementptr inbounds %struct.drm_device, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %dev168 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev168, align 4
  %index169 = getelementptr inbounds %struct.shmob_drm_plane, ptr %splane, i32 0, i32 1
  %96 = ptrtoint ptr %index169 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %index169, align 8
  %mul171 = shl i32 %97, 5
  %add173 = add i32 %mul171, 2868
  %mmio.i626 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 2
  %98 = ptrtoint ptr %mmio.i626 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mmio.i626, align 8
  %add.ptr.i627 = getelementptr i8, ptr %99, i32 %add173
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i627) #3, !srcloc !61
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %102 = ptrtoint ptr %index169 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %index169, align 8
  %mul176 = shl i32 %103, 5
  %add179 = add i32 %mul176, 6964
  %104 = ptrtoint ptr %mmio.i626 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mmio.i626, align 8
  %add.ptr.i629 = getelementptr i8, ptr %105, i32 %add179
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i629) #3, !srcloc !61
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug321, ptr noundef %95, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %97, ptr noundef nonnull @.str.9, i32 noundef %101, i32 noundef %107) #3
  br label %do.end183

do.end183:                                        ; preds = %if.then166, %do.body154
  %index184 = getelementptr inbounds %struct.shmob_drm_plane, ptr %splane, i32 0, i32 1
  %108 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %index184, align 8
  %add185 = add i32 %109, 16
  %shl186 = shl nuw i32 1, %add185
  %mmio.i630 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 2
  %110 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i631 = getelementptr i8, ptr %111, i32 2816
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  %112 = tail call i32 @llvm.bswap.i32(i32 %shl186) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i631, i32 %112) #3, !srcloc !64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__shmob_drm_plane_setup, %if.then199)) #3
          to label %do.end206 [label %if.then199], !srcloc !60

if.then199:                                       ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #5
  %ddev200 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 8
  %113 = ptrtoint ptr %ddev200 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ddev200, align 8
  %dev201 = getelementptr inbounds %struct.drm_device, ptr %114, i32 0, i32 2
  %115 = ptrtoint ptr %dev201 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev201, align 4
  %117 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %index184, align 8
  %119 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i633 = getelementptr i8, ptr %120, i32 2816
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i633) #3, !srcloc !61
  %122 = tail call i32 @llvm.bswap.i32(i32 %121) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug322, ptr noundef %116, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %118, ptr noundef nonnull @.str.11, i32 noundef %122) #3
  br label %do.end206

do.end206:                                        ; preds = %if.then199, %do.end183
  %123 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %index184, align 8
  %mul208 = shl i32 %124, 5
  %add209 = add i32 %mul208, 2848
  %125 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i635 = getelementptr i8, ptr %126, i32 %add209
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  %127 = tail call i32 @llvm.bswap.i32(i32 %format.1) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i635, i32 %127) #3, !srcloc !64
  %128 = add i32 %mul208, 1800
  %129 = tail call i32 @llvm.fshl.i32(i32 8, i32 %128, i32 30) #3
  %130 = zext i32 %129 to i64
  call void @__sanitizer_cov_trace_switch(i64 %130, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %129, label %lcdc_is_banked.exit.i [
    i32 34, label %do.end206.if.then.i_crit_edge
    i32 10, label %do.end206.if.then.i_crit_edge724
    i32 2, label %do.end206.if.then.i_crit_edge725
  ]

do.end206.if.then.i_crit_edge725:                 ; preds = %do.end206
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

do.end206.if.then.i_crit_edge724:                 ; preds = %do.end206
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

do.end206.if.then.i_crit_edge:                    ; preds = %do.end206
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

lcdc_is_banked.exit.i:                            ; preds = %do.end206
  %131 = or i32 %mul208, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %131)
  %132 = icmp ult i32 %131, 141
  br i1 %132, label %lcdc_is_banked.exit.i.if.then.i_crit_edge, label %lcdc_is_banked.exit.i.lcdc_write.exit_crit_edge

lcdc_is_banked.exit.i.lcdc_write.exit_crit_edge:  ; preds = %lcdc_is_banked.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lcdc_write.exit

lcdc_is_banked.exit.i.if.then.i_crit_edge:        ; preds = %lcdc_is_banked.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

if.then.i:                                        ; preds = %lcdc_is_banked.exit.i.if.then.i_crit_edge, %do.end206.if.then.i_crit_edge, %do.end206.if.then.i_crit_edge724, %do.end206.if.then.i_crit_edge725
  %133 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mmio.i630, align 8
  %add.ptr2.i = getelementptr i8, ptr %134, i32 %add209
  %add.ptr3.i = getelementptr i8, ptr %add.ptr2.i, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %127) #3, !srcloc !64
  br label %lcdc_write.exit

lcdc_write.exit:                                  ; preds = %if.then.i, %lcdc_is_banked.exit.i.lcdc_write.exit_crit_edge
  %135 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %index184, align 8
  %mul212 = shl i32 %136, 5
  %add214 = add i32 %mul212, 2852
  %crtc_h = getelementptr inbounds %struct.shmob_drm_plane, ptr %splane, i32 0, i32 10
  %137 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %crtc_h, align 8
  %shl215 = shl i32 %138, 16
  %crtc_w = getelementptr inbounds %struct.shmob_drm_plane, ptr %splane, i32 0, i32 9
  %139 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %crtc_w, align 4
  %or217 = or i32 %shl215, %140
  %141 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i637 = getelementptr i8, ptr %142, i32 %add214
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  %143 = tail call i32 @llvm.bswap.i32(i32 %or217) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i637, i32 %143) #3, !srcloc !64
  %144 = add i32 %mul212, 1804
  %145 = tail call i32 @llvm.fshl.i32(i32 12, i32 %144, i32 30) #3
  %146 = zext i32 %145 to i64
  call void @__sanitizer_cov_trace_switch(i64 %146, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %145, label %lcdc_is_banked.exit.i638 [
    i32 11, label %lcdc_write.exit.if.then.i641_crit_edge
    i32 3, label %lcdc_write.exit.if.then.i641_crit_edge726
  ]

lcdc_write.exit.if.then.i641_crit_edge726:        ; preds = %lcdc_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i641

lcdc_write.exit.if.then.i641_crit_edge:           ; preds = %lcdc_write.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i641

lcdc_is_banked.exit.i638:                         ; preds = %lcdc_write.exit
  %147 = or i32 %mul212, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %147)
  %148 = icmp ult i32 %147, 141
  br i1 %148, label %lcdc_is_banked.exit.i638.if.then.i641_crit_edge, label %lcdc_is_banked.exit.i638.lcdc_write.exit642_crit_edge

lcdc_is_banked.exit.i638.lcdc_write.exit642_crit_edge: ; preds = %lcdc_is_banked.exit.i638
  call void @__sanitizer_cov_trace_pc() #5
  br label %lcdc_write.exit642

lcdc_is_banked.exit.i638.if.then.i641_crit_edge:  ; preds = %lcdc_is_banked.exit.i638
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i641

if.then.i641:                                     ; preds = %lcdc_is_banked.exit.i638.if.then.i641_crit_edge, %lcdc_write.exit.if.then.i641_crit_edge, %lcdc_write.exit.if.then.i641_crit_edge726
  %149 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %mmio.i630, align 8
  %add.ptr2.i639 = getelementptr i8, ptr %150, i32 %add214
  %add.ptr3.i640 = getelementptr i8, ptr %add.ptr2.i639, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i640, i32 %143) #3, !srcloc !64
  br label %lcdc_write.exit642

lcdc_write.exit642:                               ; preds = %if.then.i641, %lcdc_is_banked.exit.i638.lcdc_write.exit642_crit_edge
  %151 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %index184, align 8
  %mul219 = shl i32 %152, 5
  %add221 = add i32 %mul219, 2856
  %crtc_y = getelementptr inbounds %struct.shmob_drm_plane, ptr %splane, i32 0, i32 8
  %153 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %crtc_y, align 8
  %shl222 = shl i32 %154, 16
  %crtc_x = getelementptr inbounds %struct.shmob_drm_plane, ptr %splane, i32 0, i32 7
  %155 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %crtc_x, align 4
  %or224 = or i32 %shl222, %156
  %157 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i644 = getelementptr i8, ptr %158, i32 %add221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  %159 = tail call i32 @llvm.bswap.i32(i32 %or224) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i644, i32 %159) #3, !srcloc !64
  %160 = add i32 %mul219, 1808
  %161 = tail call i32 @llvm.fshl.i32(i32 16, i32 %160, i32 30) #3
  %162 = zext i32 %161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %161, label %lcdc_is_banked.exit.i645 [
    i32 4, label %lcdc_write.exit642.if.then.i648_crit_edge
    i32 12, label %lcdc_write.exit642.if.then.i648_crit_edge727
  ]

lcdc_write.exit642.if.then.i648_crit_edge727:     ; preds = %lcdc_write.exit642
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i648

lcdc_write.exit642.if.then.i648_crit_edge:        ; preds = %lcdc_write.exit642
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i648

lcdc_is_banked.exit.i645:                         ; preds = %lcdc_write.exit642
  %163 = or i32 %mul219, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %163)
  %164 = icmp ult i32 %163, 141
  br i1 %164, label %lcdc_is_banked.exit.i645.if.then.i648_crit_edge, label %lcdc_is_banked.exit.i645.lcdc_write.exit649_crit_edge

lcdc_is_banked.exit.i645.lcdc_write.exit649_crit_edge: ; preds = %lcdc_is_banked.exit.i645
  call void @__sanitizer_cov_trace_pc() #5
  br label %lcdc_write.exit649

lcdc_is_banked.exit.i645.if.then.i648_crit_edge:  ; preds = %lcdc_is_banked.exit.i645
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i648

if.then.i648:                                     ; preds = %lcdc_is_banked.exit.i645.if.then.i648_crit_edge, %lcdc_write.exit642.if.then.i648_crit_edge, %lcdc_write.exit642.if.then.i648_crit_edge727
  %165 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %mmio.i630, align 8
  %add.ptr2.i646 = getelementptr i8, ptr %166, i32 %add221
  %add.ptr3.i647 = getelementptr i8, ptr %add.ptr2.i646, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i647, i32 %159) #3, !srcloc !64
  br label %lcdc_write.exit649

lcdc_write.exit649:                               ; preds = %if.then.i648, %lcdc_is_banked.exit.i645.lcdc_write.exit649_crit_edge
  %167 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %index184, align 8
  %mul226 = shl i32 %168, 5
  %add228 = add i32 %mul226, 2860
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 6
  %169 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %pitches, align 8
  %171 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i651 = getelementptr i8, ptr %172, i32 %add228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  %173 = tail call i32 @llvm.bswap.i32(i32 %170) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i651, i32 %173) #3, !srcloc !64
  %174 = add i32 %mul226, 1812
  %175 = tail call i32 @llvm.fshl.i32(i32 20, i32 %174, i32 30) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %175)
  %cond = icmp eq i32 %175, 13
  %176 = or i32 %mul226, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %176)
  %177 = icmp ult i32 %176, 141
  %or.cond = select i1 %cond, i1 true, i1 %177
  br i1 %or.cond, label %if.then.i655, label %lcdc_write.exit649.lcdc_write.exit656_crit_edge

lcdc_write.exit649.lcdc_write.exit656_crit_edge:  ; preds = %lcdc_write.exit649
  call void @__sanitizer_cov_trace_pc() #5
  br label %lcdc_write.exit656

if.then.i655:                                     ; preds = %lcdc_write.exit649
  call void @__sanitizer_cov_trace_pc() #5
  %178 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %mmio.i630, align 8
  %add.ptr2.i653 = getelementptr i8, ptr %179, i32 %add228
  %add.ptr3.i654 = getelementptr i8, ptr %add.ptr2.i653, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i654, i32 %173) #3, !srcloc !64
  br label %lcdc_write.exit656

lcdc_write.exit656:                               ; preds = %if.then.i655, %lcdc_write.exit649.lcdc_write.exit656_crit_edge
  %src_x = getelementptr inbounds %struct.shmob_drm_plane, ptr %splane, i32 0, i32 5
  %180 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %src_x, align 4
  %src_y = getelementptr inbounds %struct.shmob_drm_plane, ptr %splane, i32 0, i32 6
  %182 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %src_y, align 8
  %184 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %format1, align 8
  %yuv.i = getelementptr inbounds %struct.shmob_drm_format_info, ptr %185, i32 0, i32 2
  %186 = ptrtoint ptr %yuv.i to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %yuv.i, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %187)
  %tobool.not.i = icmp eq i8 %187, 0
  br i1 %tobool.not.i, label %cond.false.i, label %lcdc_write.exit656.cond.end.i_crit_edge

lcdc_write.exit656.cond.end.i_crit_edge:          ; preds = %lcdc_write.exit656
  call void @__sanitizer_cov_trace_pc() #5
  br label %cond.end.i

cond.false.i:                                     ; preds = %lcdc_write.exit656
  call void @__sanitizer_cov_trace_pc() #5
  %bpp2.i = getelementptr inbounds %struct.shmob_drm_format_info, ptr %185, i32 0, i32 1
  %188 = ptrtoint ptr %bpp2.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %bpp2.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %lcdc_write.exit656.cond.end.i_crit_edge
  %cond.i = phi i32 [ %189, %cond.false.i ], [ 8, %lcdc_write.exit656.cond.end.i_crit_edge ]
  %call.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %fb, i32 noundef 0) #3
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 1
  %190 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %paddr.i, align 8
  %offsets.i = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 7
  %192 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %offsets.i, align 8
  %194 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %pitches, align 8
  %mul.i = mul i32 %195, %183
  %mul5.i = mul i32 %cond.i, %181
  %div45.i = lshr i32 %mul5.i, 3
  %add.i = add i32 %div45.i, %191
  %add4.i = add i32 %add.i, %193
  %add6.i = add i32 %add4.i, %mul.i
  %dma.i = getelementptr inbounds %struct.shmob_drm_plane, ptr %splane, i32 0, i32 4
  %196 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %add6.i, ptr %dma.i, align 4
  %197 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %format1, align 8
  %yuv9.i = getelementptr inbounds %struct.shmob_drm_format_info, ptr %198, i32 0, i32 2
  %199 = ptrtoint ptr %yuv9.i to i32
  call void @__asan_load1_noabort(i32 %199)
  %200 = load i8, ptr %yuv9.i, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %200)
  %tobool10.not.i = icmp eq i8 %200, 0
  br i1 %tobool10.not.i, label %cond.end.i.shmob_drm_plane_compute_base.exit_crit_edge, label %if.then.i657

cond.end.i.shmob_drm_plane_compute_base.exit_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %shmob_drm_plane_compute_base.exit

if.then.i657:                                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %bpp12.i = getelementptr inbounds %struct.shmob_drm_format_info, ptr %198, i32 0, i32 1
  %201 = ptrtoint ptr %bpp12.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %bpp12.i, align 4
  %sub.i = add i32 %202, -8
  %call13.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %fb, i32 noundef 1) #3
  %paddr14.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call13.i, i32 0, i32 1
  %203 = ptrtoint ptr %paddr14.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %paddr14.i, align 8
  %arrayidx16.i = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 7, i32 1
  %205 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx16.i, align 4
  %add17.i = add i32 %206, %204
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i)
  %cmp.i = icmp eq i32 %sub.i, 4
  %cond18.i = select i1 %cmp.i, i32 2, i32 1
  %div19.i = sdiv i32 %183, %cond18.i
  %arrayidx21.i = getelementptr %struct.drm_framebuffer, ptr %fb, i32 0, i32 6, i32 1
  %207 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx21.i, align 4
  %mul22.i = mul i32 %208, %div19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i)
  %cmp24.i = icmp eq i32 %sub.i, 16
  %cond25.i = select i1 %cmp24.i, i32 2, i32 1
  %mul26.i = mul i32 %cond25.i, %181
  %add23.i = add i32 %add17.i, %mul26.i
  %add27.i = add i32 %add23.i, %mul22.i
  %arrayidx29.i = getelementptr %struct.shmob_drm_plane, ptr %splane, i32 0, i32 4, i32 1
  %209 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %add27.i, ptr %arrayidx29.i, align 4
  br label %shmob_drm_plane_compute_base.exit

shmob_drm_plane_compute_base.exit:                ; preds = %if.then.i657, %cond.end.i.shmob_drm_plane_compute_base.exit_crit_edge
  %210 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %index184, align 8
  %mul231 = shl i32 %211, 5
  %add233 = add i32 %mul231, 2864
  %212 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %dma.i, align 4
  %214 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i659 = getelementptr i8, ptr %215, i32 %add233
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  %216 = tail call i32 @llvm.bswap.i32(i32 %213) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i659, i32 %216) #3, !srcloc !64
  %217 = add i32 %mul231, 1816
  %218 = tail call i32 @llvm.fshl.i32(i32 24, i32 %217, i32 30) #3
  %219 = zext i32 %218 to i64
  call void @__sanitizer_cov_trace_switch(i64 %219, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %218, label %lcdc_is_banked.exit.i660 [
    i32 14, label %shmob_drm_plane_compute_base.exit.if.then.i663_crit_edge
    i32 6, label %shmob_drm_plane_compute_base.exit.if.then.i663_crit_edge728
  ]

shmob_drm_plane_compute_base.exit.if.then.i663_crit_edge728: ; preds = %shmob_drm_plane_compute_base.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i663

shmob_drm_plane_compute_base.exit.if.then.i663_crit_edge: ; preds = %shmob_drm_plane_compute_base.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i663

lcdc_is_banked.exit.i660:                         ; preds = %shmob_drm_plane_compute_base.exit
  %220 = add i32 %mul231, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %220)
  %221 = icmp ult i32 %220, 141
  br i1 %221, label %lcdc_is_banked.exit.i660.if.then.i663_crit_edge, label %lcdc_is_banked.exit.i660.lcdc_write.exit664_crit_edge

lcdc_is_banked.exit.i660.lcdc_write.exit664_crit_edge: ; preds = %lcdc_is_banked.exit.i660
  call void @__sanitizer_cov_trace_pc() #5
  br label %lcdc_write.exit664

lcdc_is_banked.exit.i660.if.then.i663_crit_edge:  ; preds = %lcdc_is_banked.exit.i660
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i663

if.then.i663:                                     ; preds = %lcdc_is_banked.exit.i660.if.then.i663_crit_edge, %shmob_drm_plane_compute_base.exit.if.then.i663_crit_edge, %shmob_drm_plane_compute_base.exit.if.then.i663_crit_edge728
  %222 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %mmio.i630, align 8
  %add.ptr2.i661 = getelementptr i8, ptr %223, i32 %add233
  %add.ptr3.i662 = getelementptr i8, ptr %add.ptr2.i661, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i662, i32 %216) #3, !srcloc !64
  br label %lcdc_write.exit664

lcdc_write.exit664:                               ; preds = %if.then.i663, %lcdc_is_banked.exit.i660.lcdc_write.exit664_crit_edge
  %224 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %format1, align 8
  %yuv = getelementptr inbounds %struct.shmob_drm_format_info, ptr %225, i32 0, i32 2
  %226 = ptrtoint ptr %yuv to i32
  call void @__asan_load1_noabort(i32 %226)
  %227 = load i8, ptr %yuv, align 4, !range !65
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %227)
  %tobool236.not = icmp eq i8 %227, 0
  br i1 %tobool236.not, label %lcdc_write.exit664.if.end244_crit_edge, label %if.then237

lcdc_write.exit664.if.end244_crit_edge:           ; preds = %lcdc_write.exit664
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end244

if.then237:                                       ; preds = %lcdc_write.exit664
  %228 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %index184, align 8
  %mul239 = shl i32 %229, 5
  %add241 = add i32 %mul239, 2868
  %arrayidx243 = getelementptr %struct.shmob_drm_plane, ptr %splane, i32 0, i32 4, i32 1
  %230 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %arrayidx243, align 4
  %232 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i666 = getelementptr i8, ptr %233, i32 %add241
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  %234 = tail call i32 @llvm.bswap.i32(i32 %231) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i666, i32 %234) #3, !srcloc !64
  %235 = add i32 %mul239, 1820
  %236 = tail call i32 @llvm.fshl.i32(i32 28, i32 %235, i32 30) #3
  %237 = zext i32 %236 to i64
  call void @__sanitizer_cov_trace_switch(i64 %237, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %236, label %lcdc_is_banked.exit.i667 [
    i32 7, label %if.then237.if.then.i670_crit_edge
    i32 15, label %if.then237.if.then.i670_crit_edge729
  ]

if.then237.if.then.i670_crit_edge729:             ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i670

if.then237.if.then.i670_crit_edge:                ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i670

lcdc_is_banked.exit.i667:                         ; preds = %if.then237
  %238 = add i32 %mul239, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %238)
  %239 = icmp ult i32 %238, 141
  br i1 %239, label %lcdc_is_banked.exit.i667.if.then.i670_crit_edge, label %lcdc_is_banked.exit.i667.if.end244_crit_edge

lcdc_is_banked.exit.i667.if.end244_crit_edge:     ; preds = %lcdc_is_banked.exit.i667
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end244

lcdc_is_banked.exit.i667.if.then.i670_crit_edge:  ; preds = %lcdc_is_banked.exit.i667
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i670

if.then.i670:                                     ; preds = %lcdc_is_banked.exit.i667.if.then.i670_crit_edge, %if.then237.if.then.i670_crit_edge, %if.then237.if.then.i670_crit_edge729
  %240 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %mmio.i630, align 8
  %add.ptr2.i668 = getelementptr i8, ptr %241, i32 %add241
  %add.ptr3.i669 = getelementptr i8, ptr %add.ptr2.i668, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i669, i32 %234) #3, !srcloc !64
  br label %if.end244

if.end244:                                        ; preds = %if.then.i670, %lcdc_is_banked.exit.i667.if.end244_crit_edge, %lcdc_write.exit664.if.end244_crit_edge
  %242 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %index184, align 8
  %add246 = add i32 %243, 8
  %shl247 = shl nuw i32 1, %add246
  %shl250 = shl nuw i32 1, %243
  %or251 = or i32 %shl247, %shl250
  %244 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i673 = getelementptr i8, ptr %245, i32 2816
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  %246 = tail call i32 @llvm.bswap.i32(i32 %or251) #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i673, i32 %246) #3, !srcloc !64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__shmob_drm_plane_setup, %if.then264)) #3
          to label %do.body272 [label %if.then264], !srcloc !60

if.then264:                                       ; preds = %if.end244
  call void @__sanitizer_cov_trace_pc() #5
  %ddev265 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 8
  %247 = ptrtoint ptr %ddev265 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %ddev265, align 8
  %dev266 = getelementptr inbounds %struct.drm_device, ptr %248, i32 0, i32 2
  %249 = ptrtoint ptr %dev266 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dev266, align 4
  %251 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %index184, align 8
  %253 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i676 = getelementptr i8, ptr %254, i32 2816
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i676) #3, !srcloc !61
  %256 = tail call i32 @llvm.bswap.i32(i32 %255) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug323, ptr noundef %250, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef %252, ptr noundef nonnull @.str.11, i32 noundef %256) #3
  br label %do.body272

do.body272:                                       ; preds = %if.then264, %if.end244
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__shmob_drm_plane_setup, %if.then284)) #3
          to label %do.body302 [label %if.then284], !srcloc !60

if.then284:                                       ; preds = %do.body272
  call void @__sanitizer_cov_trace_pc() #5
  %ddev285 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 8
  %257 = ptrtoint ptr %ddev285 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %ddev285, align 8
  %dev286 = getelementptr inbounds %struct.drm_device, ptr %258, i32 0, i32 2
  %259 = ptrtoint ptr %dev286 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dev286, align 4
  %261 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %index184, align 8
  %mul289 = shl i32 %262, 5
  %add290 = add i32 %mul289, 2848
  %263 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i678 = getelementptr i8, ptr %264, i32 %add290
  %265 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i678) #3, !srcloc !61
  %266 = tail call i32 @llvm.bswap.i32(i32 %265) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %267 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %index184, align 8
  %mul294 = shl i32 %268, 5
  %add297 = add i32 %mul294, 6944
  %269 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i680 = getelementptr i8, ptr %270, i32 %add297
  %271 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i680) #3, !srcloc !61
  %272 = tail call i32 @llvm.bswap.i32(i32 %271) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug324, ptr noundef %260, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %262, ptr noundef nonnull @.str.4, i32 noundef %266, i32 noundef %272) #3
  br label %do.body302

do.body302:                                       ; preds = %if.then284, %do.body272
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__shmob_drm_plane_setup, %if.then314)) #3
          to label %do.body332 [label %if.then314], !srcloc !60

if.then314:                                       ; preds = %do.body302
  call void @__sanitizer_cov_trace_pc() #5
  %ddev315 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 8
  %273 = ptrtoint ptr %ddev315 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %ddev315, align 8
  %dev316 = getelementptr inbounds %struct.drm_device, ptr %274, i32 0, i32 2
  %275 = ptrtoint ptr %dev316 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %dev316, align 4
  %277 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %index184, align 8
  %mul319 = shl i32 %278, 5
  %add321 = add i32 %mul319, 2852
  %279 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i682 = getelementptr i8, ptr %280, i32 %add321
  %281 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i682) #3, !srcloc !61
  %282 = tail call i32 @llvm.bswap.i32(i32 %281) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %283 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %index184, align 8
  %mul324 = shl i32 %284, 5
  %add327 = add i32 %mul324, 6948
  %285 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i684 = getelementptr i8, ptr %286, i32 %add327
  %287 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i684) #3, !srcloc !61
  %288 = tail call i32 @llvm.bswap.i32(i32 %287) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug325, ptr noundef %276, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %278, ptr noundef nonnull @.str.5, i32 noundef %282, i32 noundef %288) #3
  br label %do.body332

do.body332:                                       ; preds = %if.then314, %do.body302
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__shmob_drm_plane_setup, %if.then344)) #3
          to label %do.body362 [label %if.then344], !srcloc !60

if.then344:                                       ; preds = %do.body332
  call void @__sanitizer_cov_trace_pc() #5
  %ddev345 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 8
  %289 = ptrtoint ptr %ddev345 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %ddev345, align 8
  %dev346 = getelementptr inbounds %struct.drm_device, ptr %290, i32 0, i32 2
  %291 = ptrtoint ptr %dev346 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %dev346, align 4
  %293 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %index184, align 8
  %mul349 = shl i32 %294, 5
  %add351 = add i32 %mul349, 2856
  %295 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i686 = getelementptr i8, ptr %296, i32 %add351
  %297 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i686) #3, !srcloc !61
  %298 = tail call i32 @llvm.bswap.i32(i32 %297) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %299 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %index184, align 8
  %mul354 = shl i32 %300, 5
  %add357 = add i32 %mul354, 6952
  %301 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i688 = getelementptr i8, ptr %302, i32 %add357
  %303 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i688) #3, !srcloc !61
  %304 = tail call i32 @llvm.bswap.i32(i32 %303) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug326, ptr noundef %292, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %294, ptr noundef nonnull @.str.6, i32 noundef %298, i32 noundef %304) #3
  br label %do.body362

do.body362:                                       ; preds = %if.then344, %do.body332
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__shmob_drm_plane_setup, %if.then374)) #3
          to label %do.body392 [label %if.then374], !srcloc !60

if.then374:                                       ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #5
  %ddev375 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 8
  %305 = ptrtoint ptr %ddev375 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %ddev375, align 8
  %dev376 = getelementptr inbounds %struct.drm_device, ptr %306, i32 0, i32 2
  %307 = ptrtoint ptr %dev376 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %dev376, align 4
  %309 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %index184, align 8
  %mul379 = shl i32 %310, 5
  %add381 = add i32 %mul379, 2860
  %311 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i690 = getelementptr i8, ptr %312, i32 %add381
  %313 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i690) #3, !srcloc !61
  %314 = tail call i32 @llvm.bswap.i32(i32 %313) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %315 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %index184, align 8
  %mul384 = shl i32 %316, 5
  %add387 = add i32 %mul384, 6956
  %317 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i692 = getelementptr i8, ptr %318, i32 %add387
  %319 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i692) #3, !srcloc !61
  %320 = tail call i32 @llvm.bswap.i32(i32 %319) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug327, ptr noundef %308, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %310, ptr noundef nonnull @.str.7, i32 noundef %314, i32 noundef %320) #3
  br label %do.body392

do.body392:                                       ; preds = %if.then374, %do.body362
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__shmob_drm_plane_setup, %if.then404)) #3
          to label %do.body422 [label %if.then404], !srcloc !60

if.then404:                                       ; preds = %do.body392
  call void @__sanitizer_cov_trace_pc() #5
  %ddev405 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 8
  %321 = ptrtoint ptr %ddev405 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %ddev405, align 8
  %dev406 = getelementptr inbounds %struct.drm_device, ptr %322, i32 0, i32 2
  %323 = ptrtoint ptr %dev406 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %dev406, align 4
  %325 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %index184, align 8
  %mul409 = shl i32 %326, 5
  %add411 = add i32 %mul409, 2864
  %327 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i694 = getelementptr i8, ptr %328, i32 %add411
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i694) #3, !srcloc !61
  %330 = tail call i32 @llvm.bswap.i32(i32 %329) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %331 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %index184, align 8
  %mul414 = shl i32 %332, 5
  %add417 = add i32 %mul414, 6960
  %333 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i696 = getelementptr i8, ptr %334, i32 %add417
  %335 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i696) #3, !srcloc !61
  %336 = tail call i32 @llvm.bswap.i32(i32 %335) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug328, ptr noundef %324, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %326, ptr noundef nonnull @.str.8, i32 noundef %330, i32 noundef %336) #3
  br label %do.body422

do.body422:                                       ; preds = %if.then404, %do.body392
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__shmob_drm_plane_setup, %if.then434)) #3
          to label %do.end451 [label %if.then434], !srcloc !60

if.then434:                                       ; preds = %do.body422
  call void @__sanitizer_cov_trace_pc() #5
  %ddev435 = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 8
  %337 = ptrtoint ptr %ddev435 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %ddev435, align 8
  %dev436 = getelementptr inbounds %struct.drm_device, ptr %338, i32 0, i32 2
  %339 = ptrtoint ptr %dev436 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %dev436, align 4
  %341 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %index184, align 8
  %mul439 = shl i32 %342, 5
  %add441 = add i32 %mul439, 2868
  %343 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i698 = getelementptr i8, ptr %344, i32 %add441
  %345 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i698) #3, !srcloc !61
  %346 = tail call i32 @llvm.bswap.i32(i32 %345) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  %347 = ptrtoint ptr %index184 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %index184, align 8
  %mul444 = shl i32 %348, 5
  %add447 = add i32 %mul444, 6964
  %349 = ptrtoint ptr %mmio.i630 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %mmio.i630, align 8
  %add.ptr.i700 = getelementptr i8, ptr %350, i32 %add447
  %351 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i700) #3, !srcloc !61
  %352 = tail call i32 @llvm.bswap.i32(i32 %351) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !62
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug329, ptr noundef %340, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %342, ptr noundef nonnull @.str.9, i32 noundef %346, i32 noundef %352) #3
  br label %do.end451

do.end451:                                        ; preds = %if.then434, %do.body422
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @shmob_drm_plane_create(ptr nocapture noundef readonly %sdev, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sdev, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 576, i32 noundef 3520) #3
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %index1 = getelementptr inbounds %struct.shmob_drm_plane, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %index, ptr %index1, align 8
  %alpha = getelementptr inbounds %struct.shmob_drm_plane, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %alpha to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 255, ptr %alpha, align 4
  %ddev = getelementptr inbounds %struct.shmob_drm_device, ptr %sdev, i32 0, i32 8
  %4 = ptrtoint ptr %ddev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddev, align 8
  %call2 = tail call i32 @drm_plane_init(ptr noundef %5, ptr noundef nonnull %call.i, i32 noundef 1, ptr noundef nonnull @shmob_drm_plane_funcs, ptr noundef nonnull @formats, i32 noundef 9, i1 noundef zeroext false) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmob_drm_plane_update(ptr noundef %plane, ptr nocapture noundef readnone %crtc, ptr noundef %fb, i32 noundef %crtc_x, i32 noundef %crtc_y, i32 noundef %crtc_w, i32 noundef %crtc_h, i32 noundef %src_x, i32 noundef %src_y, i32 noundef %src_w, i32 noundef %src_h, ptr nocapture noundef readnone %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %format1 = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %4 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %format1, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call = tail call ptr @shmob_drm_format_info(i32 noundef %7) #3
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %do.body, label %if.end11

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @shmob_drm_plane_update.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@shmob_drm_plane_update, %if.then7)) #3
          to label %cleanup [label %if.then7], !srcloc !60

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 8
  %10 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %format1, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @shmob_drm_plane_update.__UNIQUE_ID_ddebug330, ptr noundef %9, ptr noundef nonnull @.str.13, i32 noundef %13) #3
  br label %cleanup

if.end11:                                         ; preds = %entry
  %shr = lshr i32 %src_w, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %crtc_w)
  %cmp12.not = icmp eq i32 %shr, %crtc_w
  %shr13 = lshr i32 %src_h, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %shr13, i32 %crtc_h)
  %cmp14.not = icmp eq i32 %shr13, %crtc_h
  %or.cond = and i1 %cmp12.not, %cmp14.not
  br i1 %or.cond, label %if.end33, label %do.body16

do.body16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @shmob_drm_plane_update.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@shmob_drm_plane_update, %if.then28)) #3
          to label %cleanup [label %if.then28], !srcloc !60

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @shmob_drm_plane_update.__UNIQUE_ID_ddebug331, ptr noundef %15, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.12) #3
  br label %cleanup

if.end33:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  %format34 = getelementptr inbounds %struct.shmob_drm_plane, ptr %plane, i32 0, i32 3
  %16 = ptrtoint ptr %format34 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %format34, align 8
  %shr35 = lshr i32 %src_x, 16
  %src_x36 = getelementptr inbounds %struct.shmob_drm_plane, ptr %plane, i32 0, i32 5
  %17 = ptrtoint ptr %src_x36 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %shr35, ptr %src_x36, align 4
  %shr37 = lshr i32 %src_y, 16
  %src_y38 = getelementptr inbounds %struct.shmob_drm_plane, ptr %plane, i32 0, i32 6
  %18 = ptrtoint ptr %src_y38 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr37, ptr %src_y38, align 8
  %crtc_x39 = getelementptr inbounds %struct.shmob_drm_plane, ptr %plane, i32 0, i32 7
  %19 = ptrtoint ptr %crtc_x39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %crtc_x, ptr %crtc_x39, align 4
  %crtc_y40 = getelementptr inbounds %struct.shmob_drm_plane, ptr %plane, i32 0, i32 8
  %20 = ptrtoint ptr %crtc_y40 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %crtc_y, ptr %crtc_y40, align 8
  %crtc_w41 = getelementptr inbounds %struct.shmob_drm_plane, ptr %plane, i32 0, i32 9
  %21 = ptrtoint ptr %crtc_w41 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %crtc_w, ptr %crtc_w41, align 4
  %crtc_h42 = getelementptr inbounds %struct.shmob_drm_plane, ptr %plane, i32 0, i32 10
  %22 = ptrtoint ptr %crtc_h42 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %crtc_h, ptr %crtc_h42, align 8
  tail call fastcc void @__shmob_drm_plane_setup(ptr noundef %plane, ptr noundef %fb)
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then28, %do.body16, %if.then7, %do.body
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -22, %if.then7 ], [ -22, %if.then28 ], [ -22, %do.body ], [ -22, %do.body16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shmob_drm_plane_disable(ptr nocapture noundef %plane, ptr nocapture noundef readnone %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %format = getelementptr inbounds %struct.shmob_drm_plane, ptr %plane, i32 0, i32 3
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %format, align 8
  %index = getelementptr inbounds %struct.shmob_drm_plane, ptr %plane, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 8
  %mul = shl i32 %6, 5
  %add = add i32 %mul, 2848
  %mmio.i = getelementptr inbounds %struct.shmob_drm_device, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #3, !srcloc !64
  %9 = add i32 %mul, 1800
  %10 = tail call i32 @llvm.fshl.i32(i32 8, i32 %9, i32 30) #3
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %10, label %lcdc_is_banked.exit.i [
    i32 34, label %entry.if.then.i_crit_edge
    i32 10, label %entry.if.then.i_crit_edge4
    i32 2, label %entry.if.then.i_crit_edge5
  ]

entry.if.then.i_crit_edge5:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

entry.if.then.i_crit_edge4:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

lcdc_is_banked.exit.i:                            ; preds = %entry
  %12 = or i32 %mul, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 141, i32 %12)
  %13 = icmp ult i32 %12, 141
  br i1 %13, label %lcdc_is_banked.exit.i.if.then.i_crit_edge, label %lcdc_is_banked.exit.i.lcdc_write.exit_crit_edge

lcdc_is_banked.exit.i.lcdc_write.exit_crit_edge:  ; preds = %lcdc_is_banked.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %lcdc_write.exit

lcdc_is_banked.exit.i.if.then.i_crit_edge:        ; preds = %lcdc_is_banked.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

if.then.i:                                        ; preds = %lcdc_is_banked.exit.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge, %entry.if.then.i_crit_edge4, %entry.if.then.i_crit_edge5
  %14 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio.i, align 8
  %add.ptr2.i = getelementptr i8, ptr %15, i32 %add
  %add.ptr3.i = getelementptr i8, ptr %add.ptr2.i, i32 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !63
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #3, !srcloc !64
  br label %lcdc_write.exit

lcdc_write.exit:                                  ; preds = %if.then.i, %lcdc_is_banked.exit.i.lcdc_write.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @shmob_drm_plane_destroy(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_plane_force_disable(ptr noundef %plane) #3
  tail call void @drm_plane_cleanup(ptr noundef %plane) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @shmob_drm_format_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_force_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !48, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 118, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug316, !1, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug317, !8, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 119, i32 2}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug318, !11, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 120, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug319, !14, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 121, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug320, !17, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 122, i32 2}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug321, !20, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 123, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 126, i32 2}
!24 = !{ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug322, !23, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!25 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug323, !27, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 148, i32 2}
!28 = !{ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug324, !29, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 151, i32 2}
!30 = !{ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug325, !31, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 152, i32 2}
!32 = !{ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug326, !33, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 153, i32 2}
!34 = !{ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug327, !35, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 154, i32 2}
!36 = !{ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug328, !37, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 155, i32 2}
!38 = !{ptr @__shmob_drm_plane_setup.__UNIQUE_ID_ddebug329, !39, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 156, i32 2}
!40 = !{ptr @shmob_drm_plane_funcs, !41, !"shmob_drm_plane_funcs", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 224, i32 37}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 183, i32 3}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @shmob_drm_plane_update.__UNIQUE_ID_ddebug330, !43, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 189, i32 3}
!48 = !{ptr @shmob_drm_plane_update.__UNIQUE_ID_ddebug331, !47, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!49 = !{ptr @formats, !50, !"formats", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/shmobile/shmob_drm_plane.c", i32 230, i32 23}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{i64 2149037781, i64 2149037786, i64 2149037799, i64 2149037843, i64 2149037877, i64 2149037898}
!61 = !{i64 6874163}
!62 = !{i64 2154407022}
!63 = !{i64 2154408377}
!64 = !{i64 6873745}
!65 = !{i8 0, i8 2}
