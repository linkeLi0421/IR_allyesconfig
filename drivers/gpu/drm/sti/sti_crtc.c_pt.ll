; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sti/sti_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sti_compositor = type { ptr, ptr, %struct.sti_compositor_data, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [1 x ptr], [2 x ptr], [2 x %struct.notifier_block] }
%struct.sti_compositor_data = type { i32, [9 x %struct.sti_compositor_subdev_descriptor] }
%struct.sti_compositor_subdev_descriptor = type { i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sti_mixer = type { ptr, ptr, i32, %struct.drm_crtc, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
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
%struct.anon.86 = type { i32, ptr }
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
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown event: %lu\0A\00", [44 x i8] zeroinitializer }, align 32
@sti_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @sti_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr @sti_crtc_set_property, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr @sti_crtc_late_register, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sti_crtc_enable_vblank, ptr @sti_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Can't initialize CRTC\0A\00", [41 x i8] zeroinitializer }, align 32
@sti_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sti_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sti_crtc_atomic_flush, ptr @sti_crtc_atomic_enable, ptr @sti_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drm CRTC:%d mapped to %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CRTC:%d (%s)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot register VTG notifier\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Warning: cannot unregister VTG notifier\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CRTC:%d (%s) mode: (%s)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@sti_crtc_mode_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016[drm] Failed to prepare/enable compositor clk\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sti_crtc_mode_set\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/sti/sti_crtc.c\00", [33 x i8] zeroinitializer }, align 32
@sti_crtc_mode_set._entry_ptr = internal global ptr @sti_crtc_mode_set._entry, section ".printk_index", align 4
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot set rate (%dHz) for pix clk\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to prepare/enable pix clk\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't set active video area\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"update plane %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot set plane %s depth\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Cannot enable plane %s at mixer\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"disable plane %s from mixer\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Cannot disable plane %s at mixer\0A\00", [62 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 257, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"sti_crtc_funcs\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 327, i32 36 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 359, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"sti_crtc_helper_funcs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 222, i32 43 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 365, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 110, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 231, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 294, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 313, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 58, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 61, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 73, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 79, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 83, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 90, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 158, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 162, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 168, i32 5 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 182, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [34 x i8] c"../drivers/gpu/drm/sti/sti_crtc.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 186, i32 5 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @sti_crtc_mode_set._entry, ptr @sti_crtc_mode_set._entry_ptr, ptr @.str, ptr @sti_crtc_funcs, ptr @.str.1, ptr @sti_crtc_helper_funcs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_crtc_mode_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sti_crtc_vblank_cb(ptr nocapture noundef readonly %nb, i32 noundef %event, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %event.off = add i32 %event, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event.off)
  %switch = icmp ult i32 %event.off, 2
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, i32 noundef %event) #4
  br label %cleanup32

if.end:                                           ; preds = %entry
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  %.neg = mul i32 %1, -12
  %idx.neg = add i32 %.neg, -164
  %add.ptr = getelementptr i8, ptr %nb, i32 %idx.neg
  %mixer1 = getelementptr inbounds %struct.sti_compositor, ptr %add.ptr, i32 0, i32 9
  %arrayidx = getelementptr [2 x ptr], ptr %mixer1, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %data) #4
  %status = getelementptr inbounds %struct.sti_mixer, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp4 = icmp eq i32 %5, 1
  br i1 %cmp4, label %if.then5, label %if.end.cleanup32_crit_edge

if.end.cleanup32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup32

if.then5:                                         ; preds = %if.end
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 18
  %8 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn48 = load ptr, ptr %plane_list, align 4
  %cmp12.not49 = icmp eq ptr %.pn48, %plane_list
  br i1 %cmp12.not49, label %if.then5.for.end_crit_edge, label %if.then5.for.body_crit_edge

if.then5.for.body_crit_edge:                      ; preds = %if.then5
  br label %for.body

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %if.then5.for.body_crit_edge
  %.pn50 = phi ptr [ %.pn, %for.inc.critedge.for.body_crit_edge ], [ %.pn48, %if.then5.for.body_crit_edge ]
  %desc = getelementptr i8, ptr %.pn50, i32 524
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %desc, align 8
  %and = and i32 %10, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 513, i32 %and)
  %cmp16 = icmp ult i32 %and, 513
  br i1 %cmp16, label %if.then17, label %for.body.for.inc.critedge_crit_edge

