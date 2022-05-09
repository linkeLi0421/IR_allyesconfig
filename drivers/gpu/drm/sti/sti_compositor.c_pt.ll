; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sti/sti_compositor.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_compositor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.sti_compositor_data = type { i32, [9 x %struct.sti_compositor_subdev_descriptor] }
%struct.sti_compositor_subdev_descriptor = type { i32, i32, i32 }
%struct.sti_compositor = type { ptr, ptr, %struct.sti_compositor_data, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [1 x ptr], [2 x ptr], [2 x %struct.notifier_block] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.84 = type { i32, ptr }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sti-compositor\00", [17 x i8] zeroinitializer }, align 32
@compositor_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-compositor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih407_compositor_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sti_compositor_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sti_compositor_probe, ptr @sti_compositor_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @compositor_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author306 = internal constant [60 x i8] c"sti_drm.author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [54 x i8] c"sti_drm.description=STMicroelectronics SoC DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [41 x i8] c"sti_drm.file=drivers/gpu/drm/sti/sti-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [20 x i8] c"sti_drm.license=GPL\00", section ".modinfo", align 1
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate compositor context\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Get memory resource failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Register mapping failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compo_main\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot get compo_main clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"compo_aux\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Cannot get compo_aux clock\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pix_main\00", [23 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Cannot get pix_main clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pix_aux\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot get pix_aux clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compo-main\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"compo-aux\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st,vtg\00", [25 x i8] zeroinitializer }, align 32
@sti_compositor_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @sti_compositor_bind, ptr @sti_compositor_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unknown subdev component type\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't create CURSOR plane\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't create GDP plane\0A\00", [40 x i8] zeroinitializer }, align 32
@stih407_compositor_data = internal constant { %struct.sti_compositor_data, [48 x i8] } { %struct.sti_compositor_data { i32 8, [9 x %struct.sti_compositor_subdev_descriptor] [%struct.sti_compositor_subdev_descriptor { i32 4, i32 768, i32 0 }, %struct.sti_compositor_subdev_descriptor { i32 2, i32 256, i32 256 }, %struct.sti_compositor_subdev_descriptor { i32 2, i32 257, i32 512 }, %struct.sti_compositor_subdev_descriptor { i32 2, i32 258, i32 768 }, %struct.sti_compositor_subdev_descriptor { i32 2, i32 259, i32 1024 }, %struct.sti_compositor_subdev_descriptor { i32 3, i32 512, i32 1792 }, %struct.sti_compositor_subdev_descriptor { i32 0, i32 0, i32 3072 }, %struct.sti_compositor_subdev_descriptor { i32 1, i32 1, i32 3328 }, %struct.sti_compositor_subdev_descriptor zeroinitializer] }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 268, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"compositor_of_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 163, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"sti_compositor_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 266, i32 24 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 184, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 200, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 205, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 210, i32 44 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 212, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 216, i32 43 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 218, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 222, i32 42 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 224, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 228, i32 41 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 230, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 235, i32 55 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 240, i32 54 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 245, i32 47 }
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c"sti_compositor_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 158, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 93, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 117, i32 5 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 128, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant [24 x i8] c"stih407_compositor_data\00", align 1
@___asan_gen_.83 = private constant [40 x i8] c"../drivers/gpu/drm/sti/sti_compositor.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 31, i32 41 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @.str, ptr @compositor_of_match, ptr @sti_compositor_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @sti_compositor_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @stih407_compositor_data], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compositor_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_compositor_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_compositor_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih407_compositor_data to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sti_compositor_debugfs_init(ptr nocapture noundef readonly %compo, ptr noundef %minor) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %vid = getelementptr inbounds %struct.sti_compositor, ptr %compo, i32 0, i32 10
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vid, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %if.then

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @vid_debugfs_init(ptr noundef nonnull %1, ptr noundef %minor) #5
  br label %for.end

for.end:                                          ; preds = %if.then, %entry.for.end_crit_edge
  %arrayidx6 = getelementptr %struct.sti_compositor, ptr %compo, i32 0, i32 9, i32 0
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6, align 4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %for.end.for.inc12_crit_edge, label %if.then8

for.end.for.inc12_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc12

if.then8:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sti_mixer_debugfs_init(ptr noundef nonnull %3, ptr noundef %minor) #5
  br label %for.inc12

for.inc12:                                        ; preds = %if.then8, %for.end.for.inc12_crit_edge
  %arrayidx6.1 = getelementptr %struct.sti_compositor, ptr %compo, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %arrayidx6.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx6.1, align 4
  %tobool7.not.1 = icmp eq ptr %5, null
  br i1 %tobool7.not.1, label %for.inc12.for.inc12.1_crit_edge, label %if.then8.1

for.inc12.for.inc12.1_crit_edge:                  ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc12.1

if.then8.1:                                       ; preds = %for.inc12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @sti_mixer_debugfs_init(ptr noundef nonnull %5, ptr noundef %minor) #5
  br label %for.inc12.1

for.inc12.1:                                      ; preds = %if.then8.1, %for.inc12.for.inc12.1_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vid_debugfs_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_mixer_debugfs_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_compositor_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 188, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %arrayidx = getelementptr %struct.sti_compositor, ptr %call.i, i32 0, i32 12, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @sti_crtc_vblank_cb, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.sti_compositor, ptr %call.i, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sti_crtc_vblank_cb, ptr %arrayidx.1, align 4
  %call3 = tail call ptr @of_match_node(ptr noundef nonnull @compositor_of_match, ptr noundef %1) #5
  %data = getelementptr inbounds %struct.of_device_id, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.body9, label %do.end15, !prof !60

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/sti/sti_compositor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 192, 0\0A.popsection", ""() #5, !srcloc !61
  unreachable

do.end15:                                         ; preds = %if.end
  %data16 = getelementptr inbounds %struct.sti_compositor, ptr %call.i, i32 0, i32 2
  %call17 = tail call ptr @of_match_node(ptr noundef nonnull @compositor_of_match, ptr noundef %1) #5
  %data18 = getelementptr inbounds %struct.of_device_id, ptr %call17, i32 0, i32 3
  %7 = ptrtoint ptr %data18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data18, align 4
  %9 = call ptr @memcpy(ptr %data16, ptr %8, i32 112)
  %call19 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %cmp20 = icmp eq ptr %call19, null
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end22:                                         ; preds = %do.end15
  %10 = ptrtoint ptr %call19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call19, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call19, i32 0, i32 1
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %11
  %add.i = add i32 %sub.i, %13
  %call24 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %11, i32 noundef %add.i) #5
  %regs = getelementptr inbounds %struct.sti_compositor, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call24, ptr %regs, align 4
  %cmp26 = icmp eq ptr %call24, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #5
  br label %cleanup

