; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/imx/ipuv3-crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/imx/ipuv3-crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ipu_client_platformdata = type { i32, i32, i32, i32, [2 x i32], ptr }
%struct.ipu_crtc = type { ptr, %struct.drm_crtc, [2 x ptr], ptr, ptr, i32, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ipu_di_signal_cfg = type { i8, %struct.videomode, i32, i32, i32, i8, i8 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.imx_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imx-ipuv3-crtc\00", [17 x i8] zeroinitializer }, align 32
@ipu_drm_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ipu_drm_probe, ptr @ipu_drm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@ipu_crtc_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @ipu_drm_bind, ptr null }, [24 x i8] zeroinitializer }, align 32
@ipu_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @imx_drm_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @imx_drm_crtc_duplicate_state, ptr @imx_drm_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ipu_enable_vblank, ptr @ipu_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@ipu_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr @ipu_crtc_mode_fixup, ptr null, ptr @ipu_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr @ipu_crtc_atomic_check, ptr @ipu_crtc_atomic_begin, ptr @ipu_crtc_atomic_flush, ptr @ipu_crtc_atomic_enable, ptr @ipu_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@ipu_drm_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 399, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"getting resources failed with %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ipu_drm_bind\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/imx/ipuv3-crtc.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ipu_drm_bind._entry_ptr = internal global ptr @ipu_drm_bind._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx_drm\00", [24 x i8] zeroinitializer }, align 32
@ipu_drm_bind._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"irq request failed with %d.\0A\00", [35 x i8] zeroinitializer }, align 32
@ipu_drm_bind._entry_ptr.9 = internal global ptr @ipu_drm_bind._entry.7, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ipu_crtc_mode_set_nofb.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 68, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imxdrm\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ipu_crtc_mode_set_nofb\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: mode->hdisplay: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ipu_crtc_mode_set_nofb.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.3, ptr @.str.13, i8 0, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: mode->vdisplay: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@ipu_crtc_mode_set_nofb.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.3, ptr @.str.14, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: attached to encoder types 0x%lx\0A\00", [59 x i8] zeroinitializer }, align 32
@ipu_crtc_mode_set_nofb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.3, i32 312, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"8-pixel align hactive %d -> %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ipu_crtc_mode_set_nofb._entry_ptr = internal global ptr @ipu_crtc_mode_set_nofb._entry, section ".printk_index", align 4
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ipu_put_resources\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 453, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"ipu_drm_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 451, i32 24 }
@___asan_gen_.24 = private unnamed_addr constant [13 x i8] c"ipu_crtc_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 426, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"ipu_crtc_funcs\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 165, i32 36 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"ipu_helper_funcs\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 324, i32 43 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 398, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 415, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 417, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 272, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 274, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 282, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 311, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [36 x i8] c"../drivers/gpu/drm/imx/ipuv3-crtc.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 354, i32 8 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @ipu_crtc_mode_set_nofb._entry, ptr @ipu_crtc_mode_set_nofb._entry_ptr, ptr @ipu_drm_bind._entry, ptr @ipu_drm_bind._entry.7, ptr @ipu_drm_bind._entry_ptr, ptr @ipu_drm_bind._entry_ptr.9, ptr @.str, ptr @ipu_drm_driver, ptr @ipu_crtc_ops, ptr @ipu_crtc_funcs, ptr @ipu_helper_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_drm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_crtc_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_drm_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_drm_bind._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_crtc_mode_set_nofb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_drm_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @ipu_crtc_ops) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_drm_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @ipu_crtc_ops) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_drm_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %dp1 = getelementptr inbounds %struct.ipu_client_platformdata, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.inv = icmp slt i32 %7, 0
  %spec.select = select i1 %cmp.inv, i32 -22, i32 0
  %dma = getelementptr inbounds %struct.ipu_client_platformdata, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma, align 4
  %call2 = tail call ptr @ipu_plane_init(ptr noundef %data, ptr noundef %5, i32 noundef %9, i32 noundef %spec.select, i32 noundef 0, i32 noundef 1) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %entry
  %call7 = tail call ptr (ptr, i32, i32, ptr, ptr, ptr, ptr, ...) @__drmm_crtc_alloc_with_planes(ptr noundef %data, i32 noundef 1024, i32 noundef 8, ptr noundef %call2, ptr noundef null, ptr noundef nonnull @ipu_crtc_funcs, ptr noundef null) #6
  %cmp.i99 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i99, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %12 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %call7, align 8
  %plane = getelementptr inbounds %struct.ipu_crtc, ptr %call7, i32 0, i32 2
  %13 = ptrtoint ptr %plane to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call2, ptr %plane, align 8
  %of_node = getelementptr inbounds %struct.ipu_client_platformdata, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 4
  %port = getelementptr inbounds %struct.ipu_crtc, ptr %call7, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %port, align 4
  %helper_private.i = getelementptr inbounds %struct.ipu_crtc, ptr %call7, i32 0, i32 1, i32 19
  %17 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ipu_helper_funcs, ptr %helper_private.i, align 8
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i, align 4
  %dc.i = getelementptr inbounds %struct.ipu_client_platformdata, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %dc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dc.i, align 4
  %call2.i = tail call ptr @ipu_dc_get(ptr noundef %21, i32 noundef %23) #6
  %dc3.i = getelementptr inbounds %struct.ipu_crtc, ptr %call7, i32 0, i32 3
  %24 = ptrtoint ptr %dc3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call2.i, ptr %dc3.i, align 8
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end11.ipu_get_resources.exit_crit_edge, label %if.end.i

