; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/drm_client_modeset.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_client_modeset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+drm_client_modeset_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_client_modeset_probe\09\09\09\09"
module asm "\09.long\09__crc_drm_client_modeset_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_modeset_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_modeset_probe\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_modeset_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_client_rotation\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_client_rotation\09\09\09\09"
module asm "\09.long\09__crc_drm_client_rotation\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_rotation:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_rotation\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_rotation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_client_modeset_check\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_client_modeset_check\09\09\09\09"
module asm "\09.long\09__crc_drm_client_modeset_check\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_modeset_check:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_modeset_check\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_modeset_check:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_client_modeset_commit_locked\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_client_modeset_commit_locked\09\09\09\09"
module asm "\09.long\09__crc_drm_client_modeset_commit_locked\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_modeset_commit_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_modeset_commit_locked\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_modeset_commit_locked:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_client_modeset_commit\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_client_modeset_commit\09\09\09\09"
module asm "\09.long\09__crc_drm_client_modeset_commit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_modeset_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_modeset_commit\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_modeset_commit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+drm_client_modeset_dpms\22, \22a\22\09"
module asm "\09.weak\09__crc_drm_client_modeset_dpms\09\09\09\09"
module asm "\09.long\09__crc_drm_client_modeset_dpms\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_client_modeset_dpms:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_client_modeset_dpms\22\09\09\09\09\09"
module asm "__kstrtabns_drm_client_modeset_dpms:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
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
%struct.atomic_t = type { i32 }
%struct.anon.86 = type { i32, ptr }
%struct.drm_client_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, %struct.mutex, ptr }
%struct.drm_mode_set = type { ptr, ptr, ptr, i32, i32, ptr, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16, i32, ptr, ptr, %struct.lockdep_map, i32, i32 }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_client_offset = type { i32, i32 }
%struct.drm_tile_group = type { %struct.kref, ptr, i32, [8 x i8] }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_property = type { %struct.list_head, %struct.drm_mode_object, i32, [32 x i8], i32, ptr, ptr, %struct.list_head }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@drm_client_modeset_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&client->modeset_mutex\00", [41 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/drm_client_modeset.c\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Memory allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"No connectors reported connected with modes\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"picking CRTCs for %dx%d config\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"desired mode %s set on crtc %d (%d,%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@drm_client_modeset_probe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_drm_client_modeset_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_modeset_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_modeset_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_modeset_probe to i32), ptr @__kstrtab_drm_client_modeset_probe, ptr @__kstrtabns_drm_client_modeset_probe }, section "___ksymtab+drm_client_modeset_probe", align 4
@__kstrtab_drm_client_rotation = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_rotation = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_rotation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_rotation to i32), ptr @__kstrtab_drm_client_rotation, ptr @__kstrtabns_drm_client_rotation }, section "___ksymtab+drm_client_rotation", align 4
@__kstrtab_drm_client_modeset_check = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_modeset_check = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_modeset_check = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_modeset_check to i32), ptr @__kstrtab_drm_client_modeset_check, ptr @__kstrtabns_drm_client_modeset_check }, section "___ksymtab+drm_client_modeset_check", align 4
@__kstrtab_drm_client_modeset_commit_locked = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_modeset_commit_locked = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_modeset_commit_locked = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_modeset_commit_locked to i32), ptr @__kstrtab_drm_client_modeset_commit_locked, ptr @__kstrtabns_drm_client_modeset_commit_locked }, section "___ksymtab+drm_client_modeset_commit_locked", align 4
@__kstrtab_drm_client_modeset_commit = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_modeset_commit = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_modeset_commit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_modeset_commit to i32), ptr @__kstrtab_drm_client_modeset_commit, ptr @__kstrtabns_drm_client_modeset_commit }, section "___ksymtab+drm_client_modeset_commit", align 4
@__kstrtab_drm_client_modeset_dpms = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_client_modeset_dpms = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_client_modeset_dpms = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_client_modeset_dpms to i32), ptr @__kstrtab_drm_client_modeset_dpms, ptr @__kstrtabns_drm_client_modeset_dpms }, section "___ksymtab+drm_client_modeset_dpms", align 4
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"connector %d enabled? %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"non desktop\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"connector %s not enabled, skipping\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"connector %s is disabled by user, skipping\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"connector %s has no encoder or crtc, skipping\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fallback: cloned configuration\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"looking for cmdline mode on connector %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"looking for preferred mode on connector %s %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"using first mode listed on connector %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"looking for current mode on connector %s\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Falling back to non tiled mode on Connector %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"connector %s on [CRTC:%d:%s]: %dx%d%s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"i\00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"fallback: Not all outputs enabled\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Enabled: %i, detected: %i\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Not using firmware configuration\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can clone using command line\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"can clone using 1024x768\0A\00", [38 x i8] zeroinitializer }, align 32
@drm_client_target_cloned._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.1, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016[drm] kms: can't enable cloning when we probably wanted to.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drm_client_target_cloned\00", [39 x i8] zeroinitializer }, align 32
@drm_client_target_cloned._entry_ptr = internal global ptr @drm_client_target_cloned._entry, section ".printk_index", align 4
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"looking for cmdline mode on connector %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"looking for preferred mode on connector %d %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"found mode %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no modes for connector tiled %d %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"returned %d %d for %d %d\0A\00", [38 x i8] zeroinitializer }, align 32
@switch.table.drm_client_rotation = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 2, i32 8], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967261]
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 47, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 97, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 778, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 809, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 820, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 835, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 854, i32 4 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 243, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 620, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 627, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 638, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 656, i32 5 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 661, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 669, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 676, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 696, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 706, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 712, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 733, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 734, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 741, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 304, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 329, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 332, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 422, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 428, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 459, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 353, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private constant [40 x i8] c"../drivers/gpu/drm/drm_client_modeset.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 365, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant [33 x i8] c"switch.table.drm_client_rotation\00", align 1
@llvm.compiler.used = appending global [46 x ptr] [ptr @__ksymtab_drm_client_modeset_check, ptr @__ksymtab_drm_client_modeset_commit, ptr @__ksymtab_drm_client_modeset_commit_locked, ptr @__ksymtab_drm_client_modeset_dpms, ptr @__ksymtab_drm_client_modeset_probe, ptr @__ksymtab_drm_client_rotation, ptr @drm_client_target_cloned._entry, ptr @drm_client_target_cloned._entry_ptr, ptr @drm_client_modeset_create.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @switch.table.drm_client_rotation], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_client_modeset_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drm_client_target_cloned._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.drm_client_rotation to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_client_modeset_create(ptr noundef %client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %num_crtc2 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 19
  %2 = ptrtoint ptr %num_crtc2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_crtc2, align 4
  %add = add i32 %3, 1
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 28) #10
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !93

kcalloc.exit.thread:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %modesets85 = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 6
  %6 = ptrtoint ptr %modesets85 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %modesets85, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #13
  %modesets = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 6
  %8 = ptrtoint ptr %modesets to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8.i.i, ptr %modesets, align 4
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %do.body

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end7.i.i
  %modeset_mutex = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %modeset_mutex, ptr noundef nonnull @.str, ptr noundef nonnull @drm_client_modeset_create.__key) #10
  %crtc_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 20
  %9 = ptrtoint ptr %crtc_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn99 = load ptr, ptr %crtc_list, align 4
  %cmp.not100 = icmp eq ptr %.pn99, %crtc_list
  br i1 %cmp.not100, label %do.body.for.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn102 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn99, %do.body.for.body_crit_edge ]
  %i.0101 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body.for.body_crit_edge ]
  %crtc.0 = getelementptr i8, ptr %.pn102, i32 -8
  %10 = ptrtoint ptr %modesets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %modesets, align 4
  %inc = add i32 %i.0101, 1
  %crtc8 = getelementptr %struct.drm_mode_set, ptr %11, i32 %i.0101, i32 1
  %12 = ptrtoint ptr %crtc8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %crtc.0, ptr %crtc8, align 4
  %13 = ptrtoint ptr %.pn102 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn102, align 4
  %cmp.not = icmp eq ptr %.pn, %crtc_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body.for.end_crit_edge
  %14 = ptrtoint ptr %modesets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %modesets, align 4
  %crtc19103 = getelementptr inbounds %struct.drm_mode_set, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %crtc19103 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtc19103, align 4
  %tobool20.not104 = icmp eq ptr %17, null
  br i1 %tobool20.not104, label %for.end.cleanup_crit_edge, label %for.body21.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body21.lr.ph:                                 ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp14 = icmp eq i32 %3, 1
  %spec.select = select i1 %cmp14, i32 32, i32 4
  br label %if.end7.i.i81

for.cond18:                                       ; preds = %if.end7.i.i81
  %incdec.ptr = getelementptr %struct.drm_mode_set, ptr %modeset.0105, i32 1
  %crtc19 = getelementptr %struct.drm_mode_set, ptr %modeset.0105, i32 1, i32 1
  %18 = ptrtoint ptr %crtc19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crtc19, align 4
  %tobool20.not = icmp eq ptr %19, null
  br i1 %tobool20.not, label %for.cond18.cleanup_crit_edge, label %for.cond18.if.end7.i.i81_crit_edge

for.cond18.if.end7.i.i81_crit_edge:               ; preds = %for.cond18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i81

for.cond18.cleanup_crit_edge:                     ; preds = %for.cond18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i81:                                    ; preds = %for.cond18.if.end7.i.i81_crit_edge, %for.body21.lr.ph
  %modeset.0105 = phi ptr [ %15, %for.body21.lr.ph ], [ %incdec.ptr, %for.cond18.if.end7.i.i81_crit_edge ]
  %call8.i.i80 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select, i32 noundef 3520) #13
  %connectors = getelementptr inbounds %struct.drm_mode_set, ptr %modeset.0105, i32 0, i32 5
  %20 = ptrtoint ptr %connectors to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call8.i.i80, ptr %connectors, align 4
  %tobool24.not = icmp eq ptr %call8.i.i80, null
  br i1 %tobool24.not, label %err_free, label %for.cond18

err_free:                                         ; preds = %if.end7.i.i81
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_client_modeset_free(ptr noundef %client)
  br label %cleanup

cleanup:                                          ; preds = %err_free, %for.cond18.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ -12, %err_free ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.cond18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @drm_client_modeset_free(ptr noundef %client) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %modeset_mutex = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %modeset_mutex, i32 noundef 0) #10
  tail call fastcc void @drm_client_modeset_release(ptr noundef %client)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 5, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !93

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 97, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %modesets = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 6
  %1 = ptrtoint ptr %modesets to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %modesets, align 4
  %crtc38 = getelementptr inbounds %struct.drm_mode_set, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %crtc38 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crtc38, align 4
  %tobool25.not39 = icmp eq ptr %4, null
  br i1 %tobool25.not39, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %modeset.040 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %2, %if.end.for.body_crit_edge ]
  %connectors = getelementptr inbounds %struct.drm_mode_set, ptr %modeset.040, i32 0, i32 5
  %5 = ptrtoint ptr %connectors to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %connectors, align 4
  tail call void @kfree(ptr noundef %6) #10
  %incdec.ptr = getelementptr %struct.drm_mode_set, ptr %modeset.040, i32 1
  %crtc = getelementptr %struct.drm_mode_set, ptr %modeset.040, i32 1, i32 1
  %7 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %crtc, align 4
  %tobool25.not = icmp eq ptr %8, null
  br i1 %tobool25.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %modeset_mutex) #10
  tail call void @mutex_destroy(ptr noundef %modeset_mutex) #10
  %9 = ptrtoint ptr %modesets to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %modesets, align 4
  tail call void @kfree(ptr noundef %10) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drm_client_modeset_release(ptr noundef %client) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 5, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !93

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 76, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %modesets = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 6
  %1 = ptrtoint ptr %modesets to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %modesets, align 4
  %crtc50 = getelementptr inbounds %struct.drm_mode_set, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %crtc50 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crtc50, align 4
  %tobool24.not51 = icmp eq ptr %4, null
  br i1 %tobool24.not51, label %if.end.for.end33_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end33_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end33

for.body:                                         ; preds = %for.end.for.body_crit_edge, %if.end.for.body_crit_edge
  %modeset.052 = phi ptr [ %incdec.ptr, %for.end.for.body_crit_edge ], [ %2, %if.end.for.body_crit_edge ]
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %mode = getelementptr inbounds %struct.drm_mode_set, ptr %modeset.052, i32 0, i32 2
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mode, align 4
  tail call void @drm_mode_destroy(ptr noundef %6, ptr noundef %8) #10
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %mode, align 4
  %10 = ptrtoint ptr %modeset.052 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %modeset.052, align 4
  %num_connectors = getelementptr inbounds %struct.drm_mode_set, ptr %modeset.052, i32 0, i32 6
  %11 = ptrtoint ptr %num_connectors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_connectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2748.not = icmp eq i32 %12, 0
  br i1 %cmp2748.not, label %for.body.for.end_crit_edge, label %for.body28.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body28.lr.ph:                                 ; preds = %for.body
  %connectors = getelementptr inbounds %struct.drm_mode_set, ptr %modeset.052, i32 0, i32 5
  br label %for.body28

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.body28.lr.ph
  %i.049 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc, %for.body28.for.body28_crit_edge ]
  %13 = ptrtoint ptr %connectors to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %connectors, align 4
  %arrayidx = getelementptr ptr, ptr %14, i32 %i.049
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %base.i = getelementptr inbounds %struct.drm_connector, ptr %16, i32 0, i32 6
  tail call void @drm_mode_object_put(ptr noundef %base.i) #10
  %17 = ptrtoint ptr %connectors to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %connectors, align 4
  %arrayidx30 = getelementptr ptr, ptr %18, i32 %i.049
  %19 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %arrayidx30, align 4
  %inc = add nuw i32 %i.049, 1
  %20 = ptrtoint ptr %num_connectors to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_connectors, align 4
  %cmp27 = icmp ult i32 %inc, %21
  br i1 %cmp27, label %for.body28.for.body28_crit_edge, label %for.body28.for.end_crit_edge

for.body28.for.end_crit_edge:                     ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body28

for.end:                                          ; preds = %for.body28.for.end_crit_edge, %for.body.for.end_crit_edge
  %22 = ptrtoint ptr %num_connectors to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %num_connectors, align 4
  %incdec.ptr = getelementptr %struct.drm_mode_set, ptr %modeset.052, i32 1
  %crtc = getelementptr %struct.drm_mode_set, ptr %modeset.052, i32 1, i32 1
  %23 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %crtc, align 4
  %tobool24.not = icmp eq ptr %24, null
  br i1 %tobool24.not, label %for.end.for.end33_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end.for.end33_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end33

for.end33:                                        ; preds = %for.end.for.end33_crit_edge, %if.end.for.end33_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_client_modeset_probe(ptr noundef %client, i32 noundef %width, i32 noundef %height) #0 align 64 {
entry:
  %ctx.i = alloca %struct.drm_modeset_acquire_ctx, align 4
  %conn_iter = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter) #10
  %0 = ptrtoint ptr %conn_iter to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter, align 4, !annotation !94
  %1 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !94
  %3 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %width)
  %tobool.not = icmp eq i32 %width, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %max_width = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 25
  %5 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_width, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %width.addr.0 = phi i32 [ %width, %entry.if.end_crit_edge ], [ %6, %if.then ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %height)
  %tobool2.not = icmp eq i32 %height, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %max_height = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 26
  %7 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_height, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %height.addr.0 = phi i32 [ %height, %if.end.if.end5_crit_edge ], [ %8, %if.then3 ]
  call void @drm_connector_list_iter_begin(ptr noundef %4, ptr noundef nonnull %conn_iter) #10
  %call497 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #10
  %tobool6.not498 = icmp eq ptr %call497, null
  br i1 %tobool6.not498, label %while.end.thread, label %if.end5.while.body_crit_edge

if.end5.while.body_crit_edge:                     ; preds = %if.end5
  br label %while.body

while.end.thread:                                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #10
  br label %cleanup143

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %if.end5.while.body_crit_edge
  %call501 = phi ptr [ %call, %if.end12.while.body_crit_edge ], [ %call497, %if.end5.while.body_crit_edge ]
  %connector_count.0500 = phi i32 [ %connector_count.2, %if.end12.while.body_crit_edge ], [ 0, %if.end5.while.body_crit_edge ]
  %connectors.0499 = phi ptr [ %connectors.2, %if.end12.while.body_crit_edge ], [ null, %if.end5.while.body_crit_edge ]
  %connector_type = getelementptr inbounds %struct.drm_connector, ptr %call501, i32 0, i32 10
  %9 = ptrtoint ptr %connector_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %connector_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %10)
  %cmp.not = icmp eq i32 %10, 18
  br i1 %cmp.not, label %while.body.if.end12_crit_edge, label %if.then7

while.body.if.end12_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then7:                                         ; preds = %while.body
  %add = add i32 %connector_count.0500, 1
  %mul = shl i32 %add, 2
  %call8 = call noalias ptr @krealloc(ptr noundef %connectors.0499, i32 noundef %mul, i32 noundef 3264) #14
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.then7.free_connectors_crit_edge, label %cleanup.thread

if.then7.free_connectors_crit_edge:               ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_connectors

cleanup.thread:                                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %base.i = getelementptr inbounds %struct.drm_connector, ptr %call501, i32 0, i32 6
  call void @drm_mode_object_get(ptr noundef %base.i) #10
  %arrayidx = getelementptr ptr, ptr %call8, i32 %connector_count.0500
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call501, ptr %arrayidx, align 4
  br label %if.end12

if.end12:                                         ; preds = %cleanup.thread, %while.body.if.end12_crit_edge
  %connectors.2 = phi ptr [ %connectors.0499, %while.body.if.end12_crit_edge ], [ %call8, %cleanup.thread ]
  %connector_count.2 = phi i32 [ %connector_count.0500, %while.body.if.end12_crit_edge ], [ %add, %cleanup.thread ]
  %call = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter) #10
  %tobool6.not = icmp eq ptr %call, null
  br i1 %tobool6.not, label %while.end, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %if.end12
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %connector_count.2)
  %tobool13.not = icmp eq i32 %connector_count.2, 0
  br i1 %tobool13.not, label %while.end.cleanup143_crit_edge, label %if.end15

while.end.cleanup143_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup143

if.end15:                                         ; preds = %while.end
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %connector_count.2, i32 4) #10
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end15.kcalloc.exit309_crit_edge, label %if.end7.i.i307, !prof !93

if.end15.kcalloc.exit309_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %kcalloc.exit309

if.end7.i.i307:                                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %14 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #13
  %call8.i.i306 = call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #13
  br label %kcalloc.exit309

kcalloc.exit309:                                  ; preds = %if.end7.i.i307, %if.end15.kcalloc.exit309_crit_edge
  %retval.0.i.i473 = phi ptr [ %call8.i.i, %if.end7.i.i307 ], [ null, %if.end15.kcalloc.exit309_crit_edge ]
  %retval.0.i.i308 = phi ptr [ %call8.i.i306, %if.end7.i.i307 ], [ null, %if.end15.kcalloc.exit309_crit_edge ]
  %15 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %connector_count.2, i32 8) #10
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %kcalloc.exit309.if.end7.i.i379_crit_edge, label %if.end7.i.i343, !prof !93

kcalloc.exit309.if.end7.i.i379_crit_edge:         ; preds = %kcalloc.exit309
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i379

if.end7.i.i343:                                   ; preds = %kcalloc.exit309
  call void @__sanitizer_cov_trace_pc() #12
  %17 = extractvalue { i32, i1 } %15, 0
  %call8.i.i342 = call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 3520) #13
  br label %if.end7.i.i379

if.end7.i.i379:                                   ; preds = %if.end7.i.i343, %kcalloc.exit309.if.end7.i.i379_crit_edge
  %retval.0.i.i344 = phi ptr [ %call8.i.i342, %if.end7.i.i343 ], [ null, %kcalloc.exit309.if.end7.i.i379_crit_edge ]
  %call8.i.i378 = call noalias align 128 ptr @__kmalloc(i32 noundef %connector_count.2, i32 noundef 3520) #13
  %tobool20.not = icmp eq ptr %retval.0.i.i473, null
  %tobool21.not = icmp eq ptr %retval.0.i.i308, null
  %or.cond = select i1 %tobool20.not, i1 true, i1 %tobool21.not
  %tobool23.not = icmp eq ptr %call8.i.i378, null
  %or.cond269 = select i1 %or.cond, i1 true, i1 %tobool23.not
  %tobool25.not = icmp eq ptr %retval.0.i.i344, null
  %or.cond270 = select i1 %or.cond269, i1 true, i1 %tobool25.not
  br i1 %or.cond270, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end7.i.i379
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #10
  br label %out

if.end27:                                         ; preds = %if.end7.i.i379
  %modeset_mutex = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %modeset_mutex, i32 noundef 0) #10
  %mode_config28 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30
  call void @mutex_lock_nested(ptr noundef %mode_config28, i32 noundef 0) #10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end27
  %i.0504 = phi i32 [ 0, %if.end27 ], [ %inc34, %for.body.for.body_crit_edge ]
  %total_modes_count.0503 = phi i32 [ 0, %if.end27 ], [ %add33, %for.body.for.body_crit_edge ]
  %arrayidx30 = getelementptr ptr, ptr %connectors.2, i32 %i.0504
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx30, align 4
  %funcs = getelementptr inbounds %struct.drm_connector, ptr %19, i32 0, i32 21
  %20 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %funcs, align 8
  %fill_modes = getelementptr inbounds %struct.drm_connector_funcs, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %fill_modes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fill_modes, align 4
  %call32 = call i32 %23(ptr noundef %19, i32 noundef %width.addr.0, i32 noundef %height.addr.0) #10
  %add33 = add i32 %call32, %total_modes_count.0503
  %inc34 = add nuw i32 %i.0504, 1
  %exitcond.not = icmp eq i32 %inc34, %connector_count.2
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add33)
  %tobool35.not = icmp eq i32 %add33, 0
  br i1 %tobool35.not, label %if.then36, label %for.end.for.body.i.preheader_crit_edge

for.end.for.body.i.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.preheader

if.then36:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4) #10
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then36, %for.end.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.058.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %any_enabled.0.off057.i = phi i1 [ %tobool9.i, %for.cond.i.for.body.i_crit_edge ], [ false, %for.body.i.preheader ]
  %arrayidx.i = getelementptr ptr, ptr %connectors.2, i32 %i.058.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %non_desktop.i.i = getelementptr inbounds %struct.drm_connector, ptr %25, i32 0, i32 20, i32 17
  %26 = ptrtoint ptr %non_desktop.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %non_desktop.i.i, align 8, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i, label %drm_connector_enabled.exit.i, label %drm_connector_enabled.exit.thread.i

drm_connector_enabled.exit.thread.i:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx149.i = getelementptr i8, ptr %call8.i.i378, i32 %i.058.i
  %28 = ptrtoint ptr %arrayidx149.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx149.i, align 1
  br label %for.cond.i

drm_connector_enabled.exit.i:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %status.i.i = getelementptr inbounds %struct.drm_connector, ptr %25, i32 0, i32 18
  %29 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %status.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp.i.i = icmp eq i32 %30, 1
  %arrayidx1.i = getelementptr i8, ptr %call8.i.i378, i32 %i.058.i
  %frombool.i = zext i1 %cmp.i.i to i8
  %31 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool.i, ptr %arrayidx1.i, align 1
  %spec.select55.i = select i1 %cmp.i.i, ptr @.str.10, ptr @.str.11
  br label %for.cond.i

