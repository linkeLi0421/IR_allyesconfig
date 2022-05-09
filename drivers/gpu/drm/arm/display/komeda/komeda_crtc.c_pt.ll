; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.komeda_crtc = type { %struct.drm_crtc, ptr, ptr, i32, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.komeda_pipeline = type { %struct.drm_private_obj, ptr, ptr, i32, i32, i32, i32, [4 x ptr], i32, [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.komeda_events = type { i64, [2 x i64] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.komeda_dev = type { ptr, ptr, %struct.komeda_chip_info, %struct.komeda_format_caps_table, ptr, i32, %struct.mutex, i32, i32, [2 x ptr], ptr, ptr, ptr, ptr, i16 }
%struct.komeda_chip_info = type { i32, i32, i32, i32 }
%struct.komeda_format_caps_table = type { i32, ptr, ptr }
%struct.komeda_kms_dev = type { %struct.drm_device, i32, [2 x %struct.komeda_crtc] }
%struct.komeda_component = type { %struct.drm_private_obj, ptr, [32 x i8], ptr, i32, i32, i8, i8, i32, i32, ptr }
%struct.komeda_crtc_state = type { %struct.drm_crtc_state, i32, i32, i64, i32 }
%struct.komeda_dev_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_commit = type { ptr, %struct.kref, %struct.completion, %struct.completion, %struct.completion, %struct.list_head, ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@komeda_crtc_handle_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014[drm] CRTC[%d]: EOW happen but no wb_connector.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"komeda_crtc_handle_event\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/gpu/drm/arm/display/komeda/komeda_crtc.c\00", [47 x i8] zeroinitializer }, align 32
@komeda_crtc_handle_event._entry_ptr = internal global ptr @komeda_crtc_handle_event._entry, section ".printk_index", align 4
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EOW.\0A\00", [26 x i8] zeroinitializer }, align 32
@komeda_crtc_handle_event._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014[drm] CRTC[%d]: FLIP happen but no pending commit.\0A\00", [42 x i8] zeroinitializer }, align 32
@komeda_crtc_handle_event._entry_ptr.6 = internal global ptr @komeda_crtc_handle_event._entry.4, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pipe-%d\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@komeda_kms_setup_crtcs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016[drm] CRTC-%d: master(pipe-%d) slave(%s).\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"komeda_kms_setup_crtcs\00", [41 x i8] zeroinitializer }, align 32
@komeda_kms_setup_crtcs._entry_ptr = internal global ptr @komeda_kms_setup_crtcs._entry, section ".printk_index", align 4
@komeda_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @komeda_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @komeda_crtc_atomic_duplicate_state, ptr @komeda_crtc_atomic_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @komeda_crtc_vblank_enable, ptr @komeda_crtc_vblank_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@komeda_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @komeda_crtc_mode_valid, ptr @komeda_crtc_mode_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @komeda_crtc_atomic_check, ptr null, ptr @komeda_crtc_atomic_flush, ptr @komeda_crtc_atomic_enable, ptr @komeda_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pxlclk doesn't support %lu Hz\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"engine clk can't satisfy the requirement of %s-clk: %lu.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CRTC%d_FLUSH: active_pipes: 0x%x, affected: 0x%x.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to change opmode: 0x%x -> 0x%x.\0A,\00", [55 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to set aclk.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to enable aclk.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to set pxlclk for pipe%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to enable pxl clk for pipe%d.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"CRTC%d_DISABLE: active_pipes: 0x%x, affected: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wait pipe%d flip done timeout\0A\00", [33 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 214, i32 4 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 219, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 238, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 581, i32 17 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 583, i32 17 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 585, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"komeda_crtc_funcs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 552, i32 36 }
@___asan_gen_.61 = private unnamed_addr constant [25 x i8] c"komeda_crtc_helper_funcs\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 485, i32 43 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 444, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 451, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 257, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 130, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 144, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 147, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 152, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 155, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 337, i32 2 }
@___asan_gen_.92 = private constant [52 x i8] c"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 313, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 87, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @komeda_crtc_handle_event._entry, ptr @komeda_crtc_handle_event._entry.4, ptr @komeda_crtc_handle_event._entry_ptr, ptr @komeda_crtc_handle_event._entry_ptr.6, ptr @komeda_kms_setup_crtcs._entry, ptr @komeda_kms_setup_crtcs._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @komeda_crtc_funcs, ptr @komeda_crtc_helper_funcs, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @init_completion.__key, ptr @.str.21], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_crtc_handle_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_crtc_handle_event._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_kms_setup_crtcs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @komeda_crtc_get_color_config(ptr nocapture noundef readonly %crtc_st, ptr nocapture noundef writeonly %color_depths, ptr nocapture noundef writeonly %color_formats) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_st, i32 0, i32 20
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %num_connector = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_connector, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp43 = icmp sgt i32 %3, 0
  br i1 %cmp43, label %for.body.lr.ph, label %entry.for.end.thread_crit_edge

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %entry
  %connectors = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %connectors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connectors, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %min_bpc.047 = phi i32 [ 31, %for.body.lr.ph ], [ %min_bpc.1, %for.inc.for.body_crit_edge ]
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %conn_color_formats.044 = phi i32 [ -1, %for.body.lr.ph ], [ %conn_color_formats.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.__drm_connnectors_state, ptr %5, i32 %i.045
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %new_state = getelementptr %struct.__drm_connnectors_state, ptr %5, i32 %i.045, i32 3
  %8 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %new_state, align 4
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 4
  %12 = ptrtoint ptr %crtc_st to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtc_st, align 4
  %cmp10.not = icmp eq ptr %11, %13
  br i1 %cmp10.not, label %if.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %7, i32 0, i32 20, i32 2
  %14 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bpc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool12.not = icmp eq i32 %15, 0
  %spec.select = select i1 %tobool12.not, i32 8, i32 %15
  %color_formats16 = getelementptr inbounds %struct.drm_connector, ptr %7, i32 0, i32 20, i32 5
  %16 = ptrtoint ptr %color_formats16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %color_formats16, align 4
  %and = and i32 %17, %conn_color_formats.044
  %18 = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %min_bpc.047)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %conn_color_formats.1 = phi i32 [ %conn_color_formats.044, %land.lhs.true.for.inc_crit_edge ], [ %conn_color_formats.044, %for.body.for.inc_crit_edge ], [ %and, %if.end ]
  %min_bpc.1 = phi i32 [ %min_bpc.047, %land.lhs.true.for.inc_crit_edge ], [ %min_bpc.047, %for.body.for.inc_crit_edge ], [ %18, %if.end ]
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conn_color_formats.1)
  %tobool21.not = icmp eq i32 %conn_color_formats.1, 0
  %spec.select53 = select i1 %tobool21.not, i32 1, i32 %conn_color_formats.1
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end, %entry.for.end.thread_crit_edge
  %min_bpc.0.lcssa52 = phi i32 [ 31, %entry.for.end.thread_crit_edge ], [ %min_bpc.1, %for.end ]
  %19 = phi i32 [ -1, %entry.for.end.thread_crit_edge ], [ %spec.select53, %for.end ]
  %sub = sub i32 31, %min_bpc.0.lcssa52
  %shr = lshr i32 -1, %sub
  %20 = ptrtoint ptr %color_depths to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr, ptr %color_depths, align 4
  %21 = ptrtoint ptr %color_formats to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %19, ptr %color_formats, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @komeda_crtc_handle_event(ptr noundef %kcrtc, ptr nocapture noundef readonly %evts) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %master = getelementptr inbounds %struct.komeda_crtc, ptr %kcrtc, i32 0, i32 1
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 8
  %id = getelementptr inbounds %struct.komeda_pipeline, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.komeda_events, ptr %evts, i32 0, i32 1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  %and = and i64 %5, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %kcrtc) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i64 %5, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end19_crit_edge, label %if.then5

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then5:                                         ; preds = %if.end
  %wb_conn6 = getelementptr inbounds %struct.komeda_crtc, ptr %kcrtc, i32 0, i32 4
  %6 = ptrtoint ptr %wb_conn6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wb_conn6, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %do.end, label %if.then8

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_writeback_signal_completion(ptr noundef nonnull %7, i32 noundef 0) #8
  br label %if.then18

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %kcrtc, i32 0, i32 8
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %9) #11
  br label %if.then18

