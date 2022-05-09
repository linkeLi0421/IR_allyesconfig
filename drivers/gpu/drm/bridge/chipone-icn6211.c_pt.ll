; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/chipone-icn6211.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/chipone-icn6211.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.chipone = type { ptr, %struct.drm_bridge, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@__initcall__kmod_chipone_icn6211__307_289_chipone_driver_init6 = internal global ptr @chipone_driver_init, section ".initcall6.init", align 4
@chipone_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @chipone_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @chipone_probe, ptr @chipone_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_chipone_driver_exit = internal global ptr @chipone_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [63 x i8] c"chipone_icn6211.author=Jagan Teki <jagan@amarulasolutions.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [77 x i8] c"chipone_icn6211.description=Chipone ICN6211 MIPI-DSI to RGB Converter Bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [60 x i8] c"chipone_icn6211.file=drivers/gpu/drm/bridge/chipone-icn6211\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [28 x i8] c"chipone_icn6211.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"chipone-icn6211\00", [16 x i8] zeroinitializer }, align 32
@chipone_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"chipone,icn6211\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@chipone_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @chipone_attach, ptr null, ptr null, ptr null, ptr null, ptr @chipone_post_disable, ptr null, ptr @chipone_pre_enable, ptr @chipone_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@chipone_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to attach dsi\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chipone_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/bridge/chipone-icn6211.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@chipone_probe._entry_ptr = internal global ptr @chipone_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdd1\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get VDD1 regulator: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdd2\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get VDD2 regulator: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdd3\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get VDD3 regulator: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* failed to get enable GPIO\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* failed to enable VDD1 regulator: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* failed to enable VDD2 regulator: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* failed to enable VDD3 regulator: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"chipone_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 280, i32 31 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 284, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"chipone_of_match\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 274, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"chipone_bridge_funcs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 171, i32 38 }
@___asan_gen_.43 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 258, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 184, i32 47 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 190, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 193, i32 47 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 199, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 202, i32 47 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 208, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 211, i32 41 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 213, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 125, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 132, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [44 x i8] c"../drivers/gpu/drm/bridge/chipone-icn6211.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 139, i32 4 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_chipone_driver_exit, ptr @__initcall__kmod_chipone_icn6211__307_289_chipone_driver_init6, ptr @chipone_driver_exit, ptr @chipone_probe._entry, ptr @chipone_probe._entry_ptr, ptr @chipone_driver, ptr @.str, ptr @chipone_of_match, ptr @chipone_bridge_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chipone_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chipone_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chipone_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chipone_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @chipone_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @chipone_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @chipone_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @chipone_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chipone_probe(ptr noundef %dsi) #2 align 64 {
entry:
  %panel.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 304, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel.i) #5
  %2 = ptrtoint ptr %panel.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel.i, align 4, !annotation !57
  %call.i36 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.6) #5
  %vdd1.i = getelementptr inbounds %struct.chipone, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %vdd1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i36, ptr %vdd1.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.if.end8.i_crit_edge

if.end.if.end8.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8.i

if.then.i:                                        ; preds = %if.end
  %cmp.i = icmp eq ptr %call.i36, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i, label %if.then.i.chipone_parse_dt.exit.thread_crit_edge, label %if.end.i

if.then.i.chipone_parse_dt.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %chipone_parse_dt.exit.thread

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call.i36 to i32
  %5 = ptrtoint ptr %vdd1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %vdd1.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %4) #5
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i, %if.end.if.end8.i_crit_edge
  %call9.i = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.8) #5
  %vdd2.i = getelementptr inbounds %struct.chipone, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %vdd2.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call9.i, ptr %vdd2.i, align 4
  %cmp.i84.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84.i, label %if.then12.i, label %if.end8.i.if.end19.i_crit_edge

if.end8.i.if.end19.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19.i

if.then12.i:                                      ; preds = %if.end8.i
  %cmp15.i = icmp eq ptr %call9.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp15.i, label %if.then12.i.chipone_parse_dt.exit.thread_crit_edge, label %if.end17.i

