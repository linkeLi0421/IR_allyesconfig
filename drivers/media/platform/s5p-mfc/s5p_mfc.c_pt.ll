; ModuleID = '/llk/IR_all_yes/drivers/media/platform/s5p-mfc/s5p_mfc.c_pt.bc'
source_filename = "../drivers/media/platform/s5p-mfc/s5p_mfc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_event_src_change = type { i32 }
%struct.__kernel_timespec = type { i64, i64 }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s5p_mfc_variant = type { i32, i32, i32, ptr, [2 x ptr], [4 x ptr], i32, i8 }
%struct.s5p_mfc_buf_size = type { i32, i32, ptr }
%struct.s5p_mfc_buf_size_v5 = type { i32, i32, i32, i32 }
%struct.s5p_mfc_buf_size_v6 = type { i32, i32, i32, i32, i32, i32 }
%struct.s5p_mfc_dev = type { %struct.v4l2_device, ptr, ptr, ptr, [2 x ptr], ptr, i32, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.s5p_mfc_pm, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, i32, i32, %struct.wait_queue_head, %struct.s5p_mfc_priv_buf, i32, i32, ptr, ptr, [2 x i32], i32, [4 x ptr], i32, i32, %struct.atomic_t, %struct.timer_list, ptr, %struct.work_struct, i32, %struct.s5p_mfc_priv_buf, i32, ptr, ptr, ptr, i32, i8, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.s5p_mfc_pm = type { ptr, ptr, [4 x ptr], i32, i8, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.s5p_mfc_priv_buf = type { i32, ptr, i32, i32, i32 }
%struct.s5p_mfc_ctx = type { ptr, %struct.v4l2_fh, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, %struct.vb2_queue, %struct.vb2_queue, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, i32, i32, [32 x %struct.s5p_mfc_buf], i32, [32 x %struct.s5p_mfc_buf], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_enc_params, i32, i32, i32, i32, i32, i32, %struct.list_head, i32, i32, %union.anon.123, ptr, [128 x ptr], %struct.v4l2_ctrl_handler, i32 }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.s5p_mfc_buf = type { ptr, %struct.list_head, %union.anon.120, i32 }
%union.anon.120 = type { %struct.anon.121 }
%struct.anon.121 = type { i32, i32 }
%struct.s5p_mfc_enc_params = type { i16, i16, i32, i32, i16, i32, i16, i32, i16, i32, i8, i8, i8, i32, i32, i32, i16, i16, i32, i32, i32, i32, i8, i32, i32, %struct.anon.122 }
%struct.anon.122 = type { %struct.s5p_mfc_h264_enc_params, %struct.s5p_mfc_mpeg4_enc_params, %struct.s5p_mfc_vp8_enc_params, %struct.s5p_mfc_hevc_enc_params }
%struct.s5p_mfc_h264_enc_params = type { i32, i32, i8, i8, i32, i8, i8, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i16, i8, i8, i8, i8, i8, i32, i32, i16, i32, i8, i8, i8, [7 x i8], i8, i8, i8, i8, i8, i8, i8, i32, [4 x i32], i8, [8 x i32] }
%struct.s5p_mfc_mpeg4_enc_params = type { i32, i32, i16, i16, i8, i8, i8, i8, i8, i32, i32 }
%struct.s5p_mfc_vp8_enc_params = type { i8, i32, i32, i8, i8, i32, i32, i8, [3 x i8], i8, i8, i8, i8, i8 }
%struct.s5p_mfc_hevc_enc_params = type { i32, i32, i32, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, [7 x i8], [7 x i32], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%union.anon.123 = type { i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.s5p_mfc_hw_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s5p_mfc_codec_ops = type { ptr, ptr, ptr, ptr }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__param_str_debug = internal constant [14 x i8] c"s5p_mfc.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mfc_debug_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @mfc_debug_level } }, section "__param", align 4
@__UNIQUE_ID_debugtype298 = internal constant [27 x i8] c"s5p_mfc.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug299 = internal constant [77 x i8] c"s5p_mfc.parm=debug:Debug level - higher value produces more verbose messages\00", section ".modinfo", align 1
@__param_str_mem = internal constant [12 x i8] c"s5p_mfc.mem\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@mfc_mem_size = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_mem = internal constant %struct.kernel_param { ptr @__param_str_mem, ptr null, ptr @param_ops_charp, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @mfc_mem_size } }, section "__param", align 4
@__UNIQUE_ID_memtype300 = internal constant [27 x i8] c"s5p_mfc.parmtype=mem:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_mem301 = internal constant [79 x i8] c"s5p_mfc.parm=mem:Preallocated memory size for the firmware and context buffers\00", section ".modinfo", align 1
@__initcall__kmod_s5p_mfc__305_1678_s5p_mfc_driver_init6 = internal global ptr @s5p_mfc_driver_init, section ".initcall6.init", align 4
@s5p_mfc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @s5p_mfc_probe, ptr @s5p_mfc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_mfc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5p_mfc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_s5p_mfc_driver_exit = internal global ptr @s5p_mfc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file306 = internal constant [52 x i8] c"s5p_mfc.file=drivers/media/platform/s5p-mfc/s5p-mfc\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [20 x i8] c"s5p_mfc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [51 x i8] c"s5p_mfc.author=Kamil Debski <k.debski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [63 x i8] c"s5p_mfc.description=Samsung S5P Multi Format Codec V4L2 driver\00", section ".modinfo", align 1
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s5p-mfc\00", [24 x i8] zeroinitializer }, align 32
@exynos_mfc_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,mfc-v5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mfc_drvdata_v5 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,mfc-v6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mfc_drvdata_v6 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,mfc-v7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mfc_drvdata_v7 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,mfc-v8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mfc_drvdata_v8 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-mfc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mfc_drvdata_v8_5433 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,mfc-v10\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mfc_drvdata_v10 }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@s5p_mfc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @s5p_mfc_suspend, ptr @s5p_mfc_resume, ptr @s5p_mfc_suspend, ptr @s5p_mfc_resume, ptr @s5p_mfc_suspend, ptr @s5p_mfc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@s5p_mfc_probe.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 1, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s5p_mfc\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s5p_mfc_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/platform/s5p-mfc/s5p_mfc.c\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s++\0A\00", [26 x i8] zeroinitializer }, align 32
@s5p_mfc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dev->irqlock\00", [18 x i8] zeroinitializer }, align 32
@s5p_mfc_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->condlock\00", [17 x i8] zeroinitializer }, align 32
@s5p_mfc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1283, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s:%d: No platform data specified\0A\00", [59 x i8] zeroinitializer }, align 32
@s5p_mfc_probe._entry_ptr = internal global ptr @s5p_mfc_probe._entry, section ".printk_index", align 4
@s5p_mfc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1289, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Failed to get device MFC hardware variant information\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s5p_mfc_probe._entry_ptr.14 = internal global ptr @s5p_mfc_probe._entry.10, section ".printk_index", align 4
@s5p_mfc_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 1299, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get irq resource\0A\00", [36 x i8] zeroinitializer }, align 32
@s5p_mfc_probe._entry_ptr.17 = internal global ptr @s5p_mfc_probe._entry.15, section ".printk_index", align 4
@s5p_mfc_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 1306, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to install irq (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@s5p_mfc_probe._entry_ptr.20 = internal global ptr @s5p_mfc_probe._entry.18, section ".printk_index", align 4
@s5p_mfc_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 1312, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to configure DMA memory\0A\00", [32 x i8] zeroinitializer }, align 32
@s5p_mfc_probe._entry_ptr.23 = internal global ptr @s5p_mfc_probe._entry.21, section ".printk_index", align 4
@s5p_mfc_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 1318, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get mfc clock source\0A\00", [32 x i8] zeroinitializer }, align 32
@s5p_mfc_probe._entry_ptr.26 = internal global ptr @s5p_mfc_probe._entry.24, section ".printk_index", align 4
@s5p_mfc_probe.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->mfc_mutex\00", [16 x i8] zeroinitializer }, align 32
@s5p_mfc_probe.__key.29 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->queue\00", [20 x i8] zeroinitializer }, align 32
@s5p_mfc_probe.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&dev->watchdog_work)\00", [57 x i8] zeroinitializer }, align 32
@s5p_mfc_probe.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&dev->watchdog_timer)\00", [41 x i8] zeroinitializer }, align 32
@s5p_mfc_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to allocate video device\0A\00", [57 x i8] zeroinitializer }, align 32
@s5p_mfc_probe._entry_ptr.37 = internal global ptr @s5p_mfc_probe._entry.35, section ".printk_index", align 4
@s5p_mfc_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @s5p_mfc_poll, ptr @video_ioctl2, ptr null, ptr @s5p_mfc_mmap, ptr @s5p_mfc_open, ptr @s5p_mfc_release }, [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s5p-mfc-dec\00", [20 x i8] zeroinitializer }, align 32
@s5p_mfc_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.3, ptr @.str.4, i32 1361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_probe._entry_ptr.41 = internal global ptr @s5p_mfc_probe._entry.40, section ".printk_index", align 4
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s5p-mfc-enc\00", [20 x i8] zeroinitializer }, align 32
@s5p_mfc_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.3, ptr @.str.4, i32 1385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@s5p_mfc_probe._entry_ptr.45 = internal global ptr @s5p_mfc_probe._entry.43, section ".printk_index", align 4
@s5p_mfc_probe._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.3, ptr @.str.4, i32 1389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: decoder registered as /dev/video%d\0A\00", [54 x i8] zeroinitializer }, align 32
@s5p_mfc_probe._entry_ptr.48 = internal global ptr @s5p_mfc_probe._entry.46, section ".printk_index", align 4
@s5p_mfc_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.3, ptr @.str.4, i32 1393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_probe._entry_ptr.50 = internal global ptr @s5p_mfc_probe._entry.49, section ".printk_index", align 4
@s5p_mfc_probe._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.3, ptr @.str.4, i32 1397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: encoder registered as /dev/video%d\0A\00", [54 x i8] zeroinitializer }, align 32
@s5p_mfc_probe._entry_ptr.53 = internal global ptr @s5p_mfc_probe._entry.51, section ".printk_index", align 4
@s5p_mfc_probe.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.54, i8 1, i8 93, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s--\0A\00", [26 x i8] zeroinitializer }, align 32
@s5p_mfc_probe.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.55, i8 1, i8 98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s-- with error\0A\00", [47 x i8] zeroinitializer }, align 32
@s5p_mfc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s:%d: enter\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"s5p_mfc_irq\00", [20 x i8] zeroinitializer }, align 32
@s5p_mfc_irq._entry_ptr = internal global ptr @s5p_mfc_irq._entry, section ".printk_index", align 4
@s5p_mfc_irq._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.4, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s:%d: Int reason: %d (err: %08x)\0A\00", [59 x i8] zeroinitializer }, align 32
@s5p_mfc_irq._entry_ptr.60 = internal global ptr @s5p_mfc_irq._entry.58, section ".printk_index", align 4
@s5p_mfc_irq._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.4, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s:%d: post_frame_start() failed\0A\00", [60 x i8] zeroinitializer }, align 32
@s5p_mfc_irq._entry_ptr.63 = internal global ptr @s5p_mfc_irq._entry.61, section ".printk_index", align 4
@s5p_mfc_irq._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.4, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s:%d: Unknown int reason\0A\00", [35 x i8] zeroinitializer }, align 32
@s5p_mfc_irq._entry_ptr.66 = internal global ptr @s5p_mfc_irq._entry.64, section ".printk_index", align 4
@s5p_mfc_irq._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.57, ptr @.str.4, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s:%d: leave\0A\00", [16 x i8] zeroinitializer }, align 32
@s5p_mfc_irq._entry_ptr.69 = internal global ptr @s5p_mfc_irq._entry.67, section ".printk_index", align 4
@s5p_mfc_irq._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.57, ptr @.str.4, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s:%d: Failed to unlock hw\0A\00", [34 x i8] zeroinitializer }, align 32
@s5p_mfc_irq._entry_ptr.72 = internal global ptr @s5p_mfc_irq._entry.70, section ".printk_index", align 4
@s5p_mfc_irq._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.57, ptr @.str.4, i32 746, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s:%d: Exit via irq_cleanup_hw\0A\00", [62 x i8] zeroinitializer }, align 32
@s5p_mfc_irq._entry_ptr.75 = internal global ptr @s5p_mfc_irq._entry.73, section ".printk_index", align 4
@s5p_mfc_handle_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.4, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:%d: Frame Status: %x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5p_mfc_handle_frame\00", [43 x i8] zeroinitializer }, align 32
@s5p_mfc_handle_frame._entry_ptr = internal global ptr @s5p_mfc_handle_frame._entry, section ".printk_index", align 4
@s5p_mfc_handle_frame.ev_src_ch = internal constant { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] }, [56 x i8] } { { i32, [4 x i8], { %struct.v4l2_event_src_change, [60 x i8] }, i32, i32, %struct.__kernel_timespec, i32, [8 x i32] } { i32 5, [4 x i8] undef, { %struct.v4l2_event_src_change, [60 x i8] } { %struct.v4l2_event_src_change { i32 1 }, [60 x i8] undef }, i32 0, i32 0, %struct.__kernel_timespec zeroinitializer, i32 0, [8 x i32] zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@s5p_mfc_handle_frame._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.4, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s:%d: No frame decode\0A\00", [38 x i8] zeroinitializer }, align 32
@s5p_mfc_handle_frame._entry_ptr.80 = internal global ptr @s5p_mfc_handle_frame._entry.78, section ".printk_index", align 4
@s5p_mfc_handle_frame._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.4, i32 432, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s:%d: Running again the same buffer\0A\00", [56 x i8] zeroinitializer }, align 32
@s5p_mfc_handle_frame._entry_ptr.83 = internal global ptr @s5p_mfc_handle_frame._entry.81, section ".printk_index", align 4
@s5p_mfc_handle_frame._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.77, ptr @.str.4, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s:%d: MFC needs next buffer\0A\00", [32 x i8] zeroinitializer }, align 32
@s5p_mfc_handle_frame._entry_ptr.86 = internal global ptr @s5p_mfc_handle_frame._entry.84, section ".printk_index", align 4
@s5p_mfc_handle_frame_all_extracted._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.4, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:%d: Cleaning up buffer: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"s5p_mfc_handle_frame_all_extracted\00", [61 x i8] zeroinitializer }, align 32
@s5p_mfc_handle_frame_all_extracted._entry_ptr = internal global ptr @s5p_mfc_handle_frame_all_extracted._entry, section ".printk_index", align 4
@s5p_mfc_handle_frame_copy_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.4, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s:%d: Unexpected frame type: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s5p_mfc_handle_frame_copy_time\00", [33 x i8] zeroinitializer }, align 32
@s5p_mfc_handle_frame_copy_time._entry_ptr = internal global ptr @s5p_mfc_handle_frame_copy_time._entry, section ".printk_index", align 4
@s5p_mfc_handle_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.4, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s:%d: Interrupt Error: %08x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5p_mfc_handle_error\00", [43 x i8] zeroinitializer }, align 32
@s5p_mfc_handle_error._entry_ptr = internal global ptr @s5p_mfc_handle_error._entry, section ".printk_index", align 4
@s5p_mfc_handle_stream_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.4, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s:%d: Stream completed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s5p_mfc_handle_stream_complete\00", [33 x i8] zeroinitializer }, align 32
@s5p_mfc_handle_stream_complete._entry_ptr = internal global ptr @s5p_mfc_handle_stream_complete._entry, section ".printk_index", align 4
@s5p_mfc_handle_seq_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.4, i32 513, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s:%d: post_seq_start() failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s5p_mfc_handle_seq_done\00", [40 x i8] zeroinitializer }, align 32
@s5p_mfc_handle_seq_done._entry_ptr = internal global ptr @s5p_mfc_handle_seq_done._entry, section ".printk_index", align 4
@s5p_mfc_configure_common_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.4, i32 1204, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"failed to preallocate %ld MiB for the firmware and context buffers\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"s5p_mfc_configure_common_memory\00", [32 x i8] zeroinitializer }, align 32
@s5p_mfc_configure_common_memory._entry_ptr = internal global ptr @s5p_mfc_configure_common_memory._entry, section ".printk_index", align 4
@s5p_mfc_configure_common_memory._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.98, ptr @.str.4, i32 1230, ptr @.str.101, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"preallocated %ld MiB buffer for the firmware and context buffers\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@s5p_mfc_configure_common_memory._entry_ptr.102 = internal global ptr @s5p_mfc_configure_common_memory._entry.99, section ".printk_index", align 4
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"left\00", [27 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"right\00", [26 x i8] zeroinitializer }, align 32
@s5p_mfc_configure_2port_memory._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.4, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s:%d: Allocating bank2 base failed\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"s5p_mfc_configure_2port_memory\00", [33 x i8] zeroinitializer }, align 32
@s5p_mfc_configure_2port_memory._entry_ptr = internal global ptr @s5p_mfc_configure_2port_memory._entry, section ".printk_index", align 4
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%s\00", [26 x i8] zeroinitializer }, align 32
@s5p_mfc_watchdog_worker._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.4, i32 174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s:%d: Driver timeout error handling\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s5p_mfc_watchdog_worker\00", [40 x i8] zeroinitializer }, align 32
@s5p_mfc_watchdog_worker._entry_ptr = internal global ptr @s5p_mfc_watchdog_worker._entry, section ".printk_index", align 4
@s5p_mfc_watchdog_worker._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.109, ptr @.str.4, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s:%d: Error: some instance may be closing/opening\0A\00", [42 x i8] zeroinitializer }, align 32
@s5p_mfc_watchdog_worker._entry_ptr.112 = internal global ptr @s5p_mfc_watchdog_worker._entry.110, section ".printk_index", align 4
@s5p_mfc_watchdog_worker._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.109, ptr @.str.4, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s:%d: Failed to reload FW\0A\00", [34 x i8] zeroinitializer }, align 32
@s5p_mfc_watchdog_worker._entry_ptr.115 = internal global ptr @s5p_mfc_watchdog_worker._entry.113, section ".printk_index", align 4
@s5p_mfc_watchdog_worker._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.109, ptr @.str.4, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s:%d: Failed to reinit FW\0A\00", [34 x i8] zeroinitializer }, align 32
@s5p_mfc_watchdog_worker._entry_ptr.118 = internal global ptr @s5p_mfc_watchdog_worker._entry.116, section ".printk_index", align 4
@s5p_mfc_watchdog._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.4, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s:%d: Time out during waiting for HW\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5p_mfc_watchdog\00", [47 x i8] zeroinitializer }, align 32
@s5p_mfc_watchdog._entry_ptr = internal global ptr @s5p_mfc_watchdog._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@s5p_mfc_mmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.4, i32 1050, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s:%d: mmaping source\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s5p_mfc_mmap\00", [19 x i8] zeroinitializer }, align 32
@s5p_mfc_mmap._entry_ptr = internal global ptr @s5p_mfc_mmap._entry, section ".printk_index", align 4
@s5p_mfc_mmap._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.4, i32 1053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s:%d: mmaping destination\0A\00", [34 x i8] zeroinitializer }, align 32
@s5p_mfc_mmap._entry_ptr.125 = internal global ptr @s5p_mfc_mmap._entry.123, section ".printk_index", align 4
@s5p_mfc_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.126, ptr @.str.4, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s5p_mfc_open\00", [19 x i8] zeroinitializer }, align 32
@s5p_mfc_open._entry_ptr = internal global ptr @s5p_mfc_open._entry, section ".printk_index", align 4
@s5p_mfc_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&ctx->queue\00", [20 x i8] zeroinitializer }, align 32
@s5p_mfc_open._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.126, ptr @.str.4, i32 783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s:%d: Too many open contexts\0A\00", [63 x i8] zeroinitializer }, align 32
@s5p_mfc_open._entry_ptr.130 = internal global ptr @s5p_mfc_open._entry.128, section ".printk_index", align 4
@s5p_mfc_open._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.126, ptr @.str.4, i32 798, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s:%d: Failed to setup mfc controls\0A\00", [57 x i8] zeroinitializer }, align 32
@s5p_mfc_open._entry_ptr.133 = internal global ptr @s5p_mfc_open._entry.131, section ".printk_index", align 4
@s5p_mfc_open._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.126, ptr @.str.4, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_open._entry_ptr.135 = internal global ptr @s5p_mfc_open._entry.134, section ".printk_index", align 4
@s5p_mfc_open._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.126, ptr @.str.4, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013%s:%d: power on failed\0A\00", [38 x i8] zeroinitializer }, align 32
@s5p_mfc_open._entry_ptr.138 = internal global ptr @s5p_mfc_open._entry.136, section ".printk_index", align 4
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@s5p_mfc_open._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.126, ptr @.str.4, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s:%d: Failed to initialize videobuf2 queue(capture)\0A\00", [40 x i8] zeroinitializer }, align 32
@s5p_mfc_open._entry_ptr.141 = internal global ptr @s5p_mfc_open._entry.139, section ".printk_index", align 4
@s5p_mfc_open._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.126, ptr @.str.4, i32 901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s:%d: Failed to initialize videobuf2 queue(output)\0A\00", [41 x i8] zeroinitializer }, align 32
@s5p_mfc_open._entry_ptr.144 = internal global ptr @s5p_mfc_open._entry.142, section ".printk_index", align 4
@s5p_mfc_open._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.126, ptr @.str.4, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_open._entry_ptr.146 = internal global ptr @s5p_mfc_open._entry.145, section ".printk_index", align 4
@s5p_mfc_open._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.126, ptr @.str.4, i32 916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s:%d: power off failed\0A\00", [37 x i8] zeroinitializer }, align 32
@s5p_mfc_open._entry_ptr.149 = internal global ptr @s5p_mfc_open._entry.147, section ".printk_index", align 4
@s5p_mfc_open._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.126, ptr @.str.4, i32 930, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_open._entry_ptr.151 = internal global ptr @s5p_mfc_open._entry.150, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@s5p_mfc_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.152, ptr @.str.4, i32 941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s5p_mfc_release\00", [16 x i8] zeroinitializer }, align 32
@s5p_mfc_release._entry_ptr = internal global ptr @s5p_mfc_release._entry, section ".printk_index", align 4
@s5p_mfc_release._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.152, ptr @.str.4, i32 956, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s:%d: Has to free instance\0A\00", [33 x i8] zeroinitializer }, align 32
@s5p_mfc_release._entry_ptr.155 = internal global ptr @s5p_mfc_release._entry.153, section ".printk_index", align 4
@s5p_mfc_release._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.152, ptr @.str.4, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s:%d: Last instance\0A\00", [40 x i8] zeroinitializer }, align 32
@s5p_mfc_release._entry_ptr.158 = internal global ptr @s5p_mfc_release._entry.156, section ".printk_index", align 4
@s5p_mfc_release._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.152, ptr @.str.4, i32 969, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s:%d: Power off failed\0A\00", [37 x i8] zeroinitializer }, align 32
@s5p_mfc_release._entry_ptr.161 = internal global ptr @s5p_mfc_release._entry.159, section ".printk_index", align 4
@s5p_mfc_release._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.152, ptr @.str.4, i32 971, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s:%d: Shutting down clock\0A\00", [34 x i8] zeroinitializer }, align 32
@s5p_mfc_release._entry_ptr.164 = internal global ptr @s5p_mfc_release._entry.162, section ".printk_index", align 4
@s5p_mfc_release._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.152, ptr @.str.4, i32 983, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_release._entry_ptr.166 = internal global ptr @s5p_mfc_release._entry.165, section ".printk_index", align 4
@s5p_mfc_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.168, ptr @.str.4, i32 1428, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: Removing %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5p_mfc_remove\00", [17 x i8] zeroinitializer }, align 32
@s5p_mfc_remove._entry_ptr = internal global ptr @s5p_mfc_remove._entry, section ".printk_index", align 4
@mfc_drvdata_v5 = internal global { %struct.s5p_mfc_variant, [48 x i8] } { %struct.s5p_mfc_variant { i32 81, i32 2, i32 1, ptr @buf_size_v5, [2 x ptr] [ptr @.str.169, ptr null], [4 x ptr] [ptr @.str.170, ptr @.str.171, ptr null, ptr null], i32 2, i8 1 }, [48 x i8] zeroinitializer }, align 32
@mfc_drvdata_v6 = internal global { %struct.s5p_mfc_variant, [48 x i8] } { %struct.s5p_mfc_variant { i32 97, i32 1, i32 2, ptr @buf_size_v6, [2 x ptr] [ptr @.str.172, ptr @.str.173], [4 x ptr] [ptr @.str.170, ptr null, ptr null, ptr null], i32 1, i8 0 }, [48 x i8] zeroinitializer }, align 32
@mfc_drvdata_v7 = internal global { %struct.s5p_mfc_variant, [48 x i8] } { %struct.s5p_mfc_variant { i32 114, i32 1, i32 4, ptr @buf_size_v7, [2 x ptr] [ptr @.str.174, ptr null], [4 x ptr] [ptr @.str.170, ptr @.str.171, ptr null, ptr null], i32 2, i8 0 }, [48 x i8] zeroinitializer }, align 32
@mfc_drvdata_v8 = internal global { %struct.s5p_mfc_variant, [48 x i8] } { %struct.s5p_mfc_variant { i32 128, i32 1, i32 8, ptr @buf_size_v8, [2 x ptr] [ptr @.str.175, ptr null], [4 x ptr] [ptr @.str.170, ptr null, ptr null, ptr null], i32 1, i8 0 }, [48 x i8] zeroinitializer }, align 32
@mfc_drvdata_v8_5433 = internal global { %struct.s5p_mfc_variant, [48 x i8] } { %struct.s5p_mfc_variant { i32 128, i32 1, i32 8, ptr @buf_size_v8, [2 x ptr] [ptr @.str.175, ptr null], [4 x ptr] [ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr null], i32 3, i8 0 }, [48 x i8] zeroinitializer }, align 32
@mfc_drvdata_v10 = internal global { %struct.s5p_mfc_variant, [48 x i8] } { %struct.s5p_mfc_variant { i32 160, i32 1, i32 32, ptr @buf_size_v10, [2 x ptr] [ptr @.str.179, ptr null], [4 x ptr] zeroinitializer, i32 0, i8 0 }, [48 x i8] zeroinitializer }, align 32
@buf_size_v5 = internal global { %struct.s5p_mfc_buf_size, [20 x i8] } { %struct.s5p_mfc_buf_size { i32 393216, i32 4194304, ptr @mfc_buf_size_v5 }, [20 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"s5p-mfc.fw\00", [21 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mfc\00", [28 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sclk_mfc\00", [23 x i8] zeroinitializer }, align 32
@mfc_buf_size_v5 = internal global { %struct.s5p_mfc_buf_size_v5, [16 x i8] } { %struct.s5p_mfc_buf_size_v5 { i32 614400, i32 10240, i32 131072, i32 8192 }, [16 x i8] zeroinitializer }, align 32
@buf_size_v6 = internal global { %struct.s5p_mfc_buf_size, [20 x i8] } { %struct.s5p_mfc_buf_size { i32 524288, i32 3145728, ptr @mfc_buf_size_v6 }, [20 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s5p-mfc-v6.fw\00", [18 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5p-mfc-v6-v2.fw\00", [47 x i8] zeroinitializer }, align 32
@mfc_buf_size_v6 = internal global { %struct.s5p_mfc_buf_size_v6, [40 x i8] } { %struct.s5p_mfc_buf_size_v6 { i32 28672, i32 2097152, i32 20480, i32 102400, i32 0, i32 12288 }, [40 x i8] zeroinitializer }, align 32
@buf_size_v7 = internal global { %struct.s5p_mfc_buf_size, [20 x i8] } { %struct.s5p_mfc_buf_size { i32 524288, i32 3145728, ptr @mfc_buf_size_v7 }, [20 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s5p-mfc-v7.fw\00", [18 x i8] zeroinitializer }, align 32
@mfc_buf_size_v7 = internal global { %struct.s5p_mfc_buf_size_v6, [40 x i8] } { %struct.s5p_mfc_buf_size_v6 { i32 30720, i32 2097152, i32 20480, i32 102400, i32 0, i32 10240 }, [40 x i8] zeroinitializer }, align 32
@buf_size_v8 = internal global { %struct.s5p_mfc_buf_size, [20 x i8] } { %struct.s5p_mfc_buf_size { i32 524288, i32 3145728, ptr @mfc_buf_size_v8 }, [20 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s5p-mfc-v8.fw\00", [18 x i8] zeroinitializer }, align 32
@mfc_buf_size_v8 = internal global { %struct.s5p_mfc_buf_size_v6, [40 x i8] } { %struct.s5p_mfc_buf_size_v6 { i32 36864, i32 2097152, i32 20480, i32 102400, i32 0, i32 10240 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_xiu\00", [23 x i8] zeroinitializer }, align 32
@buf_size_v10 = internal global { %struct.s5p_mfc_buf_size, [20 x i8] } { %struct.s5p_mfc_buf_size { i32 1048576, i32 3145728, ptr @mfc_buf_size_v10 }, [20 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5p-mfc-v10.fw\00", [17 x i8] zeroinitializer }, align 32
@mfc_buf_size_v10 = internal global { %struct.s5p_mfc_buf_size_v6, [40 x i8] } { %struct.s5p_mfc_buf_size_v6 { i32 30720, i32 2097152, i32 20480, i32 102400, i32 30720, i32 15360 }, [40 x i8] zeroinitializer }, align 32
@s5p_mfc_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.181, ptr @.str.4, i32 1470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s:%d: Error: going to suspend for a second time\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s5p_mfc_suspend\00", [16 x i8] zeroinitializer }, align 32
@s5p_mfc_suspend._entry_ptr = internal global ptr @s5p_mfc_suspend._entry, section ".printk_index", align 4
@s5p_mfc_suspend._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.181, ptr @.str.4, i32 1481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s:%d: Waiting for hardware to finish timed out\0A\00", [45 x i8] zeroinitializer }, align 32
@s5p_mfc_suspend._entry_ptr.184 = internal global ptr @s5p_mfc_suspend._entry.182, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7, i64 8, i64 9, i64 10, i64 12, i64 13, i64 14, i64 15, i64 32]
@__sancov_gen_cov_switch_values.185 = internal global [5 x i64] [i64 3, i64 32, i64 67, i64 124, i64 140]
@__sancov_gen_cov_switch_values.186 = internal global [8 x i64] [i64 6, i64 32, i64 105, i64 106, i64 107, i64 112, i64 113, i64 114]
@__sancov_gen_cov_switch_values.187 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 100]
@___asan_gen_.190 = private unnamed_addr constant [16 x i8] c"mfc_debug_level\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 38, i32 5 }
@___asan_gen_.193 = private unnamed_addr constant [13 x i8] c"mfc_mem_size\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 42, i32 14 }
@___asan_gen_.196 = private unnamed_addr constant [15 x i8] c"s5p_mfc_driver\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1668, i32 31 }
@___asan_gen_.200 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.200, i32 1163, i32 7 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1672, i32 11 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"exynos_mfc_match\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1644, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant [15 x i8] c"s5p_mfc_pm_ops\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1506, i32 32 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1274, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1279, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1280, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1283, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1289, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1299, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1306, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1312, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1318, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1328, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1329, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1331, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1333, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1342, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [13 x i8] c"s5p_mfc_fops\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1061, i32 42 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1354, i32 47 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1361, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1372, i32 47 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1385, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1388, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1393, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1396, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1399, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1416, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 637, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 645, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 666, i32 5 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 726, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 730, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 738, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 746, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 375, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant [10 x i8] c"ev_src_ch\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 394, i32 35 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 418, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 432, i32 4 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 435, i32 4 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 229, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 294, i32 5 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 468, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 607, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 513, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1203, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1229, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1128, i32 59 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1132, i32 59 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1152, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1087, i32 22 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 174, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 179, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 205, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 212, i32 4 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 156, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1050, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1053, i32 3 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 759, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 769, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 783, i32 4 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 798, i32 4 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 811, i32 4 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 827, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 866, i32 3 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 901, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 905, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 916, i32 4 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 930, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 941, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 956, i32 4 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 964, i32 4 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 969, i32 5 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 971, i32 4 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 983, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1428, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant [15 x i8] c"mfc_drvdata_v5\00", align 1
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1523, i32 31 }
@___asan_gen_.655 = private unnamed_addr constant [15 x i8] c"mfc_drvdata_v6\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1548, i32 31 }
@___asan_gen_.658 = private unnamed_addr constant [15 x i8] c"mfc_drvdata_v7\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1577, i32 31 }
@___asan_gen_.661 = private unnamed_addr constant [15 x i8] c"mfc_drvdata_v8\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1601, i32 31 }
@___asan_gen_.664 = private unnamed_addr constant [20 x i8] c"mfc_drvdata_v8_5433\00", align 1
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1611, i32 31 }
@___asan_gen_.667 = private unnamed_addr constant [16 x i8] c"mfc_drvdata_v10\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1636, i32 31 }
@___asan_gen_.670 = private unnamed_addr constant [12 x i8] c"buf_size_v5\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1517, i32 32 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1528, i32 16 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1529, i32 16 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1529, i32 23 }
@___asan_gen_.682 = private unnamed_addr constant [16 x i8] c"mfc_buf_size_v5\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1510, i32 35 }
@___asan_gen_.685 = private unnamed_addr constant [12 x i8] c"buf_size_v6\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1542, i32 32 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1553, i32 20 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1558, i32 20 }
@___asan_gen_.694 = private unnamed_addr constant [16 x i8] c"mfc_buf_size_v6\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1534, i32 35 }
@___asan_gen_.697 = private unnamed_addr constant [12 x i8] c"buf_size_v7\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1571, i32 32 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1582, i32 20 }
@___asan_gen_.703 = private unnamed_addr constant [16 x i8] c"mfc_buf_size_v7\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1563, i32 35 }
@___asan_gen_.706 = private unnamed_addr constant [12 x i8] c"buf_size_v8\00", align 1
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1595, i32 32 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1606, i32 20 }
@___asan_gen_.712 = private unnamed_addr constant [16 x i8] c"mfc_buf_size_v8\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1587, i32 35 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1617, i32 16 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1617, i32 24 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1617, i32 32 }
@___asan_gen_.724 = private unnamed_addr constant [13 x i8] c"buf_size_v10\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1630, i32 32 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1641, i32 20 }
@___asan_gen_.730 = private unnamed_addr constant [17 x i8] c"mfc_buf_size_v10\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1621, i32 35 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1470, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.745 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.746 = private constant [44 x i8] c"../drivers/media/platform/s5p-mfc/s5p_mfc.c\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.746, i32 1481, i32 4 }
@llvm.compiler.used = appending global [256 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_debug299, ptr @__UNIQUE_ID_debugtype298, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__UNIQUE_ID_mem301, ptr @__UNIQUE_ID_memtype300, ptr @__exitcall_s5p_mfc_driver_exit, ptr @__initcall__kmod_s5p_mfc__305_1678_s5p_mfc_driver_init6, ptr @__param_debug, ptr @__param_mem, ptr @s5p_mfc_configure_2port_memory._entry, ptr @s5p_mfc_configure_2port_memory._entry_ptr, ptr @s5p_mfc_configure_common_memory._entry, ptr @s5p_mfc_configure_common_memory._entry.99, ptr @s5p_mfc_configure_common_memory._entry_ptr, ptr @s5p_mfc_configure_common_memory._entry_ptr.102, ptr @s5p_mfc_driver_exit, ptr @s5p_mfc_handle_error._entry, ptr @s5p_mfc_handle_error._entry_ptr, ptr @s5p_mfc_handle_frame._entry, ptr @s5p_mfc_handle_frame._entry.78, ptr @s5p_mfc_handle_frame._entry.81, ptr @s5p_mfc_handle_frame._entry.84, ptr @s5p_mfc_handle_frame._entry_ptr, ptr @s5p_mfc_handle_frame._entry_ptr.80, ptr @s5p_mfc_handle_frame._entry_ptr.83, ptr @s5p_mfc_handle_frame._entry_ptr.86, ptr @s5p_mfc_handle_frame_all_extracted._entry, ptr @s5p_mfc_handle_frame_all_extracted._entry_ptr, ptr @s5p_mfc_handle_frame_copy_time._entry, ptr @s5p_mfc_handle_frame_copy_time._entry_ptr, ptr @s5p_mfc_handle_seq_done._entry, ptr @s5p_mfc_handle_seq_done._entry_ptr, ptr @s5p_mfc_handle_stream_complete._entry, ptr @s5p_mfc_handle_stream_complete._entry_ptr, ptr @s5p_mfc_irq._entry, ptr @s5p_mfc_irq._entry.58, ptr @s5p_mfc_irq._entry.61, ptr @s5p_mfc_irq._entry.64, ptr @s5p_mfc_irq._entry.67, ptr @s5p_mfc_irq._entry.70, ptr @s5p_mfc_irq._entry.73, ptr @s5p_mfc_irq._entry_ptr, ptr @s5p_mfc_irq._entry_ptr.60, ptr @s5p_mfc_irq._entry_ptr.63, ptr @s5p_mfc_irq._entry_ptr.66, ptr @s5p_mfc_irq._entry_ptr.69, ptr @s5p_mfc_irq._entry_ptr.72, ptr @s5p_mfc_irq._entry_ptr.75, ptr @s5p_mfc_mmap._entry, ptr @s5p_mfc_mmap._entry.123, ptr @s5p_mfc_mmap._entry_ptr, ptr @s5p_mfc_mmap._entry_ptr.125, ptr @s5p_mfc_open._entry, ptr @s5p_mfc_open._entry.128, ptr @s5p_mfc_open._entry.131, ptr @s5p_mfc_open._entry.134, ptr @s5p_mfc_open._entry.136, ptr @s5p_mfc_open._entry.139, ptr @s5p_mfc_open._entry.142, ptr @s5p_mfc_open._entry.145, ptr @s5p_mfc_open._entry.147, ptr @s5p_mfc_open._entry.150, ptr @s5p_mfc_open._entry_ptr, ptr @s5p_mfc_open._entry_ptr.130, ptr @s5p_mfc_open._entry_ptr.133, ptr @s5p_mfc_open._entry_ptr.135, ptr @s5p_mfc_open._entry_ptr.138, ptr @s5p_mfc_open._entry_ptr.141, ptr @s5p_mfc_open._entry_ptr.144, ptr @s5p_mfc_open._entry_ptr.146, ptr @s5p_mfc_open._entry_ptr.149, ptr @s5p_mfc_open._entry_ptr.151, ptr @s5p_mfc_probe._entry, ptr @s5p_mfc_probe._entry.10, ptr @s5p_mfc_probe._entry.15, ptr @s5p_mfc_probe._entry.18, ptr @s5p_mfc_probe._entry.21, ptr @s5p_mfc_probe._entry.24, ptr @s5p_mfc_probe._entry.35, ptr @s5p_mfc_probe._entry.40, ptr @s5p_mfc_probe._entry.43, ptr @s5p_mfc_probe._entry.46, ptr @s5p_mfc_probe._entry.49, ptr @s5p_mfc_probe._entry.51, ptr @s5p_mfc_probe._entry_ptr, ptr @s5p_mfc_probe._entry_ptr.14, ptr @s5p_mfc_probe._entry_ptr.17, ptr @s5p_mfc_probe._entry_ptr.20, ptr @s5p_mfc_probe._entry_ptr.23, ptr @s5p_mfc_probe._entry_ptr.26, ptr @s5p_mfc_probe._entry_ptr.37, ptr @s5p_mfc_probe._entry_ptr.41, ptr @s5p_mfc_probe._entry_ptr.45, ptr @s5p_mfc_probe._entry_ptr.48, ptr @s5p_mfc_probe._entry_ptr.50, ptr @s5p_mfc_probe._entry_ptr.53, ptr @s5p_mfc_release._entry, ptr @s5p_mfc_release._entry.153, ptr @s5p_mfc_release._entry.156, ptr @s5p_mfc_release._entry.159, ptr @s5p_mfc_release._entry.162, ptr @s5p_mfc_release._entry.165, ptr @s5p_mfc_release._entry_ptr, ptr @s5p_mfc_release._entry_ptr.155, ptr @s5p_mfc_release._entry_ptr.158, ptr @s5p_mfc_release._entry_ptr.161, ptr @s5p_mfc_release._entry_ptr.164, ptr @s5p_mfc_release._entry_ptr.166, ptr @s5p_mfc_remove._entry, ptr @s5p_mfc_remove._entry_ptr, ptr @s5p_mfc_suspend._entry, ptr @s5p_mfc_suspend._entry.182, ptr @s5p_mfc_suspend._entry_ptr, ptr @s5p_mfc_suspend._entry_ptr.184, ptr @s5p_mfc_watchdog._entry, ptr @s5p_mfc_watchdog._entry_ptr, ptr @s5p_mfc_watchdog_worker._entry, ptr @s5p_mfc_watchdog_worker._entry.110, ptr @s5p_mfc_watchdog_worker._entry.113, ptr @s5p_mfc_watchdog_worker._entry.116, ptr @s5p_mfc_watchdog_worker._entry_ptr, ptr @s5p_mfc_watchdog_worker._entry_ptr.112, ptr @s5p_mfc_watchdog_worker._entry_ptr.115, ptr @s5p_mfc_watchdog_worker._entry_ptr.118, ptr @mfc_debug_level, ptr @mfc_mem_size, ptr @s5p_mfc_driver, ptr @.str, ptr @.str.1, ptr @exynos_mfc_match, ptr @s5p_mfc_pm_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @s5p_mfc_probe.__key, ptr @.str.6, ptr @s5p_mfc_probe.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @s5p_mfc_probe.__key.27, ptr @.str.28, ptr @s5p_mfc_probe.__key.29, ptr @.str.30, ptr @s5p_mfc_probe.__key.31, ptr @.str.32, ptr @s5p_mfc_probe.__key.33, ptr @.str.34, ptr @.str.36, ptr @s5p_mfc_fops, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @s5p_mfc_handle_frame.ev_src_ch, ptr @.str.79, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.111, ptr @.str.114, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @s5p_mfc_open.__key, ptr @.str.127, ptr @.str.129, ptr @.str.132, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.148, ptr @.str.152, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.167, ptr @.str.168, ptr @mfc_drvdata_v5, ptr @mfc_drvdata_v6, ptr @mfc_drvdata_v7, ptr @mfc_drvdata_v8, ptr @mfc_drvdata_v8_5433, ptr @mfc_drvdata_v10, ptr @buf_size_v5, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @mfc_buf_size_v5, ptr @buf_size_v6, ptr @.str.172, ptr @.str.173, ptr @mfc_buf_size_v6, ptr @buf_size_v7, ptr @.str.174, ptr @mfc_buf_size_v7, ptr @buf_size_v8, ptr @.str.175, ptr @mfc_buf_size_v8, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @buf_size_v10, ptr @.str.179, ptr @mfc_buf_size_v10, ptr @.str.180, ptr @.str.181, ptr @.str.183], section "llvm.metadata"
@0 = internal global [186 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc_debug_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc_mem_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_mfc_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe.__key.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_probe._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_irq._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_irq._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_irq._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_irq._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_irq._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_irq._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_handle_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_handle_frame.ev_src_ch to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_handle_frame._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_handle_frame._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_handle_frame._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_handle_frame_all_extracted._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_handle_frame_copy_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_handle_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_handle_stream_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_handle_seq_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_configure_common_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_configure_common_memory._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_configure_2port_memory._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_watchdog_worker._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_watchdog_worker._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_watchdog_worker._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_watchdog_worker._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_watchdog._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_mmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_mmap._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_open._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_release._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_release._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_release._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_release._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_release._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc_drvdata_v5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc_drvdata_v6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc_drvdata_v7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc_drvdata_v8 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc_drvdata_v8_5433 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc_drvdata_v10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buf_size_v5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc_buf_size_v5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buf_size_v6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc_buf_size_v6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buf_size_v7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc_buf_size_v7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buf_size_v8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc_buf_size_v8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buf_size_v10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfc_buf_size_v10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5p_mfc_suspend._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_work_bit(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %condlock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %condlock) #7
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  %ctx_work_bits = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 28
  %rem.i = and i32 %3, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %3, 5
  %add.ptr.i = getelementptr i32, ptr %ctx_work_bits, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %5, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %condlock) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_work_bit(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %condlock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %condlock) #7
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  %ctx_work_bits = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 28
  %rem.i = and i32 %3, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %3, 5
  %add.ptr.i = getelementptr i32, ptr %ctx_work_bits, i32 %div2.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %5
  store i32 %or.i, ptr %add.ptr.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %condlock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clear_work_bit_irqsave(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %condlock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %condlock) #7
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  %ctx_work_bits = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 28
  %rem.i = and i32 %3, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %3, 5
  %add.ptr.i = getelementptr i32, ptr %ctx_work_bits, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %5, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %condlock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_work_bit_irqsave(ptr nocapture noundef readonly %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %condlock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 13
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %condlock) #7
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %2 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num, align 4
  %ctx_work_bits = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 28
  %rem.i = and i32 %3, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %3, 5
  %add.ptr.i = getelementptr i32, ptr %ctx_work_bits, i32 %div2.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %5
  store i32 %or.i, ptr %add.ptr.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %condlock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @s5p_mfc_get_new_ctx(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %condlock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 13
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %condlock) #7
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr_ctx, align 4
  %ctx_work_bits13 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %dev, i32 0, i32 28
  br label %do.body5

do.body5:                                         ; preds = %do.cond12.do.body5_crit_edge, %entry
  %ctx.0 = phi i32 [ %1, %entry ], [ %rem, %do.cond12.do.body5_crit_edge ]
  %add = add i32 %ctx.0, 1
  %rem = srem i32 %add, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %1)
  %cmp7 = icmp eq i32 %rem, %1
  br i1 %cmp7, label %if.then, label %do.cond12

if.then:                                          ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %div3.i = lshr i32 %1, 5
  %arrayidx.i = getelementptr i32, ptr %ctx_work_bits13, i32 %div3.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %1, 31
  %4 = shl nuw i32 1, %and.i
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool.not, i32 -11, i32 %1
  br label %do.end16

do.cond12:                                        ; preds = %do.body5
  %div3.i27 = lshr i32 %rem, 5
  %arrayidx.i28 = getelementptr i32, ptr %ctx_work_bits13, i32 %div3.i27
  %6 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i28, align 4
  %and.i29 = and i32 %rem, 31
  %8 = shl nuw i32 1, %and.i29
  %9 = and i32 %7, %8
  %tobool15.not = icmp eq i32 %9, 0
  br i1 %tobool15.not, label %do.cond12.do.body5_crit_edge, label %do.cond12.do.end16_crit_edge

do.cond12.do.end16_crit_edge:                     ; preds = %do.cond12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.cond12.do.body5_crit_edge:                     ; preds = %do.cond12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5

do.end16:                                         ; preds = %do.cond12.do.end16_crit_edge, %if.then
  %ctx.1 = phi i32 [ %spec.select, %if.then ], [ %rem, %do.cond12.do.end16_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %condlock, i32 noundef %call2) #7
  ret i32 %ctx.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @s5p_mfc_cleanup_queue(ptr noundef %lh, ptr nocapture readnone %vq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %lh, align 4
  %cmp.i.not16 = icmp eq ptr %1, %lh
  br i1 %cmp.i.not16, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %22, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -4
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  %num_planes13 = getelementptr inbounds %struct.vb2_buffer, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %num_planes13 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_planes13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp14.not = icmp eq i32 %6, 0
  br i1 %cmp14.not, label %while.body.for.end_crit_edge, label %while.body.vb2_set_plane_payload.exit_crit_edge

while.body.vb2_set_plane_payload.exit_crit_edge:  ; preds = %while.body
  br label %vb2_set_plane_payload.exit

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

vb2_set_plane_payload.exit:                       ; preds = %vb2_set_plane_payload.exit.vb2_set_plane_payload.exit_crit_edge, %while.body.vb2_set_plane_payload.exit_crit_edge
  %7 = phi ptr [ %10, %vb2_set_plane_payload.exit.vb2_set_plane_payload.exit_crit_edge ], [ %4, %while.body.vb2_set_plane_payload.exit_crit_edge ]
  %i.015 = phi i32 [ %inc, %vb2_set_plane_payload.exit.vb2_set_plane_payload.exit_crit_edge ], [ 0, %while.body.vb2_set_plane_payload.exit_crit_edge ]
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %7, i32 0, i32 10, i32 %i.015, i32 3
  %8 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bytesused.i, align 4
  %inc = add nuw i32 %i.015, 1
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %num_planes = getelementptr inbounds %struct.vb2_buffer, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_planes, align 8
  %cmp = icmp ult i32 %inc, %12
  br i1 %cmp, label %vb2_set_plane_payload.exit.vb2_set_plane_payload.exit_crit_edge, label %vb2_set_plane_payload.exit.for.end_crit_edge

vb2_set_plane_payload.exit.for.end_crit_edge:     ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

vb2_set_plane_payload.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_set_plane_payload.exit

for.end:                                          ; preds = %vb2_set_plane_payload.exit.for.end_crit_edge, %while.body.for.end_crit_edge
  %.lcssa = phi ptr [ %4, %while.body.for.end_crit_edge ], [ %10, %vb2_set_plane_payload.exit.for.end_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef %.lcssa, i32 noundef 6) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %21 = ptrtoint ptr %lh to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %lh, align 4
  %cmp.i.not = icmp eq ptr %22, %lh
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @s5p_mfc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @s5p_mfc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %bank2_dma_addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_mfc_probe.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_mfc_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !388

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s5p_mfc_probe.__UNIQUE_ID_ddebug302, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef 1032, i32 noundef 3520) #7
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %do.body8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body8:                                         ; preds = %do.end
  %irqlock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.6, ptr noundef nonnull @s5p_mfc_probe.__key, i16 noundef signext 3) #7
  %condlock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %condlock, ptr noundef nonnull @.str.8, ptr noundef nonnull @s5p_mfc_probe.__key.7, i16 noundef signext 3) #7
  %plat_dev = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %plat_dev, align 4
  %tobool17.not = icmp eq ptr %pdev, null
  br i1 %tobool17.not, label %do.end22, label %if.end27

do.end22:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.3, i32 noundef 1283) #10
  br label %cleanup

if.end27:                                         ; preds = %do.body8
  %call29 = tail call ptr @of_device_get_match_data(ptr noundef %dev3) #7
  %variant = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 10
  %1 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call29, ptr %variant, align 4
  %tobool31.not = icmp eq ptr %call29, null
  br i1 %tobool31.not, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end37:                                         ; preds = %if.end27
  %call38 = tail call ptr @devm_platform_ioremap_resource(ptr noundef nonnull %pdev, i32 noundef 0) #7
  %regs_base = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %regs_base to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call38, ptr %regs_base, align 4
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call38 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end37
  %call45 = tail call ptr @platform_get_resource(ptr noundef nonnull %pdev, i32 noundef 1024, i32 noundef 0) #7
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %do.end50, label %if.end52

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end52:                                         ; preds = %if.end44
  %4 = ptrtoint ptr %call45 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call45, align 4
  %irq = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %irq, align 4
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %call.i334 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev3, i32 noundef %5, ptr noundef nonnull @s5p_mfc_irq, ptr noundef null, i32 noundef 0, ptr noundef %8, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i334)
  %tobool56.not = icmp eq i32 %call.i334, 0
  br i1 %tobool56.not, label %if.end62, label %do.end60

