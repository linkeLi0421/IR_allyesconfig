; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/armada/armada_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/armada/armada_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.armada_variant = type { i8, ptr, ptr, ptr, ptr }
%struct.armada_crtc = type { %struct.drm_crtc, ptr, ptr, i32, ptr, ptr, [2 x %struct.anon.88], i8, i8, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i8, ptr, [32 x %struct.armada_regs], ptr, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.88 = type { i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.armada_regs = type { i32, i32, i32 }
%struct.armada_clocking_params = type { i32, i32, i32, i32 }
%struct.armada_clk_result = type { i32, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.armada_private = type { %struct.drm_device, ptr, [2 x ptr], %struct.drm_mm, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.armada_gem_object = type { %struct.drm_gem_object, ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"[CRTC:%u:%s] desired clock=%luHz\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[CRTC:%u:%s] clk=%u %luHz div=%u real=%luHz\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[CRTC:%u:%s] selected clk=%u %luHz div=%u real=%luHz\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"armada-lcd\00", [21 x i8] zeroinitializer }, align 32
@armada_lcd_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,dove-lcd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @armada510_ops }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@armada_lcd_platform_ids = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"armada-lcd\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @armada510_ops to i32) }, %struct.platform_device_id { [20 x i8] c"armada-510-lcd\00\00\00\00\00\00", i32 ptrtoint (ptr @armada510_ops to i32) }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@armada_lcd_platform_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @armada_lcd_probe, ptr @armada_lcd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @armada_lcd_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @armada_lcd_platform_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@armada_lcd_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @armada_lcd_bind, ptr @armada_lcd_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@armada_lcd_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1042, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no port node found in %pOF\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"armada_lcd_bind\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/armada/armada_crtc.c\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@armada_lcd_bind._entry_ptr = internal global ptr @armada_lcd_bind._entry, section ".printk_index", align 4
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to allocate Armada crtc\0A\00", [32 x i8] zeroinitializer }, align 32
@armada_drm_crtc_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dcrtc->irq_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"armada_drm_crtc\00", [16 x i8] zeroinitializer }, align 32
@armada_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @drm_atomic_helper_crtc_reset, ptr @armada_drm_crtc_cursor_set, ptr null, ptr @armada_drm_crtc_cursor_move, ptr null, ptr @armada_drm_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr @armada_drm_crtc_late_register, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @armada_drm_crtc_enable_vblank, ptr @armada_drm_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@armada_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @armada_drm_crtc_mode_valid, ptr @armada_drm_crtc_mode_fixup, ptr null, ptr @armada_drm_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr @armada_drm_crtc_atomic_check, ptr @armada_drm_crtc_atomic_begin, ptr @armada_drm_crtc_atomic_flush, ptr @armada_drm_crtc_atomic_enable, ptr @armada_drm_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__tracepoint_armada_drm_irq = external dso_local global %struct.tracepoint, align 4
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/armada/armada_trace.h\00", [58 x i8] zeroinitializer }, align 32
@trace_armada_drm_irq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"video underflow on crtc %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"graphics underflow on crtc %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"buffer is too small\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"[CRTC:%d:%s] mode \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"lm %d rm %d tm %d bm %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[CRTC:%d:%s]\0A\00", [18 x i8] zeroinitializer }, align 32
@armada510_ops = external dso_local constant %struct.armada_variant, align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 847, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 878, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 898, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1101, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"armada_lcd_of_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1076, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant [24 x i8] c"armada_lcd_platform_ids\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1085, i32 40 }
@___asan_gen_.41 = private unnamed_addr constant [27 x i8] c"armada_lcd_platform_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1097, i32 24 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"armada_lcd_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1060, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1036, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1039, i32 39 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 1042, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 925, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 937, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 954, i32 54 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"armada_crtc_funcs\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 818, i32 36 }
@___asan_gen_.86 = private unnamed_addr constant [25 x i8] c"armada_crtc_helper_funcs\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 540, i32 43 }
@___asan_gen_.93 = private unnamed_addr constant [41 x i8] c"../drivers/gpu/drm/armada/armada_trace.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 15, i32 1 }
@___asan_gen_.96 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 108, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 252, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 254, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 728, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 346, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 348, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [40 x i8] c"../drivers/gpu/drm/armada/armada_crtc.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 420, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @armada_lcd_bind._entry, ptr @armada_lcd_bind._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @armada_lcd_of_match, ptr @armada_lcd_platform_ids, ptr @armada_lcd_platform_driver, ptr @armada_lcd_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @armada_drm_crtc_create.__key, ptr @.str.12, ptr @.str.13, ptr @armada_crtc_funcs, ptr @armada_crtc_helper_funcs, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_lcd_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_lcd_platform_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_lcd_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_lcd_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_lcd_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_drm_crtc_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @armada_drm_crtc_update_regs(ptr nocapture noundef readonly %dcrtc, ptr nocapture noundef readonly %regs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not12 = icmp eq i32 %1, -1
  br i1 %cmp.not12, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %base = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %2 = phi i32 [ %1, %while.body.lr.ph ], [ %13, %if.end.while.body_crit_edge ]
  %regs.addr.013 = phi ptr [ %regs, %while.body.lr.ph ], [ %incdec.ptr, %if.end.while.body_crit_edge ]
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %2
  %mask = getelementptr inbounds %struct.armada_regs, ptr %regs.addr.013, i32 0, i32 1
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.not = icmp eq i32 %6, 0
  br i1 %cmp2.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !69
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %and = and i32 %8, %6
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %val.0 = phi i32 [ %and, %if.then ], [ 0, %while.body.if.end_crit_edge ]
  %val3 = getelementptr inbounds %struct.armada_regs, ptr %regs.addr.013, i32 0, i32 2
  %9 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val3, align 4
  %or = or i32 %10, %val.0
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #10, !srcloc !70
  %incdec.ptr = getelementptr %struct.armada_regs, ptr %regs.addr.013, i32 1
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %incdec.ptr, align 4
  %cmp.not = icmp eq i32 %13, -1
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @armada_crtc_select_clock(ptr nocapture noundef readonly %dcrtc, ptr nocapture noundef writeonly %res, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %clks, i32 noundef %num_clks, i32 noundef %desired_khz) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %desired_khz, 1000
  %base = getelementptr inbounds %struct.drm_crtc, ptr %dcrtc, i32 0, i32 5
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 8
  %name = getelementptr inbounds %struct.drm_crtc, ptr %dcrtc, i32 0, i32 3
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, i32 noundef %1, ptr noundef %3, i32 noundef %mul) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_clks)
  %cmp102.not = icmp eq i32 %num_clks, 0
  br i1 %cmp102.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %settable = getelementptr inbounds %struct.armada_clocking_params, ptr %params, i32 0, i32 2
  %div999 = lshr exact i32 %mul, 1
  %div_max = getelementptr inbounds %struct.armada_clocking_params, ptr %params, i32 0, i32 3
  %add33 = add i32 %desired_khz, -1
  %permillage_max = getelementptr inbounds %struct.armada_clocking_params, ptr %params, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0103 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %clks, i32 %i.0103
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %settable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %settable, align 4
  %shl = shl nuw i32 1, %i.0103
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @clk_round_rate(ptr noundef nonnull %5, i32 noundef %mul) #10
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @clk_get_rate(ptr noundef nonnull %5) #10
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %real_clk_hz.0 = phi i32 [ %call, %if.then3 ], [ %call4, %if.else ]
  %desired_clk_hz.0 = phi i32 [ %mul, %if.then3 ], [ %call4, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %real_clk_hz.0, i32 %mul)
  %cmp6 = icmp eq i32 %real_clk_hz.0, %mul
  br i1 %cmp6, label %if.end5.found_crit_edge, label %if.end8

if.end5.found_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

if.end8:                                          ; preds = %if.end5
  %add = add i32 %real_clk_hz.0, %div999
  %div10 = udiv i32 %add, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %add)
  %cmp11 = icmp ugt i32 %mul, %add
  br i1 %cmp11, label %if.end8.for.inc_crit_edge, label %lor.lhs.false

if.end8.for.inc_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end8
  %8 = ptrtoint ptr %div_max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %div_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div10, i32 %9)
  %cmp12 = icmp ugt i32 %div10, %9
  br i1 %cmp12, label %lor.lhs.false.for.inc_crit_edge, label %if.end14

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end14:                                         ; preds = %lor.lhs.false
  %div18100 = lshr i32 %div10, 1
  %add19 = add i32 %div18100, %real_clk_hz.0
  %div20 = udiv i32 %add19, %div10
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base, align 8
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i32 noundef %11, ptr noundef %13, i32 noundef %i.0103, i32 noundef %real_clk_hz.0, i32 noundef %div10, i32 noundef %div20) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %div20, i32 %mul)
  %cmp26 = icmp ult i32 %div20, %mul
  br i1 %cmp26, label %if.then27, label %if.else32

if.then27:                                        ; preds = %if.end14
  %div28 = udiv i32 %div20, %desired_khz
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div28, i32 %15)
  %cmp29 = icmp ult i32 %div28, %15
  br i1 %cmp29, label %if.then27.for.inc_crit_edge, label %if.then27.found_crit_edge

if.then27.found_crit_edge:                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

if.then27.for.inc_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else32:                                        ; preds = %if.end14
  %sub = add i32 %add33, %div20
  %div34 = udiv i32 %sub, %desired_khz
  %16 = ptrtoint ptr %permillage_max to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %permillage_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div34, i32 %17)
  %cmp35 = icmp ugt i32 %div34, %17
  br i1 %cmp35, label %if.else32.for.inc_crit_edge, label %if.else32.found_crit_edge

if.else32.found_crit_edge:                        ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

if.else32.for.inc_crit_edge:                      ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.else32.for.inc_crit_edge, %if.then27.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end8.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0103, 1
  %exitcond.not = icmp eq i32 %inc, %num_clks
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

found:                                            ; preds = %if.else32.found_crit_edge, %if.then27.found_crit_edge, %if.end5.found_crit_edge
  %real_clk_hz.0.lcssa = phi i32 [ %mul, %if.end5.found_crit_edge ], [ %real_clk_hz.0, %if.then27.found_crit_edge ], [ %real_clk_hz.0, %if.else32.found_crit_edge ]
  %div.0 = phi i32 [ 1, %if.end5.found_crit_edge ], [ %div10, %if.then27.found_crit_edge ], [ %div10, %if.else32.found_crit_edge ]
  %real_hz.0 = phi i32 [ %mul, %if.end5.found_crit_edge ], [ %div20, %if.then27.found_crit_edge ], [ %div20, %if.else32.found_crit_edge ]
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %base, align 8
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.2, i32 noundef %19, ptr noundef %21, i32 noundef %i.0103, i32 noundef %real_clk_hz.0.lcssa, i32 noundef %div.0, i32 noundef %real_hz.0) #10
  %22 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %desired_clk_hz.0, ptr %res, align 4
  %clk45 = getelementptr inbounds %struct.armada_clk_result, ptr %res, i32 0, i32 1
  %23 = ptrtoint ptr %clk45 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %5, ptr %clk45, align 4
  %div46 = getelementptr inbounds %struct.armada_clk_result, ptr %res, i32 0, i32 2
  %24 = ptrtoint ptr %div46 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div.0, ptr %div46, align 4
  br label %cleanup

cleanup:                                          ; preds = %found, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %i.0103, %found ], [ -34, %entry.cleanup_crit_edge ], [ -34, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_lcd_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @armada_lcd_ops) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_lcd_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @armada_lcd_ops) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_lcd_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 0) #10
  %call1 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup27_crit_edge, label %if.end

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup27

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %id_entry = getelementptr i8, ptr %dev, i32 956
  %2 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_entry, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.then2.cleanup27_crit_edge, label %cleanup

if.then2.cleanup27_crit_edge:                     ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup27

cleanup:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %6 = inttoptr i32 %5 to ptr
  br label %if.end25

if.else:                                          ; preds = %if.end
  %driver = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 6
  %7 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_match_table, align 4
  %call7 = tail call ptr @of_match_device(ptr noundef %10, ptr noundef %dev) #10
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.else.cleanup27_crit_edge, label %if.end10

if.else.cleanup27_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup27