if.then12.i.chipone_parse_dt.exit.thread_crit_edge: ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %chipone_parse_dt.exit.thread

if.end17.i:                                       ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %call9.i to i32
  %8 = ptrtoint ptr %vdd2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %vdd2.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %7) #5
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end17.i, %if.end8.i.if.end19.i_crit_edge
  %call20.i = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.10) #5
  %vdd3.i = getelementptr inbounds %struct.chipone, ptr %call.i, i32 0, i32 6
  %9 = ptrtoint ptr %vdd3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call20.i, ptr %vdd3.i, align 4
  %cmp.i85.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85.i, label %if.then23.i, label %if.end19.i.if.end30.i_crit_edge

if.end19.i.if.end30.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.i

if.then23.i:                                      ; preds = %if.end19.i
  %cmp26.i = icmp eq ptr %call20.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp26.i, label %if.then23.i.chipone_parse_dt.exit.thread_crit_edge, label %if.end28.i

if.then23.i.chipone_parse_dt.exit.thread_crit_edge: ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %chipone_parse_dt.exit.thread

if.end28.i:                                       ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call20.i to i32
  %11 = ptrtoint ptr %vdd3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %vdd3.i, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 1, ptr noundef nonnull @.str.11, i32 noundef %10) #5
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end28.i, %if.end19.i.if.end30.i_crit_edge
  %call31.i = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef 3) #5
  %enable_gpio.i = getelementptr inbounds %struct.chipone, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call31.i, ptr %enable_gpio.i, align 4
  %cmp.i86.i = icmp ugt ptr %call31.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86.i, label %if.then34.i, label %if.end37.i

if.then34.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.13) #5
  %13 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %enable_gpio.i, align 4
  br label %chipone_parse_dt.exit