for.body.for.inc.critedge_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.critedge

if.then17:                                        ; preds = %for.body
  %status18 = getelementptr i8, ptr %.pn50, i32 528
  %11 = ptrtoint ptr %status18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %status18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp19.not = icmp eq i32 %12, 4
  br i1 %cmp19.not, label %if.then17.for.inc.critedge_crit_edge, label %if.then17.cleanup32_crit_edge

if.then17.cleanup32_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup32

if.then17.for.inc.critedge_crit_edge:             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.critedge

for.inc.critedge:                                 ; preds = %if.then17.for.inc.critedge_crit_edge, %for.body.for.inc.critedge_crit_edge
  %13 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn50, align 4
  %cmp12.not = icmp eq ptr %.pn, %plane_list
  br i1 %cmp12.not, label %for.inc.critedge.for.end_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.critedge.for.end_crit_edge:               ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.critedge.for.end_crit_edge, %if.then5.for.end_crit_edge
  %add.ptr.i = getelementptr i8, ptr %data, i32 -16
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i, align 4
  %base.i = getelementptr inbounds %struct.drm_crtc, ptr %data, i32 0, i32 5
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base.i, align 8
  %call2.i = tail call ptr @sti_mixer_to_str(ptr noundef %add.ptr.i) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.3, i32 noundef %19, ptr noundef %call2.i) #4
  tail call void @sti_mixer_set_background_status(ptr noundef %add.ptr.i, i1 noundef zeroext false) #4
  tail call void @drm_crtc_vblank_off(ptr noundef %data) #4
  %id3.i = getelementptr i8, ptr %data, i32 -8
  %20 = ptrtoint ptr %id3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %clk_pix_main.i = getelementptr inbounds %struct.sti_compositor, ptr %17, i32 0, i32 5
  %22 = ptrtoint ptr %clk_pix_main.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_pix_main.i, align 4
  tail call void @clk_disable(ptr noundef %23) #4
  tail call void @clk_unprepare(ptr noundef %23) #4
  %clk_compo_main.i = getelementptr inbounds %struct.sti_compositor, ptr %17, i32 0, i32 3
  br label %sti_crtc_disable.exit

if.else.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %clk_pix_aux.i = getelementptr inbounds %struct.sti_compositor, ptr %17, i32 0, i32 6
  %24 = ptrtoint ptr %clk_pix_aux.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_pix_aux.i, align 4
  tail call void @clk_disable(ptr noundef %25) #4
  tail call void @clk_unprepare(ptr noundef %25) #4
  %clk_compo_aux.i = getelementptr inbounds %struct.sti_compositor, ptr %17, i32 0, i32 4
  br label %sti_crtc_disable.exit

sti_crtc_disable.exit:                            ; preds = %if.else.i, %if.then.i
  %clk_compo_aux.sink.i = phi ptr [ %clk_compo_aux.i, %if.else.i ], [ %clk_compo_main.i, %if.then.i ]
  %26 = ptrtoint ptr %clk_compo_aux.sink.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_compo_aux.sink.i, align 4
  tail call void @clk_disable(ptr noundef %27) #4
  tail call void @clk_unprepare(ptr noundef %27) #4
  %status.i = getelementptr i8, ptr %data, i32 992
  %28 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %status.i, align 8
  br label %cleanup32

