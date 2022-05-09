; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/gud/gud_connector.c_pt.bc'
source_filename = "../drivers/gpu/drm/gud/gud_connector.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.gud_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.work_struct, ptr, i32, %struct.drm_tv_connector_state, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.gud_property_req = type <{ i16, i64 }>
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.84 = type { i32, ptr }
%struct.gud_device = type { %struct.drm_device, %struct.drm_simple_display_pipe, ptr, %struct.work_struct, i32, ptr, ptr, i32, i32, ptr, i32, %struct.sg_table, i8, ptr, ptr, i64, i64, i32, %struct.mutex, %struct.mutex, ptr, %struct.drm_rect, i8 }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.gud_connector_descriptor_req = type <{ i8, i32 }>
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.gud_connector_get_edid_ctx = type { ptr, i32, i8 }
%struct.gud_display_mode_req = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i32 }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@gud_connector_fill_properties.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/gud/gud_connector.c\00", [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@gud_connector_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&gconn->backlight_work)\00", [54 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Connector: index=%u type=%u flags=0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@gud_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @gud_connector_get_modes, ptr @gud_connector_detect, ptr null, ptr null, ptr null, ptr null, ptr @gud_connector_atomic_check, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@gud_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @gud_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr @gud_connector_late_register, ptr @gud_connector_early_unregister, ptr @gud_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to add properties\00", [39 x i8] zeroinitializer }, align 32
@gud_connector_backlight_update_status_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 105, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to update backlight, err=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"gud_connector_backlight_update_status_work\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gud_connector_backlight_update_status_work._entry_ptr = internal global ptr @gud_connector_backlight_update_status_work._entry, section ".printk_index", align 4
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid EDID size\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid display mode array size\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"card%d-%s-backlight\00", [44 x i8] zeroinitializer }, align 32
@gud_connector_backlight_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @gud_connector_backlight_update_status, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"property: %u = %llu(0x%llx)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Ignoring unknown property: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to add TV modes\00", [41 x i8] zeroinitializer }, align 32
@gud_conn_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str, i32 50, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: %s (ret=%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gud_conn_err\00", [19 x i8] zeroinitializer }, align 32
@gud_conn_err._entry_ptr = internal global ptr @gud_conn_err._entry, section ".printk_index", align 4
@switch.table.gud_get_connectors = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 5, i32 6, i32 8, i32 3, i32 10, i32 11], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.16 = internal global [14 x i64] [i64 12, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.17 = internal global [13 x i64] [i64 11, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@__sancov_gen_cov_switch_values.18 = internal global [13 x i64] [i64 11, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 596, i32 8 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 623, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 628, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [27 x i8] c"gud_connector_helper_funcs\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 317, i32 48 }
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"gud_connector_funcs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 362, i32 41 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 679, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 105, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 237, i32 27 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 258, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 135, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant [28 x i8] c"gud_connector_backlight_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 119, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 510, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 554, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 406, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private constant [39 x i8] c"../drivers/gpu/drm/gud/gud_connector.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 50, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [32 x i8] c"switch.table.gud_get_connectors\00", align 1
@llvm.compiler.used = appending global [25 x ptr] [ptr @gud_conn_err._entry, ptr @gud_conn_err._entry_ptr, ptr @gud_connector_backlight_update_status_work._entry, ptr @gud_connector_backlight_update_status_work._entry_ptr, ptr @.str, ptr @gud_connector_create.__key, ptr @.str.1, ptr @.str.2, ptr @gud_connector_helper_funcs, ptr @gud_connector_funcs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @gud_connector_backlight_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @switch.table.gud_get_connectors], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_connector_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_connector_backlight_update_status_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_connector_backlight_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gud_conn_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.gud_get_connectors to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gud_connector_fill_properties(ptr noundef %connector_state, ptr nocapture noundef writeonly %properties) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector_state, align 4
  %num_properties = getelementptr inbounds %struct.gud_connector, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_properties to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_properties, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp92.not = icmp eq i32 %3, 0
  br i1 %cmp92.not, label %entry.cleanup59_crit_edge, label %for.body.lr.ph

entry.cleanup59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

for.body.lr.ph:                                   ; preds = %entry
  %properties1 = getelementptr inbounds %struct.gud_connector, ptr %1, i32 0, i32 4
  %hue.i = getelementptr inbounds %struct.drm_connector_state, ptr %connector_state, i32 0, i32 6, i32 8
  %saturation.i = getelementptr inbounds %struct.drm_connector_state, ptr %connector_state, i32 0, i32 6, i32 7
  %overscan.i = getelementptr inbounds %struct.drm_connector_state, ptr %connector_state, i32 0, i32 6, i32 6
  %flicker_reduction.i = getelementptr inbounds %struct.drm_connector_state, ptr %connector_state, i32 0, i32 6, i32 5
  %contrast.i = getelementptr inbounds %struct.drm_connector_state, ptr %connector_state, i32 0, i32 6, i32 4
  %brightness.i = getelementptr inbounds %struct.drm_connector_state, ptr %connector_state, i32 0, i32 6, i32 3
  %mode.i = getelementptr inbounds %struct.drm_connector_state, ptr %connector_state, i32 0, i32 6, i32 2
  %margins6.i = getelementptr inbounds %struct.drm_connector_state, ptr %connector_state, i32 0, i32 6, i32 1
  %top.i = getelementptr inbounds %struct.drm_connector_state, ptr %connector_state, i32 0, i32 6, i32 1, i32 3
  %right.i = getelementptr inbounds %struct.drm_connector_state, ptr %connector_state, i32 0, i32 6, i32 1, i32 2
  %left.i = getelementptr inbounds %struct.drm_connector_state, ptr %connector_state, i32 0, i32 6, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %properties1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %properties1, align 8
  %arrayidx = getelementptr i16, ptr %5, i32 %i.093
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %for.body.land.rhs_crit_edge [
    i16 12, label %for.body.for.inc_crit_edge
    i16 1, label %for.body.gud_connector_tv_state_val.exit_crit_edge
    i16 2, label %sw.bb1.i
    i16 3, label %sw.bb3.i
    i16 4, label %sw.bb5.i
    i16 5, label %sw.bb7.i
    i16 6, label %sw.bb8.i
    i16 7, label %sw.bb9.i
    i16 8, label %sw.bb10.i
    i16 9, label %sw.bb11.i
    i16 10, label %sw.bb12.i
    i16 11, label %sw.bb13.i
  ]

for.body.gud_connector_tv_state_val.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

sw.bb1.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit

sw.bb3.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit

sw.bb5.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit

sw.bb7.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit

sw.bb8.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit

sw.bb9.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit

sw.bb10.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit

sw.bb11.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit

sw.bb12.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit

sw.bb13.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit

gud_connector_tv_state_val.exit:                  ; preds = %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %for.body.gud_connector_tv_state_val.exit_crit_edge
  %retval.0.i = phi ptr [ %hue.i, %sw.bb13.i ], [ %saturation.i, %sw.bb12.i ], [ %overscan.i, %sw.bb11.i ], [ %flicker_reduction.i, %sw.bb10.i ], [ %contrast.i, %sw.bb9.i ], [ %brightness.i, %sw.bb8.i ], [ %mode.i, %sw.bb7.i ], [ %margins6.i, %sw.bb5.i ], [ %top.i, %sw.bb3.i ], [ %right.i, %sw.bb1.i ], [ %left.i, %for.body.gud_connector_tv_state_val.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %gud_connector_tv_state_val.exit.land.rhs_crit_edge, label %gud_connector_tv_state_val.exit.for.inc_crit_edge

gud_connector_tv_state_val.exit.for.inc_crit_edge: ; preds = %gud_connector_tv_state_val.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

gud_connector_tv_state_val.exit.land.rhs_crit_edge: ; preds = %gud_connector_tv_state_val.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

land.rhs:                                         ; preds = %gud_connector_tv_state_val.exit.land.rhs_crit_edge, %for.body.land.rhs_crit_edge
  %retval.0.i82 = phi ptr [ %retval.0.i, %gud_connector_tv_state_val.exit.land.rhs_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.body.land.rhs_crit_edge ]
  %.b78 = load i1, ptr @gud_connector_fill_properties.__already_done, align 1
  br i1 %.b78, label %land.rhs.cleanup54_crit_edge, label %if.then15, !prof !49

land.rhs.cleanup54_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup54

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @gud_connector_fill_properties.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 596, i32 noundef 9, ptr noundef null) #10
  br label %cleanup54

cleanup54:                                        ; preds = %if.then15, %land.rhs.cleanup54_crit_edge
  %9 = ptrtoint ptr %retval.0.i82 to i32
  br label %cleanup59

for.inc:                                          ; preds = %gud_connector_tv_state_val.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %val.1.in.in = phi ptr [ %retval.0.i, %gud_connector_tv_state_val.exit.for.inc_crit_edge ], [ %brightness.i, %for.body.for.inc_crit_edge ]
  %10 = ptrtoint ptr %val.1.in.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %val.1.in = load i32, ptr %val.1.in.in, align 4
  %val.1 = zext i32 %val.1.in to i64
  %11 = tail call i16 @llvm.bswap.i16(i16 %7)
  %arrayidx50 = getelementptr %struct.gud_property_req, ptr %properties, i32 %i.093
  %12 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %11, ptr %arrayidx50, align 1
  %13 = tail call i64 @llvm.bswap.i64(i64 %val.1)
  %val53 = getelementptr %struct.gud_property_req, ptr %properties, i32 %i.093, i32 1
  %14 = ptrtoint ptr %val53 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 8)
  store i64 %13, ptr %val53, align 1
  %inc = add nuw i32 %i.093, 1
  %15 = ptrtoint ptr %num_properties to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_properties, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup59_crit_edge

for.inc.cleanup59_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup59:                                        ; preds = %for.inc.cleanup59_crit_edge, %cleanup54, %entry.cleanup59_crit_edge
  %retval.4 = phi i32 [ %9, %cleanup54 ], [ 0, %entry.cleanup59_crit_edge ], [ %16, %for.inc.cleanup59_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gud_get_connectors(ptr noundef %gdrm) local_unnamed_addr #0 align 64 {
entry:
  %modes.i.i.i = alloca [16 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 160) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @gud_usb_get(ptr noundef %gdrm, i8 noundef zeroext 80, i16 noundef zeroext 0, ptr noundef nonnull %call7.i.i, i32 noundef 160) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.free_crit_edge, label %if.end3

if.end.free_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %free

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool4.not = icmp ne i32 %call1, 0
  %call1.frozen = freeze i32 %call1
  %div = udiv i32 %call1.frozen, 5
  %1 = mul i32 %div, 5
  %rem.decomposed = sub i32 %call1.frozen, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool5.not = icmp eq i32 %rem.decomposed, 0
  %or.cond = and i1 %tobool4.not, %tobool5.not
  br i1 %or.cond, label %if.end7, label %if.end3.free_crit_edge

if.end3.free_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %free

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call1)
  %2 = icmp ult i32 %call1, 5
  br i1 %2, label %if.end7.free_crit_edge, label %for.body.lr.ph

if.end7.free_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %free

for.body.lr.ph:                                   ; preds = %if.end7
  %tobool9.not.i = icmp eq ptr %gdrm, null
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %gdrm, i32 0, i32 2
  %encoder71.i = getelementptr inbounds %struct.gud_device, ptr %gdrm, i32 0, i32 1, i32 2
  br label %for.body

for.cond:                                         ; preds = %gud_connector_create.exit
  %inc = add nuw nsw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.cond.free_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.cond.free_crit_edge:                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %free

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gud_connector_descriptor_req, ptr %call7.i.i, i32 %i.061
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 1224) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.free_crit_edge, label %do.body.i

for.body.free_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %free

do.body.i:                                        ; preds = %for.body
  %backlight_work.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 3
  call void @__init_work(ptr noundef %backlight_work.i, i32 noundef 0) #10
  %4 = ptrtoint ptr %backlight_work.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %backlight_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 3, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @gud_connector_create.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry5.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry5.i, ptr %entry5.i, align 8
  %prev.i.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 3, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @gud_connector_backlight_update_status_work, ptr %func.i, align 8
  %initial_brightness.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %initial_brightness.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -19, ptr %initial_brightness.i, align 8
  %flags7.i = getelementptr %struct.gud_connector_descriptor_req, ptr %call7.i.i, i32 %i.061, i32 1
  %9 = ptrtoint ptr %flags7.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %flags7.i, align 1
  %11 = call i32 @llvm.bswap.i32(i32 %10) #10
  br i1 %tobool9.not.i, label %do.body.i.cond.end.i_crit_edge, label %cond.true.i

do.body.i.cond.end.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.body.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %13, %cond.true.i ], [ null, %do.body.i.cond.end.i_crit_edge ]
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %15 to i32
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond.i, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef %i.061, i32 noundef %conv.i, i32 noundef %11) #10
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %switch.tableidx = add i8 %17, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %18 = icmp ult i8 %switch.tableidx, 7
  br i1 %18, label %switch.lookup, label %cond.end.i.sw.epilog.i_crit_edge