for.cond.i:                                       ; preds = %drm_connector_enabled.exit.i, %drm_connector_enabled.exit.thread.i
  %arrayidx153.i = phi ptr [ %arrayidx149.i, %drm_connector_enabled.exit.thread.i ], [ %arrayidx1.i, %drm_connector_enabled.exit.i ]
  %32 = phi ptr [ @.str.11, %drm_connector_enabled.exit.thread.i ], [ %spec.select55.i, %drm_connector_enabled.exit.i ]
  %.in.i = getelementptr inbounds %struct.drm_connector, ptr %25, i32 0, i32 6
  %33 = ptrtoint ptr %.in.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %.in.i, align 8
  %35 = ptrtoint ptr %non_desktop.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %tobool.not54.in.i = load i8, ptr %non_desktop.i.i, align 8, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %tobool.not54.in.i)
  %tobool.not54.i = icmp eq i8 %tobool.not54.in.i, 0
  %spec.select.i = select i1 %tobool.not54.i, ptr %32, ptr @.str.9
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8, i32 noundef %34, ptr noundef nonnull %spec.select.i) #10
  %36 = ptrtoint ptr %arrayidx153.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx153.i, align 1, !range !95
  %38 = zext i8 %37 to i32
  %conv8.i = zext i1 %any_enabled.0.off057.i to i32
  %or.i = or i32 %38, %conv8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %tobool9.i = icmp ne i32 %or.i, 0
  %inc.i = add nuw i32 %i.058.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %connector_count.2
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.cond.i
  br i1 %tobool9.i, label %for.end.i.drm_client_connectors_enabled.exit_crit_edge, label %for.end.i.for.body15.i_crit_edge

for.end.i.for.body15.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body15.i

for.end.i.drm_client_connectors_enabled.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_client_connectors_enabled.exit

for.body15.i:                                     ; preds = %drm_connector_enabled.exit47.i.for.body15.i_crit_edge, %for.end.i.for.body15.i_crit_edge
  %i.161.i = phi i32 [ %inc21.i, %drm_connector_enabled.exit47.i.for.body15.i_crit_edge ], [ 0, %for.end.i.for.body15.i_crit_edge ]
  %arrayidx16.i = getelementptr ptr, ptr %connectors.2, i32 %i.161.i
  %39 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx16.i, align 4
  %non_desktop.i42.i = getelementptr inbounds %struct.drm_connector, ptr %40, i32 0, i32 20, i32 17
  %41 = ptrtoint ptr %non_desktop.i42.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %non_desktop.i42.i, align 8, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i43.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i43.i, label %if.end.i45.i, label %for.body15.i.drm_connector_enabled.exit47.i_crit_edge

for.body15.i.drm_connector_enabled.exit47.i_crit_edge: ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_connector_enabled.exit47.i

if.end.i45.i:                                     ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #12
  %status.i44.i = getelementptr inbounds %struct.drm_connector, ptr %40, i32 0, i32 18
  %43 = ptrtoint ptr %status.i44.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %status.i44.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp5.i.i = icmp ne i32 %44, 2
  br label %drm_connector_enabled.exit47.i

drm_connector_enabled.exit47.i:                   ; preds = %if.end.i45.i, %for.body15.i.drm_connector_enabled.exit47.i_crit_edge
  %retval.0.i46.i = phi i1 [ false, %for.body15.i.drm_connector_enabled.exit47.i_crit_edge ], [ %cmp5.i.i, %if.end.i45.i ]
  %arrayidx18.i = getelementptr i8, ptr %call8.i.i378, i32 %i.161.i
  %frombool19.i = zext i1 %retval.0.i46.i to i8
  %45 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %frombool19.i, ptr %arrayidx18.i, align 1
  %inc21.i = add nuw i32 %i.161.i, 1
  %exitcond62.not.i = icmp eq i32 %inc21.i, %connector_count.2
  br i1 %exitcond62.not.i, label %drm_connector_enabled.exit47.i.drm_client_connectors_enabled.exit_crit_edge, label %drm_connector_enabled.exit47.i.for.body15.i_crit_edge

drm_connector_enabled.exit47.i.for.body15.i_crit_edge: ; preds = %drm_connector_enabled.exit47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body15.i

drm_connector_enabled.exit47.i.drm_client_connectors_enabled.exit_crit_edge: ; preds = %drm_connector_enabled.exit47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_client_connectors_enabled.exit

drm_client_connectors_enabled.exit:               ; preds = %drm_connector_enabled.exit47.i.drm_client_connectors_enabled.exit_crit_edge, %for.end.i.drm_client_connectors_enabled.exit_crit_edge
  %46 = call i32 @llvm.umin.i32(i32 %connector_count.2, i32 32) #10
  %47 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %client, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx.i) #10
  %49 = call ptr @memset(ptr %ctx.i, i32 255, i32 84)
  %driver.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 4
  %50 = ptrtoint ptr %driver.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver.i.i.i.i, align 4
  %driver_features.i.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %51, i32 0, i32 24
  %52 = ptrtoint ptr %driver_features.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %driver_features.i.i.i.i, align 4
  %driver_features1.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 10
  %54 = ptrtoint ptr %driver_features1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %driver_features1.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %53, 16
  %and2.i.i.i.i = and i32 %and.i.i.i.i, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %cmp.i.i.not.i.i, label %lor.rhs.i.i, label %drm_client_connectors_enabled.exit.if.end7.i.i.i_crit_edge

drm_client_connectors_enabled.exit.if.end7.i.i.i_crit_edge: ; preds = %drm_client_connectors_enabled.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i.i

lor.rhs.i.i:                                      ; preds = %drm_client_connectors_enabled.exit
  %funcs.i.i = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 30, i32 27
  %56 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %funcs.i.i, align 4
  %tobool.not.i.i382 = icmp eq ptr %57, null
  br i1 %tobool.not.i.i382, label %lor.rhs.i.i.drm_client_firmware_config.exit.thread_crit_edge, label %drm_drv_uses_atomic_modeset.exit.i

lor.rhs.i.i.drm_client_firmware_config.exit.thread_crit_edge: ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_client_firmware_config.exit.thread

drm_drv_uses_atomic_modeset.exit.i:               ; preds = %lor.rhs.i.i
  %atomic_commit.i.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %atomic_commit.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %atomic_commit.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %59, null
  br i1 %cmp.i.not.i, label %drm_drv_uses_atomic_modeset.exit.i.drm_client_firmware_config.exit.thread_crit_edge, label %drm_drv_uses_atomic_modeset.exit.i.if.end7.i.i.i_crit_edge

drm_drv_uses_atomic_modeset.exit.i.if.end7.i.i.i_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i.i

drm_drv_uses_atomic_modeset.exit.i.drm_client_firmware_config.exit.thread_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_client_firmware_config.exit.thread

if.end7.i.i.i:                                    ; preds = %drm_drv_uses_atomic_modeset.exit.i.if.end7.i.i.i_crit_edge, %drm_client_connectors_enabled.exit.if.end7.i.i.i_crit_edge
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %46, i32 noundef 3520) #13
  %tobool28.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool28.not.i, label %if.end7.i.i.i.drm_client_firmware_config.exit.thread_crit_edge, label %if.end30.i

if.end7.i.i.i.drm_client_firmware_config.exit.thread_crit_edge: ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_client_firmware_config.exit.thread

if.end30.i:                                       ; preds = %if.end7.i.i.i
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx.i, i32 noundef 0) #10
  %call3157.i = call i32 @drm_modeset_lock_all_ctx(ptr noundef %48, ptr noundef nonnull %ctx.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3157.i)
  %cmp32.not58.i = icmp eq i32 %call3157.i, 0
  br i1 %cmp32.not58.i, label %if.end30.i.while.end.i_crit_edge, label %if.end30.i.while.body.i_crit_edge

if.end30.i.while.body.i_crit_edge:                ; preds = %if.end30.i
  br label %while.body.i

if.end30.i.while.end.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end30.i.while.body.i_crit_edge
  %call33.i = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx.i) #10
  %call31.i = call i32 @drm_modeset_lock_all_ctx(ptr noundef %48, ptr noundef nonnull %ctx.i) #10
  %cmp32.not.i = icmp eq i32 %call31.i, 0
  br i1 %cmp32.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %if.end30.i.while.end.i_crit_edge
  %60 = call ptr @memcpy(ptr %call8.i.i.i, ptr %call8.i.i378, i32 %46)
  %sub34.i = sub nuw nsw i32 32, %46
  %shr.i = lshr i32 -1, %sub34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp3559.not.i = icmp eq i32 %46, 0
  br i1 %cmp3559.not.i, label %while.end.i.retry.preheader.i_crit_edge, label %while.end.i.for.body.i386_crit_edge

while.end.i.for.body.i386_crit_edge:              ; preds = %while.end.i
  br label %for.body.i386

while.end.i.retry.preheader.i_crit_edge:          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.preheader.i

retry.preheader.i:                                ; preds = %for.inc.i.retry.preheader.i_crit_edge, %while.end.i.retry.preheader.i_crit_edge
  %num_tiled_conns.0.lcssa.i = phi i32 [ 0, %while.end.i.retry.preheader.i_crit_edge ], [ %num_tiled_conns.1.i, %for.inc.i.retry.preheader.i_crit_edge ]
  br label %retry.i

for.body.i386:                                    ; preds = %for.inc.i.for.body.i386_crit_edge, %while.end.i.for.body.i386_crit_edge
  %num_tiled_conns.061.i = phi i32 [ %num_tiled_conns.1.i, %for.inc.i.for.body.i386_crit_edge ], [ 0, %while.end.i.for.body.i386_crit_edge ]
  %i.060.i = phi i32 [ %inc41.i, %for.inc.i.for.body.i386_crit_edge ], [ 0, %while.end.i.for.body.i386_crit_edge ]
  %arrayidx.i385 = getelementptr ptr, ptr %connectors.2, i32 %i.060.i
  %61 = ptrtoint ptr %arrayidx.i385 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i385, align 4
  %has_tile.i = getelementptr inbounds %struct.drm_connector, ptr %62, i32 0, i32 54
  %63 = ptrtoint ptr %has_tile.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %has_tile.i, align 8, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool36.not.i = icmp eq i8 %64, 0
  br i1 %tobool36.not.i, label %for.body.i386.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i386.for.inc.i_crit_edge:                ; preds = %for.body.i386
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i386
  call void @__sanitizer_cov_trace_pc() #12
  %status.i = getelementptr inbounds %struct.drm_connector, ptr %62, i32 0, i32 18
  %65 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp38.i = icmp eq i32 %66, 1
  %inc.i387 = zext i1 %cmp38.i to i32
  %spec.select.i388 = add i32 %num_tiled_conns.061.i, %inc.i387
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i386.for.inc.i_crit_edge
  %num_tiled_conns.1.i = phi i32 [ %num_tiled_conns.061.i, %for.body.i386.for.inc.i_crit_edge ], [ %spec.select.i388, %land.lhs.true.i ]
  %inc41.i = add nuw nsw i32 %i.060.i, 1
  %exitcond.not.i389 = icmp eq i32 %inc41.i, %46
  br i1 %exitcond.not.i389, label %for.inc.i.retry.preheader.i_crit_edge, label %for.inc.i.for.body.i386_crit_edge

for.inc.i.for.body.i386_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i386

for.inc.i.retry.preheader.i_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.preheader.i

retry.i:                                          ; preds = %for.end197.i.retry.i_crit_edge, %retry.preheader.i
  %conn_configured.0.i = phi i32 [ %conn_configured.2.ph.i, %for.end197.i.retry.i_crit_edge ], [ 0, %retry.preheader.i ]
  %fallback.0.off0.i = phi i1 [ %fallback.2.off0.ph.i, %for.end197.i.retry.i_crit_edge ], [ true, %retry.preheader.i ]
  %num_connectors_enabled.0.i = phi i32 [ %num_connectors_enabled.2.ph.i, %for.end197.i.retry.i_crit_edge ], [ 0, %retry.preheader.i ]
  %num_connectors_detected.0.i = phi i32 [ %num_connectors_detected.3.ph.i, %for.end197.i.retry.i_crit_edge ], [ 0, %retry.preheader.i ]
  br i1 %cmp3559.not.i, label %retry.i.bail.i_crit_edge, label %for.body44.lr.ph.i

retry.i.bail.i_crit_edge:                         ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

for.body44.lr.ph.i:                               ; preds = %retry.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conn_configured.0.i)
  %cmp50.i = icmp eq i32 %conn_configured.0.i, 0
  br label %for.body44.i

for.body44.i:                                     ; preds = %for.inc195.i.for.body44.i_crit_edge, %for.body44.lr.ph.i
  %num_connectors_detected.170.i = phi i32 [ %num_connectors_detected.0.i, %for.body44.lr.ph.i ], [ %num_connectors_detected.3.ph.i, %for.inc195.i.for.body44.i_crit_edge ]
  %num_connectors_enabled.169.i = phi i32 [ %num_connectors_enabled.0.i, %for.body44.lr.ph.i ], [ %num_connectors_enabled.2.ph.i, %for.inc195.i.for.body44.i_crit_edge ]
  %fallback.1.off068.i = phi i1 [ %fallback.0.off0.i, %for.body44.lr.ph.i ], [ %fallback.2.off0.ph.i, %for.inc195.i.for.body44.i_crit_edge ]
  %i.167.i = phi i32 [ 0, %for.body44.lr.ph.i ], [ %inc196.i, %for.inc195.i.for.body44.i_crit_edge ]
  %conn_configured.165.i = phi i32 [ %conn_configured.0.i, %for.body44.lr.ph.i ], [ %conn_configured.2.ph.i, %for.inc195.i.for.body44.i_crit_edge ]
  %arrayidx45.i = getelementptr ptr, ptr %connectors.2, i32 %i.167.i
  %67 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx45.i, align 4
  %shl.i = shl nuw i32 1, %i.167.i
  %and46.i = and i32 %shl.i, %conn_configured.165.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool47.not.i = icmp eq i32 %and46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %for.body44.i.for.inc195.i_crit_edge

for.body44.i.for.inc195.i_crit_edge:              ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc195.i

if.end49.i:                                       ; preds = %for.body44.i
  br i1 %cmp50.i, label %land.lhs.true51.i, label %if.end49.i.if.end55.i_crit_edge

if.end49.i.if.end55.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

land.lhs.true51.i:                                ; preds = %if.end49.i
  %has_tile52.i = getelementptr inbounds %struct.drm_connector, ptr %68, i32 0, i32 54
  %69 = ptrtoint ptr %has_tile52.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %has_tile52.i, align 8, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool53.not.i = icmp eq i8 %70, 0
  br i1 %tobool53.not.i, label %land.lhs.true51.i.for.inc195.i_crit_edge, label %land.lhs.true51.i.if.end55.i_crit_edge

land.lhs.true51.i.if.end55.i_crit_edge:           ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55.i

land.lhs.true51.i.for.inc195.i_crit_edge:         ; preds = %land.lhs.true51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc195.i

if.end55.i:                                       ; preds = %land.lhs.true51.i.if.end55.i_crit_edge, %if.end49.i.if.end55.i_crit_edge
  %status56.i = getelementptr inbounds %struct.drm_connector, ptr %68, i32 0, i32 18
  %71 = ptrtoint ptr %status56.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %status56.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp57.i = icmp eq i32 %72, 1
  %inc59.i = zext i1 %cmp57.i to i32
  %spec.select12.i = add i32 %num_connectors_detected.170.i, %inc59.i
  %arrayidx61.i = getelementptr i8, ptr %call8.i.i378, i32 %i.167.i
  %73 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx61.i, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool62.not.i = icmp eq i8 %74, 0
  br i1 %tobool62.not.i, label %if.then63.i, label %if.end65.i

if.then63.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.drm_connector, ptr %68, i32 0, i32 7
  %75 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.12, ptr noundef %76) #10
  %or.i390 = or i32 %shl.i, %conn_configured.165.i
  br label %for.inc195.i

if.end65.i:                                       ; preds = %if.end55.i
  %force.i = getelementptr inbounds %struct.drm_connector, ptr %68, i32 0, i32 37
  %77 = ptrtoint ptr %force.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %force.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %78)
  %cmp66.i = icmp eq i32 %78, 1
  br i1 %cmp66.i, label %if.then67.i, label %if.end70.i

if.then67.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  %name68.i = getelementptr inbounds %struct.drm_connector, ptr %68, i32 0, i32 7
  %79 = ptrtoint ptr %name68.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name68.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.13, ptr noundef %80) #10
  %81 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %arrayidx61.i, align 1
  br label %for.inc195.i

if.end70.i:                                       ; preds = %if.end65.i
  %state.i = getelementptr inbounds %struct.drm_connector, ptr %68, i32 0, i32 52
  %82 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %state.i, align 8
  %best_encoder.i = getelementptr inbounds %struct.drm_connector_state, ptr %83, i32 0, i32 2
  %84 = ptrtoint ptr %best_encoder.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %best_encoder.i, align 4
  %tobool71.not.i = icmp eq ptr %85, null
  br i1 %tobool71.not.i, label %if.end70.i.if.then107.i_crit_edge, label %lor.lhs.false.i

if.end70.i.if.then107.i_crit_edge:                ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then107.i

lor.lhs.false.i:                                  ; preds = %if.end70.i
  %crtc.i = getelementptr inbounds %struct.drm_connector_state, ptr %83, i32 0, i32 1
  %86 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %crtc.i, align 4
  %tobool74.not.i = icmp eq ptr %87, null
  br i1 %tobool74.not.i, label %do.end92.i, label %if.end116.i, !prof !93

do.end92.i:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 634, i32 noundef 9, ptr noundef null) #10
  br label %if.then107.i

if.then107.i:                                     ; preds = %do.end92.i, %if.end70.i.if.then107.i_crit_edge
  %88 = ptrtoint ptr %force.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %force.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp109.i = icmp ugt i32 %89, 1
  br i1 %cmp109.i, label %if.then107.i.bail.i_crit_edge, label %if.end111.i

if.then107.i.bail.i_crit_edge:                    ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

if.end111.i:                                      ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #12
  %name112.i = getelementptr inbounds %struct.drm_connector, ptr %68, i32 0, i32 7
  %90 = ptrtoint ptr %name112.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %name112.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.14, ptr noundef %91) #10
  %92 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %arrayidx61.i, align 1
  %or115.i = or i32 %shl.i, %conn_configured.165.i
  br label %for.inc195.i

if.end116.i:                                      ; preds = %lor.lhs.false.i
  %inc117.i = add i32 %num_connectors_enabled.169.i, 1
  br label %for.body122.i

for.cond120.i:                                    ; preds = %for.body122.i
  %inc128.i = add nuw nsw i32 %j.063.i, 1
  %exitcond78.not.i = icmp eq i32 %inc128.i, %46
  br i1 %exitcond78.not.i, label %for.end129.i, label %for.cond120.i.for.body122.i_crit_edge

for.cond120.i.for.body122.i_crit_edge:            ; preds = %for.cond120.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body122.i

for.body122.i:                                    ; preds = %for.cond120.i.for.body122.i_crit_edge, %if.end116.i
  %j.063.i = phi i32 [ 0, %if.end116.i ], [ %inc128.i, %for.cond120.i.for.body122.i_crit_edge ]
  %arrayidx123.i = getelementptr ptr, ptr %retval.0.i.i473, i32 %j.063.i
  %93 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx123.i, align 4
  %cmp124.i = icmp eq ptr %94, %87
  br i1 %cmp124.i, label %if.then125.i, label %for.cond120.i

if.then125.i:                                     ; preds = %for.body122.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.15) #10
  br label %bail.i

for.end129.i:                                     ; preds = %for.cond120.i
  %name130.i = getelementptr inbounds %struct.drm_connector, ptr %68, i32 0, i32 7
  %95 = ptrtoint ptr %name130.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %name130.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.16, ptr noundef %96) #10
  %call131.i = call fastcc ptr @drm_connector_pick_cmdline_mode(ptr noundef %68) #10
  %arrayidx132.i = getelementptr ptr, ptr %retval.0.i.i308, i32 %i.167.i
  %97 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call131.i, ptr %arrayidx132.i, align 4
  %tobool134.not.i = icmp eq ptr %call131.i, null
  br i1 %tobool134.not.i, label %if.then135.i, label %for.end129.i.if.end161.i_crit_edge

for.end129.i.if.end161.i_crit_edge:               ; preds = %for.end129.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.i

if.then135.i:                                     ; preds = %for.end129.i
  %98 = ptrtoint ptr %name130.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %name130.i, align 4
  %has_tile137.i = getelementptr inbounds %struct.drm_connector, ptr %68, i32 0, i32 54
  %100 = ptrtoint ptr %has_tile137.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %has_tile137.i, align 8, !range !95
  %102 = zext i8 %101 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.17, ptr noundef %99, i32 noundef %102) #10
  %modes.i.i = getelementptr inbounds %struct.drm_connector, ptr %68, i32 0, i32 17
  %103 = ptrtoint ptr %modes.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pn23.i.i = load ptr, ptr %modes.i.i, align 4
  %cmp.not24.i.i = icmp eq ptr %.pn23.i.i, %modes.i.i
  br i1 %cmp.not24.i.i, label %if.then135.i.if.end141.thread33.i_crit_edge, label %if.then135.i.for.body.i.i_crit_edge

if.then135.i.for.body.i.i_crit_edge:              ; preds = %if.then135.i
  br label %for.body.i.i

if.then135.i.if.end141.thread33.i_crit_edge:      ; preds = %if.then135.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141.thread33.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then135.i.for.body.i.i_crit_edge
  %.pn25.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn23.i.i, %if.then135.i.for.body.i.i_crit_edge ]
  %hdisplay.i.i = getelementptr i8, ptr %.pn25.i.i, i32 -60
  %104 = ptrtoint ptr %hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %hdisplay.i.i, align 4
  %conv.i.i = zext i16 %105 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %width.addr.0, i32 %conv.i.i)
  %cmp2.i.i = icmp slt i32 %width.addr.0, %conv.i.i
  br i1 %cmp2.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

lor.lhs.false.i.i:                                ; preds = %for.body.i.i
  %vdisplay.i.i = getelementptr i8, ptr %.pn25.i.i, i32 -50
  %106 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %vdisplay.i.i, align 2
  %conv4.i.i = zext i16 %107 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %height.addr.0, i32 %conv4.i.i)
  %cmp5.i.i391 = icmp slt i32 %height.addr.0, %conv4.i.i
  br i1 %cmp5.i.i391, label %lor.lhs.false.i.i.for.inc.i.i_crit_edge, label %if.end.i.i392

lor.lhs.false.i.i.for.inc.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.end.i.i392:                                    ; preds = %lor.lhs.false.i.i
  %type.i.i = getelementptr i8, ptr %.pn25.i.i, i32 -2
  %108 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %type.i.i, align 2
  %110 = and i8 %109, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool.not.i13.i = icmp eq i8 %110, 0
  br i1 %tobool.not.i13.i, label %if.end.i.i392.for.inc.i.i_crit_edge, label %if.end141.i

if.end.i.i392.for.inc.i.i_crit_edge:              ; preds = %if.end.i.i392
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i392.for.inc.i.i_crit_edge, %lor.lhs.false.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %111 = ptrtoint ptr %.pn25.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pn.i.i = load ptr, ptr %.pn25.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %modes.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end141.thread33.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.if.end141.thread33.i_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end141.thread33.i

if.end141.thread33.i:                             ; preds = %for.inc.i.i.if.end141.thread33.i_crit_edge, %if.then135.i.if.end141.thread33.i_crit_edge
  %112 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %arrayidx132.i, align 4
  br label %land.lhs.true144.i

if.end141.i:                                      ; preds = %if.end.i.i392
  %mode.0.le.i.i = getelementptr i8, ptr %.pn25.i.i, i32 -64
  %113 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %mode.0.le.i.i, ptr %arrayidx132.i, align 4
  %tobool143.not.i = icmp eq ptr %mode.0.le.i.i, null
  br i1 %tobool143.not.i, label %if.end141.i.land.lhs.true144.i_crit_edge, label %if.end141.i.if.end161.i_crit_edge

if.end141.i.if.end161.i_crit_edge:                ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.i

if.end141.i.land.lhs.true144.i_crit_edge:         ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true144.i

land.lhs.true144.i:                               ; preds = %if.end141.i.land.lhs.true144.i_crit_edge, %if.end141.thread33.i
  %114 = ptrtoint ptr %modes.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile ptr, ptr %modes.i.i, align 4
  %cmp.i14.not.i = icmp eq ptr %115, %modes.i.i
  br i1 %cmp.i14.not.i, label %if.end153thread-pre-split.i, label %if.then148.i