if.end28:                                         ; preds = %if.end22
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #5
  %clk_compo_main = getelementptr inbounds %struct.sti_compositor, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %clk_compo_main to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call29, ptr %clk_compo_main, align 4
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #5
  %16 = ptrtoint ptr %clk_compo_main to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_compo_main, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end28
  %call36 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #5
  %clk_compo_aux = getelementptr inbounds %struct.sti_compositor, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %clk_compo_aux to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call36, ptr %clk_compo_aux, align 4
  %cmp.i145 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %if.then39, label %if.end42

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #5
  %20 = ptrtoint ptr %clk_compo_aux to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_compo_aux, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end35
  %call43 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.8) #5
  %clk_pix_main = getelementptr inbounds %struct.sti_compositor, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %clk_pix_main to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call43, ptr %clk_pix_main, align 4
  %cmp.i146 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %if.then46, label %if.end49

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #5
  %24 = ptrtoint ptr %clk_pix_main to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_pix_main, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %cleanup

if.end49:                                         ; preds = %if.end42
  %call50 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.10) #5
  %clk_pix_aux = getelementptr inbounds %struct.sti_compositor, ptr %call.i, i32 0, i32 6
  %27 = ptrtoint ptr %clk_pix_aux to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call50, ptr %clk_pix_aux, align 4
  %cmp.i147 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #5
  %28 = ptrtoint ptr %clk_pix_aux to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %clk_pix_aux, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %cleanup

if.end56:                                         ; preds = %if.end49
  %call.i148 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %rst_main = getelementptr inbounds %struct.sti_compositor, ptr %call.i, i32 0, i32 7
  %31 = ptrtoint ptr %rst_main to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i148, ptr %rst_main, align 4
  %cmp.i149 = icmp ugt ptr %call.i148, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %if.end56.if.end63_crit_edge, label %if.then60