if.end37.i:                                       ; preds = %if.end30.i
  %of_node.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 27
  %15 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i, align 8
  %call38.i = call i32 @drm_of_find_panel_or_bridge(ptr noundef %16, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %panel.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool.not.i, label %if.end40.i, label %if.end37.i.chipone_parse_dt.exit.thread_crit_edge

if.end37.i.chipone_parse_dt.exit.thread_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %chipone_parse_dt.exit.thread

if.end40.i:                                       ; preds = %if.end37.i
  %17 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %panel.i, align 4
  %call41.i = call ptr @devm_drm_panel_bridge_add(ptr noundef %dev1, ptr noundef %18) #5
  %panel_bridge.i = getelementptr inbounds %struct.chipone, ptr %call.i, i32 0, i32 2
  %19 = ptrtoint ptr %panel_bridge.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call41.i, ptr %panel_bridge.i, align 4
  %cmp.i87.i = icmp ugt ptr %call41.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87.i, label %if.end40.i.chipone_parse_dt.exit_crit_edge, label %chipone_parse_dt.exit.thread39

if.end40.i.chipone_parse_dt.exit_crit_edge:       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %chipone_parse_dt.exit

chipone_parse_dt.exit.thread39:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #5
  br label %if.end6

chipone_parse_dt.exit.thread:                     ; preds = %if.end37.i.chipone_parse_dt.exit.thread_crit_edge, %if.then23.i.chipone_parse_dt.exit.thread_crit_edge, %if.then12.i.chipone_parse_dt.exit.thread_crit_edge, %if.then.i.chipone_parse_dt.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call38.i, %if.end37.i.chipone_parse_dt.exit.thread_crit_edge ], [ -517, %if.then23.i.chipone_parse_dt.exit.thread_crit_edge ], [ -517, %if.then12.i.chipone_parse_dt.exit.thread_crit_edge ], [ -517, %if.then.i.chipone_parse_dt.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #5
  br label %cleanup

chipone_parse_dt.exit:                            ; preds = %if.end40.i.chipone_parse_dt.exit_crit_edge, %if.then34.i
  %retval.0.i.in = phi ptr [ %14, %if.then34.i ], [ %call41.i, %if.end40.i.chipone_parse_dt.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #5
  %tobool4.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool4.not, label %chipone_parse_dt.exit.if.end6_crit_edge, label %chipone_parse_dt.exit.cleanup_crit_edge

chipone_parse_dt.exit.cleanup_crit_edge:          ; preds = %chipone_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

chipone_parse_dt.exit.if.end6_crit_edge:          ; preds = %chipone_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end6:                                          ; preds = %chipone_parse_dt.exit.if.end6_crit_edge, %chipone_parse_dt.exit.thread39
  %bridge = getelementptr inbounds %struct.chipone, ptr %call.i, i32 0, i32 1
  %funcs = getelementptr inbounds %struct.chipone, ptr %call.i, i32 0, i32 1, i32 7
  %20 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @chipone_bridge_funcs, ptr %funcs, align 4
  %type = getelementptr inbounds %struct.chipone, ptr %call.i, i32 0, i32 1, i32 10
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 17, ptr %type, align 4
  %of_node = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %of_node9 = getelementptr inbounds %struct.chipone, ptr %call.i, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %of_node9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %of_node9, align 4
  call void @drm_bridge_add(ptr noundef %bridge) #5
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %25 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %26 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %27 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %mode_flags, align 8
  %call11 = call i32 @mipi_dsi_attach(ptr noundef %dsi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  call void @drm_bridge_remove(ptr noundef %bridge) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end6.cleanup_crit_edge, %chipone_parse_dt.exit.cleanup_crit_edge, %chipone_parse_dt.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %chipone_parse_dt.exit.cleanup_crit_edge ], [ %call11, %if.then12 ], [ %call11, %if.end6.cleanup_crit_edge ], [ %retval.0.i.ph, %chipone_parse_dt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chipone_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #5
  %bridge = getelementptr inbounds %struct.chipone, ptr %1, i32 0, i32 1
  tail call void @drm_bridge_remove(ptr noundef %bridge) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chipone_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %panel_bridge = getelementptr i8, ptr %bridge, i32 280
  %2 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel_bridge, align 4
  %call1 = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef %flags) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chipone_post_disable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd1 = getelementptr i8, ptr %bridge, i32 288
  %0 = ptrtoint ptr %vdd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @regulator_disable(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vdd2 = getelementptr i8, ptr %bridge, i32 292
  %2 = ptrtoint ptr %vdd2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdd2, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @regulator_disable(ptr noundef nonnull %3) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %vdd3 = getelementptr i8, ptr %bridge, i32 296
  %4 = ptrtoint ptr %vdd3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd3, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %enable_gpio = getelementptr i8, ptr %bridge, i32 284
  %6 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chipone_pre_enable(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  %vdd1 = getelementptr i8, ptr %bridge, i32 288
  %0 = ptrtoint ptr %vdd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @regulator_enable(ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then4

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.14, i32 noundef %call2) #5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %vdd2 = getelementptr i8, ptr %bridge, i32 292
  %4 = ptrtoint ptr %vdd2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdd2, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end5.if.end14_crit_edge, label %if.then7

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then7:                                         ; preds = %if.end5
  %call9 = tail call i32 @regulator_enable(ptr noundef nonnull %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then7.if.end14_crit_edge, label %if.then11

if.then7.if.end14_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.15, i32 noundef %call9) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.then7.if.end14_crit_edge, %if.end5.if.end14_crit_edge
  %vdd3 = getelementptr i8, ptr %bridge, i32 296
  %8 = ptrtoint ptr %vdd3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vdd3, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %if.end14.if.end23_crit_edge, label %if.then16

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then16:                                        ; preds = %if.end14
  %call18 = tail call i32 @regulator_enable(ptr noundef nonnull %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then16.if.end23_crit_edge, label %if.then20

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.16, i32 noundef %call18) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then16.if.end23_crit_edge, %if.end14.if.end23_crit_edge
  %enable_gpio = getelementptr i8, ptr %bridge, i32 284
  %12 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef 1) #5
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @chipone_enable(ptr noundef readonly %bridge) #2 align 64 {
entry:
  %d = alloca [2 x i8], align 2
  %d3 = alloca [2 x i8], align 1
  %d7 = alloca [2 x i8], align 1
  %d15 = alloca [2 x i8], align 1
  %d28 = alloca [2 x i8], align 1
  %d37 = alloca [2 x i8], align 1
  %d47 = alloca [2 x i8], align 1
  %d57 = alloca [2 x i8], align 2
  %d60 = alloca [2 x i8], align 1
  %d70 = alloca [2 x i8], align 1
  %d80 = alloca [2 x i8], align 1
  %d90 = alloca [2 x i8], align 2
  %d93 = alloca [2 x i8], align 2
  %d96 = alloca [2 x i8], align 2
  %d99 = alloca [2 x i8], align 2
  %d102 = alloca [2 x i8], align 2
  %d105 = alloca [2 x i8], align 2
  %d108 = alloca [2 x i8], align 2
  %d111 = alloca [2 x i8], align 2
  %d114 = alloca [2 x i8], align 2
  %d117 = alloca [2 x i8], align 2
  %d120 = alloca [2 x i8], align 2
  %d123 = alloca [2 x i8], align 2
  %d126 = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  %encoder.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder.i, align 4
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc.i, align 4
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %3, i32 0, i32 22
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d) #5
  %6 = ptrtoint ptr %d to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 31425, ptr %d, align 2
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 -8
  %call1.i = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i, ptr noundef nonnull %d, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d3) #5
  %9 = getelementptr inbounds [2 x i8], ptr %d3, i32 0, i32 1
  %10 = ptrtoint ptr %d3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 32, ptr %d3, align 1
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hdisplay, align 4
  %conv4 = trunc i16 %12 to i8
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv4, ptr %9, align 1
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i169 = getelementptr i8, ptr %15, i32 -8
  %call1.i170 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i169, ptr noundef nonnull %d3, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d3) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d7) #5
  %16 = getelementptr inbounds [2 x i8], ptr %d7, i32 0, i32 1
  %17 = ptrtoint ptr %d7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 33, ptr %d7, align 1
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 6
  %18 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vdisplay, align 2
  %conv12 = trunc i16 %19 to i8
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv12, ptr %16, align 1
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i171 = getelementptr i8, ptr %22, i32 -8
  %call1.i172 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i171, ptr noundef nonnull %d7, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d7) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d15) #5
  %23 = getelementptr inbounds [2 x i8], ptr %d15, i32 0, i32 1
  %24 = ptrtoint ptr %d15 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 34, ptr %d15, align 1
  %25 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %hdisplay, align 4
  %27 = lshr i16 %26, 8
  %28 = and i16 %27, 15
  %29 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vdisplay, align 2
  %31 = lshr i16 %30, 4
  %32 = and i16 %31, 240
  %or168 = or i16 %32, %28
  %conv25 = trunc i16 %or168 to i8
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv25, ptr %23, align 1
  %34 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i173 = getelementptr i8, ptr %35, i32 -8
  %call1.i174 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i173, ptr noundef nonnull %d15, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d15) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d28) #5
  %36 = getelementptr inbounds [2 x i8], ptr %d28, i32 0, i32 1
  %37 = ptrtoint ptr %d28 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 35, ptr %d28, align 1
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 2
  %38 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %hsync_start, align 2
  %conv31 = trunc i16 %39 to i8
  %40 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hdisplay, align 4
  %conv33 = trunc i16 %41 to i8
  %sub = sub i8 %conv31, %conv33
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %sub, ptr %36, align 1
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i175 = getelementptr i8, ptr %44, i32 -8
  %call1.i176 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i175, ptr noundef nonnull %d28, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d28) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d37) #5
  %45 = getelementptr inbounds [2 x i8], ptr %d37, i32 0, i32 1
  %46 = ptrtoint ptr %d37 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 36, ptr %d37, align 1
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 3
  %47 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %hsync_end, align 4
  %conv40 = trunc i16 %48 to i8
  %49 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %hsync_start, align 2
  %conv42 = trunc i16 %50 to i8
  %sub43 = sub i8 %conv40, %conv42
  %51 = ptrtoint ptr %45 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %sub43, ptr %45, align 1
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i177 = getelementptr i8, ptr %53, i32 -8
  %call1.i178 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i177, ptr noundef nonnull %d37, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d37) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d47) #5
  %54 = getelementptr inbounds [2 x i8], ptr %d47, i32 0, i32 1
  %55 = ptrtoint ptr %d47 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 37, ptr %d47, align 1
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 4
  %56 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %htotal, align 2
  %conv50 = trunc i16 %57 to i8
  %58 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %hsync_end, align 4
  %conv52 = trunc i16 %59 to i8
  %sub53 = sub i8 %conv50, %conv52
  %60 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %sub53, ptr %54, align 1
  %61 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i179 = getelementptr i8, ptr %62, i32 -8
  %call1.i180 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i179, ptr noundef nonnull %d47, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d47) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d57) #5
  %63 = ptrtoint ptr %d57 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 9728, ptr %d57, align 2
  %64 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i181 = getelementptr i8, ptr %65, i32 -8
  %call1.i182 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i181, ptr noundef nonnull %d57, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d57) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d60) #5
  %66 = getelementptr inbounds [2 x i8], ptr %d60, i32 0, i32 1
  %67 = ptrtoint ptr %d60 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 39, ptr %d60, align 1
  %vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 7
  %68 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %vsync_start, align 4
  %conv63 = trunc i16 %69 to i8
  %70 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vdisplay, align 2
  %conv65 = trunc i16 %71 to i8
  %sub66 = sub i8 %conv63, %conv65
  %72 = ptrtoint ptr %66 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %sub66, ptr %66, align 1
  %73 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i183 = getelementptr i8, ptr %74, i32 -8
  %call1.i184 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i183, ptr noundef nonnull %d60, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d60) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d70) #5
  %75 = getelementptr inbounds [2 x i8], ptr %d70, i32 0, i32 1
  %76 = ptrtoint ptr %d70 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 40, ptr %d70, align 1
  %vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 8
  %77 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %vsync_end, align 2
  %conv73 = trunc i16 %78 to i8
  %79 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %vsync_start, align 4
  %conv75 = trunc i16 %80 to i8
  %sub76 = sub i8 %conv73, %conv75
  %81 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %sub76, ptr %75, align 1
  %82 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i185 = getelementptr i8, ptr %83, i32 -8
  %call1.i186 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i185, ptr noundef nonnull %d70, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d70) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d80) #5
  %84 = getelementptr inbounds [2 x i8], ptr %d80, i32 0, i32 1
  %85 = ptrtoint ptr %d80 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 41, ptr %d80, align 1
  %vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 9
  %86 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %vtotal, align 4
  %conv83 = trunc i16 %87 to i8
  %88 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %vsync_end, align 2
  %conv85 = trunc i16 %89 to i8
  %sub86 = sub i8 %conv83, %conv85
  %90 = ptrtoint ptr %84 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %sub86, ptr %84, align 1
  %91 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i187 = getelementptr i8, ptr %92, i32 -8
  %call1.i188 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i187, ptr noundef nonnull %d80, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d80) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d90) #5
  %93 = ptrtoint ptr %d90 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 13440, ptr %d90, align 2
  %94 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i189 = getelementptr i8, ptr %95, i32 -8
  %call1.i190 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i189, ptr noundef nonnull %d90, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d90) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d93) #5
  %96 = ptrtoint ptr %d93 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 13864, ptr %d93, align 2
  %97 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i191 = getelementptr i8, ptr %98, i32 -8
  %call1.i192 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i191, ptr noundef nonnull %d93, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d93) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d96) #5
  %99 = ptrtoint ptr %d96 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 -19040, ptr %d96, align 2
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i193 = getelementptr i8, ptr %101, i32 -8
  %call1.i194 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i193, ptr noundef nonnull %d96, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d96) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d99) #5
  %102 = ptrtoint ptr %d99 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 23807, ptr %d99, align 2
  %103 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i195 = getelementptr i8, ptr %104, i32 -8
  %call1.i196 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i195, ptr noundef nonnull %d99, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d99) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d102) #5
  %105 = ptrtoint ptr %d102 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 10753, ptr %d102, align 2
  %106 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i197 = getelementptr i8, ptr %107, i32 -8
  %call1.i198 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i197, ptr noundef nonnull %d102, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d102) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d105) #5
  %108 = ptrtoint ptr %d105 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 22162, ptr %d105, align 2
  %109 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i199 = getelementptr i8, ptr %110, i32 -8
  %call1.i200 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i199, ptr noundef nonnull %d105, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d105) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d108) #5
  %111 = ptrtoint ptr %d108 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 27505, ptr %d108, align 2
  %112 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i201 = getelementptr i8, ptr %113, i32 -8
  %call1.i202 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i201, ptr noundef nonnull %d108, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d108) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d111) #5
  %114 = ptrtoint ptr %d111 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 26923, ptr %d111, align 2
  %115 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i203 = getelementptr i8, ptr %116, i32 -8
  %call1.i204 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i203, ptr noundef nonnull %d111, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d111) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d114) #5
  %117 = ptrtoint ptr %d114 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 4160, ptr %d114, align 2
  %118 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i205 = getelementptr i8, ptr %119, i32 -8
  %call1.i206 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i205, ptr noundef nonnull %d114, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d114) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d117) #5
  %120 = ptrtoint ptr %d117 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 4504, ptr %d117, align 2
  %121 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i207 = getelementptr i8, ptr %122, i32 -8
  %call1.i208 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i207, ptr noundef nonnull %d117, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d117) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d120) #5
  %123 = ptrtoint ptr %d120 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 -18912, ptr %d120, align 2
  %124 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i209 = getelementptr i8, ptr %125, i32 -8
  %call1.i210 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i209, ptr noundef nonnull %d120, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d120) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d123) #5
  %126 = ptrtoint ptr %d123 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 20768, ptr %d123, align 2
  %127 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i211 = getelementptr i8, ptr %128, i32 -8
  %call1.i212 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i211, ptr noundef nonnull %d123, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d123) #5
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %d126) #5
  %129 = ptrtoint ptr %d126 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 2320, ptr %d126, align 2
  %130 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %add.ptr.i, align 4
  %add.ptr.i.i213 = getelementptr i8, ptr %131, i32 -8
  %call1.i214 = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i213, ptr noundef nonnull %d126, i32 noundef 2) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %d126) #5
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__initcall__kmod_chipone_icn6211__307_289_chipone_driver_init6, !1, !"__initcall__kmod_chipone_icn6211__307_289_chipone_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 289, i32 1}
!2 = !{ptr @__exitcall_chipone_driver_exit, !1, !"__exitcall_chipone_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author308, !4, !"__UNIQUE_ID_author308", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 291, i32 1}
!5 = !{ptr @__UNIQUE_ID_description309, !6, !"__UNIQUE_ID_description309", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 292, i32 1}
!7 = !{ptr @__UNIQUE_ID_file310, !8, !"__UNIQUE_ID_file310", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 293, i32 1}
!9 = !{ptr @__UNIQUE_ID_license311, !8, !"__UNIQUE_ID_license311", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 284, i32 11}
!12 = !{ptr @chipone_driver, !13, !"chipone_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 280, i32 31}
!14 = !{ptr @chipone_of_match, !15, !"chipone_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 274, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 258, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @chipone_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @chipone_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 184, i32 47}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 190, i32 3}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 193, i32 47}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 199, i32 3}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 202, i32 47}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 208, i32 3}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 211, i32 41}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 213, i32 3}
!40 = !{ptr @chipone_bridge_funcs, !41, !"chipone_bridge_funcs", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 171, i32 38}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 125, i32 4}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 132, i32 4}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/bridge/chipone-icn6211.c", i32 139, i32 4}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