cond.end.i.sw.epilog.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.gud_get_connectors, i32 0, i32 %19
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %cond.end.i.sw.epilog.i_crit_edge
  %connector_type.0.i = phi i32 [ 20, %cond.end.i.sw.epilog.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %helper_private.i.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i.i, i32 0, i32 35
  %21 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @gud_connector_helper_funcs, ptr %helper_private.i.i, align 4
  %call20.i = call i32 @drm_connector_init(ptr noundef %gdrm, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @gud_connector_funcs, i32 noundef %connector_type.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.then22.i

if.then22.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %free

if.end23.i:                                       ; preds = %sw.epilog.i
  %index24.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i.i, i32 0, i32 9
  %22 = ptrtoint ptr %index24.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %i.061)
  %cmp.not.i = icmp eq i32 %23, %i.061
  br i1 %cmp.not.i, label %if.end52.i, label %do.end37.i, !prof !49

do.end37.i:                                       ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #10
  br label %free

if.end52.i:                                       ; preds = %if.end23.i
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool53.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool53.not.i, label %if.end52.i.if.end55.i_crit_edge, label %if.then54.i

if.end52.i.if.end55.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

if.then54.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  %polled.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i.i, i32 0, i32 33
  %24 = ptrtoint ptr %polled.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 6, ptr %polled.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then54.i, %if.end52.i.if.end55.i_crit_edge
  %and56.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.end55.i.if.end59.i_crit_edge, label %if.then58.i

if.end55.i.if.end59.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59.i

if.then58.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  %interlace_allowed.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i.i, i32 0, i32 12
  %25 = ptrtoint ptr %interlace_allowed.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %interlace_allowed.i, align 8
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then58.i, %if.end55.i.if.end59.i_crit_edge
  %and60.i = and i32 %11, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %if.end59.i.if.end63.i_crit_edge, label %if.then62.i

if.end59.i.if.end63.i_crit_edge:                  ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

if.then62.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #12
  %doublescan_allowed.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i.i, i32 0, i32 13
  %26 = ptrtoint ptr %doublescan_allowed.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %doublescan_allowed.i, align 1
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then62.i, %if.end59.i.if.end63.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 320) #13
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end63.i.if.then66.i_crit_edge, label %if.end.i.i

if.end63.i.if.then66.i_crit_edge:                 ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66.i

if.end.i.i:                                       ; preds = %if.end63.i
  %28 = ptrtoint ptr %index24.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index24.i, align 4
  %conv.i.i = trunc i32 %29 to i16
  %call3.i.i = call i32 @gud_usb_get(ptr noundef %gdrm, i8 noundef zeroext 81, i16 noundef zeroext %conv.i.i, ptr noundef nonnull %call7.i.i.i.i.i, i32 noundef 320) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call3.i.i)
  %cmp.i.i = icmp slt i32 %call3.i.i, 1
  br i1 %cmp.i.i, label %gud_connector_add_properties.exit.i, label %if.end6.i.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %call3.i.i.frozen = freeze i32 %call3.i.i
  %div.i.i = udiv i32 %call3.i.i.frozen, 10
  %30 = mul i32 %div.i.i, 10
  %rem.i.i.decomposed = sub i32 %call3.i.i.frozen, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.decomposed)
  %tobool7.not.i.i = icmp eq i32 %rem.i.i.decomposed, 0
  br i1 %tobool7.not.i.i, label %if.end9.i.i, label %if.end6.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge

if.end6.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_add_properties.exit.thread126.i

if.end9.i.i:                                      ; preds = %if.end6.i.i
  %31 = shl nuw nsw i32 %div.i.i, 1
  %call8.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #14
  %properties11.i.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %properties11.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call8.i.i.i.i, ptr %properties11.i.i, align 8
  %tobool13.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool13.not.i.i, label %if.end9.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge, label %for.cond.preheader.i.i

if.end9.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_add_properties.exit.thread126.i

for.cond.preheader.i.i:                           ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call3.i.i)
  %33 = icmp ult i32 %call3.i.i, 10
  br i1 %33, label %for.cond.preheader.i.i.gud_connector_add_properties.exit.thread130.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.gud_connector_add_properties.exit.thread130.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_add_properties.exit.thread130.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %num_properties60.i.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 5
  %hue.i.i.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 6, i32 8
  %saturation.i.i.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 6, i32 7
  %overscan.i.i.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 6, i32 6
  %flicker_reduction.i.i.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 6, i32 5
  %contrast.i.i.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 6, i32 4
  %brightness.i.i.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 6, i32 3
  %mode.i.i.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 6, i32 2
  %margins6.i.i.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %top.i.i.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 6, i32 1, i32 3
  %right.i.i.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 6, i32 1, i32 2
  %left.i.i.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 6, i32 1, i32 1
  %base.i.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i.i, i32 0, i32 6
  %umax.i.i = call i32 @llvm.umax.i32(i32 %div.i.i, i32 1) #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0211.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc132.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.gud_property_req, ptr %call7.i.i.i.i.i, i32 %i.0211.i.i
  %34 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.i.i, align 2
  %36 = call i16 @llvm.bswap.i16(i16 %35) #10
  %val20.i.i = getelementptr %struct.gud_property_req, ptr %call7.i.i.i.i.i, i32 %i.0211.i.i, i32 1
  %37 = ptrtoint ptr %val20.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %val20.i.i, align 2
  %39 = call i64 @llvm.bswap.i64(i64 %38) #10
  br i1 %tobool9.not.i, label %for.body.i.i.cond.end.i.i_crit_edge, label %cond.true.i.i

for.body.i.i.cond.end.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %for.body.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ %41, %cond.true.i.i ], [ null, %for.body.i.i.cond.end.i.i_crit_edge ]
  %conv22.i.i = zext i16 %36 to i32
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond.i.i, i32 noundef 2, ptr noundef nonnull @.str.11, i32 noundef %conv22.i.i, i64 noundef %39, i64 noundef %39) #10
  %42 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %36, label %sw.default.i.i [
    i16 1, label %cond.end.i.i.sw.bb26.i.i_crit_edge
    i16 2, label %cond.end.i.i.sw.bb26.i.i_crit_edge218
    i16 3, label %cond.end.i.i.sw.bb26.i.i_crit_edge219
    i16 4, label %cond.end.i.i.sw.bb26.i.i_crit_edge220
    i16 5, label %sw.bb31.i.i
    i16 6, label %cond.end.i.i.sw.bb41.i.i_crit_edge
    i16 7, label %cond.end.i.i.sw.bb41.i.i_crit_edge221
    i16 8, label %cond.end.i.i.sw.bb41.i.i_crit_edge222
    i16 9, label %cond.end.i.i.sw.bb41.i.i_crit_edge223
    i16 10, label %cond.end.i.i.sw.bb41.i.i_crit_edge224
    i16 11, label %cond.end.i.i.sw.bb41.i.i_crit_edge225
    i16 12, label %sw.bb46.i.i
  ]