if.then18:                                        ; preds = %do.end, %if.then8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.3) #8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end.if.end19_crit_edge
  %and21 = and i64 %5, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %if.end19.if.end58_crit_edge, label %if.then23

if.end19.if.end58_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then23:                                        ; preds = %if.end19
  %10 = ptrtoint ptr %kcrtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %kcrtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 28
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #8
  %disable_done = getelementptr inbounds %struct.komeda_crtc, ptr %kcrtc, i32 0, i32 5
  %12 = ptrtoint ptr %disable_done to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %disable_done, align 8
  %tobool34.not = icmp eq ptr %13, null
  br i1 %tobool34.not, label %if.else38, label %if.then35

if.then35:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @complete_all(ptr noundef nonnull %13) #8
  %14 = ptrtoint ptr %disable_done to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %disable_done, align 8
  br label %if.end55

if.else38:                                        ; preds = %if.then23
  %state = getelementptr inbounds %struct.drm_crtc, ptr %kcrtc, i32 0, i32 22
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state, align 4
  %event39 = getelementptr inbounds %struct.drm_crtc_state, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %event39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %event39, align 4
  %tobool40.not = icmp eq ptr %18, null
  br i1 %tobool40.not, label %do.end49, label %if.then41

if.then41:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %event39 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %event39, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %kcrtc, ptr noundef nonnull %18) #8
  br label %if.end55

do.end49:                                         ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  %index.i79 = getelementptr inbounds %struct.drm_crtc, ptr %kcrtc, i32 0, i32 8
  %20 = ptrtoint ptr %index.i79 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index.i79, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %21) #11
  br label %if.end55

if.end55:                                         ; preds = %do.end49, %if.then41, %if.then35
  %22 = ptrtoint ptr %kcrtc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %kcrtc, align 8
  %event_lock57 = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock57, i32 noundef %call29) #8
  br label %if.end58

