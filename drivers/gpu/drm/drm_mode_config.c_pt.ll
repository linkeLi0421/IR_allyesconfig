; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_mode_config.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_mode_config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_mode_config_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_mode_config_reset\09\09\09\09"
module asm "\09.long\09__crc_drm_mode_config_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_config_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_config_reset\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_config_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drmm_mode_config_init\22, \22a\22\09"
module asm "\09.weak\09__crc_drmm_mode_config_init\09\09\09\09"
module asm "\09.long\09__crc_drmm_mode_config_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drmm_mode_config_init:\09\09\09\09\09"
module asm "\09.asciz \09\22drmm_mode_config_init\22\09\09\09\09\09"
module asm "__kstrtabns_drmm_mode_config_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_mode_config_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_mode_config_cleanup\09\09\09\09"
module asm "\09.long\09__crc_drm_mode_config_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_mode_config_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_mode_config_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_drm_mode_config_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ww_class = type { %struct.atomic_t, %struct.lock_class_key, %struct.lock_class_key, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.drm_prop_enum_list = type { i32, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.anon.84 = type { i32, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.drm_mode_card_res = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/drm_mode_config.c\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_drm_mode_config_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_config_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_config_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_config_reset to i32), ptr @__kstrtab_drm_mode_config_reset, ptr @__kstrtabns_drm_mode_config_reset }, section "___ksymtab+drm_mode_config_reset", align 4
@drmm_mode_config_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&dev->mode_config.mutex\00", [40 x i8] zeroinitializer }, align 32
@drmm_mode_config_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&dev->mode_config.idr_mutex\00", [36 x i8] zeroinitializer }, align 32
@drmm_mode_config_init.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&dev->mode_config.fb_lock\00", [38 x i8] zeroinitializer }, align 32
@drmm_mode_config_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&dev->mode_config.blob_lock\00", [36 x i8] zeroinitializer }, align 32
@drmm_mode_config_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&dev->mode_config.connector_list_lock\00", [58 x i8] zeroinitializer }, align 32
@drmm_mode_config_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"(work_completion)(&dev->mode_config.connector_free_work)\00", [39 x i8] zeroinitializer }, align 32
@reservation_ww_class = external dso_local global %struct.ww_class, align 4
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drm_mode_config_init_release\00", [35 x i8] zeroinitializer }, align 32
@__kstrtab_drmm_mode_config_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_drmm_mode_config_init = external dso_local constant [0 x i8], align 1
@__ksymtab_drmm_mode_config_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drmm_mode_config_init to i32), ptr @__kstrtab_drmm_mode_config_init, ptr @__kstrtabns_drmm_mode_config_init }, section "___ksymtab+drmm_mode_config_init", align 4
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"connector %s leaked!\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"[leaked fb]\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"framebuffer[%u]:\0A\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_drm_mode_config_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_mode_config_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_mode_config_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_mode_config_cleanup to i32), ptr @__kstrtab_drm_mode_config_cleanup, ptr @__kstrtabns_drm_mode_config_cleanup }, section "___ksymtab+drm_mode_config_cleanup", align 4
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Missing primary plane on [CRTC:%d:%s]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"[CRTC:%d:%s] must not have both a cursor plane and a cursor_set func\00", [59 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"[CRTC:%d:%s] must not have both a cursor plane and a cursor_set2 func\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"[CRTC:%d:%s] must not have both a cursor plane and a cursor_move func\00", [58 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"Bogus primary plane possible_crtcs: [PLANE:%d:%s] must be compatible with [CRTC:%d:%s]\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Primary plane [PLANE:%d:%s] used for multiple CRTCs\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"Bogus cursor plane possible_crtcs: [PLANE:%d:%s] must be compatible with [CRTC:%d:%s]\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Cursor plane [PLANE:%d:%s] used for multiple CRTCs\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"Must have as many primary planes as there are CRTCs, but have %u primary planes and %u CRTCs\00", [35 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@drm_plane_type_enum_list = internal constant { [3 x %struct.drm_prop_enum_list], [40 x i8] } { [3 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.49 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.50 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.51 }], [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SRC_X\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SRC_Y\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SRC_W\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SRC_H\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CRTC_X\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CRTC_Y\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CRTC_W\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CRTC_H\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FB_ID\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IN_FENCE_FD\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"OUT_FENCE_PTR\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CRTC_ID\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FB_DAMAGE_CLIPS\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ACTIVE\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MODE_ID\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VRR_ENABLED\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DEGAMMA_LUT\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DEGAMMA_LUT_SIZE\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CTM\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"GAMMA_LUT\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"GAMMA_LUT_SIZE\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IN_FORMATS\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Overlay\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Primary\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Cursor\00", [25 x i8] zeroinitializer }, align 32
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/ww_mutex.h\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"!ctx->contending_lock\00", [42 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctx->acquired\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/drm/drm_modeset_lock.h\00", [33 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [125 x i8], [35 x i8] } { [125 x i8] c"possible_clones mismatch: [ENCODER:%d:%s] mask=0x%x possible_clones=0x%x vs. [ENCODER:%d:%s] mask=0x%x possible_clones=0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"Bogus possible_clones: [ENCODER:%d:%s] possible_clones=0x%x (full encoder mask=0x%x)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Bogus possible_crtcs: [ENCODER:%d:%s] possible_crtcs=0x%x (full crtc mask=0x%x)\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 113, i32 7 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 401, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 403, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 404, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 405, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 417, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 420, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 458, i32 9 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 507, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 540, i32 44 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 542, i32 18 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 645, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 648, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 651, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 654, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 659, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 663, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 669, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 673, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 685, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 378, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 228, i32 6 }
@___asan_gen_.147 = private unnamed_addr constant [25 x i8] c"drm_plane_type_enum_list\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 212, i32 40 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 235, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 241, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 247, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 253, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 259, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 265, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 271, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 277, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 283, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 289, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 295, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 301, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 308, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 314, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 321, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 327, i32 4 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 334, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 341, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 348, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 355, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 362, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 369, i32 8 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 213, i32 28 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 214, i32 28 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 215, i32 27 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 297, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [28 x i8] c"../include/linux/ww_mutex.h\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 191, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant [34 x i8] c"../include/drm/drm_modeset_lock.h\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 113, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 583, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 594, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.247 = private constant [37 x i8] c"../drivers/gpu/drm/drm_mode_config.c\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 617, i32 2 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__ksymtab_drm_mode_config_cleanup, ptr @__ksymtab_drm_mode_config_reset, ptr @__ksymtab_drmm_mode_config_init, ptr @.str, ptr @drmm_mode_config_init.__key, ptr @.str.1, ptr @drmm_mode_config_init.__key.2, ptr @.str.3, ptr @drmm_mode_config_init.__key.4, ptr @.str.5, ptr @drmm_mode_config_init.__key.6, ptr @.str.7, ptr @drmm_mode_config_init.__key.8, ptr @.str.9, ptr @drmm_mode_config_init.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @xa_init_flags.__key, ptr @.str.25, ptr @.str.26, ptr @drm_plane_type_enum_list, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drmm_mode_config_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drmm_mode_config_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drmm_mode_config_init.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drmm_mode_config_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drmm_mode_config_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drmm_mode_config_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_plane_type_enum_list to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 125, i32 160, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_modeset_register_all(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @drm_plane_register_all(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @drm_crtc_register_all(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_crtc_crit_edge

if.end.err_crtc_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_crtc

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @drm_encoder_register_all(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err_encoder_crit_edge

if.end4.err_encoder_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_encoder

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @drm_connector_register_all(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %err_connector

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_connector:                                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_encoder_unregister_all(ptr noundef %dev) #7
  br label %err_encoder

err_encoder:                                      ; preds = %err_connector, %if.end4.err_encoder_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end4.err_encoder_crit_edge ], [ %call9, %err_connector ]
  tail call void @drm_crtc_unregister_all(ptr noundef %dev) #7
  br label %err_crtc

err_crtc:                                         ; preds = %err_encoder, %if.end.err_crtc_crit_edge
  %ret.1 = phi i32 [ %call1, %if.end.err_crtc_crit_edge ], [ %ret.0, %err_encoder ]
  tail call void @drm_plane_unregister_all(ptr noundef %dev) #7
  br label %cleanup

cleanup:                                          ; preds = %err_crtc, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %ret.1, %err_crtc ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_register_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_register_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_register_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_unregister_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_unregister_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_unregister_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_modeset_unregister_all(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_unregister_all(ptr noundef %dev) #7
  tail call void @drm_encoder_unregister_all(ptr noundef %dev) #7
  tail call void @drm_crtc_unregister_all(ptr noundef %dev) #7
  tail call void @drm_plane_unregister_all(ptr noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_mode_getresources(ptr noundef %dev, ptr nocapture noundef %data, ptr noundef %file_priv) local_unnamed_addr #0 align 64 {
entry:
  %conn_iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter) #7
  %0 = ptrtoint ptr %conn_iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter, align 4, !annotation !133
  %1 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !133
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %3 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 24
  %5 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %7 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %6, 2
  %and2.i.i = and i32 %and.i.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %fbs_lock = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %fbs_lock, i32 noundef 0) #7
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %data, align 8
  %conv2 = trunc i64 %10 to i32
  %11 = inttoptr i32 %conv2 to ptr
  %fbs = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 20
  %12 = ptrtoint ptr %fbs to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn272 = load ptr, ptr %fbs, align 4
  %cmp5.not273 = icmp eq ptr %.pn272, %fbs
  br i1 %cmp5.not273, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %count_fbs = getelementptr inbounds %struct.drm_mode_card_res, ptr %data, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end15.for.body_crit_edge, %for.body.lr.ph
  %.pn276 = phi ptr [ %.pn272, %for.body.lr.ph ], [ %.pn, %if.end15.for.body_crit_edge ]
  %count.0274 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end15.for.body_crit_edge ]
  %13 = ptrtoint ptr %count_fbs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count_fbs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %count.0274, i32 %14)
  %cmp7 = icmp ult i32 %count.0274, %14
  br i1 %cmp7, label %land.lhs.true, label %for.body.if.end15_crit_edge

for.body.if.end15_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

land.lhs.true:                                    ; preds = %for.body
  %add.ptr9 = getelementptr i32, ptr %11, i32 %count.0274
  %base = getelementptr i8, ptr %.pn276, i32 -104
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 113) #7
  %17 = tail call i32 @llvm.read_register.i32(metadata !123) #7
  %and.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 4
  %19 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !134
  %and.i = and i32 %19, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %20 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr9, i32 %16, i32 -1226833921) #7, !srcloc !137
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %19) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %land.lhs.true.if.end15_crit_edge, label %if.then13

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %fbs_lock) #7
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %for.body.if.end15_crit_edge
  %inc = add i32 %count.0274, 1
  %21 = ptrtoint ptr %.pn276 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn276, align 4
  %cmp5.not = icmp eq ptr %.pn, %fbs
  br i1 %cmp5.not, label %if.end15.for.end_crit_edge, label %if.end15.for.body_crit_edge

if.end15.for.body_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end15.for.end_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end15.for.end_crit_edge, %if.end.for.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %inc, %if.end15.for.end_crit_edge ]
  %count_fbs21 = getelementptr inbounds %struct.drm_mode_card_res, ptr %data, i32 0, i32 4
  %22 = ptrtoint ptr %count_fbs21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %count.0.lcssa, ptr %count_fbs21, align 8
  tail call void @mutex_unlock(ptr noundef %fbs_lock) #7
  %max_height = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 26
  %23 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %max_height, align 4
  %max_height23 = getelementptr inbounds %struct.drm_mode_card_res, ptr %data, i32 0, i32 11
  %25 = ptrtoint ptr %max_height23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %max_height23, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 24
  %26 = ptrtoint ptr %min_height to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %min_height, align 4
  %min_height25 = getelementptr inbounds %struct.drm_mode_card_res, ptr %data, i32 0, i32 10
  %28 = ptrtoint ptr %min_height25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %min_height25, align 8
  %max_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 25
  %29 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %max_width, align 4
  %max_width27 = getelementptr inbounds %struct.drm_mode_card_res, ptr %data, i32 0, i32 9
  %31 = ptrtoint ptr %max_width27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %max_width27, align 4
  %min_width = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 23
  %32 = ptrtoint ptr %min_width to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %min_width, align 4
  %min_width29 = getelementptr inbounds %struct.drm_mode_card_res, ptr %data, i32 0, i32 8
  %34 = ptrtoint ptr %min_width29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %min_width29, align 8
  %crtc_id_ptr = getelementptr inbounds %struct.drm_mode_card_res, ptr %data, i32 0, i32 1
  %35 = ptrtoint ptr %crtc_id_ptr to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %crtc_id_ptr, align 8
  %conv36 = trunc i64 %36 to i32
  %37 = inttoptr i32 %conv36 to ptr
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 20
  %38 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn252277 = load ptr, ptr %crtc_list, align 4
  %cmp45.not278 = icmp eq ptr %.pn252277, %crtc_list
  br i1 %cmp45.not278, label %for.end.for.end85_crit_edge, label %for.body48.lr.ph

for.end.for.end85_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end85