if.end10:                                         ; preds = %if.else
  %call11 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %1, ptr noundef nonnull @.str.4) #10
  %tobool12.not = icmp eq ptr %call11, null
  %spec.select = select i1 %tobool12.not, ptr %1, ptr %call11
  %call15 = tail call ptr @of_get_child_by_name(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str.5) #10
  tail call void @of_node_put(ptr noundef %call11) #10
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end, label %cleanup20

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef nonnull %spec.select) #13
  br label %cleanup27

cleanup20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %data19 = getelementptr inbounds %struct.of_device_id, ptr %call7, i32 0, i32 3
  %11 = ptrtoint ptr %data19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data19, align 4
  br label %if.end25

if.end25:                                         ; preds = %cleanup20, %cleanup
  %variant.2 = phi ptr [ %12, %cleanup20 ], [ %6, %cleanup ]
  %port.1 = phi ptr [ %call15, %cleanup20 ], [ null, %cleanup ]
  %call.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call.i to i32
  br label %cleanup27

if.end.i:                                         ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 1528) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then4.i, label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #10
  br label %cleanup27

if.end5.i:                                        ; preds = %if.end.i
  %dev6.i = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 2
  %15 = ptrtoint ptr %dev6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev6.i, align 4
  %cmp.not.i = icmp eq ptr %16, %dev
  br i1 %cmp.not.i, label %if.end5.i.if.end8.i_crit_edge, label %if.then7.i

if.end5.i.if.end8.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i.i, ptr %driver_data.i.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end5.i.if.end8.i_crit_edge
  %variant9.i = getelementptr inbounds %struct.armada_crtc, ptr %call7.i.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %variant9.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %variant.2, ptr %variant9.i, align 8
  %base10.i = getelementptr inbounds %struct.armada_crtc, ptr %call7.i.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %base10.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %base10.i, align 4
  %num_crtc.i = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 30, i32 19
  %20 = ptrtoint ptr %num_crtc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_crtc.i, align 4
  %num.i = getelementptr inbounds %struct.armada_crtc, ptr %call7.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %num.i, align 8
  %cfg_dumb_ctrl.i = getelementptr inbounds %struct.armada_crtc, ptr %call7.i.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %cfg_dumb_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1610612736, ptr %cfg_dumb_ctrl.i, align 4
  %spu_iopad_ctrl.i = getelementptr inbounds %struct.armada_crtc, ptr %call7.i.i.i, i32 0, i32 17
  %24 = ptrtoint ptr %spu_iopad_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 786432, ptr %spu_iopad_ctrl.i, align 8
  %irq_lock.i = getelementptr inbounds %struct.armada_crtc, ptr %call7.i.i.i, i32 0, i32 18
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @armada_drm_crtc_create.__key, i16 noundef signext 3) #10
  %irq_ena.i = getelementptr inbounds %struct.armada_crtc, ptr %call7.i.i.i, i32 0, i32 19
  %25 = ptrtoint ptr %irq_ena.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 65535, ptr %irq_ena.i, align 8
  %26 = ptrtoint ptr %base10.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base10.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %27, i32 424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 16777216) #10, !srcloc !70
  %28 = ptrtoint ptr %base10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base10.i, align 4
  %add.ptr15.i = getelementptr i8, ptr %29, i32 292
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15.i, i32 0) #10, !srcloc !70
  %30 = ptrtoint ptr %spu_iopad_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %spu_iopad_ctrl.i, align 8
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #10
  %33 = ptrtoint ptr %base10.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base10.i, align 4
  %add.ptr18.i = getelementptr i8, ptr %34, i32 444
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %32) #10, !srcloc !70
  %35 = ptrtoint ptr %base10.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base10.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %36, i32 416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 0) #10, !srcloc !70
  %37 = ptrtoint ptr %base10.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base10.i, align 4
  %add.ptr22.i = getelementptr i8, ptr %38, i32 420
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 -285212672) #10, !srcloc !70
  %39 = ptrtoint ptr %base10.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base10.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %40, i32 404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 -2113981920) #10, !srcloc !70
  %41 = ptrtoint ptr %irq_ena.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq_ena.i, align 8
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #10
  %44 = ptrtoint ptr %base10.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base10.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %45, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %43) #10, !srcloc !70
  %46 = ptrtoint ptr %base10.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base10.i, align 4
  %add.ptr29.i = getelementptr i8, ptr %47, i32 452
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #10, !srcloc !69
  %49 = ptrtoint ptr %base10.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base10.i, align 4
  %add.ptr33.i = getelementptr i8, ptr %50, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 0) #10, !srcloc !70
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call1, ptr noundef nonnull @armada_drm_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull %call7.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp35.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp35.i, label %if.end8.i.err_crtc.i_crit_edge, label %if.end37.i

if.end8.i.err_crtc.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_crtc.i

if.end37.i:                                       ; preds = %if.end8.i
  %51 = ptrtoint ptr %variant9.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %variant9.i, align 8
  %init.i = getelementptr inbounds %struct.armada_variant, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %init.i, align 4
  %tobool39.not.i = icmp eq ptr %54, null
  br i1 %tobool39.not.i, label %if.end37.i.if.end47.i_crit_edge, label %if.then40.i

if.end37.i.if.end47.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.i

if.then40.i:                                      ; preds = %if.end37.i
  %call43.i = tail call i32 %54(ptr noundef nonnull %call7.i.i.i, ptr noundef %dev) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.then40.i.if.end47.i_crit_edge, label %if.then40.i.err_crtc.i_crit_edge

if.then40.i.err_crtc.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_crtc.i

if.then40.i.if.end47.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then40.i.if.end47.i_crit_edge, %if.end37.i.if.end47.i_crit_edge
  %55 = ptrtoint ptr %base10.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base10.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %56, i32 400
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i) #10, !srcloc !69
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #10
  %or.i.i = or i32 %58, 134217728
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %or.i.i)
  %cmp.not.i.i = icmp eq i32 %58, %or.i.i
  br i1 %cmp.not.i.i, label %if.end47.i.armada_updatel.exit.i_crit_edge, label %if.then.i.i

if.end47.i.armada_updatel.exit.i_crit_edge:       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_updatel.exit.i

if.then.i.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #12
  %59 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 %59) #10, !srcloc !70
  br label %armada_updatel.exit.i

armada_updatel.exit.i:                            ; preds = %if.then.i.i, %if.end47.i.armada_updatel.exit.i_crit_edge
  %60 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num.i, align 8
  %arrayidx.i = getelementptr %struct.armada_private, ptr %data, i32 0, i32 2, i32 %61
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i.i, ptr %arrayidx.i, align 4
  %port52.i = getelementptr inbounds %struct.drm_crtc, ptr %call7.i.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %port52.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %port.1, ptr %port52.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %64 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i134.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %64, i32 noundef 3520, i32 noundef 528) #14
  %tobool54.not.i = icmp eq ptr %call7.i.i134.i, null
  br i1 %tobool54.not.i, label %armada_updatel.exit.i.err_crtc.i_crit_edge, label %if.end56.i

armada_updatel.exit.i.err_crtc.i_crit_edge:       ; preds = %armada_updatel.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_crtc.i

if.end56.i:                                       ; preds = %armada_updatel.exit.i
  %call57.i = tail call i32 @armada_drm_primary_plane_init(ptr noundef %data, ptr noundef nonnull %call7.i.i134.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end60.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i134.i) #10
  br label %err_crtc.i

if.end60.i:                                       ; preds = %if.end56.i
  %call62.i = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %data, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i.i134.i, ptr noundef null, ptr noundef nonnull @armada_crtc_funcs, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %if.end65.i, label %err_crtc_init.i

if.end65.i:                                       ; preds = %if.end60.i
  %helper_private.i.i = getelementptr inbounds %struct.drm_crtc, ptr %call7.i.i.i, i32 0, i32 19
  %65 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @armada_crtc_helper_funcs, ptr %helper_private.i.i, align 8
  %call68.i = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef nonnull %call7.i.i.i, i32 noundef 256) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %if.end71.i, label %if.end65.i.cleanup27_crit_edge

if.end65.i.cleanup27_crit_edge:                   ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup27

if.end71.i:                                       ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef nonnull %call7.i.i.i, i32 noundef 0, i1 noundef zeroext false, i32 noundef 256) #10
  %66 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num.i, align 8
  %shl.i = shl nuw i32 1, %67
  %call74.i = tail call i32 @armada_overlay_plane_create(ptr noundef %data, i32 noundef %shl.i) #10
  br label %cleanup27

err_crtc_init.i:                                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #12
  %funcs.i = getelementptr inbounds %struct.drm_plane, ptr %call7.i.i134.i, i32 0, i32 14
  %68 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %funcs.i, align 4
  %destroy.i = getelementptr inbounds %struct.drm_plane_funcs, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %destroy.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %destroy.i, align 4
  tail call void %71(ptr noundef nonnull %call7.i.i134.i) #10
  br label %err_crtc.i

err_crtc.i:                                       ; preds = %err_crtc_init.i, %if.then59.i, %armada_updatel.exit.i.err_crtc.i_crit_edge, %if.then40.i.err_crtc.i_crit_edge, %if.end8.i.err_crtc.i_crit_edge
  %ret.0.i = phi i32 [ %call.i.i, %if.end8.i.err_crtc.i_crit_edge ], [ %call43.i, %if.then40.i.err_crtc.i_crit_edge ], [ %call57.i, %if.then59.i ], [ %call62.i, %err_crtc_init.i ], [ -12, %armada_updatel.exit.i.err_crtc.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %cleanup27

cleanup27:                                        ; preds = %err_crtc.i, %if.end71.i, %if.end65.i.cleanup27_crit_edge, %if.then4.i, %if.then.i, %do.end, %if.else.cleanup27_crit_edge, %if.then2.cleanup27_crit_edge, %entry.cleanup27_crit_edge
  %retval.2 = phi i32 [ %call1, %entry.cleanup27_crit_edge ], [ %13, %if.then.i ], [ %ret.0.i, %err_crtc.i ], [ %call74.i, %if.end71.i ], [ -12, %if.then4.i ], [ %call68.i, %if.end65.i.cleanup27_crit_edge ], [ -6, %if.then2.cleanup27_crit_edge ], [ -6, %do.end ], [ -6, %if.else.cleanup27_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_lcd_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @armada_drm_crtc_destroy(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_drm_irq(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.armada_crtc, ptr %arg, i32 0, i32 4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 452
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !69
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %5, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #10, !srcloc !70
  tail call fastcc void @trace_armada_drm_irq(ptr noundef %arg, i32 noundef %3)
  %irq_ena = getelementptr inbounds %struct.armada_crtc, ptr %arg, i32 0, i32 19
  %6 = ptrtoint ptr %irq_ena to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_ena, align 8
  %and = and i32 %3, 213909504
  %and3 = and i32 %and, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %and.i = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %num.i = getelementptr inbounds %struct.armada_crtc, ptr %arg, i32 0, i32 3
  %10 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num.i, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %11) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %and2.i = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.if.end6.i_crit_edge, label %if.then4.i

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %num5.i = getelementptr inbounds %struct.armada_crtc, ptr %arg, i32 0, i32 3
  %12 = ptrtoint ptr %num5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num5.i, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %13) #10
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  %and7.i = and i32 %3, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end6.i.if.end10.i_crit_edge, label %if.then9.i

if.end6.i.if.end10.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %arg) #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.end6.i.if.end10.i_crit_edge
  %irq_lock.i = getelementptr inbounds %struct.armada_crtc, ptr %arg, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %irq_lock.i) #10
  %and11.i = and i32 %3, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end26.i_crit_edge, label %land.lhs.true.i

if.end10.i.if.end26.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

land.lhs.true.i:                                  ; preds = %if.end10.i
  %interlaced.i = getelementptr inbounds %struct.armada_crtc, ptr %arg, i32 0, i32 7
  %14 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %interlaced.i, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not.i = icmp eq i8 %15, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i.if.end26.i_crit_edge, label %if.then14.i

land.lhs.true.i.if.end26.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i

