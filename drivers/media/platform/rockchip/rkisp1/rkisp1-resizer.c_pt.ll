; ModuleID = '/llk/IR_all_yes/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c_pt.bc'
source_filename = "../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rkisp1_rsz_config = type { i32, i32, i32, i32, %struct.anon.95, %struct.anon.96 }
%struct.anon.95 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.96 = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_entity_operations = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rkisp1_rsz_yuv_mbus_info = type { i32, i32, i32 }
%struct.rkisp1_device = type { ptr, ptr, i32, [8 x %struct.clk_bulk_data], %struct.v4l2_device, %struct.media_device, %struct.v4l2_async_notifier, ptr, %struct.rkisp1_isp, [2 x %struct.rkisp1_resizer], [2 x %struct.rkisp1_capture], %struct.rkisp1_stats, %struct.rkisp1_params, %struct.media_pipeline, %struct.mutex, %struct.rkisp1_debug }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_async_notifier = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.rkisp1_isp = type { %struct.v4l2_subdev, [4 x %struct.media_pad], [4 x %struct.v4l2_subdev_pad_config], ptr, ptr, %struct.mutex, i8, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.91, i16, i16, i16, [10 x i16] }
%union.anon.91 = type { i16 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.rkisp1_resizer = type { %struct.v4l2_subdev, i32, ptr, [2 x %struct.media_pad], [2 x %struct.v4l2_subdev_pad_config], ptr, i32, %struct.mutex }
%struct.rkisp1_capture = type { %struct.rkisp1_vdev_node, ptr, i32, ptr, ptr, i8, i8, %struct.wait_queue_head, i32, %struct.anon.97, %struct.anon.98 }
%struct.rkisp1_vdev_node = type { %struct.vb2_queue, %struct.mutex, %struct.video_device, %struct.media_pad }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.97 = type { %struct.spinlock, %struct.list_head, %struct.rkisp1_dummy_buffer, ptr, ptr }
%struct.rkisp1_dummy_buffer = type { ptr, i32, i32 }
%struct.anon.98 = type { ptr, ptr, %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.99, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.99 = type { i8 }
%struct.rkisp1_stats = type { %struct.rkisp1_vdev_node, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.v4l2_format }
%struct.v4l2_format = type { i32, %union.anon.100 }
%union.anon.100 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.rkisp1_params = type { %struct.rkisp1_vdev_node, ptr, ptr, %struct.spinlock, %struct.list_head, %struct.v4l2_format, i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.rkisp1_debug = type { ptr, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32] }
%struct.v4l2_subdev_state = type { ptr }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.rkisp1_isp_mbus_info = type { i32, i32, i32, i32, i8, i32, i32 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect, [8 x i32] }

@rkisp1_rsz_register.dev_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str, ptr @.str.1], [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rkisp1_resizer_mainpath\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rkisp1_resizer_selfpath\00", [40 x i8] zeroinitializer }, align 32
@rkisp1_rsz_config_sp = internal constant { %struct.rkisp1_rsz_config, [60 x i8] } { %struct.rkisp1_rsz_config { i32 1920, i32 1920, i32 32, i32 16, %struct.anon.95 { i32 4096, i32 4144, i32 4100, i32 4108, i32 4104, i32 4112, i32 4116, i32 4140, i32 4136, i32 4148, i32 4156, i32 4152, i32 4160, i32 4164, i32 4120, i32 4124, i32 4128, i32 4132, i32 4168, i32 4172, i32 4176, i32 4180 }, %struct.anon.96 { i32 2176, i32 4, i32 8, i32 2196, i32 2200, i32 2204, i32 2208 } }, [60 x i8] zeroinitializer }, align 32
@rkisp1_rsz_config_mp = internal constant { %struct.rkisp1_rsz_config, [60 x i8] } { %struct.rkisp1_rsz_config { i32 4416, i32 3312, i32 32, i32 16, %struct.anon.95 { i32 3072, i32 3120, i32 3076, i32 3084, i32 3080, i32 3088, i32 3092, i32 3116, i32 3112, i32 3124, i32 3132, i32 3128, i32 3136, i32 3140, i32 3096, i32 3100, i32 3104, i32 3108, i32 3144, i32 3148, i32 3152, i32 3156 }, %struct.anon.96 { i32 2176, i32 1, i32 2, i32 2180, i32 2184, i32 2188, i32 2192 } }, [60 x i8] zeroinitializer }, align 32
@rkisp1_rsz_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr null, ptr null, ptr @rkisp1_rsz_video_ops, ptr null, ptr null, ptr null, ptr @rkisp1_rsz_pad_ops }, [32 x i8] zeroinitializer }, align 32
@rkisp1_rsz_media_ops = internal constant { %struct.media_entity_operations, [20 x i8] } { %struct.media_entity_operations { ptr null, ptr null, ptr @v4l2_subdev_link_validate }, [20 x i8] zeroinitializer }, align 32
@rkisp1_rsz_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&rsz->ops_lock\00", [17 x i8] zeroinitializer }, align 32
@rkisp1_rsz_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 828, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register resizer subdev\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rkisp1_rsz_register\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rkisp1_rsz_register._entry_ptr = internal global ptr @rkisp1_rsz_register._entry, section ".printk_index", align 4
@rkisp1_rsz_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rkisp1_rsz_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@rkisp1_rsz_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr @rkisp1_rsz_init_config, ptr @rkisp1_rsz_enum_mbus_code, ptr null, ptr null, ptr @rkisp1_rsz_get_fmt, ptr @rkisp1_rsz_set_fmt, ptr @rkisp1_rsz_get_selection, ptr @rkisp1_rsz_set_selection, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_subdev_link_validate_default, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rkisp1_rsz_config.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.10, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rockchip_isp1\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rkisp1_rsz_config\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"stream %d rsz/scale: %dx%d -> %dx%d\0A\00", [59 x i8] zeroinitializer }, align 32
@rkisp1_rsz_config.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.5, ptr @.str.11, i8 0, i8 111, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"chroma scaling %dx%d -> %dx%d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/media/v4l2-subdev.h\00", [36 x i8] zeroinitializer }, align 32
@rkisp1_rsz_yuv_src_formats = internal constant { [2 x %struct.rkisp1_rsz_yuv_mbus_info], [40 x i8] } { [2 x %struct.rkisp1_rsz_yuv_mbus_info] [%struct.rkisp1_rsz_yuv_mbus_info { i32 8200, i32 2, i32 1 }, %struct.rkisp1_rsz_yuv_mbus_info { i32 8196, i32 2, i32 2 }], [40 x i8] zeroinitializer }, align 32
@rkisp1_rsz_dump_regs.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.5, ptr @.str.14, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rkisp1_rsz_dump_regs\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [197 x i8], [59 x i8] } { [197 x i8] c"RSZ_CTRL 0x%08x/0x%08x\0ARSZ_SCALE_HY %d/%d\0ARSZ_SCALE_HCB %d/%d\0ARSZ_SCALE_HCR %d/%d\0ARSZ_SCALE_VY %d/%d\0ARSZ_SCALE_VC %d/%d\0ARSZ_PHASE_HY %d/%d\0ARSZ_PHASE_HC %d/%d\0ARSZ_PHASE_VY %d/%d\0ARSZ_PHASE_VC %d/%d\0A\00", [59 x i8] zeroinitializer }, align 32
@rkisp1_dcrop_config.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.15, ptr @.str.5, ptr @.str.16, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rkisp1_dcrop_config\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"capture %d crop disabled\0A\00", [38 x i8] zeroinitializer }, align 32
@rkisp1_dcrop_config.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.15, ptr @.str.5, ptr @.str.17, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"stream %d crop: %dx%d -> %dx%d\0A\00", [32 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@rkisp1_rsz_set_selection.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.18, ptr @.str.5, ptr @.str.19, i8 0, i8 -76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rkisp1_rsz_set_selection\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: pad: %d sel(%d,%d)/%dx%d\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 8196, i64 8200]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.21 = private unnamed_addr constant [10 x i8] c"dev_names\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 794, i32 28 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 795, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 796, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"rkisp1_rsz_config_sp\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 139, i32 39 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"rkisp1_rsz_config_mp\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 97, i32 39 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"rkisp1_rsz_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 778, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"rkisp1_rsz_media_ops\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 731, i32 45 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 821, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 828, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [21 x i8] c"rkisp1_rsz_video_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 774, i32 43 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"rkisp1_rsz_pad_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 735, i32 41 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 443, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 446, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [31 x i8] c"../include/media/v4l2-subdev.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 1016, i32 6 }
@___asan_gen_.87 = private unnamed_addr constant [27 x i8] c"rkisp1_rsz_yuv_src_formats\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 25, i32 46 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 269, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 245, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 258, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [59 x i8] c"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 721, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @rkisp1_rsz_register._entry, ptr @rkisp1_rsz_register._entry_ptr, ptr @rkisp1_rsz_register.dev_names, ptr @.str, ptr @.str.1, ptr @rkisp1_rsz_config_sp, ptr @rkisp1_rsz_config_mp, ptr @rkisp1_rsz_ops, ptr @rkisp1_rsz_media_ops, ptr @rkisp1_rsz_register.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @rkisp1_rsz_video_ops, ptr @rkisp1_rsz_pad_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @rkisp1_rsz_yuv_src_formats, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_rsz_register.dev_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_rsz_config_sp to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_rsz_config_mp to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_rsz_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_rsz_media_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_rsz_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_rsz_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_rsz_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_rsz_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rkisp1_rsz_yuv_src_formats to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 197, i32 256, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rkisp1_resizer_devs_register(ptr noundef %rkisp1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cmp.i = phi i1 [ false, %entry ], [ true, %for.inc.for.body_crit_edge ]
  %cmp337.not = phi i1 [ true, %entry ], [ false, %for.inc.for.body_crit_edge ]
  %i.036 = phi i32 [ 0, %entry ], [ 1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 9, i32 %i.036
  %rkisp11 = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 9, i32 %i.036, i32 2
  %0 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %rkisp1, ptr %rkisp11, align 4
  %id = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 9, i32 %i.036, i32 1
  %1 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %i.036, ptr %id, align 4
  %pad_cfg.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 9, i32 %i.036, i32 4
  %pads2.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 9, i32 %i.036, i32 3
  %spec.select.i = select i1 %cmp.i, ptr @rkisp1_rsz_config_sp, ptr @rkisp1_rsz_config_mp
  %2 = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 9, i32 %i.036, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spec.select.i, ptr %2, align 4
  tail call void @v4l2_subdev_init(ptr noundef %arrayidx, ptr noundef nonnull @rkisp1_rsz_ops) #5
  %flags.i = getelementptr inbounds %struct.v4l2_subdev, ptr %arrayidx, i32 0, i32 4
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %5, 4
  store i32 %or.i, ptr %flags.i, align 4
  %ops.i = getelementptr inbounds %struct.media_entity, ptr %arrayidx, i32 0, i32 11
  %6 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rkisp1_rsz_media_ops, ptr %ops.i, align 4
  %function.i = getelementptr inbounds %struct.media_entity, ptr %arrayidx, i32 0, i32 3
  %7 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16389, ptr %function.i, align 4
  %owner.i = getelementptr inbounds %struct.v4l2_subdev, ptr %arrayidx, i32 0, i32 2
  %8 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner.i, align 4
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %arrayidx, i32 0, i32 9
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr @rkisp1_rsz_register.dev_names, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strscpy(ptr noundef %name.i, ptr noundef %12, i32 noundef 32) #5
  %flags10.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 9, i32 %i.036, i32 3, i32 0, i32 4
  %13 = ptrtoint ptr %flags10.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 5, ptr %flags10.i, align 4
  %flags12.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 9, i32 %i.036, i32 3, i32 1, i32 4
  %14 = ptrtoint ptr %flags12.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 6, ptr %flags12.i, align 4
  %pixel_enc.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 9, i32 %i.036, i32 6
  %15 = ptrtoint ptr %pixel_enc.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %pixel_enc.i, align 4
  %ops_lock.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 9, i32 %i.036, i32 7
  tail call void @__mutex_init(ptr noundef %ops_lock.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @rkisp1_rsz_register.__key) #5
  %call14.i = tail call i32 @media_entity_pads_init(ptr noundef %arrayidx, i16 noundef zeroext 2, ptr noundef %pads2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %if.end16.i, label %for.body.rkisp1_rsz_register.exit_crit_edge

for.body.rkisp1_rsz_register.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %rkisp1_rsz_register.exit

if.end16.i:                                       ; preds = %for.body
  %16 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rkisp11, align 4
  %v4l2_dev.i = getelementptr inbounds %struct.rkisp1_device, ptr %17, i32 0, i32 4
  %call17.i = tail call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev.i, ptr noundef %arrayidx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end23.i, label %do.end22.i

do.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.v4l2_subdev, ptr %arrayidx, i32 0, i32 14
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.3) #8
  br label %rkisp1_rsz_register.exit

if.end23.i:                                       ; preds = %if.end16.i
  %num_pads.i.i.i = getelementptr inbounds %struct.media_entity, ptr %arrayidx, i32 0, i32 5
  %20 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp.not.i.i.i = icmp ugt i16 %21, 1
  br i1 %cmp.not.i.i.i, label %if.end23.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !65

if.end23.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_format.exit.i.i

do.end.i.i.i:                                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_format.exit.i.i

v4l2_subdev_get_try_format.exit.i.i:              ; preds = %do.end.i.i.i, %if.end23.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge
  %spec.select.i.i.i = phi i32 [ 0, %do.end.i.i.i ], [ 1, %if.end23.i.v4l2_subdev_get_try_format.exit.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %pad_cfg.i, i32 %spec.select.i.i.i
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 800, ptr %arrayidx.i.i.i, align 4
  %height.i.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %height.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 600, ptr %height.i.i, align 4
  %field.i.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %field.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %field.i.i, align 4
  %code.i.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %code.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 8200, ptr %code.i.i, align 4
  %26 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %cmp.i.i.i = icmp eq i16 %27, 0
  br i1 %cmp.i.i.i, label %do.end.i17.i.i, label %v4l2_subdev_get_try_format.exit.i.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge, !prof !66

v4l2_subdev_get_try_format.exit.i.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_crop.exit.i.i

do.end.i17.i.i:                                   ; preds = %v4l2_subdev_get_try_format.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1016, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_crop.exit.i.i

v4l2_subdev_get_try_crop.exit.i.i:                ; preds = %do.end.i17.i.i, %v4l2_subdev_get_try_format.exit.i.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge
  %try_crop.i.i.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 9, i32 %i.036, i32 4, i32 0, i32 1
  %width2.i.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 9, i32 %i.036, i32 4, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %width2.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 800, ptr %width2.i.i, align 4
  %height3.i.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 9, i32 %i.036, i32 4, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %height3.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 600, ptr %height3.i.i, align 4
  %30 = ptrtoint ptr %try_crop.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %try_crop.i.i.i, align 4
  %top.i.i = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 9, i32 %i.036, i32 4, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %top.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %top.i.i, align 4
  %32 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp.not.i20.not.i.i = icmp eq i16 %33, 0
  br i1 %cmp.not.i20.not.i.i, label %do.end.i21.i.i, label %v4l2_subdev_get_try_crop.exit.i.i.for.inc_crit_edge, !prof !66

v4l2_subdev_get_try_crop.exit.i.i.for.inc_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end.i21.i.i:                                   ; preds = %v4l2_subdev_get_try_crop.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %for.inc

rkisp1_rsz_register.exit:                         ; preds = %do.end22.i, %for.body.rkisp1_rsz_register.exit_crit_edge
  %retval.0.i = phi i32 [ %call17.i, %do.end22.i ], [ %call14.i, %for.body.rkisp1_rsz_register.exit_crit_edge ]
  %resizer_devs34 = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 9
  br i1 %cmp337.not, label %rkisp1_rsz_register.exit.cleanup_crit_edge, label %rkisp1_rsz_register.exit.for.body4_crit_edge

rkisp1_rsz_register.exit.for.body4_crit_edge:     ; preds = %rkisp1_rsz_register.exit
  br label %for.body4

rkisp1_rsz_register.exit.cleanup_crit_edge:       ; preds = %rkisp1_rsz_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %do.end.i21.i.i, %v4l2_subdev_get_try_crop.exit.i.i.for.inc_crit_edge
  %34 = call ptr @memcpy(ptr %pad_cfg.i, ptr %arrayidx.i.i.i, i32 48)
  br i1 %cmp337.not, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %rkisp1_rsz_register.exit.for.body4_crit_edge
  tail call void @v4l2_device_unregister_subdev(ptr noundef %resizer_devs34) #5
  br i1 %cmp.i, label %for.body4.cleanup_crit_edge, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body4

for.body4.cleanup_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body4.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %rkisp1_rsz_register.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %rkisp1_rsz_register.exit.cleanup_crit_edge ], [ %retval.0.i, %for.body4.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rkisp1_resizer_devs_unregister(ptr noundef %rkisp1) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %resizer_devs = getelementptr inbounds %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 9
  %arrayidx2 = getelementptr %struct.rkisp1_device, ptr %rkisp1, i32 0, i32 9, i32 1
  tail call void @v4l2_device_unregister_subdev(ptr noundef %resizer_devs) #5
  tail call void @v4l2_device_unregister_subdev(ptr noundef %arrayidx2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_rsz_init_config(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %sd_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pads.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp.not.i = icmp ugt i16 %1, 1
  br i1 %cmp.not.i, label %entry.v4l2_subdev_get_try_format.exit_crit_edge, label %do.end.i, !prof !65

entry.v4l2_subdev_get_try_format.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_format.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_format.exit

v4l2_subdev_get_try_format.exit:                  ; preds = %do.end.i, %entry.v4l2_subdev_get_try_format.exit_crit_edge
  %spec.select.i = phi i32 [ 0, %do.end.i ], [ 1, %entry.v4l2_subdev_get_try_format.exit_crit_edge ]
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  %arrayidx.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %3, i32 %spec.select.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 800, ptr %arrayidx.i, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 1
  %5 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 600, ptr %height, align 4
  %field = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 3
  %6 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %field, align 4
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i, i32 0, i32 2
  %7 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8200, ptr %code, align 4
  %8 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.i = icmp eq i16 %9, 0
  br i1 %cmp.i, label %do.end.i17, label %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge, !prof !66

v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge: ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_crop.exit

do.end.i17:                                       ; preds = %v4l2_subdev_get_try_format.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1016, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_crop.exit

v4l2_subdev_get_try_crop.exit:                    ; preds = %do.end.i17, %v4l2_subdev_get_try_format.exit.v4l2_subdev_get_try_crop.exit_crit_edge
  %10 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sd_state, align 4
  %try_crop.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %11, i32 0, i32 1
  %width2 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %11, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %width2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 800, ptr %width2, align 4
  %height3 = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %11, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 600, ptr %height3, align 4
  %14 = ptrtoint ptr %try_crop.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %try_crop.i, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %11, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %top, align 4
  %16 = ptrtoint ptr %num_pads.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_pads.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp.not.i20.not = icmp eq i16 %17, 0
  br i1 %cmp.not.i20.not, label %do.end.i21, label %v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_format.exit24_crit_edge, !prof !66

v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_format.exit24_crit_edge: ; preds = %v4l2_subdev_get_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_format.exit24

do.end.i21:                                       ; preds = %v4l2_subdev_get_try_crop.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_format.exit24

v4l2_subdev_get_try_format.exit24:                ; preds = %do.end.i21, %v4l2_subdev_get_try_crop.exit.v4l2_subdev_get_try_format.exit24_crit_edge
  %18 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sd_state, align 4
  %20 = call ptr @memcpy(ptr %19, ptr %arrayidx.i, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_rsz_s_stream(ptr noundef %sd, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rkisp1.i = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 2
  %0 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1.i, align 4
  %config.i = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 5
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config.i, align 4
  %dual_crop.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dual_crop.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dual_crop.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %5
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !67
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %yuvmode_mask.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %11, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %yuvmode_mask.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %yuvmode_mask.i, align 4
  %rawmode_mask.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %11, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %rawmode_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rawmode_mask.i, align 4
  %or.i = or i32 %15, %13
  %neg.i = xor i32 %or.i, -1
  %and.i = and i32 %9, %neg.i
  %dc_ctrl.0.i = or i32 %and.i, 64
  %16 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rkisp1.i, align 4
  %dual_crop9.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %11, i32 0, i32 5
  %18 = ptrtoint ptr %dual_crop9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dual_crop9.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %20 = tail call i32 @llvm.bswap.i32(i32 %dc_ctrl.0.i) #5
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %17, align 8
  %add.ptr.i19.i = getelementptr i8, ptr %22, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %20) #5, !srcloc !70
  %23 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rkisp1.i, align 4
  %25 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config.i, align 4
  %rsz1.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %rsz1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rsz1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %24, align 8
  %add.ptr.i.i18 = getelementptr i8, ptr %30, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18, i32 0) #5, !srcloc !70
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %id = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 1
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id, align 4
  %xor = xor i32 %32, 1
  %rkisp11 = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 2
  %33 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rkisp11, align 4
  %is_streaming = getelementptr %struct.rkisp1_device, ptr %34, i32 0, i32 10, i32 %xor, i32 5
  %35 = ptrtoint ptr %is_streaming to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %is_streaming, align 8, !range !71
  %37 = zext i8 %36 to i32
  %ops_lock = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #5
  tail call fastcc void @rkisp1_rsz_config(ptr noundef %sd, i32 noundef %37)
  tail call fastcc void @rkisp1_dcrop_config(ptr noundef %sd)
  tail call void @mutex_unlock(ptr noundef %ops_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rkisp1_rsz_config(ptr nocapture noundef readonly %rsz, i32 noundef %when) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %rsz, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.i.i = icmp eq i16 %1, 0
  br i1 %cmp.i.i, label %do.end.i3.i, label %entry.rkisp1_rsz_get_pad_crop.exit_crit_edge, !prof !66

entry.rkisp1_rsz_get_pad_crop.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rkisp1_rsz_get_pad_crop.exit

do.end.i3.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1016, i32 noundef 9, ptr noundef null) #5
  %2 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %.pr = load i16, ptr %num_pads.i.i, align 4
  br label %rkisp1_rsz_get_pad_crop.exit

rkisp1_rsz_get_pad_crop.exit:                     ; preds = %do.end.i3.i, %entry.rkisp1_rsz_get_pad_crop.exit_crit_edge
  %3 = phi i16 [ %1, %entry.rkisp1_rsz_get_pad_crop.exit_crit_edge ], [ %.pr, %do.end.i3.i ]
  %pad_cfg.i = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp.not.i.i = icmp ugt i16 %3, 1
  br i1 %cmp.not.i.i, label %rkisp1_rsz_get_pad_crop.exit.rkisp1_rsz_get_pad_fmt.exit_crit_edge, label %do.end.i9.i, !prof !65

rkisp1_rsz_get_pad_crop.exit.rkisp1_rsz_get_pad_fmt.exit_crit_edge: ; preds = %rkisp1_rsz_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rkisp1_rsz_get_pad_fmt.exit

do.end.i9.i:                                      ; preds = %rkisp1_rsz_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %rkisp1_rsz_get_pad_fmt.exit

rkisp1_rsz_get_pad_fmt.exit:                      ; preds = %do.end.i9.i, %rkisp1_rsz_get_pad_crop.exit.rkisp1_rsz_get_pad_fmt.exit_crit_edge
  %spec.select.i10.i = phi i32 [ 0, %do.end.i9.i ], [ 1, %rkisp1_rsz_get_pad_crop.exit.rkisp1_rsz_get_pad_fmt.exit_crit_edge ]
  %arrayidx.i11.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %pad_cfg.i, i32 %spec.select.i10.i
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i11.i, i32 0, i32 2
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8196, i32 %5)
  %switch.selectcmp.i = icmp eq i32 %5, 8196
  %switch.select.i = select i1 %switch.selectcmp.i, ptr getelementptr inbounds ([2 x %struct.rkisp1_rsz_yuv_mbus_info], ptr @rkisp1_rsz_yuv_src_formats, i32 0, i32 1), ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %5)
  %switch.selectcmp8.i = icmp eq i32 %5, 8200
  %switch.select9.i = select i1 %switch.selectcmp8.i, ptr @rkisp1_rsz_yuv_src_formats, ptr %switch.select.i
  %6 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp.not.i.i102.not = icmp eq i16 %7, 0
  br i1 %cmp.not.i.i102.not, label %do.end.i9.i103, label %rkisp1_rsz_get_pad_fmt.exit.rkisp1_rsz_get_pad_fmt.exit107_crit_edge, !prof !66

rkisp1_rsz_get_pad_fmt.exit.rkisp1_rsz_get_pad_fmt.exit107_crit_edge: ; preds = %rkisp1_rsz_get_pad_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rkisp1_rsz_get_pad_fmt.exit107

do.end.i9.i103:                                   ; preds = %rkisp1_rsz_get_pad_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %rkisp1_rsz_get_pad_fmt.exit107

rkisp1_rsz_get_pad_fmt.exit107:                   ; preds = %do.end.i9.i103, %rkisp1_rsz_get_pad_fmt.exit.rkisp1_rsz_get_pad_fmt.exit107_crit_edge
  %pixel_enc = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 6
  %8 = ptrtoint ptr %pixel_enc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixel_enc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp = icmp eq i32 %9, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %rkisp1_rsz_get_pad_fmt.exit107
  %rkisp1.i = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 2
  %10 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rkisp1.i, align 4
  %config.i = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 5
  %12 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config.i, align 4
  %rsz1.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %rsz1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rsz1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 8
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #5, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %when)
  %cmp.i = icmp eq i32 %when, 0
  br i1 %cmp.i, label %if.then.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rkisp1.i, align 4
  %20 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config.i, align 4
  %rsz1.i.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %rsz1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rsz1.i.i, align 4
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %19, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 %23
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %27 = or i32 %26, 65536
  %28 = ptrtoint ptr %rkisp1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rkisp1.i, align 4
  %30 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i, align 4
  %rsz5.i.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %31, i32 0, i32 4
  %32 = ptrtoint ptr %rsz5.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rsz5.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %29, align 8
  %add.ptr.i12.i.i = getelementptr i8, ptr %35, i32 %33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %27) #5, !srcloc !70
  br label %cleanup

if.end:                                           ; preds = %rkisp1_rsz_get_pad_fmt.exit107
  %code4 = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 4, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %code4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %code4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8200, i32 %37)
  %switch.selectcmp8.i110 = icmp eq i32 %37, 8200
  call void @__sanitizer_cov_trace_const_cmp4(i32 8196, i32 %37)
  %switch.selectcmp.i108 = icmp eq i32 %37, 8196
  %switch.select.i109 = select i1 %switch.selectcmp.i108, ptr getelementptr inbounds ([2 x %struct.rkisp1_rsz_yuv_mbus_info], ptr @rkisp1_rsz_yuv_src_formats, i32 0, i32 1), ptr null
  %switch.select9.i111 = select i1 %switch.selectcmp8.i110, ptr @rkisp1_rsz_yuv_src_formats, ptr %switch.select.i109
  %width = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 4, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 4, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height, align 4
  %42 = ptrtoint ptr %arrayidx.i11.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i11.i, align 4
  %height10 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %arrayidx.i11.i, i32 0, i32 1
  %44 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height10, align 4
  %hdiv = getelementptr inbounds %struct.rkisp1_rsz_yuv_mbus_info, ptr %switch.select9.i111, i32 0, i32 1
  %46 = ptrtoint ptr %hdiv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hdiv, align 4
  %div = udiv i32 %39, %47
  %vdiv = getelementptr inbounds %struct.rkisp1_rsz_yuv_mbus_info, ptr %switch.select9.i111, i32 0, i32 2
  %48 = ptrtoint ptr %vdiv to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vdiv, align 4
  %div15 = udiv i32 %41, %49
  %hdiv18 = getelementptr inbounds %struct.rkisp1_rsz_yuv_mbus_info, ptr %switch.select9.i, i32 0, i32 1
  %50 = ptrtoint ptr %hdiv18 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hdiv18, align 4
  %div19 = udiv i32 %43, %51
  %vdiv22 = getelementptr inbounds %struct.rkisp1_rsz_yuv_mbus_info, ptr %switch.select9.i, i32 0, i32 2
  %52 = ptrtoint ptr %vdiv22 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %vdiv22, align 4
  %div23 = udiv i32 %45, %53
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div19)
  %cmp27 = icmp eq i32 %div, %div19
  call void @__sanitizer_cov_trace_cmp4(i32 %div15, i32 %div23)
  %cmp30 = icmp eq i32 %div15, %div23
  %or.cond = select i1 %cmp27, i1 %cmp30, i1 false
  br i1 %or.cond, label %if.then31, label %do.body