for.body48.lr.ph:                                 ; preds = %for.end
  %count_crtcs = getelementptr inbounds %struct.drm_mode_card_res, ptr %data, i32 0, i32 5
  br label %for.body48

for.body48:                                       ; preds = %for.inc79.for.body48_crit_edge, %for.body48.lr.ph
  %.pn252281 = phi ptr [ %.pn252277, %for.body48.lr.ph ], [ %.pn252, %for.inc79.for.body48_crit_edge ]
  %count.1279 = phi i32 [ 0, %for.body48.lr.ph ], [ %count.2, %for.inc79.for.body48_crit_edge ]
  %base49 = getelementptr i8, ptr %.pn252281, i32 120
  %39 = ptrtoint ptr %base49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %base49, align 8
  %call51 = tail call zeroext i1 @drm_lease_held(ptr noundef %file_priv, i32 noundef %40) #7
  br i1 %call51, label %if.then52, label %for.body48.for.inc79_crit_edge

for.body48.for.inc79_crit_edge:                   ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc79

if.then52:                                        ; preds = %for.body48
  %41 = ptrtoint ptr %count_crtcs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %count_crtcs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.1279, i32 %42)
  %cmp53 = icmp ult i32 %count.1279, %42
  br i1 %cmp53, label %land.lhs.true55, label %if.then52.if.end76_crit_edge

if.then52.if.end76_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

land.lhs.true55:                                  ; preds = %if.then52
  %add.ptr59 = getelementptr i32, ptr %37, i32 %count.1279
  %43 = ptrtoint ptr %base49 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %base49, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 132) #7
  %45 = tail call i32 @llvm.read_register.i32(metadata !123) #7
  %and.i.i.i254 = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i254 to ptr
  %cpu_domain.i.i255 = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 4
  %47 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i255) #4, !srcloc !134
  %and.i256 = and i32 %47, -13
  %or.i257 = or i32 %and.i256, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i257) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %48 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr59, i32 %44, i32 -1226833921) #7, !srcloc !138
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %47) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool74.not = icmp eq i32 %48, 0
  br i1 %tobool74.not, label %land.lhs.true55.if.end76_crit_edge, label %land.lhs.true55.cleanup_crit_edge

land.lhs.true55.cleanup_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true55.if.end76_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.end76:                                         ; preds = %land.lhs.true55.if.end76_crit_edge, %if.then52.if.end76_crit_edge
  %inc77 = add i32 %count.1279, 1
  br label %for.inc79

for.inc79:                                        ; preds = %if.end76, %for.body48.for.inc79_crit_edge
  %count.2 = phi i32 [ %inc77, %if.end76 ], [ %count.1279, %for.body48.for.inc79_crit_edge ]
  %49 = ptrtoint ptr %.pn252281 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn252 = load ptr, ptr %.pn252281, align 4
  %cmp45.not = icmp eq ptr %.pn252, %crtc_list
  br i1 %cmp45.not, label %for.inc79.for.end85_crit_edge, label %for.inc79.for.body48_crit_edge

for.inc79.for.body48_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body48

for.inc79.for.end85_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end85

for.end85:                                        ; preds = %for.inc79.for.end85_crit_edge, %for.end.for.end85_crit_edge
  %count.1.lcssa = phi i32 [ 0, %for.end.for.end85_crit_edge ], [ %count.2, %for.inc79.for.end85_crit_edge ]
  %count_crtcs86 = getelementptr inbounds %struct.drm_mode_card_res, ptr %data, i32 0, i32 5
  %50 = ptrtoint ptr %count_crtcs86 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %count.1.lcssa, ptr %count_crtcs86, align 4
  %encoder_id_ptr = getelementptr inbounds %struct.drm_mode_card_res, ptr %data, i32 0, i32 3
  %51 = ptrtoint ptr %encoder_id_ptr to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %encoder_id_ptr, align 8
  %conv93 = trunc i64 %52 to i32
  %53 = inttoptr i32 %conv93 to ptr
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  %54 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn253283 = load ptr, ptr %encoder_list, align 4
  %cmp103.not284 = icmp eq ptr %.pn253283, %encoder_list
  br i1 %cmp103.not284, label %for.end85.for.end138_crit_edge, label %for.body106.lr.ph

for.end85.for.end138_crit_edge:                   ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end138

for.body106.lr.ph:                                ; preds = %for.end85
  %count_encoders = getelementptr inbounds %struct.drm_mode_card_res, ptr %data, i32 0, i32 7
  br label %for.body106

for.body106:                                      ; preds = %if.end130.for.body106_crit_edge, %for.body106.lr.ph
  %.pn253287 = phi ptr [ %.pn253283, %for.body106.lr.ph ], [ %.pn253, %if.end130.for.body106_crit_edge ]
  %count.3285 = phi i32 [ 0, %for.body106.lr.ph ], [ %inc131, %if.end130.for.body106_crit_edge ]
  %55 = ptrtoint ptr %count_encoders to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %count_encoders, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %count.3285, i32 %56)
  %cmp107 = icmp ult i32 %count.3285, %56
  br i1 %cmp107, label %land.lhs.true109, label %for.body106.if.end130_crit_edge

for.body106.if.end130_crit_edge:                  ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

land.lhs.true109:                                 ; preds = %for.body106
  %add.ptr113 = getelementptr i32, ptr %53, i32 %count.3285
  %base115 = getelementptr i8, ptr %.pn253287, i32 8
  %57 = ptrtoint ptr %base115 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %base115, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 143) #7
  %59 = tail call i32 @llvm.read_register.i32(metadata !123) #7
  %and.i.i.i258 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i258 to ptr
  %cpu_domain.i.i259 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 4
  %61 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i259) #4, !srcloc !134
  %and.i260 = and i32 %61, -13
  %or.i261 = or i32 %and.i260, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i261) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %62 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr113, i32 %58, i32 -1226833921) #7, !srcloc !139
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #7, !srcloc !135
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool128.not = icmp eq i32 %62, 0
  br i1 %tobool128.not, label %land.lhs.true109.if.end130_crit_edge, label %land.lhs.true109.cleanup_crit_edge

land.lhs.true109.cleanup_crit_edge:               ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true109.if.end130_crit_edge:             ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

if.end130:                                        ; preds = %land.lhs.true109.if.end130_crit_edge, %for.body106.if.end130_crit_edge
  %inc131 = add i32 %count.3285, 1
  %63 = ptrtoint ptr %.pn253287 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn253 = load ptr, ptr %.pn253287, align 4
  %cmp103.not = icmp eq ptr %.pn253, %encoder_list
  br i1 %cmp103.not, label %if.end130.for.end138_crit_edge, label %if.end130.for.body106_crit_edge

if.end130.for.body106_crit_edge:                  ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body106

if.end130.for.end138_crit_edge:                   ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end138

for.end138:                                       ; preds = %if.end130.for.end138_crit_edge, %for.end85.for.end138_crit_edge
  %count.3.lcssa = phi i32 [ 0, %for.end85.for.end138_crit_edge ], [ %inc131, %if.end130.for.end138_crit_edge ]
  %count_encoders139 = getelementptr inbounds %struct.drm_mode_card_res, ptr %data, i32 0, i32 7
  %64 = ptrtoint ptr %count_encoders139 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %count.3.lcssa, ptr %count_encoders139, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %dev, ptr noundef nonnull %conn_iter) #7
  %connector_id_ptr = getelementptr inbounds %struct.drm_mode_card_res, ptr %data, i32 0, i32 2
  %65 = ptrtoint ptr %connector_id_ptr to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %connector_id_ptr, align 8
  %conv146 = trunc i64 %66 to i32
  %67 = inttoptr i32 %conv146 to ptr
  %writeback_connectors = getelementptr inbounds %struct.drm_file, ptr %file_priv, i32 0, i32 5
  %count_connectors = getelementptr inbounds %struct.drm_mode_card_res, ptr %data, i32 0, i32 6
  br label %while.cond.outer.outer

while.cond.outer.outer:                           ; preds = %if.end182, %for.end138
  %count.4.ph.ph = phi i32 [ %inc183, %if.end182 ], [ 0, %for.end138 ]
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end154.while.cond.outer_crit_edge, %while.cond.outer.outer
  br label %while.cond

while.cond:                                       ; preds = %land.lhs.true150.while.cond_crit_edge, %while.cond.outer
  %call147 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #7
  %tobool148.not = icmp eq ptr %call147, null
  br i1 %tobool148.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %68 = ptrtoint ptr %writeback_connectors to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %writeback_connectors, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool149.not = icmp eq i8 %69, 0
  br i1 %tobool149.not, label %land.lhs.true150, label %while.body.if.end154_crit_edge

while.body.if.end154_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

land.lhs.true150:                                 ; preds = %while.body
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %call147, i32 0, i32 10
  %70 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %connector_type, align 8
  %cmp151 = icmp eq i32 %71, 18
  br i1 %cmp151, label %land.lhs.true150.while.cond_crit_edge, label %land.lhs.true150.if.end154_crit_edge

land.lhs.true150.if.end154_crit_edge:             ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end154

land.lhs.true150.while.cond_crit_edge:            ; preds = %land.lhs.true150
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.end154:                                        ; preds = %land.lhs.true150.if.end154_crit_edge, %while.body.if.end154_crit_edge
  %base155 = getelementptr inbounds %struct.drm_connector, ptr %call147, i32 0, i32 6
  %72 = ptrtoint ptr %base155 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %base155, align 8
  %call157 = call zeroext i1 @drm_lease_held(ptr noundef %file_priv, i32 noundef %73) #7
  br i1 %call157, label %if.then158, label %if.end154.while.cond.outer_crit_edge

if.end154.while.cond.outer_crit_edge:             ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.outer

if.then158:                                       ; preds = %if.end154
  %74 = ptrtoint ptr %count_connectors to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %count_connectors, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %count.4.ph.ph, i32 %75)
  %cmp159 = icmp ult i32 %count.4.ph.ph, %75
  br i1 %cmp159, label %land.lhs.true161, label %if.then158.if.end182_crit_edge

if.then158.if.end182_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end182

land.lhs.true161:                                 ; preds = %if.then158
  %add.ptr165 = getelementptr i32, ptr %67, i32 %count.4.ph.ph
  %76 = ptrtoint ptr %base155 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %base155, align 8
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 160) #7
  %78 = call i32 @llvm.read_register.i32(metadata !123) #7
  %and.i.i.i262 = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i262 to ptr
  %cpu_domain.i.i263 = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 4
  %80 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i263) #4, !srcloc !134
  %and.i264 = and i32 %80, -13
  %or.i265 = or i32 %and.i264, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i265) #7, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %81 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr165, i32 %77, i32 -1226833921) #7, !srcloc !141
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %80) #7, !srcloc !135
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool180.not = icmp eq i32 %81, 0
  br i1 %tobool180.not, label %land.lhs.true161.if.end182_crit_edge, label %if.then181

land.lhs.true161.if.end182_crit_edge:             ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end182

if.then181:                                       ; preds = %land.lhs.true161
  call void @__sanitizer_cov_trace_pc() #9
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #7
  br label %cleanup

if.end182:                                        ; preds = %land.lhs.true161.if.end182_crit_edge, %if.then158.if.end182_crit_edge
  %inc183 = add i32 %count.4.ph.ph, 1
  br label %while.cond.outer.outer

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %count_connectors to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %count.4.ph.ph, ptr %count_connectors, align 8
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then181, %land.lhs.true109.cleanup_crit_edge, %land.lhs.true55.cleanup_crit_edge, %if.then13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then13 ], [ -14, %if.then181 ], [ 0, %while.end ], [ -95, %entry.cleanup_crit_edge ], [ -14, %land.lhs.true109.cleanup_crit_edge ], [ -14, %land.lhs.true55.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_lease_held(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_mode_config_reset(ptr noundef %dev) #0 align 64 {
entry:
  %conn_iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter) #7
  %0 = ptrtoint ptr %conn_iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter, align 4, !annotation !133
  %1 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !133
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 18
  %3 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn99 = load ptr, ptr %plane_list, align 4
  %cmp.not101 = icmp eq ptr %.pn99, %plane_list
  br i1 %cmp.not101, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn102 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn99, %entry.for.body_crit_edge ]
  %funcs = getelementptr i8, ptr %.pn102, i32 176
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %reset = getelementptr inbounds %struct.drm_plane_funcs, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %plane.0103 = getelementptr i8, ptr %.pn102, i32 -4
  tail call void %7(ptr noundef %plane.0103) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %.pn102 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn102, align 4
  %cmp.not = icmp eq ptr %.pn, %plane_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 20
  %9 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn97104 = load ptr, ptr %crtc_list, align 4
  %cmp19.not106 = icmp eq ptr %.pn97104, %crtc_list
  br i1 %cmp19.not106, label %for.end.for.end35_crit_edge, label %for.end.for.body21_crit_edge

for.end.for.body21_crit_edge:                     ; preds = %for.end
  br label %for.body21

for.end.for.end35_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end35