do.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.19, i32 noundef %call.i334) #10
  br label %cleanup

if.end62:                                         ; preds = %if.end52
  %9 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %variant, align 4
  %port_num.i = getelementptr inbounds %struct.s5p_mfc_variant, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp.i335 = icmp eq i32 %12, 2
  %13 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %plat_dev, align 4
  %dev1.i8.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  br i1 %cmp.i335, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end62
  %15 = load ptr, ptr @mfc_mem_size, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i336 = tail call i64 @memparse(ptr noundef nonnull %15, ptr noundef null) #7
  %conv.i.i = trunc i64 %call.i.i336 to i32
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %mem_size.0.i.i = phi i32 [ %conv.i.i, %if.then.i.i ], [ 8388608, %if.then.i.if.end.i.i_crit_edge ]
  %shr.i.i = lshr i32 %mem_size.0.i.i, 12
  %call2.i.i = tail call ptr @bitmap_zalloc(i32 noundef %shr.i.i, i32 noundef 3264) #7
  %mem_bitmap.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 22
  %16 = ptrtoint ptr %mem_bitmap.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call2.i.i, ptr %mem_bitmap.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool4.not.i.i, label %if.end.i.i.do.end67_crit_edge, label %if.end6.i.i

if.end.i.i.do.end67_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

if.end6.i.i:                                      ; preds = %if.end.i.i
  %mem_base.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 21
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev1.i8.i, i32 noundef %mem_size.0.i.i, ptr noundef %mem_base.i.i, i32 noundef 3264, i32 noundef 0) #7
  %mem_virt.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 23
  %17 = ptrtoint ptr %mem_virt.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i.i, ptr %mem_virt.i.i, align 4
  %tobool9.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %if.end12.i.i

if.then10.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %mem_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mem_bitmap.i.i, align 4
  tail call void @bitmap_free(ptr noundef %19) #7
  %div67.i.i = lshr i32 %mem_size.0.i.i, 20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i8.i, ptr noundef nonnull @.str.97, i32 noundef %div67.i.i) #10
  br label %do.end67

if.end12.i.i:                                     ; preds = %if.end6.i.i
  %mem_size13.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 20
  %20 = ptrtoint ptr %mem_size13.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mem_size.0.i.i, ptr %mem_size13.i.i, align 4
  %21 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mem_base.i.i, align 4
  %dma_base.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 24
  %23 = ptrtoint ptr %dma_base.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %dma_base.i.i, align 4
  %arrayidx17.i.i = getelementptr %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 24, i32 1
  %24 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %arrayidx17.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.i = icmp eq i32 %22, 0
  br i1 %cmp.i.i, label %if.then20.i.i, label %if.end12.i.i.s5p_mfc_configure_dma_memory.exit.thread357_crit_edge

if.end12.i.i.s5p_mfc_configure_dma_memory.exit.thread357_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5p_mfc_configure_dma_memory.exit.thread357

if.then20.i.i:                                    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %mem_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mem_bitmap.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_storeN_noabort(i32 %27, i32 4)
  store i32 -1, ptr %26, align 1
  %28 = ptrtoint ptr %dma_base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_base.i.i, align 4
  %add.i.i = add i32 %29, 131072
  store i32 %add.i.i, ptr %dma_base.i.i, align 4
  %30 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx17.i.i, align 4
  %add27.i.i = add i32 %31, 131072
  store i32 %add27.i.i, ptr %arrayidx17.i.i, align 4
  br label %s5p_mfc_configure_dma_memory.exit.thread357

s5p_mfc_configure_dma_memory.exit.thread357:      ; preds = %if.then20.i.i, %if.end12.i.i.s5p_mfc_configure_dma_memory.exit.thread357_crit_edge
  %call29.i.i = tail call i32 @s5p_mfc_alloc_firmware(ptr noundef nonnull %call.i) #7
  %mem_dev.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 4
  %arrayidx30.i.i = getelementptr %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev1.i8.i, ptr %arrayidx30.i.i, align 4
  %33 = ptrtoint ptr %mem_dev.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev1.i8.i, ptr %mem_dev.i.i, align 4
  %call33.i.i = tail call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %dev1.i8.i, i32 noundef -1) #7
  %div3768.i.i = lshr i32 %mem_size.0.i.i, 20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i8.i, ptr noundef nonnull @.str.100, i32 noundef %div3768.i.i) #10
  br label %if.end69

if.else.i:                                        ; preds = %if.end62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bank2_dma_addr.i.i) #7
  %34 = ptrtoint ptr %bank2_dma_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %bank2_dma_addr.i.i, align 4, !annotation !389
  %call.i9.i = tail call fastcc ptr @s5p_mfc_alloc_memdev(ptr noundef %dev1.i8.i, ptr noundef nonnull @.str.103, i32 noundef 0) #7
  %mem_dev.i10.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 4
  %35 = ptrtoint ptr %mem_dev.i10.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call.i9.i, ptr %mem_dev.i10.i, align 4
  %tobool.not.i11.i = icmp eq ptr %call.i9.i, null
  br i1 %tobool.not.i11.i, label %if.else.i.s5p_mfc_configure_dma_memory.exit.thread361_crit_edge, label %if.end.i13.i

if.else.i.s5p_mfc_configure_dma_memory.exit.thread361_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5p_mfc_configure_dma_memory.exit.thread361

if.end.i13.i:                                     ; preds = %if.else.i
  %call4.i.i = tail call fastcc ptr @s5p_mfc_alloc_memdev(ptr noundef %dev1.i8.i, ptr noundef nonnull @.str.104, i32 noundef 1) #7
  %arrayidx6.i.i = getelementptr %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call4.i.i, ptr %arrayidx6.i.i, align 4
  %tobool9.not.i12.i = icmp eq ptr %call4.i.i, null
  br i1 %tobool9.not.i12.i, label %if.then10.i14.i, label %if.end13.i.i

if.then10.i14.i:                                  ; preds = %if.end.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %mem_dev.i10.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mem_dev.i10.i, align 4
  tail call void @device_unregister(ptr noundef %38) #7
  br label %s5p_mfc_configure_dma_memory.exit.thread361

if.end13.i.i:                                     ; preds = %if.end.i13.i
  %call14.i.i = tail call i32 @s5p_mfc_alloc_firmware(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end21.i.i, label %s5p_mfc_configure_dma_memory.exit

if.end21.i.i:                                     ; preds = %if.end13.i.i
  %dma.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 19, i32 2
  %39 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma.i.i, align 4
  %dma_base.i15.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 24
  %41 = ptrtoint ptr %dma_base.i15.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %dma_base.i15.i, align 4
  %42 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx6.i.i, align 4
  %call.i.i16.i = call ptr @dma_alloc_attrs(ptr noundef %43, i32 noundef 131072, ptr noundef nonnull %bank2_dma_addr.i.i, i32 noundef 3264, i32 noundef 0) #7
  %tobool26.not.i.i = icmp eq ptr %call.i.i16.i, null
  br i1 %tobool26.not.i.i, label %do.end.i.i, label %s5p_mfc_configure_dma_memory.exit.thread364

do.end.i.i:                                       ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call29.i17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.106, i32 noundef 1152) #10
  %call32.i.i = call i32 @s5p_mfc_release_firmware(ptr noundef nonnull %call.i) #7
  %44 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx6.i.i, align 4
  call void @device_unregister(ptr noundef %45) #7
  %46 = ptrtoint ptr %mem_dev.i10.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mem_dev.i10.i, align 4
  call void @device_unregister(ptr noundef %47) #7
  br label %s5p_mfc_configure_dma_memory.exit.thread361

s5p_mfc_configure_dma_memory.exit.thread364:      ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %bank2_dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bank2_dma_addr.i.i, align 4
  %sub.i.i = add i32 %49, -131072
  %arrayidx39.i.i = getelementptr %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 24, i32 1
  %50 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %sub.i.i, ptr %arrayidx39.i.i, align 4
  %51 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx6.i.i, align 4
  call void @dma_free_attrs(ptr noundef %52, i32 noundef 131072, ptr noundef nonnull %call.i.i16.i, i32 noundef %49, i32 noundef 0) #7
  %53 = ptrtoint ptr %mem_dev.i10.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mem_dev.i10.i, align 4
  %call44.i.i = call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %54, i32 noundef -1) #7
  %55 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx6.i.i, align 4
  %call47.i.i = call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %56, i32 noundef -1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank2_dma_addr.i.i) #7
  br label %if.end69

s5p_mfc_configure_dma_memory.exit.thread361:      ; preds = %do.end.i.i, %if.then10.i14.i, %if.else.i.s5p_mfc_configure_dma_memory.exit.thread361_crit_edge
  %retval.0.i18.i.ph = phi i32 [ -19, %if.else.i.s5p_mfc_configure_dma_memory.exit.thread361_crit_edge ], [ -19, %if.then10.i14.i ], [ -12, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank2_dma_addr.i.i) #7
  br label %do.end67

s5p_mfc_configure_dma_memory.exit:                ; preds = %if.end13.i.i
  %57 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx6.i.i, align 4
  tail call void @device_unregister(ptr noundef %58) #7
  %59 = ptrtoint ptr %mem_dev.i10.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mem_dev.i10.i, align 4
  tail call void @device_unregister(ptr noundef %60) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank2_dma_addr.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %cmp = icmp slt i32 %call14.i.i, 0
  br i1 %cmp, label %s5p_mfc_configure_dma_memory.exit.do.end67_crit_edge, label %s5p_mfc_configure_dma_memory.exit.if.end69_crit_edge

s5p_mfc_configure_dma_memory.exit.if.end69_crit_edge: ; preds = %s5p_mfc_configure_dma_memory.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

s5p_mfc_configure_dma_memory.exit.do.end67_crit_edge: ; preds = %s5p_mfc_configure_dma_memory.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

do.end67:                                         ; preds = %s5p_mfc_configure_dma_memory.exit.do.end67_crit_edge, %s5p_mfc_configure_dma_memory.exit.thread361, %if.then10.i.i, %if.end.i.i.do.end67_crit_edge
  %retval.0.i337356 = phi i32 [ %call14.i.i, %s5p_mfc_configure_dma_memory.exit.do.end67_crit_edge ], [ %retval.0.i18.i.ph, %s5p_mfc_configure_dma_memory.exit.thread361 ], [ -12, %if.then10.i.i ], [ -12, %if.end.i.i.do.end67_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.22) #10
  br label %cleanup

if.end69:                                         ; preds = %s5p_mfc_configure_dma_memory.exit.if.end69_crit_edge, %s5p_mfc_configure_dma_memory.exit.thread364, %s5p_mfc_configure_dma_memory.exit.thread357
  %call70 = call i32 @s5p_mfc_init_pm(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %do.end75, label %if.end77

do.end75:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.25) #10
  br label %err_dma

if.end77:                                         ; preds = %if.end69
  %call78 = call i32 @s5p_mfc_load_firmware(ptr noundef nonnull %call.i) #7
  %mfc_mutex = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 14
  call void @__mutex_init(ptr noundef %mfc_mutex, ptr noundef nonnull @.str.28, ptr noundef nonnull @s5p_mfc_probe.__key.27) #7
  %queue = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 18
  call void @__init_waitqueue_head(ptr noundef %queue, ptr noundef nonnull @.str.30, ptr noundef nonnull @s5p_mfc_probe.__key.29) #7
  %hw_lock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 25
  %61 = ptrtoint ptr %hw_lock to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %hw_lock, align 4
  %watchdog_work = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 32
  call void @__init_work(ptr noundef %watchdog_work, i32 noundef 0) #7
  %62 = ptrtoint ptr %watchdog_work to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -64, ptr %watchdog_work, align 4
  %lockdep_map = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 32, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.32, ptr noundef nonnull @s5p_mfc_probe.__key.31, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry89 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 32, i32 1
  %63 = ptrtoint ptr %entry89 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %entry89, ptr %entry89, align 4
  %prev.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 32, i32 1, i32 1
  %64 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %entry89, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 32, i32 2
  %65 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @s5p_mfc_watchdog_worker, ptr %func, align 4
  %watchdog_cnt = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 29
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %watchdog_cnt, i32 noundef 4) #7
  %66 = ptrtoint ptr %watchdog_cnt to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile i32 0, ptr %watchdog_cnt, align 4
  %watchdog_timer = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 30
  call void @init_timer_key(ptr noundef %watchdog_timer, ptr noundef nonnull @s5p_mfc_watchdog, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef nonnull @s5p_mfc_probe.__key.33) #7
  %call97 = call i32 @v4l2_device_register(ptr noundef %dev3, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.end77.err_v4l2_dev_reg_crit_edge

if.end77.err_v4l2_dev_reg_crit_edge:              ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_v4l2_dev_reg

if.end100:                                        ; preds = %if.end77
  %call101 = call ptr @video_device_alloc() #7
  %tobool102.not = icmp eq ptr %call101, null
  br i1 %tobool102.not, label %do.end106, label %if.end111

do.end106:                                        ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  %name109 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name109) #10
  br label %err_dec_alloc

if.end111:                                        ; preds = %if.end100
  %fops = getelementptr inbounds %struct.video_device, ptr %call101, i32 0, i32 3
  %67 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @s5p_mfc_fops, ptr %fops, align 4
  %call112 = call ptr @get_dec_v4l2_ioctl_ops() #7
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %call101, i32 0, i32 24
  %68 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call112, ptr %ioctl_ops, align 4
  %release = getelementptr inbounds %struct.video_device, ptr %call101, i32 0, i32 23
  %69 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @video_device_release, ptr %release, align 8
  %lock = getelementptr inbounds %struct.video_device, ptr %call101, i32 0, i32 26
  %70 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %mfc_mutex, ptr %lock, align 8
  %v4l2_dev115 = getelementptr inbounds %struct.video_device, ptr %call101, i32 0, i32 7
  %71 = ptrtoint ptr %v4l2_dev115 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i, ptr %v4l2_dev115, align 4
  %vfl_dir = getelementptr inbounds %struct.video_device, ptr %call101, i32 0, i32 14
  %72 = ptrtoint ptr %vfl_dir to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 2, ptr %vfl_dir, align 4
  %device_caps = getelementptr inbounds %struct.video_device, ptr %call101, i32 0, i32 4
  %73 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 67125248, ptr %device_caps, align 8
  %flags = getelementptr inbounds %struct.video_device, ptr %call101, i32 0, i32 17
  call void @_set_bit(i32 noundef 2, ptr noundef %flags) #7
  %name116 = getelementptr inbounds %struct.video_device, ptr %call101, i32 0, i32 12
  %74 = call ptr @memcpy(ptr %name116, ptr @.str.39, i32 12)
  %vfd_dec = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 1
  %75 = ptrtoint ptr %vfd_dec to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call101, ptr %vfd_dec, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call101, i32 0, i32 5, i32 8
  %76 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call119 = call ptr @video_device_alloc() #7
  %tobool120.not = icmp eq ptr %call119, null
  br i1 %tobool120.not, label %do.end124, label %if.end130

do.end124:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %name127 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name127) #10
  br label %err_enc_alloc

if.end130:                                        ; preds = %if.end111
  %fops131 = getelementptr inbounds %struct.video_device, ptr %call119, i32 0, i32 3
  %77 = ptrtoint ptr %fops131 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @s5p_mfc_fops, ptr %fops131, align 4
  %call132 = call ptr @get_enc_v4l2_ioctl_ops() #7
  %ioctl_ops133 = getelementptr inbounds %struct.video_device, ptr %call119, i32 0, i32 24
  %78 = ptrtoint ptr %ioctl_ops133 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call132, ptr %ioctl_ops133, align 4
  %release134 = getelementptr inbounds %struct.video_device, ptr %call119, i32 0, i32 23
  %79 = ptrtoint ptr %release134 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @video_device_release, ptr %release134, align 8
  %lock136 = getelementptr inbounds %struct.video_device, ptr %call119, i32 0, i32 26
  %80 = ptrtoint ptr %lock136 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %mfc_mutex, ptr %lock136, align 8
  %v4l2_dev138 = getelementptr inbounds %struct.video_device, ptr %call119, i32 0, i32 7
  %81 = ptrtoint ptr %v4l2_dev138 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i, ptr %v4l2_dev138, align 4
  %vfl_dir139 = getelementptr inbounds %struct.video_device, ptr %call119, i32 0, i32 14
  %82 = ptrtoint ptr %vfl_dir139 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 2, ptr %vfl_dir139, align 4
  %device_caps140 = getelementptr inbounds %struct.video_device, ptr %call119, i32 0, i32 4
  %83 = ptrtoint ptr %device_caps140 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 67125248, ptr %device_caps140, align 8
  %name141 = getelementptr inbounds %struct.video_device, ptr %call119, i32 0, i32 12
  %84 = call ptr @memcpy(ptr %name141, ptr @.str.42, i32 12)
  %vfd_enc = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 2
  %85 = ptrtoint ptr %vfd_enc to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call119, ptr %vfd_enc, align 4
  %driver_data.i.i338 = getelementptr inbounds %struct.video_device, ptr %call119, i32 0, i32 5, i32 8
  %86 = ptrtoint ptr %driver_data.i.i338 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %call.i, ptr %driver_data.i.i338, align 4
  %driver_data.i.i339 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %87 = ptrtoint ptr %driver_data.i.i339 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call.i, ptr %driver_data.i.i339, align 4
  call void @s5p_mfc_init_hw_ops(ptr noundef nonnull %call.i) #7
  call void @s5p_mfc_init_hw_cmds(ptr noundef nonnull %call.i) #7
  call void @s5p_mfc_init_regs(ptr noundef nonnull %call.i) #7
  %88 = ptrtoint ptr %vfd_dec to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vfd_dec, align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fops.i, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %call.i340 = call i32 @__video_register_device(ptr noundef %89, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %93) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i340)
  %tobool146.not = icmp eq i32 %call.i340, 0
  %name162 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  br i1 %tobool146.not, label %do.end159, label %do.end150