if.then31:                                        ; preds = %if.end
  %rkisp1.i112 = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 2
  %54 = ptrtoint ptr %rkisp1.i112 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rkisp1.i112, align 4
  %config.i113 = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 5
  %56 = ptrtoint ptr %config.i113 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %config.i113, align 4
  %rsz1.i114 = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %rsz1.i114 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rsz1.i114, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %60 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %55, align 8
  %add.ptr.i.i115 = getelementptr i8, ptr %61, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i115, i32 0) #5, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %when)
  %cmp.i116 = icmp eq i32 %when, 0
  br i1 %cmp.i116, label %if.then.i121, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i121:                                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %rkisp1.i112 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rkisp1.i112, align 4
  %64 = ptrtoint ptr %config.i113 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %config.i113, align 4
  %rsz1.i.i117 = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %rsz1.i.i117 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rsz1.i.i117, align 4
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %63, align 8
  %add.ptr.i.i.i118 = getelementptr i8, ptr %69, i32 %67
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i118) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %71 = or i32 %70, 65536
  %72 = ptrtoint ptr %rkisp1.i112 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rkisp1.i112, align 4
  %74 = ptrtoint ptr %config.i113 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %config.i113, align 4
  %rsz5.i.i119 = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %75, i32 0, i32 4
  %76 = ptrtoint ptr %rsz5.i.i119 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rsz5.i.i119, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %78 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %73, align 8
  %add.ptr.i12.i.i120 = getelementptr i8, ptr %79, i32 %77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i120, i32 %71) #5, !srcloc !70
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rkisp1_rsz_config.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rkisp1_rsz_config, %if.then36)) #5
          to label %do.body42 [label %if.then36], !srcloc !72

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %rkisp1 = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 2
  %80 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %rkisp1, align 4
  %dev = getelementptr inbounds %struct.rkisp1_device, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 1
  %84 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %id, align 4
  %86 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %width, align 4
  %88 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %height, align 4
  %90 = ptrtoint ptr %arrayidx.i11.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i11.i, align 4
  %92 = ptrtoint ptr %height10 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %height10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rkisp1_rsz_config.__UNIQUE_ID_ddebug301, ptr noundef %83, ptr noundef nonnull @.str.10, i32 noundef %85, i32 noundef %87, i32 noundef %89, i32 noundef %91, i32 noundef %93) #5
  br label %do.body42