for.body21:                                       ; preds = %for.inc29.for.body21_crit_edge, %for.end.for.body21_crit_edge
  %.pn97107 = phi ptr [ %.pn97, %for.inc29.for.body21_crit_edge ], [ %.pn97104, %for.end.for.body21_crit_edge ]
  %funcs22 = getelementptr i8, ptr %.pn97107, i32 396
  %10 = ptrtoint ptr %funcs22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %funcs22, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool24.not = icmp eq ptr %13, null
  br i1 %tobool24.not, label %for.body21.for.inc29_crit_edge, label %if.then25

for.body21.for.inc29_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc29

if.then25:                                        ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #9
  %crtc.0108 = getelementptr i8, ptr %.pn97107, i32 -8
  tail call void %13(ptr noundef %crtc.0108) #7
  br label %for.inc29

for.inc29:                                        ; preds = %if.then25, %for.body21.for.inc29_crit_edge
  %14 = ptrtoint ptr %.pn97107 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn97 = load ptr, ptr %.pn97107, align 4
  %cmp19.not = icmp eq ptr %.pn97, %crtc_list
  br i1 %cmp19.not, label %for.inc29.for.end35_crit_edge, label %for.inc29.for.body21_crit_edge

for.inc29.for.body21_crit_edge:                   ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body21

for.inc29.for.end35_crit_edge:                    ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end35

for.end35:                                        ; preds = %for.inc29.for.end35_crit_edge, %for.end.for.end35_crit_edge
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  %15 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn98109 = load ptr, ptr %encoder_list, align 4
  %cmp45.not111 = icmp eq ptr %.pn98109, %encoder_list
  br i1 %cmp45.not111, label %for.end35.for.end63_crit_edge, label %for.end35.for.body47_crit_edge

for.end35.for.body47_crit_edge:                   ; preds = %for.end35
  br label %for.body47

for.end35.for.end63_crit_edge:                    ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end63

for.body47:                                       ; preds = %for.inc57.for.body47_crit_edge, %for.end35.for.body47_crit_edge
  %.pn98112 = phi ptr [ %.pn98, %for.inc57.for.body47_crit_edge ], [ %.pn98109, %for.end35.for.body47_crit_edge ]
  %encoder.0113 = getelementptr i8, ptr %.pn98112, i32 -4
  %funcs48 = getelementptr i8, ptr %.pn98112, i32 60
  %16 = ptrtoint ptr %funcs48 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %funcs48, align 4
  %tobool49.not = icmp eq ptr %17, null
  br i1 %tobool49.not, label %for.body47.for.inc57_crit_edge, label %land.lhs.true

for.body47.for.inc57_crit_edge:                   ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc57

land.lhs.true:                                    ; preds = %for.body47
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool52.not = icmp eq ptr %19, null
  br i1 %tobool52.not, label %land.lhs.true.for.inc57_crit_edge, label %if.then53

land.lhs.true.for.inc57_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc57

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %19(ptr noundef %encoder.0113) #7
  br label %for.inc57

for.inc57:                                        ; preds = %if.then53, %land.lhs.true.for.inc57_crit_edge, %for.body47.for.inc57_crit_edge
  %20 = ptrtoint ptr %.pn98112 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn98 = load ptr, ptr %.pn98112, align 4
  %cmp45.not = icmp eq ptr %.pn98, %encoder_list
  br i1 %cmp45.not, label %for.inc57.for.end63_crit_edge, label %for.inc57.for.body47_crit_edge

for.inc57.for.body47_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body47

for.inc57.for.end63_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end63

for.end63:                                        ; preds = %for.inc57.for.end63_crit_edge, %for.end35.for.end63_crit_edge
  call void @drm_connector_list_iter_begin(ptr noundef %dev, ptr noundef nonnull %conn_iter) #7
  %call114 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #7
  %tobool64.not115 = icmp eq ptr %call114, null
  br i1 %tobool64.not115, label %for.end63.while.end_crit_edge, label %for.end63.while.body_crit_edge

for.end63.while.body_crit_edge:                   ; preds = %for.end63
  br label %while.body

for.end63.while.end_crit_edge:                    ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end71.while.body_crit_edge, %for.end63.while.body_crit_edge
  %call116 = phi ptr [ %call, %if.end71.while.body_crit_edge ], [ %call114, %for.end63.while.body_crit_edge ]
  %funcs65 = getelementptr inbounds %struct.drm_connector, ptr %call116, i32 0, i32 21
  %21 = ptrtoint ptr %funcs65 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs65, align 8
  %reset66 = getelementptr inbounds %struct.drm_connector_funcs, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %reset66 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reset66, align 4
  %tobool67.not = icmp eq ptr %24, null
  br i1 %tobool67.not, label %while.body.if.end71_crit_edge, label %if.then68

while.body.if.end71_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then68:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void %24(ptr noundef nonnull %call116) #7
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %while.body.if.end71_crit_edge
  %call = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #7
  %tobool64.not = icmp eq ptr %call, null
  br i1 %tobool64.not, label %if.end71.while.end_crit_edge, label %if.end71.while.body_crit_edge

if.end71.while.body_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end71.while.end_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end71.while.end_crit_edge, %for.end63.while.end_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drmm_mode_config_init(ptr noundef %dev) #0 align 64 {
entry:
  %modeset_ctx = alloca %struct.drm_modeset_acquire_ctx, align 4
  %resv_ctx = alloca %struct.ww_acquire_ctx, align 4
  %resv = alloca %struct.dma_resv, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30
  tail call void @__mutex_init(ptr noundef %mode_config, ptr noundef nonnull @.str.1, ptr noundef nonnull @drmm_mode_config_init.__key) #7
  %connection_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 1
  tail call void @drm_modeset_lock_init(ptr noundef %connection_mutex) #7
  %idr_mutex = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 3
  tail call void @__mutex_init(ptr noundef %idr_mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @drmm_mode_config_init.__key.2) #7
  %fb_lock = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 6
  tail call void @__mutex_init(ptr noundef %fb_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @drmm_mode_config_init.__key.4) #7
  %blob_lock = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 33
  tail call void @__mutex_init(ptr noundef %blob_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @drmm_mode_config_init.__key.6) #7
  %fb_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 8
  %0 = ptrtoint ptr %fb_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %fb_list, ptr %fb_list, align 4
  %prev.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 8, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %fb_list, ptr %prev.i, align 4
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 20
  %2 = ptrtoint ptr %crtc_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %crtc_list, ptr %crtc_list, align 4
  %prev.i84 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 20, i32 1
  %3 = ptrtoint ptr %prev.i84 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %crtc_list, ptr %prev.i84, align 4
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 12
  %4 = ptrtoint ptr %connector_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %connector_list, ptr %connector_list, align 4
  %prev.i85 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 12, i32 1
  %5 = ptrtoint ptr %prev.i85 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %connector_list, ptr %prev.i85, align 4
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  %6 = ptrtoint ptr %encoder_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %encoder_list, ptr %encoder_list, align 4
  %prev.i86 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16, i32 1
  %7 = ptrtoint ptr %prev.i86 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %encoder_list, ptr %prev.i86, align 4
  %property_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 21
  %8 = ptrtoint ptr %property_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %property_list, ptr %property_list, align 4
  %prev.i87 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 21, i32 1
  %9 = ptrtoint ptr %prev.i87 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %property_list, ptr %prev.i87, align 4
  %property_blob_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 34
  %10 = ptrtoint ptr %property_blob_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %property_blob_list, ptr %property_blob_list, align 4
  %prev.i88 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 34, i32 1
  %11 = ptrtoint ptr %prev.i88 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %property_blob_list, ptr %prev.i88, align 4
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 18
  %12 = ptrtoint ptr %plane_list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %plane_list, ptr %plane_list, align 4
  %prev.i89 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 18, i32 1
  %13 = ptrtoint ptr %prev.i89 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %plane_list, ptr %prev.i89, align 4
  %privobj_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 22
  %14 = ptrtoint ptr %privobj_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %privobj_list, ptr %privobj_list, align 4
  %prev.i90 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 22, i32 1
  %15 = ptrtoint ptr %prev.i90 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %privobj_list, ptr %prev.i90, align 4
  %object_idr = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %object_idr, ptr noundef nonnull @.str.25, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 4, i32 0, i32 1
  %16 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 4, i32 0, i32 2
  %17 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 4, i32 1
  %18 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 4, i32 2
  %19 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %idr_next.i.i, align 4
  %tile_idr = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %tile_idr, ptr noundef nonnull @.str.25, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i.i91 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %xa_flags.i.i.i91 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 67108868, ptr %xa_flags.i.i.i91, align 4
  %xa_head.i.i.i92 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 5, i32 0, i32 2
  %21 = ptrtoint ptr %xa_head.i.i.i92 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %xa_head.i.i.i92, align 4
  %idr_base.i.i93 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 5, i32 1
  %22 = ptrtoint ptr %idr_base.i.i93 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %idr_base.i.i93, align 4
  %idr_next.i.i94 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 5, i32 2
  %23 = ptrtoint ptr %idr_next.i.i94 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %idr_next.i.i94, align 4
  %connector_ida = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %connector_ida, ptr noundef nonnull @.str.25, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #7
  %xa_flags.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 11, i32 0, i32 1
  %24 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 67108869, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 11, i32 0, i32 2
  %25 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %xa_head.i.i, align 4
  %connector_list_lock = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %connector_list_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @drmm_mode_config_init.__key.8, i16 noundef signext 3) #7
  %connector_free_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 13
  %26 = ptrtoint ptr %connector_free_list to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %connector_free_list, align 4
  %connector_free_work = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 14
  tail call void @__init_work(ptr noundef %connector_free_work, i32 noundef 0) #7
  %27 = ptrtoint ptr %connector_free_work to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %connector_free_work, align 4
  %lockdep_map = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 14, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @drmm_mode_config_init.__key.10, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry34 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 14, i32 1
  %28 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry34, ptr %entry34, align 4
  %prev.i95 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 14, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i95 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry34, ptr %prev.i95, align 4
  %func = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 14, i32 2
  %30 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @drm_connector_free_work_fn, ptr %func, align 4
  %call.i = tail call i32 @drm_connector_create_standard_properties(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.drm_mode_create_standard_properties.exit_crit_edge

entry.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call ptr @drm_property_create_enum(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull @.str.26, ptr noundef nonnull @drm_plane_type_enum_list, i32 noundef 3) #7
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end4.i

if.end.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end4.i:                                        ; preds = %if.end.i
  %plane_type_property.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 40
  %31 = ptrtoint ptr %plane_type_property.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call1.i, ptr %plane_type_property.i, align 4
  %call5.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @.str.27, i64 noundef 0, i64 noundef 4294967295) #7
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end4.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end8.i

if.end4.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end8.i:                                        ; preds = %if.end4.i
  %prop_src_x.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 41
  %32 = ptrtoint ptr %prop_src_x.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call5.i, ptr %prop_src_x.i, align 4
  %call10.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @.str.28, i64 noundef 0, i64 noundef 4294967295) #7
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end8.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end13.i

if.end8.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end13.i:                                       ; preds = %if.end8.i
  %prop_src_y.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 42
  %33 = ptrtoint ptr %prop_src_y.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call10.i, ptr %prop_src_y.i, align 4
  %call15.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @.str.29, i64 noundef 0, i64 noundef 4294967295) #7
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %if.end13.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end18.i

if.end13.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end18.i:                                       ; preds = %if.end13.i
  %prop_src_w.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 43
  %34 = ptrtoint ptr %prop_src_w.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call15.i, ptr %prop_src_w.i, align 4
  %call20.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @.str.30, i64 noundef 0, i64 noundef 4294967295) #7
  %tobool21.not.i = icmp eq ptr %call20.i, null
  br i1 %tobool21.not.i, label %if.end18.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end23.i

if.end18.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end23.i:                                       ; preds = %if.end18.i
  %prop_src_h.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 44
  %35 = ptrtoint ptr %prop_src_h.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call20.i, ptr %prop_src_h.i, align 4
  %call25.i = tail call ptr @drm_property_create_signed_range(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @.str.31, i64 noundef -2147483648, i64 noundef 2147483647) #7
  %tobool26.not.i = icmp eq ptr %call25.i, null
  br i1 %tobool26.not.i, label %if.end23.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end28.i

if.end23.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end28.i:                                       ; preds = %if.end23.i
  %prop_crtc_x.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 45
  %36 = ptrtoint ptr %prop_crtc_x.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call25.i, ptr %prop_crtc_x.i, align 4
  %call30.i = tail call ptr @drm_property_create_signed_range(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @.str.32, i64 noundef -2147483648, i64 noundef 2147483647) #7
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %if.end28.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end33.i

if.end28.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end33.i:                                       ; preds = %if.end28.i
  %prop_crtc_y.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 46
  %37 = ptrtoint ptr %prop_crtc_y.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call30.i, ptr %prop_crtc_y.i, align 4
  %call35.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @.str.33, i64 noundef 0, i64 noundef 2147483647) #7
  %tobool36.not.i = icmp eq ptr %call35.i, null
  br i1 %tobool36.not.i, label %if.end33.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end38.i