if.end11.ipu_get_resources.exit_crit_edge:        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipu_get_resources.exit

if.end.i:                                         ; preds = %if.end11
  %call8.i = tail call i32 @__drmm_add_action_or_reset(ptr noundef %data, ptr noundef nonnull @ipu_put_resources, ptr noundef %call7, ptr noundef nonnull @.str.17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end10.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end10.i:                                       ; preds = %if.end.i
  %di.i = getelementptr inbounds %struct.ipu_client_platformdata, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %di.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %di.i, align 4
  %call11.i = tail call ptr @ipu_di_get(ptr noundef %21, i32 noundef %26) #6
  %di12.i = getelementptr inbounds %struct.ipu_crtc, ptr %call7, i32 0, i32 4
  %27 = ptrtoint ptr %di12.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call11.i, ptr %di12.i, align 4
  %cmp.i30.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30.i, label %if.end10.i.ipu_get_resources.exit_crit_edge, label %if.end10.i.if.end18_crit_edge

if.end10.i.if.end18_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.end10.i.ipu_get_resources.exit_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipu_get_resources.exit

ipu_get_resources.exit:                           ; preds = %if.end10.i.ipu_get_resources.exit_crit_edge, %if.end11.ipu_get_resources.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call11.i, %if.end10.i.ipu_get_resources.exit_crit_edge ], [ %call2.i, %if.end11.ipu_get_resources.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool.not, label %ipu_get_resources.exit.if.end18_crit_edge, label %ipu_get_resources.exit.do.end_crit_edge

ipu_get_resources.exit.do.end_crit_edge:          ; preds = %ipu_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

ipu_get_resources.exit.if.end18_crit_edge:        ; preds = %ipu_get_resources.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end:                                           ; preds = %ipu_get_resources.exit.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %retval.0.i106 = phi i32 [ %retval.0.i, %ipu_get_resources.exit.do.end_crit_edge ], [ %call8.i, %if.end.i.do.end_crit_edge ]
  %28 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i106) #9
  br label %cleanup

if.end18:                                         ; preds = %ipu_get_resources.exit.if.end18_crit_edge, %if.end10.i.if.end18_crit_edge
  %30 = ptrtoint ptr %dp1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dp1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %31)
  %cmp20 = icmp sgt i32 %31, -1
  br i1 %cmp20, label %land.lhs.true, label %if.end18.if.end39_crit_edge