do.body42:                                        ; preds = %if.then36, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rkisp1_rsz_config.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rkisp1_rsz_config, %if.then54)) #5
          to label %do.end63 [label %if.then54], !srcloc !72

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #7
  %rkisp155 = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 2
  %94 = ptrtoint ptr %rkisp155 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rkisp155, align 4
  %dev56 = getelementptr inbounds %struct.rkisp1_device, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev56, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rkisp1_rsz_config.__UNIQUE_ID_ddebug302, ptr noundef %97, ptr noundef nonnull @.str.11, i32 noundef %div, i32 noundef %div15, i32 noundef %div19, i32 noundef %div23) #5
  br label %do.end63

do.end63:                                         ; preds = %if.then54, %do.body42
  %rkisp11.i = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 2
  %98 = ptrtoint ptr %rkisp11.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rkisp11.i, align 4
  %config.i123 = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 5
  %100 = ptrtoint ptr %config.i123 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %config.i123, align 4
  %phase_hy.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %101, i32 0, i32 4, i32 14
  %102 = ptrtoint ptr %phase_hy.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %phase_hy.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %104 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %99, align 8
  %add.ptr.i.i124 = getelementptr i8, ptr %105, i32 %103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i124, i32 0) #5, !srcloc !70
  %106 = ptrtoint ptr %config.i123 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %config.i123, align 4
  %phase_hc.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %107, i32 0, i32 4, i32 15
  %108 = ptrtoint ptr %phase_hc.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %phase_hc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %110 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %99, align 8
  %add.ptr.i148.i = getelementptr i8, ptr %111, i32 %109
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148.i, i32 0) #5, !srcloc !70
  %112 = ptrtoint ptr %config.i123 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %config.i123, align 4
  %phase_vy.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %113, i32 0, i32 4, i32 16
  %114 = ptrtoint ptr %phase_vy.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %phase_vy.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %116 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %99, align 8
  %add.ptr.i149.i = getelementptr i8, ptr %117, i32 %115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149.i, i32 0) #5, !srcloc !70
  %118 = ptrtoint ptr %config.i123 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %config.i123, align 4
  %phase_vc.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %119, i32 0, i32 4, i32 17
  %120 = ptrtoint ptr %phase_vc.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %phase_vc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %122 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %99, align 8
  %add.ptr.i150.i = getelementptr i8, ptr %123, i32 %121
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150.i, i32 0) #5, !srcloc !70
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.end63
  %i.0202.i = phi i32 [ 0, %do.end63 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %124 = ptrtoint ptr %config.i123 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %config.i123, align 4
  %scale_lut_addr.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %125, i32 0, i32 4, i32 8
  %126 = ptrtoint ptr %scale_lut_addr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %scale_lut_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %128 = tail call i32 @llvm.bswap.i32(i32 %i.0202.i) #5
  %129 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %99, align 8
  %add.ptr.i151.i = getelementptr i8, ptr %130, i32 %127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151.i, i32 %128) #5, !srcloc !70
  %131 = ptrtoint ptr %config.i123 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %config.i123, align 4
  %scale_lut.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %132, i32 0, i32 4, i32 7
  %133 = ptrtoint ptr %scale_lut.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %scale_lut.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %135 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %99, align 8
  %add.ptr.i152.i = getelementptr i8, ptr %136, i32 %134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152.i, i32 %128) #5, !srcloc !70
  %inc.i = add nuw nsw i32 %i.0202.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %43)
  %cmp14.not.i = icmp eq i32 %39, %43
  br i1 %cmp14.not.i, label %for.end.i.if.end24.i_crit_edge, label %if.then.i125

for.end.i.if.end24.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24.i

if.then.i125:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %43)
  %cmp17.i = icmp ult i32 %39, %43
  %spec.select.i = select i1 %cmp17.i, i32 17, i32 1
  br i1 %cmp17.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i.i = shl i32 %39, 16
  %mul.i.i = add i32 %sub.i.i, -65536
  %sub1.i.i = add i32 %43, -1
  %div.i.i = udiv i32 %mul.i.i, %sub1.i.i
  br label %rkisp1_rsz_calc_ratio.exit.i

if.end.i.i:                                       ; preds = %if.then.i125
  call void @__sanitizer_cov_trace_pc() #7
  %sub2.i.i = shl i32 %43, 16
  %mul3.i.i = add i32 %sub2.i.i, -65536
  %sub4.i.i = add i32 %39, -1
  %div5.i.i = udiv i32 %mul3.i.i, %sub4.i.i
  %add.i.i = add i32 %div5.i.i, 1
  br label %rkisp1_rsz_calc_ratio.exit.i

rkisp1_rsz_calc_ratio.exit.i:                     ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %div.i.i, %if.then.i.i ], [ %add.i.i, %if.end.i.i ]
  %137 = ptrtoint ptr %config.i123 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %config.i123, align 4
  %scale_hy.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %138, i32 0, i32 4, i32 2
  %139 = ptrtoint ptr %scale_hy.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %scale_hy.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %141 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i) #5
  %142 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %99, align 8
  %add.ptr.i153.i = getelementptr i8, ptr %143, i32 %140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153.i, i32 %141) #5, !srcloc !70
  br label %if.end24.i

if.end24.i:                                       ; preds = %rkisp1_rsz_calc_ratio.exit.i, %for.end.i.if.end24.i_crit_edge
  %rsz_ctrl.1.i = phi i32 [ %spec.select.i, %rkisp1_rsz_calc_ratio.exit.i ], [ 0, %for.end.i.if.end24.i_crit_edge ]
  br i1 %cmp27, label %if.end24.i.if.end43.i_crit_edge, label %if.then28.i

if.end24.i.if.end43.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43.i

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %div19)
  %cmp32.i = icmp ult i32 %div, %div19
  %spec.select145.v.i = select i1 %cmp32.i, i32 34, i32 2
  %spec.select145.i = or i32 %rsz_ctrl.1.i, %spec.select145.v.i
  br i1 %cmp32.i, label %if.then.i159.i, label %if.end.i165.i

if.then.i159.i:                                   ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i155.i = shl i32 %div, 16
  %mul.i156.i = add i32 %sub.i155.i, -65536
  %sub1.i157.i = add i32 %div19, -1
  %div.i158.i = udiv i32 %mul.i156.i, %sub1.i157.i
  br label %rkisp1_rsz_calc_ratio.exit167.i

if.end.i165.i:                                    ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub2.i160.i = shl i32 %div19, 16
  %mul3.i161.i = add i32 %sub2.i160.i, -65536
  %sub4.i162.i = add i32 %div, -1
  %div5.i163.i = udiv i32 %mul3.i161.i, %sub4.i162.i
  %add.i164.i = add i32 %div5.i163.i, 1
  br label %rkisp1_rsz_calc_ratio.exit167.i

