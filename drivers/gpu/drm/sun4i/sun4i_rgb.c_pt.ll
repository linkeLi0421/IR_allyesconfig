; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun4i_rgb.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_rgb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sun4i_rgb_init\22, \22a\22\09"
module asm "\09.weak\09__crc_sun4i_rgb_init\09\09\09\09"
module asm "\09.long\09__crc_sun4i_rgb_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_rgb_init:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_rgb_init\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_rgb_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.anon.85 = type { i32, ptr }
%struct.sun4i_rgb = type { %struct.drm_connector, %struct.drm_encoder, ptr, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.sun4i_tcon = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, i32, %struct.list_head }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }

@sun4i_rgb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 204, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"No panel or bridge found... RGB output disabled\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sun4i_rgb_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/sun4i/sun4i_rgb.c\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_rgb_init._entry_ptr = internal global ptr @sun4i_rgb_init._entry, section ".printk_index", align 4
@sun4i_rgb_enc_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr @sun4i_rgb_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun4i_rgb_encoder_disable, ptr @sun4i_rgb_encoder_enable, ptr null }, [44 x i8] zeroinitializer }, align 32
@sun4i_rgb_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 213, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't initialise the rgb encoder\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sun4i_rgb_init._entry_ptr.8 = internal global ptr @sun4i_rgb_init._entry.5, section ".printk_index", align 4
@sun4i_rgb_con_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @sun4i_rgb_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sun4i_rgb_con_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @sun4i_rgb_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sun4i_rgb_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 227, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Couldn't initialise the rgb connector\0A\00", [57 x i8] zeroinitializer }, align 32
@sun4i_rgb_init._entry_ptr.11 = internal global ptr @sun4i_rgb_init._entry.9, section ".printk_index", align 4
@__kstrtab_sun4i_rgb_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_rgb_init = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_rgb_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_rgb_init to i32), ptr @__kstrtab_sun4i_rgb_init, ptr @__kstrtabns_sun4i_rgb_init }, section "___ksymtab+sun4i_rgb_init", align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Validating modes...\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Horizontal parameters OK\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Vertical parameters OK\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"RGB panel used, skipping clock rate checks\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Clock rate OK\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Disabling RGB output\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Enabling RGB output\0A\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 204, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"sun4i_rgb_enc_helper_funcs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 183, i32 46 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 213, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"sun4i_rgb_con_helper_funcs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 141, i32 48 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"sun4i_rgb_con_funcs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 151, i32 41 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 227, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 73, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 87, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 101, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 110, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 136, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 175, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [37 x i8] c"../drivers/gpu/drm/sun4i/sun4i_rgb.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 163, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__ksymtab_sun4i_rgb_init, ptr @sun4i_rgb_init._entry, ptr @sun4i_rgb_init._entry.5, ptr @sun4i_rgb_init._entry.9, ptr @sun4i_rgb_init._entry_ptr, ptr @sun4i_rgb_init._entry_ptr.11, ptr @sun4i_rgb_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @sun4i_rgb_enc_helper_funcs, ptr @.str.6, ptr @.str.7, ptr @sun4i_rgb_con_helper_funcs, ptr @sun4i_rgb_con_funcs, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_rgb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_rgb_enc_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_rgb_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_rgb_con_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_rgb_con_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_rgb_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_rgb_init(ptr noundef %drm, ptr noundef %tcon) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 1128, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %tcon1 = getelementptr inbounds %struct.sun4i_rgb, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %tcon1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tcon, ptr %tcon1, align 8
  %encoder2 = getelementptr inbounds %struct.sun4i_rgb, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tcon, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %panel = getelementptr inbounds %struct.sun4i_rgb, ptr %call.i, i32 0, i32 3
  %bridge = getelementptr inbounds %struct.sun4i_rgb, ptr %call.i, i32 0, i32 4
  %call4 = tail call i32 @drm_of_find_panel_or_bridge(ptr noundef %6, i32 noundef 1, i32 noundef 0, ptr noundef %panel, ptr noundef %bridge) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %helper_private.i = getelementptr inbounds %struct.sun4i_rgb, ptr %call.i, i32 0, i32 1, i32 11
  %9 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @sun4i_rgb_enc_helper_funcs, ptr %helper_private.i, align 4
  %call11 = tail call i32 @drm_simple_encoder_init(ptr noundef %drm, ptr noundef %encoder2, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  %crtc = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 13
  %12 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtc, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %15
  %possible_crtcs = getelementptr inbounds %struct.sun4i_rgb, ptr %call.i, i32 0, i32 1, i32 6
  %16 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl.i, ptr %possible_crtcs, align 4
  %17 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %panel, align 4
  %tobool23.not = icmp eq ptr %18, null
  br i1 %tobool23.not, label %if.end18.if.end37_crit_edge, label %if.then24

if.end18.if.end37_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end37

if.then24:                                        ; preds = %if.end18
  %helper_private.i76 = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 35
  %19 = ptrtoint ptr %helper_private.i76 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @sun4i_rgb_con_helper_funcs, ptr %helper_private.i76, align 4
  %call26 = tail call i32 @drm_connector_init(ptr noundef %drm, ptr noundef nonnull %call.i, ptr noundef nonnull @sun4i_rgb_con_funcs, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.10) #6
  br label %err_cleanup_connector

if.end33:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #5
  %call36 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %call.i, ptr noundef %encoder2) #3
  br label %if.end37