if.then14.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %and15.i = lshr i32 %3, 27
  %and15.lobit.i = and i32 %and15.i, 1
  %16 = xor i32 %and15.lobit.i, 1
  %arrayidx.i = getelementptr %struct.armada_crtc, ptr %arg, i32 0, i32 6, i32 %16
  %spu_v_porch.i = getelementptr %struct.armada_crtc, ptr %arg, i32 0, i32 6, i32 %16, i32 1
  %17 = ptrtoint ptr %spu_v_porch.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %spu_v_porch.i, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  %add.ptr.i = getelementptr i8, ptr %9, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %19) #10, !srcloc !70
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  %add.ptr19.i = getelementptr i8, ptr %9, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19.i, i32 %22) #10, !srcloc !70
  %add.ptr20.i = getelementptr i8, ptr %9, i32 132
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #10, !srcloc !69
  %24 = and i32 %23, 14683904
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  %spu_adv_reg.i = getelementptr %struct.armada_crtc, ptr %arg, i32 0, i32 6, i32 %16, i32 2
  %26 = ptrtoint ptr %spu_adv_reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %spu_adv_reg.i, align 4
  %or.i = or i32 %25, %27
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %28) #10, !srcloc !70
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then14.i, %land.lhs.true.i.if.end26.i_crit_edge, %if.end10.i.if.end26.i_crit_edge
  %29 = ptrtoint ptr %irq_ena to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq_ena, align 8
  %and27.i = and i32 %3, 4194304
  %and28.i = and i32 %and27.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end26.i.if.end42.i_crit_edge, label %if.then30.i

if.end26.i.if.end42.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

if.then30.i:                                      ; preds = %if.end26.i
  %update_pending.i = getelementptr inbounds %struct.armada_crtc, ptr %arg, i32 0, i32 20
  %31 = ptrtoint ptr %update_pending.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %update_pending.i, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool31.not.i = icmp eq i8 %32, 0
  br i1 %tobool31.not.i, label %if.then30.i.if.end34.i_crit_edge, label %if.then32.i

if.then30.i.if.end34.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34.i

if.then32.i:                                      ; preds = %if.then30.i
  %regs.i = getelementptr inbounds %struct.armada_crtc, ptr %arg, i32 0, i32 23
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %cmp.not12.i.i = icmp eq i32 %36, -1
  br i1 %cmp.not12.i.i, label %if.then32.i.armada_drm_crtc_update_regs.exit.i_crit_edge, label %if.then32.i.while.body.i.i_crit_edge

if.then32.i.while.body.i.i_crit_edge:             ; preds = %if.then32.i
  br label %while.body.i.i

if.then32.i.armada_drm_crtc_update_regs.exit.i_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_drm_crtc_update_regs.exit.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %if.then32.i.while.body.i.i_crit_edge
  %37 = phi i32 [ %48, %if.end.i.i.while.body.i.i_crit_edge ], [ %36, %if.then32.i.while.body.i.i_crit_edge ]
  %regs.addr.013.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %34, %if.then32.i.while.body.i.i_crit_edge ]
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 %37
  %mask.i.i = getelementptr inbounds %struct.armada_regs, ptr %regs.addr.013.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp2.not.i.i = icmp eq i32 %41, 0
  br i1 %cmp2.not.i.i, label %while.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i

while.body.i.i.if.end.i.i_crit_edge:              ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !69
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #10
  %and.i.i = and i32 %43, %41
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %while.body.i.i.if.end.i.i_crit_edge
  %val.0.i.i = phi i32 [ %and.i.i, %if.then.i.i ], [ 0, %while.body.i.i.if.end.i.i_crit_edge ]
  %val3.i.i = getelementptr inbounds %struct.armada_regs, ptr %regs.addr.013.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %val3.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val3.i.i, align 4
  %or.i.i = or i32 %45, %val.0.i.i
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %46) #10, !srcloc !70
  %incdec.ptr.i.i = getelementptr %struct.armada_regs, ptr %regs.addr.013.i.i, i32 1
  %47 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %incdec.ptr.i.i, align 4
  %cmp.not.i.i = icmp eq i32 %48, -1
  br i1 %cmp.not.i.i, label %if.end.i.i.armada_drm_crtc_update_regs.exit.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i.i

if.end.i.i.armada_drm_crtc_update_regs.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_drm_crtc_update_regs.exit.i

armada_drm_crtc_update_regs.exit.i:               ; preds = %if.end.i.i.armada_drm_crtc_update_regs.exit.i_crit_edge, %if.then32.i.armada_drm_crtc_update_regs.exit.i_crit_edge
  %49 = ptrtoint ptr %update_pending.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %update_pending.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %armada_drm_crtc_update_regs.exit.i, %if.then30.i.if.end34.i_crit_edge
  %cursor_update.i = getelementptr inbounds %struct.armada_crtc, ptr %arg, i32 0, i32 8
  %50 = ptrtoint ptr %cursor_update.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %cursor_update.i, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool35.not.i = icmp eq i8 %51, 0
  br i1 %tobool35.not.i, label %if.end34.i.if.end41.i_crit_edge, label %if.then36.i

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41.i

if.then36.i:                                      ; preds = %if.end34.i
  %cursor_hw_pos.i = getelementptr inbounds %struct.armada_crtc, ptr %arg, i32 0, i32 12
  %52 = ptrtoint ptr %cursor_hw_pos.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %cursor_hw_pos.i, align 4
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #10
  %add.ptr37.i = getelementptr i8, ptr %9, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %54) #10, !srcloc !70
  %cursor_hw_sz.i = getelementptr inbounds %struct.armada_crtc, ptr %arg, i32 0, i32 13
  %55 = ptrtoint ptr %cursor_hw_sz.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cursor_hw_sz.i, align 8
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #10
  %add.ptr38.i = getelementptr i8, ptr %9, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 %57) #10, !srcloc !70
  %add.ptr39.i = getelementptr i8, ptr %9, i32 400
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #10, !srcloc !69
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #10
  %and.i120.i = and i32 %59, -117440513
  %or.i121.i = or i32 %and.i120.i, 16777216
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %or.i121.i)
  %cmp.not.i122.i = icmp eq i32 %59, %or.i121.i
  br i1 %cmp.not.i122.i, label %if.then36.i.armada_updatel.exit.i_crit_edge, label %if.then.i123.i

if.then36.i.armada_updatel.exit.i_crit_edge:      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_updatel.exit.i

if.then.i123.i:                                   ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = tail call i32 @llvm.bswap.i32(i32 %or.i121.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39.i, i32 %60) #10, !srcloc !70
  br label %armada_updatel.exit.i

armada_updatel.exit.i:                            ; preds = %if.then.i123.i, %if.then36.i.armada_updatel.exit.i_crit_edge
  %61 = ptrtoint ptr %cursor_update.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %cursor_update.i, align 1
  br label %if.end41.i

if.end41.i:                                       ; preds = %armada_updatel.exit.i, %if.end34.i.if.end41.i_crit_edge
  %62 = ptrtoint ptr %irq_ena to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq_ena, align 8
  %and.i125.i = and i32 %63, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125.i)
  %tobool.not.i.i = icmp eq i32 %and.i125.i, 0
  br i1 %tobool.not.i.i, label %if.end41.i.if.end42.i_crit_edge, label %if.then.i128.i

if.end41.i.if.end42.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42.i

if.then.i128.i:                                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  %and2.i.i = and i32 %63, -4194305
  %64 = ptrtoint ptr %irq_ena to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %and2.i.i, ptr %irq_ena, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @arm_heavy_mb() #10
  %65 = ptrtoint ptr %irq_ena to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq_ena, align 8
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #10
  %68 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base, align 4
  %add.ptr.i127.i = getelementptr i8, ptr %69, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127.i, i32 %67) #10, !srcloc !70
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then.i128.i, %if.end41.i.if.end42.i_crit_edge, %if.end26.i.if.end42.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock.i) #10
  br i1 %tobool8.not.i, label %if.end42.i.cleanup_crit_edge, label %land.lhs.true46.i

if.end42.i.cleanup_crit_edge:                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true46.i:                                ; preds = %if.end42.i
  %update_pending47.i = getelementptr inbounds %struct.armada_crtc, ptr %arg, i32 0, i32 20
  %70 = ptrtoint ptr %update_pending47.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %update_pending47.i, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool48.not.i = icmp eq i8 %71, 0
  br i1 %tobool48.not.i, label %if.then49.i, label %land.lhs.true46.i.cleanup_crit_edge

land.lhs.true46.i.cleanup_crit_edge:              ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then49.i:                                      ; preds = %land.lhs.true46.i
  %event50.i = getelementptr inbounds %struct.armada_crtc, ptr %arg, i32 0, i32 21
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event50.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !73
  tail call void @llvm.prefetch.p0(ptr %event50.i, i32 1, i32 3, i32 1) #10
  %72 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %event50.i) #10, !srcloc !74
  %asmresult.i.i = extractvalue { i32, i32 } %72, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool67.not.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool67.not.i, label %if.then49.i.cleanup_crit_edge, label %if.then68.i

if.then49.i.cleanup_crit_edge:                    ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then68.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #12
  %73 = inttoptr i32 %asmresult.i.i to ptr
  %74 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arg, align 8
  %event_lock.i = getelementptr inbounds %struct.drm_device, ptr %75, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %event_lock.i) #10
  tail call void @drm_crtc_send_vblank_event(ptr noundef %arg, ptr noundef nonnull %73) #10
  %76 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arg, align 8
  %event_lock73.i = getelementptr inbounds %struct.drm_device, ptr %77, i32 0, i32 28
  tail call void @_raw_spin_unlock(ptr noundef %event_lock73.i) #10
  tail call void @drm_crtc_vblank_put(ptr noundef %arg) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then68.i, %if.then49.i.cleanup_crit_edge, %land.lhs.true46.i.cleanup_crit_edge, %if.end42.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end42.i.cleanup_crit_edge ], [ 1, %land.lhs.true46.i.cleanup_crit_edge ], [ 1, %if.then49.i.cleanup_crit_edge ], [ 1, %if.then68.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armada_drm_primary_plane_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @armada_overlay_plane_create(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_armada_drm_irq(ptr noundef %crtc, i32 noundef %stat) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_armada_drm_irq, i32 0, i32 1), ptr blockaddress(@trace_armada_drm_irq, %do.body)) #10
          to label %if.end48 [label %do.body], !srcloc !76

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !59) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.read_register.i32(metadata !59) #10
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !78
  %call42 = tail call i32 @__traceiter_armada_drm_irq(ptr noundef null, ptr noundef %crtc, i32 noundef %stat) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !79
  %13 = tail call i32 @llvm.read_register.i32(metadata !59) #10
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !59) #10
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !77

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 108, i32 noundef 9, ptr noundef null) #10
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !59) #10
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_armada_drm_irq, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_armada_drm_irq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_armada_drm_irq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @trace_armada_drm_irq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.14, i32 noundef 28, ptr noundef nonnull @.str.15) #10
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !81
  %31 = tail call i32 @llvm.read_register.i32(metadata !59) #10
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_armada_drm_irq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_drm_crtc_cursor_set(ptr noundef %crtc, ptr noundef %file, i32 noundef %handle, i32 noundef %w, i32 noundef %h) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 1
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool1.not = icmp eq i32 %handle, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %w)
  %cmp.not = icmp eq i32 %w, 0
  %or.cond = or i1 %tobool1.not, %cmp.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h)
  %cmp3.not = icmp eq i32 %h, 0
  %or.cond69 = or i1 %or.cond, %cmp3.not
  br i1 %or.cond69, label %if.end.if.end26_crit_edge, label %if.then4

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %w)
  %cmp5 = icmp ugt i32 %w, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %h)
  %cmp6 = icmp ugt i32 %h, 64
  %or.cond70 = or i1 %cmp5, %cmp6
  br i1 %or.cond70, label %if.then4.cleanup_crit_edge, label %lor.lhs.false7

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false7:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %w)
  %cmp8 = icmp ugt i32 %w, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %h)
  %cmp10 = icmp ugt i32 %h, 32
  %or.cond71 = and i1 %cmp8, %cmp10
  br i1 %or.cond71, label %lor.lhs.false7.cleanup_crit_edge, label %if.end12

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false7
  %call.i = tail call ptr @drm_gem_object_lookup(ptr noundef %file, i32 noundef %handle) #10
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  %addr = getelementptr inbounds %struct.armada_gem_object, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %addr, align 8
  %tobool16.not = icmp eq ptr %5, null
  br i1 %tobool16.not, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @drm_gem_object_put(ptr noundef nonnull %call.i)
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %size = getelementptr inbounds %struct.drm_gem_object, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  %mul = shl nuw nsw i32 %w, 2
  %mul21 = mul nuw nsw i32 %mul, %h
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mul21)
  %cmp22 = icmp ult i32 %7, %mul21
  br i1 %cmp22, label %if.then23, label %if.end19.if.end26_crit_edge

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #10
  tail call fastcc void @drm_gem_object_put(ptr noundef nonnull %call.i)
  br label %cleanup