cond.end.i.i.sw.bb41.i.i_crit_edge225:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb41.i.i

cond.end.i.i.sw.bb41.i.i_crit_edge224:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb41.i.i

cond.end.i.i.sw.bb41.i.i_crit_edge223:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb41.i.i

cond.end.i.i.sw.bb41.i.i_crit_edge222:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb41.i.i

cond.end.i.i.sw.bb41.i.i_crit_edge221:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb41.i.i

cond.end.i.i.sw.bb41.i.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb41.i.i

cond.end.i.i.sw.bb26.i.i_crit_edge220:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb26.i.i

cond.end.i.i.sw.bb26.i.i_crit_edge219:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb26.i.i

cond.end.i.i.sw.bb26.i.i_crit_edge218:            ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb26.i.i

cond.end.i.i.sw.bb26.i.i_crit_edge:               ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb26.i.i

sw.bb26.i.i:                                      ; preds = %cond.end.i.i.sw.bb26.i.i_crit_edge, %cond.end.i.i.sw.bb26.i.i_crit_edge218, %cond.end.i.i.sw.bb26.i.i_crit_edge219, %cond.end.i.i.sw.bb26.i.i_crit_edge220
  %call27.i.i = call i32 @drm_mode_create_tv_margin_properties(ptr noundef %gdrm) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i)
  %tobool28.not.i.i = icmp eq i32 %call27.i.i, 0
  br i1 %tobool28.not.i.i, label %sw.bb26.i.i.sw.epilog.i.i_crit_edge, label %sw.bb26.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge

sw.bb26.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge: ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_add_properties.exit.thread126.i

sw.bb26.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb31.i.i:                                      ; preds = %cond.end.i.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %modes.i.i.i) #10
  %43 = call ptr @memset(ptr %modes.i.i.i, i32 255, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3264, i32 noundef 256) #13
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %sw.bb31.i.i.gud_connector_add_tv_mode.exit.thread.i.i_crit_edge, label %if.end.i.i.i

sw.bb31.i.i.gud_connector_add_tv_mode.exit.thread.i.i_crit_edge: ; preds = %sw.bb31.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_add_tv_mode.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %sw.bb31.i.i
  %45 = ptrtoint ptr %index24.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index24.i, align 4
  %conv.i.i.i = trunc i32 %46 to i16
  %call1.i.i.i = call i32 @gud_usb_get(ptr noundef %gdrm, i8 noundef zeroext 82, i16 noundef zeroext %conv.i.i.i, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 256) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i.i.free.thread.i.i.i_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.free.thread.i.i.i_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free.thread.i.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool5.not.i.i.i = icmp ne i32 %call1.i.i.i, 0
  %47 = and i32 %call1.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool6.not.i.i.i = icmp eq i32 %47, 0
  %or.cond.i.i.i = and i1 %tobool5.not.i.i.i, %tobool6.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end8.i.i.i, label %if.end4.i.i.i.free.thread.i.i.i_crit_edge

if.end4.i.i.i.free.thread.i.i.i_crit_edge:        ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free.thread.i.i.i

if.end8.i.i.i:                                    ; preds = %if.end4.i.i.i
  %div4142.i.i.i = lshr i32 %call1.i.i.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call1.i.i.i)
  %cmp943.not.i.i.i = icmp ult i32 %call1.i.i.i, 16
  br i1 %cmp943.not.i.i.i, label %if.end8.i.i.i.free.i.i.i_crit_edge, label %for.body.preheader.i.i.i

if.end8.i.i.i.free.i.i.i_crit_edge:               ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free.i.i.i

for.body.preheader.i.i.i:                         ; preds = %if.end8.i.i.i
  %umax.i.i.i = call i32 @llvm.umax.i32(i32 %div4142.i.i.i, i32 1) #10
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.preheader.i.i.i
  %i.044.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i ]
  %mul.i.i.i = shl i32 %i.044.i.i.i, 4
  %arrayidx.i.i.i = getelementptr i8, ptr %call7.i.i.i.i, i32 %mul.i.i.i
  %arrayidx11.i.i.i = getelementptr [16 x ptr], ptr %modes.i.i.i, i32 0, i32 %i.044.i.i.i
  %48 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx.i.i.i, ptr %arrayidx11.i.i.i, align 4
  %inc.i.i.i = add nuw nsw i32 %i.044.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.body.i.i.i.free.i.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

for.body.i.i.i.free.i.i.i_crit_edge:              ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free.i.i.i

free.thread.i.i.i:                                ; preds = %if.end4.i.i.i.free.thread.i.i.i_crit_edge, %if.end.i.i.i.free.thread.i.i.i_crit_edge
  %ret.0.ph.i.i.i = phi i32 [ -5, %if.end4.i.i.i.free.thread.i.i.i_crit_edge ], [ %call1.i.i.i, %if.end.i.i.i.free.thread.i.i.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  br label %if.then15.i.i.i

free.i.i.i:                                       ; preds = %for.body.i.i.i.free.i.i.i_crit_edge, %if.end8.i.i.i.free.i.i.i_crit_edge
  %49 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call7.i.i.i, align 8
  %call12.i.i.i = call i32 @drm_mode_create_tv_properties(ptr noundef %50, i32 noundef %div4142.i.i.i, ptr noundef nonnull %modes.i.i.i) #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %cmp13.i.i.i = icmp slt i32 %call12.i.i.i, 0
  br i1 %cmp13.i.i.i, label %free.i.i.i.if.then15.i.i.i_crit_edge, label %gud_connector_add_tv_mode.exit.i.i

free.i.i.i.if.then15.i.i.i_crit_edge:             ; preds = %free.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then15.i.i.i

if.then15.i.i.i:                                  ; preds = %free.i.i.i.if.then15.i.i.i_crit_edge, %free.thread.i.i.i
  %ret.040.i.i.i = phi i32 [ %ret.0.ph.i.i.i, %free.thread.i.i.i ], [ %call12.i.i.i, %free.i.i.i.if.then15.i.i.i_crit_edge ]
  %51 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call7.i.i.i, align 8
  %dev1.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %dev1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev1.i.i.i.i, align 4
  %name.i.i.i.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i.i, i32 0, i32 7
  %55 = ptrtoint ptr %name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name.i.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.14, ptr noundef %56, ptr noundef nonnull @.str.13, i32 noundef %ret.040.i.i.i) #15
  br label %gud_connector_add_tv_mode.exit.thread.i.i

gud_connector_add_tv_mode.exit.thread.i.i:        ; preds = %if.then15.i.i.i, %sw.bb31.i.i.gud_connector_add_tv_mode.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %ret.040.i.i.i, %if.then15.i.i.i ], [ -12, %sw.bb31.i.i.gud_connector_add_tv_mode.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %modes.i.i.i) #10
  br label %gud_connector_add_properties.exit.thread126.i

gud_connector_add_tv_mode.exit.i.i:               ; preds = %free.i.i.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %modes.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i.i)
  %tobool33.not.i.i = icmp eq i32 %call12.i.i.i, 0
  br i1 %tobool33.not.i.i, label %gud_connector_add_tv_mode.exit.i.i.sw.epilog.i.i_crit_edge, label %gud_connector_add_tv_mode.exit.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge

gud_connector_add_tv_mode.exit.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge: ; preds = %gud_connector_add_tv_mode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_add_properties.exit.thread126.i

gud_connector_add_tv_mode.exit.i.i.sw.epilog.i.i_crit_edge: ; preds = %gud_connector_add_tv_mode.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb41.i.i:                                      ; preds = %cond.end.i.i.sw.bb41.i.i_crit_edge, %cond.end.i.i.sw.bb41.i.i_crit_edge221, %cond.end.i.i.sw.bb41.i.i_crit_edge222, %cond.end.i.i.sw.bb41.i.i_crit_edge223, %cond.end.i.i.sw.bb41.i.i_crit_edge224, %cond.end.i.i.sw.bb41.i.i_crit_edge225
  %call42.i.i = call i32 @drm_mode_create_tv_properties(ptr noundef %gdrm, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %sw.bb41.i.i.sw.epilog.i.i_crit_edge, label %sw.bb41.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge

sw.bb41.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge: ; preds = %sw.bb41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_add_properties.exit.thread126.i

sw.bb41.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb41.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i.i

sw.bb46.i.i:                                      ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 100, i64 %39)
  %cmp47.i.i = icmp ugt i64 %39, 100
  br i1 %cmp47.i.i, label %sw.bb46.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge, label %if.end50.i.i

sw.bb46.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge: ; preds = %sw.bb46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_add_properties.exit.thread126.i

if.end50.i.i:                                     ; preds = %sw.bb46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv51.i.i = trunc i64 %39 to i32
  %57 = ptrtoint ptr %initial_brightness.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv51.i.i, ptr %initial_brightness.i, align 8
  br label %sw.epilog.i.i

sw.default.i.i:                                   ; preds = %cond.end.i.i
  br i1 %tobool9.not.i, label %sw.default.i.i.cond.end56.i.i_crit_edge, label %cond.true53.i.i

sw.default.i.i.cond.end56.i.i_crit_edge:          ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end56.i.i

cond.true53.i.i:                                  ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  br label %cond.end56.i.i

cond.end56.i.i:                                   ; preds = %cond.true53.i.i, %sw.default.i.i.cond.end56.i.i_crit_edge
  %cond57.i.i = phi ptr [ %59, %cond.true53.i.i ], [ null, %sw.default.i.i.cond.end56.i.i_crit_edge ]
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond57.i.i, i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %conv22.i.i) #10
  br label %for.inc.i.i