if.end58:                                         ; preds = %if.end55, %if.end19.if.end58_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_writeback_signal_completion(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @komeda_crtc_get_aclk(ptr nocapture noundef readonly %kcrtc_st) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %kcrtc_st to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kcrtc_st, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %crtc_clock = getelementptr inbounds %struct.drm_crtc_state, ptr %kcrtc_st, i32 0, i32 7, i32 12
  %6 = ptrtoint ptr %crtc_clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %crtc_clock, align 4
  %mul = mul i32 %7, 1000
  %master.i = getelementptr inbounds %struct.komeda_crtc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master.i, align 8
  %dual_link.i = getelementptr inbounds %struct.komeda_pipeline, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %dual_link.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dual_link.i, align 4, !range !57
  %12 = zext i8 %11 to i32
  %retval.0.i = shl i32 %mul, %12
  %aclk = getelementptr inbounds %struct.komeda_dev, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %aclk, align 4
  %call3 = tail call i32 @clk_round_rate(ptr noundef %14, i32 noundef %retval.0.i) #8
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @komeda_kms_setup_crtcs(ptr nocapture noundef %kms, ptr nocapture noundef readonly %mdev) local_unnamed_addr #2 align 64 {
entry:
  %str = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %str) #8
  %n_crtcs = getelementptr inbounds %struct.komeda_kms_dev, ptr %kms, i32 0, i32 1
  %0 = call ptr @memset(ptr %str, i32 255, i32 16)
  %1 = ptrtoint ptr %n_crtcs to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %n_crtcs, align 4
  %n_pipelines = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 8
  %2 = ptrtoint ptr %n_pipelines to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_pipelines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp27 = icmp sgt i32 %3, 0
  br i1 %cmp27, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %do.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.028 = phi i32 [ %inc14, %do.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %n_crtcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n_crtcs, align 4
  %arrayidx2 = getelementptr %struct.komeda_dev, ptr %mdev, i32 0, i32 9, i32 %i.028
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %master3 = getelementptr %struct.komeda_kms_dev, ptr %kms, i32 0, i32 2, i32 %5, i32 1
  %8 = ptrtoint ptr %master3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %master3, align 8
  %call = call ptr @komeda_pipeline_get_slave(ptr noundef %7) #8
  %slave = getelementptr %struct.komeda_kms_dev, ptr %kms, i32 0, i32 2, i32 %5, i32 2
  %9 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %slave, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %id = getelementptr inbounds %struct.komeda_pipeline, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str, ptr noundef nonnull @.str.7, i32 noundef %11)
  br label %do.end

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = call ptr @memcpy(ptr %str, ptr @.str.8, i32 5)
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %13 = ptrtoint ptr %n_crtcs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_crtcs, align 4
  %id10 = getelementptr inbounds %struct.komeda_pipeline, ptr %7, i32 0, i32 3
  %15 = ptrtoint ptr %id10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id10, align 4
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %14, i32 noundef %16, ptr noundef nonnull %str) #11
  %17 = ptrtoint ptr %n_crtcs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_crtcs, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %n_crtcs, align 4
  %inc14 = add nuw nsw i32 %i.028, 1
  %19 = ptrtoint ptr %n_pipelines to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_pipelines, align 4
  %cmp = icmp slt i32 %inc14, %20
  br i1 %cmp, label %do.end.for.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %do.end.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %str) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @komeda_pipeline_get_slave(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @komeda_kms_add_crtcs(ptr noundef %kms, ptr nocapture noundef readnone %mdev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %n_crtcs = getelementptr inbounds %struct.komeda_kms_dev, ptr %kms, i32 0, i32 1
  %0 = ptrtoint ptr %n_crtcs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_crtcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp8 = icmp sgt i32 %1, 0
  br i1 %cmp8, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %plane_list.i.i = getelementptr inbounds %struct.drm_device, ptr %kms, i32 0, i32 30, i32 18
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.09 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.komeda_kms_dev, ptr %kms, i32 0, i32 2, i32 %i.09
  %2 = ptrtoint ptr %plane_list.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn25.i.i = load ptr, ptr %plane_list.i.i, align 4
  %cmp.not26.i.i = icmp eq ptr %.pn25.i.i, %plane_list.i.i
  br i1 %cmp.not26.i.i, label %for.body.get_crtc_primary.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.body.get_crtc_primary.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_crtc_primary.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body
  %master.i.i = getelementptr %struct.komeda_kms_dev, ptr %kms, i32 0, i32 2, i32 %i.09, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %.pn27.i.i = phi ptr [ %.pn25.i.i, %for.body.lr.ph.i.i ], [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %type.i.i = getelementptr i8, ptr %.pn27.i.i, i32 476
  %3 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp4.not.i.i = icmp eq i32 %4, 1
  br i1 %cmp4.not.i.i, label %if.end.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %layer.i.i = getelementptr i8, ptr %.pn27.i.i, i32 524
  %5 = ptrtoint ptr %layer.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %layer.i.i, align 8
  %pipeline.i.i = getelementptr inbounds %struct.komeda_component, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pipeline.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pipeline.i.i, align 4
  %9 = ptrtoint ptr %master.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %master.i.i, align 8
  %cmp9.i.i = icmp eq ptr %8, %10
  br i1 %cmp9.i.i, label %cleanup.split.loop.exit23.i.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %11 = ptrtoint ptr %.pn27.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i.i = load ptr, ptr %.pn27.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %plane_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.get_crtc_primary.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc.i.i.get_crtc_primary.exit.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %get_crtc_primary.exit.i

cleanup.split.loop.exit23.i.i:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %plane.0.le.i.i = getelementptr i8, ptr %.pn27.i.i, i32 -4
  br label %get_crtc_primary.exit.i

get_crtc_primary.exit.i:                          ; preds = %cleanup.split.loop.exit23.i.i, %for.inc.i.i.get_crtc_primary.exit.i_crit_edge, %for.body.get_crtc_primary.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %plane.0.le.i.i, %cleanup.split.loop.exit23.i.i ], [ null, %for.body.get_crtc_primary.exit.i_crit_edge ], [ null, %for.inc.i.i.get_crtc_primary.exit.i_crit_edge ]
  %call2.i = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %kms, ptr noundef %arrayidx, ptr noundef %retval.0.i.i, ptr noundef null, ptr noundef nonnull @komeda_crtc_funcs, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %for.inc, label %get_crtc_primary.exit.i.cleanup_crit_edge

get_crtc_primary.exit.i.cleanup_crit_edge:        ; preds = %get_crtc_primary.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %get_crtc_primary.exit.i
  %helper_private.i.i = getelementptr inbounds %struct.drm_crtc, ptr %arrayidx, i32 0, i32 19
  %12 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @komeda_crtc_helper_funcs, ptr %helper_private.i.i, align 8
  %master.i = getelementptr %struct.komeda_kms_dev, ptr %kms, i32 0, i32 2, i32 %i.09, i32 1
  %13 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master.i, align 8
  %of_output_port.i = getelementptr inbounds %struct.komeda_pipeline, ptr %14, i32 0, i32 18
  %15 = ptrtoint ptr %of_output_port.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_output_port.i, align 4
  %port.i = getelementptr inbounds %struct.drm_crtc, ptr %arrayidx, i32 0, i32 1
  %17 = ptrtoint ptr %port.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %port.i, align 4
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef %arrayidx, i32 noundef 0, i1 noundef zeroext true, i32 noundef 4096) #8
  %inc = add nuw nsw i32 %i.09, 1
  %18 = ptrtoint ptr %n_crtcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_crtcs, align 4
  %cmp = icmp slt i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %get_crtc_primary.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call2.i, %get_crtc_primary.exit.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_crtc_reset(ptr noundef %crtc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state1, align 4
  tail call void @kfree(ptr noundef %3) #8
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %state1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 312) #12
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.if.end7_crit_edge, label %if.then6

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %crtc, ptr noundef nonnull %call7.i.i) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @komeda_crtc_atomic_duplicate_state(ptr noundef %crtc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 312) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %crtc, ptr noundef nonnull %call7.i.i) #8
  %active_pipes = getelementptr inbounds %struct.komeda_crtc_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %active_pipes to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %active_pipes, align 8
  %affected_pipes = getelementptr inbounds %struct.komeda_crtc_state, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %affected_pipes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %affected_pipes, align 4
  %clock_ratio = getelementptr inbounds %struct.komeda_crtc_state, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %clock_ratio to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %clock_ratio, align 8
  %clock_ratio1 = getelementptr inbounds %struct.komeda_crtc_state, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %clock_ratio1 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %clock_ratio1, align 8
  %max_slave_zorder = getelementptr inbounds %struct.komeda_crtc_state, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %max_slave_zorder to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %max_slave_zorder, align 8
  %max_slave_zorder2 = getelementptr inbounds %struct.komeda_crtc_state, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %max_slave_zorder2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %max_slave_zorder2, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_crtc_atomic_destroy_state(ptr nocapture noundef readnone %crtc, ptr noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %state) #8
  tail call void @kfree(ptr noundef %state) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @komeda_crtc_vblank_enable(ptr nocapture noundef readonly %crtc) #2 align 64 {
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
  %funcs = getelementptr inbounds %struct.komeda_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %on_off_vblank = getelementptr inbounds %struct.komeda_dev_funcs, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %on_off_vblank to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %on_off_vblank, align 4
  %master = getelementptr inbounds %struct.komeda_crtc, ptr %crtc, i32 0, i32 1
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 8
  %id = getelementptr inbounds %struct.komeda_pipeline, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  tail call void %7(ptr noundef %3, i32 noundef %11, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_crtc_vblank_disable(ptr nocapture noundef readonly %crtc) #2 align 64 {
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
  %funcs = getelementptr inbounds %struct.komeda_dev, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %on_off_vblank = getelementptr inbounds %struct.komeda_dev_funcs, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %on_off_vblank to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %on_off_vblank, align 4
  %master = getelementptr inbounds %struct.komeda_crtc, ptr %crtc, i32 0, i32 1
  %8 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %master, align 8
  %id = getelementptr inbounds %struct.komeda_pipeline, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  tail call void %7(ptr noundef %3, i32 noundef %11, i1 noundef zeroext false) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @komeda_crtc_mode_valid(ptr nocapture noundef readonly %crtc, ptr noundef %m) #2 align 64 {
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
  %master1 = getelementptr inbounds %struct.komeda_crtc, ptr %crtc, i32 0, i32 1
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %m, i32 0, i32 11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master1, align 8
  %8 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %m, align 4
  %mul = mul i32 %9, 1000
  %dual_link = getelementptr inbounds %struct.komeda_pipeline, ptr %7, i32 0, i32 20
  %10 = ptrtoint ptr %dual_link to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dual_link, align 4, !range !57
  %12 = zext i8 %11 to i32
  %spec.select = lshr exact i32 %mul, %12
  %pxlclk = getelementptr inbounds %struct.komeda_pipeline, ptr %7, i32 0, i32 2
  %13 = ptrtoint ptr %pxlclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pxlclk, align 4
  %call = tail call i32 @clk_round_rate(ptr noundef %14, i32 noundef %spec.select) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %call)
  %cmp.not = icmp eq i32 %spec.select, %call
  br i1 %cmp.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %spec.select) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %15 = ptrtoint ptr %master1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %master1, align 8
  %dual_link.i = getelementptr inbounds %struct.komeda_pipeline, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %dual_link.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %dual_link.i, align 4, !range !57
  %19 = zext i8 %18 to i32
  %retval.0.i = shl i32 %spec.select, %19
  %aclk = getelementptr inbounds %struct.komeda_dev, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %aclk, align 4
  %call11 = tail call i32 @clk_round_rate(ptr noundef %21, i32 noundef %retval.0.i) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call11, i32 %retval.0.i)
  %cmp12 = icmp ult i32 %call11, %retval.0.i
  br i1 %cmp12, label %if.then13, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.drm_display_mode, ptr %m, i32 0, i32 31
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.12, ptr noundef %name, i32 noundef %spec.select) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end6.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 14, %if.then5 ], [ 15, %if.then13 ], [ 7, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @komeda_crtc_mode_fixup(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readnone %m, ptr noundef %adjusted_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_mode_set_crtcinfo(ptr noundef %adjusted_mode, i32 noundef 0) #8
  %master = getelementptr inbounds %struct.komeda_crtc, ptr %crtc, i32 0, i32 1
  %0 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master, align 8
  %dual_link = getelementptr inbounds %struct.komeda_pipeline, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %dual_link to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dual_link, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %crtc_clock = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 12
  %4 = ptrtoint ptr %crtc_clock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %crtc_clock, align 4
  %div = sdiv i32 %5, 2
  store i32 %div, ptr %crtc_clock, align 4
  %crtc_hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 13
  %6 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %crtc_hdisplay, align 4
  %8 = lshr i16 %7, 1
  store i16 %8, ptr %crtc_hdisplay, align 4
  %crtc_hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 16
  %9 = ptrtoint ptr %crtc_hsync_start to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %crtc_hsync_start, align 2
  %11 = lshr i16 %10, 1
  store i16 %11, ptr %crtc_hsync_start, align 2
  %crtc_hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 17
  %12 = ptrtoint ptr %crtc_hsync_end to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %crtc_hsync_end, align 4
  %14 = lshr i16 %13, 1
  store i16 %14, ptr %crtc_hsync_end, align 4
  %crtc_htotal = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 18
  %15 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %crtc_htotal, align 2
  %17 = lshr i16 %16, 1
  store i16 %17, ptr %crtc_htotal, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %crtc_clock12 = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 12
  %18 = ptrtoint ptr %crtc_clock12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %crtc_clock12, align 4
  %mul = mul i32 %19, 1000
  %20 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %master, align 8
  %pxlclk = getelementptr inbounds %struct.komeda_pipeline, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %pxlclk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pxlclk, align 4
  %call = tail call i32 @clk_round_rate(ptr noundef %23, i32 noundef %mul) #8
  %div14 = sdiv i32 %call, 1000
  %24 = ptrtoint ptr %crtc_clock12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div14, ptr %crtc_clock12, align 4
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @komeda_crtc_atomic_check(ptr noundef %crtc, ptr nocapture noundef readonly %state) #2 align 64 {
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
  %active.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %active.i, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then.komeda_crtc_update_clock_ratio.exit_crit_edge, label %if.end.i

if.then.komeda_crtc_update_clock_ratio.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %komeda_crtc_update_clock_ratio.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %crtc_clock.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 12
  %10 = ptrtoint ptr %crtc_clock.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_clock.i, align 4
  %conv.i = sext i32 %11 to i64
  %mul.i = mul nsw i64 %conv.i, 1000
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_private.i.i, align 4
  %mul.i.i = mul i32 %11, 1000
  %master.i.i.i = getelementptr inbounds %struct.komeda_crtc, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master.i.i.i, align 8
  %dual_link.i.i.i = getelementptr inbounds %struct.komeda_pipeline, ptr %19, i32 0, i32 20
  %20 = ptrtoint ptr %dual_link.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %dual_link.i.i.i, align 4, !range !57
  %22 = zext i8 %21 to i32
  %retval.0.i.i.i = shl i32 %mul.i.i, %22
  %aclk.i.i = getelementptr inbounds %struct.komeda_dev, ptr %17, i32 0, i32 4
  %23 = ptrtoint ptr %aclk.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %aclk.i.i, align 4
  %call3.i.i = tail call i32 @clk_round_rate(ptr noundef %24, i32 noundef %retval.0.i.i.i) #8
  %conv2.i = zext i32 %call3.i.i to i64
  %shl.i = shl nuw i64 %conv2.i, 32
  %call3.i = tail call i64 @div64_u64(i64 noundef %shl.i, i64 noundef %mul.i) #8
  br label %komeda_crtc_update_clock_ratio.exit

komeda_crtc_update_clock_ratio.exit:              ; preds = %if.end.i, %if.then.komeda_crtc_update_clock_ratio.exit_crit_edge
  %call3.sink.i = phi i64 [ %call3.i, %if.end.i ], [ 0, %if.then.komeda_crtc_update_clock_ratio.exit_crit_edge ]
  %25 = getelementptr inbounds %struct.komeda_crtc_state, ptr %5, i32 0, i32 3
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %call3.sink.i, ptr %25, align 8
  br label %if.end

if.end:                                           ; preds = %komeda_crtc_update_clock_ratio.exit, %entry.if.end_crit_edge
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 2
  %27 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %active, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then5

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @komeda_build_display_data_flow(ptr noundef %crtc, ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then5.if.end10_crit_edge, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %if.then5.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %slave = getelementptr inbounds %struct.komeda_crtc, ptr %crtc, i32 0, i32 2
  %29 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %slave, align 4
  %call11 = tail call i32 @komeda_release_unclaimed_resources(ptr noundef %30, ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %master = getelementptr inbounds %struct.komeda_crtc, ptr %crtc, i32 0, i32 1
  %31 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %master, align 8
  %call15 = tail call i32 @komeda_release_unclaimed_resources(ptr noundef %32, ptr noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end10.cleanup_crit_edge, %if.then5.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.then5.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %call15, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_crtc_atomic_flush(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state) #2 align 64 {
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
  br i1 %.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 2
  %8 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %old_state.i, align 8
  tail call fastcc void @komeda_crtc_do_flush(ptr noundef %crtc, ptr noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readonly %state) #2 align 64 {
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
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 8
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 8
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #8
  %10 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_private.i, align 4
  %master1.i = getelementptr inbounds %struct.komeda_crtc, ptr %crtc, i32 0, i32 1
  %14 = ptrtoint ptr %master1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %master1.i, align 8
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state.i, align 4
  %lock.i = getelementptr inbounds %struct.komeda_dev, ptr %13, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %dpmode.i = getelementptr inbounds %struct.komeda_dev, ptr %13, i32 0, i32 7
  %18 = ptrtoint ptr %dpmode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dpmode.i, align 4
  %id.i = getelementptr inbounds %struct.komeda_pipeline, ptr %15, i32 0, i32 3
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i, align 4
  %shl.i = shl nuw i32 1, %21
  %or.i = or i32 %shl.i, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %or.i, i32 %19)
  %cmp.i = icmp eq i32 %or.i, %19
  br i1 %cmp.i, label %do.end.i, label %if.end26.i, !prof !58

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 123, i32 noundef 9, ptr noundef null) #8
  br label %komeda_crtc_prepare.exit

if.end26.i:                                       ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.komeda_dev, ptr %13, i32 0, i32 10
  %22 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %funcs.i, align 4
  %change_opmode.i = getelementptr inbounds %struct.komeda_dev_funcs, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %change_opmode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %change_opmode.i, align 4
  %call.i31 = tail call i32 %25(ptr noundef %13, i32 noundef %or.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool27.not.i = icmp eq i32 %call.i31, 0
  br i1 %tobool27.not.i, label %if.end30.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %dpmode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dpmode.i, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %27, i32 noundef %or.i) #8
  br label %komeda_crtc_prepare.exit

if.end30.i:                                       ; preds = %if.end26.i
  %28 = ptrtoint ptr %dpmode.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i, ptr %dpmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %or.i)
  %cmp32.not.i = icmp eq i32 %or.i, 3
  br i1 %cmp32.not.i, label %if.end30.i.if.end44.i_crit_edge, label %if.then33.i

if.end30.i.if.end44.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.then33.i:                                      ; preds = %if.end30.i
  %aclk.i = getelementptr inbounds %struct.komeda_dev, ptr %13, i32 0, i32 4
  %29 = ptrtoint ptr %aclk.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %aclk.i, align 4
  %31 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %17, align 8
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_private.i.i, align 4
  %crtc_clock.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 7, i32 12
  %37 = ptrtoint ptr %crtc_clock.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %crtc_clock.i.i, align 4
  %mul.i.i = mul i32 %38, 1000
  %master.i.i.i = getelementptr inbounds %struct.komeda_crtc, ptr %32, i32 0, i32 1
  %39 = ptrtoint ptr %master.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %master.i.i.i, align 8
  %dual_link.i.i.i = getelementptr inbounds %struct.komeda_pipeline, ptr %40, i32 0, i32 20
  %41 = ptrtoint ptr %dual_link.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %dual_link.i.i.i, align 4, !range !57
  %43 = zext i8 %42 to i32
  %retval.0.i.i.i = shl i32 %mul.i.i, %43
  %aclk.i.i = getelementptr inbounds %struct.komeda_dev, ptr %36, i32 0, i32 4
  %44 = ptrtoint ptr %aclk.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %aclk.i.i, align 4
  %call3.i.i = tail call i32 @clk_round_rate(ptr noundef %45, i32 noundef %retval.0.i.i.i) #8
  %call35.i = tail call i32 @clk_set_rate(ptr noundef %30, i32 noundef %call3.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.then33.i.if.end38.i_crit_edge, label %if.then37.i

if.then33.i.if.end38.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then37.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then37.i, %if.then33.i.if.end38.i_crit_edge
  %46 = ptrtoint ptr %aclk.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %aclk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end38.i.if.then42.i_crit_edge

if.end38.i.if.then42.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then42.i

if.end.i.i:                                       ; preds = %if.end38.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %47) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end44.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end44.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %47) #8
  br label %if.then42.i

if.then42.i:                                      ; preds = %if.then3.i.i, %if.end38.i.if.then42.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #8
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then42.i, %if.end.i.i.if.end44.i_crit_edge, %if.end30.i.if.end44.i_crit_edge
  %pxlclk.i = getelementptr inbounds %struct.komeda_pipeline, ptr %15, i32 0, i32 2
  %48 = ptrtoint ptr %pxlclk.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pxlclk.i, align 4
  %crtc_clock.i = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 7, i32 12
  %50 = ptrtoint ptr %crtc_clock.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %crtc_clock.i, align 4
  %mul.i = mul i32 %51, 1000
  %call45.i = tail call i32 @clk_set_rate(ptr noundef %49, i32 noundef %mul.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.end44.i.if.end49.i_crit_edge, label %if.then47.i

if.end44.i.if.end49.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49.i

if.then47.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id.i, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %53) #8
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then47.i, %if.end44.i.if.end49.i_crit_edge
  %54 = ptrtoint ptr %pxlclk.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pxlclk.i, align 4
  %call.i1.i = tail call i32 @clk_prepare(ptr noundef %55) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i2.i, label %if.end.i5.i, label %if.end49.i.if.then53.i_crit_edge

if.end49.i.if.then53.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then53.i

if.end.i5.i:                                      ; preds = %if.end49.i
  %call1.i3.i = tail call i32 @clk_enable(ptr noundef %55) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool2.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool2.not.i4.i, label %if.end.i5.i.komeda_crtc_prepare.exit_crit_edge, label %if.then3.i6.i

if.end.i5.i.komeda_crtc_prepare.exit_crit_edge:   ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %komeda_crtc_prepare.exit

if.then3.i6.i:                                    ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %55) #8
  br label %if.then53.i