if.end26:                                         ; preds = %if.end19.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %obj.0 = phi ptr [ %call.i, %if.end19.if.end26_crit_edge ], [ null, %if.end.if.end26_crit_edge ]
  %cursor_obj = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 9
  %8 = ptrtoint ptr %cursor_obj to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cursor_obj, align 8
  %tobool27.not = icmp eq ptr %9, null
  br i1 %tobool27.not, label %if.end26.if.end33_crit_edge, label %if.then28

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then28:                                        ; preds = %if.end26
  %update = getelementptr inbounds %struct.armada_gem_object, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %update to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %update, align 4
  %11 = ptrtoint ptr %cursor_obj to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cursor_obj, align 8
  %update_data = getelementptr inbounds %struct.armada_gem_object, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %update_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %update_data, align 8
  %14 = load ptr, ptr %cursor_obj, align 8
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then28.if.end33_crit_edge, label %if.then.i

if.then28.if.end33_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then.i:                                        ; preds = %if.then28
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %14, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr nonnull %14, i32 1, i32 3, i32 1) #10
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %14, ptr nonnull %14, i32 1, ptr nonnull elementtype(i32) %14) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end33_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !77

if.end5.i.i.i.i.i.i.if.end33_crit_edge:           ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %14, i32 noundef 3) #10
  br label %if.end33

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  tail call void @drm_gem_object_free(ptr noundef nonnull %14) #10
  br label %if.end33

if.end33:                                         ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end33_crit_edge, %if.then28.if.end33_crit_edge, %if.end26.if.end33_crit_edge
  %16 = ptrtoint ptr %cursor_obj to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %obj.0, ptr %cursor_obj, align 8
  %cursor_w = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 14
  %17 = ptrtoint ptr %cursor_w to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %w, ptr %cursor_w, align 4
  %cursor_h = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 15
  %18 = ptrtoint ptr %cursor_h to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %h, ptr %cursor_h, align 8
  tail call fastcc void @armada_drm_crtc_cursor_update(ptr noundef %crtc, i1 noundef zeroext true)
  %tobool36.not = icmp eq ptr %obj.0, null
  br i1 %tobool36.not, label %if.end33.cleanup_crit_edge, label %if.then37

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %update_data38 = getelementptr inbounds %struct.armada_gem_object, ptr %obj.0, i32 0, i32 9
  %19 = ptrtoint ptr %update_data38 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %crtc, ptr %update_data38, align 8
  %update39 = getelementptr inbounds %struct.armada_gem_object, ptr %obj.0, i32 0, i32 8
  %20 = ptrtoint ptr %update39 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @cursor_update, ptr %update39, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %if.end33.cleanup_crit_edge, %if.then23, %if.then17, %if.end12.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then23 ], [ -22, %if.then17 ], [ -6, %entry.cleanup_crit_edge ], [ -12, %lor.lhs.false7.cleanup_crit_edge ], [ -12, %if.then4.cleanup_crit_edge ], [ -2, %if.end12.cleanup_crit_edge ], [ 0, %if.then37 ], [ 0, %if.end33.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_drm_crtc_cursor_move(ptr noundef %crtc, i32 noundef %x, i32 noundef %y) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %variant = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 1
  %0 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %variant, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %cursor_x = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 10
  %4 = ptrtoint ptr %cursor_x to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %x, ptr %cursor_x, align 4
  %cursor_y = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 11
  %5 = ptrtoint ptr %cursor_y to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %y, ptr %cursor_y, align 8
  tail call fastcc void @armada_drm_crtc_cursor_update(ptr noundef %crtc, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_drm_crtc_destroy(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %cursor_obj = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 9
  %2 = ptrtoint ptr %cursor_obj to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cursor_obj, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %3, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr nonnull %3, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %3, ptr nonnull %3, i32 1, ptr nonnull elementtype(i32) %3) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !77

if.end5.i.i.i.i.i.i.if.end_crit_edge:             ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %3, i32 noundef 3) #10
  br label %if.end

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  tail call void @drm_gem_object_free(ptr noundef nonnull %3) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  %num = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 3
  %5 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num, align 8
  %arrayidx = getelementptr %struct.armada_private, ptr %1, i32 0, i32 2, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx, align 4
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #10
  %variant = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 1
  %8 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %variant, align 8
  %disable = getelementptr inbounds %struct.armada_variant, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %disable, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.end.if.end11_crit_edge, label %if.then8

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %11(ptr noundef %crtc) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end.if.end11_crit_edge
  %base = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 4
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %13, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 0) #10, !srcloc !70
  %port = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 1
  %14 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port, align 4
  tail call void @of_node_put(ptr noundef %15) #10
  tail call void @kfree(ptr noundef %crtc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_crtc_duplicate_state(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_destroy_state(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_drm_crtc_late_register(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @armada_drm_crtc_debugfs_init(ptr noundef %crtc) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_drm_crtc_enable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 18
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %irq_ena.i = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 19
  %0 = ptrtoint ptr %irq_ena.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_ena.i, align 8
  %and.i = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i.not, label %if.then.i, label %entry.armada_drm_crtc_enable_irq.exit_crit_edge

entry.armada_drm_crtc_enable_irq.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_drm_crtc_enable_irq.exit

if.then.i:                                        ; preds = %entry
  %or.i = or i32 %1, 8388608
  %2 = ptrtoint ptr %irq_ena.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or.i, ptr %irq_ena.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %irq_ena.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq_ena.i, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  %base.i = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 4
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #10, !srcloc !70
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %9, i32 452
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #10, !srcloc !69
  %11 = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then.i.armada_drm_crtc_enable_irq.exit_crit_edge, label %do.body7.i

if.then.i.armada_drm_crtc_enable_irq.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_drm_crtc_enable_irq.exit

do.body7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  tail call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %13, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #10, !srcloc !70
  br label %armada_drm_crtc_enable_irq.exit

armada_drm_crtc_enable_irq.exit:                  ; preds = %do.body7.i, %if.then.i.armada_drm_crtc_enable_irq.exit_crit_edge, %entry.armada_drm_crtc_enable_irq.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_drm_crtc_disable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 18
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %irq_ena.i = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 19
  %0 = ptrtoint ptr %irq_ena.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_ena.i, align 8
  %and.i = and i32 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.armada_drm_crtc_disable_irq.exit_crit_edge, label %if.then.i

entry.armada_drm_crtc_disable_irq.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_drm_crtc_disable_irq.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and2.i = and i32 %1, -8388609
  %2 = ptrtoint ptr %irq_ena.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and2.i, ptr %irq_ena.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @arm_heavy_mb() #10
  %3 = ptrtoint ptr %irq_ena.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq_ena.i, align 8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  %base.i = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 4
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #10, !srcloc !70
  br label %armada_drm_crtc_disable_irq.exit

armada_drm_crtc_disable_irq.exit:                 ; preds = %if.then.i, %entry.armada_drm_crtc_disable_irq.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @drm_gem_object_put(ptr noundef %obj) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %obj, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %obj, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr nonnull %obj, i32 1, i32 3, i32 1) #10
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %obj, ptr nonnull %obj, i32 1, ptr nonnull elementtype(i32) %obj) #10, !srcloc !83
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !77

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef nonnull %obj, i32 noundef 3) #10
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  tail call void @drm_gem_object_free(ptr noundef nonnull %obj) #10
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @armada_drm_crtc_cursor_update(ptr noundef %dcrtc, i1 noundef zeroext %reload) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cursor_w = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 14
  %0 = ptrtoint ptr %cursor_w to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cursor_w, align 4
  %cursor_h = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 15
  %2 = ptrtoint ptr %cursor_h to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cursor_h, align 8
  %cursor_x = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 10
  %4 = ptrtoint ptr %cursor_x to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cursor_x, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %sub = sub i32 0, %5
  %6 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %sub)
  br label %if.end24

if.else:                                          ; preds = %entry
  %add = add i32 %5, %1
  %hdisplay = getelementptr inbounds %struct.drm_crtc, ptr %dcrtc, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv)
  %cmp5 = icmp ugt i32 %add, %conv
  br i1 %cmp5, label %if.then7, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %sub14 = sub nsw i32 %conv, %5
  %9 = tail call i32 @llvm.smax.i32(i32 %sub14, i32 0)
  br label %if.end24

if.end24:                                         ; preds = %if.then7, %if.else.if.end24_crit_edge, %if.then
  %w.0 = phi i32 [ %6, %if.then ], [ %9, %if.then7 ], [ %1, %if.else.if.end24_crit_edge ]
  %xscr.0 = phi i32 [ 0, %if.then ], [ %5, %if.then7 ], [ %5, %if.else.if.end24_crit_edge ]
  %xoff.0 = phi i32 [ %sub, %if.then ], [ 0, %if.then7 ], [ 0, %if.else.if.end24_crit_edge ]
  %cursor_y = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 11
  %10 = ptrtoint ptr %cursor_y to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cursor_y, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp25 = icmp slt i32 %11, 0
  br i1 %cmp25, label %if.then27, label %if.else38

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %sub29 = sub i32 0, %11
  %12 = tail call i32 @llvm.usub.sat.i32(i32 %3, i32 %sub29)
  br label %if.end64

if.else38:                                        ; preds = %if.end24
  %add40 = add i32 %11, %3
  %vdisplay = getelementptr inbounds %struct.drm_crtc, ptr %dcrtc, i32 0, i32 12, i32 6
  %13 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdisplay, align 2
  %conv43 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add40, i32 %conv43)
  %cmp44 = icmp ugt i32 %add40, %conv43
  br i1 %cmp44, label %if.then46, label %if.else38.if.end64_crit_edge

if.else38.if.end64_crit_edge:                     ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

if.then46:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #12
  %sub53 = sub nsw i32 %conv43, %11
  %15 = tail call i32 @llvm.smax.i32(i32 %sub53, i32 0)
  br label %if.end64

if.end64:                                         ; preds = %if.then46, %if.else38.if.end64_crit_edge, %if.then27
  %h.0 = phi i32 [ %12, %if.then27 ], [ %15, %if.then46 ], [ %3, %if.else38.if.end64_crit_edge ]
  %yscr.0 = phi i32 [ 0, %if.then27 ], [ %11, %if.then46 ], [ %11, %if.else38.if.end64_crit_edge ]
  %yoff.0 = phi i32 [ %sub29, %if.then27 ], [ 0, %if.then46 ], [ 0, %if.else38.if.end64_crit_edge ]
  %interlaced = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 7
  %16 = ptrtoint ptr %interlaced to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %interlaced, align 4, !range !71
  %18 = zext i8 %17 to i32
  %h.1 = lshr i32 %h.0, %18
  %yscr.1 = lshr i32 %yscr.0, %18
  %s.0 = shl i32 %1, %18
  %cursor_obj = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 9
  %19 = ptrtoint ptr %cursor_obj to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cursor_obj, align 8
  %tobool69.not = icmp eq ptr %20, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %h.1)
  %tobool70.not = icmp eq i32 %h.1, 0
  %or.cond = select i1 %tobool69.not, i1 true, i1 %tobool70.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %w.0)
  %tobool72.not = icmp eq i32 %w.0, 0
  %or.cond4 = select i1 %or.cond, i1 true, i1 %tobool72.not
  %irq_lock = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #10
  br i1 %or.cond4, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.end64
  %cursor_update = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 8
  %21 = ptrtoint ptr %cursor_update to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %cursor_update, align 1
  %base = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 4
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %23, i32 400
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !69
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  %and.i = and i32 %25, -16777217
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %and.i)
  %cmp.not.i = icmp eq i32 %25, %and.i
  br i1 %cmp.not.i, label %if.then73.cleanup_crit_edge, label %if.then.i

if.then73.cleanup_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  %26 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %26) #10, !srcloc !70
  br label %cleanup

if.end75:                                         ; preds = %if.end64
  %base77 = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 4
  %27 = ptrtoint ptr %base77 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base77, align 4
  %add.ptr78 = getelementptr i8, ptr %28, i32 420
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #10, !srcloc !69
  %30 = ptrtoint ptr %base77 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base77, align 4
  %add.ptr81 = getelementptr i8, ptr %31, i32 420
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr81) #10, !srcloc !69
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  %and.i5 = and i32 %33, -32897
  %or.i = or i32 %and.i5, 32768
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %or.i)
  %cmp.not.i6 = icmp eq i32 %33, %or.i
  br i1 %cmp.not.i6, label %if.end75.armada_updatel.exit8_crit_edge, label %if.then.i7