sw.epilog.i.i:                                    ; preds = %if.end50.i.i, %sw.bb41.i.i.sw.epilog.i.i_crit_edge, %gud_connector_add_tv_mode.exit.i.i.sw.epilog.i.i_crit_edge, %sw.bb26.i.i.sw.epilog.i.i_crit_edge
  %60 = ptrtoint ptr %properties11.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %properties11.i.i, align 8
  %62 = ptrtoint ptr %num_properties60.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_properties60.i.i, align 4
  %inc.i.i = add i32 %63, 1
  store i32 %inc.i.i, ptr %num_properties60.i.i, align 4
  %arrayidx61.i.i = getelementptr i16, ptr %61, i32 %63
  %64 = ptrtoint ptr %arrayidx61.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %36, ptr %arrayidx61.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %35)
  %cmp63.i.i = icmp eq i16 %35, 3072
  br i1 %cmp63.i.i, label %sw.epilog.i.i.for.inc.i.i_crit_edge, label %if.end66.i.i

sw.epilog.i.i.for.inc.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end66.i.i:                                     ; preds = %sw.epilog.i.i
  %65 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call7.i.i.i, align 8
  %67 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.17)
  switch i16 %36, label %if.end66.i.i.do.end.i.i_crit_edge [
    i16 1, label %sw.bb.i.i.i
    i16 2, label %sw.bb1.i.i.i
    i16 3, label %sw.bb2.i.i.i
    i16 4, label %sw.bb3.i.i.i
    i16 5, label %sw.bb4.i.i.i
    i16 6, label %sw.bb5.i.i.i
    i16 7, label %sw.bb6.i.i.i
    i16 8, label %sw.bb7.i.i.i
    i16 9, label %sw.bb8.i.i.i
    i16 10, label %sw.bb9.i.i.i
    i16 11, label %sw.bb10.i.i.i
  ]

if.end66.i.i.do.end.i.i_crit_edge:                ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

sw.bb.i.i.i:                                      ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tv_left_margin_property.i.i.i = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 30, i32 63
  br label %gud_connector_property_lookup.exit.i.i

sw.bb1.i.i.i:                                     ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tv_right_margin_property.i.i.i = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 30, i32 64
  br label %gud_connector_property_lookup.exit.i.i

sw.bb2.i.i.i:                                     ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tv_top_margin_property.i.i.i = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 30, i32 65
  br label %gud_connector_property_lookup.exit.i.i

sw.bb3.i.i.i:                                     ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tv_bottom_margin_property.i.i.i = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 30, i32 66
  br label %gud_connector_property_lookup.exit.i.i

sw.bb4.i.i.i:                                     ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tv_mode_property.i.i.i = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 30, i32 62
  br label %gud_connector_property_lookup.exit.i.i

sw.bb5.i.i.i:                                     ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tv_brightness_property.i.i.i = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 30, i32 67
  br label %gud_connector_property_lookup.exit.i.i

sw.bb6.i.i.i:                                     ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tv_contrast_property.i.i.i = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 30, i32 68
  br label %gud_connector_property_lookup.exit.i.i

sw.bb7.i.i.i:                                     ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tv_flicker_reduction_property.i.i.i = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 30, i32 69
  br label %gud_connector_property_lookup.exit.i.i

sw.bb8.i.i.i:                                     ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tv_overscan_property.i.i.i = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 30, i32 70
  br label %gud_connector_property_lookup.exit.i.i

sw.bb9.i.i.i:                                     ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tv_saturation_property.i.i.i = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 30, i32 71
  br label %gud_connector_property_lookup.exit.i.i

sw.bb10.i.i.i:                                    ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %tv_hue_property.i.i.i = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 30, i32 72
  br label %gud_connector_property_lookup.exit.i.i

gud_connector_property_lookup.exit.i.i:           ; preds = %sw.bb10.i.i.i, %sw.bb9.i.i.i, %sw.bb8.i.i.i, %sw.bb7.i.i.i, %sw.bb6.i.i.i, %sw.bb5.i.i.i, %sw.bb4.i.i.i, %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %tv_hue_property.sink.i.i.i = phi ptr [ %tv_hue_property.i.i.i, %sw.bb10.i.i.i ], [ %tv_saturation_property.i.i.i, %sw.bb9.i.i.i ], [ %tv_overscan_property.i.i.i, %sw.bb8.i.i.i ], [ %tv_flicker_reduction_property.i.i.i, %sw.bb7.i.i.i ], [ %tv_contrast_property.i.i.i, %sw.bb6.i.i.i ], [ %tv_brightness_property.i.i.i, %sw.bb5.i.i.i ], [ %tv_mode_property.i.i.i, %sw.bb4.i.i.i ], [ %tv_bottom_margin_property.i.i.i, %sw.bb3.i.i.i ], [ %tv_top_margin_property.i.i.i, %sw.bb2.i.i.i ], [ %tv_right_margin_property.i.i.i, %sw.bb1.i.i.i ], [ %tv_left_margin_property.i.i.i, %sw.bb.i.i.i ]
  %68 = ptrtoint ptr %tv_hue_property.sink.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tv_hue_property.sink.i.i.i, align 4
  %cmp.i185.i.i = icmp ugt ptr %69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185.i.i, label %gud_connector_property_lookup.exit.i.i.do.end.i.i_crit_edge, label %if.end92.i.i, !prof !50

gud_connector_property_lookup.exit.i.i.do.end.i.i_crit_edge: ; preds = %gud_connector_property_lookup.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %gud_connector_property_lookup.exit.i.i.do.end.i.i_crit_edge, %if.end66.i.i.do.end.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 564, i32 noundef 9, ptr noundef null) #10
  br label %for.inc.i.i

if.end92.i.i:                                     ; preds = %gud_connector_property_lookup.exit.i.i
  %70 = zext i16 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %36, label %if.end92.i.i.do.end111.i.i_crit_edge [
    i16 1, label %if.end92.i.i.gud_connector_tv_state_val.exit.i.i_crit_edge
    i16 2, label %sw.bb1.i187.i.i
    i16 3, label %sw.bb3.i188.i.i
    i16 4, label %sw.bb5.i189.i.i
    i16 5, label %sw.bb7.i190.i.i
    i16 6, label %sw.bb8.i191.i.i
    i16 7, label %sw.bb9.i192.i.i
    i16 8, label %sw.bb10.i193.i.i
    i16 9, label %sw.bb11.i.i.i
    i16 10, label %sw.bb12.i.i.i
    i16 11, label %sw.bb13.i.i.i
  ]

if.end92.i.i.gud_connector_tv_state_val.exit.i.i_crit_edge: ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit.i.i

if.end92.i.i.do.end111.i.i_crit_edge:             ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end111.i.i

sw.bb1.i187.i.i:                                  ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit.i.i

sw.bb3.i188.i.i:                                  ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit.i.i

sw.bb5.i189.i.i:                                  ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit.i.i

sw.bb7.i190.i.i:                                  ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit.i.i

sw.bb8.i191.i.i:                                  ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit.i.i

sw.bb9.i192.i.i:                                  ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit.i.i

sw.bb10.i193.i.i:                                 ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit.i.i

sw.bb11.i.i.i:                                    ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit.i.i

sw.bb12.i.i.i:                                    ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit.i.i

sw.bb13.i.i.i:                                    ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_tv_state_val.exit.i.i

gud_connector_tv_state_val.exit.i.i:              ; preds = %sw.bb13.i.i.i, %sw.bb12.i.i.i, %sw.bb11.i.i.i, %sw.bb10.i193.i.i, %sw.bb9.i192.i.i, %sw.bb8.i191.i.i, %sw.bb7.i190.i.i, %sw.bb5.i189.i.i, %sw.bb3.i188.i.i, %sw.bb1.i187.i.i, %if.end92.i.i.gud_connector_tv_state_val.exit.i.i_crit_edge
  %retval.0.i194.i.i = phi ptr [ %hue.i.i.i, %sw.bb13.i.i.i ], [ %saturation.i.i.i, %sw.bb12.i.i.i ], [ %overscan.i.i.i, %sw.bb11.i.i.i ], [ %flicker_reduction.i.i.i, %sw.bb10.i193.i.i ], [ %contrast.i.i.i, %sw.bb9.i192.i.i ], [ %brightness.i.i.i, %sw.bb8.i191.i.i ], [ %mode.i.i.i, %sw.bb7.i190.i.i ], [ %margins6.i.i.i, %sw.bb5.i189.i.i ], [ %top.i.i.i, %sw.bb3.i188.i.i ], [ %right.i.i.i, %sw.bb1.i187.i.i ], [ %left.i.i.i, %if.end92.i.i.gud_connector_tv_state_val.exit.i.i_crit_edge ]
  %cmp.i195.i.i = icmp ugt ptr %retval.0.i194.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i195.i.i, label %gud_connector_tv_state_val.exit.i.i.do.end111.i.i_crit_edge, label %if.end127.i.i, !prof !50

gud_connector_tv_state_val.exit.i.i.do.end111.i.i_crit_edge: ; preds = %gud_connector_tv_state_val.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end111.i.i

do.end111.i.i:                                    ; preds = %gud_connector_tv_state_val.exit.i.i.do.end111.i.i_crit_edge, %if.end92.i.i.do.end111.i.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 568, i32 noundef 9, ptr noundef null) #10
  br label %for.inc.i.i

if.end127.i.i:                                    ; preds = %gud_connector_tv_state_val.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv128.i.i = trunc i64 %39 to i32
  %71 = ptrtoint ptr %retval.0.i194.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %conv128.i.i, ptr %retval.0.i194.i.i, align 4
  call void @drm_object_attach_property(ptr noundef %base.i.i, ptr noundef %69, i64 noundef 0) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end127.i.i, %do.end111.i.i, %do.end.i.i, %sw.epilog.i.i.for.inc.i.i_crit_edge, %cond.end56.i.i
  %inc132.i.i = add nuw nsw i32 %i.0211.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc132.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.gud_connector_add_properties.exit.thread130.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.gud_connector_add_properties.exit.thread130.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_add_properties.exit.thread130.i