if.end18.if.end39_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end18
  %arrayidx22 = getelementptr %struct.ipu_client_platformdata, ptr %1, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp23 = icmp sgt i32 %33, 0
  br i1 %cmp23, label %if.then24, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %index.i.i = getelementptr inbounds %struct.ipu_crtc, ptr %call7, i32 0, i32 1, i32 8
  %34 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %35
  %call29 = tail call ptr @ipu_plane_init(ptr noundef %data, ptr noundef %5, i32 noundef %33, i32 noundef 1, i32 noundef %shl.i, i32 noundef 0) #6
  %arrayidx31 = getelementptr %struct.ipu_crtc, ptr %call7, i32 0, i32 2, i32 1
  %cmp.i100 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i100, ptr null, ptr %call29
  %36 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %spec.store.select, ptr %arrayidx31, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then24, %land.lhs.true.if.end39_crit_edge, %if.end18.if.end39_crit_edge
  %37 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %plane, align 8
  %call42 = tail call i32 @ipu_plane_irq(ptr noundef %38) #6
  %irq = getelementptr inbounds %struct.ipu_crtc, ptr %call7, i32 0, i32 5
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call42, ptr %irq, align 8
  %40 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7, align 8
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %41, i32 noundef %call42, ptr noundef nonnull @ipu_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef %call7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp46 = icmp slt i32 %call.i, 0
  br i1 %cmp46, label %do.end50, label %if.end52

do.end50:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call7, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.8, i32 noundef %call.i) #9
  br label %cleanup

if.end52:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irq, align 8
  tail call void @disable_irq(i32 noundef %45) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end50, %do.end, %if.then9, %if.then4
  %retval.0 = phi i32 [ %10, %if.then4 ], [ %11, %if.then9 ], [ %retval.0.i106, %do.end ], [ %call.i, %do.end50 ], [ 0, %if.end52 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_plane_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_crtc_alloc_with_planes(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_plane_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.ipu_crtc, ptr %dev_id, i32 0, i32 1
  %call = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %base) #6
  %event = getelementptr inbounds %struct.ipu_crtc, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %for.body.preheader

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr %struct.ipu_crtc, ptr %dev_id, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %for.body.preheader.for.inc_crit_edge, label %cleanup

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup:                                          ; preds = %for.body.preheader
  %call5 = tail call zeroext i1 @ipu_plane_atomic_update_pending(ptr noundef nonnull %3) #6
  br i1 %call5, label %cleanup.if.end21_crit_edge, label %cleanup.for.inc_crit_edge

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup.if.end21_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.ipu_crtc, ptr %dev_id, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool2.not.1 = icmp eq ptr %5, null
  br i1 %tobool2.not.1, label %for.inc.do.body10_crit_edge, label %cleanup.1

for.inc.do.body10_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10

cleanup.1:                                        ; preds = %for.inc
  %call5.1 = tail call zeroext i1 @ipu_plane_atomic_update_pending(ptr noundef nonnull %5) #6
  br i1 %call5.1, label %cleanup.1.if.end21_crit_edge, label %cleanup.1.do.body10_crit_edge

cleanup.1.do.body10_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10

cleanup.1.if.end21_crit_edge:                     ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

do.body10:                                        ; preds = %cleanup.1.do.body10_crit_edge, %for.inc.do.body10_crit_edge
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 28
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock) #6
  %8 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %base, ptr noundef %9) #6
  %10 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %event, align 4
  tail call void @drm_crtc_vblank_put(ptr noundef %base) #6
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 8
  %event_lock19 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock19, i32 noundef %call13) #6
  br label %if.end21