do.end150:                                        ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #9
  %call155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name162) #10
  br label %err_dec_reg

do.end159:                                        ; preds = %if.end130
  %94 = ptrtoint ptr %vfd_dec to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %vfd_dec, align 4
  %num = getelementptr inbounds %struct.video_device, ptr %95, i32 0, i32 16
  %96 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %num, align 4
  %conv = zext i16 %97 to i32
  %call165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name162, i32 noundef %conv) #10
  %98 = ptrtoint ptr %vfd_enc to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %vfd_enc, align 4
  %fops.i341 = getelementptr inbounds %struct.video_device, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %fops.i341 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %fops.i341, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %101, align 4
  %call.i342 = call i32 @__video_register_device(ptr noundef %99, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %103) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i342)
  %tobool168.not = icmp eq i32 %call.i342, 0
  br i1 %tobool168.not, label %do.end181, label %do.end172

do.end172:                                        ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #9
  %call177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name162) #10
  %104 = ptrtoint ptr %vfd_dec to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %vfd_dec, align 4
  call void @video_unregister_device(ptr noundef %105) #7
  br label %err_dec_reg

do.end181:                                        ; preds = %do.end159
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %vfd_enc to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %vfd_enc, align 4
  %num187 = getelementptr inbounds %struct.video_device, ptr %107, i32 0, i32 16
  %108 = ptrtoint ptr %num187 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %num187, align 4
  %conv188 = zext i16 %109 to i32
  %call189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name162, i32 noundef %conv188) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_mfc_probe.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_mfc_probe, %if.then202)) #7
          to label %cleanup [label %if.then202], !srcloc !388

if.then202:                                       ; preds = %do.end181
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s5p_mfc_probe.__UNIQUE_ID_ddebug303, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.3) #7
  br label %cleanup

err_dec_reg:                                      ; preds = %do.end172, %do.end150
  %ret.0 = phi i32 [ %call.i340, %do.end150 ], [ %call.i342, %do.end172 ]
  %110 = ptrtoint ptr %vfd_enc to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %vfd_enc, align 4
  call void @video_device_release(ptr noundef %111) #7
  br label %err_enc_alloc

err_enc_alloc:                                    ; preds = %err_dec_reg, %do.end124
  %ret.1 = phi i32 [ %ret.0, %err_dec_reg ], [ -12, %do.end124 ]
  %112 = ptrtoint ptr %vfd_dec to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %vfd_dec, align 4
  call void @video_device_release(ptr noundef %113) #7
  br label %err_dec_alloc

err_dec_alloc:                                    ; preds = %err_enc_alloc, %do.end106
  %ret.2 = phi i32 [ %ret.1, %err_enc_alloc ], [ -12, %do.end106 ]
  call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #7
  br label %err_v4l2_dev_reg

err_v4l2_dev_reg:                                 ; preds = %err_dec_alloc, %if.end77.err_v4l2_dev_reg_crit_edge
  %ret.3 = phi i32 [ %call97, %if.end77.err_v4l2_dev_reg_crit_edge ], [ %ret.2, %err_dec_alloc ]
  call void @s5p_mfc_final_pm(ptr noundef nonnull %call.i) #7
  br label %err_dma

err_dma:                                          ; preds = %err_v4l2_dev_reg, %do.end75
  %ret.4 = phi i32 [ %call70, %do.end75 ], [ %ret.3, %err_v4l2_dev_reg ]
  %call.i343 = call i32 @s5p_mfc_release_firmware(ptr noundef nonnull %call.i) #7
  %114 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %variant, align 4
  %port_num.i345 = getelementptr inbounds %struct.s5p_mfc_variant, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %port_num.i345 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %port_num.i345, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %117)
  %cmp.i346 = icmp eq i32 %117, 2
  br i1 %cmp.i346, label %if.else.i352, label %if.then.i350

if.then.i350:                                     ; preds = %err_dma
  call void @__sanitizer_cov_trace_pc() #9
  %118 = ptrtoint ptr %plat_dev to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %plat_dev, align 4
  %dev1.i.i = getelementptr inbounds %struct.platform_device, ptr %119, i32 0, i32 3
  %mem_size.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 20
  %120 = ptrtoint ptr %mem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %mem_size.i.i, align 4
  %mem_virt.i.i347 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 23
  %122 = ptrtoint ptr %mem_virt.i.i347 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mem_virt.i.i347, align 4
  %mem_base.i.i348 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 21
  %124 = ptrtoint ptr %mem_base.i.i348 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mem_base.i.i348, align 4
  call void @dma_free_attrs(ptr noundef %dev1.i.i, i32 noundef %121, ptr noundef %123, i32 noundef %125, i32 noundef 0) #7
  %mem_bitmap.i.i349 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 22
  %126 = ptrtoint ptr %mem_bitmap.i.i349 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mem_bitmap.i.i349, align 4
  call void @bitmap_free(ptr noundef %127) #7
  br label %s5p_mfc_unconfigure_dma_memory.exit

if.else.i352:                                     ; preds = %err_dma
  call void @__sanitizer_cov_trace_pc() #9
  %mem_dev.i.i351 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 4
  %128 = ptrtoint ptr %mem_dev.i.i351 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mem_dev.i.i351, align 4
  call void @device_unregister(ptr noundef %129) #7
  %arrayidx2.i.i = getelementptr %struct.s5p_mfc_dev, ptr %call.i, i32 0, i32 4, i32 1
  %130 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx2.i.i, align 4
  call void @device_unregister(ptr noundef %131) #7
  br label %s5p_mfc_unconfigure_dma_memory.exit

s5p_mfc_unconfigure_dma_memory.exit:              ; preds = %if.else.i352, %if.then.i350
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @s5p_mfc_probe.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@s5p_mfc_probe, %if.then222)) #7
          to label %cleanup [label %if.then222], !srcloc !388

if.then222:                                       ; preds = %s5p_mfc_unconfigure_dma_memory.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @s5p_mfc_probe.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then222, %s5p_mfc_unconfigure_dma_memory.exit, %if.then202, %do.end181, %do.end67, %do.end60, %do.end50, %if.then41, %do.end35, %do.end22, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then41 ], [ %call.i334, %do.end60 ], [ %retval.0.i337356, %do.end67 ], [ -2, %do.end50 ], [ -2, %do.end35 ], [ -19, %do.end22 ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.then202 ], [ %ret.4, %if.then222 ], [ 0, %do.end181 ], [ %ret.4, %s5p_mfc_unconfigure_dma_memory.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.167, ptr noundef %name, ptr noundef %3) #10
  %mfc_mutex = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mfc_mutex, i32 noundef 0) #7
  %arrayidx = getelementptr %struct.s5p_mfc_dev, ptr %1, i32 0, i32 26, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %5, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.s5p_mfc_dev, ptr %1, i32 0, i32 26, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %8, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %8, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.s5p_mfc_dev, ptr %1, i32 0, i32 26, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %11, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end.2:                                         ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %11, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.s5p_mfc_dev, ptr %1, i32 0, i32 26, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %14, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.end.3:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %14, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  tail call void @mutex_unlock(ptr noundef %mfc_mutex) #7
  %watchdog_timer = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 30
  %call6 = tail call i32 @del_timer_sync(ptr noundef %watchdog_timer) #7
  %watchdog_work = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 32
  %call7 = tail call zeroext i1 @flush_work(ptr noundef %watchdog_work) #7
  %vfd_enc = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %vfd_enc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vfd_enc, align 4
  tail call void @video_unregister_device(ptr noundef %17) #7
  %vfd_dec = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %vfd_dec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vfd_dec, align 4
  tail call void @video_unregister_device(ptr noundef %19) #7
  %20 = ptrtoint ptr %vfd_enc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vfd_enc, align 4
  tail call void @video_device_release(ptr noundef %21) #7
  %22 = ptrtoint ptr %vfd_dec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vfd_dec, align 4
  tail call void @video_device_release(ptr noundef %23) #7
  tail call void @v4l2_device_unregister(ptr noundef %1) #7
  %call.i = tail call i32 @s5p_mfc_release_firmware(ptr noundef %1) #7
  %variant.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %variant.i, align 4
  %port_num.i = getelementptr inbounds %struct.s5p_mfc_variant, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.i = icmp eq i32 %27, 2
  br i1 %cmp.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %plat_dev.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 3
  %28 = ptrtoint ptr %plat_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %plat_dev.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.platform_device, ptr %29, i32 0, i32 3
  %mem_size.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 20
  %30 = ptrtoint ptr %mem_size.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mem_size.i.i, align 4
  %mem_virt.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 23
  %32 = ptrtoint ptr %mem_virt.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mem_virt.i.i, align 4
  %mem_base.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 21
  %34 = ptrtoint ptr %mem_base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mem_base.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev1.i.i, i32 noundef %31, ptr noundef %33, i32 noundef %35, i32 noundef 0) #7
  %mem_bitmap.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 22
  %36 = ptrtoint ptr %mem_bitmap.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mem_bitmap.i.i, align 4
  tail call void @bitmap_free(ptr noundef %37) #7
  br label %s5p_mfc_unconfigure_dma_memory.exit

if.else.i:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %mem_dev.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 4
  %38 = ptrtoint ptr %mem_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mem_dev.i.i, align 4
  tail call void @device_unregister(ptr noundef %39) #7
  %arrayidx2.i.i = getelementptr %struct.s5p_mfc_dev, ptr %1, i32 0, i32 4, i32 1
  %40 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx2.i.i, align 4
  tail call void @device_unregister(ptr noundef %41) #7
  br label %s5p_mfc_unconfigure_dma_memory.exit

s5p_mfc_unconfigure_dma_memory.exit:              ; preds = %if.else.i, %if.then.i
  tail call void @s5p_mfc_final_pm(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_irq(i32 noundef %irq, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %0)
  %cmp = icmp sgt i32 %0, 4
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 637) #10
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %watchdog_cnt = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %watchdog_cnt, i32 noundef 4) #7
  %1 = ptrtoint ptr %watchdog_cnt to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %watchdog_cnt, align 4
  %irqlock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %irqlock) #7
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 27
  %2 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_ctx, align 4
  %arrayidx = getelementptr %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 26, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 36
  %6 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mfc_ops, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end3.cond.end20_crit_edge, label %land.lhs.true

do.end3.cond.end20_crit_edge:                     ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end20

land.lhs.true:                                    ; preds = %do.end3
  %get_int_reason = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %get_int_reason to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_int_reason, align 4
  %tobool6.not = icmp eq ptr %9, null
  br i1 %tobool6.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 %9(ptr noundef %priv) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge
  %cond.ph = phi i32 [ -19, %land.lhs.true.cond.end_crit_edge ], [ %call9, %cond.true ]
  %10 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %mfc_ops, align 4
  %tobool11.not = icmp eq ptr %.pr, null
  br i1 %tobool11.not, label %cond.end.cond.end20_crit_edge, label %land.lhs.true12

cond.end.cond.end20_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end20

land.lhs.true12:                                  ; preds = %cond.end
  %get_int_err = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %.pr, i32 0, i32 23
  %11 = ptrtoint ptr %get_int_err to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_int_err, align 4
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %land.lhs.true12.cond.end20_crit_edge, label %cond.true15

land.lhs.true12.cond.end20_crit_edge:             ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end20

cond.true15:                                      ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 %12(ptr noundef %priv) #7
  br label %cond.end20

cond.end20:                                       ; preds = %cond.true15, %land.lhs.true12.cond.end20_crit_edge, %cond.end.cond.end20_crit_edge, %do.end3.cond.end20_crit_edge
  %cond487 = phi i32 [ %cond.ph, %cond.true15 ], [ %cond.ph, %land.lhs.true12.cond.end20_crit_edge ], [ %cond.ph, %cond.end.cond.end20_crit_edge ], [ -19, %do.end3.cond.end20_crit_edge ]
  %cond21 = phi i32 [ %call18, %cond.true15 ], [ -19, %land.lhs.true12.cond.end20_crit_edge ], [ -19, %cond.end.cond.end20_crit_edge ], [ -19, %do.end3.cond.end20_crit_edge ]
  %13 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp23 = icmp sgt i32 %13, 0
  br i1 %cmp23, label %do.end27, label %cond.end20.do.end32_crit_edge

cond.end20.do.end32_crit_edge:                    ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

do.end27:                                         ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef 645, i32 noundef %cond487, i32 noundef %cond21) #10
  br label %do.end32

do.end32:                                         ; preds = %do.end27, %cond.end20.do.end32_crit_edge
  %14 = zext i32 %cond487 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cond487, label %do.body189 [
    i32 32, label %sw.bb
    i32 15, label %do.end32.sw.bb55_crit_edge
    i32 14, label %do.end32.sw.bb55_crit_edge496
    i32 13, label %do.end32.sw.bb55_crit_edge497
    i32 3, label %sw.bb139
    i32 2, label %sw.bb140
    i32 6, label %do.end32.irq_cleanup_hw.sink.split_crit_edge
    i32 1, label %do.end32.sw.bb157_crit_edge
    i32 12, label %do.end32.sw.bb157_crit_edge498
    i32 7, label %do.end32.sw.bb157_crit_edge499
    i32 8, label %do.end32.sw.bb157_crit_edge500
    i32 4, label %sw.bb174
    i32 9, label %sw.bb175
    i32 10, label %do.end32.irq_cleanup_hw_crit_edge
  ]

do.end32.irq_cleanup_hw_crit_edge:                ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_cleanup_hw

do.end32.sw.bb157_crit_edge500:                   ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb157

do.end32.sw.bb157_crit_edge499:                   ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb157

do.end32.sw.bb157_crit_edge498:                   ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb157

do.end32.sw.bb157_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb157

do.end32.irq_cleanup_hw.sink.split_crit_edge:     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_cleanup_hw.sink.split

do.end32.sw.bb55_crit_edge497:                    ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb55

do.end32.sw.bb55_crit_edge496:                    ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb55

do.end32.sw.bb55_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb55

sw.bb:                                            ; preds = %do.end32
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 16
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 105, i32 %16)
  %cmp33 = icmp eq i32 %16, 105
  br i1 %cmp33, label %land.lhs.true34, label %sw.bb.if.else_crit_edge

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true34:                                  ; preds = %sw.bb
  %17 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mfc_ops, align 4
  %tobool36.not = icmp eq ptr %18, null
  br i1 %tobool36.not, label %land.lhs.true34.cond.end45_crit_edge, label %land.lhs.true37

land.lhs.true34.cond.end45_crit_edge:             ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end45

land.lhs.true37:                                  ; preds = %land.lhs.true34
  %err_dec = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %18, i32 0, i32 24
  %19 = ptrtoint ptr %err_dec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %err_dec, align 4
  %tobool39.not = icmp eq ptr %20, null
  br i1 %tobool39.not, label %land.lhs.true37.cond.end45_crit_edge, label %cond.true40

land.lhs.true37.cond.end45_crit_edge:             ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end45

cond.true40:                                      ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = tail call i32 %20(i32 noundef %cond21) #7
  br label %cond.end45

cond.end45:                                       ; preds = %cond.true40, %land.lhs.true37.cond.end45_crit_edge, %land.lhs.true34.cond.end45_crit_edge
  %cond46 = phi i32 [ %call43, %cond.true40 ], [ -19, %land.lhs.true37.cond.end45_crit_edge ], [ -19, %land.lhs.true34.cond.end45_crit_edge ]
  %warn_start = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 35
  %21 = ptrtoint ptr %warn_start to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %warn_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond46, i32 %22)
  %cmp47.not = icmp sge i32 %cond46, %22
  %23 = freeze i1 %cmp47.not
  br i1 %23, label %cond.end45.if.then53_crit_edge, label %switch.early.test

cond.end45.if.then53_crit_edge:                   ; preds = %cond.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then53

switch.early.test:                                ; preds = %cond.end45
  %24 = zext i32 %cond21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %cond21, label %switch.early.test.if.else_crit_edge [
    i32 140, label %switch.early.test.if.then53_crit_edge
    i32 124, label %switch.early.test.if.then53_crit_edge501
    i32 67, label %switch.early.test.if.then53_crit_edge502
  ]

switch.early.test.if.then53_crit_edge502:         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then53

switch.early.test.if.then53_crit_edge501:         ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then53

switch.early.test.if.then53_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then53

switch.early.test.if.else_crit_edge:              ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then53:                                        ; preds = %switch.early.test.if.then53_crit_edge, %switch.early.test.if.then53_crit_edge501, %switch.early.test.if.then53_crit_edge502, %cond.end45.if.then53_crit_edge
  tail call fastcc void @s5p_mfc_handle_frame(ptr noundef %5, i32 noundef 32, i32 noundef %cond21)
  br label %if.end54

if.else:                                          ; preds = %switch.early.test.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef 468, i32 noundef %cond21) #10
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.else.if.end.i_crit_edge, label %if.then.i

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state, align 4
  %27 = zext i32 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %26, label %sw.default.i [
    i32 112, label %if.then.i.sw.bb.i_crit_edge
    i32 113, label %if.then.i.sw.bb.i_crit_edge503
    i32 114, label %if.then.i.sw.bb.i_crit_edge504
    i32 106, label %if.then.i.sw.bb.i_crit_edge505
    i32 107, label %if.then.i.sw.bb.i_crit_edge506
    i32 105, label %if.then.i.sw.bb.i_crit_edge507
  ]

if.then.i.sw.bb.i_crit_edge507:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge506:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge505:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge504:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge503:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

if.then.i.sw.bb.i_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then.i.sw.bb.i_crit_edge, %if.then.i.sw.bb.i_crit_edge503, %if.then.i.sw.bb.i_crit_edge504, %if.then.i.sw.bb.i_crit_edge505, %if.then.i.sw.bb.i_crit_edge506, %if.then.i.sw.bb.i_crit_edge507
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %5, align 4
  %condlock.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %29, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %condlock.i.i) #7
  %num.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 2
  %30 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num.i.i, align 4
  %ctx_work_bits.i.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %29, i32 0, i32 28
  %rem.i.i.i = and i32 %31, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %div2.i.i.i = lshr i32 %31, 5
  %add.ptr.i.i.i = getelementptr i32, ptr %ctx_work_bits.i.i, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %32 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %33, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %condlock.i.i) #7
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 109, ptr %state, align 4
  %dst_queue.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 12
  %35 = ptrtoint ptr %dst_queue.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %dst_queue.i, align 4
  %cmp.i.not16.i.i = icmp eq ptr %36, %dst_queue.i
  br i1 %cmp.i.not16.i.i, label %sw.bb.i.s5p_mfc_cleanup_queue.exit.i_crit_edge, label %sw.bb.i.while.body.i.i_crit_edge

sw.bb.i.while.body.i.i_crit_edge:                 ; preds = %sw.bb.i
  br label %while.body.i.i

sw.bb.i.s5p_mfc_cleanup_queue.exit.i_crit_edge:   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5p_mfc_cleanup_queue.exit.i

while.body.i.i:                                   ; preds = %list_del.exit.i.i.while.body.i.i_crit_edge, %sw.bb.i.while.body.i.i_crit_edge
  %37 = phi ptr [ %57, %list_del.exit.i.i.while.body.i.i_crit_edge ], [ %36, %sw.bb.i.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 -4
  %38 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %add.ptr.i.i, align 4
  %num_planes13.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %39, i32 0, i32 4
  %40 = ptrtoint ptr %num_planes13.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_planes13.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp14.not.i.i = icmp eq i32 %41, 0
  br i1 %cmp14.not.i.i, label %while.body.i.i.for.end.i.i_crit_edge, label %while.body.i.i.vb2_set_plane_payload.exit.i.i_crit_edge

while.body.i.i.vb2_set_plane_payload.exit.i.i_crit_edge: ; preds = %while.body.i.i
  br label %vb2_set_plane_payload.exit.i.i

while.body.i.i.for.end.i.i_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

vb2_set_plane_payload.exit.i.i:                   ; preds = %vb2_set_plane_payload.exit.i.i.vb2_set_plane_payload.exit.i.i_crit_edge, %while.body.i.i.vb2_set_plane_payload.exit.i.i_crit_edge
  %42 = phi ptr [ %45, %vb2_set_plane_payload.exit.i.i.vb2_set_plane_payload.exit.i.i_crit_edge ], [ %39, %while.body.i.i.vb2_set_plane_payload.exit.i.i_crit_edge ]
  %i.015.i.i = phi i32 [ %inc.i.i, %vb2_set_plane_payload.exit.i.i.vb2_set_plane_payload.exit.i.i_crit_edge ], [ 0, %while.body.i.i.vb2_set_plane_payload.exit.i.i_crit_edge ]
  %bytesused.i.i.i = getelementptr %struct.vb2_buffer, ptr %42, i32 0, i32 10, i32 %i.015.i.i, i32 3
  %43 = ptrtoint ptr %bytesused.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %bytesused.i.i.i, align 4
  %inc.i.i = add nuw i32 %i.015.i.i, 1
  %44 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.i.i, align 4
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_planes.i.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %47
  br i1 %cmp.i.i, label %vb2_set_plane_payload.exit.i.i.vb2_set_plane_payload.exit.i.i_crit_edge, label %vb2_set_plane_payload.exit.i.i.for.end.i.i_crit_edge

vb2_set_plane_payload.exit.i.i.for.end.i.i_crit_edge: ; preds = %vb2_set_plane_payload.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

vb2_set_plane_payload.exit.i.i.vb2_set_plane_payload.exit.i.i_crit_edge: ; preds = %vb2_set_plane_payload.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_set_plane_payload.exit.i.i

for.end.i.i:                                      ; preds = %vb2_set_plane_payload.exit.i.i.for.end.i.i_crit_edge, %while.body.i.i.for.end.i.i_crit_edge
  %.lcssa.i.i = phi ptr [ %39, %while.body.i.i.for.end.i.i_crit_edge ], [ %45, %vb2_set_plane_payload.exit.i.i.for.end.i.i_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef %.lcssa.i.i, i32 noundef 6) #7
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %37) #7
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.end.i.i.list_del.exit.i.i_crit_edge

for.end.i.i.list_del.exit.i.i_crit_edge:          ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i.i.i.i, align 4
  %50 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %37, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev1.i.i.i.i.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %51, ptr %49, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.end.i.i.list_del.exit.i.i_crit_edge
  %54 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 256 to ptr), ptr %37, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %56 = ptrtoint ptr %dst_queue.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %dst_queue.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %57, %dst_queue.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.s5p_mfc_cleanup_queue.exit.i_crit_edge, label %list_del.exit.i.i.while.body.i.i_crit_edge

list_del.exit.i.i.while.body.i.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

list_del.exit.i.i.s5p_mfc_cleanup_queue.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5p_mfc_cleanup_queue.exit.i

s5p_mfc_cleanup_queue.exit.i:                     ; preds = %list_del.exit.i.i.s5p_mfc_cleanup_queue.exit.i_crit_edge, %sw.bb.i.s5p_mfc_cleanup_queue.exit.i_crit_edge
  %src_queue.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 11
  %58 = ptrtoint ptr %src_queue.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %src_queue.i, align 4
  %cmp.i.not16.i1.i = icmp eq ptr %59, %src_queue.i
  br i1 %cmp.i.not16.i1.i, label %s5p_mfc_cleanup_queue.exit.i.if.end.sink.split.i_crit_edge, label %s5p_mfc_cleanup_queue.exit.i.while.body.i5.i_crit_edge

s5p_mfc_cleanup_queue.exit.i.while.body.i5.i_crit_edge: ; preds = %s5p_mfc_cleanup_queue.exit.i
  br label %while.body.i5.i

s5p_mfc_cleanup_queue.exit.i.if.end.sink.split.i_crit_edge: ; preds = %s5p_mfc_cleanup_queue.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split.i

while.body.i5.i:                                  ; preds = %list_del.exit.i20.i.while.body.i5.i_crit_edge, %s5p_mfc_cleanup_queue.exit.i.while.body.i5.i_crit_edge
  %60 = phi ptr [ %80, %list_del.exit.i20.i.while.body.i5.i_crit_edge ], [ %59, %s5p_mfc_cleanup_queue.exit.i.while.body.i5.i_crit_edge ]
  %add.ptr.i2.i = getelementptr i8, ptr %60, i32 -4
  %61 = ptrtoint ptr %add.ptr.i2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %add.ptr.i2.i, align 4
  %num_planes13.i3.i = getelementptr inbounds %struct.vb2_buffer, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %num_planes13.i3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_planes13.i3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp14.not.i4.i = icmp eq i32 %64, 0
  br i1 %cmp14.not.i4.i, label %while.body.i5.i.for.end.i14.i_crit_edge, label %while.body.i5.i.vb2_set_plane_payload.exit.i11.i_crit_edge

while.body.i5.i.vb2_set_plane_payload.exit.i11.i_crit_edge: ; preds = %while.body.i5.i
  br label %vb2_set_plane_payload.exit.i11.i

while.body.i5.i.for.end.i14.i_crit_edge:          ; preds = %while.body.i5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i14.i

vb2_set_plane_payload.exit.i11.i:                 ; preds = %vb2_set_plane_payload.exit.i11.i.vb2_set_plane_payload.exit.i11.i_crit_edge, %while.body.i5.i.vb2_set_plane_payload.exit.i11.i_crit_edge
  %65 = phi ptr [ %68, %vb2_set_plane_payload.exit.i11.i.vb2_set_plane_payload.exit.i11.i_crit_edge ], [ %62, %while.body.i5.i.vb2_set_plane_payload.exit.i11.i_crit_edge ]
  %i.015.i6.i = phi i32 [ %inc.i8.i, %vb2_set_plane_payload.exit.i11.i.vb2_set_plane_payload.exit.i11.i_crit_edge ], [ 0, %while.body.i5.i.vb2_set_plane_payload.exit.i11.i_crit_edge ]
  %bytesused.i.i7.i = getelementptr %struct.vb2_buffer, ptr %65, i32 0, i32 10, i32 %i.015.i6.i, i32 3
  %66 = ptrtoint ptr %bytesused.i.i7.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %bytesused.i.i7.i, align 4
  %inc.i8.i = add nuw i32 %i.015.i6.i, 1
  %67 = ptrtoint ptr %add.ptr.i2.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr.i2.i, align 4
  %num_planes.i9.i = getelementptr inbounds %struct.vb2_buffer, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %num_planes.i9.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_planes.i9.i, align 8
  %cmp.i10.i = icmp ult i32 %inc.i8.i, %70
  br i1 %cmp.i10.i, label %vb2_set_plane_payload.exit.i11.i.vb2_set_plane_payload.exit.i11.i_crit_edge, label %vb2_set_plane_payload.exit.i11.i.for.end.i14.i_crit_edge

vb2_set_plane_payload.exit.i11.i.for.end.i14.i_crit_edge: ; preds = %vb2_set_plane_payload.exit.i11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i14.i

vb2_set_plane_payload.exit.i11.i.vb2_set_plane_payload.exit.i11.i_crit_edge: ; preds = %vb2_set_plane_payload.exit.i11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_set_plane_payload.exit.i11.i

for.end.i14.i:                                    ; preds = %vb2_set_plane_payload.exit.i11.i.for.end.i14.i_crit_edge, %while.body.i5.i.for.end.i14.i_crit_edge
  %.lcssa.i12.i = phi ptr [ %62, %while.body.i5.i.for.end.i14.i_crit_edge ], [ %68, %vb2_set_plane_payload.exit.i11.i.for.end.i14.i_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef %.lcssa.i12.i, i32 noundef 6) #7
  %call.i.i.i13.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %60) #7
  br i1 %call.i.i.i13.i, label %if.end.i.i.i17.i, label %for.end.i14.i.list_del.exit.i20.i_crit_edge

for.end.i14.i.list_del.exit.i20.i_crit_edge:      ; preds = %for.end.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i20.i

if.end.i.i.i17.i:                                 ; preds = %for.end.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i15.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i15.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i.i15.i, align 4
  %73 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %60, align 4
  %prev1.i.i.i.i16.i = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  %75 = ptrtoint ptr %prev1.i.i.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev1.i.i.i.i16.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %74, ptr %72, align 4
  br label %list_del.exit.i20.i

list_del.exit.i20.i:                              ; preds = %if.end.i.i.i17.i, %for.end.i14.i.list_del.exit.i20.i_crit_edge
  %77 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 256 to ptr), ptr %60, align 4
  %prev.i.i18.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %78 = ptrtoint ptr %prev.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i18.i, align 4
  %79 = ptrtoint ptr %src_queue.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %src_queue.i, align 4
  %cmp.i.not.i19.i = icmp eq ptr %80, %src_queue.i
  br i1 %cmp.i.not.i19.i, label %list_del.exit.i20.i.if.end.sink.split.i_crit_edge, label %list_del.exit.i20.i.while.body.i5.i_crit_edge

list_del.exit.i20.i.while.body.i5.i_crit_edge:    ; preds = %list_del.exit.i20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i5.i

list_del.exit.i20.i.if.end.sink.split.i_crit_edge: ; preds = %list_del.exit.i20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.sink.split.i

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %5, align 4
  %condlock.i22.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %82, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %condlock.i22.i) #7
  %num.i23.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 2
  %83 = ptrtoint ptr %num.i23.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num.i23.i, align 4
  %ctx_work_bits.i24.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %82, i32 0, i32 28
  %rem.i.i25.i = and i32 %84, 31
  %shl.i.i26.i = shl nuw i32 1, %rem.i.i25.i
  %div2.i.i27.i = lshr i32 %84, 5
  %add.ptr.i.i28.i = getelementptr i32, ptr %ctx_work_bits.i24.i, i32 %div2.i.i27.i
  %neg.i.i29.i = xor i32 %shl.i.i26.i, -1
  %85 = ptrtoint ptr %add.ptr.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i.i28.i, align 4
  %and.i.i30.i = and i32 %86, %neg.i.i29.i
  store i32 %and.i.i30.i, ptr %add.ptr.i.i28.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %condlock.i22.i) #7
  %87 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 109, ptr %state, align 4
  br label %if.end.sink.split.i

if.end.sink.split.i:                              ; preds = %sw.default.i, %list_del.exit.i20.i.if.end.sink.split.i_crit_edge, %s5p_mfc_cleanup_queue.exit.i.if.end.sink.split.i_crit_edge
  %int_cond.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 3
  %88 = ptrtoint ptr %int_cond.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %int_cond.i.i, align 4
  %int_type.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 4
  %89 = ptrtoint ptr %int_type.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 32, ptr %int_type.i.i, align 4
  %int_err.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 5
  %90 = ptrtoint ptr %int_err.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %cond21, ptr %int_err.i.i, align 4
  %queue.i.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %queue.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.sink.split.i, %if.else.if.end.i_crit_edge
  %hw_lock.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 25
  %call5.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %hw_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp eq i32 %call5.i, 0
  br i1 %cmp.i, label %do.end16.i, label %if.end.i.if.end22.i_crit_edge, !prof !390

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

do.end16.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 496, i32 noundef 9, ptr noundef null) #7
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end16.i, %if.end.i.if.end22.i_crit_edge
  %91 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mfc_ops, align 4
  %tobool30.not.i = icmp eq ptr %92, null
  br i1 %tobool30.not.i, label %if.end22.i.s5p_mfc_handle_error.exit_crit_edge, label %land.lhs.true.i

if.end22.i.s5p_mfc_handle_error.exit_crit_edge:   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5p_mfc_handle_error.exit

land.lhs.true.i:                                  ; preds = %if.end22.i
  %clear_int_flags.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %92, i32 0, i32 14
  %93 = ptrtoint ptr %clear_int_flags.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %clear_int_flags.i, align 4
  %tobool32.not.i = icmp eq ptr %94, null
  br i1 %tobool32.not.i, label %land.lhs.true.i.s5p_mfc_handle_error.exit_crit_edge, label %cond.true.i

land.lhs.true.i.s5p_mfc_handle_error.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5p_mfc_handle_error.exit

cond.true.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %94(ptr noundef %priv) #7
  br label %s5p_mfc_handle_error.exit

s5p_mfc_handle_error.exit:                        ; preds = %cond.true.i, %land.lhs.true.i.s5p_mfc_handle_error.exit_crit_edge, %if.end22.i.s5p_mfc_handle_error.exit_crit_edge
  tail call void @s5p_mfc_clock_off() #7
  %int_cond.i35.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 15
  %95 = ptrtoint ptr %int_cond.i35.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %int_cond.i35.i, align 4
  %int_type.i36.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 16
  %96 = ptrtoint ptr %int_type.i36.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 32, ptr %int_type.i36.i, align 4
  %int_err.i37.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 17
  %97 = ptrtoint ptr %int_err.i37.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %cond21, ptr %int_err.i37.i, align 4
  %queue.i38.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %queue.i38.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %if.end54

if.end54:                                         ; preds = %s5p_mfc_handle_error.exit, %if.then53
  %enter_suspend = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 33
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %enter_suspend) #7
  br label %sw.epilog

sw.bb55:                                          ; preds = %do.end32.sw.bb55_crit_edge, %do.end32.sw.bb55_crit_edge496, %do.end32.sw.bb55_crit_edge497
  %c_ops = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 63
  %98 = ptrtoint ptr %c_ops to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %c_ops, align 4
  %post_frame_start = getelementptr inbounds %struct.s5p_mfc_codec_ops, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %post_frame_start to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %post_frame_start, align 4
  %tobool56.not = icmp eq ptr %101, null
  br i1 %tobool56.not, label %if.else137, label %if.then57

if.then57:                                        ; preds = %sw.bb55
  %call60 = tail call i32 %101(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.then57.if.end71_crit_edge, label %do.end66

if.then57.if.end71_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

do.end66:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.57, i32 noundef 666) #10
  br label %if.end71

if.end71:                                         ; preds = %do.end66, %if.then57.if.end71_crit_edge
  %state72 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 16
  %102 = ptrtoint ptr %state72 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %state72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 106, i32 %103)
  %cmp73 = icmp eq i32 %103, 106
  br i1 %cmp73, label %land.lhs.true74, label %if.end71.if.end88_crit_edge

if.end71.if.end88_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