gud_connector_add_properties.exit.thread126.i:    ; preds = %sw.bb46.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge, %sw.bb41.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge, %gud_connector_add_tv_mode.exit.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge, %gud_connector_add_tv_mode.exit.thread.i.i, %sw.bb26.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge, %if.end9.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge, %if.end6.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge
  %ret.3.i.ph.i = phi i32 [ %retval.0.i.ph.i.i, %gud_connector_add_tv_mode.exit.thread.i.i ], [ %call27.i.i, %sw.bb26.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge ], [ %call12.i.i.i, %gud_connector_add_tv_mode.exit.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge ], [ %call42.i.i, %sw.bb41.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge ], [ -22, %sw.bb46.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge ], [ -5, %if.end6.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge ], [ -12, %if.end9.i.i.gud_connector_add_properties.exit.thread126.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #10
  br label %if.then66.i

gud_connector_add_properties.exit.thread130.i:    ; preds = %for.inc.i.i.gud_connector_add_properties.exit.thread130.i_crit_edge, %for.cond.preheader.i.i.gud_connector_add_properties.exit.thread130.i_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #10
  br label %if.end67.i

gud_connector_add_properties.exit.i:              ; preds = %if.end.i.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool65.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool65.not.i, label %gud_connector_add_properties.exit.i.if.end67.i_crit_edge, label %gud_connector_add_properties.exit.i.if.then66.i_crit_edge

gud_connector_add_properties.exit.i.if.then66.i_crit_edge: ; preds = %gud_connector_add_properties.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then66.i

gud_connector_add_properties.exit.i.if.end67.i_crit_edge: ; preds = %gud_connector_add_properties.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67.i

if.then66.i:                                      ; preds = %gud_connector_add_properties.exit.i.if.then66.i_crit_edge, %gud_connector_add_properties.exit.thread126.i, %if.end63.i.if.then66.i_crit_edge
  %retval.0.i125.i = phi i32 [ %ret.3.i.ph.i, %gud_connector_add_properties.exit.thread126.i ], [ -12, %if.end63.i.if.then66.i_crit_edge ], [ %call3.i.i, %gud_connector_add_properties.exit.i.if.then66.i_crit_edge ]
  %72 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %call7.i.i.i, align 8
  %dev1.i.i = getelementptr inbounds %struct.drm_device, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev1.i.i, align 4
  %name.i.i = getelementptr inbounds %struct.drm_connector, ptr %call7.i.i.i, i32 0, i32 7
  %76 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %name.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.14, ptr noundef %77, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i125.i) #15
  br label %free

if.end67.i:                                       ; preds = %gud_connector_add_properties.exit.i.if.end67.i_crit_edge, %gud_connector_add_properties.exit.thread130.i
  %78 = ptrtoint ptr %index24.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %index24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool69.not.i = icmp eq i32 %79, 0
  br i1 %tobool69.not.i, label %if.end67.i.gud_connector_create.exit_crit_edge, label %if.else.i

if.end67.i.gud_connector_create.exit_crit_edge:   ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_create.exit

if.else.i:                                        ; preds = %if.end67.i
  %encoder72.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 1
  %call73.i = call i32 @drm_simple_encoder_init(ptr noundef %gdrm, ptr noundef %encoder72.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.end76.i, label %if.else.i.free_crit_edge

if.else.i.free_crit_edge:                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free

if.end76.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %possible_crtcs.i = getelementptr inbounds %struct.gud_connector, ptr %call7.i.i.i, i32 0, i32 1, i32 6
  %80 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %possible_crtcs.i, align 4
  br label %gud_connector_create.exit

gud_connector_create.exit:                        ; preds = %if.end76.i, %if.end67.i.gud_connector_create.exit_crit_edge
  %encoder.0.i = phi ptr [ %encoder72.i, %if.end76.i ], [ %encoder71.i, %if.end67.i.gud_connector_create.exit_crit_edge ]
  %call78.i = call i32 @drm_connector_attach_encoder(ptr noundef nonnull %call7.i.i.i, ptr noundef %encoder.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool10.not = icmp eq i32 %call78.i, 0
  br i1 %tobool10.not, label %for.cond, label %gud_connector_create.exit.free_crit_edge

gud_connector_create.exit.free_crit_edge:         ; preds = %gud_connector_create.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %free

free:                                             ; preds = %gud_connector_create.exit.free_crit_edge, %if.else.i.free_crit_edge, %if.then66.i, %do.end37.i, %if.then22.i, %for.body.free_crit_edge, %for.cond.free_crit_edge, %if.end7.free_crit_edge, %if.end3.free_crit_edge, %if.end.free_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.free_crit_edge ], [ -5, %if.end3.free_crit_edge ], [ %retval.0.i125.i, %if.then66.i ], [ -22, %do.end37.i ], [ %call20.i, %if.then22.i ], [ %call1, %if.end7.free_crit_edge ], [ %call78.i, %gud_connector_create.exit.free_crit_edge ], [ 0, %for.cond.free_crit_edge ], [ -12, %for.body.free_crit_edge ], [ %call73.i, %if.else.i.free_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %free, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %free ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gud_usb_get(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gud_connector_backlight_update_status_work(ptr noundef %work) #0 align 64 {
entry:
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1116
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx) #10
  %2 = call ptr @memset(ptr %ctx, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #10
  %3 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %idx, align 4, !annotation !51
  %call = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @drm_atomic_state_alloc(ptr noundef %1) #10
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %exit.thread, label %if.end4

exit.thread:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %5) #10
  br label %do.end

if.end4:                                          ; preds = %if.end
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx, i32 noundef 0) #10
  %acquire_ctx = getelementptr inbounds %struct.drm_atomic_state, ptr %call2, i32 0, i32 9
  %6 = ptrtoint ptr %acquire_ctx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ctx, ptr %acquire_ctx, align 4
  %backlight = getelementptr i8, ptr %work, i32 -4
  br label %retry

retry:                                            ; preds = %if.then12, %if.end4
  %call5 = call ptr @drm_atomic_get_connector_state(ptr noundef nonnull %call2, ptr noundef %add.ptr) #10
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %call5 to i32
  br label %out

if.end9:                                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %backlight, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %brightness10 = getelementptr inbounds %struct.drm_connector_state, ptr %call5, i32 0, i32 6, i32 3
  %12 = ptrtoint ptr %brightness10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %brightness10, align 4
  %call11 = call i32 @drm_atomic_commit(ptr noundef nonnull %call2) #10
  br label %out

out:                                              ; preds = %if.end9, %if.then7
  %ret.0 = phi i32 [ %7, %if.then7 ], [ %call11, %if.end9 ]
  %cmp = icmp eq i32 %ret.0, -35
  br i1 %cmp, label %if.then12, label %if.end14

if.then12:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  call void @drm_atomic_state_clear(ptr noundef nonnull %call2) #10
  %call13 = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx) #10
  br label %retry

if.end14:                                         ; preds = %out
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call2, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !52
  call void @llvm.prefetch.p0(ptr nonnull %call2, i32 1, i32 3, i32 1) #10
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call2, ptr nonnull %call2, i32 1, ptr nonnull elementtype(i32) %call2) #10, !srcloc !53
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !49

if.end5.i.i.i.i.i.exit_crit_edge:                 ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %call2, i32 noundef 3) #10
  br label %exit

if.then.i.i:                                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !54
  call void @__drm_atomic_state_free(ptr noundef nonnull %call2) #10
  br label %exit

exit:                                             ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.exit_crit_edge
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx) #10
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx) #10
  %14 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool15.not = icmp eq i32 %ret.0, 0
  br i1 %tobool15.not, label %exit.cleanup_crit_edge, label %exit.do.end_crit_edge

exit.do.end_crit_edge:                            ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %exit.do.end_crit_edge, %exit.thread
  %ret.141 = phi i32 [ -12, %exit.thread ], [ %ret.0, %exit.do.end_crit_edge ]
  %dev17 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.4, i32 noundef %ret.141) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #10
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dev_enter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_connector_state(ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local void @drm_dev_exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gud_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  %edid_ctx = alloca %struct.gud_connector_get_edid_ctx, align 4
  %idx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %edid_ctx) #10
  %2 = getelementptr inbounds i8, ptr %edid_ctx, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 -1, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #10
  %4 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %idx, align 4, !annotation !51
  %call2 = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #10
  br i1 %call2, label %if.end, label %entry.cleanup53_crit_edge

entry.cleanup53_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

if.end:                                           ; preds = %entry
  %edid_override = getelementptr inbounds %struct.gud_connector_get_edid_ctx, ptr %edid_ctx, i32 0, i32 2
  %5 = ptrtoint ptr %edid_override to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %edid_override, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 2048) #13
  %7 = ptrtoint ptr %edid_ctx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i, ptr %edid_ctx, align 4
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.end.if.then50_crit_edge, label %if.end6

if.end.if.then50_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

if.end6:                                          ; preds = %if.end
  %index = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 9
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %conv = trunc i32 %9 to i16
  %call8 = call i32 @gud_usb_get(ptr noundef %1, i8 noundef zeroext 86, i16 noundef zeroext %conv, ptr noundef nonnull %call7.i, i32 noundef 2048) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp sgt i32 %call8, 0
  %10 = and i32 %call8, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp ne i32 %10, 0
  %11 = and i1 %cmp, %tobool10.not
  br i1 %11, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %connector, align 8
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i, align 4
  %name.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %16 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.14, ptr noundef %17, ptr noundef nonnull @.str.8, i32 noundef %call8) #15
  br label %if.end17