if.end56.if.end63_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  %call62 = tail call i32 @reset_control_deassert(ptr noundef %call.i148) #5
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %if.end56.if.end63_crit_edge
  %call.i150 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %rst_aux = getelementptr inbounds %struct.sti_compositor, ptr %call.i, i32 0, i32 8
  %32 = ptrtoint ptr %rst_aux to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i150, ptr %rst_aux, align 4
  %cmp.i151 = icmp ugt ptr %call.i150, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.end63.if.end70_crit_edge, label %if.then67

if.end63.if.end70_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end70

if.then67:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  %call69 = tail call i32 @reset_control_deassert(ptr noundef %call.i150) #5
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.end63.if.end70_crit_edge
  %33 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node, align 8
  %call73 = tail call fastcc ptr @of_parse_phandle(ptr noundef %34, i32 noundef 0)
  %tobool74.not = icmp eq ptr %call73, null
  br i1 %tobool74.not, label %if.end70.if.end78_crit_edge, label %if.then75

if.end70.if.end78_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end78

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  %call76 = tail call ptr @of_vtg_find(ptr noundef nonnull %call73) #5
  %vtg = getelementptr inbounds %struct.sti_compositor, ptr %call.i, i32 0, i32 11
  %35 = ptrtoint ptr %vtg to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call76, ptr %vtg, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %if.end70.if.end78_crit_edge
  tail call void @of_node_put(ptr noundef %call73) #5
  %36 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node, align 8
  %call81 = tail call fastcc ptr @of_parse_phandle(ptr noundef %37, i32 noundef 1)
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %if.end78.if.end87_crit_edge, label %if.then83

if.end78.if.end87_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87

if.then83:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  %call84 = tail call ptr @of_vtg_find(ptr noundef nonnull %call81) #5
  %arrayidx86 = getelementptr %struct.sti_compositor, ptr %call.i, i32 0, i32 11, i32 1
  %38 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call84, ptr %arrayidx86, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then83, %if.end78.if.end87_crit_edge
  tail call void @of_node_put(ptr noundef %call81) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call89 = tail call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @sti_compositor_ops) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %if.then53, %if.then46, %if.then39, %if.then32, %if.then27, %if.then21, %if.then
  %retval.0 = phi i32 [ -6, %if.then21 ], [ -6, %if.then27 ], [ %18, %if.then32 ], [ %22, %if.then39 ], [ %26, %if.then46 ], [ %30, %if.then53 ], [ %call89, %if.end87 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_compositor_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @sti_compositor_ops) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_crtc_vblank_cb(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @of_parse_phandle(ptr noundef %np, i32 noundef %index) unnamed_addr #3 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #5
  %0 = call ptr @memset(ptr %args, i32 255, i32 72)
  %call = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef %index, ptr noundef nonnull %args) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %args, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %2, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_vtg_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_compositor_bind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %data1 = getelementptr inbounds %struct.sti_compositor, ptr %1, i32 0, i32 2
  %subdev_desc = getelementptr inbounds %struct.sti_compositor, ptr %1, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data1, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp145.not = icmp eq i32 %5, 0
  br i1 %cmp145.not, label %entry.for.end64_crit_edge, label %for.body.lr.ph

entry.for.end64_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end64

for.body.lr.ph:                                   ; preds = %entry
  %regs13 = getelementptr inbounds %struct.sti_compositor, ptr %1, i32 0, i32 1
  br label %for.body

for.cond22.preheader:                             ; preds = %for.inc
  br i1 %cmp145.not, label %for.cond22.preheader.for.end64_crit_edge, label %for.body24.lr.ph

for.cond22.preheader.for.end64_crit_edge:         ; preds = %for.cond22.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end64