if.end33.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end38.i:                                       ; preds = %if.end33.i
  %prop_crtc_w.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 47
  %38 = ptrtoint ptr %prop_crtc_w.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call35.i, ptr %prop_crtc_w.i, align 4
  %call40.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @.str.34, i64 noundef 0, i64 noundef 2147483647) #7
  %tobool41.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool41.not.i, label %if.end38.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end43.i

if.end38.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end43.i:                                       ; preds = %if.end38.i
  %prop_crtc_h.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 48
  %39 = ptrtoint ptr %prop_crtc_h.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call40.i, ptr %prop_crtc_h.i, align 4
  %call45.i = tail call ptr @drm_property_create_object(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @.str.35, i32 noundef -67372037) #7
  %tobool46.not.i = icmp eq ptr %call45.i, null
  br i1 %tobool46.not.i, label %if.end43.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end48.i

if.end43.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end48.i:                                       ; preds = %if.end43.i
  %prop_fb_id.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 49
  %40 = ptrtoint ptr %prop_fb_id.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call45.i, ptr %prop_fb_id.i, align 4
  %call50.i = tail call ptr @drm_property_create_signed_range(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @.str.36, i64 noundef -1, i64 noundef 2147483647) #7
  %tobool51.not.i = icmp eq ptr %call50.i, null
  br i1 %tobool51.not.i, label %if.end48.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end53.i

if.end48.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end53.i:                                       ; preds = %if.end48.i
  %prop_in_fence_fd.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 50
  %41 = ptrtoint ptr %prop_in_fence_fd.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call50.i, ptr %prop_in_fence_fd.i, align 4
  %call55.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @.str.37, i64 noundef 0, i64 noundef -1) #7
  %tobool56.not.i = icmp eq ptr %call55.i, null
  br i1 %tobool56.not.i, label %if.end53.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end58.i

if.end53.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end58.i:                                       ; preds = %if.end53.i
  %prop_out_fence_ptr.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 51
  %42 = ptrtoint ptr %prop_out_fence_ptr.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call55.i, ptr %prop_out_fence_ptr.i, align 4
  %call60.i = tail call ptr @drm_property_create_object(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @.str.38, i32 noundef -858993460) #7
  %tobool61.not.i = icmp eq ptr %call60.i, null
  br i1 %tobool61.not.i, label %if.end58.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end63.i

if.end58.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end63.i:                                       ; preds = %if.end58.i
  %prop_crtc_id.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 52
  %43 = ptrtoint ptr %prop_crtc_id.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call60.i, ptr %prop_crtc_id.i, align 4
  %call65.i = tail call ptr @drm_property_create(ptr noundef %dev, i32 noundef -2147483632, ptr noundef nonnull @.str.39, i32 noundef 0) #7
  %tobool66.not.i = icmp eq ptr %call65.i, null
  br i1 %tobool66.not.i, label %if.end63.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end68.i

if.end63.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end68.i:                                       ; preds = %if.end63.i
  %prop_fb_damage_clips.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 53
  %44 = ptrtoint ptr %prop_fb_damage_clips.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call65.i, ptr %prop_fb_damage_clips.i, align 4
  %call70.i = tail call ptr @drm_property_create_bool(ptr noundef %dev, i32 noundef -2147483648, ptr noundef nonnull @.str.40) #7
  %tobool71.not.i = icmp eq ptr %call70.i, null
  br i1 %tobool71.not.i, label %if.end68.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end73.i

if.end68.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end73.i:                                       ; preds = %if.end68.i
  %prop_active.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 54
  %45 = ptrtoint ptr %prop_active.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call70.i, ptr %prop_active.i, align 4
  %call75.i = tail call ptr @drm_property_create(ptr noundef %dev, i32 noundef -2147483632, ptr noundef nonnull @.str.41, i32 noundef 0) #7
  %tobool76.not.i = icmp eq ptr %call75.i, null
  br i1 %tobool76.not.i, label %if.end73.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end78.i

if.end73.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end78.i:                                       ; preds = %if.end73.i
  %prop_mode_id.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 55
  %46 = ptrtoint ptr %prop_mode_id.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call75.i, ptr %prop_mode_id.i, align 4
  %call80.i = tail call ptr @drm_property_create_bool(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull @.str.42) #7
  %tobool81.not.i = icmp eq ptr %call80.i, null
  br i1 %tobool81.not.i, label %if.end78.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end83.i

if.end78.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end83.i:                                       ; preds = %if.end78.i
  %prop_vrr_enabled.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 56
  %47 = ptrtoint ptr %prop_vrr_enabled.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call80.i, ptr %prop_vrr_enabled.i, align 4
  %call85.i = tail call ptr @drm_property_create(ptr noundef %dev, i32 noundef 16, ptr noundef nonnull @.str.43, i32 noundef 0) #7
  %tobool86.not.i = icmp eq ptr %call85.i, null
  br i1 %tobool86.not.i, label %if.end83.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end88.i

if.end83.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end88.i:                                       ; preds = %if.end83.i
  %degamma_lut_property.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 76
  %48 = ptrtoint ptr %degamma_lut_property.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call85.i, ptr %degamma_lut_property.i, align 4
  %call90.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull @.str.44, i64 noundef 0, i64 noundef 4294967295) #7
  %tobool91.not.i = icmp eq ptr %call90.i, null
  br i1 %tobool91.not.i, label %if.end88.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end93.i

if.end88.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end93.i:                                       ; preds = %if.end88.i
  %degamma_lut_size_property.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 77
  %49 = ptrtoint ptr %degamma_lut_size_property.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call90.i, ptr %degamma_lut_size_property.i, align 4
  %call95.i = tail call ptr @drm_property_create(ptr noundef %dev, i32 noundef 16, ptr noundef nonnull @.str.45, i32 noundef 0) #7
  %tobool96.not.i = icmp eq ptr %call95.i, null
  br i1 %tobool96.not.i, label %if.end93.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end98.i

if.end93.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end98.i:                                       ; preds = %if.end93.i
  %ctm_property.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 78
  %50 = ptrtoint ptr %ctm_property.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call95.i, ptr %ctm_property.i, align 4
  %call100.i = tail call ptr @drm_property_create(ptr noundef %dev, i32 noundef 16, ptr noundef nonnull @.str.46, i32 noundef 0) #7
  %tobool101.not.i = icmp eq ptr %call100.i, null
  br i1 %tobool101.not.i, label %if.end98.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end103.i

if.end98.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end103.i:                                      ; preds = %if.end98.i
  %gamma_lut_property.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 79
  %51 = ptrtoint ptr %gamma_lut_property.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call100.i, ptr %gamma_lut_property.i, align 4
  %call105.i = tail call ptr @drm_property_create_range(ptr noundef %dev, i32 noundef 4, ptr noundef nonnull @.str.47, i64 noundef 0, i64 noundef 4294967295) #7
  %tobool106.not.i = icmp eq ptr %call105.i, null
  br i1 %tobool106.not.i, label %if.end103.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end108.i

if.end103.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end108.i:                                      ; preds = %if.end103.i
  %gamma_lut_size_property.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 80
  %52 = ptrtoint ptr %gamma_lut_size_property.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call105.i, ptr %gamma_lut_size_property.i, align 4
  %call110.i = tail call ptr @drm_property_create(ptr noundef %dev, i32 noundef 20, ptr noundef nonnull @.str.48, i32 noundef 0) #7
  %tobool111.not.i = icmp eq ptr %call110.i, null
  br i1 %tobool111.not.i, label %if.end108.i.drm_mode_create_standard_properties.exit_crit_edge, label %if.end113.i

if.end108.i.drm_mode_create_standard_properties.exit_crit_edge: ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_mode_create_standard_properties.exit

if.end113.i:                                      ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #9
  %modifiers_property.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 99
  %53 = ptrtoint ptr %modifiers_property.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call110.i, ptr %modifiers_property.i, align 4
  br label %drm_mode_create_standard_properties.exit

drm_mode_create_standard_properties.exit:         ; preds = %if.end113.i, %if.end108.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end103.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end98.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end93.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end88.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end83.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end78.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end73.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end68.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end63.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end58.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end53.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end48.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end43.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end38.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end33.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end28.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end23.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end18.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end13.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end8.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end4.i.drm_mode_create_standard_properties.exit_crit_edge, %if.end.i.drm_mode_create_standard_properties.exit_crit_edge, %entry.drm_mode_create_standard_properties.exit_crit_edge
  %num_fb = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 7
  %54 = ptrtoint ptr %num_fb to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %num_fb, align 4
  %num_connector = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 10
  %55 = ptrtoint ptr %num_connector to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %num_connector, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 19
  %56 = ptrtoint ptr %num_crtc to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %num_crtc, align 4
  %num_encoder = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 15
  %57 = ptrtoint ptr %num_encoder to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %num_encoder, align 4
  %num_total_plane = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 17
  %58 = ptrtoint ptr %num_total_plane to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %num_total_plane, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %modeset_ctx) #7
  %59 = call ptr @memset(ptr %modeset_ctx, i32 255, i32 84)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %resv_ctx) #7
  %60 = getelementptr inbounds i8, ptr %resv_ctx, i32 28
  %61 = call ptr @memset(ptr %60, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %resv) #7
  %62 = call ptr @memset(ptr %resv, i32 255, i32 144)
  call void @dma_resv_init(ptr noundef nonnull %resv) #7
  call void @drm_modeset_acquire_init(ptr noundef nonnull %modeset_ctx, i32 noundef 0) #7
  %call46 = call i32 @drm_modeset_lock(ptr noundef %connection_mutex, ptr noundef nonnull %modeset_ctx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call46)
  %cmp = icmp eq i32 %call46, -35
  br i1 %cmp, label %if.then, label %drm_mode_create_standard_properties.exit.if.end_crit_edge

drm_mode_create_standard_properties.exit.if.end_crit_edge: ; preds = %drm_mode_create_standard_properties.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %drm_mode_create_standard_properties.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = call i32 @drm_modeset_backoff(ptr noundef nonnull %modeset_ctx) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %drm_mode_create_standard_properties.exit.if.end_crit_edge
  %63 = call i32 @llvm.read_register.i32(metadata !123) #7
  %and.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %task.i, align 8
  %67 = ptrtoint ptr %resv_ctx to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %resv_ctx, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @reservation_ww_class, i32 noundef 4) #7
  call void @llvm.prefetch.p0(ptr nonnull @reservation_ww_class, i32 1, i32 3, i32 1) #7
  %68 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @reservation_ww_class, ptr nonnull @reservation_ww_class, i32 1, ptr nonnull elementtype(i32) @reservation_ww_class) #7, !srcloc !142
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %68, 0
  %stamp3.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %resv_ctx, i32 0, i32 1
  %69 = ptrtoint ptr %stamp3.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %asmresult.i.i.i.i.i, ptr %stamp3.i, align 4
  %acquired.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %resv_ctx, i32 0, i32 2
  %70 = ptrtoint ptr %acquired.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %acquired.i, align 4
  %wounded.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %resv_ctx, i32 0, i32 3
  %71 = ptrtoint ptr %wounded.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %wounded.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 5) to i32))
  %72 = load i32, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 5), align 4
  %conv.i = trunc i32 %72 to i16
  %is_wait_die4.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %resv_ctx, i32 0, i32 4
  %73 = ptrtoint ptr %is_wait_die4.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv.i, ptr %is_wait_die4.i, align 2
  %ww_class5.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %resv_ctx, i32 0, i32 6
  %74 = ptrtoint ptr %ww_class5.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @reservation_ww_class, ptr %ww_class5.i, align 4
  %done_acquire.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %resv_ctx, i32 0, i32 5
  %75 = ptrtoint ptr %done_acquire.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %done_acquire.i, align 4
  %contending_lock.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %resv_ctx, i32 0, i32 7
  %76 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %contending_lock.i, align 4
  call void @debug_check_no_locks_freed(ptr noundef nonnull %resv_ctx, i32 noundef 64) #7
  %dep_map.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %resv_ctx, i32 0, i32 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 3) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 3), align 4
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef %77, ptr noundef getelementptr inbounds (%struct.ww_class, ptr @reservation_ww_class, i32 0, i32 1), i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %78 = call ptr @llvm.returnaddress(i32 0) #7
  %79 = ptrtoint ptr %78 to i32
  call void @lock_acquire(ptr noundef %dep_map.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %79) #7
  %deadlock_inject_interval.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %resv_ctx, i32 0, i32 9
  %80 = ptrtoint ptr %deadlock_inject_interval.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 1, ptr %deadlock_inject_interval.i, align 4
  %81 = ptrtoint ptr %stamp3.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %stamp3.i, align 4
  %and.i = and i32 %82, 15
  %deadlock_inject_countdown.i = getelementptr inbounds %struct.ww_acquire_ctx, ptr %resv_ctx, i32 0, i32 10
  %83 = ptrtoint ptr %deadlock_inject_countdown.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %and.i, ptr %deadlock_inject_countdown.i, align 4
  %call.i96 = call i32 @ww_mutex_lock(ptr noundef nonnull %resv, ptr noundef nonnull %resv_ctx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -35, i32 %call.i96)
  %cmp49 = icmp eq i32 %call.i96, -35
  br i1 %cmp49, label %if.then50, label %if.end.if.end51_crit_edge

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then50:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %84 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i.i = icmp eq i32 %84, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then50.dma_resv_lock_slow.exit_crit_edge