if.else:                                          ; preds = %if.end6
  br i1 %cmp, label %if.then14, label %if.else.if.end17_crit_edge

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.gud_connector_get_edid_ctx, ptr %edid_ctx, i32 0, i32 1
  %18 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call8, ptr %len, align 4
  %call15 = call ptr @drm_do_get_edid(ptr noundef %connector, ptr noundef nonnull @gud_connector_get_edid_block, ptr noundef nonnull %edid_ctx) #10
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.else.if.end17_crit_edge, %if.then11
  %edid.0 = phi ptr [ null, %if.then11 ], [ %call15, %if.then14 ], [ null, %if.else.if.end17_crit_edge ]
  %19 = ptrtoint ptr %edid_ctx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %edid_ctx, align 4
  call void @kfree(ptr noundef %20) #10
  %call19 = call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef %edid.0) #10
  %tobool20.not = icmp eq ptr %edid.0, null
  br i1 %tobool20.not, label %if.end17.if.end26_crit_edge, label %land.lhs.true21

if.end17.if.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true21:                                  ; preds = %if.end17
  %21 = ptrtoint ptr %edid_override to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %edid_override, align 4, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool23.not = icmp eq i8 %22, 0
  br i1 %tobool23.not, label %land.lhs.true21.if.end26_crit_edge, label %land.lhs.true21.if.then50_crit_edge

land.lhs.true21.if.then50_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

land.lhs.true21.if.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true21.if.end26_crit_edge, %if.end17.if.end26_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3264, i32 noundef 3072) #13
  %tobool28.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool28.not, label %if.end26.if.then50_crit_edge, label %if.end30

if.end26.if.then50_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

if.end30:                                         ; preds = %if.end26
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index, align 4
  %conv32 = trunc i32 %25 to i16
  %call33 = call i32 @gud_usb_get(ptr noundef %1, i8 noundef zeroext 85, i16 noundef zeroext %conv32, ptr noundef nonnull %call7.i.i, i32 noundef 3072) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 1
  br i1 %cmp34, label %if.end30.if.then50_crit_edge, label %if.end37

if.end30.if.then50_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

if.end37:                                         ; preds = %if.end30
  %call33.frozen = freeze i32 %call33
  %div = udiv i32 %call33.frozen, 24
  %26 = mul i32 %div, 24
  %rem38.decomposed = sub i32 %call33.frozen, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem38.decomposed)
  %tobool39.not = icmp eq i32 %rem38.decomposed, 0
  br i1 %tobool39.not, label %if.end41, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %connector, align 8
  %dev1.i94 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %dev1.i94 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev1.i94, align 4
  %name.i95 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %31 = ptrtoint ptr %name.i95 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name.i95, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.14, ptr noundef %32, ptr noundef nonnull @.str.9, i32 noundef %call33) #15
  br label %if.then50

if.end41:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %call33)
  %33 = icmp ult i32 %call33, 24
  br i1 %33, label %if.end41.out_crit_edge, label %for.body.preheader

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.body.preheader:                               ; preds = %if.end41
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0109 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %34 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %connector, align 8
  %call45 = call ptr @drm_mode_create(ptr noundef %35) #10
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %for.body.out_crit_edge, label %for.inc

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.gud_display_mode_req, ptr %call7.i.i, i32 %i.0109
  %flags1.i = getelementptr %struct.gud_display_mode_req, ptr %call7.i.i, i32 %i.0109, i32 9
  %36 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags1.i, align 4
  %38 = call i32 @llvm.bswap.i32(i32 %37) #10
  %39 = call ptr @memset(ptr %call45, i32 0, i32 112)
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx, align 8
  %42 = call i32 @llvm.bswap.i32(i32 %41) #10
  %43 = ptrtoint ptr %call45 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %call45, align 4
  %hdisplay.i = getelementptr %struct.gud_display_mode_req, ptr %call7.i.i, i32 %i.0109, i32 1
  %44 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %hdisplay.i, align 4
  %46 = call i16 @llvm.bswap.i16(i16 %45) #10
  %hdisplay3.i = getelementptr inbounds %struct.drm_display_mode, ptr %call45, i32 0, i32 1
  %47 = ptrtoint ptr %hdisplay3.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %hdisplay3.i, align 4
  %hsync_start.i = getelementptr %struct.gud_display_mode_req, ptr %call7.i.i, i32 %i.0109, i32 2
  %48 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %hsync_start.i, align 2
  %50 = call i16 @llvm.bswap.i16(i16 %49) #10
  %hsync_start4.i = getelementptr inbounds %struct.drm_display_mode, ptr %call45, i32 0, i32 2
  %51 = ptrtoint ptr %hsync_start4.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %hsync_start4.i, align 2
  %hsync_end.i = getelementptr %struct.gud_display_mode_req, ptr %call7.i.i, i32 %i.0109, i32 3
  %52 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %hsync_end.i, align 8
  %54 = call i16 @llvm.bswap.i16(i16 %53) #10
  %hsync_end5.i = getelementptr inbounds %struct.drm_display_mode, ptr %call45, i32 0, i32 3
  %55 = ptrtoint ptr %hsync_end5.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %hsync_end5.i, align 4
  %htotal.i = getelementptr %struct.gud_display_mode_req, ptr %call7.i.i, i32 %i.0109, i32 4
  %56 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %htotal.i, align 2
  %58 = call i16 @llvm.bswap.i16(i16 %57) #10
  %htotal6.i = getelementptr inbounds %struct.drm_display_mode, ptr %call45, i32 0, i32 4
  %59 = ptrtoint ptr %htotal6.i to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %htotal6.i, align 2
  %vdisplay.i = getelementptr %struct.gud_display_mode_req, ptr %call7.i.i, i32 %i.0109, i32 5
  %60 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vdisplay.i, align 4
  %62 = call i16 @llvm.bswap.i16(i16 %61) #10
  %vdisplay7.i = getelementptr inbounds %struct.drm_display_mode, ptr %call45, i32 0, i32 6
  %63 = ptrtoint ptr %vdisplay7.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %vdisplay7.i, align 2
  %vsync_start.i = getelementptr %struct.gud_display_mode_req, ptr %call7.i.i, i32 %i.0109, i32 6
  %64 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %vsync_start.i, align 2
  %66 = call i16 @llvm.bswap.i16(i16 %65) #10
  %vsync_start8.i = getelementptr inbounds %struct.drm_display_mode, ptr %call45, i32 0, i32 7
  %67 = ptrtoint ptr %vsync_start8.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %vsync_start8.i, align 4
  %vsync_end.i = getelementptr %struct.gud_display_mode_req, ptr %call7.i.i, i32 %i.0109, i32 7
  %68 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %vsync_end.i, align 8
  %70 = call i16 @llvm.bswap.i16(i16 %69) #10
  %vsync_end9.i = getelementptr inbounds %struct.drm_display_mode, ptr %call45, i32 0, i32 8
  %71 = ptrtoint ptr %vsync_end9.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %70, ptr %vsync_end9.i, align 2
  %vtotal.i = getelementptr %struct.gud_display_mode_req, ptr %call7.i.i, i32 %i.0109, i32 8
  %72 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %vtotal.i, align 2
  %74 = call i16 @llvm.bswap.i16(i16 %73) #10
  %vtotal10.i = getelementptr inbounds %struct.drm_display_mode, ptr %call45, i32 0, i32 9
  %75 = ptrtoint ptr %vtotal10.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %74, ptr %vtotal10.i, align 4
  %and.i = and i32 %38, 13311
  %flags11.i = getelementptr inbounds %struct.drm_display_mode, ptr %call45, i32 0, i32 11
  %76 = ptrtoint ptr %flags11.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and.i, ptr %flags11.i, align 4
  %and12.i = and i32 %38, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not.i = icmp eq i32 %and12.i, 0
  %spec.select.i = select i1 %tobool.not.i, i8 64, i8 72
  %type.i = getelementptr inbounds %struct.drm_display_mode, ptr %call45, i32 0, i32 28
  %77 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %spec.select.i, ptr %type.i, align 2
  call void @drm_mode_set_name(ptr noundef nonnull %call45) #10
  call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call45) #10
  %inc = add nuw nsw i32 %i.0109, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %for.body.out_crit_edge, %if.end41.out_crit_edge
  %num_modes.2 = phi i32 [ %div, %if.end41.out_crit_edge ], [ %i.0109, %for.body.out_crit_edge ], [ %div, %for.inc.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_modes.2)
  %tobool49.not = icmp eq i32 %num_modes.2, 0
  br i1 %tobool49.not, label %out.if.then50_crit_edge, label %out.if.end52_crit_edge

out.if.end52_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

out.if.then50_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then50

if.then50:                                        ; preds = %out.if.then50_crit_edge, %if.then40, %if.end30.if.then50_crit_edge, %if.end26.if.then50_crit_edge, %land.lhs.true21.if.then50_crit_edge, %if.end.if.then50_crit_edge
  %edid.1107 = phi ptr [ %edid.0, %out.if.then50_crit_edge ], [ null, %if.end.if.then50_crit_edge ], [ %edid.0, %if.end26.if.then50_crit_edge ], [ %edid.0, %if.then40 ], [ %edid.0, %if.end30.if.then50_crit_edge ], [ %edid.0, %land.lhs.true21.if.then50_crit_edge ]
  %reqmodes.0105 = phi ptr [ %call7.i.i, %out.if.then50_crit_edge ], [ null, %if.end.if.then50_crit_edge ], [ null, %if.end26.if.then50_crit_edge ], [ %call7.i.i, %if.then40 ], [ %call7.i.i, %if.end30.if.then50_crit_edge ], [ null, %land.lhs.true21.if.then50_crit_edge ]
  %call51 = call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %edid.1107) #10
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %out.if.end52_crit_edge
  %edid.1106 = phi ptr [ %edid.0, %out.if.end52_crit_edge ], [ %edid.1107, %if.then50 ]
  %reqmodes.0104 = phi ptr [ %call7.i.i, %out.if.end52_crit_edge ], [ %reqmodes.0105, %if.then50 ]
  %num_modes.3 = phi i32 [ %num_modes.2, %out.if.end52_crit_edge ], [ %call51, %if.then50 ]
  call void @kfree(ptr noundef %reqmodes.0104) #10
  call void @kfree(ptr noundef %edid.1106) #10
  %78 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %79) #10
  br label %cleanup53