if.end37:                                         ; preds = %if.end33, %if.end18.if.end37_crit_edge
  %22 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bridge, align 8
  %tobool39.not = icmp eq ptr %23, null
  br i1 %tobool39.not, label %if.end37.cleanup_crit_edge, label %if.then40

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then40:                                        ; preds = %if.end37
  %call42 = tail call i32 @drm_bridge_attach(ptr noundef %encoder2, ptr noundef nonnull %23, ptr noundef null, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then40.cleanup_crit_edge, label %if.then40.err_cleanup_connector_crit_edge

if.then40.err_cleanup_connector_crit_edge:        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #5
  br label %err_cleanup_connector

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

err_cleanup_connector:                            ; preds = %if.then40.err_cleanup_connector_crit_edge, %do.end31
  %ret.0 = phi i32 [ %call26, %do.end31 ], [ %call42, %if.then40.err_cleanup_connector_crit_edge ]
  tail call void @drm_encoder_cleanup(ptr noundef %encoder2) #3
  br label %cleanup

cleanup:                                          ; preds = %err_cleanup_connector, %if.then40.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then40.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ %call11, %do.end16 ], [ %ret.0, %err_cleanup_connector ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_rgb_mode_valid(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tcon1 = getelementptr i8, ptr %crtc, i32 72
  %0 = ptrtoint ptr %tcon1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcon1, align 8
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %2 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hsync_end, align 4
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %4 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hsync_start, align 2
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %6 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vsync_end, align 2
  %conv3 = zext i16 %7 to i32
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %8 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vsync_start, align 4
  %conv4 = zext i16 %9 to i32
  %sub5 = sub nsw i32 %conv3, %conv4
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  %mul = mul i32 %11, 1000
  %conv6 = sext i32 %mul to i64
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12) #3
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %5)
  %cmp = icmp eq i16 %3, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv2 = zext i16 %5 to i32
  %conv = zext i16 %3 to i32
  %sub = sub nsw i32 %conv, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %sub)
  %cmp8 = icmp ugt i32 %sub, 1023
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %12 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hdisplay, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp13 = icmp eq i16 %13, 0
  br i1 %cmp13, label %if.end11.cleanup_crit_edge, label %lor.lhs.false

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end11
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %14 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %htotal, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp16 = icmp eq i16 %15, 0
  br i1 %cmp16, label %lor.lhs.false.cleanup_crit_edge, label %if.end19

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %13)
  %cmp22 = icmp ugt i16 %13, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %15)
  %cmp27 = icmp ugt i16 %15, 4095
  %or.cond = select i1 %cmp22, i1 true, i1 %cmp27
  br i1 %or.cond, label %if.end19.cleanup_crit_edge, label %if.end30

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end30:                                         ; preds = %if.end19
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13) #3
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp31 = icmp eq i16 %7, %9
  br i1 %cmp31, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %sub5)
  %cmp35 = icmp ugt i32 %sub5, 1023
  br i1 %cmp35, label %if.end34.cleanup_crit_edge, label %if.end38

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end38:                                         ; preds = %if.end34
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %16 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp40 = icmp eq i16 %17, 0
  br i1 %cmp40, label %if.end38.cleanup_crit_edge, label %lor.lhs.false42

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false42:                                  ; preds = %if.end38
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %18 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vtotal, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp44 = icmp eq i16 %19, 0
  br i1 %cmp44, label %lor.lhs.false42.cleanup_crit_edge, label %if.end47