if.end75.armada_updatel.exit8_crit_edge:          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_updatel.exit8

if.then.i7:                                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81, i32 %34) #10, !srcloc !70
  br label %armada_updatel.exit8

armada_updatel.exit8:                             ; preds = %if.then.i7, %if.end75.armada_updatel.exit8_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock) #10
  %35 = and i32 %29, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool83.not = icmp eq i32 %35, 0
  br i1 %tobool83.not, label %if.then84, label %if.end86

if.then84:                                        ; preds = %armada_updatel.exit8
  %36 = ptrtoint ptr %base77 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base77, align 4
  %add.ptr.i = getelementptr i8, ptr %37, i32 412
  %add.ptr2.i = getelementptr i8, ptr %37, i32 408
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then84
  %addr.06.i = phi i32 [ 0, %if.then84 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1431655765) #10, !srcloc !70
  %or1.i = or i32 %addr.06.i, 36608
  %38 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %38) #10, !srcloc !70
  %inc.i = add nuw nsw i32 %addr.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %if.end86.thread, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end86:                                         ; preds = %armada_updatel.exit8
  %cursor_hw_sz = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 13
  %39 = ptrtoint ptr %cursor_hw_sz to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cursor_hw_sz, align 8
  %shl = shl i32 %h.1, 16
  %or = or i32 %shl, %w.0
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %or)
  %cmp87.not = icmp eq i32 %40, %or
  br i1 %cmp87.not, label %if.end95, label %if.end86.if.then89_crit_edge

if.end86.if.then89_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then89

if.end86.thread:                                  ; preds = %for.body.i
  %cursor_hw_sz26 = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 13
  %41 = ptrtoint ptr %cursor_hw_sz26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cursor_hw_sz26, align 8
  %shl27 = shl i32 %h.1, 16
  %or28 = or i32 %shl27, %w.0
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %or28)
  %cmp87.not29 = icmp eq i32 %42, %or28
  br i1 %cmp87.not29, label %if.end86.thread.for.body.lr.ph.i_crit_edge, label %if.end86.thread.if.then89_crit_edge

if.end86.thread.if.then89_crit_edge:              ; preds = %if.end86.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then89

if.end86.thread.for.body.lr.ph.i_crit_edge:       ; preds = %if.end86.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i

if.then89:                                        ; preds = %if.end86.thread.if.then89_crit_edge, %if.end86.if.then89_crit_edge
  %or37 = phi i32 [ %or28, %if.end86.thread.if.then89_crit_edge ], [ %or, %if.end86.if.then89_crit_edge ]
  %cursor_hw_sz33 = phi ptr [ %cursor_hw_sz26, %if.end86.thread.if.then89_crit_edge ], [ %cursor_hw_sz, %if.end86.if.then89_crit_edge ]
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #10
  %cursor_update91 = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 8
  %43 = ptrtoint ptr %cursor_update91 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %cursor_update91, align 1
  %44 = ptrtoint ptr %base77 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base77, align 4
  %add.ptr93 = getelementptr i8, ptr %45, i32 400
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr93) #10, !srcloc !69
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #10
  %and.i9 = and i32 %47, -16777217
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %and.i9)
  %cmp.not.i10 = icmp eq i32 %47, %and.i9
  br i1 %cmp.not.i10, label %if.then89.armada_updatel.exit12_crit_edge, label %if.then.i11

if.then89.armada_updatel.exit12_crit_edge:        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_updatel.exit12

if.then.i11:                                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  %48 = tail call i32 @llvm.bswap.i32(i32 %and.i9) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %48) #10, !srcloc !70
  br label %armada_updatel.exit12

armada_updatel.exit12:                            ; preds = %if.then.i11, %if.then89.armada_updatel.exit12_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock) #10
  br label %for.body.lr.ph.i

if.end95:                                         ; preds = %if.end86
  br i1 %reload, label %if.end95.for.body.lr.ph.i_crit_edge, label %if.end95.if.end103_crit_edge

if.end95.if.end103_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.end95.for.body.lr.ph.i_crit_edge:              ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %if.end95.for.body.lr.ph.i_crit_edge, %armada_updatel.exit12, %if.end86.thread.for.body.lr.ph.i_crit_edge
  %or36 = phi i32 [ %or37, %armada_updatel.exit12 ], [ %40, %if.end95.for.body.lr.ph.i_crit_edge ], [ %or28, %if.end86.thread.for.body.lr.ph.i_crit_edge ]
  %cursor_hw_sz32 = phi ptr [ %cursor_hw_sz33, %armada_updatel.exit12 ], [ %cursor_hw_sz, %if.end95.for.body.lr.ph.i_crit_edge ], [ %cursor_hw_sz26, %if.end86.thread.for.body.lr.ph.i_crit_edge ]
  %49 = ptrtoint ptr %cursor_obj to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cursor_obj, align 8
  %addr = getelementptr inbounds %struct.armada_gem_object, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %addr, align 8
  %mul99 = mul i32 %s.0, %yoff.0
  %add100 = add i32 %mul99, %xoff.0
  %add.ptr101 = getelementptr i32, ptr %52, i32 %add100
  %53 = ptrtoint ptr %base77 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base77, align 4
  %add.ptr.i13 = getelementptr i8, ptr %54, i32 412
  %add.ptr8.i = getelementptr i8, ptr %54, i32 408
  %add.ptr9.i = getelementptr i8, ptr %54, i32 268
  br label %for.body3.preheader.i

for.body3.preheader.i:                            ; preds = %for.end.i.for.body3.preheader.i_crit_edge, %for.body.lr.ph.i
  %addr.039.i = phi i32 [ 3072, %for.body.lr.ph.i ], [ %spec.store.select.i, %for.end.i.for.body3.preheader.i_crit_edge ]
  %y.038.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc18.i, %for.end.i.for.body3.preheader.i_crit_edge ]
  %mul.i = mul i32 %y.038.i, %s.0
  %arrayidx.i = getelementptr i32, ptr %add.ptr101, i32 %mul.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.for.body3.i_crit_edge, %for.body3.preheader.i
  %addr.136.i = phi i32 [ %spec.store.select.i, %for.body3.i.for.body3.i_crit_edge ], [ %addr.039.i, %for.body3.preheader.i ]
  %p.035.i = phi ptr [ %incdec.ptr.i, %for.body3.i.for.body3.i_crit_edge ], [ %arrayidx.i, %for.body3.preheader.i ]
  %x.034.i = phi i32 [ %inc.i17, %for.body3.i.for.body3.i_crit_edge ], [ 0, %for.body3.preheader.i ]
  %55 = ptrtoint ptr %p.035.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %p.035.i, align 4
  %and.i15 = and i32 %56, -16711936
  %and4.i = shl i32 %56, 16
  %shl.i = and i32 %and4.i, 16711680
  %or.i16 = or i32 %shl.i, %and.i15
  %and5.i = lshr i32 %56, 16
  %shr.i = and i32 %and5.i, 255
  %or6.i = or i32 %or.i16, %shr.i
  %57 = tail call i32 @llvm.bswap.i32(i32 %or6.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %57) #10, !srcloc !70
  %or7.i = or i32 %addr.136.i, 32768
  %58 = tail call i32 @llvm.bswap.i32(i32 %or7.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %58) #10, !srcloc !70
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #10, !srcloc !69
  %add.i = add i32 %addr.136.i, 1
  %and10.i = and i32 %add.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %cmp11.i = icmp eq i32 %and10.i, 0
  %add12.i = add i32 %addr.136.i, 3841
  %spec.select.i = select i1 %cmp11.i, i32 %add12.i, i32 %add.i
  %and13.i = and i32 %spec.select.i, 12543
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %cmp14.i = icmp eq i32 %and13.i, 0
  %spec.store.select.i = select i1 %cmp14.i, i32 3328, i32 %spec.select.i
  %inc.i17 = add nuw i32 %x.034.i, 1
  %incdec.ptr.i = getelementptr i32, ptr %p.035.i, i32 1
  %exitcond.not.i18 = icmp eq i32 %inc.i17, %w.0
  br i1 %exitcond.not.i18, label %for.end.i, label %for.body3.i.for.body3.i_crit_edge

for.body3.i.for.body3.i_crit_edge:                ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3.i

for.end.i:                                        ; preds = %for.body3.i
  %inc18.i = add nuw i32 %y.038.i, 1
  %exitcond40.not.i = icmp eq i32 %inc18.i, %h.1
  br i1 %exitcond40.not.i, label %for.end.i.if.end103_crit_edge, label %for.end.i.for.body3.preheader.i_crit_edge

for.end.i.for.body3.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body3.preheader.i

for.end.i.if.end103_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end103

if.end103:                                        ; preds = %for.end.i.if.end103_crit_edge, %if.end95.if.end103_crit_edge
  %or35 = phi i32 [ %40, %if.end95.if.end103_crit_edge ], [ %or36, %for.end.i.if.end103_crit_edge ]
  %cursor_hw_sz31 = phi ptr [ %cursor_hw_sz, %if.end95.if.end103_crit_edge ], [ %cursor_hw_sz32, %for.end.i.if.end103_crit_edge ]
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #10
  %shl105 = shl i32 %yscr.1, 16
  %or106 = or i32 %shl105, %xscr.0
  %cursor_hw_pos = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 12
  %60 = ptrtoint ptr %cursor_hw_pos to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or106, ptr %cursor_hw_pos, align 4
  %61 = ptrtoint ptr %cursor_hw_sz31 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or35, ptr %cursor_hw_sz31, align 8
  %cursor_update110 = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 8
  %62 = ptrtoint ptr %cursor_update110 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %cursor_update110, align 1
  %irq_ena.i = getelementptr inbounds %struct.armada_crtc, ptr %dcrtc, i32 0, i32 19
  %63 = ptrtoint ptr %irq_ena.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %irq_ena.i, align 8
  %and.i19 = and i32 %64, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19)
  %cmp.not.i20.not = icmp eq i32 %and.i19, 0
  br i1 %cmp.not.i20.not, label %if.then.i24, label %if.end103.cleanup_crit_edge

if.end103.cleanup_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i24:                                      ; preds = %if.end103
  %or.i21 = or i32 %64, 4194304
  %65 = ptrtoint ptr %irq_ena.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or.i21, ptr %irq_ena.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @arm_heavy_mb() #10
  %66 = ptrtoint ptr %irq_ena.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %irq_ena.i, align 8
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #10
  %69 = ptrtoint ptr %base77 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base77, align 4
  %add.ptr.i22 = getelementptr i8, ptr %70, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22, i32 %68) #10, !srcloc !70
  %71 = ptrtoint ptr %base77 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base77, align 4
  %add.ptr4.i = getelementptr i8, ptr %72, i32 452
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #10, !srcloc !69
  %74 = and i32 %73, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i = icmp eq i32 %74, 0
  br i1 %tobool.not.i, label %if.then.i24.cleanup_crit_edge, label %do.body7.i

if.then.i24.cleanup_crit_edge:                    ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body7.i:                                       ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  tail call void @arm_heavy_mb() #10
  %75 = ptrtoint ptr %base77 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base77, align 4
  %add.ptr10.i = getelementptr i8, ptr %76, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #10, !srcloc !70
  br label %cleanup