land.lhs.true74:                                  ; preds = %if.end71
  %ref_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 59
  %104 = ptrtoint ptr %ref_queue to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile ptr, ptr %ref_queue, align 4
  %cmp.i413.not = icmp eq ptr %105, %ref_queue
  br i1 %cmp.i413.not, label %if.then77, label %land.lhs.true74.if.end88_crit_edge

land.lhs.true74.if.end88_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then77:                                        ; preds = %land.lhs.true74
  %106 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mfc_ops, align 4
  %tobool79.not = icmp eq ptr %107, null
  br i1 %tobool79.not, label %if.then77.cond.end87_crit_edge, label %land.lhs.true80

if.then77.cond.end87_crit_edge:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end87

land.lhs.true80:                                  ; preds = %if.then77
  %clear_int_flags = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %107, i32 0, i32 14
  %108 = ptrtoint ptr %clear_int_flags to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %clear_int_flags, align 4
  %tobool82.not = icmp eq ptr %109, null
  br i1 %tobool82.not, label %land.lhs.true80.cond.end87_crit_edge, label %cond.true83

land.lhs.true80.cond.end87_crit_edge:             ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end87

cond.true83:                                      ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %109(ptr noundef %priv) #7
  br label %cond.end87

cond.end87:                                       ; preds = %cond.true83, %land.lhs.true80.cond.end87_crit_edge, %if.then77.cond.end87_crit_edge
  tail call fastcc void @s5p_mfc_handle_stream_complete(ptr noundef %5)
  br label %sw.epilog

if.end88:                                         ; preds = %land.lhs.true74.if.end88_crit_edge, %if.end71.if.end88_crit_edge
  %110 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %mfc_ops, align 4
  %tobool90.not = icmp eq ptr %111, null
  br i1 %tobool90.not, label %if.end88.cond.end99_crit_edge, label %land.lhs.true91

if.end88.cond.end99_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end99

land.lhs.true91:                                  ; preds = %if.end88
  %clear_int_flags93 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %111, i32 0, i32 14
  %112 = ptrtoint ptr %clear_int_flags93 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %clear_int_flags93, align 4
  %tobool94.not = icmp eq ptr %113, null
  br i1 %tobool94.not, label %land.lhs.true91.cond.end99_crit_edge, label %cond.true95

land.lhs.true91.cond.end99_crit_edge:             ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end99

cond.true95:                                      ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %113(ptr noundef %priv) #7
  br label %cond.end99

cond.end99:                                       ; preds = %cond.true95, %land.lhs.true91.cond.end99_crit_edge, %if.end88.cond.end99_crit_edge
  %hw_lock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 25
  %call100 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %hw_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %do.end113, label %cond.end99.if.end119_crit_edge, !prof !390

cond.end99.if.end119_crit_edge:                   ; preds = %cond.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

do.end113:                                        ; preds = %cond.end99
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 675, i32 noundef 9, ptr noundef null) #7
  br label %if.end119

if.end119:                                        ; preds = %do.end113, %cond.end99.if.end119_crit_edge
  tail call void @s5p_mfc_clock_off() #7
  %int_cond.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 3
  %114 = ptrtoint ptr %int_cond.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %int_cond.i, align 4
  %int_type.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 4
  %115 = ptrtoint ptr %int_type.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %cond487, ptr %int_type.i, align 4
  %int_err.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 5
  %116 = ptrtoint ptr %int_err.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %cond21, ptr %int_err.i, align 4
  %queue.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %queue.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %117 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mfc_ops, align 4
  %tobool128.not = icmp eq ptr %118, null
  br i1 %tobool128.not, label %if.end119.sw.epilog_crit_edge, label %land.lhs.true129

if.end119.sw.epilog_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true129:                                 ; preds = %if.end119
  %try_run = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %118, i32 0, i32 13
  %119 = ptrtoint ptr %try_run to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %try_run, align 4
  %tobool131.not = icmp eq ptr %120, null
  br i1 %tobool131.not, label %land.lhs.true129.sw.epilog_crit_edge, label %cond.true132

land.lhs.true129.sw.epilog_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

cond.true132:                                     ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %120(ptr noundef %priv) #7
  br label %sw.epilog

if.else137:                                       ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @s5p_mfc_handle_frame(ptr noundef %5, i32 noundef %cond487, i32 noundef %cond21)
  br label %sw.epilog

sw.bb139:                                         ; preds = %do.end32
  %tobool.not.i414 = icmp eq ptr %5, null
  br i1 %tobool.not.i414, label %sw.bb139.sw.epilog_crit_edge, label %if.end.i415

sw.bb139.sw.epilog_crit_edge:                     ; preds = %sw.bb139
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i415:                                      ; preds = %sw.bb139
  %121 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %5, align 4
  %c_ops.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 63
  %123 = ptrtoint ptr %c_ops.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %c_ops.i, align 4
  %post_seq_start.i = getelementptr inbounds %struct.s5p_mfc_codec_ops, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %post_seq_start.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %post_seq_start.i, align 4
  %tobool2.not.i = icmp eq ptr %126, null
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i415
  %call.i416 = tail call i32 %126(ptr noundef nonnull %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i416)
  %tobool6.not.i = icmp eq i32 %call.i416, 0
  br i1 %tobool6.not.i, label %if.then3.i.if.end119.i_crit_edge, label %do.end.i

if.then3.i.if.end119.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119.i

do.end.i:                                         ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i32 noundef 513) #10
  br label %if.end119.i

if.else.i:                                        ; preds = %if.end.i415
  %mfc_ops.i417 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %122, i32 0, i32 36
  %127 = ptrtoint ptr %mfc_ops.i417 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mfc_ops.i417, align 4
  %tobool13.not.i = icmp eq ptr %128, null
  br i1 %tobool13.not.i, label %if.else.i.cond.end.i_crit_edge, label %land.lhs.true.i418

if.else.i.cond.end.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

land.lhs.true.i418:                               ; preds = %if.else.i
  %get_img_width.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %128, i32 0, i32 25
  %129 = ptrtoint ptr %get_img_width.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %get_img_width.i, align 4
  %tobool15.not.i = icmp eq ptr %130, null
  br i1 %tobool15.not.i, label %land.lhs.true.i418.cond.end.i_crit_edge, label %cond.true.i419

land.lhs.true.i418.cond.end.i_crit_edge:          ; preds = %land.lhs.true.i418
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

cond.true.i419:                                   ; preds = %land.lhs.true.i418
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i = tail call i32 %130(ptr noundef %122) #7
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i419, %land.lhs.true.i418.cond.end.i_crit_edge, %if.else.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %call18.i, %cond.true.i419 ], [ -19, %land.lhs.true.i418.cond.end.i_crit_edge ], [ -19, %if.else.i.cond.end.i_crit_edge ]
  %img_width.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 18
  %131 = ptrtoint ptr %img_width.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %cond.i, ptr %img_width.i, align 4
  %132 = ptrtoint ptr %mfc_ops.i417 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %mfc_ops.i417, align 4
  %tobool20.not.i = icmp eq ptr %133, null
  br i1 %tobool20.not.i, label %cond.end.i.cond.end29.i_crit_edge, label %land.lhs.true21.i

cond.end.i.cond.end29.i_crit_edge:                ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end29.i

land.lhs.true21.i:                                ; preds = %cond.end.i
  %get_img_height.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %133, i32 0, i32 26
  %134 = ptrtoint ptr %get_img_height.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %get_img_height.i, align 4
  %tobool23.not.i = icmp eq ptr %135, null
  br i1 %tobool23.not.i, label %land.lhs.true21.i.cond.end29.i_crit_edge, label %cond.true24.i

land.lhs.true21.i.cond.end29.i_crit_edge:         ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end29.i

cond.true24.i:                                    ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #9
  %call27.i = tail call i32 %135(ptr noundef %122) #7
  br label %cond.end29.i

cond.end29.i:                                     ; preds = %cond.true24.i, %land.lhs.true21.i.cond.end29.i_crit_edge, %cond.end.i.cond.end29.i_crit_edge
  %cond30.i = phi i32 [ %call27.i, %cond.true24.i ], [ -19, %land.lhs.true21.i.cond.end29.i_crit_edge ], [ -19, %cond.end.i.cond.end29.i_crit_edge ]
  %img_height.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 19
  %136 = ptrtoint ptr %img_height.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %cond30.i, ptr %img_height.i, align 4
  %137 = ptrtoint ptr %mfc_ops.i417 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %mfc_ops.i417, align 4
  %tobool32.not.i420 = icmp eq ptr %138, null
  br i1 %tobool32.not.i420, label %cond.end29.i.cond.end51.i_crit_edge, label %land.lhs.true33.i

cond.end29.i.cond.end51.i_crit_edge:              ; preds = %cond.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end51.i

land.lhs.true33.i:                                ; preds = %cond.end29.i
  %dec_calc_dpb_size.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %138, i32 0, i32 8
  %139 = ptrtoint ptr %dec_calc_dpb_size.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dec_calc_dpb_size.i, align 4
  %tobool35.not.i = icmp eq ptr %140, null
  br i1 %tobool35.not.i, label %land.lhs.true33.i.cond.end40.i_crit_edge, label %cond.true36.i

land.lhs.true33.i.cond.end40.i_crit_edge:         ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end40.i

cond.true36.i:                                    ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %140(ptr noundef nonnull %5) #7
  br label %cond.end40.i

cond.end40.i:                                     ; preds = %cond.true36.i, %land.lhs.true33.i.cond.end40.i_crit_edge
  %141 = ptrtoint ptr %mfc_ops.i417 to i32
  call void @__asan_load4_noabort(i32 %141)
  %.pr.i = load ptr, ptr %mfc_ops.i417, align 4
  %tobool42.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool42.not.i, label %cond.end40.i.cond.end51.i_crit_edge, label %land.lhs.true43.i

cond.end40.i.cond.end51.i_crit_edge:              ; preds = %cond.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end51.i

land.lhs.true43.i:                                ; preds = %cond.end40.i
  %get_dpb_count.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %.pr.i, i32 0, i32 27
  %142 = ptrtoint ptr %get_dpb_count.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %get_dpb_count.i, align 4
  %tobool45.not.i = icmp eq ptr %143, null
  br i1 %tobool45.not.i, label %land.lhs.true43.i.cond.end51.i_crit_edge, label %cond.true46.i

land.lhs.true43.i.cond.end51.i_crit_edge:         ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end51.i

cond.true46.i:                                    ; preds = %land.lhs.true43.i
  call void @__sanitizer_cov_trace_pc() #9
  %call49.i = tail call i32 %143(ptr noundef %122) #7
  br label %cond.end51.i

cond.end51.i:                                     ; preds = %cond.true46.i, %land.lhs.true43.i.cond.end51.i_crit_edge, %cond.end40.i.cond.end51.i_crit_edge, %cond.end29.i.cond.end51.i_crit_edge
  %cond52.i = phi i32 [ %call49.i, %cond.true46.i ], [ -19, %land.lhs.true43.i.cond.end51.i_crit_edge ], [ -19, %cond.end40.i.cond.end51.i_crit_edge ], [ -19, %cond.end29.i.cond.end51.i_crit_edge ]
  %pb_count.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 46
  %144 = ptrtoint ptr %pb_count.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %cond52.i, ptr %pb_count.i, align 4
  %145 = ptrtoint ptr %mfc_ops.i417 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %mfc_ops.i417, align 4
  %tobool54.not.i = icmp eq ptr %146, null
  br i1 %tobool54.not.i, label %cond.end51.i.cond.end63.i_crit_edge, label %land.lhs.true55.i

cond.end51.i.cond.end63.i_crit_edge:              ; preds = %cond.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end63.i

land.lhs.true55.i:                                ; preds = %cond.end51.i
  %get_mv_count.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %146, i32 0, i32 28
  %147 = ptrtoint ptr %get_mv_count.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %get_mv_count.i, align 4
  %tobool57.not.i = icmp eq ptr %148, null
  br i1 %tobool57.not.i, label %land.lhs.true55.i.cond.end63.i_crit_edge, label %cond.true58.i

land.lhs.true55.i.cond.end63.i_crit_edge:         ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end63.i

cond.true58.i:                                    ; preds = %land.lhs.true55.i
  call void @__sanitizer_cov_trace_pc() #9
  %call61.i = tail call i32 %148(ptr noundef %122) #7
  br label %cond.end63.i

cond.end63.i:                                     ; preds = %cond.true58.i, %land.lhs.true55.i.cond.end63.i_crit_edge, %cond.end51.i.cond.end63.i_crit_edge
  %cond64.i = phi i32 [ %call61.i, %cond.true58.i ], [ -19, %land.lhs.true55.i.cond.end63.i_crit_edge ], [ -19, %cond.end51.i.cond.end63.i_crit_edge ]
  %mv_count.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 48
  %149 = ptrtoint ptr %mv_count.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %cond64.i, ptr %mv_count.i, align 4
  %variant.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %122, i32 0, i32 10
  %150 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %variant.i, align 4
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 159, i32 %153)
  %cmp.i421 = icmp ugt i32 %153, 159
  br i1 %cmp.i421, label %if.then67.i, label %cond.end63.i.if.end80.i_crit_edge

cond.end63.i.if.end80.i_crit_edge:                ; preds = %cond.end63.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

if.then67.i:                                      ; preds = %cond.end63.i
  %154 = ptrtoint ptr %mfc_ops.i417 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mfc_ops.i417, align 4
  %tobool69.not.i = icmp eq ptr %155, null
  br i1 %tobool69.not.i, label %if.then67.i.cond.end78.i_crit_edge, label %land.lhs.true70.i

if.then67.i.cond.end78.i_crit_edge:               ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end78.i

land.lhs.true70.i:                                ; preds = %if.then67.i
  %get_min_scratch_buf_size.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %155, i32 0, i32 37
  %156 = ptrtoint ptr %get_min_scratch_buf_size.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %get_min_scratch_buf_size.i, align 4
  %tobool72.not.i = icmp eq ptr %157, null
  br i1 %tobool72.not.i, label %land.lhs.true70.i.cond.end78.i_crit_edge, label %cond.true73.i

land.lhs.true70.i.cond.end78.i_crit_edge:         ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end78.i

cond.true73.i:                                    ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #9
  %call76.i = tail call i32 %157(ptr noundef %122) #7
  br label %cond.end78.i

cond.end78.i:                                     ; preds = %cond.true73.i, %land.lhs.true70.i.cond.end78.i_crit_edge, %if.then67.i.cond.end78.i_crit_edge
  %cond79.i = phi i32 [ %call76.i, %cond.true73.i ], [ -19, %land.lhs.true70.i.cond.end78.i_crit_edge ], [ -19, %if.then67.i.cond.end78.i_crit_edge ]
  %scratch_buf_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 66
  %158 = ptrtoint ptr %scratch_buf_size.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %cond79.i, ptr %scratch_buf_size.i, align 4
  br label %if.end80.i

if.end80.i:                                       ; preds = %cond.end78.i, %cond.end63.i.if.end80.i_crit_edge
  %159 = ptrtoint ptr %img_width.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %img_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp82.i = icmp eq i32 %160, 0
  br i1 %cmp82.i, label %if.end80.i.if.end88.i_crit_edge, label %lor.lhs.false.i

if.end80.i.if.end88.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88.i

lor.lhs.false.i:                                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  %161 = ptrtoint ptr %img_height.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %img_height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp84.i = icmp eq i32 %162, 0
  %spec.select.i = select i1 %cmp84.i, i32 109, i32 102
  br label %if.end88.i

if.end88.i:                                       ; preds = %lor.lhs.false.i, %if.end80.i.if.end88.i_crit_edge
  %.sink.i = phi i32 [ 109, %if.end80.i.if.end88.i_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %state87.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 16
  %163 = ptrtoint ptr %state87.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %.sink.i, ptr %state87.i, align 4
  %codec_mode.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 39
  %164 = ptrtoint ptr %codec_mode.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %codec_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %165)
  %switch.i = icmp ult i32 %165, 2
  br i1 %switch.i, label %land.lhs.true93.i, label %if.end88.i.if.else116.i_crit_edge

if.end88.i.if.else116.i_crit_edge:                ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else116.i

land.lhs.true93.i:                                ; preds = %if.end88.i
  %src_queue.i422 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 11
  %166 = ptrtoint ptr %src_queue.i422 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile ptr, ptr %src_queue.i422, align 4
  %cmp.i.not.i = icmp eq ptr %167, %src_queue.i422
  br i1 %cmp.i.not.i, label %land.lhs.true93.i.if.else116.i_crit_edge, label %if.then96.i

land.lhs.true93.i.if.else116.i_crit_edge:         ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else116.i

if.then96.i:                                      ; preds = %land.lhs.true93.i
  %add.ptr.i = getelementptr i8, ptr %167, i32 -4
  %168 = ptrtoint ptr %mfc_ops.i417 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %mfc_ops.i417, align 4
  %tobool100.not.i = icmp eq ptr %169, null
  br i1 %tobool100.not.i, label %if.then96.i.cond.end109.i_crit_edge, label %land.lhs.true101.i

if.then96.i.cond.end109.i_crit_edge:              ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end109.i

land.lhs.true101.i:                               ; preds = %if.then96.i
  %get_consumed_stream.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %169, i32 0, i32 21
  %170 = ptrtoint ptr %get_consumed_stream.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %get_consumed_stream.i, align 4
  %tobool103.not.i = icmp eq ptr %171, null
  br i1 %tobool103.not.i, label %land.lhs.true101.i.cond.end109.i_crit_edge, label %cond.true104.i

land.lhs.true101.i.cond.end109.i_crit_edge:       ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end109.i

cond.true104.i:                                   ; preds = %land.lhs.true101.i
  call void @__sanitizer_cov_trace_pc() #9
  %call107.i = tail call i32 %171(ptr noundef %122) #7
  br label %cond.end109.i

cond.end109.i:                                    ; preds = %cond.true104.i, %land.lhs.true101.i.cond.end109.i_crit_edge, %if.then96.i.cond.end109.i_crit_edge
  %cond110.i = phi i32 [ %call107.i, %cond.true104.i ], [ -19, %land.lhs.true101.i.cond.end109.i_crit_edge ], [ -19, %if.then96.i.cond.end109.i_crit_edge ]
  %172 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %add.ptr.i, align 4
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %173, i32 0, i32 10, i32 0, i32 3
  %174 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %bytesused.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cond110.i, i32 %175)
  %cmp111.i = icmp ult i32 %cond110.i, %175
  %head_processed.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 27
  br i1 %cmp111.i, label %if.then112.i, label %if.else113.i

if.then112.i:                                     ; preds = %cond.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  %176 = ptrtoint ptr %head_processed.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %head_processed.i, align 4
  br label %if.end119.i

if.else113.i:                                     ; preds = %cond.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  %177 = ptrtoint ptr %head_processed.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 1, ptr %head_processed.i, align 4
  br label %if.end119.i

if.else116.i:                                     ; preds = %land.lhs.true93.i.if.else116.i_crit_edge, %if.end88.i.if.else116.i_crit_edge
  %head_processed117.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 27
  %178 = ptrtoint ptr %head_processed117.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 1, ptr %head_processed117.i, align 4
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.else116.i, %if.else113.i, %if.then112.i, %do.end.i, %if.then3.i.if.end119.i_crit_edge
  %mfc_ops120.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %122, i32 0, i32 36
  %179 = ptrtoint ptr %mfc_ops120.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %mfc_ops120.i, align 4
  %tobool121.not.i = icmp eq ptr %180, null
  br i1 %tobool121.not.i, label %if.end119.i.cond.end129.i_crit_edge, label %land.lhs.true122.i

if.end119.i.cond.end129.i_crit_edge:              ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end129.i

land.lhs.true122.i:                               ; preds = %if.end119.i
  %clear_int_flags.i423 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %180, i32 0, i32 14
  %181 = ptrtoint ptr %clear_int_flags.i423 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %clear_int_flags.i423, align 4
  %tobool124.not.i = icmp eq ptr %182, null
  br i1 %tobool124.not.i, label %land.lhs.true122.i.cond.end129.i_crit_edge, label %cond.true125.i

land.lhs.true122.i.cond.end129.i_crit_edge:       ; preds = %land.lhs.true122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end129.i

cond.true125.i:                                   ; preds = %land.lhs.true122.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %182(ptr noundef %122) #7
  br label %cond.end129.i

cond.end129.i:                                    ; preds = %cond.true125.i, %land.lhs.true122.i.cond.end129.i_crit_edge, %if.end119.i.cond.end129.i_crit_edge
  %183 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %5, align 4
  %condlock.i.i424 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %184, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %condlock.i.i424) #7
  %num.i.i425 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 2
  %185 = ptrtoint ptr %num.i.i425 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %num.i.i425, align 4
  %ctx_work_bits.i.i426 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %184, i32 0, i32 28
  %rem.i.i.i427 = and i32 %186, 31
  %shl.i.i.i428 = shl nuw i32 1, %rem.i.i.i427
  %div2.i.i.i429 = lshr i32 %186, 5
  %add.ptr.i.i.i430 = getelementptr i32, ptr %ctx_work_bits.i.i426, i32 %div2.i.i.i429
  %neg.i.i.i431 = xor i32 %shl.i.i.i428, -1
  %187 = ptrtoint ptr %add.ptr.i.i.i430 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %add.ptr.i.i.i430, align 4
  %and.i.i.i432 = and i32 %188, %neg.i.i.i431
  store i32 %and.i.i.i432, ptr %add.ptr.i.i.i430, align 4
  tail call void @_raw_spin_unlock(ptr noundef %condlock.i.i424) #7
  %hw_lock.i433 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %122, i32 0, i32 25
  %call130.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %hw_lock.i433) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130.i)
  %cmp131.i = icmp eq i32 %call130.i, 0
  br i1 %cmp131.i, label %do.end143.i, label %cond.end129.i.if.end149.i_crit_edge, !prof !390

cond.end129.i.if.end149.i_crit_edge:              ; preds = %cond.end129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end149.i

do.end143.i:                                      ; preds = %cond.end129.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 552, i32 noundef 9, ptr noundef null) #7
  br label %if.end149.i

if.end149.i:                                      ; preds = %do.end143.i, %cond.end129.i.if.end149.i_crit_edge
  tail call void @s5p_mfc_clock_off() #7
  %189 = ptrtoint ptr %mfc_ops120.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %mfc_ops120.i, align 4
  %tobool158.not.i = icmp eq ptr %190, null
  br i1 %tobool158.not.i, label %if.end149.i.cond.end166.i_crit_edge, label %land.lhs.true159.i

if.end149.i.cond.end166.i_crit_edge:              ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end166.i

land.lhs.true159.i:                               ; preds = %if.end149.i
  %try_run.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %190, i32 0, i32 13
  %191 = ptrtoint ptr %try_run.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %try_run.i, align 4
  %tobool161.not.i = icmp eq ptr %192, null
  br i1 %tobool161.not.i, label %land.lhs.true159.i.cond.end166.i_crit_edge, label %cond.true162.i

land.lhs.true159.i.cond.end166.i_crit_edge:       ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end166.i

cond.true162.i:                                   ; preds = %land.lhs.true159.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %192(ptr noundef %122) #7
  br label %cond.end166.i

cond.end166.i:                                    ; preds = %cond.true162.i, %land.lhs.true159.i.cond.end166.i_crit_edge, %if.end149.i.cond.end166.i_crit_edge
  %int_cond.i.i434 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 3
  %193 = ptrtoint ptr %int_cond.i.i434 to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 1, ptr %int_cond.i.i434, align 4
  %int_type.i.i435 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 4
  %194 = ptrtoint ptr %int_type.i.i435 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 3, ptr %int_type.i.i435, align 4
  %int_err.i.i436 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 5
  %195 = ptrtoint ptr %int_err.i.i436 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %cond21, ptr %int_err.i.i436, align 4
  %queue.i.i437 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %queue.i.i437, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %sw.epilog

sw.bb140:                                         ; preds = %do.end32
  %196 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mfc_ops, align 4
  %tobool142.not = icmp eq ptr %197, null
  br i1 %tobool142.not, label %sw.bb140.irq_cleanup_hw.sink.split_crit_edge, label %land.lhs.true143

sw.bb140.irq_cleanup_hw.sink.split_crit_edge:     ; preds = %sw.bb140
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_cleanup_hw.sink.split

land.lhs.true143:                                 ; preds = %sw.bb140
  %get_inst_no = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %197, i32 0, i32 29
  %198 = ptrtoint ptr %get_inst_no to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %get_inst_no, align 4
  %tobool145.not = icmp eq ptr %199, null
  br i1 %tobool145.not, label %land.lhs.true143.irq_cleanup_hw.sink.split_crit_edge, label %cond.true146

land.lhs.true143.irq_cleanup_hw.sink.split_crit_edge: ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_cleanup_hw.sink.split

cond.true146:                                     ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #9
  %call149 = tail call i32 %199(ptr noundef %priv) #7
  br label %irq_cleanup_hw.sink.split

sw.bb157:                                         ; preds = %do.end32.sw.bb157_crit_edge, %do.end32.sw.bb157_crit_edge498, %do.end32.sw.bb157_crit_edge499, %do.end32.sw.bb157_crit_edge500
  %tobool158.not = icmp eq ptr %5, null
  br i1 %tobool158.not, label %sw.bb157.if.end160_crit_edge, label %if.then159

sw.bb157.if.end160_crit_edge:                     ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160

if.then159:                                       ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #9
  %200 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %5, align 4
  %condlock.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %201, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %condlock.i) #7
  %num.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 2
  %202 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %num.i, align 4
  %ctx_work_bits.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %201, i32 0, i32 28
  %rem.i.i = and i32 %203, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %203, 5
  %add.ptr.i.i438 = getelementptr i32, ptr %ctx_work_bits.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %204 = ptrtoint ptr %add.ptr.i.i438 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %add.ptr.i.i438, align 4
  %and.i.i = and i32 %205, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i438, align 4
  tail call void @_raw_spin_unlock(ptr noundef %condlock.i) #7
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %sw.bb157.if.end160_crit_edge
  %206 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %mfc_ops, align 4
  %tobool162.not = icmp eq ptr %207, null
  br i1 %tobool162.not, label %if.end160.cond.end171_crit_edge, label %land.lhs.true163

if.end160.cond.end171_crit_edge:                  ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end171

land.lhs.true163:                                 ; preds = %if.end160
  %clear_int_flags165 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %207, i32 0, i32 14
  %208 = ptrtoint ptr %clear_int_flags165 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %clear_int_flags165, align 4
  %tobool166.not = icmp eq ptr %209, null
  br i1 %tobool166.not, label %land.lhs.true163.cond.end171_crit_edge, label %cond.true167

land.lhs.true163.cond.end171_crit_edge:           ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end171

cond.true167:                                     ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %209(ptr noundef %priv) #7
  br label %cond.end171

cond.end171:                                      ; preds = %cond.true167, %land.lhs.true163.cond.end171_crit_edge, %if.end160.cond.end171_crit_edge
  %hw_lock172 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 25
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %hw_lock172) #7
  %enter_suspend173 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 33
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %enter_suspend173) #7
  %int_cond.i439 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 15
  %210 = ptrtoint ptr %int_cond.i439 to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 1, ptr %int_cond.i439, align 4
  %int_type.i440 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 16
  %211 = ptrtoint ptr %int_type.i440 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %cond487, ptr %int_type.i440, align 4
  %int_err.i441 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 17
  %212 = ptrtoint ptr %int_err.i441 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %cond21, ptr %int_err.i441, align 4
  %queue.i442 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %queue.i442, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %sw.epilog

sw.bb174:                                         ; preds = %do.end32
  %tobool.not.i443 = icmp eq ptr %5, null
  br i1 %tobool.not.i443, label %sw.bb174.sw.epilog_crit_edge, label %if.end.i446

sw.bb174.sw.epilog_crit_edge:                     ; preds = %sw.bb174
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i446:                                      ; preds = %sw.bb174
  %213 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %5, align 4
  %mfc_ops.i444 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %214, i32 0, i32 36
  %215 = ptrtoint ptr %mfc_ops.i444 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %mfc_ops.i444, align 4
  %tobool2.not.i445 = icmp eq ptr %216, null
  br i1 %tobool2.not.i445, label %if.end.i446.cond.end.i463_crit_edge, label %land.lhs.true.i448

if.end.i446.cond.end.i463_crit_edge:              ; preds = %if.end.i446
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i463

land.lhs.true.i448:                               ; preds = %if.end.i446
  %clear_int_flags.i447 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %216, i32 0, i32 14
  %217 = ptrtoint ptr %clear_int_flags.i447 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %clear_int_flags.i447, align 4
  %tobool4.not.i = icmp eq ptr %218, null
  br i1 %tobool4.not.i, label %land.lhs.true.i448.cond.end.i463_crit_edge, label %cond.true.i449

land.lhs.true.i448.cond.end.i463_crit_edge:       ; preds = %land.lhs.true.i448
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i463

cond.true.i449:                                   ; preds = %land.lhs.true.i448
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %218(ptr noundef %214) #7
  br label %cond.end.i463

cond.end.i463:                                    ; preds = %cond.true.i449, %land.lhs.true.i448.cond.end.i463_crit_edge, %if.end.i446.cond.end.i463_crit_edge
  %int_type.i450 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 4
  %219 = ptrtoint ptr %int_type.i450 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 4, ptr %int_type.i450, align 4
  %int_err.i451 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 5
  %220 = ptrtoint ptr %int_err.i451 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %cond21, ptr %int_err.i451, align 4
  %int_cond.i452 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 3
  %221 = ptrtoint ptr %int_cond.i452 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 1, ptr %int_cond.i452, align 4
  %222 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %5, align 4
  %condlock.i.i453 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %223, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %condlock.i.i453) #7
  %num.i.i454 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 2
  %224 = ptrtoint ptr %num.i.i454 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %num.i.i454, align 4
  %ctx_work_bits.i.i455 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %223, i32 0, i32 28
  %rem.i.i.i456 = and i32 %225, 31
  %shl.i.i.i457 = shl nuw i32 1, %rem.i.i.i456
  %div2.i.i.i458 = lshr i32 %225, 5
  %add.ptr.i.i.i459 = getelementptr i32, ptr %ctx_work_bits.i.i455, i32 %div2.i.i.i458
  %neg.i.i.i460 = xor i32 %shl.i.i.i457, -1
  %226 = ptrtoint ptr %add.ptr.i.i.i459 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %add.ptr.i.i.i459, align 4
  %and.i.i.i461 = and i32 %227, %neg.i.i.i460
  store i32 %and.i.i.i461, ptr %add.ptr.i.i.i459, align 4
  tail call void @_raw_spin_unlock(ptr noundef %condlock.i.i453) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond21)
  %cmp.i462 = icmp eq i32 %cond21, 0
  br i1 %cmp.i462, label %if.then7.i, label %if.else52.i

if.then7.i:                                       ; preds = %cond.end.i463
  %state.i464 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 16
  %228 = ptrtoint ptr %state.i464 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 105, ptr %state.i464, align 4
  %dpb_flush_flag.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 26
  %229 = ptrtoint ptr %dpb_flush_flag.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %dpb_flush_flag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool8.not.i = icmp eq i32 %230, 0
  br i1 %tobool8.not.i, label %land.lhs.true9.i, label %if.then7.i.if.else.i470_crit_edge

if.then7.i.if.else.i470_crit_edge:                ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i470

land.lhs.true9.i:                                 ; preds = %if.then7.i
  %head_processed.i465 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 27
  %231 = ptrtoint ptr %head_processed.i465 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %head_processed.i465, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool10.not.i = icmp eq i32 %232, 0
  br i1 %tobool10.not.i, label %land.lhs.true9.i.if.else.i470_crit_edge, label %if.then11.i

land.lhs.true9.i.if.else.i470_crit_edge:          ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i470

if.then11.i:                                      ; preds = %land.lhs.true9.i
  %src_queue.i466 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 11
  %233 = ptrtoint ptr %src_queue.i466 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load volatile ptr, ptr %src_queue.i466, align 4
  %cmp.i.not.i467 = icmp eq ptr %234, %src_queue.i466
  br i1 %cmp.i.not.i467, label %if.then11.i.if.end17.i_crit_edge, label %if.then13.i

if.then11.i.if.end17.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i

if.then13.i:                                      ; preds = %if.then11.i
  %add.ptr.i468 = getelementptr i8, ptr %234, i32 -4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %234) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then13.i.list_del.exit.i_crit_edge

if.then13.i.list_del.exit.i_crit_edge:            ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i469 = getelementptr inbounds %struct.list_head, ptr %234, i32 0, i32 1
  %235 = ptrtoint ptr %prev.i.i.i469 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %prev.i.i.i469, align 4
  %237 = ptrtoint ptr %234 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %234, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %238, i32 0, i32 1
  %239 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store ptr %236, ptr %prev1.i.i.i.i, align 4
  %240 = ptrtoint ptr %236 to i32
  call void @__asan_store4_noabort(i32 %240)
  store volatile ptr %238, ptr %236, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then13.i.list_del.exit.i_crit_edge
  %241 = ptrtoint ptr %234 to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr inttoptr (i32 256 to ptr), ptr %234, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %234, i32 0, i32 1
  %242 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %src_queue_cnt.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 13
  %243 = ptrtoint ptr %src_queue_cnt.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %src_queue_cnt.i, align 4
  %dec.i = add i32 %244, -1
  store i32 %dec.i, ptr %src_queue_cnt.i, align 4
  %245 = ptrtoint ptr %add.ptr.i468 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %add.ptr.i468, align 4
  tail call void @vb2_buffer_done(ptr noundef %246, i32 noundef 5) #7
  br label %if.end17.i

if.else.i470:                                     ; preds = %land.lhs.true9.i.if.else.i470_crit_edge, %if.then7.i.if.else.i470_crit_edge
  %247 = ptrtoint ptr %dpb_flush_flag.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 0, ptr %dpb_flush_flag.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.else.i470, %list_del.exit.i, %if.then11.i.if.end17.i_crit_edge
  %hw_lock.i471 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %214, i32 0, i32 25
  %call18.i472 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %hw_lock.i471) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i472)
  %cmp19.i = icmp eq i32 %call18.i472, 0
  br i1 %cmp19.i, label %do.end.i473, label %if.end17.i.if.end34.i_crit_edge, !prof !390

if.end17.i.if.end34.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

do.end.i473:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 587, i32 noundef 9, ptr noundef null) #7
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end.i473, %if.end17.i.if.end34.i_crit_edge
  tail call void @s5p_mfc_clock_off() #7
  %queue.i474 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %queue.i474, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %248 = ptrtoint ptr %mfc_ops.i444 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %mfc_ops.i444, align 4
  %tobool43.not.i = icmp eq ptr %249, null
  br i1 %tobool43.not.i, label %if.end34.i.sw.epilog_crit_edge, label %land.lhs.true44.i