rkisp1_rsz_calc_ratio.exit167.i:                  ; preds = %if.end.i165.i, %if.then.i159.i
  %retval.0.i166.i = phi i32 [ %div.i158.i, %if.then.i159.i ], [ %add.i164.i, %if.end.i165.i ]
  %144 = ptrtoint ptr %config.i123 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %config.i123, align 4
  %scale_hcb.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %145, i32 0, i32 4, i32 4
  %146 = ptrtoint ptr %scale_hcb.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %scale_hcb.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %148 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i166.i) #5
  %149 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %99, align 8
  %add.ptr.i168.i = getelementptr i8, ptr %150, i32 %147
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168.i, i32 %148) #5, !srcloc !70
  %151 = ptrtoint ptr %config.i123 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %config.i123, align 4
  %scale_hcr.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %152, i32 0, i32 4, i32 3
  %153 = ptrtoint ptr %scale_hcr.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %scale_hcr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %155 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %99, align 8
  %add.ptr.i169.i = getelementptr i8, ptr %156, i32 %154
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169.i, i32 %148) #5, !srcloc !70
  br label %if.end43.i

if.end43.i:                                       ; preds = %rkisp1_rsz_calc_ratio.exit167.i, %if.end24.i.if.end43.i_crit_edge
  %rsz_ctrl.3.i = phi i32 [ %spec.select145.i, %rkisp1_rsz_calc_ratio.exit167.i ], [ %rsz_ctrl.1.i, %if.end24.i.if.end43.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %45)
  %cmp45.not.i = icmp eq i32 %41, %45
  br i1 %cmp45.not.i, label %if.end43.i.if.end59.i_crit_edge, label %if.then46.i

if.end43.i.if.end59.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59.i

if.then46.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %45)
  %cmp50.i = icmp ult i32 %41, %45
  %spec.select146.v.i = select i1 %cmp50.i, i32 68, i32 4
  %spec.select146.i = or i32 %rsz_ctrl.3.i, %spec.select146.v.i
  br i1 %cmp50.i, label %if.then.i175.i, label %if.end.i181.i

if.then.i175.i:                                   ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i171.i = shl i32 %41, 16
  %mul.i172.i = add i32 %sub.i171.i, -65536
  %sub1.i173.i = add i32 %45, -1
  %div.i174.i = udiv i32 %mul.i172.i, %sub1.i173.i
  br label %rkisp1_rsz_calc_ratio.exit183.i

if.end.i181.i:                                    ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub2.i176.i = shl i32 %45, 16
  %mul3.i177.i = add i32 %sub2.i176.i, -65536
  %sub4.i178.i = add i32 %41, -1
  %div5.i179.i = udiv i32 %mul3.i177.i, %sub4.i178.i
  %add.i180.i = add i32 %div5.i179.i, 1
  br label %rkisp1_rsz_calc_ratio.exit183.i

rkisp1_rsz_calc_ratio.exit183.i:                  ; preds = %if.end.i181.i, %if.then.i175.i
  %retval.0.i182.i = phi i32 [ %div.i174.i, %if.then.i175.i ], [ %add.i180.i, %if.end.i181.i ]
  %157 = ptrtoint ptr %config.i123 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %config.i123, align 4
  %scale_vy.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %158, i32 0, i32 4, i32 5
  %159 = ptrtoint ptr %scale_vy.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %scale_vy.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %161 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i182.i) #5
  %162 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %99, align 8
  %add.ptr.i184.i = getelementptr i8, ptr %163, i32 %160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184.i, i32 %161) #5, !srcloc !70
  br label %if.end59.i

if.end59.i:                                       ; preds = %rkisp1_rsz_calc_ratio.exit183.i, %if.end43.i.if.end59.i_crit_edge
  %rsz_ctrl.5.i = phi i32 [ %spec.select146.i, %rkisp1_rsz_calc_ratio.exit183.i ], [ %rsz_ctrl.3.i, %if.end43.i.if.end59.i_crit_edge ]
  br i1 %cmp30, label %if.end59.i.rkisp1_rsz_config_regs.exit_crit_edge, label %if.then63.i

if.end59.i.rkisp1_rsz_config_regs.exit_crit_edge: ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rkisp1_rsz_config_regs.exit

if.then63.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div15, i32 %div23)
  %cmp67.i = icmp ult i32 %div15, %div23
  %spec.select147.v.i = select i1 %cmp67.i, i32 136, i32 8
  %spec.select147.i = or i32 %rsz_ctrl.5.i, %spec.select147.v.i
  br i1 %cmp67.i, label %if.then.i190.i, label %if.end.i196.i

if.then.i190.i:                                   ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i186.i = shl i32 %div15, 16
  %mul.i187.i = add i32 %sub.i186.i, -65536
  %sub1.i188.i = add i32 %div23, -1
  %div.i189.i = udiv i32 %mul.i187.i, %sub1.i188.i
  br label %rkisp1_rsz_calc_ratio.exit198.i

if.end.i196.i:                                    ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub2.i191.i = shl i32 %div23, 16
  %mul3.i192.i = add i32 %sub2.i191.i, -65536
  %sub4.i193.i = add i32 %div15, -1
  %div5.i194.i = udiv i32 %mul3.i192.i, %sub4.i193.i
  %add.i195.i = add i32 %div5.i194.i, 1
  br label %rkisp1_rsz_calc_ratio.exit198.i

rkisp1_rsz_calc_ratio.exit198.i:                  ; preds = %if.end.i196.i, %if.then.i190.i
  %retval.0.i197.i = phi i32 [ %div.i189.i, %if.then.i190.i ], [ %add.i195.i, %if.end.i196.i ]
  %164 = ptrtoint ptr %config.i123 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %config.i123, align 4
  %scale_vc.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %165, i32 0, i32 4, i32 6
  %166 = ptrtoint ptr %scale_vc.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %scale_vc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %168 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i197.i) #5
  %169 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %99, align 8
  %add.ptr.i199.i = getelementptr i8, ptr %170, i32 %167
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i199.i, i32 %168) #5, !srcloc !70
  br label %rkisp1_rsz_config_regs.exit

rkisp1_rsz_config_regs.exit:                      ; preds = %rkisp1_rsz_calc_ratio.exit198.i, %if.end59.i.rkisp1_rsz_config_regs.exit_crit_edge
  %rsz_ctrl.7.i = phi i32 [ %spec.select147.i, %rkisp1_rsz_calc_ratio.exit198.i ], [ %rsz_ctrl.5.i, %if.end59.i.rkisp1_rsz_config_regs.exit_crit_edge ]
  %171 = ptrtoint ptr %config.i123 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %config.i123, align 4
  %rsz78.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %172, i32 0, i32 4
  %173 = ptrtoint ptr %rsz78.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %rsz78.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %175 = tail call i32 @llvm.bswap.i32(i32 %rsz_ctrl.7.i) #5
  %176 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %99, align 8
  %add.ptr.i200.i = getelementptr i8, ptr %177, i32 %174
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200.i, i32 %175) #5, !srcloc !70
  %178 = ptrtoint ptr %rkisp11.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %rkisp11.i, align 4
  %180 = ptrtoint ptr %config.i123 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %config.i123, align 4
  %rsz1.i.i126 = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %181, i32 0, i32 4
  %182 = ptrtoint ptr %rsz1.i.i126 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %rsz1.i.i126, align 4
  %184 = ptrtoint ptr %179 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %179, align 8
  %add.ptr.i.i.i127 = getelementptr i8, ptr %185, i32 %183
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i127) #5, !srcloc !67
  %187 = tail call i32 @llvm.bswap.i32(i32 %186) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %when)
  %cmp.i201.i = icmp eq i32 %when, 1
  %ctrl_cfg.0.v.i.i = select i1 %cmp.i201.i, i32 512, i32 256
  %ctrl_cfg.0.i.i = or i32 %187, %ctrl_cfg.0.v.i.i
  %188 = ptrtoint ptr %rkisp11.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %rkisp11.i, align 4
  %190 = ptrtoint ptr %config.i123 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %config.i123, align 4
  %rsz5.i.i128 = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %191, i32 0, i32 4
  %192 = ptrtoint ptr %rsz5.i.i128 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %rsz5.i.i128, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %194 = tail call i32 @llvm.bswap.i32(i32 %ctrl_cfg.0.i.i) #5
  %195 = ptrtoint ptr %189 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %189, align 8
  %add.ptr.i12.i.i129 = getelementptr i8, ptr %196, i32 %193
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i129, i32 %194) #5, !srcloc !70
  tail call fastcc void @rkisp1_rsz_dump_regs(ptr noundef %rsz)
  br label %cleanup

cleanup:                                          ; preds = %rkisp1_rsz_config_regs.exit, %if.then.i121, %if.then31.cleanup_crit_edge, %if.then.i, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rkisp1_dcrop_config(ptr nocapture noundef readonly %rsz) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rkisp11 = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 2
  %0 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp11, align 4
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %rsz, i32 0, i32 5
  %2 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp.i.i = icmp eq i16 %3, 0
  br i1 %cmp.i.i, label %rkisp1_rsz_get_pad_crop.exit, label %entry.rkisp1_rsz_get_pad_fmt.exit_crit_edge, !prof !66

entry.rkisp1_rsz_get_pad_fmt.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %rkisp1_rsz_get_pad_fmt.exit

rkisp1_rsz_get_pad_crop.exit:                     ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1016, i32 noundef 9, ptr noundef null) #5
  %4 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %.pr = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp.not.i.i.not = icmp eq i16 %.pr, 0
  br i1 %cmp.not.i.i.not, label %do.end.i9.i, label %rkisp1_rsz_get_pad_crop.exit.rkisp1_rsz_get_pad_fmt.exit_crit_edge, !prof !66

rkisp1_rsz_get_pad_crop.exit.rkisp1_rsz_get_pad_fmt.exit_crit_edge: ; preds = %rkisp1_rsz_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %rkisp1_rsz_get_pad_fmt.exit

do.end.i9.i:                                      ; preds = %rkisp1_rsz_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %rkisp1_rsz_get_pad_fmt.exit

rkisp1_rsz_get_pad_fmt.exit:                      ; preds = %do.end.i9.i, %rkisp1_rsz_get_pad_crop.exit.rkisp1_rsz_get_pad_fmt.exit_crit_edge, %entry.rkisp1_rsz_get_pad_fmt.exit_crit_edge
  %try_crop.i4.i108 = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 4, i32 0, i32 1
  %pad_cfg.i110 = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 4
  %width = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 4, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width, align 4
  %7 = ptrtoint ptr %pad_cfg.i110 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pad_cfg.i110, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp = icmp eq i32 %6, %8
  br i1 %cmp, label %land.lhs.true, label %rkisp1_rsz_get_pad_fmt.exit.if.end14_crit_edge

rkisp1_rsz_get_pad_fmt.exit.if.end14_crit_edge:   ; preds = %rkisp1_rsz_get_pad_fmt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

land.lhs.true:                                    ; preds = %rkisp1_rsz_get_pad_fmt.exit
  %height = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 4, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 4, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %height4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp5 = icmp eq i32 %10, %12
  br i1 %cmp5, label %land.lhs.true6, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

land.lhs.true6:                                   ; preds = %land.lhs.true
  %13 = ptrtoint ptr %try_crop.i4.i108 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %try_crop.i4.i108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp7 = icmp eq i32 %14, 0
  br i1 %cmp7, label %land.lhs.true8, label %land.lhs.true6.if.end14_crit_edge

land.lhs.true6.if.end14_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

land.lhs.true8:                                   ; preds = %land.lhs.true6
  %top = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 4, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %top, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp9 = icmp eq i32 %16, 0
  br i1 %cmp9, label %if.then, label %land.lhs.true8.if.end14_crit_edge

land.lhs.true8.if.end14_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then:                                          ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rkisp11, align 4
  %config.i = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 5
  %19 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %config.i, align 4
  %dual_crop.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %dual_crop.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dual_crop.i, align 4
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %18, align 8
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %22
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !67
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %yuvmode_mask.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %28, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %yuvmode_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %yuvmode_mask.i, align 4
  %rawmode_mask.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %28, i32 0, i32 5, i32 2
  %31 = ptrtoint ptr %rawmode_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rawmode_mask.i, align 4
  %or.i = or i32 %32, %30
  %neg.i = xor i32 %or.i, -1
  %and.i = and i32 %26, %neg.i
  %dc_ctrl.0.i = or i32 %and.i, 32
  %33 = ptrtoint ptr %rkisp11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rkisp11, align 4
  %dual_crop9.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %28, i32 0, i32 5
  %35 = ptrtoint ptr %dual_crop9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dual_crop9.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %37 = tail call i32 @llvm.bswap.i32(i32 %dc_ctrl.0.i) #5
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %34, align 8
  %add.ptr.i19.i = getelementptr i8, ptr %39, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 %37) #5, !srcloc !70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rkisp1_dcrop_config.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rkisp1_dcrop_config, %if.then13)) #5
          to label %cleanup [label %if.then13], !srcloc !72