for.body24.lr.ph:                                 ; preds = %for.cond22.preheader
  %regs44 = getelementptr inbounds %struct.sti_compositor, ptr %1, i32 0, i32 1
  %notmask = shl nsw i32 -1, %mixer_id.1
  %sub = xor i32 %notmask, -1
  br label %for.body24

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vid_id.0149 = phi i32 [ 0, %for.body.lr.ph ], [ %vid_id.1, %for.inc.for.body_crit_edge ]
  %mixer_id.0148 = phi i32 [ 0, %for.body.lr.ph ], [ %mixer_id.1, %for.inc.for.body_crit_edge ]
  %i.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %inc21, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %subdev_desc, i32 %i.0146
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %sw.default [
    i32 3, label %sw.bb
    i32 0, label %for.body.sw.bb9_crit_edge
    i32 1, label %for.body.sw.bb9_crit_edge161
    i32 2, label %for.body.for.inc_crit_edge
    i32 4, label %for.body.for.inc_crit_edge162
  ]

for.body.for.inc_crit_edge162:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.body.sw.bb9_crit_edge161:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

for.body.sw.bb9_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %id = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %subdev_desc, i32 %i.0146, i32 1
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %14 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs13, align 4
  %offset = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %subdev_desc, i32 %i.0146, i32 2
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %17
  %call7 = tail call ptr @sti_vid_create(ptr noundef %11, ptr noundef %data, i32 noundef %13, ptr noundef %add.ptr) #5
  %inc = add i32 %vid_id.0149, 1
  %arrayidx8 = getelementptr %struct.sti_compositor, ptr %1, i32 0, i32 10, i32 %vid_id.0149
  %18 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7, ptr %arrayidx8, align 4
  br label %for.inc

sw.bb9:                                           ; preds = %for.body.sw.bb9_crit_edge, %for.body.sw.bb9_crit_edge161
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %id12 = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %subdev_desc, i32 %i.0146, i32 1
  %21 = ptrtoint ptr %id12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id12, align 4
  %23 = ptrtoint ptr %regs13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs13, align 4
  %offset15 = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %subdev_desc, i32 %i.0146, i32 2
  %25 = ptrtoint ptr %offset15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset15, align 4
  %add.ptr16 = getelementptr i8, ptr %24, i32 %26
  %call17 = tail call ptr @sti_mixer_create(ptr noundef %20, ptr noundef %data, i32 noundef %22, ptr noundef %add.ptr16) #5
  %inc18 = add i32 %mixer_id.0148, 1
  %arrayidx19 = getelementptr %struct.sti_compositor, ptr %1, i32 0, i32 9, i32 %mixer_id.0148
  %27 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call17, ptr %arrayidx19, align 4
  br label %for.inc

sw.default:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #5
  br label %cleanup66

for.inc:                                          ; preds = %sw.bb9, %sw.bb, %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge162
  %mixer_id.1 = phi i32 [ %mixer_id.0148, %for.body.for.inc_crit_edge ], [ %mixer_id.0148, %for.body.for.inc_crit_edge162 ], [ %inc18, %sw.bb9 ], [ %mixer_id.0148, %sw.bb ]
  %vid_id.1 = phi i32 [ %vid_id.0149, %for.body.for.inc_crit_edge ], [ %vid_id.0149, %for.body.for.inc_crit_edge162 ], [ %vid_id.0149, %sw.bb9 ], [ %inc, %sw.bb ]
  %inc21 = add nuw i32 %i.0146, 1
  %exitcond.not = icmp eq i32 %inc21, %5
  br i1 %exitcond.not, label %for.cond22.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body24:                                       ; preds = %for.inc62.for.body24_crit_edge, %for.body24.lr.ph
  %primary.0157 = phi ptr [ null, %for.body24.lr.ph ], [ %primary.3.ph, %for.inc62.for.body24_crit_edge ]
  %cursor.0156 = phi ptr [ null, %for.body24.lr.ph ], [ %cursor.3.ph, %for.inc62.for.body24_crit_edge ]
  %crtc_id.0154 = phi i32 [ 0, %for.body24.lr.ph ], [ %crtc_id.2.ph, %for.inc62.for.body24_crit_edge ]
  %i.1151 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc63, %for.inc62.for.body24_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %crtc_id.0154, i32 %mixer_id.1)
  %cmp25 = icmp ult i32 %crtc_id.0154, %mixer_id.1
  %arrayidx26 = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %subdev_desc, i32 %i.1151
  %28 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx26, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %29, label %cleanup [
    i32 0, label %for.body24.sw.epilog53_crit_edge
    i32 1, label %for.body24.sw.epilog53_crit_edge163
    i32 3, label %for.body24.sw.epilog53_crit_edge164
    i32 4, label %sw.bb29
    i32 2, label %sw.bb40
  ]