if.then50.dma_resv_lock_slow.exit_crit_edge:      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_resv_lock_slow.exit

land.lhs.true.i.i:                                ; preds = %if.then50
  %85 = ptrtoint ptr %contending_lock.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %contending_lock.i, align 4
  %tobool1.not.i.i = icmp eq ptr %86, null
  br i1 %tobool1.not.i.i, label %do.end.i.i, label %land.lhs.true.i.i.dma_resv_lock_slow.exit_crit_edge, !prof !143

land.lhs.true.i.i.dma_resv_lock_slow.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_resv_lock_slow.exit

do.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i = call i32 @debug_locks_off() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i.i, label %do.end.i.i.dma_resv_lock_slow.exit_crit_edge, label %land.lhs.true6.i.i

do.end.i.i.dma_resv_lock_slow.exit_crit_edge:     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_resv_lock_slow.exit

land.lhs.true6.i.i:                               ; preds = %do.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %87 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool7.not.i.i = icmp eq i32 %87, 0
  br i1 %tobool7.not.i.i, label %do.end20.i.i, label %land.lhs.true6.i.i.dma_resv_lock_slow.exit_crit_edge

land.lhs.true6.i.i.dma_resv_lock_slow.exit_crit_edge: ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_resv_lock_slow.exit

do.end20.i.i:                                     ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 297, i32 noundef 9, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #7
  br label %dma_resv_lock_slow.exit

dma_resv_lock_slow.exit:                          ; preds = %do.end20.i.i, %land.lhs.true6.i.i.dma_resv_lock_slow.exit_crit_edge, %do.end.i.i.dma_resv_lock_slow.exit_crit_edge, %land.lhs.true.i.i.dma_resv_lock_slow.exit_crit_edge, %if.then50.dma_resv_lock_slow.exit_crit_edge
  %call38.i.i = call i32 @ww_mutex_lock(ptr noundef nonnull %resv, ptr noundef nonnull %resv_ctx) #7
  br label %if.end51

if.end51:                                         ; preds = %dma_resv_lock_slow.exit, %if.end.if.end51_crit_edge
  call void @dma_resv_reset_shared_max(ptr noundef nonnull %resv) #7
  call void @ww_mutex_unlock(ptr noundef nonnull %resv) #7
  call fastcc void @ww_acquire_fini(ptr noundef nonnull %resv_ctx)
  call void @drm_modeset_drop_locks(ptr noundef nonnull %modeset_ctx) #7
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %modeset_ctx) #7
  call void @dma_resv_fini(ptr noundef nonnull %resv) #7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %resv) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %resv_ctx) #7
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %modeset_ctx) #7
  %call52 = call i32 @__drmm_add_action_or_reset(ptr noundef %dev, ptr noundef nonnull @drm_mode_config_init_release, ptr noundef null, ptr noundef nonnull @.str.12) #7
  ret i32 %call52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_free_work_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ww_acquire_fini(ptr noundef %ctx) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  %dep_map = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 8
  tail call void @lock_release(ptr noundef %dep_map, i32 noundef ptrtoint (ptr blockaddress(@ww_acquire_fini, %__here) to i32)) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %__here.if.end36_crit_edge

__here.if.end36_crit_edge:                        ; preds = %__here
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

land.lhs.true:                                    ; preds = %__here
  %acquired = getelementptr inbounds %struct.ww_acquire_ctx, ptr %ctx, i32 0, i32 2
  %1 = ptrtoint ptr %acquired to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %acquired, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %land.lhs.true.if.end36_crit_edge, label %do.end, !prof !144

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end:                                           ; preds = %land.lhs.true
  %call = tail call i32 @debug_locks_off() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %do.end.if.end36_crit_edge, label %land.lhs.true5

do.end.if.end36_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %3 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool6.not = icmp eq i32 %3, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end36_crit_edge

land.lhs.true5.if.end36_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.55) #7
  br label %if.end36

if.end36:                                         ; preds = %do.end19, %land.lhs.true5.if.end36_crit_edge, %do.end.if.end36_crit_edge, %land.lhs.true.if.end36_crit_edge, %__here.if.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_mode_config_init_release(ptr noundef %dev, ptr nocapture noundef readnone %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_mode_config_cleanup(ptr noundef %dev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_mode_config_cleanup(ptr noundef %dev) #0 align 64 {
entry:
  %conn_iter = alloca %struct.drm_connector_list_iter, align 4
  %p = alloca %struct.drm_printer, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter) #7
  %0 = ptrtoint ptr %conn_iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter, align 4, !annotation !133
  %1 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !133
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  %3 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %encoder_list, align 4
  %cmp.not275 = icmp eq ptr %4, %encoder_list
  br i1 %cmp.not275, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in276 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %4, %entry.for.body_crit_edge ]
  %encoder.0 = getelementptr i8, ptr %.pn.in276, i32 -4
  %5 = ptrtoint ptr %.pn.in276 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn.in276, align 4
  %funcs = getelementptr i8, ptr %.pn.in276, i32 60
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %destroy = getelementptr inbounds %struct.drm_encoder_funcs, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %destroy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %destroy, align 4
  tail call void %9(ptr noundef %encoder.0) #7
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @drm_connector_list_iter_begin(ptr noundef %dev, ptr noundef nonnull %conn_iter) #7
  %call277 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #7
  %tobool.not278 = icmp eq ptr %call277, null
  br i1 %tobool.not278, label %for.end.while.end_crit_edge, label %for.end.while.body_crit_edge

for.end.while.body_crit_edge:                     ; preds = %for.end
  br label %while.body

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %for.end.while.body_crit_edge
  %call279 = phi ptr [ %call, %while.body.while.body_crit_edge ], [ %call277, %for.end.while.body_crit_edge ]
  %base.i = getelementptr inbounds %struct.drm_connector, ptr %call279, i32 0, i32 6
  call void @drm_mode_object_put(ptr noundef %base.i) #7
  %call = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %for.end.while.end_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #7
  %connector_free_work = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 14
  %call14 = call zeroext i1 @flush_work(ptr noundef %connector_free_work) #7
  %connector_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 12
  %10 = ptrtoint ptr %connector_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %connector_list, align 4
  %cmp.i.not = icmp eq ptr %11, %connector_list
  br i1 %cmp.i.not, label %while.end.if.end47_crit_edge, label %do.end, !prof !144

while.end.if.end47_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

do.end:                                           ; preds = %while.end
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 504, i32 noundef 9, ptr noundef null) #7
  call void @drm_connector_list_iter_begin(ptr noundef %dev, ptr noundef nonnull %conn_iter) #7
  %call43280 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #7
  %tobool44.not281 = icmp eq ptr %call43280, null
  br i1 %tobool44.not281, label %do.end.while.end46_crit_edge, label %do.end.while.body45_crit_edge

do.end.while.body45_crit_edge:                    ; preds = %do.end
  br label %while.body45

do.end.while.end46_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end46

while.body45:                                     ; preds = %while.body45.while.body45_crit_edge, %do.end.while.body45_crit_edge
  %call43282 = phi ptr [ %call43, %while.body45.while.body45_crit_edge ], [ %call43280, %do.end.while.body45_crit_edge ]
  %name = getelementptr inbounds %struct.drm_connector, ptr %call43282, i32 0, i32 7
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13, ptr noundef %13) #7
  %call43 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #7
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %while.body45.while.end46_crit_edge, label %while.body45.while.body45_crit_edge

while.body45.while.body45_crit_edge:              ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body45

while.body45.while.end46_crit_edge:               ; preds = %while.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end46

while.end46:                                      ; preds = %while.body45.while.end46_crit_edge, %do.end.while.end46_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #7
  br label %if.end47

if.end47:                                         ; preds = %while.end46, %while.end.if.end47_crit_edge
  %property_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 21
  %14 = ptrtoint ptr %property_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %property_list, align 4
  %cmp62.not283 = icmp eq ptr %15, %property_list
  br i1 %cmp62.not283, label %if.end47.for.end72_crit_edge, label %if.end47.for.body65_crit_edge

if.end47.for.body65_crit_edge:                    ; preds = %if.end47
  br label %for.body65

if.end47.for.end72_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end72

for.body65:                                       ; preds = %for.body65.for.body65_crit_edge, %if.end47.for.body65_crit_edge
  %property.0284 = phi ptr [ %pt.0, %for.body65.for.body65_crit_edge ], [ %15, %if.end47.for.body65_crit_edge ]
  %16 = ptrtoint ptr %property.0284 to i32
  call void @__asan_load4_noabort(i32 %16)
  %pt.0 = load ptr, ptr %property.0284, align 4
  call void @drm_property_destroy(ptr noundef %dev, ptr noundef %property.0284) #7
  %cmp62.not = icmp eq ptr %pt.0, %property_list
  br i1 %cmp62.not, label %for.body65.for.end72_crit_edge, label %for.body65.for.body65_crit_edge

for.body65.for.body65_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body65

for.body65.for.end72_crit_edge:                   ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end72

for.end72:                                        ; preds = %for.body65.for.end72_crit_edge, %if.end47.for.end72_crit_edge
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 18
  %17 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %plane_list, align 4
  %cmp87.not285 = icmp eq ptr %18, %plane_list
  br i1 %cmp87.not285, label %for.end72.for.end99_crit_edge, label %for.end72.for.body90_crit_edge

for.end72.for.body90_crit_edge:                   ; preds = %for.end72
  br label %for.body90

for.end72.for.end99_crit_edge:                    ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end99

for.body90:                                       ; preds = %for.body90.for.body90_crit_edge, %for.end72.for.body90_crit_edge
  %.pn264.in286 = phi ptr [ %.pn264, %for.body90.for.body90_crit_edge ], [ %18, %for.end72.for.body90_crit_edge ]
  %plane.0 = getelementptr i8, ptr %.pn264.in286, i32 -4
  %19 = ptrtoint ptr %.pn264.in286 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn264 = load ptr, ptr %.pn264.in286, align 4
  %funcs91 = getelementptr i8, ptr %.pn264.in286, i32 176
  %20 = ptrtoint ptr %funcs91 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs91, align 4
  %destroy92 = getelementptr inbounds %struct.drm_plane_funcs, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %destroy92 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %destroy92, align 4
  call void %23(ptr noundef %plane.0) #7
  %cmp87.not = icmp eq ptr %.pn264, %plane_list
  br i1 %cmp87.not, label %for.body90.for.end99_crit_edge, label %for.body90.for.body90_crit_edge

for.body90.for.body90_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body90

for.body90.for.end99_crit_edge:                   ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end99

for.end99:                                        ; preds = %for.body90.for.end99_crit_edge, %for.end72.for.end99_crit_edge
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 20
  %24 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crtc_list, align 4
  %cmp114.not287 = icmp eq ptr %25, %crtc_list
  br i1 %cmp114.not287, label %for.end99.for.end126_crit_edge, label %for.end99.for.body117_crit_edge

for.end99.for.body117_crit_edge:                  ; preds = %for.end99
  br label %for.body117

for.end99.for.end126_crit_edge:                   ; preds = %for.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end126

for.body117:                                      ; preds = %for.body117.for.body117_crit_edge, %for.end99.for.body117_crit_edge
  %.pn265.in288 = phi ptr [ %.pn265, %for.body117.for.body117_crit_edge ], [ %25, %for.end99.for.body117_crit_edge ]
  %crtc.0 = getelementptr i8, ptr %.pn265.in288, i32 -8
  %26 = ptrtoint ptr %.pn265.in288 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn265 = load ptr, ptr %.pn265.in288, align 8
  %funcs118 = getelementptr i8, ptr %.pn265.in288, i32 396
  %27 = ptrtoint ptr %funcs118 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %funcs118, align 4
  %destroy119 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %destroy119 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %destroy119, align 4
  call void %30(ptr noundef %crtc.0) #7
  %cmp114.not = icmp eq ptr %.pn265, %crtc_list
  br i1 %cmp114.not, label %for.body117.for.end126_crit_edge, label %for.body117.for.body117_crit_edge

for.body117.for.body117_crit_edge:                ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body117

for.body117.for.end126_crit_edge:                 ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end126

for.end126:                                       ; preds = %for.body117.for.end126_crit_edge, %for.end99.for.end126_crit_edge
  %property_blob_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 34
  %31 = ptrtoint ptr %property_blob_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %property_blob_list, align 4
  %cmp140.not289 = icmp eq ptr %32, %property_blob_list
  br i1 %cmp140.not289, label %for.end126.for.end150_crit_edge, label %for.end126.for.body143_crit_edge

for.end126.for.body143_crit_edge:                 ; preds = %for.end126
  br label %for.body143

for.end126.for.end150_crit_edge:                  ; preds = %for.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end150