cleanup:                                          ; preds = %do.body7.i, %if.then.i24.cleanup_crit_edge, %if.end103.cleanup_crit_edge, %if.then.i, %if.then73.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cursor_update(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @armada_drm_crtc_cursor_update(ptr noundef %data, i1 noundef zeroext true)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @armada_drm_crtc_debugfs_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @armada_drm_crtc_mode_valid(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %mode) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vscan = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 10
  %0 = ptrtoint ptr %vscan to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vscan, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp = icmp ugt i16 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %and5 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %variant = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 1
  %4 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp ne i8 %7, 0
  %and11 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool12.not
  br i1 %or.cond, label %if.end14, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %and16 = and i32 %3, 11264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %. = select i1 %tobool17.not, i32 0, i32 -2
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 9, %entry.cleanup_crit_edge ], [ 8, %if.end.cleanup_crit_edge ], [ 3, %if.end3.cleanup_crit_edge ], [ 7, %if.end8.cleanup_crit_edge ], [ %., %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @armada_drm_crtc_mode_fixup(ptr noundef %crtc, ptr nocapture noundef readnone %mode, ptr noundef %adj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_mode_set_crtcinfo(ptr noundef %adj, i32 noundef 1) #10
  %vscan.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj, i32 0, i32 10
  %0 = ptrtoint ptr %vscan.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vscan.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp.i = icmp ugt i16 %1, 1
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %flags.i = getelementptr inbounds %struct.drm_display_mode, ptr %adj, i32 0, i32 11
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %4 = and i32 %3, 544
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end8.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %variant.i = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 1
  %6 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not.i = icmp ne i8 %9, 0
  %and11.i = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %or.cond.i = select i1 %tobool9.not.i, i1 true, i1 %tobool12.not.i
  %and16.i = and i32 %3, 11264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  %or.cond11 = select i1 %or.cond.i, i1 %tobool17.not.i, i1 false
  br i1 %or.cond11, label %if.end, label %if.end8.i.cleanup_crit_edge

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %variant.i, align 8
  %compute_clock = getelementptr inbounds %struct.armada_variant, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %compute_clock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %compute_clock, align 4
  %call1 = tail call i32 %13(ptr noundef %crtc, ptr noundef %adj, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end8.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool.not, %if.end ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end8.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_drm_crtc_mode_set_nofb(ptr noundef %crtc) #0 align 64 {
entry:
  %regs = alloca [17 x %struct.armada_regs], align 4
  %sclk = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %regs) #10
  %2 = call ptr @memset(ptr %regs, i32 255, i32 204)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sclk) #10
  %3 = ptrtoint ptr %sclk to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %sclk, align 4, !annotation !87
  %flags1 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 11
  %4 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags1, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and.lobit = lshr exact i32 %and, 4
  %6 = trunc i32 %and.lobit to i8
  %crtc_hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 16
  %7 = ptrtoint ptr %crtc_hsync_start to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %crtc_hsync_start, align 2
  %conv = zext i16 %8 to i32
  %crtc_hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 13
  %9 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %crtc_hdisplay, align 4
  %conv3 = zext i16 %10 to i32
  %sub = sub nsw i32 %conv, %conv3
  %crtc_htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 18
  %11 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %crtc_htotal, align 2
  %conv4 = zext i16 %12 to i32
  %crtc_hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 17
  %13 = ptrtoint ptr %crtc_hsync_end to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %crtc_hsync_end, align 4
  %conv5 = zext i16 %14 to i32
  %sub6 = sub nsw i32 %conv4, %conv5
  %crtc_vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 23
  %15 = ptrtoint ptr %crtc_vsync_start to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %crtc_vsync_start, align 4
  %conv7 = zext i16 %16 to i32
  %crtc_vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 20
  %17 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %crtc_vdisplay, align 2
  %conv8 = zext i16 %18 to i32
  %sub9 = sub nsw i32 %conv7, %conv8
  %crtc_vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 25
  %19 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %crtc_vtotal, align 4
  %conv10 = zext i16 %20 to i32
  %crtc_vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 24
  %21 = ptrtoint ptr %crtc_vsync_end to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %crtc_vsync_end, align 2
  %conv11 = zext i16 %22 to i32
  %sub12 = sub nsw i32 %conv10, %conv11
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %base, align 8
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 8
  %name13 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 31
  %call = tail call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode) #10
  %27 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %adjusted_mode, align 4
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %hdisplay, align 4
  %conv14 = zext i16 %30 to i32
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 2
  %31 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %hsync_start, align 2
  %conv15 = zext i16 %32 to i32
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 3
  %33 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %hsync_end, align 4
  %conv16 = zext i16 %34 to i32
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 4
  %35 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %htotal, align 2
  %conv17 = zext i16 %36 to i32
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 6
  %37 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vdisplay, align 2
  %conv18 = zext i16 %38 to i32
  %vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 7
  %39 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vsync_start, align 4
  %conv19 = zext i16 %40 to i32
  %vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 8
  %41 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %vsync_end, align 2
  %conv20 = zext i16 %42 to i32
  %vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 9
  %43 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %vtotal, align 4
  %conv21 = zext i16 %44 to i32
  %type = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 28
  %45 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %type, align 2
  %conv22 = zext i8 %46 to i32
  %47 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %24, ptr noundef %26, ptr noundef %name13, i32 noundef %call, i32 noundef %28, i32 noundef %conv14, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %conv17, i32 noundef %conv18, i32 noundef %conv19, i32 noundef %conv20, i32 noundef %conv21, i32 noundef %conv22, i32 noundef %48) #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.21, i32 noundef %sub6, i32 noundef %sub, i32 noundef %sub12, i32 noundef %sub9) #10
  %variant = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 1
  %49 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %variant, align 8
  %compute_clock = getelementptr inbounds %struct.armada_variant, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %compute_clock to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %compute_clock, align 4
  %call24 = call i32 %52(ptr noundef %crtc, ptr noundef %adjusted_mode, ptr noundef nonnull %sclk) #10
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 424, ptr %regs, align 4
  %mask = getelementptr inbounds %struct.armada_regs, ptr %regs, i32 0, i32 1
  %54 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %mask, align 4
  %55 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sclk, align 4
  %val28 = getelementptr inbounds %struct.armada_regs, ptr %regs, i32 0, i32 2
  %57 = ptrtoint ptr %val28 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %val28, align 4
  %irq_lock = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 18
  %call34 = call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %interlaced40 = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 7
  %58 = ptrtoint ptr %interlaced40 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %6, ptr %interlaced40, align 4
  %59 = ptrtoint ptr %crtc_vtotal to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %crtc_vtotal, align 4
  %conv43 = zext i16 %60 to i32
  %shl = shl nuw i32 %conv43, 16
  %61 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %crtc_htotal, align 2
  %conv45 = zext i16 %62 to i32
  %or = or i32 %shl, %conv45
  %v = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 6
  %arrayidx46 = getelementptr %struct.armada_crtc, ptr %crtc, i32 0, i32 6, i32 1
  %63 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or, ptr %arrayidx46, align 4
  %shl47 = shl i32 %sub12, 16
  %or48 = or i32 %shl47, %sub9
  %spu_v_porch = getelementptr %struct.armada_crtc, ptr %crtc, i32 0, i32 6, i32 1, i32 1
  %64 = ptrtoint ptr %spu_v_porch to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %or48, ptr %spu_v_porch, align 4
  %65 = ptrtoint ptr %crtc_hsync_start to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %crtc_hsync_start, align 2
  %conv52 = zext i16 %66 to i32
  %shl53 = shl i32 %conv52, 20
  %or54 = or i32 %shl53, %conv52
  %or55 = or i32 %or54, 4096
  %spu_adv_reg = getelementptr %struct.armada_crtc, ptr %crtc, i32 0, i32 6, i32 1, i32 2
  %67 = ptrtoint ptr %spu_adv_reg to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or55, ptr %spu_adv_reg, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %crtc_htotal to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %crtc_htotal, align 2
  %70 = lshr i16 %69, 1
  %div = zext i16 %70 to i32
  %sub61 = sub nsw i32 %conv52, %div
  %shl62 = shl i32 %sub61, 20
  %or63 = or i32 %sub61, %shl62
  %or64 = or i32 %or63, 4096
  %spu_adv_reg67 = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 6, i32 0, i32 2
  %71 = ptrtoint ptr %spu_adv_reg67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or64, ptr %spu_adv_reg67, align 4
  %add = add i32 %or, 65536
  %72 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add, ptr %v, align 4
  %add77 = add i32 %or48, 1
  %spu_v_porch80 = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 6, i32 0, i32 1
  %73 = ptrtoint ptr %spu_v_porch80 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %add77, ptr %spu_v_porch80, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %74 = call ptr @memcpy(ptr %v, ptr %arrayidx46, i32 12)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %75 = ptrtoint ptr %crtc_vdisplay to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %crtc_vdisplay, align 2
  %conv86 = zext i16 %76 to i32
  %shl87 = shl nuw i32 %conv86, 16
  %77 = ptrtoint ptr %crtc_hdisplay to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %crtc_hdisplay, align 4
  %conv89 = zext i16 %78 to i32
  %or90 = or i32 %shl87, %conv89
  %arrayidx94 = getelementptr inbounds %struct.armada_regs, ptr %regs, i32 1
  %79 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 280, ptr %arrayidx94, align 4
  %mask97 = getelementptr inbounds %struct.armada_regs, ptr %regs, i32 1, i32 1
  %80 = ptrtoint ptr %mask97 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %mask97, align 4
  %val99 = getelementptr inbounds %struct.armada_regs, ptr %regs, i32 1, i32 2
  %81 = ptrtoint ptr %val99 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or90, ptr %val99, align 4
  %arrayidx106 = getelementptr inbounds %struct.armada_regs, ptr %regs, i32 2
  %82 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 284, ptr %arrayidx106, align 4
  %mask109 = getelementptr inbounds %struct.armada_regs, ptr %regs, i32 2, i32 1
  %83 = ptrtoint ptr %mask109 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %mask109, align 4
  %shl110 = shl i32 %sub6, 16
  %or111 = or i32 %shl110, %sub
  %val113 = getelementptr inbounds %struct.armada_regs, ptr %regs, i32 2, i32 2
  %84 = ptrtoint ptr %val113 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or111, ptr %val113, align 4
  %arrayidx120 = getelementptr inbounds %struct.armada_regs, ptr %regs, i32 3
  %85 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 288, ptr %arrayidx120, align 4
  %mask123 = getelementptr inbounds %struct.armada_regs, ptr %regs, i32 3, i32 1
  %86 = ptrtoint ptr %mask123 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %mask123, align 4
  %spu_v_porch126 = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 6, i32 0, i32 1
  %87 = ptrtoint ptr %spu_v_porch126 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %spu_v_porch126, align 4
  %val128 = getelementptr inbounds %struct.armada_regs, ptr %regs, i32 3, i32 2
  %89 = ptrtoint ptr %val128 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %val128, align 4
  %arrayidx135 = getelementptr inbounds %struct.armada_regs, ptr %regs, i32 4
  %90 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 276, ptr %arrayidx135, align 4
  %mask138 = getelementptr inbounds %struct.armada_regs, ptr %regs, i32 4, i32 1
  %91 = ptrtoint ptr %mask138 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %mask138, align 4
  %92 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %v, align 4
  %val143 = getelementptr inbounds %struct.armada_regs, ptr %regs, i32 4, i32 2
  %94 = ptrtoint ptr %val143 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %val143, align 4
  %95 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %variant, align 8
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool148.not = icmp eq i8 %98, 0
  br i1 %tobool148.not, label %if.end.if.end165_crit_edge, label %do.body150

if.end.if.end165_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end165

do.body150:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx153 = getelementptr inbounds %struct.armada_regs, ptr %regs, i32 5
  %99 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 132, ptr %arrayidx153, align 4
  %mask156 = getelementptr inbounds %struct.armada_regs, ptr %regs, i32 5, i32 1
  %100 = ptrtoint ptr %mask156 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1040384, ptr %mask156, align 4
  %spu_adv_reg159 = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 6, i32 0, i32 2
  %101 = ptrtoint ptr %spu_adv_reg159 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %spu_adv_reg159, align 4
  %val161 = getelementptr inbounds %struct.armada_regs, ptr %regs, i32 5, i32 2
  %103 = ptrtoint ptr %val161 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %val161, align 4
  br label %if.end165