if.end34.i.sw.epilog_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true44.i:                                ; preds = %if.end34.i
  %try_run.i475 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %249, i32 0, i32 13
  %250 = ptrtoint ptr %try_run.i475 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %try_run.i475, align 4
  %tobool46.not.i = icmp eq ptr %251, null
  br i1 %tobool46.not.i, label %land.lhs.true44.i.sw.epilog_crit_edge, label %cond.true47.i

land.lhs.true44.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

cond.true47.i:                                    ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %251(ptr noundef %214) #7
  br label %sw.epilog

if.else52.i:                                      ; preds = %cond.end.i463
  %hw_lock54.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %214, i32 0, i32 25
  %call55.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %hw_lock54.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp56.i = icmp eq i32 %call55.i, 0
  br i1 %cmp56.i, label %do.end72.i, label %if.else52.i.if.end78.i_crit_edge, !prof !390

if.else52.i.if.end78.i_crit_edge:                 ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78.i

do.end72.i:                                       ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 594, i32 noundef 9, ptr noundef null) #7
  br label %if.end78.i

if.end78.i:                                       ; preds = %do.end72.i, %if.else52.i.if.end78.i_crit_edge
  tail call void @s5p_mfc_clock_off() #7
  %queue86.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %queue86.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %sw.epilog

sw.bb175:                                         ; preds = %do.end32
  %252 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %mfc_ops, align 4
  %tobool177.not = icmp eq ptr %253, null
  br i1 %tobool177.not, label %sw.bb175.cond.end186_crit_edge, label %land.lhs.true178

sw.bb175.cond.end186_crit_edge:                   ; preds = %sw.bb175
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end186

land.lhs.true178:                                 ; preds = %sw.bb175
  %clear_int_flags180 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %253, i32 0, i32 14
  %254 = ptrtoint ptr %clear_int_flags180 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %clear_int_flags180, align 4
  %tobool181.not = icmp eq ptr %255, null
  br i1 %tobool181.not, label %land.lhs.true178.cond.end186_crit_edge, label %cond.true182

land.lhs.true178.cond.end186_crit_edge:           ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end186

cond.true182:                                     ; preds = %land.lhs.true178
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %255(ptr noundef %priv) #7
  br label %cond.end186

cond.end186:                                      ; preds = %cond.true182, %land.lhs.true178.cond.end186_crit_edge, %sw.bb175.cond.end186_crit_edge
  %int_type = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 4
  %256 = ptrtoint ptr %int_type to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 9, ptr %int_type, align 4
  %int_err = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 5
  %257 = ptrtoint ptr %int_err to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %cond21, ptr %int_err, align 4
  tail call fastcc void @s5p_mfc_handle_stream_complete(ptr noundef %5)
  br label %sw.epilog

do.body189:                                       ; preds = %do.end32
  %258 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %258)
  %cmp190 = icmp sgt i32 %258, 1
  br i1 %cmp190, label %do.end194, label %do.body189.do.end199_crit_edge

do.body189.do.end199_crit_edge:                   ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end199

do.end194:                                        ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #9
  %call196 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.57, i32 noundef 726) #10
  br label %do.end199

do.end199:                                        ; preds = %do.end194, %do.body189.do.end199_crit_edge
  %259 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %mfc_ops, align 4
  %tobool201.not = icmp eq ptr %260, null
  br i1 %tobool201.not, label %do.end199.sw.epilog_crit_edge, label %land.lhs.true202

do.end199.sw.epilog_crit_edge:                    ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true202:                                 ; preds = %do.end199
  %clear_int_flags204 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %260, i32 0, i32 14
  %261 = ptrtoint ptr %clear_int_flags204 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %clear_int_flags204, align 4
  %tobool205.not = icmp eq ptr %262, null
  br i1 %tobool205.not, label %land.lhs.true202.sw.epilog_crit_edge, label %cond.true206

land.lhs.true202.sw.epilog_crit_edge:             ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

cond.true206:                                     ; preds = %land.lhs.true202
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %262(ptr noundef %priv) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.true206, %land.lhs.true202.sw.epilog_crit_edge, %do.end199.sw.epilog_crit_edge, %cond.end186, %if.end78.i, %cond.true47.i, %land.lhs.true44.i.sw.epilog_crit_edge, %if.end34.i.sw.epilog_crit_edge, %sw.bb174.sw.epilog_crit_edge, %cond.end171, %cond.end166.i, %sw.bb139.sw.epilog_crit_edge, %if.else137, %cond.true132, %land.lhs.true129.sw.epilog_crit_edge, %if.end119.sw.epilog_crit_edge, %cond.end87, %if.end54
  tail call void @_raw_spin_unlock(ptr noundef %irqlock) #7
  %263 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %263)
  %cmp213 = icmp sgt i32 %263, 4
  br i1 %cmp213, label %do.end217, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end217:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.57, i32 noundef 730) #10
  br label %cleanup

irq_cleanup_hw.sink.split:                        ; preds = %cond.true146, %land.lhs.true143.irq_cleanup_hw.sink.split_crit_edge, %sw.bb140.irq_cleanup_hw.sink.split_crit_edge, %do.end32.irq_cleanup_hw.sink.split_crit_edge
  %.sink492 = phi i32 [ %call149, %cond.true146 ], [ -19, %land.lhs.true143.irq_cleanup_hw.sink.split_crit_edge ], [ -19, %sw.bb140.irq_cleanup_hw.sink.split_crit_edge ], [ -1, %do.end32.irq_cleanup_hw.sink.split_crit_edge ]
  %.sink.ph = phi i32 [ 101, %cond.true146 ], [ 101, %land.lhs.true143.irq_cleanup_hw.sink.split_crit_edge ], [ 101, %sw.bb140.irq_cleanup_hw.sink.split_crit_edge ], [ 0, %do.end32.irq_cleanup_hw.sink.split_crit_edge ]
  %inst_no155 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 17
  %264 = ptrtoint ptr %inst_no155 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 %.sink492, ptr %inst_no155, align 4
  br label %irq_cleanup_hw

irq_cleanup_hw:                                   ; preds = %irq_cleanup_hw.sink.split, %do.end32.irq_cleanup_hw_crit_edge
  %.sink = phi i32 [ 105, %do.end32.irq_cleanup_hw_crit_edge ], [ %.sink.ph, %irq_cleanup_hw.sink.split ]
  %state188 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 16
  %265 = ptrtoint ptr %state188 to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %.sink, ptr %state188, align 4
  %266 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %mfc_ops, align 4
  %tobool224.not = icmp eq ptr %267, null
  br i1 %tobool224.not, label %irq_cleanup_hw.cond.end233_crit_edge, label %land.lhs.true225

irq_cleanup_hw.cond.end233_crit_edge:             ; preds = %irq_cleanup_hw
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end233

land.lhs.true225:                                 ; preds = %irq_cleanup_hw
  %clear_int_flags227 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %267, i32 0, i32 14
  %268 = ptrtoint ptr %clear_int_flags227 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %clear_int_flags227, align 4
  %tobool228.not = icmp eq ptr %269, null
  br i1 %tobool228.not, label %land.lhs.true225.cond.end233_crit_edge, label %cond.true229

land.lhs.true225.cond.end233_crit_edge:           ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end233

cond.true229:                                     ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %269(ptr noundef %priv) #7
  br label %cond.end233

cond.end233:                                      ; preds = %cond.true229, %land.lhs.true225.cond.end233_crit_edge, %irq_cleanup_hw.cond.end233_crit_edge
  %int_type234 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 4
  %270 = ptrtoint ptr %int_type234 to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 %cond487, ptr %int_type234, align 4
  %int_err235 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 5
  %271 = ptrtoint ptr %int_err235 to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 %cond21, ptr %int_err235, align 4
  %int_cond = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 3
  %272 = ptrtoint ptr %int_cond to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 1, ptr %int_cond, align 4
  %hw_lock236 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %priv, i32 0, i32 25
  %call237 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %hw_lock236) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call237)
  %cmp238 = icmp eq i32 %call237, 0
  br i1 %cmp238, label %do.end243, label %cond.end233.if.end248_crit_edge

cond.end233.if.end248_crit_edge:                  ; preds = %cond.end233
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end248

do.end243:                                        ; preds = %cond.end233
  call void @__sanitizer_cov_trace_pc() #9
  %call245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.57, i32 noundef 738) #10
  br label %if.end248

if.end248:                                        ; preds = %do.end243, %cond.end233.if.end248_crit_edge
  tail call void @s5p_mfc_clock_off() #7
  %273 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %5, align 4
  %condlock.i476 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %274, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %condlock.i476) #7
  %num.i477 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 2
  %275 = ptrtoint ptr %num.i477 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %num.i477, align 4
  %ctx_work_bits.i478 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %274, i32 0, i32 28
  %rem.i.i479 = and i32 %276, 31
  %shl.i.i480 = shl nuw i32 1, %rem.i.i479
  %div2.i.i481 = lshr i32 %276, 5
  %add.ptr.i.i482 = getelementptr i32, ptr %ctx_work_bits.i478, i32 %div2.i.i481
  %neg.i.i483 = xor i32 %shl.i.i480, -1
  %277 = ptrtoint ptr %add.ptr.i.i482 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %add.ptr.i.i482, align 4
  %and.i.i484 = and i32 %278, %neg.i.i483
  store i32 %and.i.i484, ptr %add.ptr.i.i482, align 4
  tail call void @_raw_spin_unlock(ptr noundef %condlock.i476) #7
  %queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %5, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %279 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %mfc_ops, align 4
  %tobool250.not = icmp eq ptr %280, null
  br i1 %tobool250.not, label %if.end248.cond.end259_crit_edge, label %land.lhs.true251

if.end248.cond.end259_crit_edge:                  ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end259

land.lhs.true251:                                 ; preds = %if.end248
  %try_run253 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %280, i32 0, i32 13
  %281 = ptrtoint ptr %try_run253 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %try_run253, align 4
  %tobool254.not = icmp eq ptr %282, null
  br i1 %tobool254.not, label %land.lhs.true251.cond.end259_crit_edge, label %cond.true255

land.lhs.true251.cond.end259_crit_edge:           ; preds = %land.lhs.true251
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end259

cond.true255:                                     ; preds = %land.lhs.true251
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %282(ptr noundef %priv) #7
  br label %cond.end259

cond.end259:                                      ; preds = %cond.true255, %land.lhs.true251.cond.end259_crit_edge, %if.end248.cond.end259_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %irqlock) #7
  %283 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %283)
  %cmp262 = icmp sgt i32 %283, 1
  br i1 %cmp262, label %do.end266, label %cond.end259.cleanup_crit_edge

cond.end259.cleanup_crit_edge:                    ; preds = %cond.end259
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end266:                                        ; preds = %cond.end259
  call void @__sanitizer_cov_trace_pc() #9
  %call268 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.57, i32 noundef 746) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end266, %cond.end259.cleanup_crit_edge, %do.end217, %sw.epilog.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_init_pm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_load_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_watchdog_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -940
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i32 noundef 174) #10
  %mfc_mutex = getelementptr i8, ptr %work, i32 -284
  %call5 = tail call i32 @mutex_trylock(ptr noundef %mfc_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %do.end9, label %entry.do.body15_crit_edge

entry.do.body15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15

do.end9:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.109, i32 noundef 179) #10
  br label %do.body15

do.body15:                                        ; preds = %do.end9, %entry.do.body15_crit_edge
  %irqlock = getelementptr i8, ptr %work, i32 -372
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #7
  tail call void @s5p_mfc_clock_off() #7
  %ctx25 = getelementptr i8, ptr %work, i32 -80
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body15
  %i.0105 = phi i32 [ 0, %do.body15 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr %ctx25, i32 0, i32 %i.0105
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool26.not = icmp eq ptr %1, null
  br i1 %tobool26.not, label %for.body.for.inc_crit_edge, label %if.end28

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end28:                                         ; preds = %for.body
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 109, ptr %state, align 4
  %dst_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %dst_queue to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %dst_queue, align 4
  %cmp.i.not16.i = icmp eq ptr %4, %dst_queue
  br i1 %cmp.i.not16.i, label %if.end28.s5p_mfc_cleanup_queue.exit_crit_edge, label %if.end28.while.body.i_crit_edge

if.end28.while.body.i_crit_edge:                  ; preds = %if.end28
  br label %while.body.i

if.end28.s5p_mfc_cleanup_queue.exit_crit_edge:    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5p_mfc_cleanup_queue.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.end28.while.body.i_crit_edge
  %5 = phi ptr [ %25, %list_del.exit.i.while.body.i_crit_edge ], [ %4, %if.end28.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %5, i32 -4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 4
  %num_planes13.i = getelementptr inbounds %struct.vb2_buffer, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %num_planes13.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes13.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14.not.i = icmp eq i32 %9, 0
  br i1 %cmp14.not.i, label %while.body.i.for.end.i_crit_edge, label %while.body.i.vb2_set_plane_payload.exit.i_crit_edge

while.body.i.vb2_set_plane_payload.exit.i_crit_edge: ; preds = %while.body.i
  br label %vb2_set_plane_payload.exit.i

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

vb2_set_plane_payload.exit.i:                     ; preds = %vb2_set_plane_payload.exit.i.vb2_set_plane_payload.exit.i_crit_edge, %while.body.i.vb2_set_plane_payload.exit.i_crit_edge
  %10 = phi ptr [ %13, %vb2_set_plane_payload.exit.i.vb2_set_plane_payload.exit.i_crit_edge ], [ %7, %while.body.i.vb2_set_plane_payload.exit.i_crit_edge ]
  %i.015.i = phi i32 [ %inc.i, %vb2_set_plane_payload.exit.i.vb2_set_plane_payload.exit.i_crit_edge ], [ 0, %while.body.i.vb2_set_plane_payload.exit.i_crit_edge ]
  %bytesused.i.i = getelementptr %struct.vb2_buffer, ptr %10, i32 0, i32 10, i32 %i.015.i, i32 3
  %11 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bytesused.i.i, align 4
  %inc.i = add nuw i32 %i.015.i, 1
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_planes.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %15
  br i1 %cmp.i, label %vb2_set_plane_payload.exit.i.vb2_set_plane_payload.exit.i_crit_edge, label %vb2_set_plane_payload.exit.i.for.end.i_crit_edge

vb2_set_plane_payload.exit.i.for.end.i_crit_edge: ; preds = %vb2_set_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

vb2_set_plane_payload.exit.i.vb2_set_plane_payload.exit.i_crit_edge: ; preds = %vb2_set_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_set_plane_payload.exit.i

for.end.i:                                        ; preds = %vb2_set_plane_payload.exit.i.for.end.i_crit_edge, %while.body.i.for.end.i_crit_edge
  %.lcssa.i = phi ptr [ %7, %while.body.i.for.end.i_crit_edge ], [ %13, %vb2_set_plane_payload.exit.i.for.end.i_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef %.lcssa.i, i32 noundef 6) #7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.i.list_del.exit.i_crit_edge

for.end.i.list_del.exit.i_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.end.i.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %dst_queue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %dst_queue, align 4
  %cmp.i.not.i = icmp eq ptr %25, %dst_queue
  br i1 %cmp.i.not.i, label %list_del.exit.i.s5p_mfc_cleanup_queue.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

list_del.exit.i.s5p_mfc_cleanup_queue.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5p_mfc_cleanup_queue.exit

s5p_mfc_cleanup_queue.exit:                       ; preds = %list_del.exit.i.s5p_mfc_cleanup_queue.exit_crit_edge, %if.end28.s5p_mfc_cleanup_queue.exit_crit_edge
  %src_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %src_queue to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %src_queue, align 4
  %cmp.i.not16.i83 = icmp eq ptr %27, %src_queue
  br i1 %cmp.i.not16.i83, label %s5p_mfc_cleanup_queue.exit.s5p_mfc_cleanup_queue.exit103_crit_edge, label %s5p_mfc_cleanup_queue.exit.while.body.i87_crit_edge

s5p_mfc_cleanup_queue.exit.while.body.i87_crit_edge: ; preds = %s5p_mfc_cleanup_queue.exit
  br label %while.body.i87

s5p_mfc_cleanup_queue.exit.s5p_mfc_cleanup_queue.exit103_crit_edge: ; preds = %s5p_mfc_cleanup_queue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5p_mfc_cleanup_queue.exit103

while.body.i87:                                   ; preds = %list_del.exit.i102.while.body.i87_crit_edge, %s5p_mfc_cleanup_queue.exit.while.body.i87_crit_edge
  %28 = phi ptr [ %48, %list_del.exit.i102.while.body.i87_crit_edge ], [ %27, %s5p_mfc_cleanup_queue.exit.while.body.i87_crit_edge ]
  %add.ptr.i84 = getelementptr i8, ptr %28, i32 -4
  %29 = ptrtoint ptr %add.ptr.i84 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i84, align 4
  %num_planes13.i85 = getelementptr inbounds %struct.vb2_buffer, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %num_planes13.i85 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_planes13.i85, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp14.not.i86 = icmp eq i32 %32, 0
  br i1 %cmp14.not.i86, label %while.body.i87.for.end.i96_crit_edge, label %while.body.i87.vb2_set_plane_payload.exit.i93_crit_edge

while.body.i87.vb2_set_plane_payload.exit.i93_crit_edge: ; preds = %while.body.i87
  br label %vb2_set_plane_payload.exit.i93

while.body.i87.for.end.i96_crit_edge:             ; preds = %while.body.i87
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i96

vb2_set_plane_payload.exit.i93:                   ; preds = %vb2_set_plane_payload.exit.i93.vb2_set_plane_payload.exit.i93_crit_edge, %while.body.i87.vb2_set_plane_payload.exit.i93_crit_edge
  %33 = phi ptr [ %36, %vb2_set_plane_payload.exit.i93.vb2_set_plane_payload.exit.i93_crit_edge ], [ %30, %while.body.i87.vb2_set_plane_payload.exit.i93_crit_edge ]
  %i.015.i88 = phi i32 [ %inc.i90, %vb2_set_plane_payload.exit.i93.vb2_set_plane_payload.exit.i93_crit_edge ], [ 0, %while.body.i87.vb2_set_plane_payload.exit.i93_crit_edge ]
  %bytesused.i.i89 = getelementptr %struct.vb2_buffer, ptr %33, i32 0, i32 10, i32 %i.015.i88, i32 3
  %34 = ptrtoint ptr %bytesused.i.i89 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %bytesused.i.i89, align 4
  %inc.i90 = add nuw i32 %i.015.i88, 1
  %35 = ptrtoint ptr %add.ptr.i84 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i84, align 4
  %num_planes.i91 = getelementptr inbounds %struct.vb2_buffer, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %num_planes.i91 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_planes.i91, align 8
  %cmp.i92 = icmp ult i32 %inc.i90, %38
  br i1 %cmp.i92, label %vb2_set_plane_payload.exit.i93.vb2_set_plane_payload.exit.i93_crit_edge, label %vb2_set_plane_payload.exit.i93.for.end.i96_crit_edge

vb2_set_plane_payload.exit.i93.for.end.i96_crit_edge: ; preds = %vb2_set_plane_payload.exit.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i96

vb2_set_plane_payload.exit.i93.vb2_set_plane_payload.exit.i93_crit_edge: ; preds = %vb2_set_plane_payload.exit.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_set_plane_payload.exit.i93

for.end.i96:                                      ; preds = %vb2_set_plane_payload.exit.i93.for.end.i96_crit_edge, %while.body.i87.for.end.i96_crit_edge
  %.lcssa.i94 = phi ptr [ %30, %while.body.i87.for.end.i96_crit_edge ], [ %36, %vb2_set_plane_payload.exit.i93.for.end.i96_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef %.lcssa.i94, i32 noundef 6) #7
  %call.i.i.i95 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %28) #7
  br i1 %call.i.i.i95, label %if.end.i.i.i99, label %for.end.i96.list_del.exit.i102_crit_edge

for.end.i96.list_del.exit.i102_crit_edge:         ; preds = %for.end.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i102

if.end.i.i.i99:                                   ; preds = %for.end.i96
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i97 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i97, align 4
  %41 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %28, align 4
  %prev1.i.i.i.i98 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i98, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i102

list_del.exit.i102:                               ; preds = %if.end.i.i.i99, %for.end.i96.list_del.exit.i102_crit_edge
  %45 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  %prev.i.i100 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i100 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i100, align 4
  %47 = ptrtoint ptr %src_queue to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %src_queue, align 4
  %cmp.i.not.i101 = icmp eq ptr %48, %src_queue
  br i1 %cmp.i.not.i101, label %list_del.exit.i102.s5p_mfc_cleanup_queue.exit103_crit_edge, label %list_del.exit.i102.while.body.i87_crit_edge

list_del.exit.i102.while.body.i87_crit_edge:      ; preds = %list_del.exit.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i87

list_del.exit.i102.s5p_mfc_cleanup_queue.exit103_crit_edge: ; preds = %list_del.exit.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %s5p_mfc_cleanup_queue.exit103

s5p_mfc_cleanup_queue.exit103:                    ; preds = %list_del.exit.i102.s5p_mfc_cleanup_queue.exit103_crit_edge, %s5p_mfc_cleanup_queue.exit.s5p_mfc_cleanup_queue.exit103_crit_edge
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %condlock.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %50, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %condlock.i) #7
  %num.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num.i, align 4
  %ctx_work_bits.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %50, i32 0, i32 28
  %rem.i.i = and i32 %52, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %52, 5
  %add.ptr.i.i = getelementptr i32, ptr %ctx_work_bits.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %53 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %54, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %condlock.i) #7
  %int_cond.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %int_cond.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %int_cond.i, align 4
  %int_type.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %1, i32 0, i32 4
  %56 = ptrtoint ptr %int_type.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 32, ptr %int_type.i, align 4
  %int_err.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %1, i32 0, i32 5
  %57 = ptrtoint ptr %int_err.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %int_err.i, align 4
  %queue.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %1, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %queue.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %for.inc

for.inc:                                          ; preds = %s5p_mfc_cleanup_queue.exit103, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %hw_lock = getelementptr i8, ptr %work, i32 -84
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %hw_lock) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call18) #7
  tail call void @s5p_mfc_deinit_hw(ptr noundef %add.ptr) #7
  %num_inst = getelementptr i8, ptr %work, i32 -376
  %58 = ptrtoint ptr %num_inst to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_inst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp30 = icmp sgt i32 %59, 0
  br i1 %cmp30, label %if.then32, label %for.end.unlock_crit_edge

for.end.unlock_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then32:                                        ; preds = %for.end
  %call33 = tail call i32 @s5p_mfc_load_firmware(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end44, label %do.end39

do.end39:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.109, i32 noundef 205) #10
  br label %unlock

if.end44:                                         ; preds = %if.then32
  %call45 = tail call i32 @s5p_mfc_clock_on() #7
  %call46 = tail call i32 @s5p_mfc_init_hw(ptr noundef %add.ptr) #7
  tail call void @s5p_mfc_clock_off() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end44.unlock_crit_edge, label %do.end52

if.end44.unlock_crit_edge:                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

do.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.109, i32 noundef 212) #10
  br label %unlock

unlock:                                           ; preds = %do.end52, %if.end44.unlock_crit_edge, %do.end39, %for.end.unlock_crit_edge
  br i1 %tobool.not, label %unlock.if.end62_crit_edge, label %if.then60

unlock.if.end62_crit_edge:                        ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then60:                                        ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %mfc_mutex) #7
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %unlock.if.end62_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_watchdog(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %hw_lock = getelementptr i8, ptr %t, i32 -32
  %0 = ptrtoint ptr %hw_lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %hw_lock, align 4
  %and1.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %watchdog_cnt = getelementptr i8, ptr %t, i32 -4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %watchdog_cnt, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %watchdog_cnt, i32 1, i32 3, i32 1) #7
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %watchdog_cnt, ptr %watchdog_cnt, i32 1, ptr elementtype(i32) %watchdog_cnt) #7, !srcloc !391
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %watchdog_cnt1 = getelementptr i8, ptr %t, i32 -4
  %call.i.i18 = tail call zeroext i1 @__kasan_check_read(ptr noundef %watchdog_cnt1, i32 noundef 4) #7
  %3 = ptrtoint ptr %watchdog_cnt1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %watchdog_cnt1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %4)
  %cmp = icmp sgt i32 %4, 9
  br i1 %cmp, label %do.end, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, i32 noundef 156) #10
  %watchdog_work = getelementptr i8, ptr %t, i32 52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i19 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %watchdog_work) #7
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.end.if.end10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %6, 100
  %expires = getelementptr inbounds %struct.timer_list, ptr %t, i32 0, i32 1
  %7 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %t) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_dec_v4l2_ioctl_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_enc_v4l2_ioctl_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_init_hw_ops(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_init_hw_cmds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_init_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_final_pm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_handle_frame(ptr noundef %ctx, i32 noundef %reason, i32 noundef %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mfc_ops, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cond.end30_crit_edge, label %land.lhs.true

entry.cond.end30_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end30

land.lhs.true:                                    ; preds = %entry
  %get_dspl_status = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %get_dspl_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_dspl_status, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %5(ptr noundef %1) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge
  %cond.ph = phi i32 [ -19, %land.lhs.true.cond.end_crit_edge ], [ %call, %cond.true ]
  %6 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load ptr, ptr %mfc_ops, align 4
  %and = and i32 %cond.ph, 7
  %tobool7.not = icmp eq ptr %.pr, null
  br i1 %tobool7.not, label %cond.end.cond.end30_crit_edge, label %land.lhs.true8

cond.end.cond.end30_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end30

land.lhs.true8:                                   ; preds = %cond.end
  %get_dec_status = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %.pr, i32 0, i32 18
  %7 = ptrtoint ptr %get_dec_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %get_dec_status, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %land.lhs.true8.cond.end16_crit_edge, label %cond.true11

land.lhs.true8.cond.end16_crit_edge:              ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end16

cond.true11:                                      ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 %8(ptr noundef %1) #7
  br label %cond.end16

cond.end16:                                       ; preds = %cond.true11, %land.lhs.true8.cond.end16_crit_edge
  %cond17.ph = phi i32 [ -19, %land.lhs.true8.cond.end16_crit_edge ], [ %call14, %cond.true11 ]
  %9 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr415 = load ptr, ptr %mfc_ops, align 4
  %and18 = and i32 %cond17.ph, 7
  %tobool20.not = icmp eq ptr %.pr415, null
  br i1 %tobool20.not, label %cond.end16.cond.end30_crit_edge, label %land.lhs.true21

cond.end16.cond.end30_crit_edge:                  ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end30

land.lhs.true21:                                  ; preds = %cond.end16
  %get_dspl_status23 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %.pr415, i32 0, i32 17
  %10 = ptrtoint ptr %get_dspl_status23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_dspl_status23, align 4
  %tobool24.not = icmp eq ptr %11, null
  br i1 %tobool24.not, label %land.lhs.true21.cond.end30_crit_edge, label %cond.true25

land.lhs.true21.cond.end30_crit_edge:             ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end30

cond.true25:                                      ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call i32 %11(ptr noundef %1) #7
  br label %cond.end30

cond.end30:                                       ; preds = %cond.true25, %land.lhs.true21.cond.end30_crit_edge, %cond.end16.cond.end30_crit_edge, %cond.end.cond.end30_crit_edge, %entry.cond.end30_crit_edge
  %and18421 = phi i32 [ %and18, %cond.true25 ], [ %and18, %land.lhs.true21.cond.end30_crit_edge ], [ %and18, %cond.end16.cond.end30_crit_edge ], [ 5, %cond.end.cond.end30_crit_edge ], [ 5, %entry.cond.end30_crit_edge ]
  %and413420 = phi i32 [ %and, %cond.true25 ], [ %and, %land.lhs.true21.cond.end30_crit_edge ], [ %and, %cond.end16.cond.end30_crit_edge ], [ %and, %cond.end.cond.end30_crit_edge ], [ 5, %entry.cond.end30_crit_edge ]
  %cond31 = phi i32 [ %call28, %cond.true25 ], [ -19, %land.lhs.true21.cond.end30_crit_edge ], [ -19, %cond.end16.cond.end30_crit_edge ], [ -19, %cond.end.cond.end30_crit_edge ], [ -19, %entry.cond.end30_crit_edge ]
  %and32 = lshr i32 %cond31, 4
  %12 = and i32 %and32, 3
  %13 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp = icmp sgt i32 %13, 1
  br i1 %cmp, label %do.end, label %cond.end30.do.end36_crit_edge

cond.end30.do.end36_crit_edge:                    ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end36

do.end:                                           ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77, i32 noundef 375, i32 noundef %and413420) #10
  br label %do.end36

do.end36:                                         ; preds = %do.end, %cond.end30.do.end36_crit_edge
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 112, i32 %15)
  %cmp37 = icmp eq i32 %15, 112
  br i1 %cmp37, label %if.then38, label %do.end36.if.end40_crit_edge

do.end36.if.end40_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then38:                                        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 113, ptr %state, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %do.end36.if.end40_crit_edge
  %.off = add nsw i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then43, label %if.end92

if.then43:                                        ; preds = %if.end40
  %17 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 112, ptr %state, align 4
  %18 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mfc_ops, align 4
  %tobool46.not = icmp eq ptr %19, null
  br i1 %tobool46.not, label %if.then43.cond.end54_crit_edge, label %land.lhs.true47

if.then43.cond.end54_crit_edge:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end54

land.lhs.true47:                                  ; preds = %if.then43
  %clear_int_flags = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %clear_int_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clear_int_flags, align 4
  %tobool49.not = icmp eq ptr %21, null
  br i1 %tobool49.not, label %land.lhs.true47.cond.end54_crit_edge, label %cond.true50

land.lhs.true47.cond.end54_crit_edge:             ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end54

cond.true50:                                      ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %21(ptr noundef %1) #7
  br label %cond.end54

cond.end54:                                       ; preds = %cond.true50, %land.lhs.true47.cond.end54_crit_edge, %if.then43.cond.end54_crit_edge
  %int_cond.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 3
  %22 = ptrtoint ptr %int_cond.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %int_cond.i, align 4
  %int_type.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 4
  %23 = ptrtoint ptr %int_type.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %reason, ptr %int_type.i, align 4
  %int_err.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 5
  %24 = ptrtoint ptr %int_err.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %err, ptr %int_err.i, align 4
  %queue.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %queue.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %hw_lock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 25
  %call55 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %hw_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %do.end68, label %cond.end54.if.end74_crit_edge, !prof !390

cond.end54.if.end74_crit_edge:                    ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

do.end68:                                         ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 383, i32 noundef 9, ptr noundef null) #7
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %cond.end54.if.end74_crit_edge
  tail call void @s5p_mfc_clock_off() #7
  %25 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mfc_ops, align 4
  %tobool83.not = icmp eq ptr %26, null
  br i1 %tobool83.not, label %if.end74.cleanup_crit_edge, label %land.lhs.true84

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true84:                                  ; preds = %if.end74
  %try_run = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %26, i32 0, i32 13
  %27 = ptrtoint ptr %try_run to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %try_run, align 4
  %tobool86.not = icmp eq ptr %28, null
  br i1 %tobool86.not, label %land.lhs.true84.cleanup_crit_edge, label %cond.true87

land.lhs.true84.cleanup_crit_edge:                ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.true87:                                      ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %28(ptr noundef %1) #7
  br label %cleanup

if.end92:                                         ; preds = %if.end40
  %dpb_flush_flag = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 26
  %29 = ptrtoint ptr %dpb_flush_flag to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dpb_flush_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool93.not = icmp eq i32 %30, 0
  br i1 %tobool93.not, label %if.end92.if.end96_crit_edge, label %if.then94

if.end92.if.end96_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then94:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %dpb_flush_flag to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %dpb_flush_flag, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end92.if.end96_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and413420)
  %cmp97 = icmp eq i32 %and413420, 3
  br i1 %cmp97, label %if.then98, label %if.end96.if.end104_crit_edge

if.end96.if.end104_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then98:                                        ; preds = %if.end96
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 113, i32 %33)
  %cmp100 = icmp eq i32 %33, 113
  tail call fastcc void @s5p_mfc_handle_frame_all_extracted(ptr noundef %ctx)
  br i1 %cmp100, label %if.then101, label %if.then98.if.end104_crit_edge

if.then98.if.end104_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then101:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 114, ptr %state, align 4
  %fh = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 1
  tail call void @v4l2_event_queue_fh(ptr noundef %fh, ptr noundef nonnull @s5p_mfc_handle_frame.ev_src_ch) #7
  br label %leave_handle_frame

if.end104:                                        ; preds = %if.then98.if.end104_crit_edge, %if.end96.if.end104_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and18421)
  %cmp105 = icmp eq i32 %and18421, 1
  br i1 %cmp105, label %if.then106, label %if.end104.if.end107_crit_edge

if.end104.if.end107_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then106:                                       ; preds = %if.end104
  %35 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx, align 4
  %mfc_ops.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %36, i32 0, i32 36
  %37 = ptrtoint ptr %mfc_ops.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mfc_ops.i, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %if.then106.cond.end16.i_crit_edge, label %land.lhs.true.i

if.then106.cond.end16.i_crit_edge:                ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end16.i