if.then53.i:                                      ; preds = %if.then3.i6.i, %if.end49.i.if.then53.i_crit_edge
  %56 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %id.i, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %57) #8
  br label %komeda_crtc_prepare.exit

komeda_crtc_prepare.exit:                         ; preds = %if.then53.i, %if.end.i5.i.komeda_crtc_prepare.exit_crit_edge, %if.then28.i, %do.end.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #8
  %call4 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %komeda_crtc_prepare.exit.if.end_crit_edge, label %do.end, !prof !59

komeda_crtc_prepare.exit.if.end_crit_edge:        ; preds = %komeda_crtc_prepare.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %komeda_crtc_prepare.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 285, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %komeda_crtc_prepare.exit.if.end_crit_edge
  tail call fastcc void @komeda_crtc_do_flush(ptr noundef %crtc, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @komeda_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readonly %state) #2 align 64 {
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
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 8
  %master4 = getelementptr inbounds %struct.komeda_crtc, ptr %crtc, i32 0, i32 1
  %6 = ptrtoint ptr %master4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master4, align 8
  %slave5 = getelementptr inbounds %struct.komeda_crtc, ptr %crtc, i32 0, i32 2
  %8 = ptrtoint ptr %slave5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slave5, align 4
  %active_pipes = getelementptr inbounds %struct.komeda_crtc_state, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %active_pipes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %active_pipes, align 8
  %affected_pipes = getelementptr inbounds %struct.komeda_crtc_state, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %affected_pipes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %affected_pipes, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef %3, i32 noundef %11, i32 noundef %13) #8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.komeda_pipeline, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %shl = shl nuw i32 1, %15
  %16 = ptrtoint ptr %active_pipes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %active_pipes, align 8
  %and = and i32 %shl, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %state9 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 20
  %18 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state9, align 4
  %call10 = tail call zeroext i1 @komeda_pipeline_disable(ptr noundef nonnull %9, ptr noundef %19) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %id11 = getelementptr inbounds %struct.komeda_pipeline, ptr %7, i32 0, i32 3
  %20 = ptrtoint ptr %id11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id11, align 4
  %shl12 = shl nuw i32 1, %21
  %22 = ptrtoint ptr %active_pipes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %active_pipes, align 8
  %and14 = and i32 %shl12, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.lor.lhs.false_crit_edge, label %if.then16

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.then16:                                        ; preds = %if.end
  %state17 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 20
  %24 = ptrtoint ptr %state17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state17, align 4
  %call18 = tail call zeroext i1 @komeda_pipeline_disable(ptr noundef %7, ptr noundef %25) #8
  br i1 %call18, label %if.then25.critedge, label %if.then16.lor.lhs.false_crit_edge