cleanup53:                                        ; preds = %if.end52, %entry.cleanup53_crit_edge
  %retval.0 = phi i32 [ %num_modes.3, %if.end52 ], [ 0, %entry.cleanup53_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %edid_ctx) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gud_connector_detect(ptr nocapture noundef %connector, ptr nocapture noundef readnone %ctx, i1 noundef zeroext %force) #0 align 64 {
entry:
  %idx = alloca i32, align 4
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx) #10
  %2 = ptrtoint ptr %idx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %idx, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #10
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %status, align 1, !annotation !51
  %call2 = call zeroext i1 @drm_dev_enter(ptr noundef %1, ptr noundef nonnull %idx) #10
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %force, label %if.then3, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %index = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 9
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %conv = trunc i32 %5 to i16
  %call4 = call i32 @gud_usb_set(ptr noundef %1, i8 noundef zeroext 83, i16 noundef zeroext %conv, ptr noundef null, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then3.if.end8_crit_edge, label %if.then3.exit_crit_edge

if.then3.exit_crit_edge:                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %index9 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 9
  %6 = ptrtoint ptr %index9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index9, align 4
  %conv10 = trunc i32 %7 to i16
  %call11 = call i32 @gud_usb_get_u8(ptr noundef %1, i8 noundef zeroext 84, i16 noundef zeroext %conv10, ptr noundef nonnull %status) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end8.exit_crit_edge

if.end8.exit_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end14:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %status, align 1
  %10 = and i8 %9, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %10)
  %switch.selectcmp = icmp eq i8 %10, 1
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %switch.selectcmp32 = icmp eq i8 %10, 0
  %switch.select33 = select i1 %switch.selectcmp32, i32 2, i32 %switch.select
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool19.not = icmp sgt i8 %9, -1
  br i1 %tobool19.not, label %if.end14.exit_crit_edge, label %if.then20

if.end14.exit_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %epoch_counter = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 39
  %11 = ptrtoint ptr %epoch_counter to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %epoch_counter, align 8
  %add = add i64 %12, 1
  store i64 %add, ptr %epoch_counter, align 8
  br label %exit

exit:                                             ; preds = %if.then20, %if.end14.exit_crit_edge, %if.end8.exit_crit_edge, %if.then3.exit_crit_edge
  %ret.1 = phi i32 [ %switch.select33, %if.then20 ], [ %switch.select33, %if.end14.exit_crit_edge ], [ 3, %if.then3.exit_crit_edge ], [ 3, %if.end8.exit_crit_edge ]
  %13 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %idx, align 4
  call void @drm_dev_exit(i32 noundef %14) #10
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %exit ], [ 2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx) #10
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gud_connector_atomic_check(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %state) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 9
  %0 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 5
  %2 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not.i = icmp slt i32 %1, %3
  br i1 %cmp.not.i, label %drm_atomic_get_new_connector_state.exit, label %drm_atomic_get_new_connector_state.exit.thread

drm_atomic_get_new_connector_state.exit:          ; preds = %entry
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 6
  %4 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connectors.i, align 4
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %5, i32 %1, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %drm_atomic_get_new_connector_state.exit.cleanup_crit_edge, label %if.end.i95

drm_atomic_get_new_connector_state.exit.cleanup_crit_edge: ; preds = %drm_atomic_get_new_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

drm_atomic_get_new_connector_state.exit.thread:   ; preds = %entry
  call void @__asan_load4_noabort(i32 4)
  %10 = load ptr, ptr inttoptr (i32 4 to ptr), align 4
  %tobool.not101 = icmp eq ptr %10, null
  br i1 %tobool.not101, label %drm_atomic_get_new_connector_state.exit.thread.cleanup_crit_edge, label %drm_atomic_get_new_connector_state.exit.thread.drm_atomic_get_old_connector_state.exit_crit_edge

drm_atomic_get_new_connector_state.exit.thread.drm_atomic_get_old_connector_state.exit_crit_edge: ; preds = %drm_atomic_get_new_connector_state.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_atomic_get_old_connector_state.exit

drm_atomic_get_new_connector_state.exit.thread.cleanup_crit_edge: ; preds = %drm_atomic_get_new_connector_state.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i95:                                       ; preds = %drm_atomic_get_new_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %connectors.i, align 4
  %old_state.i = getelementptr %struct.__drm_connnectors_state, ptr %12, i32 %1, i32 2
  %13 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %old_state.i, align 4
  br label %drm_atomic_get_old_connector_state.exit

drm_atomic_get_old_connector_state.exit:          ; preds = %if.end.i95, %drm_atomic_get_new_connector_state.exit.thread.drm_atomic_get_old_connector_state.exit_crit_edge
  %retval.0.i102104 = phi ptr [ %7, %if.end.i95 ], [ null, %drm_atomic_get_new_connector_state.exit.thread.drm_atomic_get_old_connector_state.exit_crit_edge ]
  %15 = phi ptr [ %9, %if.end.i95 ], [ %10, %drm_atomic_get_new_connector_state.exit.thread.drm_atomic_get_old_connector_state.exit_crit_edge ]
  %retval.0.i96 = phi ptr [ %14, %if.end.i95 ], [ null, %drm_atomic_get_new_connector_state.exit.thread.drm_atomic_get_old_connector_state.exit_crit_edge ]
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %16 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtcs.i, align 4
  %index.i.i97 = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 8
  %18 = ptrtoint ptr %index.i.i97 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i97, align 4
  %new_state.i98 = getelementptr %struct.__drm_crtcs_state, ptr %17, i32 %19, i32 3
  %20 = ptrtoint ptr %new_state.i98 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %new_state.i98, align 4
  %margins = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i96, i32 0, i32 6, i32 1
  %left = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i96, i32 0, i32 6, i32 1, i32 1
  %22 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %left, align 4
  %margins5 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i102104, i32 0, i32 6, i32 1
  %left6 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i102104, i32 0, i32 6, i32 1, i32 1
  %24 = ptrtoint ptr %left6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %left6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp.not = icmp eq i32 %23, %25
  br i1 %cmp.not, label %lor.lhs.false, label %drm_atomic_get_old_connector_state.exit.if.then62_crit_edge

drm_atomic_get_old_connector_state.exit.if.then62_crit_edge: ; preds = %drm_atomic_get_old_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false:                                    ; preds = %drm_atomic_get_old_connector_state.exit
  %right = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i96, i32 0, i32 6, i32 1, i32 2
  %26 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %right, align 4
  %right11 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i102104, i32 0, i32 6, i32 1, i32 2
  %28 = ptrtoint ptr %right11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %right11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp12.not = icmp eq i32 %27, %29
  br i1 %cmp12.not, label %lor.lhs.false13, label %lor.lhs.false.if.then62_crit_edge

lor.lhs.false.if.then62_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %top = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i96, i32 0, i32 6, i32 1, i32 3
  %30 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %top, align 4
  %top18 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i102104, i32 0, i32 6, i32 1, i32 3
  %32 = ptrtoint ptr %top18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %top18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp19.not = icmp eq i32 %31, %33
  br i1 %cmp19.not, label %lor.lhs.false20, label %lor.lhs.false13.if.then62_crit_edge

lor.lhs.false13.if.then62_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false20:                                  ; preds = %lor.lhs.false13
  %34 = ptrtoint ptr %margins to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %margins, align 4
  %36 = ptrtoint ptr %margins5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %margins5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp26.not = icmp eq i32 %35, %37
  br i1 %cmp26.not, label %lor.lhs.false27, label %lor.lhs.false20.if.then62_crit_edge

lor.lhs.false20.if.then62_crit_edge:              ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false27:                                  ; preds = %lor.lhs.false20
  %mode = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i96, i32 0, i32 6, i32 2
  %38 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mode, align 4
  %mode30 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i102104, i32 0, i32 6, i32 2
  %40 = ptrtoint ptr %mode30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mode30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp31.not = icmp eq i32 %39, %41
  br i1 %cmp31.not, label %lor.lhs.false32, label %lor.lhs.false27.if.then62_crit_edge

lor.lhs.false27.if.then62_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false32:                                  ; preds = %lor.lhs.false27
  %brightness = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i96, i32 0, i32 6, i32 3
  %42 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %brightness, align 4
  %brightness35 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i102104, i32 0, i32 6, i32 3
  %44 = ptrtoint ptr %brightness35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %brightness35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp36.not = icmp eq i32 %43, %45
  br i1 %cmp36.not, label %lor.lhs.false37, label %lor.lhs.false32.if.then62_crit_edge

lor.lhs.false32.if.then62_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false37:                                  ; preds = %lor.lhs.false32
  %contrast = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i96, i32 0, i32 6, i32 4
  %46 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %contrast, align 4
  %contrast40 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i102104, i32 0, i32 6, i32 4
  %48 = ptrtoint ptr %contrast40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %contrast40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp41.not = icmp eq i32 %47, %49
  br i1 %cmp41.not, label %lor.lhs.false42, label %lor.lhs.false37.if.then62_crit_edge