if.end21:                                         ; preds = %do.body10, %cleanup.1.if.end21_crit_edge, %cleanup.if.end21_crit_edge, %entry.if.end21_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_drm_crtc_reset(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state1, align 4
  tail call void @kfree(ptr noundef %3) #6
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %state1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 300) #10
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %crtc, ptr noundef nonnull %call7.i.i) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @imx_drm_crtc_duplicate_state(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 300) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %crtc, ptr noundef nonnull %call7.i.i) #6
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call7.i.i, align 8
  %cmp.not = icmp eq ptr %2, %crtc
  br i1 %cmp.not, label %if.end.if.end17_crit_edge, label %do.end, !prof !51

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 136, i32 noundef 9, ptr noundef null) #6
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %crtc, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_drm_crtc_destroy_state(ptr nocapture noundef readnone %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %state) #6
  tail call void @kfree(ptr noundef %state) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipu_enable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr i8, ptr %crtc, i32 1008
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 8
  tail call void @enable_irq(i32 noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_disable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr i8, ptr %crtc, i32 1008
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 8
  tail call void @disable_irq_nosync(i32 noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ipu_crtc_mode_fixup(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  %vm = alloca %struct.videomode, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vm) #6
  %0 = call ptr @memset(ptr %vm, i32 255, i32 40)
  call void @drm_display_mode_to_videomode(ptr noundef %adjusted_mode, ptr noundef nonnull %vm) #6
  %di = getelementptr i8, ptr %crtc, i32 1004
  %1 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %di, align 4
  %call1 = call i32 @ipu_di_adjust_videomode(ptr noundef %2, ptr noundef nonnull %vm) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %vsync_len = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 8
  %3 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vsync_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %hsync_len = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 4
  %5 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hsync_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  call void @drm_display_mode_from_videomode(ptr noundef nonnull %vm, ptr noundef %adjusted_mode) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end4 ], [ false, %entry.cleanup_crit_edge ], [ false, %lor.lhs.false.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm) #6
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_crtc_mode_set_nofb(ptr noundef readonly %crtc) #0 align 64 {
entry:
  %sig_cfg = alloca %struct.ipu_di_signal_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %add.ptr.i = getelementptr i8, ptr %crtc, i32 -8
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state, align 4
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %sig_cfg) #6
  %4 = call ptr @memset(ptr %sig_cfg, i32 0, i32 60)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_crtc_mode_set_nofb.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipu_crtc_mode_set_nofb, %if.then)) #6
          to label %do.body8 [label %if.then], !srcloc !52

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_crtc_mode_set_nofb.__UNIQUE_ID_ddebug318, ptr noundef %6, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.11, i32 noundef %conv) #6
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_crtc_mode_set_nofb.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipu_crtc_mode_set_nofb, %if.then20)) #6
          to label %do.end25 [label %if.then20], !srcloc !52

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 8
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 6
  %11 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vdisplay, align 2
  %conv22 = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_crtc_mode_set_nofb.__UNIQUE_ID_ddebug319, ptr noundef %10, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef %conv22) #6
  br label %do.end25

do.end25:                                         ; preds = %if.then20, %do.body8
  %encoder_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 16
  %13 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn154 = load ptr, ptr %encoder_list, align 4
  %cmp.not155 = icmp eq ptr %.pn154, %encoder_list
  br i1 %cmp.not155, label %do.end25.do.body42_crit_edge, label %do.end25.for.body_crit_edge

do.end25.for.body_crit_edge:                      ; preds = %do.end25
  br label %for.body

do.end25.do.body42_crit_edge:                     ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end25.for.body_crit_edge
  %.pn157 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn154, %do.end25.for.body_crit_edge ]
  %encoder_types.0156 = phi i32 [ %encoder_types.1, %for.inc.for.body_crit_edge ], [ 0, %do.end25.for.body_crit_edge ]
  %crtc32 = getelementptr i8, ptr %.pn157, i32 48
  %14 = ptrtoint ptr %crtc32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc32, align 4
  %cmp33 = icmp eq ptr %15, %crtc
  br i1 %cmp33, label %if.then35, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then35:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %encoder_type = getelementptr i8, ptr %.pn157, i32 32
  %16 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %encoder_type, align 4
  %shl = shl nuw i32 1, %17
  %or = or i32 %shl, %encoder_types.0156
  br label %for.inc