cleanup32:                                        ; preds = %sti_crtc_disable.exit, %if.then17.cleanup32_crit_edge, %if.end.cleanup32_crit_edge, %if.then
  %retval.3 = phi i32 [ -22, %if.then ], [ 0, %sti_crtc_disable.exit ], [ 0, %if.end.cleanup32_crit_edge ], [ 0, %if.then17.cleanup32_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @sti_crtc_is_main(ptr nocapture noundef readonly %crtc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr i8, ptr %crtc, i32 -8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sti_crtc_init(ptr noundef %drm_dev, ptr noundef %mixer, ptr noundef %primary, ptr noundef %cursor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %drm_crtc = getelementptr inbounds %struct.sti_mixer, ptr %mixer, i32 0, i32 3
  %call = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %drm_dev, ptr noundef %drm_crtc, ptr noundef %primary, ptr noundef %cursor, ptr noundef nonnull @sti_crtc_funcs, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %helper_private.i = getelementptr inbounds %struct.sti_mixer, ptr %mixer, i32 0, i32 3, i32 19
  %0 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @sti_crtc_helper_funcs, ptr %helper_private.i, align 8
  %base = getelementptr inbounds %struct.sti_mixer, ptr %mixer, i32 0, i32 3, i32 5
  %1 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %base, align 8
  %call1 = tail call ptr @sti_mixer_to_str(ptr noundef %mixer) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef %2, ptr noundef %call1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_mixer_to_str(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_mixer_set_background_status(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_crtc_destroy(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4) #4
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_crtc_set_property(ptr nocapture noundef readnone %crtc, ptr nocapture noundef readnone %property, i64 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_crtc_late_register(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %0 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %crtc, i32 -16
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 8
  %primary = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %primary, align 4
  tail call void @sti_compositor_debugfs_init(ptr noundef %5, ptr noundef %9) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_crtc_enable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %arrayidx = getelementptr %struct.sti_compositor, ptr %7, i32 0, i32 12, i32 %3
  %arrayidx5 = getelementptr %struct.sti_compositor, ptr %7, i32 0, i32 11, i32 %3
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4) #4
  %call = tail call i32 @sti_vtg_register_client(ptr noundef %9, ptr noundef %arrayidx, ptr noundef %crtc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_crtc_disable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %index = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %arrayidx = getelementptr %struct.sti_compositor, ptr %7, i32 0, i32 12, i32 %3
  %arrayidx4 = getelementptr %struct.sti_compositor, ptr %7, i32 0, i32 11, i32 %3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4) #4
  %call = tail call i32 @sti_vtg_unregister_client(ptr noundef %9, ptr noundef %arrayidx) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_compositor_debugfs_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_register_client(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_unregister_client(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_crtc_mode_set_nofb(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  %add.ptr.i = getelementptr i8, ptr %crtc, i32 -16
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %adjusted_mode, align 4
  %mul.i = mul i32 %7, 1000
  %base.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i, align 8
  %call2.i = tail call ptr @sti_mixer_to_str(ptr noundef %add.ptr.i) #4
  %name.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 31
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %9, ptr noundef %call2.i, ptr noundef %name.i) #4
  %call5.i = tail call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode) #4
  %10 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %adjusted_mode, align 4
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hdisplay.i, align 4
  %conv.i = zext i16 %13 to i32
  %hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 2
  %14 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hsync_start.i, align 2
  %conv7.i = zext i16 %15 to i32
  %hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 3
  %16 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hsync_end.i, align 4
  %conv8.i = zext i16 %17 to i32
  %htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 4
  %18 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %htotal.i, align 2
  %conv9.i = zext i16 %19 to i32
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 6
  %20 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vdisplay.i, align 2
  %conv10.i = zext i16 %21 to i32
  %vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 7
  %22 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vsync_start.i, align 4
  %conv11.i = zext i16 %23 to i32
  %vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 8
  %24 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vsync_end.i, align 2
  %conv12.i = zext i16 %25 to i32
  %vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 9
  %26 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vtotal.i, align 4
  %conv13.i = zext i16 %27 to i32
  %type.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 28
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %type.i, align 2
  %conv14.i = zext i8 %29 to i32
  %flags.i = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 11
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.8, ptr noundef %name.i, i32 noundef %call5.i, i32 noundef %11, i32 noundef %conv.i, i32 noundef %conv7.i, i32 noundef %conv8.i, i32 noundef %conv9.i, i32 noundef %conv10.i, i32 noundef %conv11.i, i32 noundef %conv12.i, i32 noundef %conv13.i, i32 noundef %conv14.i, i32 noundef %31) #4
  %id15.i = getelementptr i8, ptr %crtc, i32 -8
  %32 = ptrtoint ptr %id15.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i = icmp eq i32 %33, 0
  %clk_compo_main.i = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 3
  %clk_pix_main.i = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 5
  %clk_compo_aux.i = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 4
  %clk_pix_aux.i = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 6
  %compo_clk.0.in.i = select i1 %cmp.i, ptr %clk_compo_main.i, ptr %clk_compo_aux.i
  %pix_clk.0.in.i = select i1 %cmp.i, ptr %clk_pix_main.i, ptr %clk_pix_aux.i
  %34 = ptrtoint ptr %pix_clk.0.in.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %pix_clk.0.i = load ptr, ptr %pix_clk.0.in.i, align 4
  %35 = ptrtoint ptr %compo_clk.0.in.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %compo_clk.0.i = load ptr, ptr %compo_clk.0.in.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %compo_clk.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %compo_clk.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end21.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %compo_clk.0.i) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then3.i.i, %entry.do.end.i_crit_edge
  %call20.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #7
  br label %sti_crtc_mode_set.exit

if.end21.i:                                       ; preds = %if.end.i.i
  %call22.i = tail call i32 @clk_set_rate(ptr noundef %pix_clk.0.i, i32 noundef %mul.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.then25.i, label %if.end26.i

if.then25.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.12, i32 noundef %mul.i) #4
  br label %pix_error.i

if.end26.i:                                       ; preds = %if.end21.i
  %call.i1.i = tail call i32 @clk_prepare(ptr noundef %pix_clk.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i)
  %tobool.not.i2.i = icmp eq i32 %call.i1.i, 0
  br i1 %tobool.not.i2.i, label %if.end.i5.i, label %if.end26.i.if.then29.i_crit_edge

if.end26.i.if.then29.i_crit_edge:                 ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then29.i

if.end.i5.i:                                      ; preds = %if.end26.i
  %call1.i3.i = tail call i32 @clk_enable(ptr noundef %pix_clk.0.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool2.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool2.not.i4.i, label %if.end30.i, label %if.then3.i6.i

if.then3.i6.i:                                    ; preds = %if.end.i5.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %pix_clk.0.i) #4
  br label %if.then29.i

if.then29.i:                                      ; preds = %if.then3.i6.i, %if.end26.i.if.then29.i_crit_edge
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #4
  br label %pix_error.i

if.end30.i:                                       ; preds = %if.end.i5.i
  %36 = ptrtoint ptr %id15.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id15.i, align 8
  %arrayidx.i = getelementptr %struct.sti_compositor, ptr %5, i32 0, i32 11, i32 %37
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i, align 4
  %mode32.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12
  tail call void @sti_vtg_set_config(ptr noundef %39, ptr noundef %mode32.i) #4
  %call34.i = tail call i32 @sti_mixer_active_video_area(ptr noundef %add.ptr.i, ptr noundef %mode32.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end30.i.sti_crtc_mode_set.exit_crit_edge, label %if.then36.i

if.end30.i.sti_crtc_mode_set.exit_crit_edge:      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sti_crtc_mode_set.exit

if.then36.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #4
  tail call void @clk_disable(ptr noundef %pix_clk.0.i) #4
  tail call void @clk_unprepare(ptr noundef %pix_clk.0.i) #4
  br label %pix_error.i

pix_error.i:                                      ; preds = %if.then36.i, %if.then29.i, %if.then25.i
  tail call void @clk_disable(ptr noundef %compo_clk.0.i) #4
  tail call void @clk_unprepare(ptr noundef %compo_clk.0.i) #4
  br label %sti_crtc_mode_set.exit

sti_crtc_mode_set.exit:                           ; preds = %pix_error.i, %if.end30.i.sti_crtc_mode_set.exit_crit_edge, %do.end.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %add.ptr = getelementptr i8, ptr %crtc, i32 -16
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4) #4
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 18
  %6 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn109 = load ptr, ptr %plane_list, align 4
  %cmp.not111 = icmp eq ptr %.pn109, %plane_list
  br i1 %cmp.not111, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vid44 = getelementptr inbounds %struct.sti_compositor, ptr %5, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn112 = phi ptr [ %.pn109, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %p.0113 = getelementptr i8, ptr %.pn112, i32 -4
  %status = getelementptr i8, ptr %.pn112, i32 528
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %for.body.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb28
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  %state10 = getelementptr i8, ptr %.pn112, i32 488
  %10 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state10, align 4
  %crtc11 = getelementptr inbounds %struct.drm_plane_state, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %crtc11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtc11, align 4
  %cmp12.not = icmp eq ptr %13, %crtc
  br i1 %cmp12.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %call13 = tail call ptr @sti_plane_to_str(ptr noundef %p.0113) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15, ptr noundef %call13) #4
  %call14 = tail call i32 @sti_mixer_set_plane_depth(ptr noundef %add.ptr, ptr noundef %p.0113) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end17, label %if.then15

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call16 = tail call ptr @sti_plane_to_str(ptr noundef %p.0113) #4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, ptr noundef %call16) #4
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %call18 = tail call i32 @sti_mixer_set_plane_status(ptr noundef %add.ptr, ptr noundef %p.0113, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end22, label %if.then20

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %call21 = tail call ptr @sti_plane_to_str(ptr noundef %p.0113) #4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, ptr noundef %call21) #4
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %desc = getelementptr i8, ptr %.pn112, i32 524
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %desc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %15)
  %cmp23 = icmp eq i32 %15, 512
  br i1 %cmp23, label %if.then24, label %if.end22.if.end26_crit_edge

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %vid44 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vid44, align 4
  %18 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state10, align 4
  tail call void @sti_vid_commit(ptr noundef %17, ptr noundef %19) #4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22.if.end26_crit_edge
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %status, align 4
  br label %cleanup

sw.bb28:                                          ; preds = %for.body
  %call29 = tail call ptr @sti_plane_to_str(ptr noundef %p.0113) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef %call29) #4
  %call30 = tail call i32 @sti_mixer_set_plane_status(ptr noundef %add.ptr, ptr noundef %p.0113, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end34, label %if.then32

if.then32:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #6
  %call33 = tail call ptr @sti_plane_to_str(ptr noundef %p.0113) #4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, ptr noundef %call33) #4
  br label %cleanup

if.end34:                                         ; preds = %sw.bb28
  %desc35 = getelementptr i8, ptr %.pn112, i32 524
  %21 = ptrtoint ptr %desc35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %desc35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %22)
  %cmp36 = icmp eq i32 %22, 768
  %. = select i1 %cmp36, i32 4, i32 3
  %23 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %., ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %22)
  %cmp42 = icmp eq i32 %22, 512
  br i1 %cmp42, label %if.then43, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then43:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %vid44 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vid44, align 4
  tail call void @sti_vid_disable(ptr noundef %25) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %if.end34.cleanup_crit_edge, %if.then32, %if.end26, %if.then20, %if.then15, %sw.bb.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %26 = ptrtoint ptr %.pn112 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn112, align 4
  %cmp.not = icmp eq ptr %.pn, %plane_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  %state52 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %27 = ptrtoint ptr %state52 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state52, align 4
  %event53 = getelementptr inbounds %struct.drm_crtc_state, ptr %28, i32 0, i32 18
  %29 = ptrtoint ptr %event53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %event53, align 4
  %tobool54.not = icmp eq ptr %30, null
  br i1 %tobool54.not, label %for.end.if.end74_crit_edge, label %if.then55

for.end.if.end74_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end74

if.then55:                                        ; preds = %for.end
  %31 = ptrtoint ptr %event53 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %event53, align 4
  %32 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 28
  %call63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #4
  %call66 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp eq i32 %call66, 0
  br i1 %cmp67, label %if.then69, label %if.else70

if.then69:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %crtc, ptr noundef nonnull %30) #4
  br label %if.end71

if.else70:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %30) #4
  br label %if.end71

if.end71:                                         ; preds = %if.else70, %if.then69
  %34 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %crtc, align 8
  %event_lock73 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock73, i32 noundef %call63) #4
  br label %if.end74

if.end74:                                         ; preds = %if.end71, %for.end.if.end74_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4) #4
  %status = getelementptr i8, ptr %crtc, i32 992
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %status, align 8
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4) #4
  %status = getelementptr i8, ptr %crtc, i32 992
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %status, align 8
  tail call void @drm_crtc_wait_one_vblank(ptr noundef %crtc) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_vtg_set_config(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_mixer_active_video_area(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_plane_to_str(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_mixer_set_plane_depth(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_mixer_set_plane_status(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_vid_commit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_vid_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_wait_one_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 257, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 359, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 365, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 110, i32 2}
!8 = !{ptr @sti_crtc_funcs, !9, !"sti_crtc_funcs", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 327, i32 36}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 231, i32 2}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 294, i32 3}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 313, i32 3}
!16 = !{ptr @sti_crtc_helper_funcs, !17, !"sti_crtc_helper_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 222, i32 43}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 58, i32 2}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 61, i32 2}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 73, i32 3}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sti_crtc_mode_set._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @sti_crtc_mode_set._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 79, i32 3}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 83, i32 3}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 90, i32 3}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 158, i32 4}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 162, i32 5}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 168, i32 5}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 182, i32 4}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/sti/sti_crtc.c", i32 186, i32 5}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