land.lhs.true.i:                                  ; preds = %if.then106
  %get_dec_frame_type.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %38, i32 0, i32 19
  %39 = ptrtoint ptr %get_dec_frame_type.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_dec_frame_type.i, align 4
  %tobool3.not.i = icmp eq ptr %40, null
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %cond.end.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cond.end.i:                                       ; preds = %land.lhs.true.i
  %call.i = tail call i32 %40(ptr noundef %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %cond.end.i.if.end107_crit_edge, label %cond.end.i.if.end.i_crit_edge

cond.end.i.if.end.i_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

cond.end.i.if.end107_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.end.i:                                         ; preds = %cond.end.i.if.end.i_crit_edge, %land.lhs.true.i.if.end.i_crit_edge
  %cond101.ph.i = phi i32 [ -19, %land.lhs.true.i.if.end.i_crit_edge ], [ %call.i, %cond.end.i.if.end.i_crit_edge ]
  %41 = ptrtoint ptr %mfc_ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pr.i = load ptr, ptr %mfc_ops.i, align 4
  %tobool7.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool7.not.i, label %if.end.i.cond.end16.i_crit_edge, label %land.lhs.true8.i

if.end.i.cond.end16.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end16.i

land.lhs.true8.i:                                 ; preds = %if.end.i
  %get_dec_y_adr.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %.pr.i, i32 0, i32 16
  %42 = ptrtoint ptr %get_dec_y_adr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_dec_y_adr.i, align 4
  %tobool10.not.i = icmp eq ptr %43, null
  br i1 %tobool10.not.i, label %land.lhs.true8.i.cond.end16.i_crit_edge, label %cond.true11.i

land.lhs.true8.i.cond.end16.i_crit_edge:          ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end16.i

cond.true11.i:                                    ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  %call14.i = tail call i32 %43(ptr noundef %36) #7
  br label %cond.end16.i

cond.end16.i:                                     ; preds = %cond.true11.i, %land.lhs.true8.i.cond.end16.i_crit_edge, %if.end.i.cond.end16.i_crit_edge, %if.then106.cond.end16.i_crit_edge
  %cond101106.i = phi i32 [ %cond101.ph.i, %cond.true11.i ], [ %cond101.ph.i, %land.lhs.true8.i.cond.end16.i_crit_edge ], [ %cond101.ph.i, %if.end.i.cond.end16.i_crit_edge ], [ -19, %if.then106.cond.end16.i_crit_edge ]
  %cond17.i = phi i32 [ %call14.i, %cond.true11.i ], [ -19, %land.lhs.true8.i.cond.end16.i_crit_edge ], [ -19, %if.end.i.cond.end16.i_crit_edge ], [ -19, %if.then106.cond.end16.i_crit_edge ]
  %src_queue.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 11
  %44 = ptrtoint ptr %src_queue.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %src_queue.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 -4
  %dst_queue.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 12
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %cond.end16.i
  %.pn.in.i = phi ptr [ %dst_queue.i, %cond.end16.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %46 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp23.not.i = icmp eq ptr %.pn.i, %dst_queue.i
  br i1 %cmp23.not.i, label %for.cond.i.if.end107_crit_edge, label %for.body.i

for.cond.i.if.end107_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

for.body.i:                                       ; preds = %for.cond.i
  %dst_buf.0.i = getelementptr i8, ptr %.pn.i, i32 -4
  %47 = ptrtoint ptr %dst_buf.0.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dst_buf.0.i, align 4
  %call.i.i = tail call ptr @vb2_plane_cookie(ptr noundef %48, i32 noundef 0) #7
  %49 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %call.i.i, align 4
  %cmp25.i = icmp eq i32 %50, %cond17.i
  br i1 %cmp25.i, label %if.then26.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.then26.i:                                      ; preds = %for.body.i
  %dst_buf.0.i.le = getelementptr i8, ptr %.pn.i, i32 -4
  %51 = ptrtoint ptr %dst_buf.0.i.le to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dst_buf.0.i.le, align 4
  %timecode.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %add.ptr.i, align 4
  %timecode29.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %54, i32 0, i32 3
  %55 = call ptr @memcpy(ptr %timecode.i, ptr %timecode29.i, i32 16)
  %56 = load ptr, ptr %add.ptr.i, align 4
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %timestamp.i, align 8
  %59 = load ptr, ptr %dst_buf.0.i.le, align 4
  %timestamp34.i = getelementptr inbounds %struct.vb2_buffer, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %timestamp34.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %58, ptr %timestamp34.i, align 8
  %61 = load ptr, ptr %dst_buf.0.i.le, align 4
  %flags.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %63, -458753
  store i32 %and.i, ptr %flags.i, align 8
  %64 = load ptr, ptr %add.ptr.i, align 4
  %flags37.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %flags37.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags37.i, align 8
  %and38.i = and i32 %66, 458752
  %67 = load ptr, ptr %dst_buf.0.i.le, align 4
  %flags40.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %flags40.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %flags40.i, align 8
  %or.i = or i32 %69, %and38.i
  store i32 %or.i, ptr %flags40.i, align 8
  %70 = zext i32 %cond101106.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %cond101106.i, label %do.body.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb44.i
    i32 3, label %sw.bb48.i
  ]

sw.bb.i:                                          ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %dst_buf.0.i.le to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dst_buf.0.i.le, align 4
  %flags42.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %flags42.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %flags42.i, align 8
  %or43.i = or i32 %74, 8
  store i32 %or43.i, ptr %flags42.i, align 8
  br label %if.end107

sw.bb44.i:                                        ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %dst_buf.0.i.le to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dst_buf.0.i.le, align 4
  %flags46.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %flags46.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags46.i, align 8
  %or47.i = or i32 %78, 16
  store i32 %or47.i, ptr %flags46.i, align 8
  br label %if.end107

sw.bb48.i:                                        ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %dst_buf.0.i.le to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dst_buf.0.i.le, align 4
  %flags50.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %flags50.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags50.i, align 8
  %or51.i = or i32 %82, 32
  store i32 %or51.i, ptr %flags50.i, align 8
  br label %if.end107

do.body.i:                                        ; preds = %if.then26.i
  %83 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp52.i = icmp sgt i32 %83, 1
  br i1 %cmp52.i, label %do.end.i, label %do.body.i.if.end107_crit_edge

do.body.i.if.end107_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, i32 noundef 295, i32 noundef %cond101106.i) #10
  br label %if.end107

if.end107:                                        ; preds = %do.end.i, %do.body.i.if.end107_crit_edge, %sw.bb48.i, %sw.bb44.i, %sw.bb.i, %for.cond.i.if.end107_crit_edge, %cond.end.i.if.end107_crit_edge, %if.end104.if.end107_crit_edge
  %and.off = add nsw i32 %and413420, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.off)
  %switch380 = icmp ult i32 %and.off, 2
  br i1 %switch380, label %if.then111, label %do.body113

if.then111:                                       ; preds = %if.end107
  %84 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ctx, align 4
  %mfc_ops.i381 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %85, i32 0, i32 36
  %86 = ptrtoint ptr %mfc_ops.i381 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mfc_ops.i381, align 4
  %tobool.not.i382 = icmp eq ptr %87, null
  br i1 %tobool.not.i382, label %if.then111.cond.end.i387_crit_edge, label %land.lhs.true.i384

if.then111.cond.end.i387_crit_edge:               ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i387

land.lhs.true.i384:                               ; preds = %if.then111
  %get_dspl_y_adr.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %87, i32 0, i32 15
  %88 = ptrtoint ptr %get_dspl_y_adr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %get_dspl_y_adr.i, align 4
  %tobool3.not.i383 = icmp eq ptr %89, null
  br i1 %tobool3.not.i383, label %land.lhs.true.i384.cond.end.i387thread-pre-split_crit_edge, label %cond.true.i

land.lhs.true.i384.cond.end.i387thread-pre-split_crit_edge: ; preds = %land.lhs.true.i384
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i387thread-pre-split

cond.true.i:                                      ; preds = %land.lhs.true.i384
  call void @__sanitizer_cov_trace_pc() #9
  %call.i385 = tail call i32 %89(ptr noundef %85) #7
  br label %cond.end.i387thread-pre-split

cond.end.i387thread-pre-split:                    ; preds = %cond.true.i, %land.lhs.true.i384.cond.end.i387thread-pre-split_crit_edge
  %cond.i.ph = phi i32 [ -19, %land.lhs.true.i384.cond.end.i387thread-pre-split_crit_edge ], [ %call.i385, %cond.true.i ]
  %90 = ptrtoint ptr %mfc_ops.i381 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr422 = load ptr, ptr %mfc_ops.i381, align 4
  br label %cond.end.i387

cond.end.i387:                                    ; preds = %cond.end.i387thread-pre-split, %if.then111.cond.end.i387_crit_edge
  %91 = phi ptr [ %.pr422, %cond.end.i387thread-pre-split ], [ null, %if.then111.cond.end.i387_crit_edge ]
  %cond.i = phi i32 [ %cond.i.ph, %cond.end.i387thread-pre-split ], [ -19, %if.then111.cond.end.i387_crit_edge ]
  %variant.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %85, i32 0, i32 10
  %92 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %variant.i, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 95, i32 %95)
  %cmp.i386 = icmp ugt i32 %95, 95
  %tobool9.not.i = icmp eq ptr %91, null
  br i1 %cmp.i386, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %cond.end.i387
  br i1 %tobool9.not.i, label %if.then.i.if.end38.i_crit_edge, label %land.lhs.true10.i

if.then.i.if.end38.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

land.lhs.true10.i:                                ; preds = %if.then.i
  %get_disp_frame_type.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %91, i32 0, i32 20
  %96 = ptrtoint ptr %get_disp_frame_type.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %get_disp_frame_type.i, align 4
  %tobool12.not.i = icmp eq ptr %97, null
  br i1 %tobool12.not.i, label %land.lhs.true10.i.if.end38.i_crit_edge, label %cond.true13.i

land.lhs.true10.i.if.end38.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

cond.true13.i:                                    ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  %call16.i = tail call i32 %97(ptr noundef %ctx) #7
  br label %if.end.i389

if.else.i:                                        ; preds = %cond.end.i387
  br i1 %tobool9.not.i, label %if.else.i.if.end38.i_crit_edge, label %land.lhs.true22.i

if.else.i.if.end38.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

land.lhs.true22.i:                                ; preds = %if.else.i
  %get_dec_frame_type.i388 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %91, i32 0, i32 19
  %98 = ptrtoint ptr %get_dec_frame_type.i388 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %get_dec_frame_type.i388, align 4
  %tobool24.not.i = icmp eq ptr %99, null
  br i1 %tobool24.not.i, label %land.lhs.true22.i.if.end38.i_crit_edge, label %cond.true25.i

land.lhs.true22.i.if.end38.i_crit_edge:           ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

cond.true25.i:                                    ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #9
  %call28.i = tail call i32 %99(ptr noundef %85) #7
  br label %if.end.i389

if.end.i389:                                      ; preds = %cond.true25.i, %cond.true13.i
  %frame_type.0.i = phi i32 [ %call16.i, %cond.true13.i ], [ %call28.i, %cond.true25.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frame_type.0.i)
  %cmp32.i = icmp eq i32 %frame_type.0.i, 0
  br i1 %cmp32.i, label %if.then33.i, label %if.end.i389.if.end38.i_crit_edge

if.end.i389.if.end38.i_crit_edge:                 ; preds = %if.end.i389
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.i

if.then33.i:                                      ; preds = %if.end.i389
  %after_packed_pb.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 44
  %100 = ptrtoint ptr %after_packed_pb.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %after_packed_pb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool34.not.i = icmp eq i32 %101, 0
  br i1 %tobool34.not.i, label %if.then35.i, label %if.then33.i.if.end36.i_crit_edge

if.then33.i.if.end36.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

if.then35.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  %sequence.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 36
  %102 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %sequence.i, align 4
  %inc.i = add i32 %103, 1
  store i32 %inc.i, ptr %sequence.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then35.i, %if.then33.i.if.end36.i_crit_edge
  %104 = ptrtoint ptr %after_packed_pb.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %after_packed_pb.i, align 4
  br label %if.end124

if.end38.i:                                       ; preds = %if.end.i389.if.end38.i_crit_edge, %land.lhs.true22.i.if.end38.i_crit_edge, %if.else.i.if.end38.i_crit_edge, %land.lhs.true10.i.if.end38.i_crit_edge, %if.then.i.if.end38.i_crit_edge
  %sequence39.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 36
  %105 = ptrtoint ptr %sequence39.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sequence39.i, align 4
  %inc40.i = add i32 %106, 1
  store i32 %inc40.i, ptr %sequence39.i, align 4
  %dst_queue.i390 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 12
  br label %for.cond.i393

for.cond.i393:                                    ; preds = %for.body.i396.for.cond.i393_crit_edge, %if.end38.i
  %.pn.in.i391 = phi ptr [ %dst_queue.i390, %if.end38.i ], [ %.pn.i392, %for.body.i396.for.cond.i393_crit_edge ]
  %107 = ptrtoint ptr %.pn.in.i391 to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pn.i392 = load ptr, ptr %.pn.in.i391, align 4
  %cmp42.not.i = icmp eq ptr %.pn.i392, %dst_queue.i390
  br i1 %cmp42.not.i, label %for.cond.i393.if.end124_crit_edge, label %for.body.i396

for.cond.i393.if.end124_crit_edge:                ; preds = %for.cond.i393
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

for.body.i396:                                    ; preds = %for.cond.i393
  %dst_buf.0.i394 = getelementptr i8, ptr %.pn.i392, i32 -4
  %108 = ptrtoint ptr %dst_buf.0.i394 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dst_buf.0.i394, align 4
  %call.i.i395 = tail call ptr @vb2_plane_cookie(ptr noundef %109, i32 noundef 0) #7
  %110 = ptrtoint ptr %call.i.i395 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %call.i.i395, align 4
  %cmp44.i = icmp eq i32 %111, %cond.i
  br i1 %cmp44.i, label %if.then45.i, label %for.body.i396.for.cond.i393_crit_edge

for.body.i396.for.cond.i393_crit_edge:            ; preds = %for.body.i396
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i393

if.then45.i:                                      ; preds = %for.body.i396
  %dst_buf.0.i394.le = getelementptr i8, ptr %.pn.i392, i32 -4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i392) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then45.i.list_del.exit.i_crit_edge

if.then45.i.list_del.exit.i_crit_edge:            ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i392, i32 0, i32 1
  %112 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i.i, align 4
  %114 = ptrtoint ptr %.pn.i392 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %.pn.i392, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev1.i.i.i.i, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %115, ptr %113, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then45.i.list_del.exit.i_crit_edge
  %118 = ptrtoint ptr %.pn.i392 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i392, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i392, i32 0, i32 1
  %119 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %dst_queue_cnt.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 14
  %120 = ptrtoint ptr %dst_queue_cnt.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %dst_queue_cnt.i, align 4
  %dec.i = add i32 %121, -1
  store i32 %dec.i, ptr %dst_queue_cnt.i, align 4
  %122 = ptrtoint ptr %sequence39.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %sequence39.i, align 4
  %124 = ptrtoint ptr %dst_buf.0.i394.le to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dst_buf.0.i394.le, align 4
  %sequence49.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %125, i32 0, i32 4
  %126 = ptrtoint ptr %sequence49.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %123, ptr %sequence49.i, align 8
  %127 = ptrtoint ptr %mfc_ops.i381 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %mfc_ops.i381, align 4
  %tobool51.not.i = icmp eq ptr %128, null
  br i1 %tobool51.not.i, label %list_del.exit.i.if.end80.i_crit_edge, label %land.lhs.true52.i

list_del.exit.i.if.end80.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80.i

land.lhs.true52.i:                                ; preds = %list_del.exit.i
  %get_pic_type_top.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %128, i32 0, i32 33
  %129 = ptrtoint ptr %get_pic_type_top.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %get_pic_type_top.i, align 4
  %tobool54.not.i = icmp eq ptr %130, null
  br i1 %tobool54.not.i, label %land.lhs.true52.i.cond.end60.i_crit_edge, label %cond.true55.i

land.lhs.true52.i.cond.end60.i_crit_edge:         ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end60.i

cond.true55.i:                                    ; preds = %land.lhs.true52.i
  call void @__sanitizer_cov_trace_pc() #9
  %call58.i = tail call i32 %130(ptr noundef %ctx) #7
  br label %cond.end60.i

cond.end60.i:                                     ; preds = %cond.true55.i, %land.lhs.true52.i.cond.end60.i_crit_edge
  %cond61.ph.i = phi i32 [ -19, %land.lhs.true52.i.cond.end60.i_crit_edge ], [ %call58.i, %cond.true55.i ]
  %131 = ptrtoint ptr %mfc_ops.i381 to i32
  call void @__asan_load4_noabort(i32 %131)
  %.pr.i398 = load ptr, ptr %mfc_ops.i381, align 4
  %tobool63.not.i = icmp eq ptr %.pr.i398, null
  br i1 %tobool63.not.i, label %cond.end60.i.cond.end72.i_crit_edge, label %land.lhs.true64.i

cond.end60.i.cond.end72.i_crit_edge:              ; preds = %cond.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end72.i

land.lhs.true64.i:                                ; preds = %cond.end60.i
  %get_pic_type_bot.i = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %.pr.i398, i32 0, i32 34
  %132 = ptrtoint ptr %get_pic_type_bot.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %get_pic_type_bot.i, align 4
  %tobool66.not.i = icmp eq ptr %133, null
  br i1 %tobool66.not.i, label %land.lhs.true64.i.cond.end72.i_crit_edge, label %cond.true67.i

land.lhs.true64.i.cond.end72.i_crit_edge:         ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end72.i

cond.true67.i:                                    ; preds = %land.lhs.true64.i
  call void @__sanitizer_cov_trace_pc() #9
  %call70.i = tail call i32 %133(ptr noundef %ctx) #7
  br label %cond.end72.i

cond.end72.i:                                     ; preds = %cond.true67.i, %land.lhs.true64.i.cond.end72.i_crit_edge, %cond.end60.i.cond.end72.i_crit_edge
  %cond73.i = phi i32 [ %call70.i, %cond.true67.i ], [ -19, %land.lhs.true64.i.cond.end72.i_crit_edge ], [ -19, %cond.end60.i.cond.end72.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond61.ph.i, i32 %cond73.i)
  %cmp74.i = icmp eq i32 %cond61.ph.i, %cond73.i
  %spec.select.i = select i1 %cmp74.i, i32 1, i32 4
  br label %if.end80.i

if.end80.i:                                       ; preds = %cond.end72.i, %list_del.exit.i.if.end80.i_crit_edge
  %.sink.i = phi i32 [ 1, %list_del.exit.i.if.end80.i_crit_edge ], [ %spec.select.i, %cond.end72.i ]
  %134 = ptrtoint ptr %dst_buf.0.i394.le to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dst_buf.0.i394.le, align 4
  %field79.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %field79.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %.sink.i, ptr %field79.i, align 4
  %137 = load ptr, ptr %dst_buf.0.i394.le, align 4
  %num_planes.i.i = getelementptr inbounds %struct.vb2_buffer, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %num_planes.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %num_planes.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp.i.not.i = icmp eq i32 %139, 0
  br i1 %cmp.i.not.i, label %if.end80.i.vb2_set_plane_payload.exit.i_crit_edge, label %if.then.i.i

if.end80.i.vb2_set_plane_payload.exit.i_crit_edge: ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_set_plane_payload.exit.i

if.then.i.i:                                      ; preds = %if.end80.i
  %luma_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 22
  %140 = ptrtoint ptr %luma_size.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %luma_size.i, align 4
  %length.i.i = getelementptr %struct.vb2_buffer, ptr %137, i32 0, i32 10, i32 0, i32 4
  %142 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %length.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %141)
  %cmp1.i.i = icmp ult i32 %143, %141
  br i1 %cmp1.i.i, label %land.rhs.i.i, label %if.then.i.i.if.end42.i.i_crit_edge

if.then.i.i.if.end42.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i.i

land.rhs.i.i:                                     ; preds = %if.then.i.i
  %.b55.i.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i.i, label %land.rhs.i.i.if.then38.i.i_crit_edge, label %if.then8.i.i, !prof !392

land.rhs.i.i.if.then38.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i.i

if.then8.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1163, i32 noundef 9, ptr noundef null) #7
  br label %if.then38.i.i

if.then38.i.i:                                    ; preds = %if.then8.i.i, %land.rhs.i.i.if.then38.i.i_crit_edge
  %144 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %length.i.i, align 8
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then38.i.i, %if.then.i.i.if.end42.i.i_crit_edge
  %size.addr.0.i.i = phi i32 [ %145, %if.then38.i.i ], [ %141, %if.then.i.i.if.end42.i.i_crit_edge ]
  %bytesused.i.i = getelementptr %struct.vb2_buffer, ptr %137, i32 0, i32 10, i32 0, i32 3
  %146 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %size.addr.0.i.i, ptr %bytesused.i.i, align 4
  br label %vb2_set_plane_payload.exit.i

vb2_set_plane_payload.exit.i:                     ; preds = %if.end42.i.i, %if.end80.i.vb2_set_plane_payload.exit.i_crit_edge
  %147 = ptrtoint ptr %dst_buf.0.i394.le to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dst_buf.0.i394.le, align 4
  %num_planes.i153.i = getelementptr inbounds %struct.vb2_buffer, ptr %148, i32 0, i32 4
  %149 = ptrtoint ptr %num_planes.i153.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %num_planes.i153.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %150)
  %cmp.i154.i = icmp ugt i32 %150, 1
  br i1 %cmp.i154.i, label %if.then.i157.i, label %vb2_set_plane_payload.exit.i.cleanup.thread.i_crit_edge

vb2_set_plane_payload.exit.i.cleanup.thread.i_crit_edge: ; preds = %vb2_set_plane_payload.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.then.i157.i:                                   ; preds = %vb2_set_plane_payload.exit.i
  %chroma_size.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 23
  %151 = ptrtoint ptr %chroma_size.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %chroma_size.i, align 4
  %length.i155.i = getelementptr %struct.vb2_buffer, ptr %148, i32 0, i32 10, i32 1, i32 4
  %153 = ptrtoint ptr %length.i155.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %length.i155.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %152)
  %cmp1.i156.i = icmp ult i32 %154, %152
  br i1 %cmp1.i156.i, label %land.rhs.i159.i, label %if.then.i157.i.if.end42.i164.i_crit_edge

if.then.i157.i.if.end42.i164.i_crit_edge:         ; preds = %if.then.i157.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i164.i

land.rhs.i159.i:                                  ; preds = %if.then.i157.i
  %.b55.i158.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b55.i158.i, label %land.rhs.i159.i.if.then38.i161.i_crit_edge, label %if.then8.i160.i, !prof !392

land.rhs.i159.i.if.then38.i161.i_crit_edge:       ; preds = %land.rhs.i159.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i161.i

if.then8.i160.i:                                  ; preds = %land.rhs.i159.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1163, i32 noundef 9, ptr noundef null) #7
  br label %if.then38.i161.i

if.then38.i161.i:                                 ; preds = %if.then8.i160.i, %land.rhs.i159.i.if.then38.i161.i_crit_edge
  %155 = ptrtoint ptr %length.i155.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %length.i155.i, align 8
  br label %if.end42.i164.i

if.end42.i164.i:                                  ; preds = %if.then38.i161.i, %if.then.i157.i.if.end42.i164.i_crit_edge
  %size.addr.0.i162.i = phi i32 [ %156, %if.then38.i161.i ], [ %152, %if.then.i157.i.if.end42.i164.i_crit_edge ]
  %bytesused.i163.i = getelementptr %struct.vb2_buffer, ptr %148, i32 0, i32 10, i32 1, i32 3
  %157 = ptrtoint ptr %bytesused.i163.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %size.addr.0.i162.i, ptr %bytesused.i163.i, align 4
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end42.i164.i, %vb2_set_plane_payload.exit.i.cleanup.thread.i_crit_edge
  %158 = ptrtoint ptr %dst_buf.0.i394.le to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dst_buf.0.i394.le, align 4
  %index.i = getelementptr inbounds %struct.vb2_buffer, ptr %159, i32 0, i32 1
  %160 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %index.i, align 4
  %dec_dst_flag.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 37
  tail call void @_clear_bit(i32 noundef %161, ptr noundef %dec_dst_flag.i) #7
  %162 = ptrtoint ptr %dst_buf.0.i394.le to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dst_buf.0.i394.le, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool89.not.i = icmp eq i32 %err, 0
  %cond90.i = select i1 %tobool89.not.i, i32 5, i32 6
  tail call void @vb2_buffer_done(ptr noundef %163, i32 noundef %cond90.i) #7
  br label %if.end124

do.body113:                                       ; preds = %if.end107
  %164 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %164)
  %cmp114 = icmp sgt i32 %164, 1
  br i1 %cmp114, label %do.end118, label %do.body113.land.lhs.true126_crit_edge

do.body113.land.lhs.true126_crit_edge:            ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true126

do.end118:                                        ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #9
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.77, i32 noundef 418) #10
  br label %land.lhs.true126

if.end124:                                        ; preds = %cleanup.thread.i, %for.cond.i393.if.end124_crit_edge, %if.end36.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and413420)
  %cmp125.not = icmp eq i32 %and413420, 2
  br i1 %cmp125.not, label %if.end124.leave_handle_frame_crit_edge, label %if.end124.land.lhs.true126_crit_edge

if.end124.land.lhs.true126_crit_edge:             ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true126

if.end124.leave_handle_frame_crit_edge:           ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %leave_handle_frame

land.lhs.true126:                                 ; preds = %if.end124.land.lhs.true126_crit_edge, %do.end118, %do.body113.land.lhs.true126_crit_edge
  %src_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 11
  %165 = ptrtoint ptr %src_queue to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile ptr, ptr %src_queue, align 4
  %cmp.i399.not = icmp eq ptr %166, %src_queue
  br i1 %cmp.i399.not, label %land.lhs.true126.leave_handle_frame_crit_edge, label %if.then129

land.lhs.true126.leave_handle_frame_crit_edge:    ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #9
  br label %leave_handle_frame

if.then129:                                       ; preds = %land.lhs.true126
  %add.ptr = getelementptr i8, ptr %166, i32 -4
  %167 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mfc_ops, align 4
  %tobool133.not = icmp eq ptr %168, null
  br i1 %tobool133.not, label %if.then129.cond.end142_crit_edge, label %land.lhs.true134

if.then129.cond.end142_crit_edge:                 ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end142

land.lhs.true134:                                 ; preds = %if.then129
  %get_consumed_stream = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %168, i32 0, i32 21
  %169 = ptrtoint ptr %get_consumed_stream to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %get_consumed_stream, align 4
  %tobool136.not = icmp eq ptr %170, null
  br i1 %tobool136.not, label %land.lhs.true134.cond.end142_crit_edge, label %cond.true137

land.lhs.true134.cond.end142_crit_edge:           ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end142

cond.true137:                                     ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #9
  %call140 = tail call i32 %170(ptr noundef %1) #7
  br label %cond.end142

cond.end142:                                      ; preds = %cond.true137, %land.lhs.true134.cond.end142_crit_edge, %if.then129.cond.end142_crit_edge
  %cond143 = phi i32 [ %call140, %cond.true137 ], [ -19, %land.lhs.true134.cond.end142_crit_edge ], [ -19, %if.then129.cond.end142_crit_edge ]
  %consumed_stream = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 25
  %171 = ptrtoint ptr %consumed_stream to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %consumed_stream, align 4
  %add = add i32 %172, %cond143
  store i32 %add, ptr %consumed_stream, align 4
  %codec_mode = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 39
  %173 = ptrtoint ptr %codec_mode to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %codec_mode, align 4
  %175 = zext i32 %174 to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %174, label %land.lhs.true148 [
    i32 0, label %cond.end142.do.body165_crit_edge
    i32 7, label %cond.end142.do.body165_crit_edge435
  ]

cond.end142.do.body165_crit_edge435:              ; preds = %cond.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body165

cond.end142.do.body165_crit_edge:                 ; preds = %cond.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body165

land.lhs.true148:                                 ; preds = %cond.end142
  %add150 = add i32 %add, 4
  %176 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %add.ptr, align 4
  %bytesused = getelementptr inbounds %struct.vb2_buffer, ptr %177, i32 0, i32 10, i32 0, i32 3
  %178 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %bytesused, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add150, i32 %179)
  %cmp151 = icmp ult i32 %add150, %179
  br i1 %cmp151, label %do.body153, label %land.lhs.true148.do.body165_crit_edge

land.lhs.true148.do.body165_crit_edge:            ; preds = %land.lhs.true148
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body165

do.body153:                                       ; preds = %land.lhs.true148
  %180 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %180)
  %cmp154 = icmp sgt i32 %180, 1
  br i1 %cmp154, label %do.end158, label %do.body153.do.end163_crit_edge

do.body153.do.end163_crit_edge:                   ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end163

do.end158:                                        ; preds = %do.body153
  call void @__sanitizer_cov_trace_pc() #9
  %call160 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.77, i32 noundef 432) #10
  br label %do.end163

do.end163:                                        ; preds = %do.end158, %do.body153.do.end163_crit_edge
  %after_packed_pb = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 44
  %181 = ptrtoint ptr %after_packed_pb to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 1, ptr %after_packed_pb, align 4
  br label %leave_handle_frame

do.body165:                                       ; preds = %land.lhs.true148.do.body165_crit_edge, %cond.end142.do.body165_crit_edge, %cond.end142.do.body165_crit_edge435
  %182 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %182)
  %cmp166 = icmp sgt i32 %182, 1
  br i1 %cmp166, label %do.end170, label %do.body165.do.end175_crit_edge

do.body165.do.end175_crit_edge:                   ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end175

do.end170:                                        ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #9
  %call172 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.77, i32 noundef 435) #10
  br label %do.end175

do.end175:                                        ; preds = %do.end170, %do.body165.do.end175_crit_edge
  %183 = ptrtoint ptr %consumed_stream to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 0, ptr %consumed_stream, align 4
  %flags = getelementptr i8, ptr %166, i32 16
  %184 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %flags, align 4
  %and177 = and i32 %185, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %do.end175.if.end181_crit_edge, label %if.then179

do.end175.if.end181_crit_edge:                    ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end181

if.then179:                                       ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #9
  %186 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 106, ptr %state, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.then179, %do.end175.if.end181_crit_edge
  %call.i.i400 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %166) #7
  br i1 %call.i.i400, label %if.end.i.i, label %if.end181.list_del.exit_crit_edge

if.end181.list_del.exit_crit_edge:                ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i401 = getelementptr inbounds %struct.list_head, ptr %166, i32 0, i32 1
  %187 = ptrtoint ptr %prev.i.i401 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %prev.i.i401, align 4
  %189 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %166, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %188, ptr %prev1.i.i.i, align 4
  %192 = ptrtoint ptr %188 to i32
  call void @__asan_store4_noabort(i32 %192)
  store volatile ptr %190, ptr %188, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end181.list_del.exit_crit_edge
  %193 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr inttoptr (i32 256 to ptr), ptr %166, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %166, i32 0, i32 1
  %194 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %src_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 13
  %195 = ptrtoint ptr %src_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %src_queue_cnt, align 4
  %dec = add i32 %196, -1
  store i32 %dec, ptr %src_queue_cnt, align 4
  %197 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %mfc_ops, align 4
  %tobool183.not = icmp eq ptr %198, null
  br i1 %tobool183.not, label %list_del.exit.if.else198_crit_edge, label %land.lhs.true184

list_del.exit.if.else198_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else198

land.lhs.true184:                                 ; preds = %list_del.exit
  %err_dec = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %198, i32 0, i32 24
  %199 = ptrtoint ptr %err_dec to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %err_dec, align 4
  %tobool186.not = icmp eq ptr %200, null
  br i1 %tobool186.not, label %land.lhs.true184.if.else198_crit_edge, label %cond.true187

land.lhs.true184.if.else198_crit_edge:            ; preds = %land.lhs.true184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else198

cond.true187:                                     ; preds = %land.lhs.true184
  %call190 = tail call i32 %200(i32 noundef %err) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %phi.cmp = icmp sgt i32 %call190, 0
  br i1 %phi.cmp, label %if.then195, label %cond.true187.if.else198_crit_edge

cond.true187.if.else198_crit_edge:                ; preds = %cond.true187
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else198

if.then195:                                       ; preds = %cond.true187
  call void @__sanitizer_cov_trace_pc() #9
  %201 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %add.ptr, align 4
  tail call void @vb2_buffer_done(ptr noundef %202, i32 noundef 6) #7
  br label %leave_handle_frame

if.else198:                                       ; preds = %cond.true187.if.else198_crit_edge, %land.lhs.true184.if.else198_crit_edge, %list_del.exit.if.else198_crit_edge
  %203 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %add.ptr, align 4
  tail call void @vb2_buffer_done(ptr noundef %204, i32 noundef 5) #7
  br label %leave_handle_frame

leave_handle_frame:                               ; preds = %if.else198, %if.then195, %do.end163, %land.lhs.true126.leave_handle_frame_crit_edge, %if.end124.leave_handle_frame_crit_edge, %if.then101
  %src_queue_cnt204 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 13
  %205 = ptrtoint ptr %src_queue_cnt204 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %src_queue_cnt204, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %cmp205 = icmp eq i32 %206, 0
  br i1 %cmp205, label %land.lhs.true206, label %leave_handle_frame.lor.lhs.false209_crit_edge

leave_handle_frame.lor.lhs.false209_crit_edge:    ; preds = %leave_handle_frame
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false209

land.lhs.true206:                                 ; preds = %leave_handle_frame
  %207 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 106, i32 %208)
  %cmp208.not = icmp eq i32 %208, 106
  br i1 %cmp208.not, label %land.lhs.true206.lor.lhs.false209_crit_edge, label %land.lhs.true206.if.then211_crit_edge

land.lhs.true206.if.then211_crit_edge:            ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then211

land.lhs.true206.lor.lhs.false209_crit_edge:      ; preds = %land.lhs.true206
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false209

lor.lhs.false209:                                 ; preds = %land.lhs.true206.lor.lhs.false209_crit_edge, %leave_handle_frame.lor.lhs.false209_crit_edge
  %dst_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 14
  %209 = ptrtoint ptr %dst_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %dst_queue_cnt, align 4
  %pb_count = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 46
  %211 = ptrtoint ptr %pb_count to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %pb_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %210, i32 %212)
  %cmp210 = icmp ult i32 %210, %212
  br i1 %cmp210, label %lor.lhs.false209.if.then211_crit_edge, label %lor.lhs.false209.if.end212_crit_edge

lor.lhs.false209.if.end212_crit_edge:             ; preds = %lor.lhs.false209
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end212

lor.lhs.false209.if.then211_crit_edge:            ; preds = %lor.lhs.false209
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then211

if.then211:                                       ; preds = %lor.lhs.false209.if.then211_crit_edge, %land.lhs.true206.if.then211_crit_edge
  %213 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ctx, align 4
  %condlock.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %214, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %condlock.i) #7
  %num.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %215 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %num.i, align 4
  %ctx_work_bits.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %214, i32 0, i32 28
  %rem.i.i = and i32 %216, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %216, 5
  %add.ptr.i.i = getelementptr i32, ptr %ctx_work_bits.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %217 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %218, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %condlock.i) #7
  br label %if.end212

if.end212:                                        ; preds = %if.then211, %lor.lhs.false209.if.end212_crit_edge
  %219 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %mfc_ops, align 4
  %tobool214.not = icmp eq ptr %220, null
  br i1 %tobool214.not, label %if.end212.cond.end223_crit_edge, label %land.lhs.true215