for.body24.sw.epilog53_crit_edge164:              ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog53

for.body24.sw.epilog53_crit_edge163:              ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog53

for.body24.sw.epilog53_crit_edge:                 ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog53

sw.bb29:                                          ; preds = %for.body24
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %id32 = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %subdev_desc, i32 %i.1151, i32 1
  %33 = ptrtoint ptr %id32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id32, align 4
  %35 = ptrtoint ptr %regs44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs44, align 4
  %offset35 = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %subdev_desc, i32 %i.1151, i32 2
  %37 = ptrtoint ptr %offset35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %offset35, align 4
  %add.ptr36 = getelementptr i8, ptr %36, i32 %38
  %call37 = tail call ptr @sti_cursor_create(ptr noundef %data, ptr noundef %32, i32 noundef %34, ptr noundef %add.ptr36, i32 noundef 1) #5
  %tobool.not = icmp eq ptr %call37, null
  br i1 %tobool.not, label %if.then38, label %sw.bb29.sw.epilog53_crit_edge

sw.bb29.sw.epilog53_crit_edge:                    ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog53

if.then38:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #5
  br label %sw.epilog53

sw.bb40:                                          ; preds = %for.body24
  %spec.store.select = zext i1 %cmp25 to i32
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %id43 = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %subdev_desc, i32 %i.1151, i32 1
  %41 = ptrtoint ptr %id43 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id43, align 4
  %43 = ptrtoint ptr %regs44 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs44, align 4
  %offset46 = getelementptr %struct.sti_compositor_subdev_descriptor, ptr %subdev_desc, i32 %i.1151, i32 2
  %45 = ptrtoint ptr %offset46 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %offset46, align 4
  %add.ptr47 = getelementptr i8, ptr %44, i32 %46
  %call48 = tail call ptr @sti_gdp_create(ptr noundef %data, ptr noundef %40, i32 noundef %42, ptr noundef %add.ptr47, i32 noundef %sub, i32 noundef %spec.store.select) #5
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %sw.epilog53.thread, label %sw.bb40.sw.epilog53_crit_edge

sw.bb40.sw.epilog53_crit_edge:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %sw.bb40.sw.epilog53_crit_edge, %if.then38, %sw.bb29.sw.epilog53_crit_edge, %for.body24.sw.epilog53_crit_edge, %for.body24.sw.epilog53_crit_edge163, %for.body24.sw.epilog53_crit_edge164
  %cursor.1 = phi ptr [ %cursor.0156, %sw.bb40.sw.epilog53_crit_edge ], [ %call37, %sw.bb29.sw.epilog53_crit_edge ], [ null, %if.then38 ], [ %cursor.0156, %for.body24.sw.epilog53_crit_edge ], [ %cursor.0156, %for.body24.sw.epilog53_crit_edge163 ], [ %cursor.0156, %for.body24.sw.epilog53_crit_edge164 ]
  %primary.1 = phi ptr [ %call48, %sw.bb40.sw.epilog53_crit_edge ], [ %primary.0157, %sw.bb29.sw.epilog53_crit_edge ], [ %primary.0157, %if.then38 ], [ %primary.0157, %for.body24.sw.epilog53_crit_edge ], [ %primary.0157, %for.body24.sw.epilog53_crit_edge163 ], [ %primary.0157, %for.body24.sw.epilog53_crit_edge164 ]
  br i1 %cmp25, label %land.lhs.true, label %sw.epilog53.for.inc62_crit_edge

sw.epilog53.for.inc62_crit_edge:                  ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc62

sw.epilog53.thread:                               ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #5
  br label %for.inc62

land.lhs.true:                                    ; preds = %sw.epilog53
  %tobool55.not = icmp eq ptr %primary.1, null
  br i1 %tobool55.not, label %land.lhs.true.for.inc62_crit_edge, label %if.then56

land.lhs.true.for.inc62_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc62

if.then56:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx58 = getelementptr %struct.sti_compositor, ptr %1, i32 0, i32 9, i32 %crtc_id.0154
  %47 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx58, align 4
  %call59 = tail call i32 @sti_crtc_init(ptr noundef %data, ptr noundef %48, ptr noundef nonnull %primary.1, ptr noundef %cursor.1) #5
  %inc60 = add nuw i32 %crtc_id.0154, 1
  br label %for.inc62