if.then13:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %id = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 1
  %42 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rkisp1_dcrop_config.__UNIQUE_ID_ddebug298, ptr noundef %41, ptr noundef nonnull @.str.16, i32 noundef %43) #5
  br label %cleanup

if.end14:                                         ; preds = %land.lhs.true8.if.end14_crit_edge, %land.lhs.true6.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %rkisp1_rsz_get_pad_fmt.exit.if.end14_crit_edge
  %config = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 5
  %44 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %config, align 4
  %dual_crop = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %dual_crop to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dual_crop, align 4
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %49, i32 %47
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %51 = ptrtoint ptr %try_crop.i4.i108 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %try_crop.i4.i108, align 4
  %53 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %config, align 4
  %h_offset = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %54, i32 0, i32 5, i32 3
  %55 = ptrtoint ptr %h_offset to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %h_offset, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %57 = tail call i32 @llvm.bswap.i32(i32 %52) #5
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %add.ptr.i98 = getelementptr i8, ptr %59, i32 %56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %57) #5, !srcloc !70
  %top19 = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 4, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %top19 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %top19, align 4
  %62 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %config, align 4
  %v_offset = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %63, i32 0, i32 5, i32 4
  %64 = ptrtoint ptr %v_offset to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %v_offset, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %66 = tail call i32 @llvm.bswap.i32(i32 %61) #5
  %67 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %1, align 8
  %add.ptr.i99 = getelementptr i8, ptr %68, i32 %65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i99, i32 %66) #5, !srcloc !70
  %69 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %width, align 4
  %71 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config, align 4
  %h_size = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %72, i32 0, i32 5, i32 5
  %73 = ptrtoint ptr %h_size to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %h_size, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %75 = tail call i32 @llvm.bswap.i32(i32 %70) #5
  %76 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %1, align 8
  %add.ptr.i100 = getelementptr i8, ptr %77, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %75) #5, !srcloc !70
  %height25 = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 4, i32 0, i32 1, i32 3
  %78 = ptrtoint ptr %height25 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %height25, align 4
  %80 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %config, align 4
  %v_size = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %81, i32 0, i32 5, i32 6
  %82 = ptrtoint ptr %v_size to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %v_size, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %84 = tail call i32 @llvm.bswap.i32(i32 %79) #5
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 8
  %add.ptr.i101 = getelementptr i8, ptr %86, i32 %83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %84) #5, !srcloc !70
  %87 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %config, align 4
  %dual_crop29 = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %88, i32 0, i32 5
  %yuvmode_mask = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %88, i32 0, i32 5, i32 1
  %89 = ptrtoint ptr %yuvmode_mask to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %yuvmode_mask, align 4
  %91 = or i32 %50, 536870912
  %92 = call i32 @llvm.bswap.i32(i32 %91)
  %or30 = or i32 %92, %90
  %93 = ptrtoint ptr %dual_crop29 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dual_crop29, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %95 = tail call i32 @llvm.bswap.i32(i32 %or30) #5
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 8
  %add.ptr.i102 = getelementptr i8, ptr %97, i32 %94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %95) #5, !srcloc !70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rkisp1_dcrop_config.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rkisp1_dcrop_config, %if.then46)) #5
          to label %cleanup [label %if.then46], !srcloc !72

if.then46:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %dev47 = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 1
  %98 = ptrtoint ptr %dev47 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev47, align 4
  %id48 = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 1
  %100 = ptrtoint ptr %id48 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %id48, align 4
  %102 = ptrtoint ptr %pad_cfg.i110 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pad_cfg.i110, align 4
  %height50 = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 4, i32 0, i32 0, i32 1
  %104 = ptrtoint ptr %height50 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %height50, align 4
  %106 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %width, align 4
  %108 = ptrtoint ptr %height25 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %height25, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rkisp1_dcrop_config.__UNIQUE_ID_ddebug299, ptr noundef %99, ptr noundef nonnull @.str.17, i32 noundef %101, i32 noundef %103, i32 noundef %105, i32 noundef %107, i32 noundef %109) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %if.end14, %if.then13, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rkisp1_rsz_dump_regs(ptr nocapture noundef readonly %rsz) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rkisp1_rsz_dump_regs.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rkisp1_rsz_dump_regs, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rkisp1 = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 2
  %0 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rkisp1, align 4
  %dev = getelementptr inbounds %struct.rkisp1_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %config = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 5
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %rsz4 = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %rsz4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rsz4, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %9, i32 %7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !67
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %12 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rkisp1, align 4
  %14 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %config, align 4
  %ctrl_shd = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %15, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %ctrl_shd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ctrl_shd, align 4
  %18 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %13, align 8
  %add.ptr.i122 = getelementptr i8, ptr %19, i32 %17
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i122) #5, !srcloc !67
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %22 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rkisp1, align 4
  %24 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %config, align 4
  %scale_hy = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %25, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %scale_hy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scale_hy, align 4
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %23, align 8
  %add.ptr.i123 = getelementptr i8, ptr %29, i32 %27
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123) #5, !srcloc !67
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %32 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rkisp1, align 4
  %34 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %config, align 4
  %scale_hy_shd = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %35, i32 0, i32 4, i32 9
  %36 = ptrtoint ptr %scale_hy_shd to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %scale_hy_shd, align 4
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %33, align 8
  %add.ptr.i124 = getelementptr i8, ptr %39, i32 %37
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i124) #5, !srcloc !67
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %42 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rkisp1, align 4
  %44 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %config, align 4
  %scale_hcb = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %45, i32 0, i32 4, i32 4
  %46 = ptrtoint ptr %scale_hcb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %scale_hcb, align 4
  %48 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %43, align 8
  %add.ptr.i125 = getelementptr i8, ptr %49, i32 %47
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i125) #5, !srcloc !67
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %52 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rkisp1, align 4
  %54 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %config, align 4
  %scale_hcb_shd = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %55, i32 0, i32 4, i32 11
  %56 = ptrtoint ptr %scale_hcb_shd to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %scale_hcb_shd, align 4
  %58 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %53, align 8
  %add.ptr.i126 = getelementptr i8, ptr %59, i32 %57
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #5, !srcloc !67
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %62 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rkisp1, align 4
  %64 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %config, align 4
  %scale_hcr = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %65, i32 0, i32 4, i32 3
  %66 = ptrtoint ptr %scale_hcr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %scale_hcr, align 4
  %68 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %63, align 8
  %add.ptr.i127 = getelementptr i8, ptr %69, i32 %67
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #5, !srcloc !67
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %72 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rkisp1, align 4
  %74 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %config, align 4
  %scale_hcr_shd = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %75, i32 0, i32 4, i32 10
  %76 = ptrtoint ptr %scale_hcr_shd to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %scale_hcr_shd, align 4
  %78 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %73, align 8
  %add.ptr.i128 = getelementptr i8, ptr %79, i32 %77
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #5, !srcloc !67
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %82 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rkisp1, align 4
  %84 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %config, align 4
  %scale_vy = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %85, i32 0, i32 4, i32 5
  %86 = ptrtoint ptr %scale_vy to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %scale_vy, align 4
  %88 = ptrtoint ptr %83 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %83, align 8
  %add.ptr.i129 = getelementptr i8, ptr %89, i32 %87
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i129) #5, !srcloc !67
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %92 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %rkisp1, align 4
  %94 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %config, align 4
  %scale_vy_shd = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %95, i32 0, i32 4, i32 12
  %96 = ptrtoint ptr %scale_vy_shd to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %scale_vy_shd, align 4
  %98 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %93, align 8
  %add.ptr.i130 = getelementptr i8, ptr %99, i32 %97
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #5, !srcloc !67
  %101 = tail call i32 @llvm.bswap.i32(i32 %100) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %102 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %rkisp1, align 4
  %104 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %config, align 4
  %scale_vc = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %105, i32 0, i32 4, i32 6
  %106 = ptrtoint ptr %scale_vc to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %scale_vc, align 4
  %108 = ptrtoint ptr %103 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %103, align 8
  %add.ptr.i131 = getelementptr i8, ptr %109, i32 %107
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131) #5, !srcloc !67
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %112 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rkisp1, align 4
  %114 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %config, align 4
  %scale_vc_shd = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %115, i32 0, i32 4, i32 13
  %116 = ptrtoint ptr %scale_vc_shd to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %scale_vc_shd, align 4
  %118 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %113, align 8
  %add.ptr.i132 = getelementptr i8, ptr %119, i32 %117
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132) #5, !srcloc !67
  %121 = tail call i32 @llvm.bswap.i32(i32 %120) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %122 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rkisp1, align 4
  %124 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %config, align 4
  %phase_hy = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %125, i32 0, i32 4, i32 14
  %126 = ptrtoint ptr %phase_hy to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %phase_hy, align 4
  %128 = ptrtoint ptr %123 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %123, align 8
  %add.ptr.i133 = getelementptr i8, ptr %129, i32 %127
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i133) #5, !srcloc !67
  %131 = tail call i32 @llvm.bswap.i32(i32 %130) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %132 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rkisp1, align 4
  %134 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %config, align 4
  %phase_hy_shd = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %135, i32 0, i32 4, i32 18
  %136 = ptrtoint ptr %phase_hy_shd to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %phase_hy_shd, align 4
  %138 = ptrtoint ptr %133 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %133, align 8
  %add.ptr.i134 = getelementptr i8, ptr %139, i32 %137
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i134) #5, !srcloc !67
  %141 = tail call i32 @llvm.bswap.i32(i32 %140) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %142 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rkisp1, align 4
  %144 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %config, align 4
  %phase_hc = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %145, i32 0, i32 4, i32 15
  %146 = ptrtoint ptr %phase_hc to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %phase_hc, align 4
  %148 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %143, align 8
  %add.ptr.i135 = getelementptr i8, ptr %149, i32 %147
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #5, !srcloc !67
  %151 = tail call i32 @llvm.bswap.i32(i32 %150) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %152 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %rkisp1, align 4
  %154 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %config, align 4
  %phase_hc_shd = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %155, i32 0, i32 4, i32 19
  %156 = ptrtoint ptr %phase_hc_shd to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %phase_hc_shd, align 4
  %158 = ptrtoint ptr %153 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %153, align 8
  %add.ptr.i136 = getelementptr i8, ptr %159, i32 %157
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #5, !srcloc !67
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %162 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %rkisp1, align 4
  %164 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %config, align 4
  %phase_vy = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %165, i32 0, i32 4, i32 16
  %166 = ptrtoint ptr %phase_vy to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %phase_vy, align 4
  %168 = ptrtoint ptr %163 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %163, align 8
  %add.ptr.i137 = getelementptr i8, ptr %169, i32 %167
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i137) #5, !srcloc !67
  %171 = tail call i32 @llvm.bswap.i32(i32 %170) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %172 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %rkisp1, align 4
  %174 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %config, align 4
  %phase_vy_shd = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %175, i32 0, i32 4, i32 20
  %176 = ptrtoint ptr %phase_vy_shd to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %phase_vy_shd, align 4
  %178 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %173, align 8
  %add.ptr.i138 = getelementptr i8, ptr %179, i32 %177
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138) #5, !srcloc !67
  %181 = tail call i32 @llvm.bswap.i32(i32 %180) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %182 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %rkisp1, align 4
  %184 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %config, align 4
  %phase_vc = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %185, i32 0, i32 4, i32 17
  %186 = ptrtoint ptr %phase_vc to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %phase_vc, align 4
  %188 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %183, align 8
  %add.ptr.i139 = getelementptr i8, ptr %189, i32 %187
  %190 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139) #5, !srcloc !67
  %191 = tail call i32 @llvm.bswap.i32(i32 %190) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %192 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %rkisp1, align 4
  %194 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %config, align 4
  %phase_vc_shd = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %195, i32 0, i32 4, i32 21
  %196 = ptrtoint ptr %phase_vc_shd to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %phase_vc_shd, align 4
  %198 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %193, align 8
  %add.ptr.i140 = getelementptr i8, ptr %199, i32 %197
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140) #5, !srcloc !67
  %201 = tail call i32 @llvm.bswap.i32(i32 %200) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rkisp1_rsz_dump_regs.__UNIQUE_ID_ddebug300, ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %11, i32 noundef %21, i32 noundef %31, i32 noundef %41, i32 noundef %51, i32 noundef %61, i32 noundef %71, i32 noundef %81, i32 noundef %91, i32 noundef %101, i32 noundef %111, i32 noundef %121, i32 noundef %131, i32 noundef %141, i32 noundef %151, i32 noundef %161, i32 noundef %171, i32 noundef %181, i32 noundef %191, i32 noundef %201) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_rsz_enum_mbus_code(ptr nocapture noundef readonly %sd, ptr nocapture noundef readnone %sd_state, ptr noundef %code) #0 align 64 {