if.end212.cond.end223_crit_edge:                  ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end223

land.lhs.true215:                                 ; preds = %if.end212
  %clear_int_flags217 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %220, i32 0, i32 14
  %221 = ptrtoint ptr %clear_int_flags217 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %clear_int_flags217, align 4
  %tobool218.not = icmp eq ptr %222, null
  br i1 %tobool218.not, label %land.lhs.true215.cond.end223_crit_edge, label %cond.true219

land.lhs.true215.cond.end223_crit_edge:           ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end223

cond.true219:                                     ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %222(ptr noundef %1) #7
  br label %cond.end223

cond.end223:                                      ; preds = %cond.true219, %land.lhs.true215.cond.end223_crit_edge, %if.end212.cond.end223_crit_edge
  %int_cond.i402 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 3
  %223 = ptrtoint ptr %int_cond.i402 to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 1, ptr %int_cond.i402, align 4
  %int_type.i403 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 4
  %224 = ptrtoint ptr %int_type.i403 to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %reason, ptr %int_type.i403, align 4
  %int_err.i404 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 5
  %225 = ptrtoint ptr %int_err.i404 to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 %err, ptr %int_err.i404, align 4
  %queue.i405 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %queue.i405, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %hw_lock225 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 25
  %call226 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %hw_lock225) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call226)
  %cmp227 = icmp eq i32 %call226, 0
  br i1 %cmp227, label %do.end243, label %cond.end223.if.end249_crit_edge, !prof !390

cond.end223.if.end249_crit_edge:                  ; preds = %cond.end223
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end249

do.end243:                                        ; preds = %cond.end223
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 455, i32 noundef 9, ptr noundef null) #7
  br label %if.end249

if.end249:                                        ; preds = %do.end243, %cond.end223.if.end249_crit_edge
  tail call void @s5p_mfc_clock_off() #7
  %enter_suspend = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 33
  %226 = ptrtoint ptr %enter_suspend to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load volatile i32, ptr %enter_suspend, align 4
  %and1.i = and i32 %227, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool258.not = icmp eq i32 %and1.i, 0
  br i1 %tobool258.not, label %if.else260, label %if.then259

if.then259:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #9
  %int_cond.i406 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 15
  %228 = ptrtoint ptr %int_cond.i406 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 1, ptr %int_cond.i406, align 4
  %int_type.i407 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 16
  %229 = ptrtoint ptr %int_type.i407 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %reason, ptr %int_type.i407, align 4
  %int_err.i408 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 17
  %230 = ptrtoint ptr %int_err.i408 to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %err, ptr %int_err.i408, align 4
  %queue.i409 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %queue.i409, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

if.else260:                                       ; preds = %if.end249
  %231 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %mfc_ops, align 4
  %tobool262.not = icmp eq ptr %232, null
  br i1 %tobool262.not, label %if.else260.cleanup_crit_edge, label %land.lhs.true263

if.else260.cleanup_crit_edge:                     ; preds = %if.else260
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true263:                                 ; preds = %if.else260
  %try_run265 = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %232, i32 0, i32 13
  %233 = ptrtoint ptr %try_run265 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %try_run265, align 4
  %tobool266.not = icmp eq ptr %234, null
  br i1 %tobool266.not, label %land.lhs.true263.cleanup_crit_edge, label %cond.true267

land.lhs.true263.cleanup_crit_edge:               ; preds = %land.lhs.true263
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.true267:                                     ; preds = %land.lhs.true263
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %234(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.true267, %land.lhs.true263.cleanup_crit_edge, %if.else260.cleanup_crit_edge, %if.then259, %cond.true87, %land.lhs.true84.cleanup_crit_edge, %if.end74.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_handle_stream_complete(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %2 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp sgt i32 %2, 1
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef 607) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 107, ptr %state, align 4
  %dst_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 12
  %4 = ptrtoint ptr %dst_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %dst_queue, align 4
  %cmp.i.not = icmp eq ptr %5, %dst_queue
  br i1 %cmp.i.not, label %do.end4.if.end11_crit_edge, label %if.then6

do.end4.if.end11_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then6:                                         ; preds = %do.end4
  %add.ptr = getelementptr i8, ptr %5, i32 -4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then6.list_del.exit_crit_edge

if.then6.list_del.exit_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then6.list_del.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %dst_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 14
  %14 = ptrtoint ptr %dst_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst_queue_cnt, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %dst_queue_cnt, align 4
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i58.not = icmp eq i32 %19, 0
  br i1 %cmp.i58.not, label %list_del.exit.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

list_del.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %17, i32 0, i32 10, i32 0, i32 3
  %20 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then.i, %list_del.exit.vb2_set_plane_payload.exit_crit_edge
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 4
  tail call void @vb2_buffer_done(ptr noundef %22, i32 noundef 5) #7
  br label %if.end11

if.end11:                                         ; preds = %vb2_set_plane_payload.exit, %do.end4.if.end11_crit_edge
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx, align 4
  %condlock.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %24, i32 0, i32 13
  tail call void @_raw_spin_lock(ptr noundef %condlock.i) #7
  %num.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 2
  %25 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num.i, align 4
  %ctx_work_bits.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %24, i32 0, i32 28
  %rem.i.i = and i32 %26, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %26, 5
  %add.ptr.i.i = getelementptr i32, ptr %ctx_work_bits.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %28, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %condlock.i) #7
  %hw_lock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 25
  %call12 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %hw_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %do.end25, label %if.end11.if.end31_crit_edge, !prof !390

if.end11.if.end31_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end25:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 622, i32 noundef 9, ptr noundef null) #7
  br label %if.end31

if.end31:                                         ; preds = %do.end25, %if.end11.if.end31_crit_edge
  tail call void @s5p_mfc_clock_off() #7
  %queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %queue, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %29 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mfc_ops, align 4
  %tobool39.not = icmp eq ptr %30, null
  br i1 %tobool39.not, label %if.end31.cond.end_crit_edge, label %land.lhs.true

if.end31.cond.end_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

land.lhs.true:                                    ; preds = %if.end31
  %try_run = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %30, i32 0, i32 13
  %31 = ptrtoint ptr %try_run to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %try_run, align 4
  %tobool41.not = icmp eq ptr %32, null
  br i1 %tobool41.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %32(ptr noundef %1) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge, %if.end31.cond.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_clock_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5p_mfc_handle_frame_all_extracted(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %state = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 16
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 107, ptr %state, align 4
  %sequence = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 36
  %3 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sequence, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %sequence, align 4
  %dst_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 12
  %5 = ptrtoint ptr %dst_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %dst_queue, align 4
  %cmp.i.not88 = icmp eq ptr %6, %dst_queue
  br i1 %cmp.i.not88, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %dst_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 14
  %mfc_ops = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 36
  %dec_dst_flag = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %ctx, i32 0, i32 37
  br label %while.body

while.body:                                       ; preds = %if.end39.while.body_crit_edge, %while.body.lr.ph
  %7 = phi ptr [ %6, %while.body.lr.ph ], [ %60, %if.end39.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %7, i32 -4
  %8 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp sgt i32 %8, 1
  br i1 %cmp, label %do.end, label %while.body.do.end7_crit_edge

while.body.do.end7_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr, align 4
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, i32 noundef 230, i32 noundef %12) #10
  br label %do.end7

do.end7:                                          ; preds = %do.end, %while.body.do.end7_crit_edge
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i75.not = icmp eq i32 %16, 0
  br i1 %cmp.i75.not, label %do.end7.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

do.end7.vb2_set_plane_payload.exit_crit_edge:     ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  %bytesused.i = getelementptr %struct.vb2_buffer, ptr %14, i32 0, i32 10, i32 0, i32 3
  %17 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then.i, %do.end7.vb2_set_plane_payload.exit_crit_edge
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %num_planes.i76 = getelementptr inbounds %struct.vb2_buffer, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %num_planes.i76 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_planes.i76, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i77 = icmp ugt i32 %21, 1
  br i1 %cmp.i77, label %if.then.i79, label %vb2_set_plane_payload.exit.vb2_set_plane_payload.exit81_crit_edge

vb2_set_plane_payload.exit.vb2_set_plane_payload.exit81_crit_edge: ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_set_plane_payload.exit81

if.then.i79:                                      ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #9
  %bytesused.i80 = getelementptr %struct.vb2_buffer, ptr %19, i32 0, i32 10, i32 1, i32 3
  %22 = ptrtoint ptr %bytesused.i80 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %bytesused.i80, align 4
  br label %vb2_set_plane_payload.exit81

vb2_set_plane_payload.exit81:                     ; preds = %if.then.i79, %vb2_set_plane_payload.exit.vb2_set_plane_payload.exit81_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %7) #7
  br i1 %call.i.i, label %if.end.i.i, label %vb2_set_plane_payload.exit81.list_del.exit_crit_edge

vb2_set_plane_payload.exit81.list_del.exit_crit_edge: ; preds = %vb2_set_plane_payload.exit81
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %vb2_set_plane_payload.exit81
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %7, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %vb2_set_plane_payload.exit81.list_del.exit_crit_edge
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %7, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %flags = getelementptr i8, ptr %7, i32 16
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %or = or i32 %32, 2
  store i32 %or, ptr %flags, align 4
  %33 = ptrtoint ptr %dst_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dst_queue_cnt, align 4
  %dec = add i32 %34, -1
  store i32 %dec, ptr %dst_queue_cnt, align 4
  %35 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %sequence, align 4
  %inc13 = add i32 %36, 1
  store i32 %inc13, ptr %sequence, align 4
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 4
  %sequence15 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %sequence15 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %36, ptr %sequence15, align 8
  %40 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mfc_ops, align 4
  %tobool16.not = icmp eq ptr %41, null
  br i1 %tobool16.not, label %list_del.exit.if.end39_crit_edge, label %land.lhs.true

list_del.exit.if.end39_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

land.lhs.true:                                    ; preds = %list_del.exit
  %get_pic_type_top = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %41, i32 0, i32 33
  %42 = ptrtoint ptr %get_pic_type_top to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %get_pic_type_top, align 4
  %tobool18.not = icmp eq ptr %43, null
  br i1 %tobool18.not, label %land.lhs.true.cond.end_crit_edge, label %cond.true

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 %43(ptr noundef %ctx) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %land.lhs.true.cond.end_crit_edge
  %cond.ph = phi i32 [ -19, %land.lhs.true.cond.end_crit_edge ], [ %call21, %cond.true ]
  %44 = ptrtoint ptr %mfc_ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr = load ptr, ptr %mfc_ops, align 4
  %tobool23.not = icmp eq ptr %.pr, null
  br i1 %tobool23.not, label %cond.end.cond.end32_crit_edge, label %land.lhs.true24

cond.end.cond.end32_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end32

land.lhs.true24:                                  ; preds = %cond.end
  %get_pic_type_bot = getelementptr inbounds %struct.s5p_mfc_hw_ops, ptr %.pr, i32 0, i32 34
  %45 = ptrtoint ptr %get_pic_type_bot to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %get_pic_type_bot, align 4
  %tobool26.not = icmp eq ptr %46, null
  br i1 %tobool26.not, label %land.lhs.true24.cond.end32_crit_edge, label %cond.true27

land.lhs.true24.cond.end32_crit_edge:             ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end32

cond.true27:                                      ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = tail call i32 %46(ptr noundef %ctx) #7
  br label %cond.end32

cond.end32:                                       ; preds = %cond.true27, %land.lhs.true24.cond.end32_crit_edge, %cond.end.cond.end32_crit_edge
  %cond33 = phi i32 [ %call30, %cond.true27 ], [ -19, %land.lhs.true24.cond.end32_crit_edge ], [ -19, %cond.end.cond.end32_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.ph, i32 %cond33)
  %cmp34 = icmp eq i32 %cond.ph, %cond33
  %spec.select = select i1 %cmp34, i32 1, i32 4
  br label %if.end39

if.end39:                                         ; preds = %cond.end32, %list_del.exit.if.end39_crit_edge
  %.sink = phi i32 [ 1, %list_del.exit.if.end39_crit_edge ], [ %spec.select, %cond.end32 ]
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr, align 4
  %field38 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %field38 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink, ptr %field38, align 4
  %50 = load ptr, ptr %add.ptr, align 4
  %flags41 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %flags41 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags41, align 8
  %or42 = or i32 %52, 1048576
  store i32 %or42, ptr %flags41, align 8
  %53 = load ptr, ptr %add.ptr, align 4
  %index45 = getelementptr inbounds %struct.vb2_buffer, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %index45 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %index45, align 4
  %shl = shl nuw i32 1, %55
  %neg = xor i32 %shl, -1
  %56 = ptrtoint ptr %dec_dst_flag to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dec_dst_flag, align 4
  %and = and i32 %57, %neg
  store i32 %and, ptr %dec_dst_flag, align 4
  %58 = load ptr, ptr %add.ptr, align 4
  tail call void @vb2_buffer_done(ptr noundef %58, i32 noundef 5) #7
  %59 = ptrtoint ptr %dst_queue to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %dst_queue, align 4
  %cmp.i.not = icmp eq ptr %60, %dst_queue
  br i1 %cmp.i.not, label %if.end39.while.end_crit_edge, label %if.end39.while.body_crit_edge

if.end39.while.body_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end39.while.end_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end39.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_event_queue_fh(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @memparse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_alloc_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @s5p_mfc_alloc_memdev(ptr noundef %dev, ptr noundef %name, i32 noundef %idx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 928, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @device_initialize(ptr noundef nonnull %call.i) #7
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %if.end.dev_name.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.107, ptr noundef %retval.0.i, ptr noundef %name) #7
  %parent = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %parent, align 8
  %coherent_dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 19
  %5 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %coherent_dma_mask, align 8
  %coherent_dma_mask3 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 19
  %7 = ptrtoint ptr %coherent_dma_mask3 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %coherent_dma_mask3, align 8
  %dma_mask = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 18
  %8 = ptrtoint ptr %dma_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dma_mask, align 8
  %dma_mask4 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 18
  %10 = ptrtoint ptr %dma_mask4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %dma_mask4, align 8
  %release = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 35
  %11 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @s5p_mfc_memdev_release, ptr %release, align 4
  %call.i41 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #7
  %dma_parms = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 22
  %12 = ptrtoint ptr %dma_parms to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i41, ptr %dma_parms, align 4
  %tobool7.not = icmp eq ptr %call.i41, null
  br i1 %tobool7.not, label %dev_name.exit.err_crit_edge, label %if.end9

dev_name.exit.err_crit_edge:                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end9:                                          ; preds = %dev_name.exit
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %call.i42 = tail call i32 @of_dma_configure_id(ptr noundef nonnull %call.i, ptr noundef %14, i1 noundef zeroext true, ptr noundef null) #7
  %call11 = tail call i32 @device_add(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp eq i32 %call11, 0
  br i1 %cmp, label %if.then12, label %if.end9.err_crit_edge

if.end9.err_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.then12:                                        ; preds = %if.end9
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %call14 = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef nonnull %call.i, ptr noundef %16, i32 noundef %idx) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then12.cleanup_crit_edge, label %if.end17

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @device_del(ptr noundef nonnull %call.i) #7
  br label %err

err:                                              ; preds = %if.end17, %if.end9.err_crit_edge, %dev_name.exit.err_crit_edge
  tail call void @put_device(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err ], [ null, %entry.cleanup_crit_edge ], [ %call.i, %if.then12.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5p_mfc_memdev_release(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @of_reserved_mem_device_release(ptr noundef %dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_configure_id(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_deinit_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_clock_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_init_hw(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %mfc_mutex = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mfc_mutex, i32 noundef 0) #7
  %streaming = getelementptr i8, ptr %1, i32 716
  %4 = ptrtoint ptr %streaming to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %streaming, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.land.lhs.true_crit_edge, label %lor.lhs.false

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %queued_list = getelementptr i8, ptr %1, i32 596
  %5 = ptrtoint ptr %queued_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %queued_list, align 4
  %cmp.i.not = icmp eq ptr %6, %queued_list
  br i1 %cmp.i.not, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %streaming3 = getelementptr i8, ptr %1, i32 1228
  %7 = ptrtoint ptr %streaming3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load4 = load i16, ptr %streaming3, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load4)
  %tobool7.not = icmp sgt i16 %bf.load4, -1
  br i1 %tobool7.not, label %land.lhs.true.end_crit_edge, label %lor.lhs.false8

land.lhs.true.end_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

lor.lhs.false8:                                   ; preds = %land.lhs.true
  %queued_list9 = getelementptr i8, ptr %1, i32 1108
  %8 = ptrtoint ptr %queued_list9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %queued_list9, align 4
  %cmp.i122.not = icmp eq ptr %9, %queued_list9
  br i1 %cmp.i122.not, label %lor.lhs.false8.end_crit_edge, label %lor.lhs.false8.if.end_crit_edge

lor.lhs.false8.if.end_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false8.end_crit_edge:                     ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end:                                           ; preds = %lor.lhs.false8.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mfc_mutex) #7
  %wait13 = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 4
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end.poll_wait.exit137_crit_edge, label %land.lhs.true.i

if.end.poll_wait.exit137_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit137

land.lhs.true.i:                                  ; preds = %if.end
  %10 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  %tobool3.not.i = icmp eq ptr %wait13, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.land.lhs.true.i128_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i128_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i128

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %file, ptr noundef nonnull %wait13, ptr noundef nonnull %wait) #7
  br label %land.lhs.true.i128

land.lhs.true.i128:                               ; preds = %if.then.i, %land.lhs.true.i.land.lhs.true.i128_crit_edge
  %done_wq142 = getelementptr i8, ptr %1, i32 664
  %12 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wait, align 4
  %tobool1.not.i125 = icmp eq ptr %13, null
  %tobool3.not.i126 = icmp eq ptr %done_wq142, null
  %or.cond.i127 = or i1 %tobool3.not.i126, %tobool1.not.i125
  br i1 %or.cond.i127, label %land.lhs.true.i128.land.lhs.true.i135_crit_edge, label %if.then.i129

land.lhs.true.i128.land.lhs.true.i135_crit_edge:  ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i135

if.then.i129:                                     ; preds = %land.lhs.true.i128
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %13(ptr noundef %file, ptr noundef nonnull %done_wq142, ptr noundef nonnull %wait) #7
  br label %land.lhs.true.i135

land.lhs.true.i135:                               ; preds = %if.then.i129, %land.lhs.true.i128.land.lhs.true.i135_crit_edge
  %done_wq14144 = getelementptr i8, ptr %1, i32 1176
  %14 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wait, align 4
  %tobool1.not.i132 = icmp eq ptr %15, null
  %tobool3.not.i133 = icmp eq ptr %done_wq14144, null
  %or.cond.i134 = or i1 %tobool3.not.i133, %tobool1.not.i132
  br i1 %or.cond.i134, label %land.lhs.true.i135.poll_wait.exit137_crit_edge, label %if.then.i136

land.lhs.true.i135.poll_wait.exit137_crit_edge:   ; preds = %land.lhs.true.i135
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit137

if.then.i136:                                     ; preds = %land.lhs.true.i135
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %15(ptr noundef %file, ptr noundef nonnull %done_wq14144, ptr noundef nonnull %wait) #7
  br label %poll_wait.exit137

poll_wait.exit137:                                ; preds = %if.then.i136, %land.lhs.true.i135.poll_wait.exit137_crit_edge, %if.end.poll_wait.exit137_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %mfc_mutex, i32 noundef 0) #7
  %call17 = tail call i32 @v4l2_event_pending(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %spec.select = select i1 %tobool18.not, i32 0, i32 2
  %done_lock = getelementptr i8, ptr %1, i32 620
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %done_lock) #7
  %done_list = getelementptr i8, ptr %1, i32 612
  %16 = ptrtoint ptr %done_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %done_list, align 4
  %cmp.i138.not = icmp eq ptr %17, %done_list
  %add.ptr33 = getelementptr i8, ptr %17, i32 -336
  %tobool35.not = icmp eq ptr %add.ptr33, null
  %or.cond = or i1 %cmp.i138.not, %tobool35.not
  br i1 %or.cond, label %poll_wait.exit137.if.end45_crit_edge, label %land.lhs.true36

poll_wait.exit137.if.end45_crit_edge:             ; preds = %poll_wait.exit137
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

land.lhs.true36:                                  ; preds = %poll_wait.exit137
  call void @__sanitizer_cov_trace_pc() #9
  %state = getelementptr i8, ptr %17, i32 -272
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 8
  %.off = add i32 %19, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %or44 = or i32 %spec.select, 260
  %spec.select118 = select i1 %switch, i32 %or44, i32 %spec.select
  br label %if.end45

if.end45:                                         ; preds = %land.lhs.true36, %poll_wait.exit137.if.end45_crit_edge
  %rc.1 = phi i32 [ %spec.select118, %land.lhs.true36 ], [ %spec.select, %poll_wait.exit137.if.end45_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %done_lock, i32 noundef %call24) #7
  %done_lock54 = getelementptr i8, ptr %1, i32 1132
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %done_lock54) #7
  %done_list61 = getelementptr i8, ptr %1, i32 1124
  %20 = ptrtoint ptr %done_list61 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %done_list61, align 4
  %cmp.i140.not = icmp eq ptr %21, %done_list61
  %add.ptr69 = getelementptr i8, ptr %21, i32 -336
  %tobool71.not = icmp eq ptr %add.ptr69, null
  %or.cond150 = or i1 %cmp.i140.not, %tobool71.not
  br i1 %or.cond150, label %if.end45.if.end82_crit_edge, label %land.lhs.true72

if.end45.if.end82_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82

land.lhs.true72:                                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %state73 = getelementptr i8, ptr %21, i32 -272
  %22 = ptrtoint ptr %state73 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state73, align 8
  %.off119 = add i32 %23, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off119)
  %switch120 = icmp ult i32 %.off119, 2
  %or81 = or i32 %rc.1, 65
  %spec.select121 = select i1 %switch120, i32 %or81, i32 %rc.1
  br label %if.end82

if.end82:                                         ; preds = %land.lhs.true72, %if.end45.if.end82_crit_edge
  %rc.2 = phi i32 [ %spec.select121, %land.lhs.true72 ], [ %rc.1, %if.end45.if.end82_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %done_lock54, i32 noundef %call56) #7
  br label %end

end:                                              ; preds = %if.end82, %lor.lhs.false8.end_crit_edge, %land.lhs.true.end_crit_edge
  %rc.3 = phi i32 [ %rc.2, %if.end82 ], [ 8, %lor.lhs.false8.end_crit_edge ], [ 8, %land.lhs.true.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %mfc_mutex) #7
  ret i32 %rc.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %2 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_pgoff, align 4
  %4 = and i32 %3, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  %5 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp1 = icmp sgt i32 %5, 1
  br i1 %cmp, label %do.body, label %do.body8

do.body:                                          ; preds = %entry
  br i1 %cmp1, label %do.end, label %do.body.if.end21_crit_edge

do.body.if.end21_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.122, i32 noundef 1050) #10
  br label %if.end21

do.body8:                                         ; preds = %entry
  br i1 %cmp1, label %do.end13, label %do.body8.do.end18_crit_edge

do.body8.do.end18_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

do.end13:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.122, i32 noundef 1053) #10
  br label %do.end18

do.end18:                                         ; preds = %do.end13, %do.body8.do.end18_crit_edge
  %6 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vm_pgoff, align 4
  %sub = add i32 %7, -262144
  store i32 %sub, ptr %vm_pgoff, align 4
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %do.end, %do.body.if.end21_crit_edge
  %.sink = phi i32 [ 780, %do.end18 ], [ 268, %do.end ], [ 268, %do.body.if.end21_crit_edge ]
  %vq_dst = getelementptr i8, ptr %1, i32 %.sink
  %call20 = tail call i32 @vb2_mmap(ptr noundef %vq_dst, ptr noundef %vma) #7
  ret i32 %call20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_open(ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @video_devdata(ptr noundef %file) #7
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp = icmp sgt i32 %2, 4
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.126, i32 noundef 759) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %mfc_mutex = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 14
  %call6 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mfc_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end8, label %do.end5.cleanup_crit_edge

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end5
  %num_inst = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %num_inst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_inst, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr %num_inst, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 4236) #11
  %tobool10.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not, label %if.end8.err_alloc_crit_edge, label %do.body13

if.end8.err_alloc_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_alloc

do.body13:                                        ; preds = %if.end8
  %queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %queue, ptr noundef nonnull @.str.127, ptr noundef nonnull @s5p_mfc_open.__key) #7
  %fh = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 1
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %call) #7
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fh, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef %fh) #7
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %call7.i.i, align 8
  %src_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 11
  %8 = ptrtoint ptr %src_queue to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %src_queue, ptr %src_queue, align 8
  %prev.i = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %src_queue, ptr %prev.i, align 4
  %dst_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %dst_queue to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %dst_queue, ptr %dst_queue, align 8
  %prev.i328 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 12, i32 1
  %11 = ptrtoint ptr %prev.i328 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dst_queue, ptr %prev.i328, align 4
  %src_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 13
  %12 = ptrtoint ptr %src_queue_cnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %src_queue_cnt, align 8
  %dst_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 14
  %13 = ptrtoint ptr %dst_queue_cnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %dst_queue_cnt, align 4
  %num = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %num, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.body13
  %15 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num, align 4
  %arrayidx = getelementptr %struct.s5p_mfc_dev, ptr %1, i32 0, i32 26, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool21.not = icmp eq ptr %18, null
  br i1 %tobool21.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %inc23 = add i32 %16, 1
  %19 = ptrtoint ptr %num to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %inc23, ptr %num, align 4
  %cmp25 = icmp sgt i32 %inc23, 3
  br i1 %cmp25, label %do.body27, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

do.body27:                                        ; preds = %while.body
  %20 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp28 = icmp sgt i32 %20, 1
  br i1 %cmp28, label %do.end32, label %do.body27.err_no_ctx_crit_edge

do.body27.err_no_ctx_crit_edge:                   ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_no_ctx

do.end32:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.126, i32 noundef 783) #10
  br label %err_no_ctx

while.end:                                        ; preds = %while.cond
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 8
  %condlock.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %22, i32 0, i32 13
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %condlock.i) #7
  %23 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num, align 4
  %ctx_work_bits.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %22, i32 0, i32 28
  %rem.i.i = and i32 %24, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %24, 5
  %add.ptr.i.i = getelementptr i32, ptr %ctx_work_bits.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %25 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %26, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %condlock.i, i32 noundef %call3.i) #7
  %27 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num, align 4
  %arrayidx41 = getelementptr %struct.s5p_mfc_dev, ptr %1, i32 0, i32 26, i32 %28
  %29 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %arrayidx41, align 4
  %vfd_dec = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %vfd_dec to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vfd_dec, align 4
  %cmp42 = icmp eq ptr %call, %31
  br i1 %cmp42, label %if.then43, label %if.else

if.then43:                                        ; preds = %while.end
  %type = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 15
  %32 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %type, align 8
  %call44 = tail call ptr @get_dec_codec_ops() #7
  %c_ops = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 63
  %33 = ptrtoint ptr %c_ops to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call44, ptr %c_ops, align 4
  tail call void @s5p_mfc_dec_init(ptr noundef %call7.i.i) #7
  %call45 = tail call i32 @s5p_mfc_dec_ctrls_setup(ptr noundef %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then43.if.end76_crit_edge, label %do.end51

if.then43.if.end76_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

do.end51:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.126, i32 noundef 798) #10
  br label %err_ctrls_setup

if.else:                                          ; preds = %while.end
  %vfd_enc = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %vfd_enc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vfd_enc, align 4
  %cmp57 = icmp eq ptr %call, %35
  br i1 %cmp57, label %if.then58, label %if.else.err_bad_node_crit_edge

if.else.err_bad_node_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_bad_node

if.then58:                                        ; preds = %if.else
  %type59 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 15
  %36 = ptrtoint ptr %type59 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %type59, align 8
  %call60 = tail call ptr @get_enc_codec_ops() #7
  %c_ops61 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 63
  %37 = ptrtoint ptr %c_ops61 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call60, ptr %c_ops61, align 4
  %ref_queue = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 59
  %38 = ptrtoint ptr %ref_queue to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %ref_queue, ptr %ref_queue, align 8
  %prev.i329 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 59, i32 1
  %39 = ptrtoint ptr %prev.i329 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %ref_queue, ptr %prev.i329, align 4
  %ref_queue_cnt = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 60
  %40 = ptrtoint ptr %ref_queue_cnt to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %ref_queue_cnt, align 8
  tail call void @s5p_mfc_enc_init(ptr noundef nonnull %call7.i.i) #7
  %call62 = tail call i32 @s5p_mfc_enc_ctrls_setup(ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then58.if.end76_crit_edge, label %do.end68

if.then58.if.end76_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

do.end68:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.126, i32 noundef 811) #10
  br label %err_ctrls_setup

if.end76:                                         ; preds = %if.then58.if.end76_crit_edge, %if.then43.if.end76_crit_edge
  %ctrl_handler = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 65
  %ctrl_handler78 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %ctrl_handler78 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ctrl_handler, ptr %ctrl_handler78, align 8
  %inst_no = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 17
  %42 = ptrtoint ptr %inst_no to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %inst_no, align 8
  %43 = ptrtoint ptr %num_inst to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_inst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp80 = icmp eq i32 %44, 1
  br i1 %cmp80, label %if.then81, label %if.end76.if.end105_crit_edge

if.end76.if.end105_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.then81:                                        ; preds = %if.end76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %45, 100
  %watchdog_timer = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 30
  %expires = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 30, i32 1
  %46 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %watchdog_timer) #7
  %call84 = tail call i32 @s5p_mfc_power_on() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %do.end90, label %if.end95

do.end90:                                         ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #9
  %call92 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.126, i32 noundef 827) #10
  br label %err_pwr_enable

if.end95:                                         ; preds = %if.then81
  %call96 = tail call i32 @s5p_mfc_clock_on() #7
  %call97 = tail call i32 @s5p_mfc_load_firmware(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.then99

if.then99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @s5p_mfc_clock_off() #7
  br label %err_pwr_enable

if.end100:                                        ; preds = %if.end95
  %call101 = tail call i32 @s5p_mfc_init_hw(ptr noundef %1) #7
  tail call void @s5p_mfc_clock_off() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.end100.if.end105_crit_edge, label %if.end100.err_pwr_enable_crit_edge

if.end100.err_pwr_enable_crit_edge:               ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_pwr_enable

if.end100.if.end105_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

if.end105:                                        ; preds = %if.end100.if.end105_crit_edge, %if.end76.if.end105_crit_edge
  %vq_dst = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 10
  %47 = ptrtoint ptr %vq_dst to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 9, ptr %vq_dst, align 8
  %drv_priv = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 10, i32 10
  %48 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %fh, ptr %drv_priv, align 8
  %lock = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 10, i32 5
  %49 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %mfc_mutex, ptr %lock, align 4
  %50 = ptrtoint ptr %vfd_dec to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vfd_dec, align 4
  %cmp110 = icmp eq ptr %call, %51
  br i1 %cmp110, label %if.then111, label %if.else113

if.then111:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %io_modes = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %io_modes, align 4
  %call112 = tail call ptr @get_dec_queue_ops() #7
  br label %if.end122

if.else113:                                       ; preds = %if.end105
  %vfd_enc114 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 2
  %53 = ptrtoint ptr %vfd_enc114 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %vfd_enc114, align 4
  %cmp115 = icmp eq ptr %call, %54
  br i1 %cmp115, label %if.then116, label %if.else113.err_queue_init_crit_edge

if.else113.err_queue_init_crit_edge:              ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_queue_init

if.then116:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #9
  %io_modes117 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 10, i32 1
  %55 = ptrtoint ptr %io_modes117 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 3, ptr %io_modes117, align 4
  %call118 = tail call ptr @get_enc_queue_ops() #7
  br label %if.end122

if.end122:                                        ; preds = %if.then116, %if.then111
  %call118.sink = phi ptr [ %call118, %if.then116 ], [ %call112, %if.then111 ]
  %ops119 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 10, i32 7
  %56 = ptrtoint ptr %ops119 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call118.sink, ptr %ops119, align 4
  %dma_attrs = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 10, i32 3
  %57 = ptrtoint ptr %dma_attrs to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 128, ptr %dma_attrs, align 4
  %mem_ops = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 10, i32 8
  %58 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 8
  %timestamp_flags = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 10, i32 13
  %59 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 16384, ptr %timestamp_flags, align 4
  %call123 = tail call i32 @vb2_queue_init(ptr noundef %vq_dst) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end134, label %do.end129

do.end129:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #9
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.126, i32 noundef 866) #10
  br label %err_queue_init

if.end134:                                        ; preds = %if.end122
  %vq_src = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 9
  %60 = ptrtoint ptr %vq_src to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 10, ptr %vq_src, align 8
  %drv_priv137 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 9, i32 10
  %61 = ptrtoint ptr %drv_priv137 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %fh, ptr %drv_priv137, align 8
  %lock139 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 9, i32 5
  %62 = ptrtoint ptr %lock139 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %mfc_mutex, ptr %lock139, align 4
  %63 = ptrtoint ptr %vfd_dec to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vfd_dec, align 4
  %cmp141 = icmp eq ptr %call, %64
  br i1 %cmp141, label %if.then142, label %if.else146

if.then142:                                       ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  %io_modes143 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 9, i32 1
  %65 = ptrtoint ptr %io_modes143 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 1, ptr %io_modes143, align 4
  %call144 = tail call ptr @get_dec_queue_ops() #7
  br label %if.end155

if.else146:                                       ; preds = %if.end134
  %vfd_enc147 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 2
  %66 = ptrtoint ptr %vfd_enc147 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vfd_enc147, align 4
  %cmp148 = icmp eq ptr %call, %67
  br i1 %cmp148, label %if.then149, label %if.else146.err_queue_init_crit_edge

if.else146.err_queue_init_crit_edge:              ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_queue_init

if.then149:                                       ; preds = %if.else146
  call void @__sanitizer_cov_trace_pc() #9
  %io_modes150 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 9, i32 1
  %68 = ptrtoint ptr %io_modes150 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 3, ptr %io_modes150, align 4
  %call151 = tail call ptr @get_enc_queue_ops() #7
  br label %if.end155