lor.lhs.false42.cleanup_crit_edge:                ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_const_cmp2(i16 2047, i16 %17)
  %cmp50 = icmp ugt i16 %17, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %19)
  %cmp55 = icmp ugt i16 %19, 4095
  %or.cond674 = select i1 %cmp50, i1 true, i1 %cmp55
  br i1 %or.cond674, label %if.end47.cleanup_crit_edge, label %if.end58

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end58:                                         ; preds = %if.end47
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14) #3
  %panel = getelementptr i8, ptr %crtc, i32 76
  %20 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %if.end60, label %if.then59

if.then59:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15) #3
  br label %out

if.end60:                                         ; preds = %if.end58
  %bridge = getelementptr i8, ptr %crtc, i32 80
  %22 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bridge, align 8
  %tobool61.not = icmp eq ptr %23, null
  br i1 %tobool61.not, label %if.end60.out_crit_edge, label %if.end63

if.end60.out_crit_edge:                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end63:                                         ; preds = %if.end60
  %dclk_min_div = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %dclk_min_div to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 6, ptr %dclk_min_div, align 1
  %dclk_max_div = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %dclk_max_div to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 127, ptr %dclk_max_div, align 4
  %dclk = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dclk, align 4
  %call65 = tail call i32 @clk_round_rate(ptr noundef %27, i32 noundef %mul) #3
  %conv66 = sext i32 %call65 to i64
  %mul67 = mul nsw i64 %conv6, 995
  %28 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul67, i32 0) #7, !srcloc !48
  %asmresult.i = extractvalue { i64, i32 } %28, 0
  %asmresult4.i = extractvalue { i64, i32 } %28, 1
  %29 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul67, i64 %asmresult.i, i32 %asmresult4.i) #7, !srcloc !49
  %asmresult10.i = extractvalue { i64, i32 } %29, 0
  %div234672 = lshr i64 %asmresult10.i, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %div234672, i64 %conv66)
  %cmp256 = icmp ugt i64 %div234672, %conv66
  br i1 %cmp256, label %if.end63.cleanup_crit_edge, label %if.end259

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end259:                                        ; preds = %if.end63
  %mul260 = mul nsw i64 %conv6, 1005
  %30 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul260, i32 0) #7, !srcloc !48
  %asmresult.i675 = extractvalue { i64, i32 } %30, 0
  %asmresult4.i676 = extractvalue { i64, i32 } %30, 1
  %31 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul260, i64 %asmresult.i675, i32 %asmresult4.i676) #7, !srcloc !49
  %asmresult10.i677 = extractvalue { i64, i32 } %31, 0
  %div456673 = lshr i64 %asmresult10.i677, 9
  call void @__sanitizer_cov_trace_cmp8(i64 %div456673, i64 %conv66)
  %cmp482 = icmp ult i64 %div456673, %conv66
  br i1 %cmp482, label %if.end259.cleanup_crit_edge, label %if.end259.out_crit_edge