if.then16.lor.lhs.false_crit_edge:                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then16.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %state21 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %26 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %state21, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %active, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool22.not = icmp eq i8 %29, 0
  br i1 %tobool22.not, label %lor.lhs.false.if.end39.sink.split_crit_edge, label %lor.lhs.false.if.end39_crit_edge

lor.lhs.false.if.end39_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

lor.lhs.false.if.end39.sink.split_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.sink.split

if.then25.critedge:                               ; preds = %if.then16
  tail call fastcc void @komeda_crtc_flush_and_wait_for_flip_done(ptr noundef %crtc, ptr noundef null)
  %30 = ptrtoint ptr %master4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %master4, align 8
  %32 = ptrtoint ptr %state17 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %state17, align 4
  %call28 = tail call zeroext i1 @komeda_pipeline_disable(ptr noundef %31, ptr noundef %33) #8
  %state29 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %34 = ptrtoint ptr %state29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %state29, align 4
  %active30 = getelementptr inbounds %struct.drm_crtc_state, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %active30 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %active30, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool31.not = icmp eq i8 %37, 0
  br i1 %tobool31.not, label %if.then25.critedge.if.end39.sink.split_crit_edge, label %if.then25.critedge.if.end39_crit_edge

if.then25.critedge.if.end39_crit_edge:            ; preds = %if.then25.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then25.critedge.if.end39.sink.split_crit_edge: ; preds = %if.then25.critedge
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39.sink.split