for.body143:                                      ; preds = %for.body143.for.body143_crit_edge, %for.end126.for.body143_crit_edge
  %.pn266.in290 = phi ptr [ %.pn266, %for.body143.for.body143_crit_edge ], [ %32, %for.end126.for.body143_crit_edge ]
  %blob.0 = getelementptr i8, ptr %.pn266.in290, i32 -24
  %33 = ptrtoint ptr %.pn266.in290 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn266 = load ptr, ptr %.pn266.in290, align 4
  call void @drm_property_blob_put(ptr noundef %blob.0) #7
  %cmp140.not = icmp eq ptr %.pn266, %property_blob_list
  br i1 %cmp140.not, label %for.body143.for.end150_crit_edge, label %for.body143.for.body143_crit_edge

for.body143.for.body143_crit_edge:                ; preds = %for.body143
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body143

for.body143.for.end150_crit_edge:                 ; preds = %for.body143
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end150

for.end150:                                       ; preds = %for.body143.for.end150_crit_edge, %for.end126.for.end150_crit_edge
  %fb_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 8
  %34 = ptrtoint ptr %fb_list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %fb_list, align 4
  %cmp.i273.not = icmp eq ptr %35, %fb_list
  br i1 %cmp.i273.not, label %for.end150.if.end178_crit_edge, label %do.end172, !prof !144

for.end150.if.end178_crit_edge:                   ; preds = %for.end150
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178

do.end172:                                        ; preds = %for.end150
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 538, i32 noundef 9, ptr noundef null) #7
  br label %if.end178

if.end178:                                        ; preds = %do.end172, %for.end150.if.end178_crit_edge
  %36 = ptrtoint ptr %fb_list to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fb_list, align 4
  %cmp201.not291 = icmp eq ptr %37, %fb_list
  br i1 %cmp201.not291, label %if.end178.for.end212_crit_edge, label %for.body204.lr.ph

if.end178.for.end212_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end212

for.body204.lr.ph:                                ; preds = %if.end178
  %38 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 1
  %39 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 2
  %40 = getelementptr inbounds %struct.drm_printer, ptr %p, i32 0, i32 3
  br label %for.body204

for.body204:                                      ; preds = %for.body204.for.body204_crit_edge, %for.body204.lr.ph
  %.pn267.in292 = phi ptr [ %37, %for.body204.lr.ph ], [ %.pn267, %for.body204.for.body204_crit_edge ]
  %fb.0 = getelementptr i8, ptr %.pn267.in292, i32 -4
  %41 = ptrtoint ptr %.pn267.in292 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn267 = load ptr, ptr %.pn267.in292, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %p) #7
  %42 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @__drm_printfn_debug, ptr %p, align 4, !alias.scope !145
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %38, align 4, !alias.scope !145
  %44 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %39, align 4, !alias.scope !145
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.14, ptr %40, align 4, !alias.scope !145
  %base = getelementptr i8, ptr %.pn267.in292, i32 8
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %base, align 4
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %p, ptr noundef nonnull @.str.15, i32 noundef %47) #7
  call void @drm_framebuffer_print_info(ptr noundef nonnull %p, i32 noundef 1, ptr noundef %fb.0) #7
  %refcount = getelementptr i8, ptr %.pn267.in292, i32 20
  call void @drm_framebuffer_free(ptr noundef %refcount) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %p) #7
  %cmp201.not = icmp eq ptr %.pn267, %fb_list
  br i1 %cmp201.not, label %for.body204.for.end212_crit_edge, label %for.body204.for.body204_crit_edge

for.body204.for.body204_crit_edge:                ; preds = %for.body204
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body204

for.body204.for.end212_crit_edge:                 ; preds = %for.body204
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end212

for.end212:                                       ; preds = %for.body204.for.end212_crit_edge, %if.end178.for.end212_crit_edge
  %connector_ida = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 11
  call void @ida_destroy(ptr noundef %connector_ida) #7
  %tile_idr = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 5
  call void @idr_destroy(ptr noundef %tile_idr) #7
  %object_idr = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 4
  call void @idr_destroy(ptr noundef %object_idr) #7
  %head.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 1, i32 1
  %48 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %head.i, align 4
  %cmp.i.not.i = icmp eq ptr %49, %head.i
  br i1 %cmp.i.not.i, label %for.end212.drm_modeset_lock_fini.exit_crit_edge, label %do.end.i, !prof !144

for.end212.drm_modeset_lock_fini.exit_crit_edge:  ; preds = %for.end212
  call void @__sanitizer_cov_trace_pc() #9
  br label %drm_modeset_lock_fini.exit

do.end.i:                                         ; preds = %for.end212
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.56, i32 noundef 113, i32 noundef 9, ptr noundef null) #7
  br label %drm_modeset_lock_fini.exit

drm_modeset_lock_fini.exit:                       ; preds = %do.end.i, %for.end212.drm_modeset_lock_fini.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_property_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_property_blob_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_framebuffer_print_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_framebuffer_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_mode_config_validate(ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver.i.i, align 4
  %driver_features.i.i = getelementptr inbounds %struct.drm_driver, ptr %1, i32 0, i32 24
  %2 = ptrtoint ptr %driver_features.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_features.i.i, align 4
  %driver_features1.i.i = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 10
  %4 = ptrtoint ptr %driver_features1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features1.i.i, align 4
  %and.i.i = and i32 %3, 2
  %and2.i.i = and i32 %and.i.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %cmp.i.i.not = icmp eq i32 %and2.i.i, 0
  br i1 %cmp.i.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 16
  %6 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn534 = load ptr, ptr %encoder_list, align 4
  %cmp.not535 = icmp eq ptr %.pn534, %encoder_list
  br i1 %cmp.not535, label %if.end.for.cond14.preheader_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.cond14.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %fixup_encoder_possible_clones.exit.for.cond14.preheader_crit_edge, %if.end.for.cond14.preheader_crit_edge
  %7 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn496537 = load ptr, ptr %encoder_list, align 4
  %cmp18.not538 = icmp eq ptr %.pn496537, %encoder_list
  br i1 %cmp18.not538, label %for.cond14.preheader.for.end27_crit_edge, label %for.cond14.preheader.for.body20_crit_edge

for.cond14.preheader.for.body20_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body20

for.cond14.preheader.for.end27_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end27

for.body:                                         ; preds = %fixup_encoder_possible_clones.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn536 = phi ptr [ %.pn, %fixup_encoder_possible_clones.exit.for.body_crit_edge ], [ %.pn534, %if.end.for.body_crit_edge ]
  %possible_clones.i = getelementptr i8, ptr %.pn536, i32 44
  %8 = ptrtoint ptr %possible_clones.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %possible_clones.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %if.then.i, label %for.body.fixup_encoder_possible_clones.exit_crit_edge

for.body.fixup_encoder_possible_clones.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %fixup_encoder_possible_clones.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %index.i.i.i = getelementptr i8, ptr %.pn536, i32 36
  %10 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %11
  %12 = ptrtoint ptr %possible_clones.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shl.i.i, ptr %possible_clones.i, align 4
  br label %fixup_encoder_possible_clones.exit

fixup_encoder_possible_clones.exit:               ; preds = %if.then.i, %for.body.fixup_encoder_possible_clones.exit_crit_edge
  %13 = ptrtoint ptr %.pn536 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn536, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %fixup_encoder_possible_clones.exit.for.cond14.preheader_crit_edge, label %fixup_encoder_possible_clones.exit.for.body_crit_edge

fixup_encoder_possible_clones.exit.for.body_crit_edge: ; preds = %fixup_encoder_possible_clones.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

fixup_encoder_possible_clones.exit.for.cond14.preheader_crit_edge: ; preds = %fixup_encoder_possible_clones.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond14.preheader

for.body20:                                       ; preds = %validate_encoder_possible_crtcs.exit.for.body20_crit_edge, %for.cond14.preheader.for.body20_crit_edge
  %.pn496539 = phi ptr [ %.pn496, %validate_encoder_possible_crtcs.exit.for.body20_crit_edge ], [ %.pn496537, %for.cond14.preheader.for.body20_crit_edge ]
  %encoder.1 = getelementptr i8, ptr %.pn496539, i32 -4
  %14 = ptrtoint ptr %encoder.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %encoder.1, align 4
  %encoder_list.i.i = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 30, i32 16
  %16 = ptrtoint ptr %encoder_list.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn12.i.i = load ptr, ptr %encoder_list.i.i, align 4
  %cmp.not13.i.i = icmp eq ptr %.pn12.i.i, %encoder_list.i.i
  br i1 %cmp.not13.i.i, label %for.body20.for.end.i_crit_edge, label %for.body20.for.body.i.i_crit_edge

for.body20.for.body.i.i_crit_edge:                ; preds = %for.body20
  br label %for.body.i.i

for.body20.for.end.i_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body20.for.body.i.i_crit_edge
  %.pn15.i.i = phi ptr [ %.pn.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %.pn12.i.i, %for.body20.for.body.i.i_crit_edge ]
  %encoder_mask.014.i.i = phi i32 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body20.for.body.i.i_crit_edge ]
  %index.i.i.i.i = getelementptr i8, ptr %.pn15.i.i, i32 36
  %17 = ptrtoint ptr %index.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index.i.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %18
  %or.i.i = or i32 %shl.i.i.i, %encoder_mask.014.i.i
  %19 = ptrtoint ptr %.pn15.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i.i = load ptr, ptr %.pn15.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %encoder_list.i.i
  br i1 %cmp.not.i.i, label %for.body.lr.ph.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.body.lr.ph.i:                                 ; preds = %for.body.i.i
  %possible_clones.i499 = getelementptr i8, ptr %.pn496539, i32 44
  %index.i.i116.i = getelementptr i8, ptr %.pn496539, i32 36
  %base.i = getelementptr i8, ptr %.pn496539, i32 8
  %name.i = getelementptr i8, ptr %.pn496539, i32 28
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn126.i = phi ptr [ %.pn12.i.i, %for.body.lr.ph.i ], [ %.pn.i, %if.end.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %possible_clones.i499 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %possible_clones.i499, align 4
  %index.i.i.i500 = getelementptr i8, ptr %.pn126.i, i32 36
  %22 = ptrtoint ptr %index.i.i.i500 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i.i.i500, align 4
  %shl.i.i501 = shl nuw i32 1, %23
  %and.i = and i32 %shl.i.i501, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp eq i32 %and.i, 0
  %possible_clones7.i = getelementptr i8, ptr %.pn126.i, i32 44
  %24 = ptrtoint ptr %possible_clones7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %possible_clones7.i, align 4
  %26 = ptrtoint ptr %index.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index.i.i116.i, align 4
  %shl.i117.i = shl nuw i32 1, %27
  %and9.i = and i32 %shl.i117.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.i = icmp ne i32 %and9.i, 0
  %cmp15.not.i = xor i1 %tobool.i, %tobool10.i
  br i1 %cmp15.not.i, label %for.body.i.if.end.i_crit_edge, label %do.end.i, !prof !144

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %base.i, align 4
  %30 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name.i, align 4
  %base29.i = getelementptr i8, ptr %.pn126.i, i32 8
  %32 = ptrtoint ptr %base29.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base29.i, align 4
  %name31.i = getelementptr i8, ptr %.pn126.i, i32 28
  %34 = ptrtoint ptr %name31.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name31.i, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 591, i32 noundef 9, ptr noundef nonnull @.str.57, i32 noundef %29, ptr noundef %31, i32 noundef %shl.i117.i, i32 noundef %21, i32 noundef %33, ptr noundef %35, i32 noundef %shl.i.i501, i32 noundef %25) #7
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %for.body.i.if.end.i_crit_edge
  %36 = ptrtoint ptr %.pn126.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn.i = load ptr, ptr %.pn126.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i.i
  br i1 %cmp.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.body20.for.end.i_crit_edge
  %encoder_mask.0.lcssa.i.i529 = phi i32 [ 0, %for.body20.for.end.i_crit_edge ], [ %or.i.i, %if.end.i.for.end.i_crit_edge ]
  %possible_clones52.i = getelementptr i8, ptr %.pn496539, i32 44
  %37 = ptrtoint ptr %possible_clones52.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %possible_clones52.i, align 4
  %index.i.i122.i = getelementptr i8, ptr %.pn496539, i32 36
  %39 = ptrtoint ptr %index.i.i122.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index.i.i122.i, align 4
  %shl.i123.i = shl nuw i32 1, %40
  %and54.i = and i32 %shl.i123.i, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %cmp55.i = icmp eq i32 %and54.i, 0
  br i1 %cmp55.i, label %for.end.i.do.end74.i_crit_edge, label %lor.rhs.i

for.end.i.do.end74.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end74.i

lor.rhs.i:                                        ; preds = %for.end.i
  %neg.i = xor i32 %encoder_mask.0.lcssa.i.i529, -1
  %and57.i = and i32 %38, %neg.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %cmp58.not.i = icmp eq i32 %and57.i, 0
  br i1 %cmp58.not.i, label %lor.rhs.i.validate_encoder_possible_clones.exit_crit_edge, label %lor.rhs.i.do.end74.i_crit_edge, !prof !144

lor.rhs.i.do.end74.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end74.i

lor.rhs.i.validate_encoder_possible_clones.exit_crit_edge: ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %validate_encoder_possible_clones.exit