for.inc:                                          ; preds = %if.then35, %for.body.for.inc_crit_edge
  %encoder_types.1 = phi i32 [ %or, %if.then35 ], [ %encoder_types.0156, %for.body.for.inc_crit_edge ]
  %18 = ptrtoint ptr %.pn157 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn157, align 4
  %cmp.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp.not, label %for.inc.do.body42_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.body42_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

do.body42:                                        ; preds = %for.inc.do.body42_crit_edge, %do.end25.do.body42_crit_edge
  %encoder_types.0.lcssa = phi i32 [ 0, %do.end25.do.body42_crit_edge ], [ %encoder_types.1, %for.inc.do.body42_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipu_crtc_mode_set_nofb.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipu_crtc_mode_set_nofb, %if.then54)) #6
          to label %do.end58 [label %if.then54], !srcloc !52

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ipu_crtc_mode_set_nofb.__UNIQUE_ID_ddebug320, ptr noundef %20, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.11, i32 noundef %encoder_types.0.lcssa) #6
  br label %do.end58

do.end58:                                         ; preds = %if.then54, %do.body42
  %and = and i32 %encoder_types.0.lcssa, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %if.else, label %if.then60

if.then60:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #8
  %clkflags = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %sig_cfg, i32 0, i32 4
  %21 = ptrtoint ptr %clkflags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %clkflags, align 4
  br label %if.end68

if.else:                                          ; preds = %do.end58
  %and61 = and i32 %encoder_types.0.lcssa, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  %clkflags66 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %sig_cfg, i32 0, i32 4
  br i1 %tobool62.not, label %if.else65, label %if.then63

if.then63:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %clkflags66 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %clkflags66, align 4
  br label %if.end68

if.else65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %clkflags66 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %clkflags66, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.else65, %if.then63, %if.then60
  %bus_flags = getelementptr inbounds %struct.imx_crtc_state, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %bus_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bus_flags, align 4
  %26 = trunc i32 %25 to i8
  %27 = ptrtoint ptr %sig_cfg to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %sig_cfg, align 4
  %28 = shl i8 %26, 5
  %29 = and i8 %28, 32
  %bf.clear = and i8 %bf.load, -97
  %30 = or i8 %29, %bf.clear
  %31 = shl i8 %26, 4
  %bf.shl82 = and i8 %31, 64
  %32 = or i8 %30, %bf.shl82
  %bf.set84 = xor i8 %32, 32
  store i8 %bf.set84, ptr %sig_cfg, align 4
  %bus_format = getelementptr inbounds %struct.imx_crtc_state, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %bus_format to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bus_format, align 4
  %bus_format86 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %sig_cfg, i32 0, i32 2
  %35 = ptrtoint ptr %bus_format86 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %bus_format86, align 4
  %v_to_h_sync = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %sig_cfg, i32 0, i32 3
  %36 = ptrtoint ptr %v_to_h_sync to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %v_to_h_sync, align 4
  %di_hsync_pin = getelementptr inbounds %struct.imx_crtc_state, ptr %3, i32 0, i32 3
  %37 = ptrtoint ptr %di_hsync_pin to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %di_hsync_pin, align 4
  %conv87 = trunc i32 %38 to i8
  %hsync_pin = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %sig_cfg, i32 0, i32 5
  %39 = ptrtoint ptr %hsync_pin to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv87, ptr %hsync_pin, align 4
  %di_vsync_pin = getelementptr inbounds %struct.imx_crtc_state, ptr %3, i32 0, i32 4
  %40 = ptrtoint ptr %di_vsync_pin to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %di_vsync_pin, align 4
  %conv88 = trunc i32 %41 to i8
  %vsync_pin = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %sig_cfg, i32 0, i32 6
  %42 = ptrtoint ptr %vsync_pin to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv88, ptr %vsync_pin, align 1
  %mode89 = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %sig_cfg, i32 0, i32 1
  call void @drm_display_mode_to_videomode(ptr noundef %adjusted_mode, ptr noundef %mode89) #6
  %hactive = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %sig_cfg, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %hactive to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hactive, align 4
  %and91 = and i32 %44, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %cmp92 = icmp eq i32 %and91, 0
  br i1 %cmp92, label %if.end68.if.end109_crit_edge, label %if.then94