if.then148.i:                                     ; preds = %land.lhs.true144.i
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %name130.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %name130.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.18, ptr noundef %117) #10
  %118 = ptrtoint ptr %modes.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %modes.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %119, i32 -64
  %120 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %add.ptr.i, ptr %arrayidx132.i, align 4
  br label %if.end153.i

if.end153thread-pre-split.i:                      ; preds = %land.lhs.true144.i
  call void @__sanitizer_cov_trace_pc() #12
  %121 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %.pr.i = load ptr, ptr %arrayidx132.i, align 4
  br label %if.end153.i

if.end153.i:                                      ; preds = %if.end153thread-pre-split.i, %if.then148.i
  %122 = phi ptr [ %.pr.i, %if.end153thread-pre-split.i ], [ %add.ptr.i, %if.then148.i ]
  %tobool155.not.i = icmp eq ptr %122, null
  br i1 %tobool155.not.i, label %if.then156.i, label %if.end153.i.if.end161.i_crit_edge

if.end153.i.if.end161.i_crit_edge:                ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161.i

if.then156.i:                                     ; preds = %if.end153.i
  call void @__sanitizer_cov_trace_pc() #12
  %123 = ptrtoint ptr %name130.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %name130.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef %124) #10
  %125 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %state.i, align 8
  %crtc159.i = getelementptr inbounds %struct.drm_connector_state, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %crtc159.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %crtc159.i, align 4
  %mode.i = getelementptr inbounds %struct.drm_crtc, ptr %128, i32 0, i32 12
  %129 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %mode.i, ptr %arrayidx132.i, align 4
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then156.i, %if.end153.i.if.end161.i_crit_edge, %if.end141.i.if.end161.i_crit_edge, %for.end129.i.if.end161.i_crit_edge
  %has_tile162.i = getelementptr inbounds %struct.drm_connector, ptr %68, i32 0, i32 54
  %130 = ptrtoint ptr %has_tile162.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %has_tile162.i, align 8, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool163.not.i = icmp eq i8 %131, 0
  br i1 %tobool163.not.i, label %if.end161.i.if.end173.i_crit_edge, label %land.lhs.true165.i

if.end161.i.if.end173.i_crit_edge:                ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end173.i

land.lhs.true165.i:                               ; preds = %if.end161.i
  %num_h_tile.i = getelementptr inbounds %struct.drm_connector, ptr %68, i32 0, i32 57
  %132 = ptrtoint ptr %num_h_tile.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %num_h_tile.i, align 1
  %conv166.i = zext i8 %133 to i32
  %num_v_tile.i = getelementptr inbounds %struct.drm_connector, ptr %68, i32 0, i32 58
  %134 = ptrtoint ptr %num_v_tile.i to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %num_v_tile.i, align 2
  %conv167.i = zext i8 %135 to i32
  %mul.i = mul nuw nsw i32 %conv167.i, %conv166.i
  call void @__sanitizer_cov_trace_cmp4(i32 %num_tiled_conns.0.lcssa.i, i32 %mul.i)
  %cmp168.i = icmp slt i32 %num_tiled_conns.0.lcssa.i, %mul.i
  br i1 %cmp168.i, label %if.then170.i, label %land.lhs.true165.i.if.end173.i_crit_edge

land.lhs.true165.i.if.end173.i_crit_edge:         ; preds = %land.lhs.true165.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end173.i

if.then170.i:                                     ; preds = %land.lhs.true165.i
  %base.i393 = getelementptr inbounds %struct.drm_connector, ptr %68, i32 0, i32 6
  %136 = ptrtoint ptr %base.i393 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %base.i393, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %137) #10
  %modes.i16.i = getelementptr inbounds %struct.drm_connector, ptr %68, i32 0, i32 17
  %tile_h_size.i.i = getelementptr inbounds %struct.drm_connector, ptr %68, i32 0, i32 61
  %tile_v_size.i.i = getelementptr inbounds %struct.drm_connector, ptr %68, i32 0, i32 62
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %land.lhs.true.i.i394.for.cond.i.i_crit_edge, %if.then170.i
  %.pn.in.i.i = phi ptr [ %modes.i16.i, %if.then170.i ], [ %.pn.i17.i, %land.lhs.true.i.i394.for.cond.i.i_crit_edge ]
  %138 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %.pn.i17.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i18.i = icmp eq ptr %.pn.i17.i, %modes.i16.i
  br i1 %cmp.not.i18.i, label %for.cond.i.i.drm_connector_fallback_non_tiled_mode.exit.i_crit_edge, label %for.body.i20.i

for.cond.i.i.drm_connector_fallback_non_tiled_mode.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_connector_fallback_non_tiled_mode.exit.i

for.body.i20.i:                                   ; preds = %for.cond.i.i
  %hdisplay.i19.i = getelementptr i8, ptr %.pn.i17.i, i32 -60
  %139 = ptrtoint ptr %hdisplay.i19.i to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %hdisplay.i19.i, align 4
  %141 = ptrtoint ptr %tile_h_size.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %tile_h_size.i.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %140, i16 %142)
  %cmp3.i.i = icmp eq i16 %140, %142
  br i1 %cmp3.i.i, label %land.lhs.true.i.i394, label %cleanup.split.loop.exit21.i22.i

land.lhs.true.i.i394:                             ; preds = %for.body.i20.i
  %vdisplay.i21.i = getelementptr i8, ptr %.pn.i17.i, i32 -50
  %143 = ptrtoint ptr %vdisplay.i21.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %vdisplay.i21.i, align 2
  %145 = ptrtoint ptr %tile_v_size.i.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %tile_v_size.i.i, align 8
  %cmp7.i.i = icmp eq i16 %144, %146
  br i1 %cmp7.i.i, label %land.lhs.true.i.i394.for.cond.i.i_crit_edge, label %cleanup.split.loop.exit23.i.i

land.lhs.true.i.i394.for.cond.i.i_crit_edge:      ; preds = %land.lhs.true.i.i394
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

cleanup.split.loop.exit21.i22.i:                  ; preds = %for.body.i20.i
  call void @__sanitizer_cov_trace_pc() #12
  %mode.0.le25.i.i = getelementptr i8, ptr %.pn.i17.i, i32 -64
  br label %drm_connector_fallback_non_tiled_mode.exit.i

cleanup.split.loop.exit23.i.i:                    ; preds = %land.lhs.true.i.i394
  call void @__sanitizer_cov_trace_pc() #12
  %mode.0.le.i23.i = getelementptr i8, ptr %.pn.i17.i, i32 -64
  br label %drm_connector_fallback_non_tiled_mode.exit.i

drm_connector_fallback_non_tiled_mode.exit.i:     ; preds = %cleanup.split.loop.exit23.i.i, %cleanup.split.loop.exit21.i22.i, %for.cond.i.i.drm_connector_fallback_non_tiled_mode.exit.i_crit_edge
  %retval.0.i24.i = phi ptr [ %mode.0.le25.i.i, %cleanup.split.loop.exit21.i22.i ], [ %mode.0.le.i23.i, %cleanup.split.loop.exit23.i.i ], [ null, %for.cond.i.i.drm_connector_fallback_non_tiled_mode.exit.i_crit_edge ]
  %147 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %retval.0.i24.i, ptr %arrayidx132.i, align 4
  br label %if.end173.i

if.end173.i:                                      ; preds = %drm_connector_fallback_non_tiled_mode.exit.i, %land.lhs.true165.i.if.end173.i_crit_edge, %if.end161.i.if.end173.i_crit_edge
  %arrayidx174.i = getelementptr ptr, ptr %retval.0.i.i473, i32 %i.167.i
  %148 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %87, ptr %arrayidx174.i, align 4
  %149 = ptrtoint ptr %name130.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %name130.i, align 4
  %151 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %state.i, align 8
  %crtc177.i = getelementptr inbounds %struct.drm_connector_state, ptr %152, i32 0, i32 1
  %153 = ptrtoint ptr %crtc177.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %crtc177.i, align 4
  %base178.i = getelementptr inbounds %struct.drm_crtc, ptr %154, i32 0, i32 5
  %155 = ptrtoint ptr %base178.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %base178.i, align 8
  %name182.i = getelementptr inbounds %struct.drm_crtc, ptr %154, i32 0, i32 3
  %157 = ptrtoint ptr %name182.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %name182.i, align 8
  %159 = ptrtoint ptr %arrayidx132.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %arrayidx132.i, align 4
  %hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %hdisplay.i, align 4
  %conv184.i = zext i16 %162 to i32
  %vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %160, i32 0, i32 6
  %163 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %vdisplay.i, align 2
  %conv186.i = zext i16 %164 to i32
  %flags.i = getelementptr inbounds %struct.drm_display_mode, ptr %160, i32 0, i32 11
  %165 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %flags.i, align 4
  %and188.i = and i32 %166, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and188.i)
  %tobool189.not.i = icmp eq i32 %and188.i, 0
  %cond190.i = select i1 %tobool189.not.i, ptr @.str.23, ptr @.str.22
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.21, ptr noundef %150, i32 noundef %156, ptr noundef %158, i32 noundef %conv184.i, i32 noundef %conv186.i, ptr noundef nonnull %cond190.i) #10
  %or192.i = or i32 %shl.i, %conn_configured.165.i
  br label %for.inc195.i

for.inc195.i:                                     ; preds = %if.end173.i, %if.end111.i, %if.then67.i, %if.then63.i, %land.lhs.true51.i.for.inc195.i_crit_edge, %for.body44.i.for.inc195.i_crit_edge
  %conn_configured.2.ph.i = phi i32 [ %conn_configured.165.i, %land.lhs.true51.i.for.inc195.i_crit_edge ], [ %conn_configured.165.i, %for.body44.i.for.inc195.i_crit_edge ], [ %or.i390, %if.then63.i ], [ %or192.i, %if.end173.i ], [ %or115.i, %if.end111.i ], [ %conn_configured.165.i, %if.then67.i ]
  %fallback.2.off0.ph.i = phi i1 [ %fallback.1.off068.i, %land.lhs.true51.i.for.inc195.i_crit_edge ], [ %fallback.1.off068.i, %for.body44.i.for.inc195.i_crit_edge ], [ %fallback.1.off068.i, %if.then63.i ], [ false, %if.end173.i ], [ %fallback.1.off068.i, %if.end111.i ], [ %fallback.1.off068.i, %if.then67.i ]
  %num_connectors_enabled.2.ph.i = phi i32 [ %num_connectors_enabled.169.i, %land.lhs.true51.i.for.inc195.i_crit_edge ], [ %num_connectors_enabled.169.i, %for.body44.i.for.inc195.i_crit_edge ], [ %num_connectors_enabled.169.i, %if.then63.i ], [ %inc117.i, %if.end173.i ], [ %num_connectors_enabled.169.i, %if.end111.i ], [ %num_connectors_enabled.169.i, %if.then67.i ]
  %num_connectors_detected.3.ph.i = phi i32 [ %num_connectors_detected.170.i, %land.lhs.true51.i.for.inc195.i_crit_edge ], [ %num_connectors_detected.170.i, %for.body44.i.for.inc195.i_crit_edge ], [ %spec.select12.i, %if.then63.i ], [ %spec.select12.i, %if.end173.i ], [ %spec.select12.i, %if.end111.i ], [ %spec.select12.i, %if.then67.i ]
  %inc196.i = add nuw nsw i32 %i.167.i, 1
  %exitcond79.not.i = icmp eq i32 %inc196.i, %46
  br i1 %exitcond79.not.i, label %for.end197.i, label %for.inc195.i.for.body44.i_crit_edge

for.inc195.i.for.body44.i_crit_edge:              ; preds = %for.inc195.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body44.i

for.end197.i:                                     ; preds = %for.inc195.i
  %and198.i = and i32 %conn_configured.2.ph.i, %shr.i
  call void @__sanitizer_cov_trace_cmp4(i32 %and198.i, i32 %shr.i)
  %cmp199.not.i = icmp eq i32 %and198.i, %shr.i
  call void @__sanitizer_cov_trace_cmp4(i32 %conn_configured.2.ph.i, i32 %conn_configured.0.i)
  %cmp202.not.i = icmp eq i32 %conn_configured.2.ph.i, %conn_configured.0.i
  %or.cond.i = or i1 %cmp202.not.i, %cmp199.not.i
  br i1 %or.cond.i, label %if.end205.i, label %for.end197.i.retry.i_crit_edge

for.end197.i.retry.i_crit_edge:                   ; preds = %for.end197.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.i

if.end205.i:                                      ; preds = %for.end197.i
  call void @__sanitizer_cov_trace_cmp4(i32 %num_connectors_enabled.2.ph.i, i32 %num_connectors_detected.3.ph.i)
  %cmp206.not.i = icmp eq i32 %num_connectors_enabled.2.ph.i, %num_connectors_detected.3.ph.i
  br i1 %cmp206.not.i, label %if.end205.i.if.end212.i_crit_edge, label %land.lhs.true208.i

if.end205.i.if.end212.i_crit_edge:                ; preds = %if.end205.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212.i

land.lhs.true208.i:                               ; preds = %if.end205.i
  %num_crtc.i = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 30, i32 19
  %167 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %num_crtc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num_connectors_enabled.2.ph.i, i32 %168)
  %cmp209.i = icmp slt i32 %num_connectors_enabled.2.ph.i, %168
  br i1 %cmp209.i, label %if.then211.i, label %land.lhs.true208.i.if.end212.i_crit_edge

land.lhs.true208.i.if.end212.i_crit_edge:         ; preds = %land.lhs.true208.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end212.i

if.then211.i:                                     ; preds = %land.lhs.true208.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.24) #10
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.25, i32 noundef %num_connectors_enabled.2.ph.i, i32 noundef %num_connectors_detected.3.ph.i) #10
  br label %bail.i

if.end212.i:                                      ; preds = %land.lhs.true208.i.if.end212.i_crit_edge, %if.end205.i.if.end212.i_crit_edge
  br i1 %fallback.2.off0.ph.i, label %if.end212.i.bail.i_crit_edge, label %drm_client_firmware_config.exit

if.end212.i.bail.i_crit_edge:                     ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bail.i

bail.i:                                           ; preds = %if.end212.i.bail.i_crit_edge, %if.then211.i, %if.then125.i, %if.then107.i.bail.i_crit_edge, %retry.i.bail.i_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.26) #10
  %169 = call ptr @memcpy(ptr %call8.i.i378, ptr %call8.i.i.i, i32 %46)
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx.i) #10
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx.i) #10
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx.i) #10
  br label %if.then39

drm_client_firmware_config.exit.thread:           ; preds = %if.end7.i.i.i.drm_client_firmware_config.exit.thread_crit_edge, %drm_drv_uses_atomic_modeset.exit.i.drm_client_firmware_config.exit.thread_crit_edge, %lor.rhs.i.i.drm_client_firmware_config.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx.i) #10
  br label %if.then39

drm_client_firmware_config.exit:                  ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx.i) #10
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx.i) #10
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx.i) #10
  br label %if.end48

if.then39:                                        ; preds = %drm_client_firmware_config.exit.thread, %bail.i
  %mul40 = shl i32 %connector_count.2, 2
  %170 = call ptr @memset(ptr %retval.0.i.i308, i32 0, i32 %mul40)
  %171 = call ptr @memset(ptr %retval.0.i.i473, i32 0, i32 %mul40)
  %mul42 = shl i32 %connector_count.2, 3
  %172 = call ptr @memset(ptr %retval.0.i.i344, i32 0, i32 %mul42)
  %num_crtc.i395 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 19
  %173 = ptrtoint ptr %num_crtc.i395 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %num_crtc.i395, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %174)
  %cmp.i = icmp sgt i32 %174, 1
  br i1 %cmp.i, label %if.then39.land.lhs.true_crit_edge, label %if.then39.for.body.i399_crit_edge

if.then39.for.body.i399_crit_edge:                ; preds = %if.then39
  br label %for.body.i399

if.then39.land.lhs.true_crit_edge:                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

for.body.i399:                                    ; preds = %for.body.i399.for.body.i399_crit_edge, %if.then39.for.body.i399_crit_edge
  %count.015.i = phi i32 [ %spec.select.i397, %for.body.i399.for.body.i399_crit_edge ], [ 0, %if.then39.for.body.i399_crit_edge ]
  %i.014.i = phi i32 [ %inc4.i, %for.body.i399.for.body.i399_crit_edge ], [ 0, %if.then39.for.body.i399_crit_edge ]
  %arrayidx.i396 = getelementptr i8, ptr %call8.i.i378, i32 %i.014.i
  %175 = ptrtoint ptr %arrayidx.i396 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %arrayidx.i396, align 1, !range !95
  %177 = zext i8 %176 to i32
  %spec.select.i397 = add i32 %count.015.i, %177
  %inc4.i = add nuw i32 %i.014.i, 1
  %exitcond.not.i398 = icmp eq i32 %inc4.i, %connector_count.2
  br i1 %exitcond.not.i398, label %for.end.i400, label %for.body.i399.for.body.i399_crit_edge

for.body.i399.for.body.i399_crit_edge:            ; preds = %for.body.i399
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i399

for.end.i400:                                     ; preds = %for.body.i399
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %spec.select.i397)
  %phi.cmp.i = icmp slt i32 %spec.select.i397, 2
  br i1 %phi.cmp.i, label %for.end.i400.land.lhs.true_crit_edge, label %for.end.i400.for.body10.i_crit_edge

for.end.i400.for.body10.i_crit_edge:              ; preds = %for.end.i400
  br label %for.body10.i

for.end.i400.land.lhs.true_crit_edge:             ; preds = %for.end.i400
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

for.body10.i:                                     ; preds = %for.inc36.i.for.body10.i_crit_edge, %for.end.i400.for.body10.i_crit_edge
  %i.123.i = phi i32 [ %inc37.i, %for.inc36.i.for.body10.i_crit_edge ], [ 0, %for.end.i400.for.body10.i_crit_edge ]
  %can_clone.0.off022.i = phi i1 [ %can_clone.3.off0.i, %for.inc36.i.for.body10.i_crit_edge ], [ true, %for.end.i400.for.body10.i_crit_edge ]
  %arrayidx11.i = getelementptr i8, ptr %call8.i.i378, i32 %i.123.i
  %178 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %arrayidx11.i, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool12.not.i = icmp eq i8 %179, 0
  br i1 %tobool12.not.i, label %for.body10.i.for.inc36.i_crit_edge, label %if.end14.i

for.body10.i.for.inc36.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36.i

if.end14.i:                                       ; preds = %for.body10.i
  %arrayidx15.i = getelementptr ptr, ptr %connectors.2, i32 %i.123.i
  %180 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx15.i, align 4
  %call.i = call fastcc ptr @drm_connector_pick_cmdline_mode(ptr noundef %181) #10
  %arrayidx16.i401 = getelementptr ptr, ptr %retval.0.i.i308, i32 %i.123.i
  %182 = ptrtoint ptr %arrayidx16.i401 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %call.i, ptr %arrayidx16.i401, align 4
  %tobool18.not.i = icmp eq ptr %call.i, null
  br i1 %tobool18.not.i, label %if.end14.i.for.body45.preheader.i_crit_edge, label %for.cond21.preheader.i

if.end14.i.for.body45.preheader.i_crit_edge:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45.preheader.i

for.cond21.preheader.i:                           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.123.i)
  %cmp2216.i = icmp sgt i32 %i.123.i, 0
  br i1 %cmp2216.i, label %for.cond21.preheader.i.for.body23.i_crit_edge, label %for.cond21.preheader.i.for.inc36.i_crit_edge

for.cond21.preheader.i.for.inc36.i_crit_edge:     ; preds = %for.cond21.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36.i

for.cond21.preheader.i.for.body23.i_crit_edge:    ; preds = %for.cond21.preheader.i
  br label %for.body23.i

for.body23.i:                                     ; preds = %for.inc33.i.for.body23.i_crit_edge, %for.cond21.preheader.i.for.body23.i_crit_edge
  %j.018.i = phi i32 [ %inc34.i, %for.inc33.i.for.body23.i_crit_edge ], [ 0, %for.cond21.preheader.i.for.body23.i_crit_edge ]
  %can_clone.1.off017.i = phi i1 [ %can_clone.2.off0.i, %for.inc33.i.for.body23.i_crit_edge ], [ %can_clone.0.off022.i, %for.cond21.preheader.i.for.body23.i_crit_edge ]
  %arrayidx24.i = getelementptr i8, ptr %call8.i.i378, i32 %j.018.i
  %183 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %184 = load i8, ptr %arrayidx24.i, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool25.not.i = icmp eq i8 %184, 0
  br i1 %tobool25.not.i, label %for.body23.i.for.inc33.i_crit_edge, label %if.end27.i

for.body23.i.for.inc33.i_crit_edge:               ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc33.i

if.end27.i:                                       ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx28.i = getelementptr ptr, ptr %retval.0.i.i308, i32 %j.018.i
  %185 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %arrayidx28.i, align 4
  %187 = ptrtoint ptr %arrayidx16.i401 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx16.i401, align 4
  %call30.i = call zeroext i1 @drm_mode_match(ptr noundef %186, ptr noundef %188, i32 noundef 15) #10
  %spec.select10.i = select i1 %call30.i, i1 %can_clone.1.off017.i, i1 false
  br label %for.inc33.i

for.inc33.i:                                      ; preds = %if.end27.i, %for.body23.i.for.inc33.i_crit_edge
  %can_clone.2.off0.i = phi i1 [ %can_clone.1.off017.i, %for.body23.i.for.inc33.i_crit_edge ], [ %spec.select10.i, %if.end27.i ]
  %inc34.i = add nuw nsw i32 %j.018.i, 1
  %exitcond39.not.i = icmp eq i32 %inc34.i, %i.123.i
  br i1 %exitcond39.not.i, label %for.inc33.i.for.inc36.i_crit_edge, label %for.inc33.i.for.body23.i_crit_edge

for.inc33.i.for.body23.i_crit_edge:               ; preds = %for.inc33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body23.i

for.inc33.i.for.inc36.i_crit_edge:                ; preds = %for.inc33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc36.i

for.inc36.i:                                      ; preds = %for.inc33.i.for.inc36.i_crit_edge, %for.cond21.preheader.i.for.inc36.i_crit_edge, %for.body10.i.for.inc36.i_crit_edge
  %can_clone.3.off0.i = phi i1 [ %can_clone.0.off022.i, %for.body10.i.for.inc36.i_crit_edge ], [ %can_clone.0.off022.i, %for.cond21.preheader.i.for.inc36.i_crit_edge ], [ %can_clone.2.off0.i, %for.inc33.i.for.inc36.i_crit_edge ]
  %inc37.i = add nuw i32 %i.123.i, 1
  %exitcond40.not.i = icmp eq i32 %inc37.i, %connector_count.2
  br i1 %exitcond40.not.i, label %for.end38.i, label %for.inc36.i.for.body10.i_crit_edge

for.inc36.i.for.body10.i_crit_edge:               ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body10.i

for.end38.i:                                      ; preds = %for.inc36.i
  br i1 %can_clone.3.off0.i, label %for.end38.i.if.end46.sink.split_crit_edge, label %for.end38.i.for.body45.preheader.i_crit_edge

for.end38.i.for.body45.preheader.i_crit_edge:     ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45.preheader.i

for.end38.i.if.end46.sink.split_crit_edge:        ; preds = %for.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.sink.split

for.body45.preheader.i:                           ; preds = %for.end38.i.for.body45.preheader.i_crit_edge, %if.end14.i.for.body45.preheader.i_crit_edge
  %call42.i = call ptr @drm_mode_find_dmt(ptr noundef %4, i32 noundef 1024, i32 noundef 768, i32 noundef 60, i1 noundef zeroext false) #10
  br label %for.body45.i