entry:
  %dummy_cfg = alloca %struct.v4l2_subdev_pad_config, align 4
  %pad_state = alloca %struct.v4l2_subdev_state, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %dummy_cfg) #5
  %0 = call ptr @memset(ptr %dummy_cfg, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pad_state) #5
  %1 = ptrtoint ptr %pad_state to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dummy_cfg, ptr %pad_state, align 4
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rkisp1 = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 2
  %4 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rkisp1, align 4
  %id = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.rkisp1_device, ptr %5, i32 0, i32 10, i32 %7
  %call = call i32 @rkisp1_cap_enum_mbus_codes(ptr noundef %arrayidx, ptr noundef %code) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %id3 = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 1
  %8 = ptrtoint ptr %id3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp4 = icmp eq i32 %9, 1
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  %index = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp6.not = icmp eq i32 %11, 0
  br i1 %cmp6.not, label %if.end8, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %code9 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 2
  %12 = ptrtoint ptr %code9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8200, ptr %code9, align 4
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %13 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %code, align 4
  %rkisp112 = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 2
  %14 = ptrtoint ptr %rkisp112 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rkisp112, align 4
  %isp = getelementptr inbounds %struct.rkisp1_device, ptr %15, i32 0, i32 8
  %tobool.not = icmp eq ptr %isp, null
  br i1 %tobool.not, label %if.end10.if.end36_crit_edge, label %if.else

if.end10.if.end36_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.else:                                          ; preds = %if.end10
  %ops = getelementptr inbounds %struct.rkisp1_device, ptr %15, i32 0, i32 8, i32 0, i32 6
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %pad15 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %pad15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pad15, align 4
  %tobool16.not = icmp eq ptr %19, null
  br i1 %tobool16.not, label %if.else.if.end36_crit_edge, label %land.lhs.true

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

land.lhs.true:                                    ; preds = %if.else
  %enum_mbus_code = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %enum_mbus_code to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %enum_mbus_code, align 4
  %tobool19.not = icmp eq ptr %21, null
  br i1 %tobool19.not, label %land.lhs.true.if.end36_crit_edge, label %if.else21

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.else21:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool22.not = icmp eq ptr %22, null
  br i1 %tobool22.not, label %if.else21.if.else29_crit_edge, label %land.lhs.true23

if.else21.if.else29_crit_edge:                    ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else29

land.lhs.true23:                                  ; preds = %if.else21
  %enum_mbus_code24 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %enum_mbus_code24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %enum_mbus_code24, align 4
  %tobool25.not = icmp eq ptr %24, null
  br i1 %tobool25.not, label %land.lhs.true23.if.else29_crit_edge, label %land.lhs.true23.if.end36.sink.split_crit_edge

land.lhs.true23.if.end36.sink.split_crit_edge:    ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.sink.split

land.lhs.true23.if.else29_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else29

if.else29:                                        ; preds = %land.lhs.true23.if.else29_crit_edge, %if.else21.if.else29_crit_edge
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %if.else29, %land.lhs.true23.if.end36.sink.split_crit_edge
  %.sink = phi ptr [ %21, %if.else29 ], [ %24, %land.lhs.true23.if.end36.sink.split_crit_edge ]
  %call33 = call i32 %.sink(ptr noundef nonnull %isp, ptr noundef nonnull %pad_state, ptr noundef %code) #5
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %land.lhs.true.if.end36_crit_edge, %if.else.if.end36_crit_edge, %if.end10.if.end36_crit_edge
  %__result.0 = phi i32 [ -19, %if.end10.if.end36_crit_edge ], [ -515, %land.lhs.true.if.end36_crit_edge ], [ -515, %if.else.if.end36_crit_edge ], [ %call33, %if.end36.sink.split ]
  %25 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %3, ptr %code, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %code, i32 0, i32 4
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.end8, %if.then5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end8 ], [ %__result.0, %if.end36 ], [ -22, %if.then5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pad_state) #5
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %dummy_cfg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_rsz_get_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #5
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  %pad_cfg.i = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %1, %conv.i.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  br i1 %cmp.not.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, label %do.end.i.i, !prof !65

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %spec.select.i.i = phi i32 [ 0, %do.end.i.i ], [ %1, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge ]
  %6 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %7, i32 %spec.select.i.i
  br label %rkisp1_rsz_get_pad_fmt.exit

if.else.i:                                        ; preds = %entry
  br i1 %cmp.not.i.i, label %if.else.i.v4l2_subdev_get_try_format.exit12.i_crit_edge, label %do.end.i9.i, !prof !65

if.else.i.v4l2_subdev_get_try_format.exit12.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_format.exit12.i

do.end.i9.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_format.exit12.i

v4l2_subdev_get_try_format.exit12.i:              ; preds = %do.end.i9.i, %if.else.i.v4l2_subdev_get_try_format.exit12.i_crit_edge
  %spec.select.i10.i = phi i32 [ 0, %do.end.i9.i ], [ %1, %if.else.i.v4l2_subdev_get_try_format.exit12.i_crit_edge ]
  %arrayidx.i11.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %pad_cfg.i, i32 %spec.select.i10.i
  br label %rkisp1_rsz_get_pad_fmt.exit

rkisp1_rsz_get_pad_fmt.exit:                      ; preds = %v4l2_subdev_get_try_format.exit12.i, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %arrayidx.i.i, %v4l2_subdev_get_try_format.exit.i ], [ %arrayidx.i11.i, %v4l2_subdev_get_try_format.exit12.i ]
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %format, ptr %retval.0.i, i32 48)
  tail call void @mutex_unlock(ptr noundef %ops_lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_rsz_set_fmt(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %fmt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ops_lock = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #5
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  %pad_cfg.i.i = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.i = icmp eq i32 %3, 0
  %num_pads.i.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %4 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not.i.i.not.i = icmp eq i16 %5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.then
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i, label %if.then.i.i.if.then.i79.i_crit_edge, !prof !66

if.then.i.i.if.then.i79.i_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i79.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  %6 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %.pr108.i = load i16, ptr %num_pads.i.i.i, align 4
  br label %if.then.i79.i

if.else.i.i:                                      ; preds = %if.then
  br i1 %cmp.not.i.i.not.i, label %do.end.i9.i.i, label %if.else.i.i.if.else.i82.i_crit_edge, !prof !66

if.else.i.i.if.else.i82.i_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i82.i

do.end.i9.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  %7 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %.pr109.i = load i16, ptr %num_pads.i.i.i, align 4
  br label %if.else.i82.i

if.then.i79.i:                                    ; preds = %do.end.i.i.i, %if.then.i.i.if.then.i79.i_crit_edge
  %8 = phi i16 [ %.pr108.i, %do.end.i.i.i ], [ %5, %if.then.i.i.if.then.i79.i_crit_edge ]
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %8)
  %cmp.not.i.i78.i = icmp ugt i16 %8, 1
  br i1 %cmp.not.i.i78.i, label %if.then.i89.thread.i, label %if.then.i89.i, !prof !65

if.then.i89.thread.i:                             ; preds = %if.then.i79.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i111.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %10, i32 1
  br label %v4l2_subdev_get_try_crop.exit.i.i

if.else.i82.i:                                    ; preds = %do.end.i9.i.i, %if.else.i.i.if.else.i82.i_crit_edge
  %11 = phi i16 [ %5, %if.else.i.i.if.else.i82.i_crit_edge ], [ %.pr109.i, %do.end.i9.i.i ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %cmp.not.i.i7895.i = icmp ugt i16 %11, 1
  br i1 %cmp.not.i.i7895.i, label %if.else.i91.thread.i, label %if.else.i91.i, !prof !65

if.else.i91.thread.i:                             ; preds = %if.else.i82.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i11.i115.i = getelementptr %struct.rkisp1_resizer, ptr %sd, i32 0, i32 4, i32 1
  br label %v4l2_subdev_get_try_crop.exit5.i.i

if.then.i89.i:                                    ; preds = %if.then.i79.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  %12 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %.pr.i = load i16, ptr %num_pads.i.i.i, align 4
  %13 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sd_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr.i)
  %cmp.i.i101.i = icmp eq i16 %.pr.i, 0
  br i1 %cmp.i.i101.i, label %do.end.i.i90.i, label %if.then.i89.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge, !prof !66

if.then.i89.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge: ; preds = %if.then.i89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_crop.exit.i.i

do.end.i.i90.i:                                   ; preds = %if.then.i89.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1016, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_crop.exit.i.i

v4l2_subdev_get_try_crop.exit.i.i:                ; preds = %do.end.i.i90.i, %if.then.i89.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge, %if.then.i89.thread.i
  %arrayidx.i.i113.i = phi ptr [ %arrayidx.i.i111.i, %if.then.i89.thread.i ], [ %14, %do.end.i.i90.i ], [ %14, %if.then.i89.i.v4l2_subdev_get_try_crop.exit.i.i_crit_edge ]
  %15 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %16, i32 0, i32 1
  br label %rkisp1_rsz_get_pad_crop.exit.i

if.else.i91.i:                                    ; preds = %if.else.i82.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  %17 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %.pr107.i = load i16, ptr %num_pads.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr107.i)
  %cmp.i.i.i = icmp eq i16 %.pr107.i, 0
  br i1 %cmp.i.i.i, label %do.end.i3.i.i, label %if.else.i91.i.v4l2_subdev_get_try_crop.exit5.i.i_crit_edge, !prof !66

if.else.i91.i.v4l2_subdev_get_try_crop.exit5.i.i_crit_edge: ; preds = %if.else.i91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_crop.exit5.i.i

do.end.i3.i.i:                                    ; preds = %if.else.i91.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1016, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_crop.exit5.i.i

v4l2_subdev_get_try_crop.exit5.i.i:               ; preds = %do.end.i3.i.i, %if.else.i91.i.v4l2_subdev_get_try_crop.exit5.i.i_crit_edge, %if.else.i91.thread.i
  %arrayidx.i11.i117.i = phi ptr [ %arrayidx.i11.i115.i, %if.else.i91.thread.i ], [ %pad_cfg.i.i, %do.end.i3.i.i ], [ %pad_cfg.i.i, %if.else.i91.i.v4l2_subdev_get_try_crop.exit5.i.i_crit_edge ]
  %try_crop.i4.i.i = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 4, i32 0, i32 1
  br label %rkisp1_rsz_get_pad_crop.exit.i

rkisp1_rsz_get_pad_crop.exit.i:                   ; preds = %v4l2_subdev_get_try_crop.exit5.i.i, %v4l2_subdev_get_try_crop.exit.i.i
  %retval.0.i85104.i = phi ptr [ %arrayidx.i.i113.i, %v4l2_subdev_get_try_crop.exit.i.i ], [ %arrayidx.i11.i117.i, %v4l2_subdev_get_try_crop.exit5.i.i ]
  %retval.0.i96102.i = phi ptr [ %10, %v4l2_subdev_get_try_crop.exit.i.i ], [ %pad_cfg.i.i, %v4l2_subdev_get_try_crop.exit5.i.i ]
  %retval.0.i92.i = phi ptr [ %try_crop.i.i.i, %v4l2_subdev_get_try_crop.exit.i.i ], [ %try_crop.i4.i.i, %v4l2_subdev_get_try_crop.exit5.i.i ]
  %id.i = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 1
  %18 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i = icmp eq i32 %19, 1
  br i1 %cmp.i, label %rkisp1_rsz_get_pad_crop.exit.i.if.end.i_crit_edge, label %if.else.i

rkisp1_rsz_get_pad_crop.exit.i.if.end.i_crit_edge: ; preds = %rkisp1_rsz_get_pad_crop.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.else.i:                                        ; preds = %rkisp1_rsz_get_pad_crop.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %code3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %code3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %code3.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %rkisp1_rsz_get_pad_crop.exit.i.if.end.i_crit_edge
  %.sink.i = phi i32 [ %21, %if.else.i ], [ 8200, %rkisp1_rsz_get_pad_crop.exit.i.if.end.i_crit_edge ]
  %22 = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i96102.i, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %.sink.i, ptr %22, align 4
  %call6.i = tail call ptr @rkisp1_isp_mbus_info_get(i32 noundef %.sink.i) #5
  %tobool.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then8.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %direction.i = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %call6.i, i32 0, i32 6
  %24 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %direction.i, align 4
  %and.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool7.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false.i.if.then8.i_crit_edge, label %lor.lhs.false.i.if.end12.i_crit_edge

lor.lhs.false.i.if.end12.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12.i

lor.lhs.false.i.if.then8.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then8.i