if.end68.if.end109_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then94:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %44, 7
  %and97 = and i32 %add, -8
  %45 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.15, i32 noundef %44, i32 noundef %and97) #9
  %47 = ptrtoint ptr %hactive to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hactive, align 4
  %sub = sub i32 %and97, %48
  %hfront_porch = getelementptr inbounds %struct.ipu_di_signal_cfg, ptr %sig_cfg, i32 0, i32 1, i32 2
  %49 = ptrtoint ptr %hfront_porch to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sub, ptr %hfront_porch, align 4
  store i32 %and97, ptr %hactive, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then94, %if.end68.if.end109_crit_edge
  %dc = getelementptr i8, ptr %crtc, i32 1000
  %50 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dc, align 8
  %di = getelementptr i8, ptr %crtc, i32 1004
  %52 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %di, align 4
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 11
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %and110 = and i32 %55, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111 = icmp ne i32 %and110, 0
  %56 = ptrtoint ptr %bus_format to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %bus_format, align 4
  %58 = ptrtoint ptr %hactive to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %hactive, align 4
  %call115 = call i32 @ipu_dc_init_sync(ptr noundef %51, ptr noundef %53, i1 noundef zeroext %tobool111, i32 noundef %57, i32 noundef %59) #6
  %60 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %di, align 4
  %call117 = call i32 @ipu_di_init_sync_panel(ptr noundef %61, ptr noundef nonnull %sig_cfg) #6
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %sig_cfg) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipu_crtc_atomic_check(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state) #5 align 64 {
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
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %active, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %8 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %primary, align 4
  %index.i.i5 = getelementptr inbounds %struct.drm_plane, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %index.i.i5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i.i5, align 4
  %shl.i = shl nuw i32 1, %11
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %plane_mask, align 4
  %and = and i32 %shl.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_crtc_atomic_begin(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #6
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state1, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end29_crit_edge, label %if.then

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %do.end, !prof !51

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 255, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  %event25 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %event25 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event25, align 4
  %event26 = getelementptr i8, ptr %crtc, i32 1012
  %10 = ptrtoint ptr %event26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %event26, align 4
  store ptr null, ptr %event25, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.end, %entry.if.end29_crit_edge
  %11 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crtc, align 8
  %event_lock31 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock31) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_crtc_atomic_enable(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %crtc, i32 -8
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 8
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @ipu_prg_enable(ptr noundef %5) #6
  tail call void @ipu_dc_enable(ptr noundef %5) #6
  %dc = getelementptr i8, ptr %crtc, i32 1000
  %6 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dc, align 8
  tail call void @ipu_dc_enable_channel(ptr noundef %7) #6
  %di = getelementptr i8, ptr %crtc, i32 1004
  %8 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %di, align 4
  %call3 = tail call i32 @ipu_di_enable(ptr noundef %9) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
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
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 8
  %add.ptr.i = getelementptr i8, ptr %crtc, i32 -8
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %parent = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  %dc = getelementptr i8, ptr %crtc, i32 1000
  %12 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dc, align 8
  tail call void @ipu_dc_disable_channel(ptr noundef %13) #6
  %di = getelementptr i8, ptr %crtc, i32 1004
  %14 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %di, align 4
  %call3 = tail call i32 @ipu_di_disable(ptr noundef %15) #6
  %state.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 20
  %16 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state.i, align 4
  %dev.i = getelementptr inbounds %struct.drm_atomic_state, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %plane_list.i = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 30, i32 18
  %20 = ptrtoint ptr %plane_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn52.i = load ptr, ptr %plane_list.i, align 4
  %cmp.not54.i = icmp eq ptr %.pn52.i, %plane_list.i
  br i1 %cmp.not54.i, label %entry.ipu_crtc_disable_planes.exit_crit_edge, label %for.body.lr.ph.i

entry.ipu_crtc_disable_planes.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipu_crtc_disable_planes.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %plane_mask.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %plane_mask.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %plane_mask.i, align 4
  %plane5.i = getelementptr i8, ptr %crtc, i32 992
  %arrayidx9.i = getelementptr i8, ptr %crtc, i32 996
  %tobool10.not.i = icmp eq ptr %arrayidx9.i, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn57.i = phi ptr [ %.pn52.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %disable_partial.0.off056.i = phi i1 [ false, %for.body.lr.ph.i ], [ %disable_partial.1.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %disable_full.0.off055.i = phi i1 [ false, %for.body.lr.ph.i ], [ %disable_full.2.off0.i, %for.inc.i.for.body.i_crit_edge ]
  %plane.058.i = getelementptr i8, ptr %.pn57.i, i32 -4
  %index.i.i.i = getelementptr i8, ptr %.pn57.i, i32 480
  %23 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %24
  %and.i = and i32 %shl.i.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %25 = ptrtoint ptr %plane5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %plane5.i, align 8
  %cmp6.i = icmp eq ptr %plane.058.i, %26
  %spec.select.i = select i1 %cmp6.i, i1 true, i1 %disable_full.0.off055.i
  br i1 %tobool10.not.i, label %if.else.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx9.i, align 4
  %cmp14.i = icmp eq ptr %plane.058.i, %28
  %spec.select51.i = select i1 %cmp14.i, i1 true, i1 %disable_partial.0.off056.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %if.else.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %disable_full.2.off0.i = phi i1 [ %spec.select.i, %if.else.i.for.inc.i_crit_edge ], [ %disable_full.0.off055.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %disable_partial.1.off0.i = phi i1 [ %disable_partial.0.off056.i, %if.else.i.for.inc.i_crit_edge ], [ %disable_partial.0.off056.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select51.i, %land.lhs.true.i ]
  %29 = ptrtoint ptr %.pn57.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn.i = load ptr, ptr %.pn57.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %plane_list.i
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  br i1 %disable_partial.1.off0.i, label %if.then24.i, label %if.end27.i

if.then24.i:                                      ; preds = %for.end.i
  %30 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx9.i, align 4
  tail call void @ipu_plane_disable(ptr noundef %31, i1 noundef zeroext true) #6
  br i1 %disable_full.2.off0.i, label %if.then24.i.if.then29.i_crit_edge, label %if.then24.i.ipu_crtc_disable_planes.exit_crit_edge

if.then24.i.ipu_crtc_disable_planes.exit_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipu_crtc_disable_planes.exit

if.then24.i.if.then29.i_crit_edge:                ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29.i

if.end27.i:                                       ; preds = %for.end.i
  br i1 %disable_full.2.off0.i, label %if.end27.i.if.then29.i_crit_edge, label %if.end27.i.ipu_crtc_disable_planes.exit_crit_edge

if.end27.i.ipu_crtc_disable_planes.exit_crit_edge: ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipu_crtc_disable_planes.exit

if.end27.i.if.then29.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29.i

if.then29.i:                                      ; preds = %if.end27.i.if.then29.i_crit_edge, %if.then24.i.if.then29.i_crit_edge
  %32 = ptrtoint ptr %plane5.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %plane5.i, align 8
  tail call void @ipu_plane_disable(ptr noundef %33, i1 noundef zeroext true) #6
  br label %ipu_crtc_disable_planes.exit

ipu_crtc_disable_planes.exit:                     ; preds = %if.then29.i, %if.end27.i.ipu_crtc_disable_planes.exit_crit_edge, %if.then24.i.ipu_crtc_disable_planes.exit_crit_edge, %entry.ipu_crtc_disable_planes.exit_crit_edge
  tail call void @ipu_dc_disable(ptr noundef %11) #6
  tail call void @ipu_prg_disable(ptr noundef %11) #6
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #6
  %34 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #6
  %state5 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %36 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %state5, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %37, i32 0, i32 18
  %38 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %39, null
  br i1 %tobool.not, label %ipu_crtc_disable_planes.exit.if.end_crit_edge, label %land.lhs.true

ipu_crtc_disable_planes.exit.if.end_crit_edge:    ; preds = %ipu_crtc_disable_planes.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %ipu_crtc_disable_planes.exit
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %37, i32 0, i32 2
  %40 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %active, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool7.not = icmp eq i8 %41, 0
  br i1 %tobool7.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %39) #6
  %42 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state5, align 4
  %event11 = getelementptr inbounds %struct.drm_crtc_state, ptr %43, i32 0, i32 18
  %44 = ptrtoint ptr %event11 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %event11, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %ipu_crtc_disable_planes.exit.if.end_crit_edge
  %45 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %crtc, align 8
  %event_lock13 = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock13) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_to_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_di_adjust_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_dc_init_sync(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_di_init_sync_panel(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_prg_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dc_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dc_enable_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_di_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dc_disable_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipu_di_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dc_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_prg_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_plane_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_dc_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action_or_reset(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ipu_put_resources(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dc = getelementptr inbounds %struct.ipu_crtc, ptr %ptr, i32 0, i32 3
  %0 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc, align 8
  %tobool.not.i = icmp eq ptr %1, null
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_dc_put(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %di = getelementptr inbounds %struct.ipu_crtc, ptr %ptr, i32 0, i32 4
  %2 = ptrtoint ptr %di to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %di, align 4
  %tobool.not.i9 = icmp eq ptr %3, null
  %cmp.i10 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i11 = or i1 %tobool.not.i9, %cmp.i10
  br i1 %spec.select.i11, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ipu_di_put(ptr noundef nonnull %3) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ipu_di_get(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_dc_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ipu_di_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ipu_plane_atomic_update_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !22, !24, !26, !27, !28, !29, !31, !32, !34, !35, !37, !38, !39, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/imx/ipuv3-crtc.c", i32 453, i32 11}
!2 = !{ptr @ipu_drm_driver, !3, !"ipu_drm_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/imx/ipuv3-crtc.c", i32 451, i32 24}
!4 = !{ptr @ipu_crtc_ops, !5, !"ipu_crtc_ops", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/imx/ipuv3-crtc.c", i32 426, i32 35}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/imx/ipuv3-crtc.c", i32 398, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ipu_drm_bind._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @ipu_drm_bind._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/imx/ipuv3-crtc.c", i32 415, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/imx/ipuv3-crtc.c", i32 417, i32 3}
!18 = !{ptr @ipu_drm_bind._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @ipu_drm_bind._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @ipu_crtc_funcs, !21, !"ipu_crtc_funcs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/imx/ipuv3-crtc.c", i32 165, i32 36}
!22 = !{ptr @ipu_helper_funcs, !23, !"ipu_helper_funcs", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/imx/ipuv3-crtc.c", i32 324, i32 43}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/imx/ipuv3-crtc.c", i32 272, i32 2}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ipu_crtc_mode_set_nofb.__UNIQUE_ID_ddebug318, !25, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/imx/ipuv3-crtc.c", i32 274, i32 2}
!31 = !{ptr @ipu_crtc_mode_set_nofb.__UNIQUE_ID_ddebug319, !30, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/imx/ipuv3-crtc.c", i32 282, i32 2}
!34 = !{ptr @ipu_crtc_mode_set_nofb.__UNIQUE_ID_ddebug320, !33, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/imx/ipuv3-crtc.c", i32 311, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ipu_crtc_mode_set_nofb._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ipu_crtc_mode_set_nofb._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/imx/ipuv3-crtc.c", i32 354, i32 8}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 2148732066, i64 2148732071, i64 2148732084, i64 2148732128, i64 2148732162, i64 2148732183}
!53 = !{i8 0, i8 2}