for.body45.i:                                     ; preds = %for.inc72.i.for.body45.i_crit_edge, %for.body45.preheader.i
  %i.235.i = phi i32 [ %inc73.i, %for.inc72.i.for.body45.i_crit_edge ], [ 0, %for.body45.preheader.i ]
  %can_clone.5.off034.i = phi i1 [ %can_clone.6.off0.i, %for.inc72.i.for.body45.i_crit_edge ], [ true, %for.body45.preheader.i ]
  %arrayidx46.i = getelementptr i8, ptr %call8.i.i378, i32 %i.235.i
  %189 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx46.i, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool47.not.i402 = icmp eq i8 %190, 0
  br i1 %tobool47.not.i402, label %for.body45.i.for.inc72.i_crit_edge, label %if.end49.i403

for.body45.i.for.inc72.i_crit_edge:               ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc72.i

if.end49.i403:                                    ; preds = %for.body45.i
  %arrayidx50.i = getelementptr ptr, ptr %connectors.2, i32 %i.235.i
  %191 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx50.i, align 4
  %modes51.i = getelementptr inbounds %struct.drm_connector, ptr %192, i32 0, i32 17
  %193 = ptrtoint ptr %modes51.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %.pn27.i = load ptr, ptr %modes51.i, align 4
  %cmp55.not30.i = icmp eq ptr %.pn27.i, %modes51.i
  br i1 %cmp55.not30.i, label %if.end49.i403.for.end67.i_crit_edge, label %for.body56.lr.ph.i

if.end49.i403.for.end67.i_crit_edge:              ; preds = %if.end49.i403
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end67.i

for.body56.lr.ph.i:                               ; preds = %if.end49.i403
  %arrayidx59.i = getelementptr ptr, ptr %retval.0.i.i308, i32 %i.235.i
  br label %for.body56.i

for.body56.i:                                     ; preds = %for.inc61.i.for.body56.i_crit_edge, %for.body56.lr.ph.i
  %.pn31.i = phi ptr [ %.pn27.i, %for.body56.lr.ph.i ], [ %.pn.i, %for.inc61.i.for.body56.i_crit_edge ]
  %mode.032.i = getelementptr i8, ptr %.pn31.i, i32 -64
  %call57.i = call zeroext i1 @drm_mode_match(ptr noundef %mode.032.i, ptr noundef %call42.i, i32 noundef 15) #10
  br i1 %call57.i, label %if.then58.i, label %for.body56.i.for.inc61.i_crit_edge

for.body56.i.for.inc61.i_crit_edge:               ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc61.i

if.then58.i:                                      ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #12
  %194 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr %mode.032.i, ptr %arrayidx59.i, align 4
  br label %for.inc61.i

for.inc61.i:                                      ; preds = %if.then58.i, %for.body56.i.for.inc61.i_crit_edge
  %195 = ptrtoint ptr %.pn31.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %.pn.i = load ptr, ptr %.pn31.i, align 4
  %196 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %arrayidx50.i, align 4
  %modes54.i = getelementptr inbounds %struct.drm_connector, ptr %197, i32 0, i32 17
  %cmp55.not.i = icmp eq ptr %.pn.i, %modes54.i
  br i1 %cmp55.not.i, label %for.inc61.i.for.end67.i_crit_edge, label %for.inc61.i.for.body56.i_crit_edge

for.inc61.i.for.body56.i_crit_edge:               ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body56.i

for.inc61.i.for.end67.i_crit_edge:                ; preds = %for.inc61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end67.i

for.end67.i:                                      ; preds = %for.inc61.i.for.end67.i_crit_edge, %if.end49.i403.for.end67.i_crit_edge
  %arrayidx68.i = getelementptr ptr, ptr %retval.0.i.i308, i32 %i.235.i
  %198 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %arrayidx68.i, align 4
  %tobool69.not.i = icmp ne ptr %199, null
  %spec.select11.i = select i1 %tobool69.not.i, i1 %can_clone.5.off034.i, i1 false
  br label %for.inc72.i

for.inc72.i:                                      ; preds = %for.end67.i, %for.body45.i.for.inc72.i_crit_edge
  %can_clone.6.off0.i = phi i1 [ %can_clone.5.off034.i, %for.body45.i.for.inc72.i_crit_edge ], [ %spec.select11.i, %for.end67.i ]
  %inc73.i = add nuw i32 %i.235.i, 1
  %exitcond41.not.i = icmp eq i32 %inc73.i, %connector_count.2
  br i1 %exitcond41.not.i, label %for.end74.i, label %for.inc72.i.for.body45.i_crit_edge

for.inc72.i.for.body45.i_crit_edge:               ; preds = %for.inc72.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45.i

for.end74.i:                                      ; preds = %for.inc72.i
  br i1 %can_clone.6.off0.i, label %for.end74.i.if.end46.sink.split_crit_edge, label %do.end.i

for.end74.i.if.end46.sink.split_crit_edge:        ; preds = %for.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46.sink.split

do.end.i:                                         ; preds = %for.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  %call79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #15
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %do.end.i, %for.end.i400.land.lhs.true_crit_edge, %if.then39.land.lhs.true_crit_edge
  %sh_prom.i = zext i32 %connector_count.2 to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  br label %for.body.i409

for.body.i409:                                    ; preds = %for.inc.i416.for.body.i409_crit_edge, %land.lhs.true
  %i.072.i = phi i32 [ %inc3.i, %for.inc.i416.for.body.i409_crit_edge ], [ 0, %land.lhs.true ]
  %num_tiled_conns.071.i = phi i32 [ %num_tiled_conns.1.i414, %for.inc.i416.for.body.i409_crit_edge ], [ 0, %land.lhs.true ]
  %arrayidx.i407 = getelementptr ptr, ptr %connectors.2, i32 %i.072.i
  %200 = ptrtoint ptr %arrayidx.i407 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %arrayidx.i407, align 4
  %has_tile.i408 = getelementptr inbounds %struct.drm_connector, ptr %201, i32 0, i32 54
  %202 = ptrtoint ptr %has_tile.i408 to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %has_tile.i408, align 8, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool.not.i = icmp eq i8 %203, 0
  br i1 %tobool.not.i, label %for.body.i409.for.inc.i416_crit_edge, label %land.lhs.true.i413

for.body.i409.for.inc.i416_crit_edge:             ; preds = %for.body.i409
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i416

land.lhs.true.i413:                               ; preds = %for.body.i409
  call void @__sanitizer_cov_trace_pc() #12
  %status.i410 = getelementptr inbounds %struct.drm_connector, ptr %201, i32 0, i32 18
  %204 = ptrtoint ptr %status.i410 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %status.i410, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %205)
  %cmp2.i = icmp eq i32 %205, 1
  %inc.i411 = zext i1 %cmp2.i to i32
  %spec.select.i412 = add i32 %num_tiled_conns.071.i, %inc.i411
  br label %for.inc.i416

for.inc.i416:                                     ; preds = %land.lhs.true.i413, %for.body.i409.for.inc.i416_crit_edge
  %num_tiled_conns.1.i414 = phi i32 [ %num_tiled_conns.071.i, %for.body.i409.for.inc.i416_crit_edge ], [ %spec.select.i412, %land.lhs.true.i413 ]
  %inc3.i = add nuw i32 %i.072.i, 1
  %exitcond.not.i415 = icmp eq i32 %inc3.i, %connector_count.2
  br i1 %exitcond.not.i415, label %for.body6.lr.ph.i.preheader, label %for.inc.i416.for.body.i409_crit_edge

for.inc.i416.for.body.i409_crit_edge:             ; preds = %for.inc.i416
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i409

for.body6.lr.ph.i.preheader:                      ; preds = %for.inc.i416
  %sub.i = xor i64 %notmask.i, -1
  br label %for.body6.lr.ph.i

for.body6.lr.ph.i:                                ; preds = %for.end138.i.for.body6.lr.ph.i_crit_edge, %for.body6.lr.ph.i.preheader
  %conn_configured.0.i417 = phi i64 [ %conn_configured.2.i, %for.end138.i.for.body6.lr.ph.i_crit_edge ], [ 0, %for.body6.lr.ph.i.preheader ]
  %tile_pass.0.i = phi i32 [ %inc143.i, %for.end138.i.for.body6.lr.ph.i_crit_edge ], [ 0, %for.body6.lr.ph.i.preheader ]
  %sub42.i = add i32 %tile_pass.0.i, -1
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.inc136.i.for.body6.i_crit_edge, %for.body6.lr.ph.i
  %i.177.i = phi i32 [ 0, %for.body6.lr.ph.i ], [ %inc137.i, %for.inc136.i.for.body6.i_crit_edge ]
  %conn_configured.174.i = phi i64 [ %conn_configured.0.i417, %for.body6.lr.ph.i ], [ %conn_configured.2.i, %for.inc136.i.for.body6.i_crit_edge ]
  %arrayidx7.i = getelementptr ptr, ptr %connectors.2, i32 %i.177.i
  %206 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %arrayidx7.i, align 4
  %sh_prom8.i = zext i32 %i.177.i to i64
  %shl9.i = shl nuw i64 1, %sh_prom8.i
  %and.i = and i64 %shl9.i, %conn_configured.174.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool10.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %for.body6.i.for.inc136.i_crit_edge

for.body6.i.for.inc136.i_crit_edge:               ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc136.i

if.end12.i:                                       ; preds = %for.body6.i
  %arrayidx13.i = getelementptr i8, ptr %call8.i.i378, i32 %i.177.i
  %208 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %209 = load i8, ptr %arrayidx13.i, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %cmp15.i = icmp eq i8 %209, 0
  br i1 %cmp15.i, label %if.then17.i, label %if.end20.i

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i419 = or i64 %shl9.i, %conn_configured.174.i
  br label %for.inc136.i

if.end20.i:                                       ; preds = %if.end12.i
  %210 = zext i32 %tile_pass.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %210, ptr @__sancov_gen_cov_switch_values)
  switch i32 %tile_pass.0.i, label %if.end20.i.if.else.i_crit_edge [
    i32 0, label %land.lhs.true23.i
    i32 1, label %if.then31.i
  ]

if.end20.i.if.else.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

land.lhs.true23.i:                                ; preds = %if.end20.i
  %has_tile24.i = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 54
  %211 = ptrtoint ptr %has_tile24.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %has_tile24.i, align 8, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %212)
  %tobool25.not.i420 = icmp eq i8 %212, 0
  br i1 %tobool25.not.i420, label %land.lhs.true23.i.if.else.i_crit_edge, label %land.lhs.true23.i.for.inc136.i_crit_edge

land.lhs.true23.i.for.inc136.i_crit_edge:         ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc136.i

land.lhs.true23.i.if.else.i_crit_edge:            ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else.i

if.then31.i:                                      ; preds = %if.end20.i
  %tile_h_loc.i = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 59
  %213 = ptrtoint ptr %tile_h_loc.i to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %tile_h_loc.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %214)
  %cmp33.not.i = icmp eq i8 %214, 0
  br i1 %cmp33.not.i, label %lor.lhs.false.i421, label %if.then31.i.for.inc136.i_crit_edge

if.then31.i.for.inc136.i_crit_edge:               ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc136.i

lor.lhs.false.i421:                               ; preds = %if.then31.i
  %tile_v_loc.i = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 60
  %215 = ptrtoint ptr %tile_v_loc.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %tile_v_loc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %cmp36.not.i = icmp eq i8 %216, 0
  br i1 %cmp36.not.i, label %lor.lhs.false.i421.if.end57.i_crit_edge, label %lor.lhs.false.i421.for.inc136.i_crit_edge

lor.lhs.false.i421.for.inc136.i_crit_edge:        ; preds = %lor.lhs.false.i421
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc136.i

lor.lhs.false.i421.if.end57.i_crit_edge:          ; preds = %lor.lhs.false.i421
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end57.i

if.else.i:                                        ; preds = %land.lhs.true23.i.if.else.i_crit_edge, %if.end20.i.if.else.i_crit_edge
  %tile_h_loc40.i = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 59
  %217 = ptrtoint ptr %tile_h_loc40.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %tile_h_loc40.i, align 1
  %conv41.i = zext i8 %218 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub42.i, i32 %conv41.i)
  %cmp43.not.i = icmp eq i32 %sub42.i, %conv41.i
  br i1 %cmp43.not.i, label %if.else.i.for.body.lr.ph.i.i_crit_edge, label %land.lhs.true45.i

if.else.i.for.body.lr.ph.i.i_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i.i

land.lhs.true45.i:                                ; preds = %if.else.i
  %tile_v_loc46.i = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 60
  %219 = ptrtoint ptr %tile_v_loc46.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %tile_v_loc46.i, align 4
  %conv47.i = zext i8 %220 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub42.i, i32 %conv47.i)
  %cmp49.not.i = icmp eq i32 %sub42.i, %conv47.i
  br i1 %cmp49.not.i, label %land.lhs.true45.i.for.body.lr.ph.i.i_crit_edge, label %land.lhs.true45.i.for.inc136.i_crit_edge

land.lhs.true45.i.for.inc136.i_crit_edge:         ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc136.i

land.lhs.true45.i.for.body.lr.ph.i.i_crit_edge:   ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %land.lhs.true45.i.for.body.lr.ph.i.i_crit_edge, %if.else.i.for.body.lr.ph.i.i_crit_edge
  %tile_v_loc55.i = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 60
  %221 = ptrtoint ptr %tile_v_loc55.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %tile_v_loc55.i, align 4
  %223 = or i8 %222, %218
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %224 = icmp eq i8 %223, 0
  br label %for.body.i.i423

for.body.i.i423:                                  ; preds = %for.inc.i.i428.for.body.i.i423_crit_edge, %for.body.lr.ph.i.i
  %voffset.06.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %voffset.1.i.i, %for.inc.i.i428.for.body.i.i423_crit_edge ]
  %hoffset.05.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %hoffset.2.i.i, %for.inc.i.i428.for.body.i.i423_crit_edge ]
  %i.03.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i428.for.body.i.i423_crit_edge ]
  %arrayidx.i.i = getelementptr ptr, ptr %connectors.2, i32 %i.03.i.i
  %225 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx.i.i, align 4
  %has_tile.i.i = getelementptr inbounds %struct.drm_connector, ptr %226, i32 0, i32 54
  %227 = ptrtoint ptr %has_tile.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %has_tile.i.i, align 8, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool.not.i.i422 = icmp eq i8 %228, 0
  br i1 %tobool.not.i.i422, label %for.body.i.i423.for.inc.i.i428_crit_edge, label %if.end.i.i424

for.body.i.i423.for.inc.i.i428_crit_edge:         ; preds = %for.body.i.i423
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i428

if.end.i.i424:                                    ; preds = %for.body.i.i423
  %arrayidx1.i.i = getelementptr ptr, ptr %retval.0.i.i308, i32 %i.03.i.i
  %229 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %arrayidx1.i.i, align 4
  %tobool2.not.i.i = icmp ne ptr %230, null
  %or.cond.i.i = or i1 %224, %tobool2.not.i.i
  br i1 %or.cond.i.i, label %if.end6.i.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i424
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i = getelementptr inbounds %struct.drm_connector, ptr %226, i32 0, i32 6
  %231 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %base.i.i, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.35, i32 noundef %i.03.i.i, i32 noundef %232) #10
  br label %for.inc.i.i428

if.end6.i.i:                                      ; preds = %if.end.i.i424
  %tile_h_loc.i.i = getelementptr inbounds %struct.drm_connector, ptr %226, i32 0, i32 59
  %233 = ptrtoint ptr %tile_h_loc.i.i to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %tile_h_loc.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %234, i8 %218)
  %cmp7.i.i425 = icmp ult i8 %234, %218
  br i1 %cmp7.i.i425, label %if.then9.i.i, label %if.end6.i.i.if.end12.i.i_crit_edge

if.end6.i.i.if.end12.i.i_crit_edge:               ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.i.i

if.then9.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %hdisplay.i.i426 = getelementptr inbounds %struct.drm_display_mode, ptr %230, i32 0, i32 1
  %235 = ptrtoint ptr %hdisplay.i.i426 to i32
  call void @__asan_load2_noabort(i32 %235)
  %236 = load i16, ptr %hdisplay.i.i426, align 4
  %conv11.i.i = zext i16 %236 to i32
  %add.i.i = add i32 %hoffset.05.i.i, %conv11.i.i
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then9.i.i, %if.end6.i.i.if.end12.i.i_crit_edge
  %hoffset.1.i.i = phi i32 [ %add.i.i, %if.then9.i.i ], [ %hoffset.05.i.i, %if.end6.i.i.if.end12.i.i_crit_edge ]
  %tile_v_loc.i.i = getelementptr inbounds %struct.drm_connector, ptr %226, i32 0, i32 60
  %237 = ptrtoint ptr %tile_v_loc.i.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %tile_v_loc.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %238, i8 %222)
  %cmp14.i.i = icmp ult i8 %238, %222
  br i1 %cmp14.i.i, label %if.then16.i.i, label %if.end12.i.i.for.inc.i.i428_crit_edge

if.end12.i.i.for.inc.i.i428_crit_edge:            ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i428

if.then16.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %vdisplay.i.i427 = getelementptr inbounds %struct.drm_display_mode, ptr %230, i32 0, i32 6
  %239 = ptrtoint ptr %vdisplay.i.i427 to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %vdisplay.i.i427, align 2
  %conv18.i.i = zext i16 %240 to i32
  %add19.i.i = add i32 %voffset.06.i.i, %conv18.i.i
  br label %for.inc.i.i428

for.inc.i.i428:                                   ; preds = %if.then16.i.i, %if.end12.i.i.for.inc.i.i428_crit_edge, %if.then5.i.i, %for.body.i.i423.for.inc.i.i428_crit_edge
  %hoffset.2.i.i = phi i32 [ %hoffset.1.i.i, %if.then16.i.i ], [ %hoffset.1.i.i, %if.end12.i.i.for.inc.i.i428_crit_edge ], [ %hoffset.05.i.i, %if.then5.i.i ], [ %hoffset.05.i.i, %for.body.i.i423.for.inc.i.i428_crit_edge ]
  %voffset.1.i.i = phi i32 [ %add19.i.i, %if.then16.i.i ], [ %voffset.06.i.i, %if.end12.i.i.for.inc.i.i428_crit_edge ], [ %voffset.06.i.i, %if.then5.i.i ], [ %voffset.06.i.i, %for.body.i.i423.for.inc.i.i428_crit_edge ]
  %inc.i.i = add nuw i32 %i.03.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %connector_count.2
  br i1 %exitcond.not.i.i, label %drm_client_get_tile_offsets.exit.i, label %for.inc.i.i428.for.body.i.i423_crit_edge

for.inc.i.i428.for.body.i.i423_crit_edge:         ; preds = %for.inc.i.i428
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i423

drm_client_get_tile_offsets.exit.i:               ; preds = %for.inc.i.i428
  call void @__sanitizer_cov_trace_pc() #12
  %conv56.i = zext i8 %222 to i32
  %arrayidx21.i.i = getelementptr %struct.drm_client_offset, ptr %retval.0.i.i344, i32 %i.177.i
  %241 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %hoffset.2.i.i, ptr %arrayidx21.i.i, align 8
  %y.i.i = getelementptr %struct.drm_client_offset, ptr %retval.0.i.i344, i32 %i.177.i, i32 1
  %242 = ptrtoint ptr %y.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %voffset.1.i.i, ptr %y.i.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.36, i32 noundef %hoffset.2.i.i, i32 noundef %voffset.1.i.i, i32 noundef %conv41.i, i32 noundef %conv56.i) #10
  br label %if.end57.i

if.end57.i:                                       ; preds = %drm_client_get_tile_offsets.exit.i, %lor.lhs.false.i421.if.end57.i_crit_edge
  %base.i429 = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 6
  %243 = ptrtoint ptr %base.i429 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %base.i429, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.31, i32 noundef %244) #10
  %call58.i = call fastcc ptr @drm_connector_pick_cmdline_mode(ptr noundef %207) #10
  %arrayidx59.i430 = getelementptr ptr, ptr %retval.0.i.i308, i32 %i.177.i
  %245 = ptrtoint ptr %arrayidx59.i430 to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr %call58.i, ptr %arrayidx59.i430, align 4
  %tobool61.not.i = icmp eq ptr %call58.i, null
  br i1 %tobool61.not.i, label %if.then62.i, label %if.end57.i.if.end95.i_crit_edge

if.end57.i.if.end95.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.i

if.then62.i:                                      ; preds = %if.end57.i
  %246 = ptrtoint ptr %base.i429 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %base.i429, align 8
  %tile_group.i = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 55
  %248 = ptrtoint ptr %tile_group.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %tile_group.i, align 4
  %tobool65.not.i = icmp eq ptr %249, null
  br i1 %tobool65.not.i, label %if.then62.i.cond.end.i_crit_edge, label %cond.true.i

if.then62.i.cond.end.i_crit_edge:                 ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #12
  %id67.i = getelementptr inbounds %struct.drm_tile_group, ptr %249, i32 0, i32 2
  %250 = ptrtoint ptr %id67.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %id67.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then62.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %251, %cond.true.i ], [ 0, %if.then62.i.cond.end.i_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.32, i32 noundef %247, i32 noundef %cond.i) #10
  %modes.i.i431 = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 17
  %252 = ptrtoint ptr %modes.i.i431 to i32
  call void @__asan_load4_noabort(i32 %252)
  %.pn23.i.i432 = load ptr, ptr %modes.i.i431, align 4
  %cmp.not24.i.i433 = icmp eq ptr %.pn23.i.i432, %modes.i.i431
  br i1 %cmp.not24.i.i433, label %cond.end.i.if.end70.thread60.i_crit_edge, label %cond.end.i.for.body.i4.i_crit_edge

cond.end.i.for.body.i4.i_crit_edge:               ; preds = %cond.end.i
  br label %for.body.i4.i

cond.end.i.if.end70.thread60.i_crit_edge:         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.thread60.i

for.body.i4.i:                                    ; preds = %for.inc.i8.i.for.body.i4.i_crit_edge, %cond.end.i.for.body.i4.i_crit_edge
  %.pn25.i.i434 = phi ptr [ %.pn.i.i440, %for.inc.i8.i.for.body.i4.i_crit_edge ], [ %.pn23.i.i432, %cond.end.i.for.body.i4.i_crit_edge ]
  %hdisplay.i2.i = getelementptr i8, ptr %.pn25.i.i434, i32 -60
  %253 = ptrtoint ptr %hdisplay.i2.i to i32
  call void @__asan_load2_noabort(i32 %253)
  %254 = load i16, ptr %hdisplay.i2.i, align 4
  %conv.i3.i = zext i16 %254 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %width.addr.0, i32 %conv.i3.i)
  %cmp2.i.i435 = icmp slt i32 %width.addr.0, %conv.i3.i
  br i1 %cmp2.i.i435, label %for.body.i4.i.for.inc.i8.i_crit_edge, label %lor.lhs.false.i.i438

for.body.i4.i.for.inc.i8.i_crit_edge:             ; preds = %for.body.i4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i8.i

lor.lhs.false.i.i438:                             ; preds = %for.body.i4.i
  %vdisplay.i5.i = getelementptr i8, ptr %.pn25.i.i434, i32 -50
  %255 = ptrtoint ptr %vdisplay.i5.i to i32
  call void @__asan_load2_noabort(i32 %255)
  %256 = load i16, ptr %vdisplay.i5.i, align 2
  %conv4.i.i436 = zext i16 %256 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %height.addr.0, i32 %conv4.i.i436)
  %cmp5.i.i437 = icmp slt i32 %height.addr.0, %conv4.i.i436
  br i1 %cmp5.i.i437, label %lor.lhs.false.i.i438.for.inc.i8.i_crit_edge, label %if.end.i7.i

lor.lhs.false.i.i438.for.inc.i8.i_crit_edge:      ; preds = %lor.lhs.false.i.i438
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i8.i

if.end.i7.i:                                      ; preds = %lor.lhs.false.i.i438
  %type.i.i439 = getelementptr i8, ptr %.pn25.i.i434, i32 -2
  %257 = ptrtoint ptr %type.i.i439 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %type.i.i439, align 2
  %259 = and i8 %258, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool.not.i6.i = icmp eq i8 %259, 0
  br i1 %tobool.not.i6.i, label %if.end.i7.i.for.inc.i8.i_crit_edge, label %if.end70.i443