do.end74.i:                                       ; preds = %lor.rhs.i.do.end74.i_crit_edge, %for.end.i.do.end74.i_crit_edge
  %base75.i = getelementptr i8, ptr %.pn496539, i32 8
  %41 = ptrtoint ptr %base75.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %base75.i, align 4
  %name77.i = getelementptr i8, ptr %.pn496539, i32 28
  %43 = ptrtoint ptr %name77.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name77.i, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 599, i32 noundef 9, ptr noundef nonnull @.str.58, i32 noundef %42, ptr noundef %44, i32 noundef %38, i32 noundef %encoder_mask.0.lcssa.i.i529) #7
  br label %validate_encoder_possible_clones.exit

validate_encoder_possible_clones.exit:            ; preds = %do.end74.i, %lor.rhs.i.validate_encoder_possible_clones.exit_crit_edge
  %45 = ptrtoint ptr %encoder.1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %encoder.1, align 4
  %crtc_list.i.i = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 30, i32 20
  %47 = ptrtoint ptr %crtc_list.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn12.i.i502 = load ptr, ptr %crtc_list.i.i, align 4
  %cmp.not13.i.i503 = icmp eq ptr %.pn12.i.i502, %crtc_list.i.i
  br i1 %cmp.not13.i.i503, label %validate_encoder_possible_clones.exit.full_crtc_mask.exit.i_crit_edge, label %validate_encoder_possible_clones.exit.for.body.i.i510_crit_edge

validate_encoder_possible_clones.exit.for.body.i.i510_crit_edge: ; preds = %validate_encoder_possible_clones.exit
  br label %for.body.i.i510

validate_encoder_possible_clones.exit.full_crtc_mask.exit.i_crit_edge: ; preds = %validate_encoder_possible_clones.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %full_crtc_mask.exit.i

for.body.i.i510:                                  ; preds = %for.body.i.i510.for.body.i.i510_crit_edge, %validate_encoder_possible_clones.exit.for.body.i.i510_crit_edge
  %.pn15.i.i504 = phi ptr [ %.pn.i.i508, %for.body.i.i510.for.body.i.i510_crit_edge ], [ %.pn12.i.i502, %validate_encoder_possible_clones.exit.for.body.i.i510_crit_edge ]
  %crtc_mask.014.i.i = phi i32 [ %or.i.i507, %for.body.i.i510.for.body.i.i510_crit_edge ], [ 0, %validate_encoder_possible_clones.exit.for.body.i.i510_crit_edge ]
  %index.i.i.i.i505 = getelementptr i8, ptr %.pn15.i.i504, i32 148
  %48 = ptrtoint ptr %index.i.i.i.i505 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %index.i.i.i.i505, align 4
  %shl.i.i.i506 = shl nuw i32 1, %49
  %or.i.i507 = or i32 %shl.i.i.i506, %crtc_mask.014.i.i
  %50 = ptrtoint ptr %.pn15.i.i504 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn.i.i508 = load ptr, ptr %.pn15.i.i504, align 4
  %cmp.not.i.i509 = icmp eq ptr %.pn.i.i508, %crtc_list.i.i
  br i1 %cmp.not.i.i509, label %for.body.i.i510.full_crtc_mask.exit.i_crit_edge, label %for.body.i.i510.for.body.i.i510_crit_edge

for.body.i.i510.for.body.i.i510_crit_edge:        ; preds = %for.body.i.i510
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i510

for.body.i.i510.full_crtc_mask.exit.i_crit_edge:  ; preds = %for.body.i.i510
  call void @__sanitizer_cov_trace_pc() #9
  br label %full_crtc_mask.exit.i

full_crtc_mask.exit.i:                            ; preds = %for.body.i.i510.full_crtc_mask.exit.i_crit_edge, %validate_encoder_possible_clones.exit.full_crtc_mask.exit.i_crit_edge
  %crtc_mask.0.lcssa.i.i = phi i32 [ 0, %validate_encoder_possible_clones.exit.full_crtc_mask.exit.i_crit_edge ], [ %or.i.i507, %for.body.i.i510.full_crtc_mask.exit.i_crit_edge ]
  %possible_crtcs.i = getelementptr i8, ptr %.pn496539, i32 40
  %51 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %possible_crtcs.i, align 4
  %and.i511 = and i32 %52, %crtc_mask.0.lcssa.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i511)
  %cmp.i512 = icmp eq i32 %and.i511, 0
  %neg.i513 = xor i32 %crtc_mask.0.lcssa.i.i, -1
  %and2.i = and i32 %52, %neg.i513
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp3.i = icmp ne i32 %and2.i, 0
  %53 = select i1 %cmp.i512, i1 true, i1 %cmp3.i
  br i1 %53, label %do.end.i516, label %full_crtc_mask.exit.i.validate_encoder_possible_crtcs.exit_crit_edge, !prof !143

full_crtc_mask.exit.i.validate_encoder_possible_crtcs.exit_crit_edge: ; preds = %full_crtc_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %validate_encoder_possible_crtcs.exit

do.end.i516:                                      ; preds = %full_crtc_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %base.i514 = getelementptr i8, ptr %.pn496539, i32 8
  %54 = ptrtoint ptr %base.i514 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %base.i514, align 4
  %name.i515 = getelementptr i8, ptr %.pn496539, i32 28
  %56 = ptrtoint ptr %name.i515 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name.i515, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 622, i32 noundef 9, ptr noundef nonnull @.str.59, i32 noundef %55, ptr noundef %57, i32 noundef %52, i32 noundef %crtc_mask.0.lcssa.i.i) #7
  br label %validate_encoder_possible_crtcs.exit

validate_encoder_possible_crtcs.exit:             ; preds = %do.end.i516, %full_crtc_mask.exit.i.validate_encoder_possible_crtcs.exit_crit_edge
  %58 = ptrtoint ptr %.pn496539 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn496 = load ptr, ptr %.pn496539, align 4
  %cmp18.not = icmp eq ptr %.pn496, %encoder_list
  br i1 %cmp18.not, label %validate_encoder_possible_crtcs.exit.for.end27_crit_edge, label %validate_encoder_possible_crtcs.exit.for.body20_crit_edge

validate_encoder_possible_crtcs.exit.for.body20_crit_edge: ; preds = %validate_encoder_possible_crtcs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20

validate_encoder_possible_crtcs.exit.for.end27_crit_edge: ; preds = %validate_encoder_possible_crtcs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end27

for.end27:                                        ; preds = %validate_encoder_possible_crtcs.exit.for.end27_crit_edge, %for.cond14.preheader.for.end27_crit_edge
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 20
  %59 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pn497541 = load ptr, ptr %crtc_list, align 4
  %cmp37.not542 = icmp eq ptr %.pn497541, %crtc_list
  br i1 %cmp37.not542, label %for.end27.for.end362_crit_edge, label %for.end27.for.body39_crit_edge

for.end27.for.body39_crit_edge:                   ; preds = %for.end27
  br label %for.body39

for.end27.for.end362_crit_edge:                   ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end362

for.body39:                                       ; preds = %for.inc356.for.body39_crit_edge, %for.end27.for.body39_crit_edge
  %.pn497545 = phi ptr [ %.pn497, %for.inc356.for.body39_crit_edge ], [ %.pn497541, %for.end27.for.body39_crit_edge ]
  %primary_with_crtc.0544 = phi i32 [ %primary_with_crtc.1, %for.inc356.for.body39_crit_edge ], [ 0, %for.end27.for.body39_crit_edge ]
  %cursor_with_crtc.0543 = phi i32 [ %cursor_with_crtc.1, %for.inc356.for.body39_crit_edge ], [ 0, %for.end27.for.body39_crit_edge ]
  %primary = getelementptr i8, ptr %.pn497545, i32 140
  %60 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %primary, align 4
  %tobool.not = icmp eq ptr %61, null
  br i1 %tobool.not, label %do.end, label %for.body39.if.end56_crit_edge, !prof !143

for.body39.if.end56_crit_edge:                    ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

do.end:                                           ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr i8, ptr %.pn497545, i32 120
  %62 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %base, align 8
  %name = getelementptr i8, ptr %.pn497545, i32 8
  %64 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 646, i32 noundef 9, ptr noundef nonnull @.str.16, i32 noundef %63, ptr noundef %65) #7
  br label %if.end56

if.end56:                                         ; preds = %do.end, %for.body39.if.end56_crit_edge
  %cursor = getelementptr i8, ptr %.pn497545, i32 144
  %66 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %cursor, align 8
  %tobool65.not = icmp eq ptr %67, null
  br i1 %tobool65.not, label %if.end56.if.end169_crit_edge, label %land.rhs

if.end56.if.end169_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

land.rhs:                                         ; preds = %if.end56
  %funcs = getelementptr i8, ptr %.pn497545, i32 396
  %68 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %funcs, align 4
  %cursor_set = getelementptr inbounds %struct.drm_crtc_funcs, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %cursor_set to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %cursor_set, align 4
  %tobool66.not = icmp eq ptr %71, null
  br i1 %tobool66.not, label %land.rhs.if.end91_crit_edge, label %do.end82, !prof !144

land.rhs.if.end91_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

do.end82:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  %base83 = getelementptr i8, ptr %.pn497545, i32 120
  %72 = ptrtoint ptr %base83 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %base83, align 8
  %name85 = getelementptr i8, ptr %.pn497545, i32 8
  %74 = ptrtoint ptr %name85 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %name85, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 650, i32 noundef 9, ptr noundef nonnull @.str.17, i32 noundef %73, ptr noundef %75) #7
  br label %if.end91

if.end91:                                         ; preds = %do.end82, %land.rhs.if.end91_crit_edge
  %76 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr = load ptr, ptr %cursor, align 8
  %tobool101.not = icmp eq ptr %.pr, null
  br i1 %tobool101.not, label %if.end91.if.end169_crit_edge, label %land.rhs102

if.end91.if.end169_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

land.rhs102:                                      ; preds = %if.end91
  %77 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %funcs, align 4
  %cursor_set2 = getelementptr inbounds %struct.drm_crtc_funcs, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %cursor_set2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cursor_set2, align 4
  %tobool104.not = icmp eq ptr %80, null
  br i1 %tobool104.not, label %land.rhs102.if.end130_crit_edge, label %do.end121, !prof !144

land.rhs102.if.end130_crit_edge:                  ; preds = %land.rhs102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end130

do.end121:                                        ; preds = %land.rhs102
  call void @__sanitizer_cov_trace_pc() #9
  %base122 = getelementptr i8, ptr %.pn497545, i32 120
  %81 = ptrtoint ptr %base122 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %base122, align 8
  %name124 = getelementptr i8, ptr %.pn497545, i32 8
  %83 = ptrtoint ptr %name124 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %name124, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 653, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %82, ptr noundef %84) #7
  br label %if.end130

if.end130:                                        ; preds = %do.end121, %land.rhs102.if.end130_crit_edge
  %85 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pr532 = load ptr, ptr %cursor, align 8
  %tobool140.not = icmp eq ptr %.pr532, null
  br i1 %tobool140.not, label %if.end130.if.end169_crit_edge, label %land.rhs141

if.end130.if.end169_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

land.rhs141:                                      ; preds = %if.end130
  %86 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %funcs, align 4
  %cursor_move = getelementptr inbounds %struct.drm_crtc_funcs, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %cursor_move to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %cursor_move, align 4
  %tobool143.not = icmp eq ptr %89, null
  br i1 %tobool143.not, label %land.rhs141.if.end169_crit_edge, label %do.end160, !prof !144

land.rhs141.if.end169_crit_edge:                  ; preds = %land.rhs141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end169

do.end160:                                        ; preds = %land.rhs141
  call void @__sanitizer_cov_trace_pc() #9
  %base161 = getelementptr i8, ptr %.pn497545, i32 120
  %90 = ptrtoint ptr %base161 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %base161, align 8
  %name163 = getelementptr i8, ptr %.pn497545, i32 8
  %92 = ptrtoint ptr %name163 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name163, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 656, i32 noundef 9, ptr noundef nonnull @.str.19, i32 noundef %91, ptr noundef %93) #7
  br label %if.end169

if.end169:                                        ; preds = %do.end160, %land.rhs141.if.end169_crit_edge, %if.end130.if.end169_crit_edge, %if.end91.if.end169_crit_edge, %if.end56.if.end169_crit_edge
  %94 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %primary, align 4
  %tobool178.not = icmp eq ptr %95, null
  br i1 %tobool178.not, label %if.end169.if.end264_crit_edge, label %if.then179

if.end169.if.end264_crit_edge:                    ; preds = %if.end169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end264

if.then179:                                       ; preds = %if.end169
  %possible_crtcs = getelementptr inbounds %struct.drm_plane, ptr %95, i32 0, i32 5
  %96 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %possible_crtcs, align 8
  %index.i.i = getelementptr i8, ptr %.pn497545, i32 148
  %98 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %99
  %and = and i32 %shl.i, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool183.not = icmp eq i32 %and, 0
  br i1 %tobool183.not, label %do.end201, label %if.then179.if.end215_crit_edge, !prof !143

if.then179.if.end215_crit_edge:                   ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end215