cleanup:                                          ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #5
  br label %cleanup66

for.inc62:                                        ; preds = %if.then56, %land.lhs.true.for.inc62_crit_edge, %sw.epilog53.thread, %sw.epilog53.for.inc62_crit_edge
  %crtc_id.2.ph = phi i32 [ %crtc_id.0154, %sw.epilog53.for.inc62_crit_edge ], [ %crtc_id.0154, %land.lhs.true.for.inc62_crit_edge ], [ %inc60, %if.then56 ], [ %crtc_id.0154, %sw.epilog53.thread ]
  %cursor.3.ph = phi ptr [ %cursor.1, %sw.epilog53.for.inc62_crit_edge ], [ %cursor.1, %land.lhs.true.for.inc62_crit_edge ], [ null, %if.then56 ], [ %cursor.0156, %sw.epilog53.thread ]
  %primary.3.ph = phi ptr [ %primary.1, %sw.epilog53.for.inc62_crit_edge ], [ null, %land.lhs.true.for.inc62_crit_edge ], [ null, %if.then56 ], [ null, %sw.epilog53.thread ]
  %inc63 = add nuw i32 %i.1151, 1
  %exitcond159.not = icmp eq i32 %inc63, %5
  br i1 %exitcond159.not, label %for.inc62.for.end64_crit_edge, label %for.inc62.for.body24_crit_edge

for.inc62.for.body24_crit_edge:                   ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body24

for.inc62.for.end64_crit_edge:                    ; preds = %for.inc62
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end64

for.end64:                                        ; preds = %for.inc62.for.end64_crit_edge, %for.cond22.preheader.for.end64_crit_edge, %entry.for.end64_crit_edge
  %crtc_id.0.lcssa = phi i32 [ 0, %for.cond22.preheader.for.end64_crit_edge ], [ 0, %entry.for.end64_crit_edge ], [ %crtc_id.2.ph, %for.inc62.for.end64_crit_edge ]
  %call65 = tail call i32 @drm_vblank_init(ptr noundef %data, i32 noundef %crtc_id.0.lcssa) #5
  br label %cleanup66

cleanup66:                                        ; preds = %for.end64, %cleanup, %sw.default
  %retval.2 = phi i32 [ 1, %sw.default ], [ 1, %cleanup ], [ 0, %for.end64 ]
  ret i32 %retval.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sti_compositor_unbind(ptr nocapture noundef %dev, ptr nocapture noundef %master, ptr nocapture noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_vid_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_mixer_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_cursor_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_gdp_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_crtc_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 268, i32 11}
!2 = !{ptr @sti_compositor_driver, !3, !"sti_compositor_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 266, i32 24}
!4 = !{ptr @__UNIQUE_ID_author306, !5, !"__UNIQUE_ID_author306", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 275, i32 1}
!6 = !{ptr @__UNIQUE_ID_description307, !7, !"__UNIQUE_ID_description307", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 276, i32 1}
!8 = !{ptr @__UNIQUE_ID_file308, !9, !"__UNIQUE_ID_file308", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 277, i32 1}
!10 = !{ptr @__UNIQUE_ID_license309, !9, !"__UNIQUE_ID_license309", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 184, i32 3}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 200, i32 3}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 205, i32 3}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 210, i32 44}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 212, i32 3}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 216, i32 43}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 218, i32 3}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 222, i32 42}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 224, i32 3}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 228, i32 41}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 230, i32 3}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 235, i32 55}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 240, i32 54}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 245, i32 47}
!39 = !{ptr @sti_compositor_ops, !40, !"sti_compositor_ops", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 158, i32 35}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 93, i32 4}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 117, i32 5}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 128, i32 5}
!47 = !{ptr @compositor_of_match, !48, !"compositor_of_match", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 163, i32 34}
!49 = !{ptr @stih407_compositor_data, !50, !"stih407_compositor_data", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/sti/sti_compositor.c", i32 31, i32 41}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"branch_weights", i32 1, i32 2000}
!61 = !{i64 2156654301, i64 2156654802, i64 2156654338, i64 2156654394, i64 2156654428, i64 2156654452, i64 2156654493, i64 2156654514, i64 2156654542, i64 2156654576}