if.end.i7.i.for.inc.i8.i_crit_edge:               ; preds = %if.end.i7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i8.i

for.inc.i8.i:                                     ; preds = %if.end.i7.i.for.inc.i8.i_crit_edge, %lor.lhs.false.i.i438.for.inc.i8.i_crit_edge, %for.body.i4.i.for.inc.i8.i_crit_edge
  %260 = ptrtoint ptr %.pn25.i.i434 to i32
  call void @__asan_load4_noabort(i32 %260)
  %.pn.i.i440 = load ptr, ptr %.pn25.i.i434, align 4
  %cmp.not.i.i441 = icmp eq ptr %.pn.i.i440, %modes.i.i431
  br i1 %cmp.not.i.i441, label %for.inc.i8.i.if.end70.thread60.i_crit_edge, label %for.inc.i8.i.for.body.i4.i_crit_edge

for.inc.i8.i.for.body.i4.i_crit_edge:             ; preds = %for.inc.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i4.i

for.inc.i8.i.if.end70.thread60.i_crit_edge:       ; preds = %for.inc.i8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70.thread60.i

if.end70.thread60.i:                              ; preds = %for.inc.i8.i.if.end70.thread60.i_crit_edge, %cond.end.i.if.end70.thread60.i_crit_edge
  %261 = ptrtoint ptr %arrayidx59.i430 to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr null, ptr %arrayidx59.i430, align 4
  br label %land.lhs.true73.i

if.end70.i443:                                    ; preds = %if.end.i7.i
  %mode.0.le.i.i442 = getelementptr i8, ptr %.pn25.i.i434, i32 -64
  %262 = ptrtoint ptr %arrayidx59.i430 to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %mode.0.le.i.i442, ptr %arrayidx59.i430, align 4
  %tobool72.not.i = icmp eq ptr %mode.0.le.i.i442, null
  br i1 %tobool72.not.i, label %if.end70.i443.land.lhs.true73.i_crit_edge, label %if.end70.i443.if.end95.i_crit_edge

if.end70.i443.if.end95.i_crit_edge:               ; preds = %if.end70.i443
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.i

if.end70.i443.land.lhs.true73.i_crit_edge:        ; preds = %if.end70.i443
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true73.i

land.lhs.true73.i:                                ; preds = %if.end70.i443.land.lhs.true73.i_crit_edge, %if.end70.thread60.i
  %263 = ptrtoint ptr %modes.i.i431 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load volatile ptr, ptr %modes.i.i431, align 4
  %cmp.i.not.i444 = icmp eq ptr %264, %modes.i.i431
  br i1 %cmp.i.not.i444, label %land.lhs.true73.i.if.end95.i_crit_edge, label %if.then77.i

land.lhs.true73.i.if.end95.i_crit_edge:           ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.i

if.then77.i:                                      ; preds = %land.lhs.true73.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i445 = getelementptr i8, ptr %264, i32 -64
  %265 = ptrtoint ptr %arrayidx59.i430 to i32
  call void @__asan_store4_noabort(i32 %265)
  store ptr %add.ptr.i445, ptr %arrayidx59.i430, align 4
  br label %if.end95.i

if.end95.i:                                       ; preds = %if.then77.i, %land.lhs.true73.i.if.end95.i_crit_edge, %if.end70.i443.if.end95.i_crit_edge, %if.end57.i.if.end95.i_crit_edge
  %has_tile96.i = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 54
  %266 = ptrtoint ptr %has_tile96.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %has_tile96.i, align 8, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %267)
  %tobool97.not.i = icmp eq i8 %267, 0
  br i1 %tobool97.not.i, label %if.end95.i.if.end125.i_crit_edge, label %if.then98.i

if.end95.i.if.end125.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.i

if.then98.i:                                      ; preds = %if.end95.i
  %num_h_tile.i446 = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 57
  %268 = ptrtoint ptr %num_h_tile.i446 to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %num_h_tile.i446, align 1
  %conv99.i = zext i8 %269 to i32
  %num_v_tile.i447 = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 58
  %270 = ptrtoint ptr %num_v_tile.i447 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %num_v_tile.i447, align 2
  %conv100.i = zext i8 %271 to i32
  %mul.i448 = mul nuw nsw i32 %conv100.i, %conv99.i
  call void @__sanitizer_cov_trace_cmp4(i32 %num_tiled_conns.1.i414, i32 %mul.i448)
  %cmp101.i = icmp slt i32 %num_tiled_conns.1.i414, %mul.i448
  br i1 %cmp101.i, label %if.then98.i.if.then116.i_crit_edge, label %lor.lhs.false103.i

if.then98.i.if.then116.i_crit_edge:               ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then116.i

lor.lhs.false103.i:                               ; preds = %if.then98.i
  %tile_h_loc104.i = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 59
  %272 = ptrtoint ptr %tile_h_loc104.i to i32
  call void @__asan_load1_noabort(i32 %272)
  %273 = load i8, ptr %tile_h_loc104.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %273)
  %cmp106.i = icmp eq i8 %273, 0
  br i1 %cmp106.i, label %land.lhs.true108.i, label %lor.lhs.false103.i.if.else121.i_crit_edge

lor.lhs.false103.i.if.else121.i_crit_edge:        ; preds = %lor.lhs.false103.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else121.i

land.lhs.true108.i:                               ; preds = %lor.lhs.false103.i
  %tile_v_loc109.i = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 60
  %274 = ptrtoint ptr %tile_v_loc109.i to i32
  call void @__asan_load1_noabort(i32 %274)
  %275 = load i8, ptr %tile_v_loc109.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %275)
  %cmp111.i = icmp eq i8 %275, 0
  br i1 %cmp111.i, label %land.lhs.true113.i, label %land.lhs.true108.i.if.else121.i_crit_edge

land.lhs.true108.i.if.else121.i_crit_edge:        ; preds = %land.lhs.true108.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else121.i

land.lhs.true113.i:                               ; preds = %land.lhs.true108.i
  %modes.i10.i = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 17
  %276 = ptrtoint ptr %modes.i10.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %.pn23.i11.i = load ptr, ptr %modes.i10.i, align 4
  %cmp.not24.i12.i = icmp eq ptr %.pn23.i11.i, %modes.i10.i
  br i1 %cmp.not24.i12.i, label %land.lhs.true113.i.if.then116.i_crit_edge, label %for.body.lr.ph.i13.i

land.lhs.true113.i.if.then116.i_crit_edge:        ; preds = %land.lhs.true113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then116.i

for.body.lr.ph.i13.i:                             ; preds = %land.lhs.true113.i
  %tile_h_size.i.i449 = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 61
  %277 = ptrtoint ptr %tile_h_size.i.i449 to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %tile_h_size.i.i449, align 2
  %tile_v_size.i.i450 = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 62
  br label %for.body.i16.i

for.body.i16.i:                                   ; preds = %for.inc.i21.i.for.body.i16.i_crit_edge, %for.body.lr.ph.i13.i
  %.pn25.i14.i = phi ptr [ %.pn23.i11.i, %for.body.lr.ph.i13.i ], [ %.pn.i19.i, %for.inc.i21.i.for.body.i16.i_crit_edge ]
  %hdisplay.i15.i = getelementptr i8, ptr %.pn25.i14.i, i32 -60
  %279 = ptrtoint ptr %hdisplay.i15.i to i32
  call void @__asan_load2_noabort(i32 %279)
  %280 = load i16, ptr %hdisplay.i15.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %280, i16 %278)
  %cmp3.i.i451 = icmp eq i16 %280, %278
  br i1 %cmp3.i.i451, label %land.lhs.true.i.i452, label %for.body.i16.i.for.inc.i21.i_crit_edge

for.body.i16.i.for.inc.i21.i_crit_edge:           ; preds = %for.body.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i21.i

land.lhs.true.i.i452:                             ; preds = %for.body.i16.i
  %vdisplay.i17.i = getelementptr i8, ptr %.pn25.i14.i, i32 -50
  %281 = ptrtoint ptr %vdisplay.i17.i to i32
  call void @__asan_load2_noabort(i32 %281)
  %282 = load i16, ptr %vdisplay.i17.i, align 2
  %283 = ptrtoint ptr %tile_v_size.i.i450 to i32
  call void @__asan_load2_noabort(i32 %283)
  %284 = load i16, ptr %tile_v_size.i.i450, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %282, i16 %284)
  %cmp7.i18.i = icmp eq i16 %282, %284
  br i1 %cmp7.i18.i, label %drm_connector_get_tiled_mode.exit.i, label %land.lhs.true.i.i452.for.inc.i21.i_crit_edge

land.lhs.true.i.i452.for.inc.i21.i_crit_edge:     ; preds = %land.lhs.true.i.i452
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i21.i

for.inc.i21.i:                                    ; preds = %land.lhs.true.i.i452.for.inc.i21.i_crit_edge, %for.body.i16.i.for.inc.i21.i_crit_edge
  %285 = ptrtoint ptr %.pn25.i14.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %.pn.i19.i = load ptr, ptr %.pn25.i14.i, align 4
  %cmp.not.i20.i = icmp eq ptr %.pn.i19.i, %modes.i10.i
  br i1 %cmp.not.i20.i, label %for.inc.i21.i.if.then116.i_crit_edge, label %for.inc.i21.i.for.body.i16.i_crit_edge

for.inc.i21.i.for.body.i16.i_crit_edge:           ; preds = %for.inc.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i16.i

for.inc.i21.i.if.then116.i_crit_edge:             ; preds = %for.inc.i21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then116.i

drm_connector_get_tiled_mode.exit.i:              ; preds = %land.lhs.true.i.i452
  %mode.0.le.i22.i = getelementptr i8, ptr %.pn25.i14.i, i32 -64
  %tobool115.not.i = icmp eq ptr %mode.0.le.i22.i, null
  br i1 %tobool115.not.i, label %drm_connector_get_tiled_mode.exit.i.if.then116.i_crit_edge, label %drm_connector_get_tiled_mode.exit.i.if.else121.i_crit_edge

drm_connector_get_tiled_mode.exit.i.if.else121.i_crit_edge: ; preds = %drm_connector_get_tiled_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else121.i

drm_connector_get_tiled_mode.exit.i.if.then116.i_crit_edge: ; preds = %drm_connector_get_tiled_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then116.i

if.then116.i:                                     ; preds = %drm_connector_get_tiled_mode.exit.i.if.then116.i_crit_edge, %for.inc.i21.i.if.then116.i_crit_edge, %land.lhs.true113.i.if.then116.i_crit_edge, %if.then98.i.if.then116.i_crit_edge
  %286 = ptrtoint ptr %base.i429 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %base.i429, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %287) #10
  %modes.i25.i = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 17
  %tile_h_size.i26.i = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 61
  %tile_v_size.i27.i = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 62
  br label %for.cond.i.i454

for.cond.i.i454:                                  ; preds = %land.lhs.true.i35.i.for.cond.i.i454_crit_edge, %if.then116.i
  %.pn.in.i.i453 = phi ptr [ %modes.i25.i, %if.then116.i ], [ %.pn.i28.i, %land.lhs.true.i35.i.for.cond.i.i454_crit_edge ]
  %288 = ptrtoint ptr %.pn.in.i.i453 to i32
  call void @__asan_load4_noabort(i32 %288)
  %.pn.i28.i = load ptr, ptr %.pn.in.i.i453, align 4
  %cmp.not.i29.i = icmp eq ptr %.pn.i28.i, %modes.i25.i
  br i1 %cmp.not.i29.i, label %for.cond.i.i454.if.end125.sink.split.i_crit_edge, label %for.body.i32.i

for.cond.i.i454.if.end125.sink.split.i_crit_edge: ; preds = %for.cond.i.i454
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.sink.split.i

for.body.i32.i:                                   ; preds = %for.cond.i.i454
  %hdisplay.i30.i = getelementptr i8, ptr %.pn.i28.i, i32 -60
  %289 = ptrtoint ptr %hdisplay.i30.i to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %hdisplay.i30.i, align 4
  %291 = ptrtoint ptr %tile_h_size.i26.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %tile_h_size.i26.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %290, i16 %292)
  %cmp3.i31.i = icmp eq i16 %290, %292
  br i1 %cmp3.i31.i, label %land.lhs.true.i35.i, label %cleanup.split.loop.exit21.i36.i

land.lhs.true.i35.i:                              ; preds = %for.body.i32.i
  %vdisplay.i33.i = getelementptr i8, ptr %.pn.i28.i, i32 -50
  %293 = ptrtoint ptr %vdisplay.i33.i to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %vdisplay.i33.i, align 2
  %295 = ptrtoint ptr %tile_v_size.i27.i to i32
  call void @__asan_load2_noabort(i32 %295)
  %296 = load i16, ptr %tile_v_size.i27.i, align 8
  %cmp7.i34.i = icmp eq i16 %294, %296
  br i1 %cmp7.i34.i, label %land.lhs.true.i35.i.for.cond.i.i454_crit_edge, label %cleanup.split.loop.exit23.i.i456

land.lhs.true.i35.i.for.cond.i.i454_crit_edge:    ; preds = %land.lhs.true.i35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i454

cleanup.split.loop.exit21.i36.i:                  ; preds = %for.body.i32.i
  call void @__sanitizer_cov_trace_pc() #12
  %mode.0.le25.i.i455 = getelementptr i8, ptr %.pn.i28.i, i32 -64
  br label %if.end125.sink.split.i

cleanup.split.loop.exit23.i.i456:                 ; preds = %land.lhs.true.i35.i
  call void @__sanitizer_cov_trace_pc() #12
  %mode.0.le.i37.i = getelementptr i8, ptr %.pn.i28.i, i32 -64
  br label %if.end125.sink.split.i

if.else121.i:                                     ; preds = %drm_connector_get_tiled_mode.exit.i.if.else121.i_crit_edge, %land.lhs.true108.i.if.else121.i_crit_edge, %lor.lhs.false103.i.if.else121.i_crit_edge
  %modes.i39.i = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 17
  %297 = ptrtoint ptr %modes.i39.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %.pn23.i40.i = load ptr, ptr %modes.i39.i, align 4
  %cmp.not24.i41.i = icmp eq ptr %.pn23.i40.i, %modes.i39.i
  br i1 %cmp.not24.i41.i, label %if.else121.i.if.end125.sink.split.i_crit_edge, label %for.body.lr.ph.i44.i

if.else121.i.if.end125.sink.split.i_crit_edge:    ; preds = %if.else121.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.sink.split.i

for.body.lr.ph.i44.i:                             ; preds = %if.else121.i
  %tile_h_size.i42.i = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 61
  %298 = ptrtoint ptr %tile_h_size.i42.i to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %tile_h_size.i42.i, align 2
  %tile_v_size.i43.i = getelementptr inbounds %struct.drm_connector, ptr %207, i32 0, i32 62
  br label %for.body.i48.i

for.body.i48.i:                                   ; preds = %for.inc.i54.i.for.body.i48.i_crit_edge, %for.body.lr.ph.i44.i
  %.pn25.i45.i = phi ptr [ %.pn23.i40.i, %for.body.lr.ph.i44.i ], [ %.pn.i52.i, %for.inc.i54.i.for.body.i48.i_crit_edge ]
  %hdisplay.i46.i = getelementptr i8, ptr %.pn25.i45.i, i32 -60
  %300 = ptrtoint ptr %hdisplay.i46.i to i32
  call void @__asan_load2_noabort(i32 %300)
  %301 = load i16, ptr %hdisplay.i46.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %301, i16 %299)
  %cmp3.i47.i = icmp eq i16 %301, %299
  br i1 %cmp3.i47.i, label %land.lhs.true.i51.i, label %for.body.i48.i.for.inc.i54.i_crit_edge

for.body.i48.i.for.inc.i54.i_crit_edge:           ; preds = %for.body.i48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i54.i

land.lhs.true.i51.i:                              ; preds = %for.body.i48.i
  %vdisplay.i49.i = getelementptr i8, ptr %.pn25.i45.i, i32 -50
  %302 = ptrtoint ptr %vdisplay.i49.i to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %vdisplay.i49.i, align 2
  %304 = ptrtoint ptr %tile_v_size.i43.i to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %tile_v_size.i43.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %303, i16 %305)
  %cmp7.i50.i = icmp eq i16 %303, %305
  br i1 %cmp7.i50.i, label %cleanup.split.loop.exit21.i56.i, label %land.lhs.true.i51.i.for.inc.i54.i_crit_edge

land.lhs.true.i51.i.for.inc.i54.i_crit_edge:      ; preds = %land.lhs.true.i51.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i54.i

for.inc.i54.i:                                    ; preds = %land.lhs.true.i51.i.for.inc.i54.i_crit_edge, %for.body.i48.i.for.inc.i54.i_crit_edge
  %306 = ptrtoint ptr %.pn25.i45.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %.pn.i52.i = load ptr, ptr %.pn25.i45.i, align 4
  %cmp.not.i53.i = icmp eq ptr %.pn.i52.i, %modes.i39.i
  br i1 %cmp.not.i53.i, label %for.inc.i54.i.if.end125.sink.split.i_crit_edge, label %for.inc.i54.i.for.body.i48.i_crit_edge

for.inc.i54.i.for.body.i48.i_crit_edge:           ; preds = %for.inc.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i48.i

for.inc.i54.i.if.end125.sink.split.i_crit_edge:   ; preds = %for.inc.i54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end125.sink.split.i

cleanup.split.loop.exit21.i56.i:                  ; preds = %land.lhs.true.i51.i
  call void @__sanitizer_cov_trace_pc() #12
  %mode.0.le.i55.i = getelementptr i8, ptr %.pn25.i45.i, i32 -64
  br label %if.end125.sink.split.i

if.end125.sink.split.i:                           ; preds = %cleanup.split.loop.exit21.i56.i, %for.inc.i54.i.if.end125.sink.split.i_crit_edge, %if.else121.i.if.end125.sink.split.i_crit_edge, %cleanup.split.loop.exit23.i.i456, %cleanup.split.loop.exit21.i36.i, %for.cond.i.i454.if.end125.sink.split.i_crit_edge
  %retval.0.i38.sink.i = phi ptr [ %mode.0.le25.i.i455, %cleanup.split.loop.exit21.i36.i ], [ %mode.0.le.i37.i, %cleanup.split.loop.exit23.i.i456 ], [ %mode.0.le.i55.i, %cleanup.split.loop.exit21.i56.i ], [ null, %if.else121.i.if.end125.sink.split.i_crit_edge ], [ null, %for.cond.i.i454.if.end125.sink.split.i_crit_edge ], [ null, %for.inc.i54.i.if.end125.sink.split.i_crit_edge ]
  %307 = ptrtoint ptr %arrayidx59.i430 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %retval.0.i38.sink.i, ptr %arrayidx59.i430, align 4
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.end125.sink.split.i, %if.end95.i.if.end125.i_crit_edge
  %308 = ptrtoint ptr %arrayidx59.i430 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %arrayidx59.i430, align 4
  %tobool127.not.i = icmp eq ptr %309, null
  %name.i457 = getelementptr inbounds %struct.drm_display_mode, ptr %309, i32 0, i32 31
  %spec.select1.i = select i1 %tobool127.not.i, ptr @.str.34, ptr %name.i457
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.33, ptr noundef %spec.select1.i) #10
  %or135.i = or i64 %shl9.i, %conn_configured.174.i
  br label %for.inc136.i

for.inc136.i:                                     ; preds = %if.end125.i, %land.lhs.true45.i.for.inc136.i_crit_edge, %lor.lhs.false.i421.for.inc136.i_crit_edge, %if.then31.i.for.inc136.i_crit_edge, %land.lhs.true23.i.for.inc136.i_crit_edge, %if.then17.i, %for.body6.i.for.inc136.i_crit_edge
  %conn_configured.2.i = phi i64 [ %conn_configured.174.i, %for.body6.i.for.inc136.i_crit_edge ], [ %or.i419, %if.then17.i ], [ %conn_configured.174.i, %land.lhs.true23.i.for.inc136.i_crit_edge ], [ %conn_configured.174.i, %if.then31.i.for.inc136.i_crit_edge ], [ %conn_configured.174.i, %lor.lhs.false.i421.for.inc136.i_crit_edge ], [ %or135.i, %if.end125.i ], [ %conn_configured.174.i, %land.lhs.true45.i.for.inc136.i_crit_edge ]
  %inc137.i = add nuw i32 %i.177.i, 1
  %exitcond86.not.i = icmp eq i32 %inc137.i, %connector_count.2
  br i1 %exitcond86.not.i, label %for.end138.i, label %for.inc136.i.for.body6.i_crit_edge

for.inc136.i.for.body6.i_crit_edge:               ; preds = %for.inc136.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6.i

for.end138.i:                                     ; preds = %for.inc136.i
  %and139.i = and i64 %conn_configured.2.i, %sub.i
  %cmp140.not.i = icmp eq i64 %and139.i, %sub.i
  %inc143.i = add i32 %tile_pass.0.i, 1
  br i1 %cmp140.not.i, label %for.end138.i.if.end46_crit_edge, label %for.end138.i.for.body6.lr.ph.i_crit_edge

for.end138.i.for.body6.lr.ph.i_crit_edge:         ; preds = %for.end138.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body6.lr.ph.i

for.end138.i.if.end46_crit_edge:                  ; preds = %for.end138.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.end46.sink.split:                              ; preds = %for.end74.i.if.end46.sink.split_crit_edge, %for.end38.i.if.end46.sink.split_crit_edge
  %.str.28.sink = phi ptr [ @.str.27, %for.end38.i.if.end46.sink.split_crit_edge ], [ @.str.28, %for.end74.i.if.end46.sink.split_crit_edge ]
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.28.sink) #10
  br label %if.end46

if.end46:                                         ; preds = %if.end46.sink.split, %for.end138.i.if.end46_crit_edge
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef %width.addr.0, i32 noundef %height.addr.0) #10
  %call47 = call fastcc i32 @drm_client_pick_crtcs(ptr noundef %client, ptr noundef %connectors.2, i32 noundef %connector_count.2, ptr noundef nonnull %retval.0.i.i473, ptr noundef nonnull %retval.0.i.i308, i32 noundef 0, i32 noundef %width.addr.0, i32 noundef %height.addr.0)
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %drm_client_firmware_config.exit
  call void @mutex_unlock(ptr noundef %mode_config28) #10
  call fastcc void @drm_client_modeset_release(ptr noundef %client)
  %dep_map.i = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 5, i32 5
  %modesets.i = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 6
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30, i32 19
  br label %for.body53

for.body53:                                       ; preds = %for.inc132.for.body53_crit_edge, %if.end48
  %i.1505 = phi i32 [ 0, %if.end48 ], [ %inc133, %for.inc132.for.body53_crit_edge ]
  %arrayidx54 = getelementptr ptr, ptr %retval.0.i.i308, i32 %i.1505
  %310 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %arrayidx54, align 4
  %arrayidx55 = getelementptr ptr, ptr %retval.0.i.i473, i32 %i.1505
  %312 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %arrayidx55, align 4
  %arrayidx56 = getelementptr %struct.drm_client_offset, ptr %retval.0.i.i344, i32 %i.1505
  %tobool57.not = icmp eq ptr %311, null
  %tobool59.not = icmp eq ptr %313, null
  %or.cond271 = select i1 %tobool57.not, i1 true, i1 %tobool59.not
  br i1 %or.cond271, label %for.body53.for.inc132_crit_edge, label %if.then60

for.body53.for.inc132_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc132

if.then60:                                        ; preds = %for.body53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %314 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %314)
  %tobool.not.i458 = icmp eq i32 %314, 0
  br i1 %tobool.not.i458, label %if.then60.if.end.i_crit_edge, label %land.rhs.i

if.then60.if.end.i_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.then60
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i459, label %land.rhs.i.if.end.i_crit_edge, !prof !93

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i459:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 111, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i459, %land.rhs.i.if.end.i_crit_edge, %if.then60.if.end.i_crit_edge
  %315 = ptrtoint ptr %modesets.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %modesets.i, align 4
  %crtc2435.i = getelementptr inbounds %struct.drm_mode_set, ptr %316, i32 0, i32 1
  %317 = ptrtoint ptr %crtc2435.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %crtc2435.i, align 4
  %tobool25.not36.i = icmp eq ptr %318, null
  br i1 %tobool25.not36.i, label %if.end.i.drm_client_find_modeset.exit_crit_edge, label %if.end.i.for.body.i460_crit_edge