do.end201:                                        ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #9
  %base203 = getelementptr inbounds %struct.drm_plane, ptr %95, i32 0, i32 4
  %100 = ptrtoint ptr %base203 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %base203, align 4
  %name206 = getelementptr inbounds %struct.drm_plane, ptr %95, i32 0, i32 2
  %102 = ptrtoint ptr %name206 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %name206, align 4
  %base207 = getelementptr i8, ptr %.pn497545, i32 120
  %104 = ptrtoint ptr %base207 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %base207, align 8
  %name209 = getelementptr i8, ptr %.pn497545, i32 8
  %106 = ptrtoint ptr %name209 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %name209, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 662, i32 noundef 9, ptr noundef nonnull @.str.20, i32 noundef %101, ptr noundef %103, i32 noundef %105, ptr noundef %107) #7
  br label %if.end215

if.end215:                                        ; preds = %do.end201, %if.then179.if.end215_crit_edge
  %108 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %primary, align 4
  %index.i.i518 = getelementptr inbounds %struct.drm_plane, ptr %109, i32 0, i32 17
  %110 = ptrtoint ptr %index.i.i518 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %index.i.i518, align 4
  %shl.i519 = shl nuw i32 1, %111
  %and226 = and i32 %shl.i519, %primary_with_crtc.0544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and226)
  %tobool227.not = icmp eq i32 %and226, 0
  br i1 %tobool227.not, label %if.end215.if.end254_crit_edge, label %do.end243, !prof !144

if.end215.if.end254_crit_edge:                    ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end254

do.end243:                                        ; preds = %if.end215
  call void @__sanitizer_cov_trace_pc() #9
  %base245 = getelementptr inbounds %struct.drm_plane, ptr %109, i32 0, i32 4
  %112 = ptrtoint ptr %base245 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %base245, align 4
  %name248 = getelementptr inbounds %struct.drm_plane, ptr %109, i32 0, i32 2
  %114 = ptrtoint ptr %name248 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %name248, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 665, i32 noundef 9, ptr noundef nonnull @.str.21, i32 noundef %113, ptr noundef %115) #7
  br label %if.end254

if.end254:                                        ; preds = %do.end243, %if.end215.if.end254_crit_edge
  %116 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %primary, align 4
  %index.i.i520 = getelementptr inbounds %struct.drm_plane, ptr %117, i32 0, i32 17
  %118 = ptrtoint ptr %index.i.i520 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %index.i.i520, align 4
  %shl.i521 = shl nuw i32 1, %119
  %or = or i32 %shl.i521, %primary_with_crtc.0544
  br label %if.end264

if.end264:                                        ; preds = %if.end254, %if.end169.if.end264_crit_edge
  %primary_with_crtc.1 = phi i32 [ %or, %if.end254 ], [ %primary_with_crtc.0544, %if.end169.if.end264_crit_edge ]
  %120 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %cursor, align 8
  %tobool266.not = icmp eq ptr %121, null
  br i1 %tobool266.not, label %if.end264.for.inc356_crit_edge, label %if.then267

if.end264.for.inc356_crit_edge:                   ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc356

if.then267:                                       ; preds = %if.end264
  %possible_crtcs270 = getelementptr inbounds %struct.drm_plane, ptr %121, i32 0, i32 5
  %122 = ptrtoint ptr %possible_crtcs270 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %possible_crtcs270, align 8
  %index.i.i522 = getelementptr i8, ptr %.pn497545, i32 148
  %124 = ptrtoint ptr %index.i.i522 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %index.i.i522, align 4
  %shl.i523 = shl nuw i32 1, %125
  %and272 = and i32 %shl.i523, %123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and272)
  %tobool273.not = icmp eq i32 %and272, 0
  br i1 %tobool273.not, label %do.end291, label %if.then267.if.end305_crit_edge, !prof !143

if.then267.if.end305_crit_edge:                   ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end305

do.end291:                                        ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #9
  %base293 = getelementptr inbounds %struct.drm_plane, ptr %121, i32 0, i32 4
  %126 = ptrtoint ptr %base293 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %base293, align 4
  %name296 = getelementptr inbounds %struct.drm_plane, ptr %121, i32 0, i32 2
  %128 = ptrtoint ptr %name296 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %name296, align 4
  %base297 = getelementptr i8, ptr %.pn497545, i32 120
  %130 = ptrtoint ptr %base297 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %base297, align 8
  %name299 = getelementptr i8, ptr %.pn497545, i32 8
  %132 = ptrtoint ptr %name299 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %name299, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 672, i32 noundef 9, ptr noundef nonnull @.str.22, i32 noundef %127, ptr noundef %129, i32 noundef %131, ptr noundef %133) #7
  br label %if.end305

if.end305:                                        ; preds = %do.end291, %if.then267.if.end305_crit_edge
  %134 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %cursor, align 8
  %index.i.i524 = getelementptr inbounds %struct.drm_plane, ptr %135, i32 0, i32 17
  %136 = ptrtoint ptr %index.i.i524 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %index.i.i524, align 4
  %shl.i525 = shl nuw i32 1, %137
  %and316 = and i32 %shl.i525, %cursor_with_crtc.0543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and316)
  %tobool317.not = icmp eq i32 %and316, 0
  br i1 %tobool317.not, label %if.end305.if.end344_crit_edge, label %do.end333, !prof !144

if.end305.if.end344_crit_edge:                    ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end344

do.end333:                                        ; preds = %if.end305
  call void @__sanitizer_cov_trace_pc() #9
  %base335 = getelementptr inbounds %struct.drm_plane, ptr %135, i32 0, i32 4
  %138 = ptrtoint ptr %base335 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %base335, align 4
  %name338 = getelementptr inbounds %struct.drm_plane, ptr %135, i32 0, i32 2
  %140 = ptrtoint ptr %name338 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %name338, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 675, i32 noundef 9, ptr noundef nonnull @.str.23, i32 noundef %139, ptr noundef %141) #7
  br label %if.end344

if.end344:                                        ; preds = %do.end333, %if.end305.if.end344_crit_edge
  %142 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %cursor, align 8
  %index.i.i526 = getelementptr inbounds %struct.drm_plane, ptr %143, i32 0, i32 17
  %144 = ptrtoint ptr %index.i.i526 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %index.i.i526, align 4
  %shl.i527 = shl nuw i32 1, %145
  %or354 = or i32 %shl.i527, %cursor_with_crtc.0543
  br label %for.inc356

for.inc356:                                       ; preds = %if.end344, %if.end264.for.inc356_crit_edge
  %cursor_with_crtc.1 = phi i32 [ %or354, %if.end344 ], [ %cursor_with_crtc.0543, %if.end264.for.inc356_crit_edge ]
  %146 = ptrtoint ptr %.pn497545 to i32
  call void @__asan_load4_noabort(i32 %146)
  %.pn497 = load ptr, ptr %.pn497545, align 4
  %cmp37.not = icmp eq ptr %.pn497, %crtc_list
  br i1 %cmp37.not, label %for.inc356.for.end362_crit_edge, label %for.inc356.for.body39_crit_edge

for.inc356.for.body39_crit_edge:                  ; preds = %for.inc356
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body39

for.inc356.for.end362_crit_edge:                  ; preds = %for.inc356
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end362

for.end362:                                       ; preds = %for.inc356.for.end362_crit_edge, %for.end27.for.end362_crit_edge
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 18
  %147 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %147)
  %.pn498546 = load ptr, ptr %plane_list, align 4
  %cmp372.not547 = icmp eq ptr %.pn498546, %plane_list
  br i1 %cmp372.not547, label %for.end362.for.end385_crit_edge, label %for.end362.for.body375_crit_edge

for.end362.for.body375_crit_edge:                 ; preds = %for.end362
  br label %for.body375

for.end362.for.end385_crit_edge:                  ; preds = %for.end362
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end385

for.body375:                                      ; preds = %for.body375.for.body375_crit_edge, %for.end362.for.body375_crit_edge
  %.pn498549 = phi ptr [ %.pn498, %for.body375.for.body375_crit_edge ], [ %.pn498546, %for.end362.for.body375_crit_edge ]
  %num_primary.0548 = phi i32 [ %spec.select, %for.body375.for.body375_crit_edge ], [ 0, %for.end362.for.body375_crit_edge ]
  %type = getelementptr i8, ptr %.pn498549, i32 476
  %148 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %149)
  %cmp376 = icmp eq i32 %149, 1
  %inc = zext i1 %cmp376 to i32
  %spec.select = add i32 %num_primary.0548, %inc
  %150 = ptrtoint ptr %.pn498549 to i32
  call void @__asan_load4_noabort(i32 %150)
  %.pn498 = load ptr, ptr %.pn498549, align 4
  %cmp372.not = icmp eq ptr %.pn498, %plane_list
  br i1 %cmp372.not, label %for.body375.for.end385_crit_edge, label %for.body375.for.body375_crit_edge

for.body375.for.body375_crit_edge:                ; preds = %for.body375
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body375

for.body375.for.end385_crit_edge:                 ; preds = %for.body375
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end385

for.end385:                                       ; preds = %for.body375.for.end385_crit_edge, %for.end362.for.end385_crit_edge
  %num_primary.0.lcssa = phi i32 [ 0, %for.end362.for.end385_crit_edge ], [ %spec.select, %for.body375.for.end385_crit_edge ]
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 30, i32 19
  %151 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num_primary.0.lcssa, i32 %152)
  %cmp388.not = icmp eq i32 %num_primary.0.lcssa, %152
  br i1 %cmp388.not, label %for.end385.cleanup_crit_edge, label %do.end404, !prof !144

for.end385.cleanup_crit_edge:                     ; preds = %for.end385
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end404:                                        ; preds = %for.end385
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 687, i32 noundef 9, ptr noundef nonnull @.str.24, i32 noundef %num_primary.0.lcssa, i32 noundef %152) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end404, %for.end385.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_create_standard_properties(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_enum(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_signed_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_object(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_bool(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_freed(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ww_mutex_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_resv_reset_shared_max(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ww_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_printfn_debug(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !15, !16, !18, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !115, !117, !119, !121}
!llvm.named.register.sp = !{!123}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 113, i32 7}
!2 = !{ptr @__ksymtab_drm_mode_config_reset, !3, !"__ksymtab_drm_mode_config_reset", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 207, i32 1}
!4 = !{ptr @drmm_mode_config_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 401, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @drmm_mode_config_init.__key.2, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 403, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @drmm_mode_config_init.__key.4, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 404, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @drmm_mode_config_init.__key.6, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 405, i32 2}
!15 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @drmm_mode_config_init.__key.8, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 417, i32 2}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @drmm_mode_config_init.__key.10, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 420, i32 2}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 458, i32 9}
!24 = !{ptr @__ksymtab_drmm_mode_config_init, !25, !"__ksymtab_drmm_mode_config_init", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 461, i32 1}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 507, i32 4}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 540, i32 44}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 542, i32 18}
!32 = !{ptr @__ksymtab_drm_mode_config_cleanup, !33, !"__ksymtab_drm_mode_config_cleanup", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 552, i32 1}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 645, i32 3}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 648, i32 3}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 651, i32 3}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 654, i32 3}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 659, i32 4}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 663, i32 4}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 669, i32 4}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 673, i32 4}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 685, i32 2}
!52 = !{ptr @xa_init_flags.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 228, i32 6}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 235, i32 4}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 241, i32 4}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 247, i32 4}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 253, i32 4}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 259, i32 4}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 265, i32 4}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 271, i32 4}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 277, i32 4}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 283, i32 4}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 289, i32 4}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 295, i32 4}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 301, i32 4}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 308, i32 4}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 314, i32 4}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 321, i32 4}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 327, i32 4}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 334, i32 4}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 341, i32 4}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 348, i32 4}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 355, i32 4}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 362, i32 4}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 369, i32 8}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 213, i32 28}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 214, i32 28}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 215, i32 27}
!107 = !{ptr @drm_plane_type_enum_list, !108, !"drm_plane_type_enum_list", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 212, i32 40}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../include/linux/ww_mutex.h", i32 297, i32 2}
!111 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/ww_mutex.h", i32 191, i32 2}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/drm/drm_modeset_lock.h", i32 113, i32 2}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 583, i32 3}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 594, i32 2}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/drm_mode_config.c", i32 617, i32 2}
!123 = !{!"sp"}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{!"auto-init"}
!134 = !{i64 3012355}
!135 = !{i64 3012552}
!136 = !{i64 2150497785}
!137 = !{i64 2156616199, i64 2156616479, i64 2156616813, i64 2156617147}
!138 = !{i64 2156628908, i64 2156629188, i64 2156629522, i64 2156629856}
!139 = !{i64 2156641827, i64 2156642107, i64 2156642441, i64 2156642775}
!140 = !{i8 0, i8 2}
!141 = !{i64 2156651065, i64 2156651345, i64 2156651679, i64 2156652013}
!142 = !{i64 2148462820, i64 2148462852, i64 2148462881, i64 2148462915, i64 2148462946, i64 2148462969}
!143 = !{!"branch_weights", i32 1, i32 2000}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{!146}
!146 = distinct !{!146, !147, !"drm_debug_printer: %agg.result"}
!147 = distinct !{!147, !"drm_debug_printer"}