if.then8.i:                                       ; preds = %lor.lhs.false.i.if.then8.i_crit_edge, %if.end.i.if.then8.i_crit_edge
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 8200, ptr %22, align 4
  %call11.i = tail call ptr @rkisp1_isp_mbus_info_get(i32 noundef 8200) #5
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %lor.lhs.false.i.if.end12.i_crit_edge
  %mbus_info.0.i = phi ptr [ %call6.i, %lor.lhs.false.i.if.end12.i_crit_edge ], [ %call11.i, %if.then8.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp13.i = icmp eq i32 %3, 1
  br i1 %cmp13.i, label %if.then14.i, label %if.end12.i.rkisp1_rsz_set_sink_fmt.exit_crit_edge

if.end12.i.rkisp1_rsz_set_sink_fmt.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rkisp1_rsz_set_sink_fmt.exit

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  %pixel_enc.i = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %mbus_info.0.i, i32 0, i32 1
  %27 = ptrtoint ptr %pixel_enc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pixel_enc.i, align 4
  %pixel_enc15.i = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 6
  %29 = ptrtoint ptr %pixel_enc15.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %pixel_enc15.i, align 4
  br label %rkisp1_rsz_set_sink_fmt.exit

rkisp1_rsz_set_sink_fmt.exit:                     ; preds = %if.then14.i, %if.end12.i.rkisp1_rsz_set_sink_fmt.exit_crit_edge
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %22, align 4
  %code18.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i85104.i, i32 0, i32 2
  %32 = ptrtoint ptr %code18.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %code18.i, align 4
  %33 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %format, align 4
  %35 = tail call i32 @llvm.umax.i32(i32 %34, i32 32) #5
  %36 = tail call i32 @llvm.umin.i32(i32 %35, i32 4032) #5
  %37 = ptrtoint ptr %retval.0.i96102.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %retval.0.i96102.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height.i, align 4
  %40 = tail call i32 @llvm.umax.i32(i32 %39, i32 32) #5
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 3024) #5
  %height39.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i96102.i, i32 0, i32 1
  %42 = ptrtoint ptr %height39.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %height39.i, align 4
  %43 = call ptr @memcpy(ptr %format, ptr %retval.0.i96102.i, i32 48)
  tail call fastcc void @rkisp1_rsz_set_sink_crop(ptr noundef %sd, ptr noundef %sd_state, ptr noundef %retval.0.i92.i, i32 noundef %3) #5
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %cmp.i.i, label %if.then.i.i16, label %if.else.i.i19

if.then.i.i16:                                    ; preds = %if.else
  br i1 %cmp.not.i.i.not.i, label %do.end.i.i.i18, label %if.then.i.i16.if.then.i63.i_crit_edge, !prof !66

if.then.i.i16.if.then.i63.i_crit_edge:            ; preds = %if.then.i.i16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i63.i

do.end.i.i.i18:                                   ; preds = %if.then.i.i16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  %44 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %.pr.i17 = load i16, ptr %num_pads.i.i.i, align 4
  br label %if.then.i63.i

if.else.i.i19:                                    ; preds = %if.else
  br i1 %cmp.not.i.i.not.i, label %do.end.i9.i.i20, label %if.else.i.i19.if.else.i66.i_crit_edge, !prof !66

if.else.i.i19.if.else.i66.i_crit_edge:            ; preds = %if.else.i.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i66.i

do.end.i9.i.i20:                                  ; preds = %if.else.i.i19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  %45 = ptrtoint ptr %num_pads.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %.pr78.i = load i16, ptr %num_pads.i.i.i, align 4
  br label %if.else.i66.i

if.then.i63.i:                                    ; preds = %do.end.i.i.i18, %if.then.i.i16.if.then.i63.i_crit_edge
  %46 = phi i16 [ %.pr.i17, %do.end.i.i.i18 ], [ %5, %if.then.i.i16.if.then.i63.i_crit_edge ]
  %47 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sd_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %46)
  %cmp.not.i.i62.i = icmp ugt i16 %46, 1
  br i1 %cmp.not.i.i62.i, label %if.then.i63.i.v4l2_subdev_get_try_format.exit.i65.i_crit_edge, label %do.end.i.i64.i, !prof !65

if.then.i63.i.v4l2_subdev_get_try_format.exit.i65.i_crit_edge: ; preds = %if.then.i63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_format.exit.i65.i

do.end.i.i64.i:                                   ; preds = %if.then.i63.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_format.exit.i65.i

v4l2_subdev_get_try_format.exit.i65.i:            ; preds = %do.end.i.i64.i, %if.then.i63.i.v4l2_subdev_get_try_format.exit.i65.i_crit_edge
  %spec.select.i.i.i = phi i32 [ 0, %do.end.i.i64.i ], [ 1, %if.then.i63.i.v4l2_subdev_get_try_format.exit.i65.i_crit_edge ]
  %49 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sd_state, align 4
  %arrayidx.i.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %50, i32 %spec.select.i.i.i
  br label %rkisp1_rsz_get_pad_fmt.exit70.i

if.else.i66.i:                                    ; preds = %do.end.i9.i.i20, %if.else.i.i19.if.else.i66.i_crit_edge
  %51 = phi i16 [ %5, %if.else.i.i19.if.else.i66.i_crit_edge ], [ %.pr78.i, %do.end.i9.i.i20 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %51)
  %cmp.not.i.i6273.i = icmp ugt i16 %51, 1
  br i1 %cmp.not.i.i6273.i, label %if.else.i66.i.v4l2_subdev_get_try_format.exit12.i68.i_crit_edge, label %do.end.i9.i67.i, !prof !65

if.else.i66.i.v4l2_subdev_get_try_format.exit12.i68.i_crit_edge: ; preds = %if.else.i66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_format.exit12.i68.i

do.end.i9.i67.i:                                  ; preds = %if.else.i66.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_format.exit12.i68.i

v4l2_subdev_get_try_format.exit12.i68.i:          ; preds = %do.end.i9.i67.i, %if.else.i66.i.v4l2_subdev_get_try_format.exit12.i68.i_crit_edge
  %spec.select.i10.i.i = phi i32 [ 0, %do.end.i9.i67.i ], [ 1, %if.else.i66.i.v4l2_subdev_get_try_format.exit12.i68.i_crit_edge ]
  %arrayidx.i11.i.i = getelementptr %struct.v4l2_subdev_pad_config, ptr %pad_cfg.i.i, i32 %spec.select.i10.i.i
  br label %rkisp1_rsz_get_pad_fmt.exit70.i

rkisp1_rsz_get_pad_fmt.exit70.i:                  ; preds = %v4l2_subdev_get_try_format.exit12.i68.i, %v4l2_subdev_get_try_format.exit.i65.i
  %retval.0.i74.i = phi ptr [ %48, %v4l2_subdev_get_try_format.exit.i65.i ], [ %pad_cfg.i.i, %v4l2_subdev_get_try_format.exit12.i68.i ]
  %retval.0.i69.i = phi ptr [ %arrayidx.i.i.i, %v4l2_subdev_get_try_format.exit.i65.i ], [ %arrayidx.i11.i.i, %v4l2_subdev_get_try_format.exit12.i68.i ]
  %code.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i74.i, i32 0, i32 2
  %52 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %code.i, align 4
  %call2.i = tail call ptr @rkisp1_isp_mbus_info_get(i32 noundef %53) #5
  %pixel_enc.i21 = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %call2.i, i32 0, i32 1
  %54 = ptrtoint ptr %pixel_enc.i21 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pixel_enc.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp.i22 = icmp eq i32 %55, 1
  br i1 %cmp.i22, label %land.lhs.true.i, label %rkisp1_rsz_get_pad_fmt.exit70.i.rkisp1_rsz_set_src_fmt.exit_crit_edge

rkisp1_rsz_get_pad_fmt.exit70.i.rkisp1_rsz_set_src_fmt.exit_crit_edge: ; preds = %rkisp1_rsz_get_pad_fmt.exit70.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rkisp1_rsz_set_src_fmt.exit

land.lhs.true.i:                                  ; preds = %rkisp1_rsz_get_pad_fmt.exit70.i
  %code3.i23 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 2
  %56 = ptrtoint ptr %code3.i23 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %code3.i23, align 4
  %58 = zext i32 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values)
  switch i32 %57, label %land.lhs.true.i.rkisp1_rsz_set_src_fmt.exit_crit_edge [
    i32 8200, label %land.lhs.true.i.if.then.i_crit_edge
    i32 8196, label %land.lhs.true.i.if.then.i_crit_edge26
  ]

land.lhs.true.i.if.then.i_crit_edge26:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

land.lhs.true.i.rkisp1_rsz_set_src_fmt.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rkisp1_rsz_set_src_fmt.exit

if.then.i:                                        ; preds = %land.lhs.true.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge26
  %code6.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i69.i, i32 0, i32 2
  %59 = ptrtoint ptr %code6.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %57, ptr %code6.i, align 4
  br label %rkisp1_rsz_set_src_fmt.exit

rkisp1_rsz_set_src_fmt.exit:                      ; preds = %if.then.i, %land.lhs.true.i.rkisp1_rsz_set_src_fmt.exit_crit_edge, %rkisp1_rsz_get_pad_fmt.exit70.i.rkisp1_rsz_set_src_fmt.exit_crit_edge
  %60 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %format, align 4
  %config.i = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 5
  %62 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %config.i, align 4
  %min_rsz_width.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %min_rsz_width.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %min_rsz_width.i, align 4
  %66 = tail call i32 @llvm.umax.i32(i32 %61, i32 %65) #5
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %63, align 4
  %69 = tail call i32 @llvm.umin.i32(i32 %66, i32 %68) #5
  %70 = ptrtoint ptr %retval.0.i69.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %retval.0.i69.i, align 4
  %height.i24 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %71 = ptrtoint ptr %height.i24 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %height.i24, align 4
  %73 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %config.i, align 4
  %min_rsz_height.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %74, i32 0, i32 3
  %75 = ptrtoint ptr %min_rsz_height.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %min_rsz_height.i, align 4
  %77 = tail call i32 @llvm.umax.i32(i32 %72, i32 %76) #5
  %max_rsz_height.i = getelementptr inbounds %struct.rkisp1_rsz_config, ptr %74, i32 0, i32 1
  %78 = ptrtoint ptr %max_rsz_height.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_rsz_height.i, align 4
  %80 = tail call i32 @llvm.umin.i32(i32 %77, i32 %79) #5
  %height30.i = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i69.i, i32 0, i32 1
  %81 = ptrtoint ptr %height30.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %height30.i, align 4
  %82 = call ptr @memcpy(ptr %format, ptr %retval.0.i69.i, i32 48)
  br label %if.end