if.end39.sink.split:                              ; preds = %if.then25.critedge.if.end39.sink.split_crit_edge, %lor.lhs.false.if.end39.sink.split_crit_edge
  %.sink = phi ptr [ %27, %lor.lhs.false.if.end39.sink.split_crit_edge ], [ %35, %if.then25.critedge.if.end39.sink.split_crit_edge ]
  %commit35 = getelementptr inbounds %struct.drm_crtc_state, ptr %.sink, i32 0, i32 19
  %38 = ptrtoint ptr %commit35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %commit35, align 4
  %flip_done36 = getelementptr inbounds %struct.drm_crtc_commit, ptr %39, i32 0, i32 2
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %if.then25.critedge.if.end39_crit_edge, %lor.lhs.false.if.end39_crit_edge
  %flip_done.sink = phi ptr [ null, %if.then25.critedge.if.end39_crit_edge ], [ null, %lor.lhs.false.if.end39_crit_edge ], [ %flip_done36, %if.end39.sink.split ]
  tail call fastcc void @komeda_crtc_flush_and_wait_for_flip_done(ptr noundef %crtc, ptr noundef %flip_done.sink)
  tail call void @drm_crtc_vblank_put(ptr noundef %crtc) #8
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #8
  %40 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_private.i, align 4
  %44 = ptrtoint ptr %master4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %master4, align 8
  %lock.i = getelementptr inbounds %struct.komeda_dev, ptr %43, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %dpmode.i = getelementptr inbounds %struct.komeda_dev, ptr %43, i32 0, i32 7
  %46 = ptrtoint ptr %dpmode.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dpmode.i, align 4
  %id.i = getelementptr inbounds %struct.komeda_pipeline, ptr %45, i32 0, i32 3
  %48 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id.i, align 4
  %shl.i = shl nuw i32 1, %49
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %47, %neg.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %47)
  %cmp.i = icmp eq i32 %and.i, %47
  br i1 %cmp.i, label %do.end.i, label %if.end23.i, !prof !58