if.end.i.for.body.i460_crit_edge:                 ; preds = %if.end.i
  br label %for.body.i460

if.end.i.drm_client_find_modeset.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_client_find_modeset.exit

for.body.i460:                                    ; preds = %for.inc.i462.for.body.i460_crit_edge, %if.end.i.for.body.i460_crit_edge
  %319 = phi ptr [ %321, %for.inc.i462.for.body.i460_crit_edge ], [ %318, %if.end.i.for.body.i460_crit_edge ]
  %modeset.037.i = phi ptr [ %incdec.ptr.i, %for.inc.i462.for.body.i460_crit_edge ], [ %316, %if.end.i.for.body.i460_crit_edge ]
  %cmp27.i = icmp eq ptr %319, %313
  br i1 %cmp27.i, label %for.body.i460.drm_client_find_modeset.exit_crit_edge, label %for.inc.i462

for.body.i460.drm_client_find_modeset.exit_crit_edge: ; preds = %for.body.i460
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_client_find_modeset.exit

for.inc.i462:                                     ; preds = %for.body.i460
  %incdec.ptr.i = getelementptr %struct.drm_mode_set, ptr %modeset.037.i, i32 1
  %crtc24.i = getelementptr %struct.drm_mode_set, ptr %modeset.037.i, i32 1, i32 1
  %320 = ptrtoint ptr %crtc24.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %crtc24.i, align 4
  %tobool25.not.i461 = icmp eq ptr %321, null
  br i1 %tobool25.not.i461, label %for.inc.i462.drm_client_find_modeset.exit_crit_edge, label %for.inc.i462.for.body.i460_crit_edge

for.inc.i462.for.body.i460_crit_edge:             ; preds = %for.inc.i462
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i460

for.inc.i462.drm_client_find_modeset.exit_crit_edge: ; preds = %for.inc.i462
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_client_find_modeset.exit

drm_client_find_modeset.exit:                     ; preds = %for.inc.i462.drm_client_find_modeset.exit_crit_edge, %for.body.i460.drm_client_find_modeset.exit_crit_edge, %if.end.i.drm_client_find_modeset.exit_crit_edge
  %retval.0.i463 = phi ptr [ null, %if.end.i.drm_client_find_modeset.exit_crit_edge ], [ %modeset.037.i, %for.body.i460.drm_client_find_modeset.exit_crit_edge ], [ null, %for.inc.i462.drm_client_find_modeset.exit_crit_edge ]
  %arrayidx63 = getelementptr ptr, ptr %connectors.2, i32 %i.1505
  %322 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %arrayidx63, align 4
  %name = getelementptr inbounds %struct.drm_display_mode, ptr %311, i32 0, i32 31
  %base = getelementptr inbounds %struct.drm_crtc, ptr %313, i32 0, i32 5
  %324 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %base, align 8
  %326 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx56, align 8
  %y = getelementptr %struct.drm_client_offset, ptr %retval.0.i.i344, i32 %i.1505, i32 1
  %328 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %y, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %325, i32 noundef %327, i32 noundef %329) #10
  %num_connectors = getelementptr inbounds %struct.drm_mode_set, ptr %retval.0.i463, i32 0, i32 6
  %330 = ptrtoint ptr %num_connectors to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %num_connectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %331)
  %cmp64 = icmp eq i32 %331, 8
  br i1 %cmp64, label %drm_client_find_modeset.exit.land.rhs71_crit_edge, label %lor.end

drm_client_find_modeset.exit.land.rhs71_crit_edge: ; preds = %drm_client_find_modeset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs71

lor.end:                                          ; preds = %drm_client_find_modeset.exit
  %332 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %333)
  %cmp66 = icmp sgt i32 %333, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %331)
  %cmp68 = icmp eq i32 %331, 1
  %spec.select = select i1 %cmp66, i1 %cmp68, i1 false
  br i1 %spec.select, label %lor.end.land.rhs71_crit_edge, label %cleanup122

lor.end.land.rhs71_crit_edge:                     ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs71

land.rhs71:                                       ; preds = %lor.end.land.rhs71_crit_edge, %drm_client_find_modeset.exit.land.rhs71_crit_edge
  %.b267 = load i1, ptr @drm_client_modeset_probe.__already_done, align 1
  br i1 %.b267, label %land.rhs71.for.end134_crit_edge, label %if.then78, !prof !96

land.rhs71.for.end134_crit_edge:                  ; preds = %land.rhs71
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end134

if.then78:                                        ; preds = %land.rhs71
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @drm_client_modeset_probe.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 858, i32 noundef 9, ptr noundef null) #10
  br label %for.end134

cleanup122:                                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #12
  %call112 = call ptr @drm_mode_duplicate(ptr noundef %4, ptr noundef nonnull %311) #10
  %mode113 = getelementptr inbounds %struct.drm_mode_set, ptr %retval.0.i463, i32 0, i32 2
  %334 = ptrtoint ptr %mode113 to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %call112, ptr %mode113, align 4
  %base.i464 = getelementptr inbounds %struct.drm_connector, ptr %323, i32 0, i32 6
  call void @drm_mode_object_get(ptr noundef %base.i464) #10
  %connectors114 = getelementptr inbounds %struct.drm_mode_set, ptr %retval.0.i463, i32 0, i32 5
  %335 = ptrtoint ptr %connectors114 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %connectors114, align 4
  %337 = ptrtoint ptr %num_connectors to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %num_connectors, align 4
  %inc116 = add i32 %338, 1
  store i32 %inc116, ptr %num_connectors, align 4
  %arrayidx117 = getelementptr ptr, ptr %336, i32 %338
  %339 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr %323, ptr %arrayidx117, align 4
  %340 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load i32, ptr %arrayidx56, align 8
  %x119 = getelementptr inbounds %struct.drm_mode_set, ptr %retval.0.i463, i32 0, i32 3
  %342 = ptrtoint ptr %x119 to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 %341, ptr %x119, align 4
  %343 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %y, align 4
  %y121 = getelementptr inbounds %struct.drm_mode_set, ptr %retval.0.i463, i32 0, i32 4
  %345 = ptrtoint ptr %y121 to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %344, ptr %y121, align 4
  br label %for.inc132

for.inc132:                                       ; preds = %cleanup122, %for.body53.for.inc132_crit_edge
  %inc133 = add nuw i32 %i.1505, 1
  %exitcond521.not = icmp eq i32 %inc133, %connector_count.2
  br i1 %exitcond521.not, label %for.inc132.for.end134_crit_edge, label %for.inc132.for.body53_crit_edge

for.inc132.for.body53_crit_edge:                  ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body53

for.inc132.for.end134_crit_edge:                  ; preds = %for.inc132
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end134

for.end134:                                       ; preds = %for.inc132.for.end134_crit_edge, %if.then78, %land.rhs71.for.end134_crit_edge
  %ret.7 = phi i32 [ -22, %if.then78 ], [ -22, %land.rhs71.for.end134_crit_edge ], [ 0, %for.inc132.for.end134_crit_edge ]
  call void @mutex_unlock(ptr noundef %modeset_mutex) #10
  br label %out

out:                                              ; preds = %for.end134, %if.then26
  %ret.8 = phi i32 [ %ret.7, %for.end134 ], [ -12, %if.then26 ]
  call void @kfree(ptr noundef %retval.0.i.i473) #10
  call void @kfree(ptr noundef %retval.0.i.i308) #10
  call void @kfree(ptr noundef %retval.0.i.i344) #10
  call void @kfree(ptr noundef %call8.i.i378) #10
  br label %free_connectors

free_connectors:                                  ; preds = %out, %if.then7.free_connectors_crit_edge
  %connectors.0496 = phi ptr [ %connectors.2, %out ], [ %connectors.0499, %if.then7.free_connectors_crit_edge ]
  %connector_count.0493 = phi i32 [ %connector_count.2, %out ], [ %connector_count.0500, %if.then7.free_connectors_crit_edge ]
  %ret.9 = phi i32 [ %ret.8, %out ], [ -12, %if.then7.free_connectors_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %connector_count.0493)
  %cmp137507.not = icmp eq i32 %connector_count.0493, 0
  br i1 %cmp137507.not, label %free_connectors.for.end142_crit_edge, label %free_connectors.for.body138_crit_edge

free_connectors.for.body138_crit_edge:            ; preds = %free_connectors
  br label %for.body138

free_connectors.for.end142_crit_edge:             ; preds = %free_connectors
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end142

for.body138:                                      ; preds = %for.body138.for.body138_crit_edge, %free_connectors.for.body138_crit_edge
  %i.2508 = phi i32 [ %inc141, %for.body138.for.body138_crit_edge ], [ 0, %free_connectors.for.body138_crit_edge ]
  %arrayidx139 = getelementptr ptr, ptr %connectors.0496, i32 %i.2508
  %346 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %arrayidx139, align 4
  %base.i465 = getelementptr inbounds %struct.drm_connector, ptr %347, i32 0, i32 6
  call void @drm_mode_object_put(ptr noundef %base.i465) #10
  %inc141 = add nuw i32 %i.2508, 1
  %exitcond522.not = icmp eq i32 %inc141, %connector_count.0493
  br i1 %exitcond522.not, label %for.body138.for.end142_crit_edge, label %for.body138.for.body138_crit_edge

for.body138.for.body138_crit_edge:                ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body138

for.body138.for.end142_crit_edge:                 ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end142

for.end142:                                       ; preds = %for.body138.for.end142_crit_edge, %free_connectors.for.end142_crit_edge
  call void @kfree(ptr noundef %connectors.0496) #10
  br label %cleanup143

cleanup143:                                       ; preds = %for.end142, %while.end.cleanup143_crit_edge, %while.end.thread
  %retval.0 = phi i32 [ %ret.9, %for.end142 ], [ 0, %while.end.cleanup143_crit_edge ], [ 0, %while.end.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drm_client_pick_crtcs(ptr noundef %client, ptr noundef %connectors, i32 noundef %connector_count, ptr nocapture noundef %best_crtcs, ptr noundef %modes, i32 noundef %n, i32 noundef %width, i32 noundef %height) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n, i32 %connector_count)
  %cmp = icmp eq i32 %n, %connector_count
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %connectors, i32 %n
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr ptr, ptr %best_crtcs, i32 %n
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx2, align 4
  %add = add i32 %n, 1
  %call = tail call fastcc i32 @drm_client_pick_crtcs(ptr noundef %client, ptr noundef %connectors, i32 noundef %connector_count, ptr noundef %best_crtcs, ptr noundef %modes, i32 noundef %add, i32 noundef %width, i32 noundef %height)
  %arrayidx3 = getelementptr ptr, ptr %modes, i32 %n
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx3, align 4
  %cmp4 = icmp eq ptr %6, null
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %connector_count, i32 4) #10
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %if.end6.cleanup_crit_edge, label %if.end7.i.i, !prof !93

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end6
  %9 = extractvalue { i32, i1 } %7, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end9

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end7.i.i
  %status = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 18
  %10 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp10 = icmp eq i32 %11, 1
  %spec.select = select i1 %cmp10, i32 2, i32 1
  %specified = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 36, i32 1
  %12 = ptrtoint ptr %specified to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %specified, align 8, !range !95
  %14 = zext i8 %13 to i32
  %my_score.1 = add nuw nsw i32 %spec.select, %14
  %modes.i = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 17
  %15 = ptrtoint ptr %modes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn23.i = load ptr, ptr %modes.i, align 4
  %cmp.not24.i = icmp eq ptr %.pn23.i, %modes.i
  br i1 %cmp.not24.i, label %if.end9.drm_connector_has_preferred_mode.exit_crit_edge, label %if.end9.for.body.i_crit_edge

if.end9.for.body.i_crit_edge:                     ; preds = %if.end9
  br label %for.body.i

if.end9.drm_connector_has_preferred_mode.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_connector_has_preferred_mode.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9.for.body.i_crit_edge
  %.pn25.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn23.i, %if.end9.for.body.i_crit_edge ]
  %hdisplay.i = getelementptr i8, ptr %.pn25.i, i32 -60
  %16 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hdisplay.i, align 4
  %conv.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %width)
  %cmp2.i = icmp sgt i32 %conv.i, %width
  br i1 %cmp2.i, label %for.body.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %vdisplay.i = getelementptr i8, ptr %.pn25.i, i32 -50
  %18 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vdisplay.i, align 2
  %conv4.i = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv4.i, i32 %height)
  %cmp5.i = icmp sgt i32 %conv4.i, %height
  br i1 %cmp5.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %if.end.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %type.i = getelementptr i8, ptr %.pn25.i, i32 -2
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type.i, align 2
  %22 = and i8 %21, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end.i.for.inc.i_crit_edge, label %cleanup.split.loop.exit21.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %23 = ptrtoint ptr %.pn25.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn25.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %modes.i
  br i1 %cmp.not.i, label %for.inc.i.drm_connector_has_preferred_mode.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.drm_connector_has_preferred_mode.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_connector_has_preferred_mode.exit

cleanup.split.loop.exit21.i:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %mode.0.le.i = getelementptr i8, ptr %.pn25.i, i32 -64
  %phi.cmp = icmp ne ptr %mode.0.le.i, null
  %phi.cast = zext i1 %phi.cmp to i32
  br label %drm_connector_has_preferred_mode.exit

drm_connector_has_preferred_mode.exit:            ; preds = %cleanup.split.loop.exit21.i, %for.inc.i.drm_connector_has_preferred_mode.exit_crit_edge, %if.end9.drm_connector_has_preferred_mode.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %cleanup.split.loop.exit21.i ], [ 0, %if.end9.drm_connector_has_preferred_mode.exit_crit_edge ], [ 0, %for.inc.i.drm_connector_has_preferred_mode.exit_crit_edge ]
  %my_score.2 = add nuw nsw i32 %my_score.1, %retval.0.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %24 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool22.not = icmp eq i32 %24, 0
  br i1 %tobool22.not, label %drm_connector_has_preferred_mode.exit.if.end41_crit_edge, label %land.rhs

drm_connector_has_preferred_mode.exit.if.end41_crit_edge: ; preds = %drm_connector_has_preferred_mode.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

land.rhs:                                         ; preds = %drm_connector_has_preferred_mode.exit
  %dep_map = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 5, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp24.not = icmp eq i32 %call.i, 0
  br i1 %cmp24.not, label %do.end, label %land.rhs.if.end41_crit_edge, !prof !93

land.rhs.if.end41_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 525, i32 noundef 9, ptr noundef null) #10
  br label %if.end41

if.end41:                                         ; preds = %do.end, %land.rhs.if.end41_crit_edge, %drm_connector_has_preferred_mode.exit.if.end41_crit_edge
  %modesets = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 6
  %25 = ptrtoint ptr %modesets to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %modesets, align 4
  %crtc50166 = getelementptr inbounds %struct.drm_mode_set, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %crtc50166 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %crtc50166, align 4
  %tobool51.not167 = icmp eq ptr %28, null
  br i1 %tobool51.not167, label %if.end41.for.end84_crit_edge, label %for.body.lr.ph

if.end41.for.end84_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end84

for.body.lr.ph:                                   ; preds = %if.end41
  %possible_encoders.i = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp57164 = icmp sgt i32 %n, 0
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 19
  %arrayidx75 = getelementptr ptr, ptr %call8.i.i, i32 %n
  %mul = shl i32 %n, 2
  %mul81 = shl i32 %connector_count, 2
  br label %for.body

for.body:                                         ; preds = %for.inc83.for.body_crit_edge, %for.body.lr.ph
  %29 = phi ptr [ %28, %for.body.lr.ph ], [ %54, %for.inc83.for.body_crit_edge ]
  %modeset.0171 = phi ptr [ %26, %for.body.lr.ph ], [ %incdec.ptr, %for.inc83.for.body_crit_edge ]
  %best_score.0168 = phi i32 [ %call, %for.body.lr.ph ], [ %best_score.1, %for.inc83.for.body_crit_edge ]
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %31, i32 0, i32 30, i32 16
  %32 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn21.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not22.i = icmp eq ptr %.pn21.i, %encoder_list.i
  br i1 %cmp.not22.i, label %for.body.for.inc83_crit_edge, label %for.body.lr.ph.i

for.body.for.inc83_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc83

for.body.lr.ph.i:                                 ; preds = %for.body
  %33 = ptrtoint ptr %possible_encoders.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %possible_encoders.i, align 8
  %index.i.i19.i = getelementptr inbounds %struct.drm_crtc, ptr %29, i32 0, i32 8
  br label %for.body.i151

for.body.i151:                                    ; preds = %for.inc.i154.for.body.i151_crit_edge, %for.body.lr.ph.i
  %.pn23.i149 = phi ptr [ %.pn21.i, %for.body.lr.ph.i ], [ %.pn.i152, %for.inc.i154.for.body.i151_crit_edge ]
  %index.i.i.i = getelementptr i8, ptr %.pn23.i149, i32 36
  %35 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %36
  %and.i = and i32 %shl.i.i, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i150 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i150, label %for.body.i151.for.inc.i154_crit_edge, label %if.else.i

for.body.i151.for.inc.i154_crit_edge:             ; preds = %for.body.i151
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i154

if.else.i:                                        ; preds = %for.body.i151
  %possible_crtcs.i = getelementptr i8, ptr %.pn23.i149, i32 40
  %37 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %possible_crtcs.i, align 4
  %39 = ptrtoint ptr %index.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %index.i.i19.i, align 4
  %shl.i20.i = shl nuw i32 1, %40
  %and5.i = and i32 %shl.i20.i, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else.i.for.inc.i154_crit_edge, label %for.cond56.preheader

if.else.i.for.inc.i154_crit_edge:                 ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i154

for.cond56.preheader:                             ; preds = %if.else.i
  br i1 %cmp57164, label %for.cond56.preheader.for.body58_crit_edge, label %for.cond56.preheader.if.end74_crit_edge

for.cond56.preheader.if.end74_crit_edge:          ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

for.cond56.preheader.for.body58_crit_edge:        ; preds = %for.cond56.preheader
  br label %for.body58

for.inc.i154:                                     ; preds = %if.else.i.for.inc.i154_crit_edge, %for.body.i151.for.inc.i154_crit_edge
  %41 = ptrtoint ptr %.pn23.i149 to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn.i152 = load ptr, ptr %.pn23.i149, align 4
  %cmp.not.i153 = icmp eq ptr %.pn.i152, %encoder_list.i
  br i1 %cmp.not.i153, label %for.inc.i154.for.inc83_crit_edge, label %for.inc.i154.for.body.i151_crit_edge

for.inc.i154.for.body.i151_crit_edge:             ; preds = %for.inc.i154
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i151

for.inc.i154.for.inc83_crit_edge:                 ; preds = %for.inc.i154
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc83

for.body58:                                       ; preds = %for.inc.for.body58_crit_edge, %for.cond56.preheader.for.body58_crit_edge
  %o.0165 = phi i32 [ %inc63, %for.inc.for.body58_crit_edge ], [ 0, %for.cond56.preheader.for.body58_crit_edge ]
  %arrayidx59 = getelementptr ptr, ptr %best_crtcs, i32 %o.0165
  %42 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx59, align 4
  %cmp60 = icmp eq ptr %43, %29
  br i1 %cmp60, label %if.then65.critedge, label %for.inc

for.inc:                                          ; preds = %for.body58
  %inc63 = add nuw nsw i32 %o.0165, 1
  %exitcond.not = icmp eq i32 %inc63, %n
  br i1 %exitcond.not, label %for.inc.if.end74_crit_edge, label %for.inc.for.body58_crit_edge

for.inc.for.body58_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body58

for.inc.if.end74_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.then65.critedge:                               ; preds = %for.body58
  %44 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_crtc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp66 = icmp sgt i32 %45, 1
  br i1 %cmp66, label %if.then65.critedge.for.inc83_crit_edge, label %if.end68

if.then65.critedge.for.inc83_crit_edge:           ; preds = %if.then65.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc83

if.end68:                                         ; preds = %if.then65.critedge
  %arrayidx69 = getelementptr ptr, ptr %modes, i32 %o.0165
  %46 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx69, align 4
  %48 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx3, align 4
  %call71 = tail call zeroext i1 @drm_mode_equal(ptr noundef %47, ptr noundef %49) #10
  br i1 %call71, label %if.end68.if.end74_crit_edge, label %if.end68.for.inc83_crit_edge

if.end68.for.inc83_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc83

if.end68.if.end74_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74

if.end74:                                         ; preds = %if.end68.if.end74_crit_edge, %for.inc.if.end74_crit_edge, %for.cond56.preheader.if.end74_crit_edge
  %50 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %29, ptr %arrayidx75, align 4
  %51 = call ptr @memcpy(ptr %call8.i.i, ptr %best_crtcs, i32 %mul)
  %call77 = tail call fastcc i32 @drm_client_pick_crtcs(ptr noundef %client, ptr noundef %connectors, i32 noundef %connector_count, ptr noundef nonnull %call8.i.i, ptr noundef %modes, i32 noundef %add, i32 noundef %width, i32 noundef %height)
  %add78 = add i32 %my_score.2, %call77
  call void @__sanitizer_cov_trace_cmp4(i32 %add78, i32 %best_score.0168)
  %cmp79 = icmp sgt i32 %add78, %best_score.0168
  br i1 %cmp79, label %if.then80, label %if.end74.for.inc83_crit_edge

if.end74.for.inc83_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc83

if.then80:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  %52 = call ptr @memcpy(ptr %best_crtcs, ptr %call8.i.i, i32 %mul81)
  br label %for.inc83

for.inc83:                                        ; preds = %if.then80, %if.end74.for.inc83_crit_edge, %if.end68.for.inc83_crit_edge, %if.then65.critedge.for.inc83_crit_edge, %for.inc.i154.for.inc83_crit_edge, %for.body.for.inc83_crit_edge
  %best_score.1 = phi i32 [ %best_score.0168, %if.then65.critedge.for.inc83_crit_edge ], [ %add78, %if.then80 ], [ %best_score.0168, %if.end74.for.inc83_crit_edge ], [ %best_score.0168, %if.end68.for.inc83_crit_edge ], [ %best_score.0168, %for.body.for.inc83_crit_edge ], [ %best_score.0168, %for.inc.i154.for.inc83_crit_edge ]
  %incdec.ptr = getelementptr %struct.drm_mode_set, ptr %modeset.0171, i32 1
  %crtc50 = getelementptr %struct.drm_mode_set, ptr %modeset.0171, i32 1, i32 1
  %53 = ptrtoint ptr %crtc50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %crtc50, align 4
  %tobool51.not = icmp eq ptr %54, null
  br i1 %tobool51.not, label %for.inc83.for.end84_crit_edge, label %for.inc83.for.body_crit_edge

for.inc83.for.body_crit_edge:                     ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc83.for.end84_crit_edge:                    ; preds = %for.inc83
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end84