if.end259.out_crit_edge:                          ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end259.cleanup_crit_edge:                      ; preds = %if.end259
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

out:                                              ; preds = %if.end259.out_crit_edge, %if.end60.out_crit_edge, %if.then59
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16) #3
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end259.cleanup_crit_edge, %if.end63.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %lor.lhs.false42.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ 21, %entry.cleanup_crit_edge ], [ 22, %if.end.cleanup_crit_edge ], [ 3, %lor.lhs.false.cleanup_crit_edge ], [ 3, %if.end11.cleanup_crit_edge ], [ 18, %if.end19.cleanup_crit_edge ], [ 25, %if.end30.cleanup_crit_edge ], [ 26, %if.end34.cleanup_crit_edge ], [ 4, %lor.lhs.false42.cleanup_crit_edge ], [ 4, %if.end38.cleanup_crit_edge ], [ 19, %if.end47.cleanup_crit_edge ], [ 16, %if.end63.cleanup_crit_edge ], [ 15, %if.end259.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_rgb_encoder_disable(ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17) #3
  %panel = getelementptr i8, ptr %encoder, i32 76
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @drm_panel_disable(ptr noundef nonnull %1) #3
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call4 = tail call i32 @drm_panel_unprepare(ptr noundef %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_rgb_encoder_enable(ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18) #3
  %panel = getelementptr i8, ptr %encoder, i32 76
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call2 = tail call i32 @drm_panel_prepare(ptr noundef nonnull %1) #3
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call4 = tail call i32 @drm_panel_enable(ptr noundef %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_rgb_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %panel = getelementptr inbounds %struct.sun4i_rgb, ptr %connector, i32 0, i32 3
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %panel, align 4
  %call1 = tail call i32 @drm_panel_get_modes(ptr noundef %1, ptr noundef %connector) #3
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_rgb_connector_destroy(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_connector_cleanup(ptr noundef %connector) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }
attributes #7 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun4i_rgb.c", i32 204, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sun4i_rgb_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sun4i_rgb_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sun4i/sun4i_rgb.c", i32 213, i32 3}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sun4i_rgb_init._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @sun4i_rgb_init._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/sun4i/sun4i_rgb.c", i32 227, i32 4}
!15 = !{ptr @sun4i_rgb_init._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @sun4i_rgb_init._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_sun4i_rgb_init, !18, !"__ksymtab_sun4i_rgb_init", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/sun4i/sun4i_rgb.c", i32 248, i32 1}
!19 = !{ptr @sun4i_rgb_enc_helper_funcs, !20, !"sun4i_rgb_enc_helper_funcs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/sun4i/sun4i_rgb.c", i32 183, i32 46}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/sun4i/sun4i_rgb.c", i32 73, i32 2}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/sun4i/sun4i_rgb.c", i32 87, i32 2}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/sun4i/sun4i_rgb.c", i32 101, i32 2}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/sun4i/sun4i_rgb.c", i32 110, i32 3}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/sun4i/sun4i_rgb.c", i32 136, i32 2}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/sun4i/sun4i_rgb.c", i32 175, i32 2}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/sun4i/sun4i_rgb.c", i32 163, i32 2}
!35 = !{ptr @sun4i_rgb_con_helper_funcs, !36, !"sun4i_rgb_con_helper_funcs", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/sun4i/sun4i_rgb.c", i32 141, i32 48}
!37 = !{ptr @sun4i_rgb_con_funcs, !38, !"sun4i_rgb_con_funcs", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/sun4i/sun4i_rgb.c", i32 151, i32 41}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 1149373, i64 1149400, i64 1149422, i64 1149450}
!49 = !{i64 1149781, i64 1149808, i64 1149841, i64 1149862, i64 1149889, i64 1149915}