if.end165:                                        ; preds = %do.body150, %if.end.if.end165_crit_edge
  %i.0 = phi i32 [ 6, %do.body150 ], [ 5, %if.end.if.end165_crit_edge ]
  %104 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %flags1, align 4
  %and167 = shl i32 %105, 24
  %106 = and i32 %and167, 134217728
  %arrayidx172 = getelementptr %struct.armada_regs, ptr %regs, i32 %i.0
  %107 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 404, ptr %arrayidx172, align 4
  %mask175 = getelementptr %struct.armada_regs, ptr %regs, i32 %i.0, i32 1
  %108 = ptrtoint ptr %mask175 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 -134217729, ptr %mask175, align 4
  %val177 = getelementptr %struct.armada_regs, ptr %regs, i32 %i.0, i32 2
  %109 = ptrtoint ptr %val177 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %106, ptr %val177, align 4
  %110 = load i32, ptr %flags1, align 4
  %and182 = lshr i32 %110, 3
  %111 = and i32 %and182, 32
  %and188 = shl i32 %110, 1
  %112 = and i32 %and188, 4
  %and194 = and i32 %110, 8
  %113 = or i32 %111, %and194
  %114 = or i32 %113, %112
  %inc178 = add nuw nsw i32 %i.0, 1
  %arrayidx202 = getelementptr %struct.armada_regs, ptr %regs, i32 %inc178
  %115 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 440, ptr %arrayidx202, align 4
  %mask205 = getelementptr %struct.armada_regs, ptr %regs, i32 %inc178, i32 1
  %116 = ptrtoint ptr %mask205 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 -45, ptr %mask205, align 4
  %val207 = getelementptr %struct.armada_regs, ptr %regs, i32 %inc178, i32 2
  %117 = ptrtoint ptr %val207 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %114, ptr %val207, align 4
  %inc208 = add nuw nsw i32 %i.0, 2
  %arrayidx214 = getelementptr %struct.armada_regs, ptr %regs, i32 %inc208
  %118 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 -1, ptr %arrayidx214, align 4
  %mask217 = getelementptr %struct.armada_regs, ptr %regs, i32 %inc208, i32 1
  %119 = ptrtoint ptr %mask217 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %mask217, align 4
  %val219 = getelementptr %struct.armada_regs, ptr %regs, i32 %inc208, i32 2
  %120 = ptrtoint ptr %val219 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %val219, align 4
  %121 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %122)
  %cmp.not12.i = icmp eq i32 %122, -1
  br i1 %cmp.not12.i, label %if.end165.armada_drm_crtc_update_regs.exit_crit_edge, label %while.body.lr.ph.i

if.end165.armada_drm_crtc_update_regs.exit_crit_edge: ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_drm_crtc_update_regs.exit

while.body.lr.ph.i:                               ; preds = %if.end165
  %base.i = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %123 = phi i32 [ %122, %while.body.lr.ph.i ], [ %134, %if.end.i.while.body.i_crit_edge ]
  %regs.addr.013.i = phi ptr [ %regs, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ]
  %124 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %125, i32 %123
  %mask.i = getelementptr inbounds %struct.armada_regs, ptr %regs.addr.013.i, i32 0, i32 1
  %126 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp2.not.i = icmp eq i32 %127, 0
  br i1 %cmp2.not.i, label %while.body.i.if.end.i_crit_edge, label %if.then.i

while.body.i.if.end.i_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %128 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !69
  %129 = call i32 @llvm.bswap.i32(i32 %128) #10
  %and.i = and i32 %129, %127
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %while.body.i.if.end.i_crit_edge
  %val.0.i = phi i32 [ %and.i, %if.then.i ], [ 0, %while.body.i.if.end.i_crit_edge ]
  %val3.i = getelementptr inbounds %struct.armada_regs, ptr %regs.addr.013.i, i32 0, i32 2
  %130 = ptrtoint ptr %val3.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %val3.i, align 4
  %or.i = or i32 %131, %val.0.i
  %132 = call i32 @llvm.bswap.i32(i32 %or.i) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %132) #10, !srcloc !70
  %incdec.ptr.i = getelementptr %struct.armada_regs, ptr %regs.addr.013.i, i32 1
  %133 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %134, -1
  br i1 %cmp.not.i, label %if.end.i.armada_drm_crtc_update_regs.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i.armada_drm_crtc_update_regs.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_drm_crtc_update_regs.exit

armada_drm_crtc_update_regs.exit:                 ; preds = %if.end.i.armada_drm_crtc_update_regs.exit_crit_edge, %if.end165.armada_drm_crtc_update_regs.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call34) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sclk) #10
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %regs) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_drm_crtc_atomic_check(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 8
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %7, ptr noundef %9) #10
  %gamma_lut = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 12
  %10 = ptrtoint ptr %gamma_lut to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gamma_lut, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 4
  %div1.i.mask = and i32 %13, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %div1.i.mask)
  %cmp.not = icmp eq i32 %div1.i.mask, 2048
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %color_mgmt_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 3
  %14 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load = load i8, ptr %color_mgmt_changed, align 2
  %15 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %bf.cast.not = icmp eq i8 %15, 0
  br i1 %bf.cast.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set = or i8 %bf.load, -128
  %16 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %bf.set, ptr %color_mgmt_changed, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_drm_crtc_atomic_begin(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 8
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %7, ptr noundef %9) #10
  %color_mgmt_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %color_mgmt_changed, align 2
  %11 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %bf.cast.not = icmp eq i8 %11, 0
  br i1 %bf.cast.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %12 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state.i, align 4
  %gamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %gamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gamma_lut.i, align 4
  %base1.i = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 4
  %16 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base1.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %data.i = getelementptr inbounds %struct.drm_property_blob, ptr %15, i32 0, i32 5
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %17, i32 420
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !69
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  %and.i.i = and i32 %21, -8225
  %or.i.i = or i32 %and.i.i, 8192
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %or.i.i)
  %cmp.not.i.i = icmp eq i32 %21, %or.i.i
  br i1 %cmp.not.i.i, label %if.then.i.armada_updatel.exit.i_crit_edge, label %if.then.i.i

if.then.i.armada_updatel.exit.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_updatel.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %22) #10, !srcloc !70
  br label %armada_updatel.exit.i

armada_updatel.exit.i:                            ; preds = %if.then.i.i, %if.then.i.armada_updatel.exit.i_crit_edge
  %add.ptr3.i = getelementptr i8, ptr %17, i32 412
  %add.ptr5.i = getelementptr i8, ptr %17, i32 408
  %add.ptr6.i = getelementptr i8, ptr %17, i32 268
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %armada_updatel.exit.i
  %i.075.i = phi i32 [ 0, %armada_updatel.exit.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.drm_color_lut, ptr %19, i32 %i.075.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %24 to i32
  %add.i.i = add nuw nsw i32 %conv.i, 128
  %shr4.i.i = lshr i32 %add.i.i, 8
  %25 = tail call i32 @llvm.umin.i32(i32 %shr4.i.i, i32 255) #10
  %26 = shl nuw i32 %25, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %26) #10, !srcloc !70
  %or.i = or i32 %i.075.i, 32768
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %27) #10, !srcloc !70
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #10, !srcloc !69
  %green.i = getelementptr %struct.drm_color_lut, ptr %19, i32 %i.075.i, i32 1
  %29 = ptrtoint ptr %green.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %green.i, align 2
  %conv10.i = zext i16 %30 to i32
  %add.i57.i = add nuw nsw i32 %conv10.i, 128
  %shr4.i58.i = lshr i32 %add.i57.i, 8
  %31 = tail call i32 @llvm.umin.i32(i32 %shr4.i58.i, i32 255) #10
  %32 = shl nuw i32 %31, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %32) #10, !srcloc !70
  %or14.i = or i32 %i.075.i, 33024
  %33 = tail call i32 @llvm.bswap.i32(i32 %or14.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %33) #10, !srcloc !70
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #10, !srcloc !69
  %blue.i = getelementptr %struct.drm_color_lut, ptr %19, i32 %i.075.i, i32 2
  %35 = ptrtoint ptr %blue.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %blue.i, align 2
  %conv21.i = zext i16 %36 to i32
  %add.i59.i = add nuw nsw i32 %conv21.i, 128
  %shr4.i60.i = lshr i32 %add.i59.i, 8
  %37 = tail call i32 @llvm.umin.i32(i32 %shr4.i60.i, i32 255) #10
  %38 = shl nuw i32 %37, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %38) #10, !srcloc !70
  %or25.i = or i32 %i.075.i, 33280
  %39 = tail call i32 @llvm.bswap.i32(i32 %or25.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %39) #10, !srcloc !70
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #10, !srcloc !69
  %inc.i = add nuw nsw i32 %i.075.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %add.ptr31.i = getelementptr i8, ptr %17, i32 400
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #10, !srcloc !69
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #10
  %or.i62.i = or i32 %42, 1073741824
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %or.i62.i)
  %cmp.not.i63.i = icmp eq i32 %42, %or.i62.i
  br i1 %cmp.not.i63.i, label %for.end.i.if.end_crit_edge, label %if.then.i64.i

for.end.i.if.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i64.i:                                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = tail call i32 @llvm.bswap.i32(i32 %or.i62.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %43) #10, !srcloc !70
  br label %if.end

if.else.i:                                        ; preds = %if.then
  %add.ptr32.i = getelementptr i8, ptr %17, i32 400
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32.i) #10, !srcloc !69
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  %and.i66.i = and i32 %45, -1073741825
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %and.i66.i)
  %cmp.not.i67.i = icmp eq i32 %45, %and.i66.i
  br i1 %cmp.not.i67.i, label %if.else.i.armada_updatel.exit69.i_crit_edge, label %if.then.i68.i

if.else.i.armada_updatel.exit69.i_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_updatel.exit69.i

if.then.i68.i:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = tail call i32 @llvm.bswap.i32(i32 %and.i66.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %46) #10, !srcloc !70
  br label %armada_updatel.exit69.i

armada_updatel.exit69.i:                          ; preds = %if.then.i68.i, %if.else.i.armada_updatel.exit69.i_crit_edge
  %add.ptr33.i = getelementptr i8, ptr %17, i32 420
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33.i) #10, !srcloc !69
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #10
  %and.i70.i = and i32 %48, -8225
  %or.i71.i = or i32 %and.i70.i, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %or.i71.i)
  %cmp.not.i72.i = icmp eq i32 %48, %or.i71.i
  br i1 %cmp.not.i72.i, label %armada_updatel.exit69.i.if.end_crit_edge, label %if.then.i73.i

armada_updatel.exit69.i.if.end_crit_edge:         ; preds = %armada_updatel.exit69.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i73.i:                                    ; preds = %armada_updatel.exit69.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = tail call i32 @llvm.bswap.i32(i32 %or.i71.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %49) #10, !srcloc !70
  br label %if.end

if.end:                                           ; preds = %if.then.i73.i, %armada_updatel.exit69.i.if.end_crit_edge, %if.then.i64.i, %for.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %regs_idx = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 24
  %50 = ptrtoint ptr %regs_idx to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %regs_idx, align 8
  %atomic_regs = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 22
  %regs = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 23
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %atomic_regs, ptr %regs, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_drm_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 8
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %7, ptr noundef %9) #10
  %regs = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 23
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %regs_idx = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 24
  %12 = ptrtoint ptr %regs_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %regs_idx, align 8
  %arrayidx = getelementptr %struct.armada_regs, ptr %11, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %arrayidx, align 4
  %15 = load i32, ptr %regs_idx, align 8
  %mask = getelementptr %struct.armada_regs, ptr %11, i32 %15, i32 1
  %16 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %mask, align 4
  %17 = load i32, ptr %regs_idx, align 8
  %val = getelementptr %struct.armada_regs, ptr %11, i32 %17, i32 2
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %val, align 4
  %19 = load i32, ptr %regs_idx, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %regs_idx, align 8
  %mode_changed.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 3
  %20 = ptrtoint ptr %mode_changed.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i = load i8, ptr %mode_changed.i, align 2
  %21 = and i8 %bf.load.i, 112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %.not = icmp eq i8 %21, 0
  br i1 %.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %update_pending = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 20
  %22 = ptrtoint ptr %update_pending to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %update_pending, align 4
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %23 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state.i, align 4
  %event1.i = getelementptr inbounds %struct.drm_crtc_state, ptr %24, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event1.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %event1.i, i32 1, i32 3, i32 1) #10
  %25 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %event1.i) #10, !srcloc !74
  %asmresult.i.i = extractvalue { i32, i32 } %25, 0
  %26 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i, label %if.then.armada_drm_crtc_queue_state_event.exit_crit_edge, label %if.then.i

if.then.armada_drm_crtc_queue_state_event.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_drm_crtc_queue_state_event.exit

if.then.i:                                        ; preds = %if.then
  %call17.i = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp.not.i = icmp eq i32 %call17.i, 0
  br i1 %cmp.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end29.i, !prof !77

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end29.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 129, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end29.i, %if.then.i.if.end.i_crit_edge
  %event42.i = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 21
  %27 = ptrtoint ptr %event42.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %event42.i, align 8
  br label %armada_drm_crtc_queue_state_event.exit

armada_drm_crtc_queue_state_event.exit:           ; preds = %if.end.i, %if.then.armada_drm_crtc_queue_state_event.exit_crit_edge
  %irq_lock = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #10
  %irq_ena.i = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 19
  %28 = ptrtoint ptr %irq_ena.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq_ena.i, align 8
  %and.i = and i32 %29, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i29.not = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i29.not, label %if.then.i31, label %armada_drm_crtc_queue_state_event.exit.if.end_crit_edge