for.end84:                                        ; preds = %for.inc83.for.end84_crit_edge, %if.end41.for.end84_crit_edge
  %best_score.0.lcssa = phi i32 [ %call, %if.end41.for.end84_crit_edge ], [ %best_score.1, %for.inc83.for.end84_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end84, %if.end7.i.i.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %best_score.0.lcssa, %for.end84 ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call, %if.end7.i.i.cleanup_crit_edge ], [ %call, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_client_rotation(ptr nocapture noundef readonly %modeset, ptr nocapture noundef %rotation) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %connectors = getelementptr inbounds %struct.drm_mode_set, ptr %modeset, i32 0, i32 5
  %0 = ptrtoint ptr %connectors to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connectors, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %crtc = getelementptr inbounds %struct.drm_mode_set, ptr %modeset, i32 0, i32 1
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %primary, align 4
  %num_connectors = getelementptr inbounds %struct.drm_mode_set, ptr %modeset, i32 0, i32 6
  %8 = ptrtoint ptr %num_connectors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_connectors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %panel_orientation = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 20, i32 4
  %10 = ptrtoint ptr %panel_orientation to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %panel_orientation, align 8
  %switch.tableidx = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 3
  br i1 %12, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.drm_client_rotation, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %.sink = phi i32 [ %switch.load, %switch.lookup ], [ 1, %if.end.sw.epilog_crit_edge ]
  %14 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %rotation, align 4
  %specified = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 36, i32 1
  %15 = ptrtoint ptr %specified to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %specified, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool3.not = icmp eq i8 %16, 0
  br i1 %tobool3.not, label %sw.epilog.if.end38_crit_edge, label %land.lhs.true

sw.epilog.if.end38_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

land.lhs.true:                                    ; preds = %sw.epilog
  %rotation_reflection = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 36, i32 13
  %17 = ptrtoint ptr %rotation_reflection to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rotation_reflection, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool4.not = icmp eq i32 %18, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end38_crit_edge, label %if.then5

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rotation, align 4
  %and = and i32 %20, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not.i.i = icmp eq i32 %and, 0
  %21 = tail call i32 @llvm.ctlz.i32(i32 %and, i1 true) #10, !range !97
  %sub.i.op.i = xor i32 %21, -1
  %sub.i = select i1 %tobool.not.i.i, i32 3, i32 %sub.i.op.i
  %and14 = and i32 %18, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool.not.i.i92 = icmp eq i32 %and14, 0
  %22 = tail call i32 @llvm.ctlz.i32(i32 %and14, i1 true) #10, !range !97
  %sub.i.op.i93 = xor i32 %22, -1
  %sub.i94 = select i1 %tobool.not.i.i92, i32 3, i32 %sub.i.op.i93
  %add = add nsw i32 %sub.i94, %sub.i
  %rem = and i32 %add, 3
  %and3591 = xor i32 %20, %18
  %xor = and i32 %and3591, -16
  %shl = shl nuw nsw i32 1, %rem
  %or = or i32 %shl, %xor
  %23 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %rotation, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then5, %land.lhs.true.if.end38_crit_edge, %sw.epilog.if.end38_crit_edge
  %24 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rotation, align 4
  %and39 = and i32 %25, 15
  %26 = zext i32 %and39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %and39, label %if.end38.cleanup_crit_edge [
    i32 1, label %if.end38.lor.lhs.false_crit_edge
    i32 4, label %if.end38.lor.lhs.false_crit_edge98
  ]

if.end38.lor.lhs.false_crit_edge98:               ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

if.end38.lor.lhs.false_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end38.lor.lhs.false_crit_edge, %if.end38.lor.lhs.false_crit_edge98
  %rotation_property = getelementptr inbounds %struct.drm_plane, ptr %7, i32 0, i32 22
  %27 = ptrtoint ptr %rotation_property to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rotation_property, align 8
  %tobool46.not = icmp eq ptr %28, null
  br i1 %tobool46.not, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %num_values = getelementptr inbounds %struct.drm_property, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %num_values to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_values, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp5095.not = icmp eq i32 %30, 0
  br i1 %cmp5095.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %values = getelementptr inbounds %struct.drm_property, ptr %28, i32 0, i32 5
  %31 = ptrtoint ptr %values to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %values, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %valid_mask.096 = phi i64 [ 0, %for.body.lr.ph ], [ %or55, %for.body.for.body_crit_edge ]
  %arrayidx53 = getelementptr i64, ptr %32, i32 %i.097
  %33 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx53, align 8
  %shl54 = shl nuw i64 1, %34
  %or55 = or i64 %shl54, %valid_mask.096
  %inc = add nuw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, %30
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %valid_mask.0.lcssa = phi i64 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %or55, %for.body.for.end_crit_edge ]
  %conv56 = zext i32 %25 to i64
  %and57 = and i64 %valid_mask.0.lcssa, %conv56
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and57)
  %tobool58.not = icmp ne i64 %and57, 0
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end38.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ %tobool58.not, %for.end ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_client_modeset_check(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %driver.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features.i.i.i, align 4
  %driver_features1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i = and i32 %5, 16
  %and2.i.i.i = and i32 %and.i.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %lor.rhs.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.rhs.i:                                        ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 27
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %lor.rhs.i.cleanup_crit_edge, label %drm_drv_uses_atomic_modeset.exit

lor.rhs.i.cleanup_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

drm_drv_uses_atomic_modeset.exit:                 ; preds = %lor.rhs.i
  %atomic_commit.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %atomic_commit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %atomic_commit.i, align 4
  %cmp.i.not = icmp eq ptr %11, null
  br i1 %cmp.i.not, label %drm_drv_uses_atomic_modeset.exit.cleanup_crit_edge, label %drm_drv_uses_atomic_modeset.exit.if.end_crit_edge

drm_drv_uses_atomic_modeset.exit.if.end_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

drm_drv_uses_atomic_modeset.exit.cleanup_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %drm_drv_uses_atomic_modeset.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %modeset_mutex = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %modeset_mutex, i32 noundef 0) #10
  %call1 = tail call fastcc i32 @drm_client_modeset_commit_atomic(ptr noundef %client, i1 noundef zeroext true, i1 noundef zeroext true)
  tail call void @mutex_unlock(ptr noundef %modeset_mutex) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %drm_drv_uses_atomic_modeset.exit.cleanup_crit_edge, %lor.rhs.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %drm_drv_uses_atomic_modeset.exit.cleanup_crit_edge ], [ 0, %lor.rhs.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @drm_client_modeset_commit_atomic(ptr noundef %client, i1 noundef zeroext %active, i1 noundef zeroext %check) unnamed_addr #0 align 64 {
entry:
  %ctx = alloca %struct.drm_modeset_acquire_ctx, align 4
  %rotation57 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx) #10
  %2 = call ptr @memset(ptr %ctx, i32 255, i32 84)
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx, i32 noundef 0) #10
  %call = call ptr @drm_atomic_state_alloc(ptr noundef %1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_ctx_crit_edge, label %if.end

entry.out_ctx_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_ctx

if.end:                                           ; preds = %entry
  %acquire_ctx = getelementptr inbounds %struct.drm_atomic_state, ptr %call, i32 0, i32 9
  %3 = ptrtoint ptr %acquire_ctx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ctx, ptr %acquire_ctx, align 4
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 18
  %dep_map = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 5, i32 5
  %modesets = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 6
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %call, i32 0, i32 3
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %call, i32 0, i32 4
  br label %retry

retry:                                            ; preds = %backoff, %if.end
  %4 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn134 = load ptr, ptr %plane_list, align 4
  %cmp.not136 = icmp eq ptr %.pn134, %plane_list
  br i1 %cmp.not136, label %retry.do.body_crit_edge, label %retry.for.body_crit_edge

retry.for.body_crit_edge:                         ; preds = %retry
  br label %for.body

retry.do.body_crit_edge:                          ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %retry.for.body_crit_edge
  %.pn137 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn134, %retry.for.body_crit_edge ]
  %plane.0138 = getelementptr i8, ptr %.pn137, i32 -4
  %call5 = call ptr @drm_atomic_get_plane_state(ptr noundef nonnull %call, ptr noundef %plane.0138) #10
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end9

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call5 to i32
  br label %out_state

if.end9:                                          ; preds = %for.body
  %rotation = getelementptr inbounds %struct.drm_plane_state, ptr %call5, i32 0, i32 14
  %6 = ptrtoint ptr %rotation to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %rotation, align 4
  %type = getelementptr i8, ptr %.pn137, i32 476
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp10 = icmp eq i32 %8, 1
  br i1 %cmp10, label %if.end9.for.inc_crit_edge, label %if.end12

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end12:                                         ; preds = %if.end9
  %call13 = call i32 @__drm_atomic_helper_disable_plane(ptr noundef %plane.0138, ptr noundef %call5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end12.for.inc_crit_edge, label %if.end12.out_state_crit_edge

if.end12.out_state_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_state

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end12.for.inc_crit_edge, %if.end9.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn137 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn137, align 4
  %cmp.not = icmp eq ptr %.pn, %plane_list
  br i1 %cmp.not, label %for.inc.do.body_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %retry.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool22.not = icmp eq i32 %10, 0
  br i1 %tobool22.not, label %do.body.if.end42_crit_edge, label %land.rhs

do.body.if.end42_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

land.rhs:                                         ; preds = %do.body
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp24.not = icmp eq i32 %call.i, 0
  br i1 %cmp24.not, label %do.end, label %land.rhs.if.end42_crit_edge, !prof !93

land.rhs.if.end42_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1012, i32 noundef 9, ptr noundef null) #10
  br label %if.end42

if.end42:                                         ; preds = %do.end, %land.rhs.if.end42_crit_edge, %do.body.if.end42_crit_edge
  %11 = ptrtoint ptr %modesets to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %modesets, align 4
  %crtc139 = getelementptr inbounds %struct.drm_mode_set, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %crtc139 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crtc139, align 4
  %tobool53.not140 = icmp eq ptr %14, null
  br i1 %tobool53.not140, label %if.end42.for.end80_crit_edge, label %if.end42.for.body54_crit_edge

if.end42.for.body54_crit_edge:                    ; preds = %if.end42
  br label %for.body54

if.end42.for.end80_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end80

for.body54:                                       ; preds = %for.inc79.for.body54_crit_edge, %if.end42.for.body54_crit_edge
  %15 = phi ptr [ %38, %for.inc79.for.body54_crit_edge ], [ %14, %if.end42.for.body54_crit_edge ]
  %crtc142 = phi ptr [ %crtc, %for.inc79.for.body54_crit_edge ], [ %crtc139, %if.end42.for.body54_crit_edge ]
  %mode_set.0141 = phi ptr [ %incdec.ptr, %for.inc79.for.body54_crit_edge ], [ %12, %if.end42.for.body54_crit_edge ]
  %primary56 = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %primary56 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %primary56, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rotation57) #10
  %18 = ptrtoint ptr %rotation57 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %rotation57, align 4, !annotation !94
  %call58 = call zeroext i1 @drm_client_rotation(ptr noundef %mode_set.0141, ptr noundef nonnull %rotation57)
  br i1 %call58, label %if.then59, label %for.body54.if.end63_crit_edge

for.body54.if.end63_crit_edge:                    ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

if.then59:                                        ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %17, i32 0, i32 17
  %21 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %20, i32 %22, i32 3
  %23 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %new_state.i, align 4
  %25 = ptrtoint ptr %rotation57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rotation57, align 4
  %rotation62 = getelementptr inbounds %struct.drm_plane_state, ptr %24, i32 0, i32 14
  %27 = ptrtoint ptr %rotation62 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %rotation62, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %for.body54.if.end63_crit_edge
  %call64 = call i32 @__drm_atomic_helper_set_config(ptr noundef %mode_set.0141, ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65.not = icmp ne i32 %call64, 0
  %brmerge = or i1 %cmp65.not, %active
  br i1 %brmerge, label %cleanup75, label %cleanup75.thread

cleanup75.thread:                                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %crtc142 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %crtc142, align 4
  %30 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %crtcs.i, align 4
  %index.i.i126 = getelementptr inbounds %struct.drm_crtc, ptr %29, i32 0, i32 8
  %32 = ptrtoint ptr %index.i.i126 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index.i.i126, align 4
  %new_state.i127 = getelementptr %struct.__drm_crtcs_state, ptr %31, i32 %33, i32 3
  %34 = ptrtoint ptr %new_state.i127 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %new_state.i127, align 4
  %active73 = getelementptr inbounds %struct.drm_crtc_state, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %active73 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %active73, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rotation57) #10
  br label %for.inc79

cleanup75:                                        ; preds = %if.end63
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rotation57) #10
  br i1 %cmp65.not, label %cleanup75.out_state_crit_edge, label %cleanup75.for.inc79_crit_edge

cleanup75.for.inc79_crit_edge:                    ; preds = %cleanup75
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc79

cleanup75.out_state_crit_edge:                    ; preds = %cleanup75
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_state

for.inc79:                                        ; preds = %cleanup75.for.inc79_crit_edge, %cleanup75.thread
  %incdec.ptr = getelementptr %struct.drm_mode_set, ptr %mode_set.0141, i32 1
  %crtc = getelementptr %struct.drm_mode_set, ptr %mode_set.0141, i32 1, i32 1
  %37 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %crtc, align 4
  %tobool53.not = icmp eq ptr %38, null
  br i1 %tobool53.not, label %for.inc79.for.end80_crit_edge, label %for.inc79.for.body54_crit_edge

for.inc79.for.body54_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body54

for.inc79.for.end80_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end80

for.end80:                                        ; preds = %for.inc79.for.end80_crit_edge, %if.end42.for.end80_crit_edge
  br i1 %check, label %if.then82, label %if.else

if.then82:                                        ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #12
  %call83 = call i32 @drm_atomic_check_only(ptr noundef nonnull %call) #10
  br label %out_state

if.else:                                          ; preds = %for.end80
  call void @__sanitizer_cov_trace_pc() #12
  %call84 = call i32 @drm_atomic_commit(ptr noundef nonnull %call) #10
  br label %out_state

out_state:                                        ; preds = %if.else, %if.then82, %cleanup75.out_state_crit_edge, %if.end12.out_state_crit_edge, %if.then7
  %ret.3 = phi i32 [ %call83, %if.then82 ], [ %call84, %if.else ], [ %5, %if.then7 ], [ %call64, %cleanup75.out_state_crit_edge ], [ %call13, %if.end12.out_state_crit_edge ]
  %cmp86 = icmp eq i32 %ret.3, -35
  br i1 %cmp86, label %backoff, label %if.end88

if.end88:                                         ; preds = %out_state
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !98
  call void @llvm.prefetch.p0(ptr nonnull %call, i32 1, i32 3, i32 1) #10
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call, ptr nonnull %call, i32 1, ptr nonnull elementtype(i32) %call) #10, !srcloc !99
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.out_ctx_crit_edge, label %if.then10.i.i.i.i.i, !prof !96

if.end5.i.i.i.i.i.out_ctx_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_ctx

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef nonnull %call, i32 noundef 3) #10
  br label %out_ctx

if.then.i.i:                                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !100
  call void @__drm_atomic_state_free(ptr noundef nonnull %call) #10
  br label %out_ctx

out_ctx:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.out_ctx_crit_edge, %entry.out_ctx_crit_edge
  %ret.4 = phi i32 [ -12, %entry.out_ctx_crit_edge ], [ %ret.3, %if.end5.i.i.i.i.i.out_ctx_crit_edge ], [ %ret.3, %if.then10.i.i.i.i.i ], [ %ret.3, %if.then.i.i ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx) #10
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx) #10
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx) #10
  ret i32 %ret.4

backoff:                                          ; preds = %out_state
  call void @__sanitizer_cov_trace_pc() #12
  call void @drm_atomic_state_clear(ptr noundef nonnull %call) #10
  %call89 = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx) #10
  br label %retry
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_client_modeset_commit_locked(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %modeset_mutex = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %modeset_mutex, i32 noundef 0) #10
  %driver.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features.i.i.i, align 4
  %driver_features1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i = and i32 %5, 16
  %and2.i.i.i = and i32 %and.i.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %lor.rhs.i, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.rhs.i:                                        ; preds = %entry
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 27
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %lor.rhs.i.if.else_crit_edge, label %drm_drv_uses_atomic_modeset.exit

lor.rhs.i.if.else_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

drm_drv_uses_atomic_modeset.exit:                 ; preds = %lor.rhs.i
  %atomic_commit.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %atomic_commit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %atomic_commit.i, align 4
  %cmp.i.not = icmp eq ptr %11, null
  br i1 %cmp.i.not, label %drm_drv_uses_atomic_modeset.exit.if.else_crit_edge, label %drm_drv_uses_atomic_modeset.exit.if.then_crit_edge

drm_drv_uses_atomic_modeset.exit.if.then_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

drm_drv_uses_atomic_modeset.exit.if.else_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %drm_drv_uses_atomic_modeset.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call2 = tail call fastcc i32 @drm_client_modeset_commit_atomic(ptr noundef %client, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %if.end

if.else:                                          ; preds = %drm_drv_uses_atomic_modeset.exit.if.else_crit_edge, %lor.rhs.i.if.else_crit_edge
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 4
  tail call void @drm_modeset_lock_all(ptr noundef %13) #10
  %plane_list.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 18
  %14 = ptrtoint ptr %plane_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn107.i = load ptr, ptr %plane_list.i, align 4
  %cmp.not109.i = icmp eq ptr %.pn107.i, %plane_list.i
  br i1 %cmp.not109.i, label %if.else.do.body.i_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.do.body.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %.pn110.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn107.i, %if.else.for.body.i_crit_edge ]
  %plane.0111.i = getelementptr i8, ptr %.pn110.i, i32 -4
  %type.i = getelementptr i8, ptr %.pn110.i, i32 476
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp4.not.i = icmp eq i32 %16, 1
  br i1 %cmp4.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_plane_force_disable(ptr noundef %plane.0111.i) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %rotation_property.i = getelementptr i8, ptr %.pn110.i, i32 500
  %17 = ptrtoint ptr %rotation_property.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rotation_property.i, align 8
  %tobool.not.i9 = icmp eq ptr %18, null
  br i1 %tobool.not.i9, label %if.end.i.for.inc.i_crit_edge, label %if.then5.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @drm_mode_plane_set_obj_prop(ptr noundef %plane.0111.i, ptr noundef nonnull %18, i64 noundef 1) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then5.i, %if.end.i.for.inc.i_crit_edge
  %19 = ptrtoint ptr %.pn110.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i = load ptr, ptr %.pn110.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %plane_list.i
  br i1 %cmp.not.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %if.else.do.body.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %20 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13.not.i = icmp eq i32 %20, 0
  br i1 %tobool13.not.i, label %do.body.i.if.end33.i_crit_edge, label %land.rhs.i10

do.body.i.if.end33.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

land.rhs.i10:                                     ; preds = %do.body.i
  %dep_map.i = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 5, i32 5
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp15.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp15.not.i, label %do.end.i, label %land.rhs.i10.if.end33.i_crit_edge, !prof !93

land.rhs.i10.if.end33.i_crit_edge:                ; preds = %land.rhs.i10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33.i

do.end.i:                                         ; preds = %land.rhs.i10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1081, i32 noundef 9, ptr noundef null) #10
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end.i, %land.rhs.i10.if.end33.i_crit_edge, %do.body.i.if.end33.i_crit_edge
  %modesets.i = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 6
  %21 = ptrtoint ptr %modesets.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %modesets.i, align 4
  %crtc113.i = getelementptr inbounds %struct.drm_mode_set, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %crtc113.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %crtc113.i, align 4
  %tobool44.not114.i = icmp eq ptr %24, null
  br i1 %tobool44.not114.i, label %if.end33.i.drm_client_modeset_commit_legacy.exit_crit_edge, label %if.end33.i.for.body45.i_crit_edge

if.end33.i.for.body45.i_crit_edge:                ; preds = %if.end33.i
  br label %for.body45.i

if.end33.i.drm_client_modeset_commit_legacy.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_client_modeset_commit_legacy.exit

for.cond43.i:                                     ; preds = %if.end66.i
  %incdec.ptr.i = getelementptr %struct.drm_mode_set, ptr %mode_set.0115.i, i32 1
  %crtc.i = getelementptr %struct.drm_mode_set, ptr %mode_set.0115.i, i32 1, i32 1
  %25 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %crtc.i, align 4
  %tobool44.not.i = icmp eq ptr %26, null
  br i1 %tobool44.not.i, label %for.cond43.i.drm_client_modeset_commit_legacy.exit_crit_edge, label %for.cond43.i.for.body45.i_crit_edge

for.cond43.i.for.body45.i_crit_edge:              ; preds = %for.cond43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45.i

for.cond43.i.drm_client_modeset_commit_legacy.exit_crit_edge: ; preds = %for.cond43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_client_modeset_commit_legacy.exit

for.body45.i:                                     ; preds = %for.cond43.i.for.body45.i_crit_edge, %if.end33.i.for.body45.i_crit_edge
  %27 = phi ptr [ %26, %for.cond43.i.for.body45.i_crit_edge ], [ %24, %if.end33.i.for.body45.i_crit_edge ]
  %mode_set.0115.i = phi ptr [ %incdec.ptr.i, %for.cond43.i.for.body45.i_crit_edge ], [ %22, %if.end33.i.for.body45.i_crit_edge ]
  %funcs.i11 = getelementptr inbounds %struct.drm_crtc, ptr %27, i32 0, i32 16
  %28 = ptrtoint ptr %funcs.i11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %funcs.i11, align 4
  %cursor_set2.i = getelementptr inbounds %struct.drm_crtc_funcs, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %cursor_set2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cursor_set2.i, align 4
  %tobool48.not.i = icmp eq ptr %31, null
  br i1 %tobool48.not.i, label %if.else.i, label %if.then49.i