lor.lhs.false37.if.then62_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false42:                                  ; preds = %lor.lhs.false37
  %flicker_reduction = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i96, i32 0, i32 6, i32 5
  %50 = ptrtoint ptr %flicker_reduction to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flicker_reduction, align 4
  %flicker_reduction45 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i102104, i32 0, i32 6, i32 5
  %52 = ptrtoint ptr %flicker_reduction45 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %flicker_reduction45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp46.not = icmp eq i32 %51, %53
  br i1 %cmp46.not, label %lor.lhs.false47, label %lor.lhs.false42.if.then62_crit_edge

lor.lhs.false42.if.then62_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false47:                                  ; preds = %lor.lhs.false42
  %overscan = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i96, i32 0, i32 6, i32 6
  %54 = ptrtoint ptr %overscan to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %overscan, align 4
  %overscan50 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i102104, i32 0, i32 6, i32 6
  %56 = ptrtoint ptr %overscan50 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %overscan50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp51.not = icmp eq i32 %55, %57
  br i1 %cmp51.not, label %lor.lhs.false52, label %lor.lhs.false47.if.then62_crit_edge

lor.lhs.false47.if.then62_crit_edge:              ; preds = %lor.lhs.false47
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false52:                                  ; preds = %lor.lhs.false47
  %saturation = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i96, i32 0, i32 6, i32 7
  %58 = ptrtoint ptr %saturation to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %saturation, align 4
  %saturation55 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i102104, i32 0, i32 6, i32 7
  %60 = ptrtoint ptr %saturation55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %saturation55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %61)
  %cmp56.not = icmp eq i32 %59, %61
  br i1 %cmp56.not, label %lor.lhs.false57, label %lor.lhs.false52.if.then62_crit_edge

lor.lhs.false52.if.then62_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false57:                                  ; preds = %lor.lhs.false52
  %hue = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i96, i32 0, i32 6, i32 8
  %62 = ptrtoint ptr %hue to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hue, align 4
  %hue60 = getelementptr inbounds %struct.drm_connector_state, ptr %retval.0.i102104, i32 0, i32 6, i32 8
  %64 = ptrtoint ptr %hue60 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %hue60, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %63, i32 %65)
  %cmp61.not = icmp eq i32 %63, %65
  br i1 %cmp61.not, label %lor.lhs.false57.cleanup_crit_edge, label %lor.lhs.false57.if.then62_crit_edge

lor.lhs.false57.if.then62_crit_edge:              ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then62

lor.lhs.false57.cleanup_crit_edge:                ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then62:                                        ; preds = %lor.lhs.false57.if.then62_crit_edge, %lor.lhs.false52.if.then62_crit_edge, %lor.lhs.false47.if.then62_crit_edge, %lor.lhs.false42.if.then62_crit_edge, %lor.lhs.false37.if.then62_crit_edge, %lor.lhs.false32.if.then62_crit_edge, %lor.lhs.false27.if.then62_crit_edge, %lor.lhs.false20.if.then62_crit_edge, %lor.lhs.false13.if.then62_crit_edge, %lor.lhs.false.if.then62_crit_edge, %drm_atomic_get_old_connector_state.exit.if.then62_crit_edge
  %connectors_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %21, i32 0, i32 3
  %66 = ptrtoint ptr %connectors_changed to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load = load i8, ptr %connectors_changed, align 2
  %bf.set = or i8 %bf.load, 16
  store i8 %bf.set, ptr %connectors_changed, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then62, %lor.lhs.false57.cleanup_crit_edge, %drm_atomic_get_new_connector_state.exit.thread.cleanup_crit_edge, %drm_atomic_get_new_connector_state.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_do_get_edid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @gud_connector_get_edid_block(ptr nocapture noundef %data, ptr nocapture noundef writeonly %buf, i32 noundef %block, i32 noundef %len) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %block, 7
  %edid_override = getelementptr inbounds %struct.gud_connector_get_edid_ctx, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %edid_override to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %edid_override, align 4
  %add = add i32 %mul, %len
  %len1 = getelementptr inbounds %struct.gud_connector_get_edid_ctx, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %2)
  %cmp = icmp ugt i32 %add, %2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %mul
  %5 = call ptr @memcpy(ptr %buf, ptr %add.ptr, i32 %len)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gud_usb_set(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gud_usb_get_u8(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gud_connector_reset(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_atomic_helper_connector_reset(ptr noundef %connector) #10
  %state = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 52
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 8
  %tv = getelementptr inbounds %struct.drm_connector_state, ptr %1, i32 0, i32 6
  %initial_tv_state = getelementptr inbounds %struct.gud_connector, ptr %connector, i32 0, i32 6
  %2 = call ptr @memcpy(ptr %tv, ptr %initial_tv_state, i32 48)
  tail call void @drm_atomic_helper_connector_tv_reset(ptr noundef %connector) #10
  %initial_brightness = getelementptr inbounds %struct.gud_connector, ptr %connector, i32 0, i32 7
  %3 = ptrtoint ptr %initial_brightness to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %initial_brightness, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp sgt i32 %4, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %state, align 8
  %brightness = getelementptr inbounds %struct.drm_connector_state, ptr %6, i32 0, i32 6, i32 3
  %7 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %brightness, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gud_connector_late_register(ptr noundef %connector) #0 align 64 {
entry:
  %props.i = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %initial_brightness = getelementptr inbounds %struct.gud_connector, ptr %connector, i32 0, i32 7
  %0 = ptrtoint ptr %initial_brightness to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %initial_brightness, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props.i) #10
  %2 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 1
  %3 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 2
  %4 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 3
  %5 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 4
  %6 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 5
  %7 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 6
  %8 = ptrtoint ptr %props.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %props.i, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %2, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %3, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %4, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %5, align 4
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %6, align 4
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %7, align 4
  %15 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %connector, align 8
  %primary.i = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %primary.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %name2.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 7
  %21 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name2.i, align 4
  %call.i = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.10, i32 noundef %20, ptr noundef %22) #10
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.gud_connector_backlight_register.exit_crit_edge, label %if.end.i

if.end.gud_connector_backlight_register.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %gud_connector_backlight_register.exit

if.end.i:                                         ; preds = %if.end
  %kdev.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 1
  %23 = ptrtoint ptr %kdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %kdev.i, align 4
  %call3.i = call ptr @backlight_device_register(ptr noundef nonnull %call.i, ptr noundef %24, ptr noundef %connector, ptr noundef nonnull @gud_connector_backlight_ops, ptr noundef nonnull %props.i) #10
  call void @kfree(ptr noundef nonnull %call.i) #10
  %cmp.i.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %call3.i to i32
  br label %gud_connector_backlight_register.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %backlight.i = getelementptr inbounds %struct.gud_connector, ptr %connector, i32 0, i32 2
  %26 = ptrtoint ptr %backlight.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call3.i, ptr %backlight.i, align 8
  br label %gud_connector_backlight_register.exit

gud_connector_backlight_register.exit:            ; preds = %if.end7.i, %if.then5.i, %if.end.gud_connector_backlight_register.exit_crit_edge
  %retval.0.i = phi i32 [ %25, %if.then5.i ], [ 0, %if.end7.i ], [ -12, %if.end.gud_connector_backlight_register.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #10
  br label %cleanup

cleanup:                                          ; preds = %gud_connector_backlight_register.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %gud_connector_backlight_register.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gud_connector_early_unregister(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %backlight = getelementptr inbounds %struct.gud_connector, ptr %connector, i32 0, i32 2
  %0 = ptrtoint ptr %backlight to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %backlight, align 8
  tail call void @backlight_device_unregister(ptr noundef %1) #10
  %backlight_work = getelementptr inbounds %struct.gud_connector, ptr %connector, i32 0, i32 3
  %call1 = tail call zeroext i1 @cancel_work_sync(ptr noundef %backlight_work) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gud_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_cleanup(ptr noundef %connector) #10
  %properties = getelementptr inbounds %struct.gud_connector, ptr %connector, i32 0, i32 4
  %0 = ptrtoint ptr %properties to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %properties, align 8
  tail call void @kfree(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %connector) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_tv_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gud_connector_backlight_update_status(ptr nocapture noundef readonly %bd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bd, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %2 = load ptr, ptr @system_long_wq, align 4
  %backlight_work = getelementptr inbounds %struct.gud_connector, ptr %1, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %backlight_work) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_tv_margin_properties(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_tv_properties(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !38, !39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/gud/gud_connector.c", i32 596, i32 8}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @gud_connector_create.__key, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/gud/gud_connector.c", i32 623, i32 2}
!5 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/gud/gud_connector.c", i32 628, i32 2}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/gud/gud_connector.c", i32 679, i32 27}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/gud/gud_connector.c", i32 105, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @gud_connector_backlight_update_status_work._entry, !11, !"_entry", i1 false, i1 false}
!16 = !{ptr @gud_connector_backlight_update_status_work._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @gud_connector_helper_funcs, !18, !"gud_connector_helper_funcs", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/gud/gud_connector.c", i32 317, i32 48}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/gud/gud_connector.c", i32 237, i32 27}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/gud/gud_connector.c", i32 258, i32 27}
!23 = !{ptr @gud_connector_funcs, !24, !"gud_connector_funcs", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/gud/gud_connector.c", i32 362, i32 41}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/gud/gud_connector.c", i32 135, i32 31}
!27 = !{ptr @gud_connector_backlight_ops, !28, !"gud_connector_backlight_ops", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/gud/gud_connector.c", i32 119, i32 35}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/gud/gud_connector.c", i32 510, i32 3}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/gud/gud_connector.c", i32 554, i32 4}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/gud/gud_connector.c", i32 406, i32 27}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/gud/gud_connector.c", i32 50, i32 2}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @gud_conn_err._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @gud_conn_err._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{!"auto-init"}
!52 = !{i64 2148584813}
!53 = !{i64 2148499277, i64 2148499309, i64 2148499338, i64 2148499372, i64 2148499403, i64 2148499426}
!54 = !{i64 2149630783}
!55 = !{i8 0, i8 2}