armada_drm_crtc_queue_state_event.exit.if.end_crit_edge: ; preds = %armada_drm_crtc_queue_state_event.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i31:                                      ; preds = %armada_drm_crtc_queue_state_event.exit
  %or.i = or i32 %29, 4194304
  %30 = ptrtoint ptr %irq_ena.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or.i, ptr %irq_ena.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !85
  tail call void @arm_heavy_mb() #10
  %31 = ptrtoint ptr %irq_ena.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq_ena.i, align 8
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  %base.i = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 4
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 448
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %33) #10, !srcloc !70
  %36 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %37, i32 452
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #10, !srcloc !69
  %39 = and i32 %38, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i30 = icmp eq i32 %39, 0
  br i1 %tobool.not.i30, label %if.then.i31.if.end_crit_edge, label %do.body7.i

if.then.i31.if.end_crit_edge:                     ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body7.i:                                       ; preds = %if.then.i31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !86
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %41, i32 452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 0) #10, !srcloc !70
  br label %if.end

if.else:                                          ; preds = %entry
  %irq_lock8 = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock8) #10
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp.not12.i = icmp eq i32 %45, -1
  br i1 %cmp.not12.i, label %if.else.if.end_crit_edge, label %while.body.lr.ph.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.body.lr.ph.i:                               ; preds = %if.else
  %base.i32 = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i38.while.body.i_crit_edge, %while.body.lr.ph.i
  %46 = phi i32 [ %45, %while.body.lr.ph.i ], [ %57, %if.end.i38.while.body.i_crit_edge ]
  %regs.addr.013.i = phi ptr [ %43, %while.body.lr.ph.i ], [ %incdec.ptr.i, %if.end.i38.while.body.i_crit_edge ]
  %47 = ptrtoint ptr %base.i32 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i32, align 4
  %add.ptr.i33 = getelementptr i8, ptr %48, i32 %46
  %mask.i = getelementptr inbounds %struct.armada_regs, ptr %regs.addr.013.i, i32 0, i32 1
  %49 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp2.not.i = icmp eq i32 %50, 0
  br i1 %cmp2.not.i, label %while.body.i.if.end.i38_crit_edge, label %if.then.i35

while.body.i.if.end.i38_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i38

if.then.i35:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i33) #10, !srcloc !69
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #10
  %and.i34 = and i32 %52, %50
  br label %if.end.i38

if.end.i38:                                       ; preds = %if.then.i35, %while.body.i.if.end.i38_crit_edge
  %val.0.i = phi i32 [ %and.i34, %if.then.i35 ], [ 0, %while.body.i.if.end.i38_crit_edge ]
  %val3.i = getelementptr inbounds %struct.armada_regs, ptr %regs.addr.013.i, i32 0, i32 2
  %53 = ptrtoint ptr %val3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val3.i, align 4
  %or.i36 = or i32 %54, %val.0.i
  %55 = tail call i32 @llvm.bswap.i32(i32 %or.i36) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %55) #10, !srcloc !70
  %incdec.ptr.i = getelementptr %struct.armada_regs, ptr %regs.addr.013.i, i32 1
  %56 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i37 = icmp eq i32 %57, -1
  br i1 %cmp.not.i37, label %if.end.i38.if.end_crit_edge, label %if.end.i38.while.body.i_crit_edge

if.end.i38.while.body.i_crit_edge:                ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.end.i38.if.end_crit_edge:                      ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %if.end.i38.if.end_crit_edge, %if.else.if.end_crit_edge, %do.body7.i, %if.then.i31.if.end_crit_edge, %armada_drm_crtc_queue_state_event.exit.if.end_crit_edge
  %irq_lock8.sink = phi ptr [ %irq_lock, %armada_drm_crtc_queue_state_event.exit.if.end_crit_edge ], [ %irq_lock, %if.then.i31.if.end_crit_edge ], [ %irq_lock, %do.body7.i ], [ %irq_lock8, %if.else.if.end_crit_edge ], [ %irq_lock8, %if.end.i38.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock8.sink) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_drm_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 8
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %7, ptr noundef %9) #10
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %variant = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 1
  %12 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %variant, align 8
  %enable = getelementptr inbounds %struct.armada_variant, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enable, align 4
  %tobool1.not = icmp eq ptr %15, null
  br i1 %tobool1.not, label %if.then.if.end6_crit_edge, label %if.then2

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %state5 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %16 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state5, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %17, i32 0, i32 7
  tail call void %15(ptr noundef %crtc, ptr noundef %adjusted_mode) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %cfg_dumb_ctrl.i = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 16
  %18 = ptrtoint ptr %cfg_dumb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cfg_dumb_ctrl.i, align 4
  %base.i = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 4
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 440
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !69
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  %and.i.i = and i32 %23, 44
  %spec.select.i = or i32 %19, %and.i.i
  %or.i.i = or i32 %spec.select.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %or.i.i)
  %cmp.not.i.i = icmp eq i32 %23, %or.i.i
  br i1 %cmp.not.i.i, label %if.end6.armada_drm_crtc_update.exit_crit_edge, label %if.then.i.i

if.end6.armada_drm_crtc_update.exit_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_drm_crtc_update.exit

if.then.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #10, !srcloc !70
  br label %armada_drm_crtc_update.exit

armada_drm_crtc_update.exit:                      ; preds = %if.then.i.i, %if.end6.armada_drm_crtc_update.exit_crit_edge
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #10
  %state7 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %25 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state7, align 4
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %26, i32 0, i32 7, i32 11
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and = and i32 %28, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %armada_drm_crtc_update.exit.if.end35_crit_edge, label %if.then10

armada_drm_crtc_update.exit.if.end35_crit_edge:   ; preds = %armada_drm_crtc_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.then10:                                        ; preds = %armada_drm_crtc_update.exit
  %call11 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end35_crit_edge, label %do.end, !prof !77

if.then10.if.end35_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 535, i32 noundef 9, ptr noundef null) #10
  br label %if.end35

if.end35:                                         ; preds = %do.end, %if.then10.if.end35_crit_edge, %armada_drm_crtc_update.exit.if.end35_crit_edge
  %29 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %state7, align 4
  %event1.i = getelementptr inbounds %struct.drm_crtc_state, ptr %30, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %event1.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %event1.i, i32 1, i32 3, i32 1) #10
  %31 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %event1.i) #10, !srcloc !74
  %asmresult.i.i = extractvalue { i32, i32 } %31, 0
  %32 = inttoptr i32 %asmresult.i.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %tobool.not.i, label %if.end35.armada_drm_crtc_queue_state_event.exit_crit_edge, label %if.then.i

if.end35.armada_drm_crtc_queue_state_event.exit_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_drm_crtc_queue_state_event.exit

if.then.i:                                        ; preds = %if.end35
  %call17.i = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp.not.i = icmp eq i32 %call17.i, 0
  br i1 %cmp.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end29.i, !prof !77

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end29.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 129, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end29.i, %if.then.i.if.end.i_crit_edge
  %event42.i = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 21
  %33 = ptrtoint ptr %event42.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %event42.i, align 8
  br label %armada_drm_crtc_queue_state_event.exit

armada_drm_crtc_queue_state_event.exit:           ; preds = %if.end.i, %if.end35.armada_drm_crtc_queue_state_event.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @armada_drm_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 8
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22, i32 noundef %7, ptr noundef %9) #10
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 11
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @drm_crtc_vblank_put(ptr noundef %crtc) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #10
  %cfg_dumb_ctrl.i = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 16
  %12 = ptrtoint ptr %cfg_dumb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg_dumb_ctrl.i, align 4
  %and.i = and i32 %13, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 1610612736, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 1610612736
  %and3.i = and i32 %13, 268435455
  %or4.i = or i32 %and3.i, 1879048192
  %dumb_ctrl.1.i = select i1 %cmp.i, i32 %or4.i, i32 %13
  %base.i = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 4
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 440
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !69
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  %and.i.i = and i32 %17, 44
  %or.i.i = or i32 %and.i.i, %dumb_ctrl.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %or.i.i)
  %cmp.not.i.i = icmp eq i32 %17, %or.i.i
  br i1 %cmp.not.i.i, label %if.end.armada_drm_crtc_update.exit_crit_edge, label %if.then.i.i

if.end.armada_drm_crtc_update.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %armada_drm_crtc_update.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #10, !srcloc !70
  br label %armada_drm_crtc_update.exit

armada_drm_crtc_update.exit:                      ; preds = %if.then.i.i, %if.end.armada_drm_crtc_update.exit_crit_edge
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %19 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state1, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %active, align 1, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool2.not = icmp eq i8 %22, 0
  br i1 %tobool2.not, label %if.then3, label %armada_drm_crtc_update.exit.if.end18_crit_edge

armada_drm_crtc_update.exit.if.end18_crit_edge:   ; preds = %armada_drm_crtc_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then3:                                         ; preds = %armada_drm_crtc_update.exit
  %variant = getelementptr inbounds %struct.armada_crtc, ptr %crtc, i32 0, i32 1
  %23 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %variant, align 8
  %disable = getelementptr inbounds %struct.armada_variant, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %disable, align 4
  %tobool4.not = icmp eq ptr %26, null
  br i1 %tobool4.not, label %if.then3.if.end8_crit_edge, label %if.then5

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %26(ptr noundef %crtc) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.then3.if.end8_crit_edge
  %27 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state1, align 4
  %event10 = getelementptr inbounds %struct.drm_crtc_state, ptr %28, i32 0, i32 18
  %29 = ptrtoint ptr %event10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %event10, align 4
  store ptr null, ptr %event10, align 4
  %tobool13.not = icmp eq ptr %30, null
  br i1 %tobool13.not, label %if.end8.if.end18_crit_edge, label %if.then14

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #10
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %30) #10
  %33 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %crtc, align 8
  %event_lock16 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock16) #10
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end8.if.end18_crit_edge, %armada_drm_crtc_update.exit.if.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !31, !33, !34, !35, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57}
!llvm.named.register.sp = !{!59}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 847, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 878, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 898, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 1101, i32 11}
!8 = !{ptr @armada_lcd_platform_driver, !9, !"armada_lcd_platform_driver", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 1097, i32 24}
!10 = !{ptr @armada_lcd_ops, !11, !"armada_lcd_ops", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 1060, i32 35}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 1036, i32 37}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 1039, i32 39}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 1042, i32 4}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @armada_lcd_bind._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @armada_lcd_bind._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 925, i32 3}
!26 = !{ptr @armada_drm_crtc_create.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 937, i32 2}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 954, i32 54}
!31 = distinct !{null, !32, !"__already_done", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/armada/armada_trace.h", i32 15, i32 1}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!35 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 252, i32 3}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 254, i32 3}
!43 = !{ptr @armada_crtc_funcs, !44, !"armada_crtc_funcs", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 818, i32 36}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 728, i32 4}
!47 = !{ptr @armada_crtc_helper_funcs, !48, !"armada_crtc_helper_funcs", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 540, i32 43}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 346, i32 2}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 348, i32 2}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 420, i32 2}
!55 = !{ptr @armada_lcd_of_match, !56, !"armada_lcd_of_match", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 1076, i32 34}
!57 = !{ptr @armada_lcd_platform_ids, !58, !"armada_lcd_platform_ids", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/armada/armada_crtc.c", i32 1085, i32 40}
!59 = !{!"sp"}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 7036155}
!70 = !{i64 7035737}
!71 = !{i8 0, i8 2}
!72 = !{i64 2156979010}
!73 = !{i64 2156982958}
!74 = !{i64 776651, i64 776668, i64 776692, i64 776718, i64 776736}
!75 = !{i64 2156983311}
!76 = !{i64 2148751698, i64 2148751703, i64 2148751716, i64 2148751760, i64 2148751794, i64 2148751815}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2156912549}
!79 = !{i64 2156912760}
!80 = !{i64 2149327784}
!81 = !{i64 2149328820}
!82 = !{i64 2148359414}
!83 = !{i64 2148273878, i64 2148273910, i64 2148273939, i64 2148273973, i64 2148274004, i64 2148274027}
!84 = !{i64 2149633323}
!85 = !{i64 2156979467}
!86 = !{i64 2156980268}
!87 = !{!"auto-init"}
!88 = !{i64 2156971443}
!89 = !{i64 2156971796}