if.then49.i:                                      ; preds = %for.body45.i
  %call52.i = tail call i32 %31(ptr noundef nonnull %27, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.then49.i.if.end66.i_crit_edge, label %if.then49.i.drm_client_modeset_commit_legacy.exit_crit_edge

if.then49.i.drm_client_modeset_commit_legacy.exit_crit_edge: ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_client_modeset_commit_legacy.exit

if.then49.i.if.end66.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

if.else.i:                                        ; preds = %for.body45.i
  %cursor_set.i = getelementptr inbounds %struct.drm_crtc_funcs, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %cursor_set.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cursor_set.i, align 4
  %tobool57.not.i = icmp eq ptr %33, null
  br i1 %tobool57.not.i, label %if.else.i.if.end66.i_crit_edge, label %if.then58.i

if.else.i.if.end66.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

if.then58.i:                                      ; preds = %if.else.i
  %call61.i = tail call i32 %33(ptr noundef nonnull %27, ptr noundef null, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.then58.i.if.end66.i_crit_edge, label %if.then58.i.drm_client_modeset_commit_legacy.exit_crit_edge

if.then58.i.drm_client_modeset_commit_legacy.exit_crit_edge: ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_client_modeset_commit_legacy.exit

if.then58.i.if.end66.i_crit_edge:                 ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then58.i.if.end66.i_crit_edge, %if.else.i.if.end66.i_crit_edge, %if.then49.i.if.end66.i_crit_edge
  %call67.i = tail call i32 @drm_mode_set_config_internal(ptr noundef %mode_set.0115.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67.i)
  %tobool68.not.i = icmp eq i32 %call67.i, 0
  br i1 %tobool68.not.i, label %for.cond43.i, label %if.end66.i.drm_client_modeset_commit_legacy.exit_crit_edge

if.end66.i.drm_client_modeset_commit_legacy.exit_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_client_modeset_commit_legacy.exit

drm_client_modeset_commit_legacy.exit:            ; preds = %if.end66.i.drm_client_modeset_commit_legacy.exit_crit_edge, %if.then58.i.drm_client_modeset_commit_legacy.exit_crit_edge, %if.then49.i.drm_client_modeset_commit_legacy.exit_crit_edge, %for.cond43.i.drm_client_modeset_commit_legacy.exit_crit_edge, %if.end33.i.drm_client_modeset_commit_legacy.exit_crit_edge
  %ret.2.i = phi i32 [ 0, %if.end33.i.drm_client_modeset_commit_legacy.exit_crit_edge ], [ 0, %for.cond43.i.drm_client_modeset_commit_legacy.exit_crit_edge ], [ %call52.i, %if.then49.i.drm_client_modeset_commit_legacy.exit_crit_edge ], [ %call61.i, %if.then58.i.drm_client_modeset_commit_legacy.exit_crit_edge ], [ %call67.i, %if.end66.i.drm_client_modeset_commit_legacy.exit_crit_edge ]
  tail call void @drm_modeset_unlock_all(ptr noundef %13) #10
  br label %if.end

if.end:                                           ; preds = %drm_client_modeset_commit_legacy.exit, %if.then
  %ret.0 = phi i32 [ %call2, %if.then ], [ %ret.2.i, %drm_client_modeset_commit_legacy.exit ]
  tail call void @mutex_unlock(ptr noundef %modeset_mutex) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_client_modeset_commit(ptr noundef %client) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %call = tail call zeroext i1 @drm_master_internal_acquire(ptr noundef %1) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 @drm_client_modeset_commit_locked(ptr noundef %client)
  tail call void @drm_master_internal_release(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_master_internal_acquire(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_master_internal_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @drm_client_modeset_dpms(ptr noundef %client, i32 noundef %mode) #0 align 64 {
entry:
  %ctx.i = alloca %struct.drm_modeset_acquire_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %call = tail call zeroext i1 @drm_master_internal_acquire(ptr noundef %1) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %modeset_mutex = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %modeset_mutex, i32 noundef 0) #10
  %driver.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %driver.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver.i.i.i, align 4
  %driver_features.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %driver_features.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_features.i.i.i, align 4
  %driver_features1.i.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %driver_features1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_features1.i.i.i, align 4
  %and.i.i.i = and i32 %5, 16
  %and2.i.i.i = and i32 %and.i.i.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %lor.rhs.i, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

lor.rhs.i:                                        ; preds = %if.end
  %funcs.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 27
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %lor.rhs.i.if.else_crit_edge, label %drm_drv_uses_atomic_modeset.exit

lor.rhs.i.if.else_crit_edge:                      ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

drm_drv_uses_atomic_modeset.exit:                 ; preds = %lor.rhs.i
  %atomic_commit.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %atomic_commit.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %atomic_commit.i, align 4
  %cmp.i.not = icmp eq ptr %11, null
  br i1 %cmp.i.not, label %drm_drv_uses_atomic_modeset.exit.if.else_crit_edge, label %drm_drv_uses_atomic_modeset.exit.if.then3_crit_edge

drm_drv_uses_atomic_modeset.exit.if.then3_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

drm_drv_uses_atomic_modeset.exit.if.else_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then3:                                         ; preds = %drm_drv_uses_atomic_modeset.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp = icmp eq i32 %mode, 0
  %call4 = tail call fastcc i32 @drm_client_modeset_commit_atomic(ptr noundef %client, i1 noundef zeroext %cmp, i1 noundef zeroext false)
  br label %if.end5

if.else:                                          ; preds = %drm_drv_uses_atomic_modeset.exit.if.else_crit_edge, %lor.rhs.i.if.else_crit_edge
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 4
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %ctx.i) #10
  %14 = call ptr @memset(ptr %ctx.i, i32 255, i32 84)
  %driver.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 4
  %15 = ptrtoint ptr %driver.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver.i.i.i.i, align 4
  %driver_features.i.i.i.i = getelementptr inbounds %struct.drm_driver, ptr %16, i32 0, i32 24
  %17 = ptrtoint ptr %driver_features.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %driver_features.i.i.i.i, align 4
  %driver_features1.i.i.i.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 10
  %19 = ptrtoint ptr %driver_features1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %driver_features1.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %18, 16
  %and2.i.i.i.i = and i32 %and.i.i.i.i, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %cmp.i.i.not.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %cmp.i.i.not.i.i, label %lor.rhs.i.i, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

lor.rhs.i.i:                                      ; preds = %if.else
  %funcs.i.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 27
  %21 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %funcs.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i, label %lor.rhs.i.i.if.then.i_crit_edge, label %drm_drv_uses_atomic_modeset.exit.i

lor.rhs.i.i.if.then.i_crit_edge:                  ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

drm_drv_uses_atomic_modeset.exit.i:               ; preds = %lor.rhs.i.i
  %atomic_commit.i.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %atomic_commit.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %atomic_commit.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %24, null
  br i1 %cmp.i.not.i, label %drm_drv_uses_atomic_modeset.exit.i.if.then.i_crit_edge, label %drm_drv_uses_atomic_modeset.exit.i.if.end.i_crit_edge

drm_drv_uses_atomic_modeset.exit.i.if.end.i_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

drm_drv_uses_atomic_modeset.exit.i.if.then.i_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %drm_drv_uses_atomic_modeset.exit.i.if.then.i_crit_edge, %lor.rhs.i.i.if.then.i_crit_edge
  %mode_config.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30
  tail call void @mutex_lock_nested(ptr noundef %mode_config.i, i32 noundef 0) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %drm_drv_uses_atomic_modeset.exit.i.if.end.i_crit_edge, %if.else.if.end.i_crit_edge
  call void @drm_modeset_acquire_init(ptr noundef nonnull %ctx.i, i32 noundef 0) #10
  %dep_map.i = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 5, i32 5
  %modesets.i = getelementptr inbounds %struct.drm_client_dev, ptr %client, i32 0, i32 6
  %dpms_property.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 36
  %conv.i = sext i32 %mode to i64
  br label %modeset_lock_retry.i

modeset_lock_retry.i:                             ; preds = %if.then47.i.modeset_lock_retry.i_crit_edge, %if.end.i
  %call2.i = call i32 @drm_modeset_lock_all_ctx(ptr noundef %13, ptr noundef nonnull %ctx.i) #10
  %25 = zext i32 %call2.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %call2.i, label %modeset_lock_retry.i.if.end52.i_crit_edge [
    i32 0, label %do.body.i
    i32 -35, label %if.then47.i
  ]

modeset_lock_retry.i.if.end52.i_crit_edge:        ; preds = %modeset_lock_retry.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

do.body.i:                                        ; preds = %modeset_lock_retry.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %26 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool5.not.i = icmp eq i32 %26, 0
  br i1 %tobool5.not.i, label %do.body.i.if.end23.i_crit_edge, label %land.rhs.i15

do.body.i.if.end23.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

land.rhs.i15:                                     ; preds = %do.body.i
  %call.i.i = call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i15.if.end23.i_crit_edge, !prof !93

land.rhs.i15.if.end23.i_crit_edge:                ; preds = %land.rhs.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23.i

do.end.i:                                         ; preds = %land.rhs.i15
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 1190, i32 noundef 9, ptr noundef null) #10
  br label %if.end23.i

if.end23.i:                                       ; preds = %do.end.i, %land.rhs.i15.if.end23.i_crit_edge, %do.body.i.if.end23.i_crit_edge
  %27 = ptrtoint ptr %modesets.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %modesets.i, align 4
  %crtc94.i = getelementptr inbounds %struct.drm_mode_set, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %crtc94.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %crtc94.i, align 4
  %tobool32.not95.i = icmp eq ptr %30, null
  br i1 %tobool32.not95.i, label %if.end23.i.if.end52.i_crit_edge, label %if.end23.i.for.body.i_crit_edge

if.end23.i.for.body.i_crit_edge:                  ; preds = %if.end23.i
  br label %for.body.i

if.end23.i.if.end52.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

for.body.i:                                       ; preds = %for.inc43.i.for.body.i_crit_edge, %if.end23.i.for.body.i_crit_edge
  %31 = phi ptr [ %49, %for.inc43.i.for.body.i_crit_edge ], [ %30, %if.end23.i.for.body.i_crit_edge ]
  %modeset.096.i = phi ptr [ %incdec.ptr.i, %for.inc43.i.for.body.i_crit_edge ], [ %28, %if.end23.i.for.body.i_crit_edge ]
  %enabled.i = getelementptr inbounds %struct.drm_crtc, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %enabled.i, align 8, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool34.not.i = icmp eq i8 %33, 0
  br i1 %tobool34.not.i, label %for.body.i.for.inc43.i_crit_edge, label %for.cond37.preheader.i

for.body.i.for.inc43.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc43.i

for.cond37.preheader.i:                           ; preds = %for.body.i
  %num_connectors.i = getelementptr inbounds %struct.drm_mode_set, ptr %modeset.096.i, i32 0, i32 6
  %34 = ptrtoint ptr %num_connectors.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_connectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp3892.not.i = icmp eq i32 %35, 0
  br i1 %cmp3892.not.i, label %for.cond37.preheader.i.for.inc43.i_crit_edge, label %for.body39.lr.ph.i

for.cond37.preheader.i.for.inc43.i_crit_edge:     ; preds = %for.cond37.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc43.i

for.body39.lr.ph.i:                               ; preds = %for.cond37.preheader.i
  %connectors.i = getelementptr inbounds %struct.drm_mode_set, ptr %modeset.096.i, i32 0, i32 5
  br label %for.body39.i

for.body39.i:                                     ; preds = %for.body39.i.for.body39.i_crit_edge, %for.body39.lr.ph.i
  %j.093.i = phi i32 [ 0, %for.body39.lr.ph.i ], [ %inc.i, %for.body39.i.for.body39.i_crit_edge ]
  %36 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %connectors.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %37, i32 %j.093.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %funcs.i16 = getelementptr inbounds %struct.drm_connector, ptr %39, i32 0, i32 21
  %40 = ptrtoint ptr %funcs.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %funcs.i16, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %call40.i = call i32 %43(ptr noundef %39, i32 noundef %mode) #10
  %base.i = getelementptr inbounds %struct.drm_connector, ptr %39, i32 0, i32 6
  %44 = ptrtoint ptr %dpms_property.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dpms_property.i, align 4
  %call42.i = call i32 @drm_object_property_set_value(ptr noundef %base.i, ptr noundef %45, i64 noundef %conv.i) #10
  %inc.i = add nuw i32 %j.093.i, 1
  %46 = ptrtoint ptr %num_connectors.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_connectors.i, align 4
  %cmp38.i = icmp ult i32 %inc.i, %47
  br i1 %cmp38.i, label %for.body39.i.for.body39.i_crit_edge, label %for.body39.i.for.inc43.i_crit_edge

for.body39.i.for.inc43.i_crit_edge:               ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc43.i

for.body39.i.for.body39.i_crit_edge:              ; preds = %for.body39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body39.i

for.inc43.i:                                      ; preds = %for.body39.i.for.inc43.i_crit_edge, %for.cond37.preheader.i.for.inc43.i_crit_edge, %for.body.i.for.inc43.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.drm_mode_set, ptr %modeset.096.i, i32 1
  %crtc.i = getelementptr %struct.drm_mode_set, ptr %modeset.096.i, i32 1, i32 1
  %48 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %crtc.i, align 4
  %tobool32.not.i = icmp eq ptr %49, null
  br i1 %tobool32.not.i, label %for.inc43.i.if.end52.i_crit_edge, label %for.inc43.i.for.body.i_crit_edge

for.inc43.i.for.body.i_crit_edge:                 ; preds = %for.inc43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc43.i.if.end52.i_crit_edge:                 ; preds = %for.inc43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

if.then47.i:                                      ; preds = %modeset_lock_retry.i
  %call48.i = call i32 @drm_modeset_backoff(ptr noundef nonnull %ctx.i) #10
  %tobool49.not.i = icmp eq i32 %call48.i, 0
  br i1 %tobool49.not.i, label %if.then47.i.modeset_lock_retry.i_crit_edge, label %if.then47.i.if.end52.i_crit_edge

if.then47.i.if.end52.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

if.then47.i.modeset_lock_retry.i_crit_edge:       ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %modeset_lock_retry.i

if.end52.i:                                       ; preds = %if.then47.i.if.end52.i_crit_edge, %for.inc43.i.if.end52.i_crit_edge, %if.end23.i.if.end52.i_crit_edge, %modeset_lock_retry.i.if.end52.i_crit_edge
  call void @drm_modeset_drop_locks(ptr noundef nonnull %ctx.i) #10
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %ctx.i) #10
  %50 = ptrtoint ptr %driver.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver.i.i.i.i, align 4
  %driver_features.i.i.i78.i = getelementptr inbounds %struct.drm_driver, ptr %51, i32 0, i32 24
  %52 = ptrtoint ptr %driver_features.i.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %driver_features.i.i.i78.i, align 4
  %54 = ptrtoint ptr %driver_features1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %driver_features1.i.i.i.i, align 4
  %and.i.i.i80.i = and i32 %53, 16
  %and2.i.i.i81.i = and i32 %and.i.i.i80.i, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i81.i)
  %cmp.i.i.not.i82.i = icmp eq i32 %and2.i.i.i81.i, 0
  br i1 %cmp.i.i.not.i82.i, label %lor.rhs.i85.i, label %if.end52.i.drm_client_modeset_dpms_legacy.exit_crit_edge

if.end52.i.drm_client_modeset_dpms_legacy.exit_crit_edge: ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_client_modeset_dpms_legacy.exit

lor.rhs.i85.i:                                    ; preds = %if.end52.i
  %funcs.i83.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 27
  %56 = ptrtoint ptr %funcs.i83.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %funcs.i83.i, align 4
  %tobool.not.i84.i = icmp eq ptr %57, null
  br i1 %tobool.not.i84.i, label %lor.rhs.i85.i.if.then54.i_crit_edge, label %drm_drv_uses_atomic_modeset.exit89.i

lor.rhs.i85.i.if.then54.i_crit_edge:              ; preds = %lor.rhs.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i

drm_drv_uses_atomic_modeset.exit89.i:             ; preds = %lor.rhs.i85.i
  %atomic_commit.i86.i = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %atomic_commit.i86.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %atomic_commit.i86.i, align 4
  %cmp.i87.not.i = icmp eq ptr %59, null
  br i1 %cmp.i87.not.i, label %drm_drv_uses_atomic_modeset.exit89.i.if.then54.i_crit_edge, label %drm_drv_uses_atomic_modeset.exit89.i.drm_client_modeset_dpms_legacy.exit_crit_edge

drm_drv_uses_atomic_modeset.exit89.i.drm_client_modeset_dpms_legacy.exit_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %drm_client_modeset_dpms_legacy.exit

drm_drv_uses_atomic_modeset.exit89.i.if.then54.i_crit_edge: ; preds = %drm_drv_uses_atomic_modeset.exit89.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then54.i

if.then54.i:                                      ; preds = %drm_drv_uses_atomic_modeset.exit89.i.if.then54.i_crit_edge, %lor.rhs.i85.i.if.then54.i_crit_edge
  %mode_config55.i = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30
  call void @mutex_unlock(ptr noundef %mode_config55.i) #10
  br label %drm_client_modeset_dpms_legacy.exit

drm_client_modeset_dpms_legacy.exit:              ; preds = %if.then54.i, %drm_drv_uses_atomic_modeset.exit89.i.drm_client_modeset_dpms_legacy.exit_crit_edge, %if.end52.i.drm_client_modeset_dpms_legacy.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %ctx.i) #10
  br label %if.end5

if.end5:                                          ; preds = %drm_client_modeset_dpms_legacy.exit, %if.then3
  %ret.0 = phi i32 [ %call4, %if.then3 ], [ 0, %drm_client_modeset_dpms_legacy.exit ]
  call void @mutex_unlock(ptr noundef %modeset_mutex) #10
  call void @drm_master_internal_release(ptr noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end5 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock_all_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @drm_connector_pick_cmdline_mode(ptr noundef %connector) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdline_mode1 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 36
  %specified = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 36, i32 1
  %0 = ptrtoint ptr %specified to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %specified, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rb = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 36, i32 8
  %2 = ptrtoint ptr %rb to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rb, align 4, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.create_mode_crit_edge

if.end.create_mode_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %create_mode

lor.lhs.false:                                    ; preds = %if.end
  %margins = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 36, i32 11
  %4 = ptrtoint ptr %margins to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %margins, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end8, label %lor.lhs.false.create_mode_crit_edge

lor.lhs.false.create_mode_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %create_mode

if.end8:                                          ; preds = %lor.lhs.false
  %interlace = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 36, i32 9
  %6 = ptrtoint ptr %interlace to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %interlace, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %extract.t = icmp ne i8 %7, 1
  %modes = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 17
  %xres = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 36, i32 4
  %yres = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 36, i32 5
  %refresh_specified = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 36, i32 2
  %refresh = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 36, i32 7
  br label %again

again:                                            ; preds = %for.end.again_crit_edge, %if.end8
  %prefer_non_interlace.0.off0 = phi i1 [ %extract.t, %if.end8 ], [ false, %for.end.again_crit_edge ]
  %8 = ptrtoint ptr %modes to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn95 = load ptr, ptr %modes, align 4
  %cmp11.not97 = icmp eq ptr %.pn95, %modes
  br i1 %cmp11.not97, label %again.for.end_crit_edge, label %again.for.body_crit_edge

again.for.body_crit_edge:                         ; preds = %again
  br label %for.body

again.for.end_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %again.for.body_crit_edge
  %.pn98 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn95, %again.for.body_crit_edge ]
  %mode.099 = getelementptr i8, ptr %.pn98, i32 -64
  %name = getelementptr i8, ptr %.pn98, i32 8
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef %cmdline_mode1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %for.body.cleanup_crit_edge, label %if.end18

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %for.body
  %hdisplay = getelementptr i8, ptr %.pn98, i32 -60
  %9 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hdisplay, align 4
  %conv19 = zext i16 %10 to i32
  %11 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv19)
  %cmp20.not = icmp eq i32 %12, %conv19
  br i1 %cmp20.not, label %lor.lhs.false22, label %if.end18.for.inc_crit_edge

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false22:                                  ; preds = %if.end18
  %vdisplay = getelementptr i8, ptr %.pn98, i32 -50
  %13 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdisplay, align 2
  %conv23 = zext i16 %14 to i32
  %15 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv23)
  %cmp24.not = icmp eq i32 %16, %conv23
  br i1 %cmp24.not, label %if.end27, label %lor.lhs.false22.for.inc_crit_edge

lor.lhs.false22.for.inc_crit_edge:                ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end27:                                         ; preds = %lor.lhs.false22
  %17 = ptrtoint ptr %refresh_specified to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %refresh_specified, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool28.not = icmp eq i8 %18, 0
  br i1 %tobool28.not, label %if.end27.if.end35_crit_edge, label %if.then29

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then29:                                        ; preds = %if.end27
  %call30 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode.099) #10
  %19 = ptrtoint ptr %refresh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %refresh, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call30, i32 %20)
  %cmp31.not = icmp eq i32 %call30, %20
  br i1 %cmp31.not, label %if.then29.if.end35_crit_edge, label %if.then29.for.inc_crit_edge

if.then29.for.inc_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end35:                                         ; preds = %if.then29.if.end35_crit_edge, %if.end27.if.end35_crit_edge
  %21 = ptrtoint ptr %interlace to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %interlace, align 1, !range !95
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool37.not = icmp eq i8 %22, 0
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end35
  %flags = getelementptr i8, ptr %.pn98, i32 -40
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 4
  %and = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool39.not = icmp eq i32 %and, 0
  br i1 %tobool39.not, label %if.then38.for.inc_crit_edge, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then38.for.inc_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else:                                          ; preds = %if.end35
  br i1 %prefer_non_interlace.0.off0, label %if.then43, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then43:                                        ; preds = %if.else
  %flags44 = getelementptr i8, ptr %.pn98, i32 -40
  %25 = ptrtoint ptr %flags44 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags44, align 4
  %and45 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %if.then43.cleanup_crit_edge, label %if.then43.for.inc_crit_edge

if.then43.for.inc_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %if.then43.for.inc_crit_edge, %if.then38.for.inc_crit_edge, %if.then29.for.inc_crit_edge, %lor.lhs.false22.for.inc_crit_edge, %if.end18.for.inc_crit_edge
  %27 = ptrtoint ptr %.pn98 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn98, align 4
  %cmp11.not = icmp eq ptr %.pn, %modes
  br i1 %cmp11.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %again.for.end_crit_edge
  br i1 %prefer_non_interlace.0.off0, label %for.end.again_crit_edge, label %for.end.create_mode_crit_edge

for.end.create_mode_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %create_mode

for.end.again_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %again

create_mode:                                      ; preds = %for.end.create_mode_crit_edge, %lor.lhs.false.create_mode_crit_edge, %if.end.create_mode_crit_edge
  %28 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %connector, align 8
  %call59 = tail call ptr @drm_mode_create_from_cmdline_mode(ptr noundef %29, ptr noundef %cmdline_mode1) #10
  %tobool60.not = icmp eq ptr %call59, null
  br i1 %tobool60.not, label %create_mode.cleanup_crit_edge, label %if.then61

create_mode.cleanup_crit_edge:                    ; preds = %create_mode
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then61:                                        ; preds = %create_mode
  %head62 = getelementptr inbounds %struct.drm_display_mode, ptr %call59, i32 0, i32 30
  %modes63 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 17
  %30 = ptrtoint ptr %modes63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %modes63, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %head62, ptr noundef %modes63, ptr noundef %31) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.then61.cleanup_crit_edge

if.then61.cleanup_crit_edge:                      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %head62, ptr %prev1.i.i, align 4
  %33 = ptrtoint ptr %head62 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %31, ptr %head62, align 4
  %prev3.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %call59, i32 0, i32 30, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %modes63, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %modes63 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %head62, ptr %modes63, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.then61.cleanup_crit_edge, %create_mode.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %create_mode.cleanup_crit_edge ], [ %call59, %if.then61.cleanup_crit_edge ], [ %call59, %if.end.i.i ], [ %mode.099, %for.body.cleanup_crit_edge ], [ %mode.099, %if.else.cleanup_crit_edge ], [ %mode.099, %if.then43.cleanup_crit_edge ], [ %mode.099, %if.then38.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create_from_cmdline_mode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_match(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_find_dmt(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_state_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drm_atomic_helper_set_config(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_check_only(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_state_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_force_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_plane_set_obj_prop(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_set_config_internal(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_object_property_set_value(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(1) }
attributes #15 = { cold nounwind }
attributes #16 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !77, !79, !80, !82}
!llvm.module.flags = !{!84, !85, !86, !87, !88, !89, !90, !91}
!llvm.ident = !{!92}

!0 = !{ptr @drm_client_modeset_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 47, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 97, i32 2}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 778, i32 2}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 809, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 820, i32 3}
!11 = distinct !{null, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 833, i32 4}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 835, i32 3}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 854, i32 4}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 857, i32 8}
!19 = !{ptr @__ksymtab_drm_client_modeset_probe, !20, !"__ksymtab_drm_client_modeset_probe", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 884, i32 1}
!21 = !{ptr @__ksymtab_drm_client_rotation, !22, !"__ksymtab_drm_client_rotation", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 971, i32 1}
!23 = !{ptr @__ksymtab_drm_client_modeset_check, !24, !"__ksymtab_drm_client_modeset_check", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 1126, i32 1}
!25 = !{ptr @__ksymtab_drm_client_modeset_commit_locked, !26, !"__ksymtab_drm_client_modeset_commit_locked", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 1153, i32 1}
!27 = !{ptr @__ksymtab_drm_client_modeset_commit, !28, !"__ksymtab_drm_client_modeset_commit", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 1178, i32 1}
!29 = !{ptr @__ksymtab_drm_client_modeset_dpms, !30, !"__ksymtab_drm_client_modeset_dpms", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 1233, i32 1}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 243, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 620, i32 4}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 627, i32 4}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 638, i32 4}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 656, i32 5}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 661, i32 3}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 669, i32 4}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 676, i32 4}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 696, i32 4}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 706, i32 4}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 712, i32 3}
!56 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 733, i32 3}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 734, i32 3}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 741, i32 3}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 304, i32 3}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 329, i32 3}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 332, i32 2}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @drm_client_target_cloned._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @drm_client_target_cloned._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 422, i32 3}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 428, i32 4}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 459, i32 3}
!79 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 353, i32 4}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/drm_client_modeset.c", i32 365, i32 2}
!84 = !{i32 1, !"wchar_size", i32 2}
!85 = !{i32 1, !"min_enum_size", i32 4}
!86 = !{i32 8, !"branch-target-enforcement", i32 0}
!87 = !{i32 8, !"sign-return-address", i32 0}
!88 = !{i32 8, !"sign-return-address-all", i32 0}
!89 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!90 = !{i32 7, !"uwtable", i32 1}
!91 = !{i32 7, !"frame-pointer", i32 2}
!92 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{!"auto-init"}
!95 = !{i8 0, i8 2}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{i32 0, i32 33}
!98 = !{i64 2148685645}
!99 = !{i64 2148600085, i64 2148600117, i64 2148600146, i64 2148600180, i64 2148600211, i64 2148600234}
!100 = !{i64 2149883418}