if.end:                                           ; preds = %rkisp1_rsz_set_src_fmt.exit, %rkisp1_rsz_set_sink_fmt.exit
  tail call void @mutex_unlock(ptr noundef %ops_lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_rsz_get_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops_lock = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #5
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %2 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %target, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %3, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb6
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %5 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sel, align 4
  %pad_cfg.i = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %7 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp.not.i.i.not = icmp eq i16 %8, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  br i1 %cmp.not.i.i.not, label %do.end.i.i, label %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge, !prof !66

if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_format.exit.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_format.exit.i

v4l2_subdev_get_try_format.exit.i:                ; preds = %do.end.i.i, %if.then.i.v4l2_subdev_get_try_format.exit.i_crit_edge
  %9 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_state, align 4
  br label %rkisp1_rsz_get_pad_fmt.exit

if.else.i:                                        ; preds = %sw.bb
  br i1 %cmp.not.i.i.not, label %do.end.i9.i, label %if.else.i.rkisp1_rsz_get_pad_fmt.exit_crit_edge, !prof !66

if.else.i.rkisp1_rsz_get_pad_fmt.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %rkisp1_rsz_get_pad_fmt.exit

do.end.i9.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  br label %rkisp1_rsz_get_pad_fmt.exit

rkisp1_rsz_get_pad_fmt.exit:                      ; preds = %do.end.i9.i, %if.else.i.rkisp1_rsz_get_pad_fmt.exit_crit_edge, %v4l2_subdev_get_try_format.exit.i
  %retval.0.i = phi ptr [ %10, %v4l2_subdev_get_try_format.exit.i ], [ %pad_cfg.i, %do.end.i9.i ], [ %pad_cfg.i, %if.else.i.rkisp1_rsz_get_pad_fmt.exit_crit_edge ]
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %height1 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %height1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height1, align 4
  %14 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %retval.0.i, align 4
  %width3 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %width3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %width3, align 4
  %17 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %top, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  %r7 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %19 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp.i26 = icmp eq i32 %20, 0
  %num_pads.i.i27 = getelementptr inbounds %struct.media_entity, ptr %sd, i32 0, i32 5
  %21 = ptrtoint ptr %num_pads.i.i27 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %num_pads.i.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp.i.i = icmp eq i16 %22, 0
  br i1 %cmp.i26, label %if.then.i28, label %if.else.i30

if.then.i28:                                      ; preds = %sw.bb6
  br i1 %cmp.i.i, label %do.end.i.i29, label %if.then.i28.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !66

if.then.i28.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i29:                                     ; preds = %if.then.i28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1016, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i29, %if.then.i28.v4l2_subdev_get_try_crop.exit.i_crit_edge
  %23 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %24, i32 0, i32 1
  br label %rkisp1_rsz_get_pad_crop.exit

if.else.i30:                                      ; preds = %sw.bb6
  br i1 %cmp.i.i, label %do.end.i3.i, label %if.else.i30.v4l2_subdev_get_try_crop.exit5.i_crit_edge, !prof !66

if.else.i30.v4l2_subdev_get_try_crop.exit5.i_crit_edge: ; preds = %if.else.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_crop.exit5.i

do.end.i3.i:                                      ; preds = %if.else.i30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1016, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_crop.exit5.i

v4l2_subdev_get_try_crop.exit5.i:                 ; preds = %do.end.i3.i, %if.else.i30.v4l2_subdev_get_try_crop.exit5.i_crit_edge
  %try_crop.i4.i = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 4, i32 0, i32 1
  br label %rkisp1_rsz_get_pad_crop.exit

rkisp1_rsz_get_pad_crop.exit:                     ; preds = %v4l2_subdev_get_try_crop.exit5.i, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i31 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %try_crop.i4.i, %v4l2_subdev_get_try_crop.exit5.i ]
  %25 = call ptr @memcpy(ptr %r7, ptr %retval.0.i31, i32 16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %rkisp1_rsz_get_pad_crop.exit, %rkisp1_rsz_get_pad_fmt.exit, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %rkisp1_rsz_get_pad_crop.exit ], [ 0, %rkisp1_rsz_get_pad_fmt.exit ], [ -22, %if.end.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ops_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rkisp1_rsz_set_selection(ptr noundef %sd, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %sel) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %target = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 2
  %0 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %pad = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 1
  %2 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp eq i32 %3, 1
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %do.body

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rkisp1_rsz_set_selection.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rkisp1_rsz_set_selection, %if.then5)) #5
          to label %do.end [label %if.then5], !srcloc !72

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %rkisp1 = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 2
  %4 = ptrtoint ptr %rkisp1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rkisp1, align 4
  %dev = getelementptr inbounds %struct.rkisp1_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pad, align 4
  %r = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %10 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %top, align 4
  %width = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 2
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rkisp1_rsz_set_selection.__UNIQUE_ID_ddebug319, ptr noundef %7, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #5
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %ops_lock = getelementptr inbounds %struct.rkisp1_resizer, ptr %sd, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %ops_lock, i32 noundef 0) #5
  %r11 = getelementptr inbounds %struct.v4l2_subdev_selection, ptr %sel, i32 0, i32 4
  %18 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sel, align 4
  tail call fastcc void @rkisp1_rsz_set_sink_crop(ptr noundef %sd, ptr noundef %sd_state, ptr noundef %r11, i32 noundef %19)
  tail call void @mutex_unlock(ptr noundef %ops_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate_default(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rkisp1_cap_enum_mbus_codes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rkisp1_isp_mbus_info_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rkisp1_rsz_set_sink_crop(ptr noundef %rsz, ptr nocapture noundef readonly %sd_state, ptr nocapture noundef %r, i32 noundef %which) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pad_cfg.i = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %which)
  %cmp.i = icmp eq i32 %which, 0
  %num_pads.i.i = getelementptr inbounds %struct.media_entity, ptr %rsz, i32 0, i32 5
  %0 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp.not.i.i.not = icmp eq i16 %1, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  br i1 %cmp.not.i.i.not, label %if.then.i42, label %if.then.i42.thread, !prof !66

if.then.i42.thread:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sd_state, align 4
  br label %v4l2_subdev_get_try_crop.exit.i

if.else.i:                                        ; preds = %entry
  br i1 %cmp.not.i.i.not, label %if.else.i44, label %if.else.i.v4l2_subdev_get_try_crop.exit5.i_crit_edge, !prof !66

if.else.i.v4l2_subdev_get_try_crop.exit5.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_crop.exit5.i

if.then.i42:                                      ; preds = %if.then.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  %4 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %.pr = load i16, ptr %num_pads.i.i, align 4
  %5 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr)
  %cmp.i.i = icmp eq i16 %.pr, 0
  br i1 %cmp.i.i, label %do.end.i.i43, label %if.then.i42.v4l2_subdev_get_try_crop.exit.i_crit_edge, !prof !66

if.then.i42.v4l2_subdev_get_try_crop.exit.i_crit_edge: ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_crop.exit.i

do.end.i.i43:                                     ; preds = %if.then.i42
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1016, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_crop.exit.i

v4l2_subdev_get_try_crop.exit.i:                  ; preds = %do.end.i.i43, %if.then.i42.v4l2_subdev_get_try_crop.exit.i_crit_edge, %if.then.i42.thread
  %7 = phi ptr [ %3, %if.then.i42.thread ], [ %6, %do.end.i.i43 ], [ %6, %if.then.i42.v4l2_subdev_get_try_crop.exit.i_crit_edge ]
  %8 = ptrtoint ptr %sd_state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_state, align 4
  %try_crop.i.i = getelementptr inbounds %struct.v4l2_subdev_pad_config, ptr %9, i32 0, i32 1
  br label %rkisp1_rsz_get_pad_crop.exit

if.else.i44:                                      ; preds = %if.else.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 998, i32 noundef 9, ptr noundef null) #5
  %10 = ptrtoint ptr %num_pads.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %.pr52 = load i16, ptr %num_pads.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.pr52)
  %cmp.i.i47 = icmp eq i16 %.pr52, 0
  br i1 %cmp.i.i47, label %do.end.i3.i, label %if.else.i44.v4l2_subdev_get_try_crop.exit5.i_crit_edge, !prof !66

if.else.i44.v4l2_subdev_get_try_crop.exit5.i_crit_edge: ; preds = %if.else.i44
  call void @__sanitizer_cov_trace_pc() #7
  br label %v4l2_subdev_get_try_crop.exit5.i

do.end.i3.i:                                      ; preds = %if.else.i44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 1016, i32 noundef 9, ptr noundef null) #5
  br label %v4l2_subdev_get_try_crop.exit5.i

v4l2_subdev_get_try_crop.exit5.i:                 ; preds = %do.end.i3.i, %if.else.i44.v4l2_subdev_get_try_crop.exit5.i_crit_edge, %if.else.i.v4l2_subdev_get_try_crop.exit5.i_crit_edge
  %try_crop.i4.i = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 4, i32 0, i32 1
  br label %rkisp1_rsz_get_pad_crop.exit

rkisp1_rsz_get_pad_crop.exit:                     ; preds = %v4l2_subdev_get_try_crop.exit5.i, %v4l2_subdev_get_try_crop.exit.i
  %retval.0.i48 = phi ptr [ %7, %v4l2_subdev_get_try_crop.exit.i ], [ %pad_cfg.i, %v4l2_subdev_get_try_crop.exit5.i ]
  %retval.0.i45 = phi ptr [ %try_crop.i.i, %v4l2_subdev_get_try_crop.exit.i ], [ %try_crop.i4.i, %v4l2_subdev_get_try_crop.exit5.i ]
  %code = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i48, i32 0, i32 2
  %11 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %code, align 4
  %call2 = tail call ptr @rkisp1_isp_mbus_info_get(i32 noundef %12) #5
  %id = getelementptr inbounds %struct.rkisp1_resizer, ptr %rsz, i32 0, i32 1
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %land.lhs.true, label %rkisp1_rsz_get_pad_crop.exit.if.end_crit_edge

rkisp1_rsz_get_pad_crop.exit.if.end_crit_edge:    ; preds = %rkisp1_rsz_get_pad_crop.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %rkisp1_rsz_get_pad_crop.exit
  %pixel_enc = getelementptr inbounds %struct.rkisp1_isp_mbus_info, ptr %call2, i32 0, i32 1
  %15 = ptrtoint ptr %pixel_enc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pixel_enc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp3 = icmp eq i32 %16, 3
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %retval.0.i45 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %retval.0.i45, align 4
  %top = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i45, i32 0, i32 1
  %18 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %top, align 4
  %19 = ptrtoint ptr %retval.0.i48 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %retval.0.i48, align 4
  %width4 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i45, i32 0, i32 2
  %21 = ptrtoint ptr %width4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %width4, align 4
  %height = getelementptr inbounds %struct.v4l2_mbus_framefmt, ptr %retval.0.i48, i32 0, i32 1
  %22 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i45, i32 0, i32 3
  %24 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %height5, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %rkisp1_rsz_get_pad_crop.exit.if.end_crit_edge
  %25 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %r, align 4
  %add = add i32 %26, 1
  %and = and i32 %add, -2
  %27 = ptrtoint ptr %retval.0.i45 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and, ptr %retval.0.i45, align 4
  %width8 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 2
  %28 = ptrtoint ptr %width8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width8, align 4
  %add9 = add i32 %29, 1
  %and10 = and i32 %add9, -2
  %width11 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i45, i32 0, i32 2
  %30 = ptrtoint ptr %width11 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and10, ptr %width11, align 4
  %top12 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 1
  %31 = ptrtoint ptr %top12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %top12, align 4
  %top13 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i45, i32 0, i32 1
  %33 = ptrtoint ptr %top13 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %top13, align 4
  %height14 = getelementptr inbounds %struct.v4l2_rect, ptr %r, i32 0, i32 3
  %34 = ptrtoint ptr %height14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height14, align 4
  %height15 = getelementptr inbounds %struct.v4l2_rect, ptr %retval.0.i45, i32 0, i32 3
  %36 = ptrtoint ptr %height15 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %height15, align 4
  tail call void @rkisp1_sd_adjust_crop(ptr noundef %retval.0.i45, ptr noundef %retval.0.i48) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %37 = call ptr @memcpy(ptr %r, ptr %retval.0.i45, i32 16)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rkisp1_sd_adjust_crop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_subdev_link_validate(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !32, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !52, !53, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 795, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 796, i32 3}
!4 = !{ptr @rkisp1_rsz_register.dev_names, !5, !"dev_names", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 794, i32 28}
!6 = !{ptr @rkisp1_rsz_register.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 821, i32 2}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 828, i32 3}
!11 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rkisp1_rsz_register._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @rkisp1_rsz_register._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @rkisp1_rsz_config_sp, !18, !"rkisp1_rsz_config_sp", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 139, i32 39}
!19 = !{ptr @rkisp1_rsz_config_mp, !20, !"rkisp1_rsz_config_mp", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 97, i32 39}
!21 = !{ptr @rkisp1_rsz_ops, !22, !"rkisp1_rsz_ops", i1 false, i1 false}
!22 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 778, i32 37}
!23 = !{ptr @rkisp1_rsz_video_ops, !24, !"rkisp1_rsz_video_ops", i1 false, i1 false}
!24 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 774, i32 43}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 443, i32 2}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rkisp1_rsz_config.__UNIQUE_ID_ddebug301, !26, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 446, i32 2}
!32 = !{ptr @rkisp1_rsz_config.__UNIQUE_ID_ddebug302, !31, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../include/media/v4l2-subdev.h", i32 1016, i32 6}
!35 = !{ptr @rkisp1_rsz_yuv_src_formats, !36, !"rkisp1_rsz_yuv_src_formats", i1 false, i1 false}
!36 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 25, i32 46}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 269, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rkisp1_rsz_dump_regs.__UNIQUE_ID_ddebug300, !38, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 245, i32 3}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @rkisp1_dcrop_config.__UNIQUE_ID_ddebug298, !42, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 258, i32 2}
!47 = !{ptr @rkisp1_dcrop_config.__UNIQUE_ID_ddebug299, !46, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!48 = !{ptr @rkisp1_rsz_pad_ops, !49, !"rkisp1_rsz_pad_ops", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 735, i32 41}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 721, i32 2}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rkisp1_rsz_set_selection.__UNIQUE_ID_ddebug319, !51, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!54 = !{ptr @rkisp1_rsz_media_ops, !55, !"rkisp1_rsz_media_ops", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c", i32 731, i32 45}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"branch_weights", i32 2000, i32 1}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 4270864}
!68 = !{i64 2156529786}
!69 = !{i64 2156528921}
!70 = !{i64 4270446}
!71 = !{i8 0, i8 2}
!72 = !{i64 2148762733, i64 2148762738, i64 2148762751, i64 2148762795, i64 2148762829, i64 2148762850}