if.end155:                                        ; preds = %if.then149, %if.then142
  %call151.sink = phi ptr [ %call151, %if.then149 ], [ %call144, %if.then142 ]
  %ops152 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 9, i32 7
  %69 = ptrtoint ptr %ops152 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call151.sink, ptr %ops152, align 4
  %allow_zero_bytesused = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 9, i32 4
  %70 = ptrtoint ptr %allow_zero_bytesused to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load = load i16, ptr %allow_zero_bytesused, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %allow_zero_bytesused, align 8
  %dma_attrs156 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 9, i32 3
  %71 = ptrtoint ptr %dma_attrs156 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 128, ptr %dma_attrs156, align 4
  %mem_ops157 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 9, i32 8
  %72 = ptrtoint ptr %mem_ops157 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops157, align 8
  %timestamp_flags158 = getelementptr inbounds %struct.s5p_mfc_ctx, ptr %call7.i.i, i32 0, i32 9, i32 13
  %73 = ptrtoint ptr %timestamp_flags158 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 16384, ptr %timestamp_flags158, align 4
  %call159 = tail call i32 @vb2_queue_init(ptr noundef %vq_src) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end170, label %do.end165

do.end165:                                        ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  %call167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.126, i32 noundef 901) #10
  br label %err_queue_init

if.end170:                                        ; preds = %if.end155
  tail call void @mutex_unlock(ptr noundef %mfc_mutex) #7
  %74 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %74)
  %cmp173 = icmp sgt i32 %74, 4
  br i1 %cmp173, label %if.end170.cleanup.sink.split_crit_edge, label %if.end170.cleanup_crit_edge

if.end170.cleanup_crit_edge:                      ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end170.cleanup.sink.split_crit_edge:           ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

err_queue_init:                                   ; preds = %do.end165, %if.else146.err_queue_init_crit_edge, %do.end129, %if.else113.err_queue_init_crit_edge
  %ret.0 = phi i32 [ %call123, %do.end129 ], [ %call159, %do.end165 ], [ -2, %if.else113.err_queue_init_crit_edge ], [ -2, %if.else146.err_queue_init_crit_edge ]
  %75 = ptrtoint ptr %num_inst to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_inst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp184 = icmp eq i32 %76, 1
  br i1 %cmp184, label %if.then185, label %err_queue_init.err_ctrls_setup_crit_edge

err_queue_init.err_ctrls_setup_crit_edge:         ; preds = %err_queue_init
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ctrls_setup

if.then185:                                       ; preds = %err_queue_init
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @s5p_mfc_deinit_hw(ptr noundef %1) #7
  br label %err_pwr_enable

err_pwr_enable:                                   ; preds = %if.then185, %if.end100.err_pwr_enable_crit_edge, %if.then99, %do.end90
  %ret.1.ph = phi i32 [ %ret.0, %if.then185 ], [ %call101, %if.end100.err_pwr_enable_crit_edge ], [ %call97, %if.then99 ], [ %call84, %do.end90 ]
  %77 = ptrtoint ptr %num_inst to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr = load i32, ptr %num_inst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp188 = icmp eq i32 %.pr, 1
  br i1 %cmp188, label %if.then189, label %err_pwr_enable.err_ctrls_setup_crit_edge

err_pwr_enable.err_ctrls_setup_crit_edge:         ; preds = %err_pwr_enable
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_ctrls_setup

if.then189:                                       ; preds = %err_pwr_enable
  %call190 = tail call i32 @s5p_mfc_power_off() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call190)
  %cmp191 = icmp slt i32 %call190, 0
  br i1 %cmp191, label %do.end196, label %if.then189.if.end201_crit_edge

if.then189.if.end201_crit_edge:                   ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end201

do.end196:                                        ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  %call198 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.126, i32 noundef 916) #10
  br label %if.end201

if.end201:                                        ; preds = %do.end196, %if.then189.if.end201_crit_edge
  %watchdog_timer202 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 30
  %call203 = tail call i32 @del_timer_sync(ptr noundef %watchdog_timer202) #7
  br label %err_ctrls_setup

err_ctrls_setup:                                  ; preds = %if.end201, %err_pwr_enable.err_ctrls_setup_crit_edge, %err_queue_init.err_ctrls_setup_crit_edge, %do.end68, %do.end51
  %ret.2 = phi i32 [ %call45, %do.end51 ], [ %ret.1.ph, %if.end201 ], [ %ret.1.ph, %err_pwr_enable.err_ctrls_setup_crit_edge ], [ %call62, %do.end68 ], [ %ret.0, %err_queue_init.err_ctrls_setup_crit_edge ]
  tail call void @s5p_mfc_dec_ctrls_delete(ptr noundef nonnull %call7.i.i) #7
  br label %err_bad_node

err_bad_node:                                     ; preds = %err_ctrls_setup, %if.else.err_bad_node_crit_edge
  %ret.3 = phi i32 [ %ret.2, %err_ctrls_setup ], [ -2, %if.else.err_bad_node_crit_edge ]
  %78 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num, align 4
  %arrayidx207 = getelementptr %struct.s5p_mfc_dev, ptr %1, i32 0, i32 26, i32 %79
  %80 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %arrayidx207, align 4
  br label %err_no_ctx

err_no_ctx:                                       ; preds = %err_bad_node, %do.end32, %do.body27.err_no_ctx_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err_bad_node ], [ -16, %do.end32 ], [ -16, %do.body27.err_no_ctx_crit_edge ]
  tail call void @v4l2_fh_del(ptr noundef %fh) #7
  tail call void @v4l2_fh_exit(ptr noundef %fh) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %err_alloc

err_alloc:                                        ; preds = %err_no_ctx, %if.end8.err_alloc_crit_edge
  %ret.5 = phi i32 [ %ret.4, %err_no_ctx ], [ -12, %if.end8.err_alloc_crit_edge ]
  %81 = ptrtoint ptr %num_inst to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_inst, align 4
  %dec = add i32 %82, -1
  store i32 %dec, ptr %num_inst, align 4
  tail call void @mutex_unlock(ptr noundef %mfc_mutex) #7
  %83 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %83)
  %cmp213 = icmp sgt i32 %83, 4
  br i1 %cmp213, label %err_alloc.cleanup.sink.split_crit_edge, label %err_alloc.cleanup_crit_edge

err_alloc.cleanup_crit_edge:                      ; preds = %err_alloc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_alloc.cleanup.sink.split_crit_edge:           ; preds = %err_alloc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_alloc.cleanup.sink.split_crit_edge, %if.end170.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 905, %if.end170.cleanup.sink.split_crit_edge ], [ 930, %err_alloc.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end170.cleanup.sink.split_crit_edge ], [ %ret.5, %err_alloc.cleanup.sink.split_crit_edge ]
  %call219 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.126, i32 noundef %.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %err_alloc.cleanup_crit_edge, %if.end170.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %do.end5.cleanup_crit_edge ], [ 0, %if.end170.cleanup_crit_edge ], [ %ret.5, %err_alloc.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_release(ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %4 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp = icmp sgt i32 %4, 4
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.152, i32 noundef 941) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end69.critedge, label %if.then6

if.then6:                                         ; preds = %do.end5
  %mfc_mutex = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mfc_mutex, i32 noundef 0) #7
  %vq_src.c = getelementptr i8, ptr %1, i32 268
  tail call void @vb2_queue_release(ptr noundef %vq_src.c) #7
  %vq_dst.c = getelementptr i8, ptr %1, i32 780
  tail call void @vb2_queue_release(ptr noundef %vq_dst.c) #7
  %call10 = tail call i32 @s5p_mfc_clock_on() #7
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr, align 4
  %condlock.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 13
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %condlock.i) #7
  %num.i = getelementptr i8, ptr %1, i32 192
  %7 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num.i, align 4
  %ctx_work_bits.i = getelementptr inbounds %struct.s5p_mfc_dev, ptr %6, i32 0, i32 28
  %rem.i.i = and i32 %8, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %8, 5
  %add.ptr.i.i = getelementptr i32, ptr %ctx_work_bits.i, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %10, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %condlock.i, i32 noundef %call3.i) #7
  %state = getelementptr i8, ptr %1, i32 1320
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %12, label %do.body15 [
    i32 0, label %if.then6.if.end26_crit_edge
    i32 100, label %if.then6.if.end26_crit_edge124
  ]

if.then6.if.end26_crit_edge124:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then6.if.end26_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.body15:                                        ; preds = %if.then6
  %14 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp16 = icmp sgt i32 %14, 1
  br i1 %cmp16, label %do.end20, label %do.body15.do.end25_crit_edge

do.body15.do.end25_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

do.end20:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.152, i32 noundef 956) #10
  br label %do.end25

do.end25:                                         ; preds = %do.end20, %do.body15.do.end25_crit_edge
  tail call void @s5p_mfc_close_mfc_inst(ptr noundef nonnull %3, ptr noundef %add.ptr) #7
  br label %if.end26

if.end26:                                         ; preds = %do.end25, %if.then6.if.end26_crit_edge, %if.then6.if.end26_crit_edge124
  %curr_ctx = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 27
  %15 = ptrtoint ptr %curr_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %curr_ctx, align 4
  %17 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp27 = icmp eq i32 %16, %18
  br i1 %cmp27, label %if.then28, label %if.end26.if.end29_crit_edge

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  %hw_lock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 25
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %hw_lock) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  %num_inst = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 11
  %19 = ptrtoint ptr %num_inst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_inst, align 4
  %dec = add i32 %20, -1
  store i32 %dec, ptr %num_inst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp31 = icmp eq i32 %dec, 0
  %21 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp34 = icmp sgt i32 %21, 1
  br i1 %cmp31, label %do.body33, label %do.body57

do.body33:                                        ; preds = %if.end29
  br i1 %cmp34, label %do.end38, label %do.body33.do.end43_crit_edge

do.body33.do.end43_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43

do.end38:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.152, i32 noundef 964) #10
  br label %do.end43

do.end43:                                         ; preds = %do.end38, %do.body33.do.end43_crit_edge
  tail call void @s5p_mfc_deinit_hw(ptr noundef nonnull %3) #7
  %watchdog_timer = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 30
  %call44 = tail call i32 @del_timer_sync(ptr noundef %watchdog_timer) #7
  tail call void @s5p_mfc_clock_off() #7
  %call45 = tail call i32 @s5p_mfc_power_off() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %do.end51, label %do.end43.if.then71_crit_edge

do.end43.if.then71_crit_edge:                     ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then71

do.end51:                                         ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.152, i32 noundef 969) #10
  br label %if.then71

do.body57:                                        ; preds = %if.end29
  br i1 %cmp34, label %do.end62, label %do.body57.do.end67_crit_edge

do.body57.do.end67_crit_edge:                     ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end67

do.end62:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.152, i32 noundef 971) #10
  br label %do.end67

do.end67:                                         ; preds = %do.end62, %do.body57.do.end67_crit_edge
  tail call void @s5p_mfc_clock_off() #7
  br label %if.then71

if.end69.critedge:                                ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %vq_src.c121 = getelementptr i8, ptr %1, i32 268
  tail call void @vb2_queue_release(ptr noundef %vq_src.c121) #7
  %vq_dst.c122 = getelementptr i8, ptr %1, i32 780
  tail call void @vb2_queue_release(ptr noundef %vq_dst.c122) #7
  tail call void @s5p_mfc_dec_ctrls_delete(ptr noundef %add.ptr) #7
  tail call void @v4l2_fh_del(ptr noundef %1) #7
  br label %if.end78

if.then71:                                        ; preds = %do.end67, %do.end51, %do.end43.if.then71_crit_edge
  %22 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num.i, align 4
  %arrayidx = getelementptr %struct.s5p_mfc_dev, ptr %3, i32 0, i32 26, i32 %23
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %arrayidx, align 4
  tail call void @s5p_mfc_dec_ctrls_delete(ptr noundef %add.ptr) #7
  tail call void @v4l2_fh_del(ptr noundef %1) #7
  tail call void @v4l2_fh_exit(ptr noundef %1) #7
  br label %if.end78

if.end78:                                         ; preds = %if.then71, %if.end69.critedge
  tail call void @kfree(ptr noundef %add.ptr) #7
  %25 = load i32, ptr @mfc_debug_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp80 = icmp sgt i32 %25, 4
  br i1 %cmp80, label %do.end84, label %if.end78.do.end89_crit_edge

if.end78.do.end89_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end89

do.end84:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  %call86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.152, i32 noundef 983) #10
  br label %do.end89

do.end89:                                         ; preds = %do.end84, %if.end78.do.end89_crit_edge
  br i1 %tobool.not, label %do.end89.if.end93_crit_edge, label %if.then91

do.end89.if.end93_crit_edge:                      ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93

if.then91:                                        ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #9
  %mfc_mutex92 = getelementptr inbounds %struct.s5p_mfc_dev, ptr %3, i32 0, i32 14
  tail call void @mutex_unlock(ptr noundef %mfc_mutex92) #7
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %do.end89.if.end93_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_pending(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_dec_codec_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_dec_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_dec_ctrls_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_enc_codec_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_enc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_enc_ctrls_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_power_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_dec_queue_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_enc_queue_ops() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_power_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_dec_ctrls_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @s5p_mfc_close_mfc_inst(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_inst = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %num_inst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_inst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup75_crit_edge, label %if.end

entry.cleanup75_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup75

if.end:                                           ; preds = %entry
  %enter_suspend = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 33
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %enter_suspend) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %while.cond.preheader, label %do.end

while.cond.preheader:                             ; preds = %if.end
  %hw_lock = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 25
  %int_cond = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 15
  %queue = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 18
  br label %while.cond

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.181, i32 noundef 1470) #10
  br label %cleanup75

while.cond:                                       ; preds = %if.end55.while.cond_crit_edge, %while.cond.preheader
  %call9 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %hw_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1479) #7
  %4 = ptrtoint ptr %int_cond to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %int_cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.not = icmp eq i32 %5, 0
  br i1 %tobool.not.not, label %if.then26, label %while.body.if.end55_crit_edge

while.body.if.end55_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then26:                                        ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call29109 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %7 = ptrtoint ptr %int_cond to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %int_cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool32.not110.not = icmp eq i32 %8, 0
  br i1 %tobool32.not110.not, label %if.then26.if.end48_crit_edge, label %if.then26.for.end_crit_edge

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then26.if.end48_crit_edge:                     ; preds = %if.then26
  br label %if.end48

if.end48:                                         ; preds = %cleanup.if.end48_crit_edge, %if.then26.if.end48_crit_edge
  %__ret27.1113 = phi i32 [ %__ret27.1, %cleanup.if.end48_crit_edge ], [ 200, %if.then26.if.end48_crit_edge ]
  %call29112 = phi i32 [ %call29, %cleanup.if.end48_crit_edge ], [ %call29109, %if.then26.if.end48_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29112)
  %tobool49.not = icmp eq i32 %call29112, 0
  br i1 %tobool49.not, label %cleanup, label %if.end48.__out_crit_edge

if.end48.__out_crit_edge:                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end48
  %call52 = call i32 @schedule_timeout(i32 noundef %__ret27.1113) #7
  %call29 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %9 = ptrtoint ptr %int_cond to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %int_cond, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool32.not = icmp eq i32 %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool36.not = icmp eq i32 %call52, 0
  %spec.store.select77 = select i1 %tobool36.not, i32 1, i32 %call52
  %__ret27.1 = select i1 %tobool32.not, i32 %call52, i32 %spec.store.select77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret27.1)
  %tobool42.not = icmp eq i32 %__ret27.1, 0
  %not.tobool32.not = xor i1 %tobool32.not, true
  %11 = select i1 %not.tobool32.not, i1 true, i1 %tobool42.not
  br i1 %11, label %cleanup.for.end_crit_edge, label %cleanup.if.end48_crit_edge

cleanup.if.end48_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then26.for.end_crit_edge
  %__ret27.1.lcssa = phi i32 [ 200, %if.then26.for.end_crit_edge ], [ %__ret27.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end48.__out_crit_edge
  %__ret27.2100 = phi i32 [ %__ret27.1.lcssa, %for.end ], [ %call29112, %if.end48.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end55

if.end55:                                         ; preds = %__out, %while.body.if.end55_crit_edge
  %__ret.1 = phi i32 [ 200, %while.body.if.end55_crit_edge ], [ %__ret27.2100, %__out ]
  %cmp57 = icmp eq i32 %__ret.1, 0
  br i1 %cmp57, label %do.end62, label %if.end55.while.cond_crit_edge

if.end55.while.cond_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.181, i32 noundef 1481) #10
  call void @_clear_bit(i32 noundef 0, ptr noundef %enter_suspend) #7
  br label %cleanup75

while.end:                                        ; preds = %while.cond
  %call69 = call i32 @s5p_mfc_sleep(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %while.end.cleanup75_crit_edge, label %if.then71

while.end.cleanup75_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup75

if.then71:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @_clear_bit(i32 noundef 0, ptr noundef %enter_suspend) #7
  call void @_clear_bit(i32 noundef 0, ptr noundef %hw_lock) #7
  br label %cleanup75

cleanup75:                                        ; preds = %if.then71, %while.end.cleanup75_crit_edge, %do.end62, %do.end, %entry.cleanup75_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end62 ], [ 0, %entry.cleanup75_crit_edge ], [ %call69, %if.then71 ], [ 0, %while.end.cleanup75_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5p_mfc_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_inst = getelementptr inbounds %struct.s5p_mfc_dev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %num_inst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_inst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @s5p_mfc_wakeup(ptr noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @s5p_mfc_wakeup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 186)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !16, !18, !20, !22, !24, !25, !26, !28, !29, !31, !33, !35, !36, !37, !38, !39, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !87, !89, !91, !93, !94, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !151, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !195, !197, !198, !199, !200, !202, !204, !206, !207, !208, !209, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !233, !235, !237, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !264, !265, !266, !268, !269, !270, !272, !273, !274, !276, !277, !279, !280, !281, !283, !284, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !307, !309, !310, !311, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !373, !374, !375, !377, !378}
!llvm.module.flags = !{!379, !380, !381, !382, !383, !384, !385, !386}
!llvm.ident = !{!387}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 39, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype298, !1, !"__UNIQUE_ID_debugtype298", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug299, !4, !"__UNIQUE_ID_debug299", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 40, i32 1}
!5 = !{ptr @__param_mem, !6, !"__param_mem", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 43, i32 1}
!7 = !{ptr @__UNIQUE_ID_memtype300, !6, !"__UNIQUE_ID_memtype300", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_mem301, !9, !"__UNIQUE_ID_mem301", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 44, i32 1}
!10 = !{ptr @__initcall__kmod_s5p_mfc__305_1678_s5p_mfc_driver_init6, !11, !"__initcall__kmod_s5p_mfc__305_1678_s5p_mfc_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1678, i32 1}
!12 = !{ptr @__exitcall_s5p_mfc_driver_exit, !11, !"__exitcall_s5p_mfc_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file306, !14, !"__UNIQUE_ID_file306", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1680, i32 1}
!15 = !{ptr @__UNIQUE_ID_license307, !14, !"__UNIQUE_ID_license307", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_author308, !17, !"__UNIQUE_ID_author308", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1681, i32 1}
!18 = !{ptr @__UNIQUE_ID_description309, !19, !"__UNIQUE_ID_description309", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1682, i32 1}
!20 = !{ptr @mfc_debug_level, !21, !"mfc_debug_level", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 38, i32 5}
!22 = !{ptr @mfc_mem_size, !23, !"mfc_mem_size", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 42, i32 14}
!24 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!25 = !{ptr @__param_str_mem, !6, !"__param_str_mem", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!28 = !{ptr @.str, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1672, i32 11}
!31 = !{ptr @s5p_mfc_driver, !32, !"s5p_mfc_driver", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1668, i32 31}
!33 = !{ptr @.str.2, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1274, i32 2}
!35 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @s5p_mfc_probe.__UNIQUE_ID_ddebug302, !34, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!39 = !{ptr @s5p_mfc_probe.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1279, i32 2}
!41 = !{ptr @.str.6, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @s5p_mfc_probe.__key.7, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1280, i32 2}
!44 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1283, i32 3}
!47 = !{ptr @s5p_mfc_probe._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @s5p_mfc_probe._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1289, i32 3}
!51 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @s5p_mfc_probe._entry.10, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @s5p_mfc_probe._entry_ptr.14, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1299, i32 3}
!57 = !{ptr @s5p_mfc_probe._entry.15, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @s5p_mfc_probe._entry_ptr.17, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1306, i32 3}
!61 = !{ptr @s5p_mfc_probe._entry.18, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @s5p_mfc_probe._entry_ptr.20, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1312, i32 3}
!65 = !{ptr @s5p_mfc_probe._entry.21, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @s5p_mfc_probe._entry_ptr.23, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1318, i32 3}
!69 = !{ptr @s5p_mfc_probe._entry.24, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @s5p_mfc_probe._entry_ptr.26, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @s5p_mfc_probe.__key.27, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1328, i32 2}
!73 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @s5p_mfc_probe.__key.29, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1329, i32 2}
!76 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @s5p_mfc_probe.__key.31, !78, !"__key", i1 false, i1 false}
!78 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1331, i32 2}
!79 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @s5p_mfc_probe.__key.33, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1333, i32 2}
!82 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1342, i32 3}
!85 = !{ptr @s5p_mfc_probe._entry.35, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @s5p_mfc_probe._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1354, i32 41}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1354, i32 47}
!91 = !{ptr @s5p_mfc_probe._entry.40, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1361, i32 3}
!93 = !{ptr @s5p_mfc_probe._entry_ptr.41, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1372, i32 47}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1385, i32 3}
!98 = !{ptr @s5p_mfc_probe._entry.43, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @s5p_mfc_probe._entry_ptr.45, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1388, i32 2}
!102 = !{ptr @s5p_mfc_probe._entry.46, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @s5p_mfc_probe._entry_ptr.48, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @s5p_mfc_probe._entry.49, !105, !"_entry", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1393, i32 3}
!106 = !{ptr @s5p_mfc_probe._entry_ptr.50, !105, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1396, i32 2}
!109 = !{ptr @s5p_mfc_probe._entry.51, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @s5p_mfc_probe._entry_ptr.53, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1399, i32 2}
!113 = !{ptr @s5p_mfc_probe.__UNIQUE_ID_ddebug303, !112, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1416, i32 2}
!116 = !{ptr @s5p_mfc_probe.__UNIQUE_ID_ddebug304, !115, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 637, i32 2}
!119 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @s5p_mfc_irq._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @s5p_mfc_irq._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 645, i32 2}
!124 = !{ptr @s5p_mfc_irq._entry.58, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @s5p_mfc_irq._entry_ptr.60, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 666, i32 5}
!128 = !{ptr @s5p_mfc_irq._entry.61, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @s5p_mfc_irq._entry_ptr.63, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 726, i32 3}
!132 = !{ptr @s5p_mfc_irq._entry.64, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @s5p_mfc_irq._entry_ptr.66, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 730, i32 2}
!136 = !{ptr @s5p_mfc_irq._entry.67, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @s5p_mfc_irq._entry_ptr.69, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 738, i32 3}
!140 = !{ptr @s5p_mfc_irq._entry.70, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @s5p_mfc_irq._entry_ptr.72, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 746, i32 2}
!144 = !{ptr @s5p_mfc_irq._entry.73, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @s5p_mfc_irq._entry_ptr.75, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.76, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 375, i32 2}
!148 = !{ptr @.str.77, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @s5p_mfc_handle_frame._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @s5p_mfc_handle_frame._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @s5p_mfc_handle_frame.ev_src_ch, !152, !"ev_src_ch", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 394, i32 35}
!153 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 418, i32 3}
!155 = !{ptr @s5p_mfc_handle_frame._entry.78, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @s5p_mfc_handle_frame._entry_ptr.80, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.82, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 432, i32 4}
!159 = !{ptr @s5p_mfc_handle_frame._entry.81, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @s5p_mfc_handle_frame._entry_ptr.83, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.85, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 435, i32 4}
!163 = !{ptr @s5p_mfc_handle_frame._entry.84, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @s5p_mfc_handle_frame._entry_ptr.86, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.87, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 229, i32 3}
!167 = !{ptr @.str.88, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @s5p_mfc_handle_frame_all_extracted._entry, !166, !"_entry", i1 false, i1 false}
!169 = !{ptr @s5p_mfc_handle_frame_all_extracted._entry_ptr, !166, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.89, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 294, i32 5}
!172 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @s5p_mfc_handle_frame_copy_time._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @s5p_mfc_handle_frame_copy_time._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 468, i32 2}
!177 = !{ptr @.str.92, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @s5p_mfc_handle_error._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @s5p_mfc_handle_error._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 607, i32 2}
!182 = !{ptr @.str.94, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @s5p_mfc_handle_stream_complete._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @s5p_mfc_handle_stream_complete._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.95, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 513, i32 4}
!187 = !{ptr @.str.96, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @s5p_mfc_handle_seq_done._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @s5p_mfc_handle_seq_done._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.97, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1203, i32 3}
!192 = !{ptr @.str.98, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @s5p_mfc_configure_common_memory._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @s5p_mfc_configure_common_memory._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.100, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1229, i32 2}
!197 = !{ptr @.str.101, !196, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @s5p_mfc_configure_common_memory._entry.99, !196, !"_entry", i1 false, i1 false}
!199 = !{ptr @s5p_mfc_configure_common_memory._entry_ptr.102, !196, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.103, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1128, i32 59}
!202 = !{ptr @.str.104, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1132, i32 59}
!204 = !{ptr @.str.105, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1152, i32 3}
!206 = !{ptr @.str.106, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @s5p_mfc_configure_2port_memory._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @s5p_mfc_configure_2port_memory._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.107, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1087, i32 22}
!211 = !{ptr @.str.108, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 174, i32 2}
!213 = !{ptr @.str.109, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @s5p_mfc_watchdog_worker._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @s5p_mfc_watchdog_worker._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.111, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 179, i32 3}
!218 = !{ptr @s5p_mfc_watchdog_worker._entry.110, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @s5p_mfc_watchdog_worker._entry_ptr.112, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.114, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 205, i32 4}
!222 = !{ptr @s5p_mfc_watchdog_worker._entry.113, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @s5p_mfc_watchdog_worker._entry_ptr.115, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.117, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 212, i32 4}
!226 = !{ptr @s5p_mfc_watchdog_worker._entry.116, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @s5p_mfc_watchdog_worker._entry_ptr.118, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.119, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 156, i32 3}
!230 = !{ptr @.str.120, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @s5p_mfc_watchdog._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @s5p_mfc_watchdog._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @s5p_mfc_fops, !234, !"s5p_mfc_fops", i1 false, i1 false}
!234 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1061, i32 42}
!235 = !{ptr @.str.121, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1050, i32 3}
!237 = !{ptr @.str.122, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @s5p_mfc_mmap._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @s5p_mfc_mmap._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.124, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1053, i32 3}
!242 = !{ptr @s5p_mfc_mmap._entry.123, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @s5p_mfc_mmap._entry_ptr.125, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.126, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 759, i32 2}
!246 = !{ptr @s5p_mfc_open._entry, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @s5p_mfc_open._entry_ptr, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @s5p_mfc_open.__key, !249, !"__key", i1 false, i1 false}
!249 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 769, i32 2}
!250 = !{ptr @.str.127, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.129, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 783, i32 4}
!253 = !{ptr @s5p_mfc_open._entry.128, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @s5p_mfc_open._entry_ptr.130, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.132, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 798, i32 4}
!257 = !{ptr @s5p_mfc_open._entry.131, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @s5p_mfc_open._entry_ptr.133, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @s5p_mfc_open._entry.134, !260, !"_entry", i1 false, i1 false}
!260 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 811, i32 4}
!261 = !{ptr @s5p_mfc_open._entry_ptr.135, !260, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @.str.137, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 827, i32 4}
!264 = !{ptr @s5p_mfc_open._entry.136, !263, !"_entry", i1 false, i1 false}
!265 = !{ptr @s5p_mfc_open._entry_ptr.138, !263, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.140, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 866, i32 3}
!268 = !{ptr @s5p_mfc_open._entry.139, !267, !"_entry", i1 false, i1 false}
!269 = !{ptr @s5p_mfc_open._entry_ptr.141, !267, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.143, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 901, i32 3}
!272 = !{ptr @s5p_mfc_open._entry.142, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @s5p_mfc_open._entry_ptr.144, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @s5p_mfc_open._entry.145, !275, !"_entry", i1 false, i1 false}
!275 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 905, i32 2}
!276 = !{ptr @s5p_mfc_open._entry_ptr.146, !275, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.148, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 916, i32 4}
!279 = !{ptr @s5p_mfc_open._entry.147, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @s5p_mfc_open._entry_ptr.149, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @s5p_mfc_open._entry.150, !282, !"_entry", i1 false, i1 false}
!282 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 930, i32 2}
!283 = !{ptr @s5p_mfc_open._entry_ptr.151, !282, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.152, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 941, i32 2}
!286 = !{ptr @s5p_mfc_release._entry, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @s5p_mfc_release._entry_ptr, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.154, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 956, i32 4}
!290 = !{ptr @s5p_mfc_release._entry.153, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @s5p_mfc_release._entry_ptr.155, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.157, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 964, i32 4}
!294 = !{ptr @s5p_mfc_release._entry.156, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @s5p_mfc_release._entry_ptr.158, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.160, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 969, i32 5}
!298 = !{ptr @s5p_mfc_release._entry.159, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @s5p_mfc_release._entry_ptr.161, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.163, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 971, i32 4}
!302 = !{ptr @s5p_mfc_release._entry.162, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @s5p_mfc_release._entry_ptr.164, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @s5p_mfc_release._entry.165, !305, !"_entry", i1 false, i1 false}
!305 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 983, i32 2}
!306 = !{ptr @s5p_mfc_release._entry_ptr.166, !305, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.167, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1428, i32 2}
!309 = !{ptr @.str.168, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @s5p_mfc_remove._entry, !308, !"_entry", i1 false, i1 false}
!311 = !{ptr @s5p_mfc_remove._entry_ptr, !308, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @exynos_mfc_match, !313, !"exynos_mfc_match", i1 false, i1 false}
!313 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1644, i32 34}
!314 = !{ptr @.str.169, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1528, i32 16}
!316 = !{ptr @.str.170, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1529, i32 16}
!318 = !{ptr @.str.171, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1529, i32 23}
!320 = !{ptr @mfc_drvdata_v5, !321, !"mfc_drvdata_v5", i1 false, i1 false}
!321 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1523, i32 31}
!322 = !{ptr @buf_size_v5, !323, !"buf_size_v5", i1 false, i1 false}
!323 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1517, i32 32}
!324 = !{ptr @mfc_buf_size_v5, !325, !"mfc_buf_size_v5", i1 false, i1 false}
!325 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1510, i32 35}
!326 = !{ptr @.str.172, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1553, i32 20}
!328 = !{ptr @.str.173, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1558, i32 20}
!330 = !{ptr @mfc_drvdata_v6, !331, !"mfc_drvdata_v6", i1 false, i1 false}
!331 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1548, i32 31}
!332 = !{ptr @buf_size_v6, !333, !"buf_size_v6", i1 false, i1 false}
!333 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1542, i32 32}
!334 = !{ptr @mfc_buf_size_v6, !335, !"mfc_buf_size_v6", i1 false, i1 false}
!335 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1534, i32 35}
!336 = !{ptr @.str.174, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1582, i32 20}
!338 = !{ptr @mfc_drvdata_v7, !339, !"mfc_drvdata_v7", i1 false, i1 false}
!339 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1577, i32 31}
!340 = !{ptr @buf_size_v7, !341, !"buf_size_v7", i1 false, i1 false}
!341 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1571, i32 32}
!342 = !{ptr @mfc_buf_size_v7, !343, !"mfc_buf_size_v7", i1 false, i1 false}
!343 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1563, i32 35}
!344 = !{ptr @.str.175, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1606, i32 20}
!346 = !{ptr @mfc_drvdata_v8, !347, !"mfc_drvdata_v8", i1 false, i1 false}
!347 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1601, i32 31}
!348 = !{ptr @buf_size_v8, !349, !"buf_size_v8", i1 false, i1 false}
!349 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1595, i32 32}
!350 = !{ptr @mfc_buf_size_v8, !351, !"mfc_buf_size_v8", i1 false, i1 false}
!351 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1587, i32 35}
!352 = !{ptr @.str.176, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1617, i32 16}
!354 = !{ptr @.str.177, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1617, i32 24}
!356 = !{ptr @.str.178, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1617, i32 32}
!358 = !{ptr @mfc_drvdata_v8_5433, !359, !"mfc_drvdata_v8_5433", i1 false, i1 false}
!359 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1611, i32 31}
!360 = !{ptr @.str.179, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1641, i32 20}
!362 = !{ptr @mfc_drvdata_v10, !363, !"mfc_drvdata_v10", i1 false, i1 false}
!363 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1636, i32 31}
!364 = !{ptr @buf_size_v10, !365, !"buf_size_v10", i1 false, i1 false}
!365 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1630, i32 32}
!366 = !{ptr @mfc_buf_size_v10, !367, !"mfc_buf_size_v10", i1 false, i1 false}
!367 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1621, i32 35}
!368 = !{ptr @s5p_mfc_pm_ops, !369, !"s5p_mfc_pm_ops", i1 false, i1 false}
!369 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1506, i32 32}
!370 = !{ptr @.str.180, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1470, i32 3}
!372 = !{ptr @.str.181, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @s5p_mfc_suspend._entry, !371, !"_entry", i1 false, i1 false}
!374 = !{ptr @s5p_mfc_suspend._entry_ptr, !371, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.183, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/media/platform/s5p-mfc/s5p_mfc.c", i32 1481, i32 4}
!377 = !{ptr @s5p_mfc_suspend._entry.182, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @s5p_mfc_suspend._entry_ptr.184, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{i32 1, !"wchar_size", i32 2}
!380 = !{i32 1, !"min_enum_size", i32 4}
!381 = !{i32 8, !"branch-target-enforcement", i32 0}
!382 = !{i32 8, !"sign-return-address", i32 0}
!383 = !{i32 8, !"sign-return-address-all", i32 0}
!384 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!385 = !{i32 7, !"uwtable", i32 1}
!386 = !{i32 7, !"frame-pointer", i32 2}
!387 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!388 = !{i64 2148767022, i64 2148767027, i64 2148767040, i64 2148767084, i64 2148767118, i64 2148767139}
!389 = !{!"auto-init"}
!390 = !{!"branch_weights", i32 1, i32 2000}
!391 = !{i64 2148285207, i64 2148285233, i64 2148285262, i64 2148285296, i64 2148285327, i64 2148285350}
!392 = !{!"branch_weights", i32 2000, i32 1}