do.end.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 175, i32 noundef 9, ptr noundef null) #8
  br label %komeda_crtc_unprepare.exit

if.end23.i:                                       ; preds = %if.end39
  %funcs.i = getelementptr inbounds %struct.komeda_dev, ptr %43, i32 0, i32 10
  %50 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %funcs.i, align 4
  %change_opmode.i = getelementptr inbounds %struct.komeda_dev_funcs, ptr %51, i32 0, i32 10
  %52 = ptrtoint ptr %change_opmode.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %change_opmode.i, align 4
  %call.i = tail call i32 %53(ptr noundef %43, i32 noundef %and.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool24.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool24.not.i, label %if.end27.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %dpmode.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dpmode.i, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %55, i32 noundef %and.i) #8
  br label %komeda_crtc_unprepare.exit

if.end27.i:                                       ; preds = %if.end23.i
  %56 = ptrtoint ptr %dpmode.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and.i, ptr %dpmode.i, align 4
  %pxlclk.i = getelementptr inbounds %struct.komeda_pipeline, ptr %45, i32 0, i32 2
  %57 = ptrtoint ptr %pxlclk.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pxlclk.i, align 4
  tail call void @clk_disable(ptr noundef %58) #8
  tail call void @clk_unprepare(ptr noundef %58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp29.i = icmp eq i32 %and.i, 0
  br i1 %cmp29.i, label %if.then30.i, label %if.end27.i.komeda_crtc_unprepare.exit_crit_edge

if.end27.i.komeda_crtc_unprepare.exit_crit_edge:  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %komeda_crtc_unprepare.exit

if.then30.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  %aclk.i = getelementptr inbounds %struct.komeda_dev, ptr %43, i32 0, i32 4
  %59 = ptrtoint ptr %aclk.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %aclk.i, align 4
  tail call void @clk_disable(ptr noundef %60) #8
  tail call void @clk_unprepare(ptr noundef %60) #8
  br label %komeda_crtc_unprepare.exit

komeda_crtc_unprepare.exit:                       ; preds = %if.then30.i, %if.end27.i.komeda_crtc_unprepare.exit_crit_edge, %if.then25.i, %do.end.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %61 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %crtc, align 8
  %dev41 = getelementptr inbounds %struct.drm_device, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev41, align 4
  %call.i69 = tail call i32 @__pm_runtime_idle(ptr noundef %64, i32 noundef 5) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @komeda_build_display_data_flow(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @komeda_release_unclaimed_resources(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @komeda_crtc_do_flush(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %old) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %master4 = getelementptr inbounds %struct.komeda_crtc, ptr %crtc, i32 0, i32 1
  %6 = ptrtoint ptr %master4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %master4, align 8
  %slave5 = getelementptr inbounds %struct.komeda_crtc, ptr %crtc, i32 0, i32 2
  %8 = ptrtoint ptr %slave5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slave5, align 4
  %wb_conn6 = getelementptr inbounds %struct.komeda_crtc, ptr %crtc, i32 0, i32 4
  %10 = ptrtoint ptr %wb_conn6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wb_conn6, align 4
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i, align 4
  %active_pipes = getelementptr inbounds %struct.komeda_crtc_state, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %active_pipes to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %active_pipes, align 8
  %affected_pipes = getelementptr inbounds %struct.komeda_crtc_state, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %affected_pipes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %affected_pipes, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %13, i32 noundef %15, i32 noundef %17) #8
  %id = getelementptr inbounds %struct.komeda_pipeline, ptr %7, i32 0, i32 3
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %shl = shl nuw i32 1, %19
  %20 = ptrtoint ptr %affected_pipes to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %affected_pipes, align 4
  %and = and i32 %shl, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state8 = getelementptr inbounds %struct.drm_crtc_state, ptr %old, i32 0, i32 20
  %22 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state8, align 4
  tail call void @komeda_pipeline_update(ptr noundef %7, ptr noundef %23) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %if.end.if.end17_crit_edge, label %land.lhs.true

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %id10 = getelementptr inbounds %struct.komeda_pipeline, ptr %9, i32 0, i32 3
  %24 = ptrtoint ptr %id10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id10, align 4
  %shl11 = shl nuw i32 1, %25
  %26 = ptrtoint ptr %affected_pipes to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %affected_pipes, align 4
  %and13 = and i32 %shl11, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end17_crit_edge, label %if.then15

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %state16 = getelementptr inbounds %struct.drm_crtc_state, ptr %old, i32 0, i32 20
  %28 = ptrtoint ptr %state16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state16, align 4
  tail call void @komeda_pipeline_update(ptr noundef nonnull %9, ptr noundef %29) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %land.lhs.true.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %if.end17.if.end27_crit_edge, label %cond.end

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

cond.end:                                         ; preds = %if.end17
  %state21 = getelementptr inbounds %struct.drm_connector, ptr %11, i32 0, i32 52
  %30 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state21, align 8
  %tobool22.not = icmp eq ptr %31, null
  br i1 %tobool22.not, label %cond.end.if.end27_crit_edge, label %land.lhs.true23

cond.end.if.end27_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true23:                                  ; preds = %cond.end
  %writeback_job = getelementptr inbounds %struct.drm_connector_state, ptr %31, i32 0, i32 14
  %32 = ptrtoint ptr %writeback_job to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %writeback_job, align 4
  %tobool24.not = icmp eq ptr %33, null
  br i1 %tobool24.not, label %land.lhs.true23.if.end27_crit_edge, label %if.then25

land.lhs.true23.if.end27_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_writeback_queue_job(ptr noundef nonnull %11, ptr noundef nonnull %31) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %land.lhs.true23.if.end27_crit_edge, %cond.end.if.end27_crit_edge, %if.end17.if.end27_crit_edge
  %funcs = getelementptr inbounds %struct.komeda_dev, ptr %5, i32 0, i32 10
  %34 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %funcs, align 4
  %flush = getelementptr inbounds %struct.komeda_dev_funcs, ptr %35, i32 0, i32 11
  %36 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %flush, align 4
  %38 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id, align 4
  %40 = ptrtoint ptr %active_pipes to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %active_pipes, align 8
  tail call void %37(ptr noundef %5, i32 noundef %39, i32 noundef %41) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @komeda_pipeline_update(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_writeback_queue_job(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @komeda_pipeline_disable(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @komeda_crtc_flush_and_wait_for_flip_done(ptr nocapture noundef %kcrtc, ptr noundef %input_flip_done) unnamed_addr #2 align 64 {
entry:
  %temp = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %kcrtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kcrtc, align 8
  %master = getelementptr inbounds %struct.komeda_crtc, ptr %kcrtc, i32 0, i32 1
  %2 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %master, align 8
  %mdev1 = getelementptr inbounds %struct.komeda_pipeline, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mdev1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %temp) #8
  %6 = call ptr @memset(ptr %temp, i32 255, i32 56)
  %tobool.not = icmp eq ptr %input_flip_done, null
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %temp, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %temp, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_completion.__key) #8
  %disable_done = getelementptr inbounds %struct.komeda_crtc, ptr %kcrtc, i32 0, i32 5
  %8 = ptrtoint ptr %disable_done to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %temp, ptr %disable_done, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %flip_done.0 = phi ptr [ %temp, %if.else ], [ %input_flip_done, %entry.if.end_crit_edge ]
  %funcs = getelementptr inbounds %struct.komeda_dev, ptr %5, i32 0, i32 10
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %funcs, align 4
  %flush = getelementptr inbounds %struct.komeda_dev_funcs, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %flush, align 4
  %13 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %master, align 8
  %id = getelementptr inbounds %struct.komeda_pipeline, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  call void %12(ptr noundef %5, i32 noundef %16, i32 noundef 0) #8
  %call = call i32 @wait_for_completion_timeout(ptr noundef nonnull %flip_done.0, i32 noundef 100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then3:                                         ; preds = %if.end
  %17 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master, align 8
  %id5 = getelementptr inbounds %struct.komeda_pipeline, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id5, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %20) #8
  br i1 %tobool.not, label %if.then7, label %if.then3.if.end17_crit_edge

if.then3.if.end17_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  %call11 = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #8
  %disable_done14 = getelementptr inbounds %struct.komeda_crtc, ptr %kcrtc, i32 0, i32 5
  %21 = ptrtoint ptr %disable_done14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %disable_done14, align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock, i32 noundef %call11) #8
  br label %if.end17

if.end17:                                         ; preds = %if.then7, %if.then3.if.end17_crit_edge, %if.end.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %temp) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !16, !18, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 214, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @komeda_crtc_handle_event._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @komeda_crtc_handle_event._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 219, i32 3}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 238, i32 4}
!10 = !{ptr @komeda_crtc_handle_event._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @komeda_crtc_handle_event._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 581, i32 17}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 583, i32 17}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 585, i32 3}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @komeda_kms_setup_crtcs._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @komeda_kms_setup_crtcs._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @komeda_crtc_funcs, !22, !"komeda_crtc_funcs", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 552, i32 36}
!23 = !{ptr @komeda_crtc_helper_funcs, !24, !"komeda_crtc_helper_funcs", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 485, i32 43}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 444, i32 3}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 451, i32 3}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 257, i32 2}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 130, i32 3}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 144, i32 4}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 147, i32 4}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 152, i32 3}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 155, i32 3}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 337, i32 2}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_crtc.c", i32 313, i32 3}
!45 = !{ptr @init_completion.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../include/linux/completion.h", i32 87, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i8 0, i8 2}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{!"branch_weights", i32 2000, i32 1}
