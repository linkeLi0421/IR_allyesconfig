; ModuleID = '/llk/IR_all_yes/drivers/media/test-drivers/vim2m.c_pt.bc'
source_filename = "../drivers/media/test-drivers/vim2m.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.media_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.vim2m_fmt = type { i32, i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vim2m_dev = type { %struct.v4l2_device, %struct.video_device, %struct.media_device, %struct.atomic_t, %struct.mutex, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vim2m_ctx = type { %struct.v4l2_fh, ptr, %struct.v4l2_ctrl_handler, i8, i32, i32, %struct.mutex, %struct.delayed_work, i32, i32, i32, i32, i32, i32, [2 x %struct.vim2m_q_data] }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vim2m_q_data = type { i32, i32, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.113, [2 x i32] }
%union.anon.113 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }

@__UNIQUE_ID_description298 = internal constant [63 x i8] c"vim2m.description=Virtual device for mem2mem framework testing\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [46 x i8] c"vim2m.author=Pawel Osciak, <pawel@osciak.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [44 x i8] c"vim2m.file=drivers/media/test-drivers/vim2m\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [18 x i8] c"vim2m.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version302 = internal constant [18 x i8] c"vim2m.version=0.2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vim2m\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.2\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_alias303 = internal constant [28 x i8] c"vim2m.alias=mem2mem_testdev\00", section ".modinfo", align 1
@__param_str_debug = internal constant [12 x i8] c"vim2m.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype304 = internal constant [26 x i8] c"vim2m.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_debug305 = internal constant [29 x i8] c"vim2m.parm=debug:debug level\00", section ".modinfo", align 1
@__param_str_default_transtime = internal constant [24 x i8] c"vim2m.default_transtime\00", align 1
@default_transtime = internal global { i32, [28 x i8] } { i32 40, [28 x i8] zeroinitializer }, align 32
@__param_default_transtime = internal constant %struct.kernel_param { ptr @__param_str_default_transtime, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @default_transtime } }, section "__param", align 4
@__UNIQUE_ID_default_transtimetype306 = internal constant [38 x i8] c"vim2m.parmtype=default_transtime:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_default_transtime307 = internal constant [60 x i8] c"vim2m.parm=default_transtime:default transaction time in ms\00", section ".modinfo", align 1
@vim2m_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vim2m_probe, ptr @vim2m_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@vim2m_pdev = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr @.str.1, i32 0, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @vim2m_dev_release, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@__initcall__kmod_vim2m__308_1426_vim2m_init6 = internal global ptr @vim2m_init, section ".initcall6.init", align 4
@__exitcall_vim2m_exit = internal global ptr @vim2m_exit, section ".exitcall.exit", align 4
@vim2m_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->dev_mutex\00", [16 x i8] zeroinitializer }, align 32
@vim2m_videodev = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @vim2m_fops, i32 67141632, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"vim2m\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @vim2m_device_release, ptr @vim2m_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@vim2m_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: Device registered as /dev/video%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vim2m_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/test-drivers/vim2m.c\00", [61 x i8] zeroinitializer }, align 32
@vim2m_probe._entry_ptr = internal global ptr @vim2m_probe._entry, section ".printk_index", align 4
@m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @device_run, ptr @job_ready, ptr @job_abort }, [20 x i8] zeroinitializer }, align 32
@vim2m_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.6, i32 1326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", [59 x i8] zeroinitializer }, align 32
@vim2m_probe._entry_ptr.9 = internal global ptr @vim2m_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"platform:vim2m\00", [17 x i8] zeroinitializer }, align 32
@m2m_media_ops = internal constant { %struct.media_device_ops, [44 x i8] } { %struct.media_device_ops { ptr null, ptr null, ptr null, ptr @vb2_request_validate, ptr @v4l2_m2m_request_queue }, [44 x i8] zeroinitializer }, align 32
@vim2m_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.6, i32 1344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@vim2m_probe._entry_ptr.13 = internal global ptr @vim2m_probe._entry.11, section ".printk_index", align 4
@vim2m_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 1352, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Failed to init mem2mem media controller\0A\00", [49 x i8] zeroinitializer }, align 32
@vim2m_probe._entry_ptr.16 = internal global ptr @vim2m_probe._entry.14, section ".printk_index", align 4
@vim2m_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.6, i32 1358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Failed to register mem2mem media device\0A\00", [49 x i8] zeroinitializer }, align 32
@vim2m_probe._entry_ptr.19 = internal global ptr @vim2m_probe._entry.17, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vim2m_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @vim2m_open, ptr @vim2m_release }, [60 x i8] zeroinitializer }, align 32
@vim2m_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr @vidioc_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr @vidioc_g_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr @vidioc_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr @vidioc_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_enum_framesizes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@vim2m_open._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vim2m:1183:(hdl)->_lock\00", [40 x i8] zeroinitializer }, align 32
@vim2m_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @vim2m_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@vim2m_ctrl_trans_time_msec = internal global { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vim2m_ctrl_ops, ptr null, i32 9967872, ptr @.str.30, i32 1, i64 1, i64 10001, i64 1, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@vim2m_ctrl_trans_num_bufs = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @vim2m_ctrl_ops, ptr null, i32 9967873, ptr @.str.31, i32 1, i64 1, i64 32, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@formats = internal global { [9 x %struct.vim2m_fmt], [52 x i8] } { [9 x %struct.vim2m_fmt] [%struct.vim2m_fmt { i32 1346520914, i32 16, i32 3 }, %struct.vim2m_fmt { i32 1380075346, i32 16, i32 3 }, %struct.vim2m_fmt { i32 859981650, i32 24, i32 3 }, %struct.vim2m_fmt { i32 861030210, i32 24, i32 3 }, %struct.vim2m_fmt { i32 1448695129, i32 16, i32 1 }, %struct.vim2m_fmt { i32 825770306, i32 8, i32 1 }, %struct.vim2m_fmt { i32 1196573255, i32 8, i32 1 }, %struct.vim2m_fmt { i32 1195528775, i32 8, i32 1 }, %struct.vim2m_fmt { i32 1111967570, i32 8, i32 1 }], [52 x i8] zeroinitializer }, align 32
@vim2m_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&ctx->vb_mutex\00", [17 x i8] zeroinitializer }, align 32
@vim2m_open.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&(&ctx->work_run)->work)\00", [53 x i8] zeroinitializer }, align 32
@vim2m_open.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&(&ctx->work_run)->timer\00", [39 x i8] zeroinitializer }, align 32
@vim2m_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.6, i32 1227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: %s: Created instance: %p, m2m_ctx: %p\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vim2m_open\00", [21 x i8] zeroinitializer }, align 32
@vim2m_open._entry_ptr = internal global ptr @vim2m_open._entry, section ".printk_index", align 4
@vim2m_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.6, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: Invalid control\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vim2m_s_ctrl\00", [19 x i8] zeroinitializer }, align 32
@vim2m_s_ctrl._entry_ptr = internal global ptr @vim2m_s_ctrl._entry, section ".printk_index", align 4
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Transaction Time (msec)\00", [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Buffers Per Transaction\00", [40 x i8] zeroinitializer }, align 32
@vim2m_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @vim2m_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr @vim2m_buf_out_validate, ptr null, ptr @vim2m_buf_prepare, ptr null, ptr null, ptr @vim2m_start_streaming, ptr @vim2m_stop_streaming, ptr @vim2m_buf_queue, ptr @vim2m_buf_request_complete }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vim2m_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017%s: %s: %s: get %d buffer(s) of size %d each.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vim2m_queue_setup\00", [46 x i8] zeroinitializer }, align 32
@vim2m_queue_setup._entry_ptr = internal global ptr @vim2m_queue_setup._entry, section ".printk_index", align 4
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Output\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Invalid\00", [24 x i8] zeroinitializer }, align 32
@vim2m_buf_out_validate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.6, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s: %s field isn't supported\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vim2m_buf_out_validate\00", [41 x i8] zeroinitializer }, align 32
@vim2m_buf_out_validate._entry_ptr = internal global ptr @vim2m_buf_out_validate._entry, section ".printk_index", align 4
@vim2m_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.6, i32 1028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s: type: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vim2m_buf_prepare\00", [46 x i8] zeroinitializer }, align 32
@vim2m_buf_prepare._entry_ptr = internal global ptr @vim2m_buf_prepare._entry, section ".printk_index", align 4
@vim2m_buf_prepare._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.6, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: %s: %s data will not fit into plane (%lu < %lu)\0A\00", [41 x i8] zeroinitializer }, align 32
@vim2m_buf_prepare._entry_ptr.43 = internal global ptr @vim2m_buf_prepare._entry.41, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@device_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.6, i32 634, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017%s: %s: Finishing capture buffer fill\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"device_work\00", [20 x i8] zeroinitializer }, align 32
@device_work._entry_ptr = internal global ptr @device_work._entry, section ".printk_index", align 4
@device_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.6, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: Acquiring kernel pointers to buffers failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"device_process\00", [17 x i8] zeroinitializer }, align 32
@device_process._entry_ptr = internal global ptr @device_process._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@vim2m_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.6, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: Releasing instance %p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vim2m_release\00", [18 x i8] zeroinitializer }, align 32
@vim2m_release._entry_ptr = internal global ptr @vim2m_release._entry, section ".printk_index", align 4
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.6, i32 847, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: %s queue busy\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vidioc_s_fmt\00", [19 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr = internal global ptr @vidioc_s_fmt._entry, section ".printk_index", align 4
@vidioc_s_fmt._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.6, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\017%s: %s: Format for type %s: %dx%d (%d bpp), fmt: %c%c%c%c\0A\00", [35 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr.56 = internal global ptr @vidioc_s_fmt._entry.54, section ".printk_index", align 4
@vidioc_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.6, i32 799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Fourcc format (0x%08x) invalid.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vidioc_try_fmt_vid_cap\00", [41 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_try_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_try_fmt_vid_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.59, ptr @.str.6, i32 824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vidioc_try_fmt_vid_out\00", [41 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_out._entry_ptr = internal global ptr @vidioc_try_fmt_vid_out._entry, section ".printk_index", align 4
@job_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.6, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: %s: Not enough buffers available\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"job_ready\00", [22 x i8] zeroinitializer }, align 32
@job_ready._entry_ptr = internal global ptr @job_ready._entry, section ".printk_index", align 4
@vim2m_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.6, i32 1386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: Removing vim2m\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vim2m_remove\00", [19 x i8] zeroinitializer }, align 32
@vim2m_remove._entry_ptr = internal global ptr @vim2m_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9963796, i64 9963797, i64 9967872, i64 9967873]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.68 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 861030210, i64 1346520914, i64 1380075346]
@__sancov_gen_cov_switch_values.70 = internal global [10 x i64] [i64 8, i64 32, i64 825770306, i64 859981650, i64 861030210, i64 1111967570, i64 1195528775, i64 1196573255, i64 1346520914, i64 1380075346]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 825770306, i64 1111967570, i64 1195528775, i64 1196573255]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 32, i64 825770306, i64 1111967570, i64 1195528775, i64 1196573255]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 32, i64 825770306, i64 1111967570, i64 1195528775, i64 1196573255]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 33, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 36, i32 21 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"default_transtime\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 41, i32 21 }
@___asan_gen_.92 = private unnamed_addr constant [11 x i8] c"vim2m_pdrv\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1397, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant [11 x i8] c"vim2m_pdev\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 79, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1311, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [15 x i8] c"vim2m_videodev\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1275, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1319, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant [8 x i8] c"m2m_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1285, i32 34 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1326, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1335, i32 30 }
@___asan_gen_.131 = private unnamed_addr constant [14 x i8] c"m2m_media_ops\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1291, i32 38 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1344, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1352, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1358, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [11 x i8] c"vim2m_fops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1266, i32 42 }
@___asan_gen_.155 = private unnamed_addr constant [16 x i8] c"vim2m_ioctl_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 943, i32 36 }
@___asan_gen_.158 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1183, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [15 x i8] c"vim2m_ctrl_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 939, i32 35 }
@___asan_gen_.167 = private unnamed_addr constant [27 x i8] c"vim2m_ctrl_trans_time_msec\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1140, i32 32 }
@___asan_gen_.170 = private unnamed_addr constant [26 x i8] c"vim2m_ctrl_trans_num_bufs\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1150, i32 38 }
@___asan_gen_.173 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 91, i32 25 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1211, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1212, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1226, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 932, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1143, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1153, i32 10 }
@___asan_gen_.218 = private unnamed_addr constant [11 x i8] c"vim2m_qops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1096, i32 29 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1002, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 252, i32 10 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 254, i32 10 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 256, i32 10 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1016, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1028, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1034, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.264, i32 1163, i32 7 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 634, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 467, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1239, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 651, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 847, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 857, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 797, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 822, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 571, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.342 = private constant [38 x i8] c"../drivers/media/test-drivers/vim2m.c\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.342, i32 1386, i32 2 }
@llvm.compiler.used = appending global [125 x ptr] [ptr @__UNIQUE_ID_alias303, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_debug305, ptr @__UNIQUE_ID_debugtype304, ptr @__UNIQUE_ID_default_transtime307, ptr @__UNIQUE_ID_default_transtimetype306, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__UNIQUE_ID_version302, ptr @__exitcall_vim2m_exit, ptr @__initcall__kmod_vim2m__308_1426_vim2m_init6, ptr @__modver_attr, ptr @__param_debug, ptr @__param_default_transtime, ptr @device_process._entry, ptr @device_process._entry_ptr, ptr @device_work._entry, ptr @device_work._entry_ptr, ptr @job_ready._entry, ptr @job_ready._entry_ptr, ptr @vidioc_s_fmt._entry, ptr @vidioc_s_fmt._entry.54, ptr @vidioc_s_fmt._entry_ptr, ptr @vidioc_s_fmt._entry_ptr.56, ptr @vidioc_try_fmt_vid_cap._entry, ptr @vidioc_try_fmt_vid_cap._entry_ptr, ptr @vidioc_try_fmt_vid_out._entry, ptr @vidioc_try_fmt_vid_out._entry_ptr, ptr @vim2m_buf_out_validate._entry, ptr @vim2m_buf_out_validate._entry_ptr, ptr @vim2m_buf_prepare._entry, ptr @vim2m_buf_prepare._entry.41, ptr @vim2m_buf_prepare._entry_ptr, ptr @vim2m_buf_prepare._entry_ptr.43, ptr @vim2m_exit, ptr @vim2m_open._entry, ptr @vim2m_open._entry_ptr, ptr @vim2m_probe._entry, ptr @vim2m_probe._entry.11, ptr @vim2m_probe._entry.14, ptr @vim2m_probe._entry.17, ptr @vim2m_probe._entry.7, ptr @vim2m_probe._entry_ptr, ptr @vim2m_probe._entry_ptr.13, ptr @vim2m_probe._entry_ptr.16, ptr @vim2m_probe._entry_ptr.19, ptr @vim2m_probe._entry_ptr.9, ptr @vim2m_queue_setup._entry, ptr @vim2m_queue_setup._entry_ptr, ptr @vim2m_release._entry, ptr @vim2m_release._entry_ptr, ptr @vim2m_remove._entry, ptr @vim2m_remove._entry_ptr, ptr @vim2m_s_ctrl._entry, ptr @vim2m_s_ctrl._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @default_transtime, ptr @vim2m_pdrv, ptr @vim2m_pdev, ptr @vim2m_probe.__key, ptr @.str.3, ptr @vim2m_videodev, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @m2m_ops, ptr @.str.8, ptr @.str.10, ptr @m2m_media_ops, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @vim2m_fops, ptr @vim2m_ioctl_ops, ptr @vim2m_open._key, ptr @.str.20, ptr @vim2m_ctrl_ops, ptr @vim2m_ctrl_trans_time_msec, ptr @vim2m_ctrl_trans_num_bufs, ptr @formats, ptr @vim2m_open.__key, ptr @.str.21, ptr @vim2m_open.__key.22, ptr @.str.23, ptr @vim2m_open.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @vim2m_qops, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_transtime to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_pdev to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_videodev to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m2m_media_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_open._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_ctrl_trans_time_msec to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_ctrl_trans_num_bufs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_open.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_open.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_buf_out_validate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_buf_prepare._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @job_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vim2m_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vim2m_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @vim2m_pdrv) #12
  tail call void @platform_device_unregister(ptr noundef nonnull @vim2m_pdev) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vim2m_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_device_register(ptr noundef nonnull @vim2m_pdev) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vim2m_pdrv, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_device_unregister(ptr noundef nonnull @vim2m_pdev) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vim2m_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2192) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef nonnull %call7.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.error_free_crit_edge

if.end.error_free_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %error_free

if.end5:                                          ; preds = %if.end
  %num_inst = getelementptr inbounds %struct.vim2m_dev, ptr %call7.i.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_inst, i32 noundef 4) #12
  %1 = ptrtoint ptr %num_inst to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %num_inst, align 8
  %dev_mutex = getelementptr inbounds %struct.vim2m_dev, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %dev_mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @vim2m_probe.__key) #12
  %vfd6 = getelementptr inbounds %struct.vim2m_dev, ptr %call7.i.i, i32 0, i32 1
  %2 = call ptr @memcpy(ptr %vfd6, ptr @vim2m_videodev, i32 1352)
  %lock = getelementptr inbounds %struct.vim2m_dev, ptr %call7.i.i, i32 0, i32 1, i32 26
  %3 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev_mutex, ptr %lock, align 8
  %v4l2_dev10 = getelementptr inbounds %struct.vim2m_dev, ptr %call7.i.i, i32 0, i32 1, i32 7
  %4 = ptrtoint ptr %v4l2_dev10 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %v4l2_dev10, align 4
  %driver_data.i.i = getelementptr inbounds %struct.vim2m_dev, ptr %call7.i.i, i32 0, i32 1, i32 5, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name, i32 noundef 0) #16
  %driver_data.i.i133 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %6 = ptrtoint ptr %driver_data.i.i133 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %driver_data.i.i133, align 4
  %call16 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @m2m_ops) #12
  %m2m_dev = getelementptr inbounds %struct.vim2m_dev, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call16, ptr %m2m_dev, align 8
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end22, label %if.end31

do.end22:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name) #16
  %8 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_dev, align 8
  %10 = ptrtoint ptr %9 to i32
  store ptr null, ptr %m2m_dev, align 8
  br label %error_dev

if.end31:                                         ; preds = %if.end5
  %mdev = getelementptr inbounds %struct.vim2m_dev, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev1, ptr %mdev, align 8
  %model = getelementptr inbounds %struct.vim2m_dev, ptr %call7.i.i, i32 0, i32 2, i32 2
  %call36 = tail call i32 @strscpy(ptr noundef %model, ptr noundef nonnull @.str.1, i32 noundef 32) #12
  %bus_info = getelementptr inbounds %struct.vim2m_dev, ptr %call7.i.i, i32 0, i32 2, i32 5
  %call39 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.10, i32 noundef 32) #12
  tail call void @media_device_init(ptr noundef %mdev) #12
  %ops = getelementptr inbounds %struct.vim2m_dev, ptr %call7.i.i, i32 0, i32 2, i32 21
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @m2m_media_ops, ptr %ops, align 8
  %mdev44 = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %mdev44 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %mdev, ptr %mdev44, align 4
  %fops.i = getelementptr inbounds %struct.vim2m_dev, ptr %call7.i.i, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fops.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vfd6, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %17) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool46.not = icmp eq i32 %call.i, 0
  br i1 %tobool46.not, label %if.end56, label %do.end50

do.end50:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name) #16
  %18 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_release(ptr noundef %19) #12
  br label %error_dev

if.end56:                                         ; preds = %if.end31
  %20 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m2m_dev, align 8
  %call58 = tail call i32 @v4l2_m2m_register_media_controller(ptr noundef %21, ptr noundef %vfd6, i32 noundef 16389) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end69, label %do.end63

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #14
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name) #16
  br label %error_v4l2

if.end69:                                         ; preds = %if.end56
  %call71 = tail call i32 @__media_device_register(ptr noundef %mdev, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end69.cleanup_crit_edge, label %do.end76

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name) #16
  %22 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_unregister_media_controller(ptr noundef %23) #12
  br label %error_v4l2

error_v4l2:                                       ; preds = %do.end76, %do.end63
  %ret.0 = phi i32 [ %call58, %do.end63 ], [ %call71, %do.end76 ]
  tail call void @video_unregister_device(ptr noundef %vfd6) #12
  br label %cleanup

error_dev:                                        ; preds = %do.end50, %do.end22
  %ret.1 = phi i32 [ %10, %do.end22 ], [ %call.i, %do.end50 ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call7.i.i) #12
  br label %error_free

error_free:                                       ; preds = %error_dev, %if.end.error_free_crit_edge
  %ret.2 = phi i32 [ %call2, %if.end.error_free_crit_edge ], [ %ret.1, %error_dev ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %cleanup

cleanup:                                          ; preds = %error_free, %error_v4l2, %if.end69.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %error_free ], [ %ret.0, %error_v4l2 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end69.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vim2m_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef %name) #16
  %mdev = getelementptr inbounds %struct.vim2m_dev, ptr %1, i32 0, i32 2
  tail call void @media_device_unregister(ptr noundef %mdev) #12
  %m2m_dev = getelementptr inbounds %struct.vim2m_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_unregister_media_controller(ptr noundef %3) #12
  %vfd = getelementptr inbounds %struct.vim2m_dev, ptr %1, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %vfd) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_register_media_controller(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_unregister_media_controller(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vim2m_device_release(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %vdev, i32 -128
  tail call void @v4l2_device_unregister(ptr noundef %add.ptr) #12
  %m2m_dev = getelementptr i8, ptr %vdev, i32 2056
  %0 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_release(ptr noundef %1) #12
  %mdev = getelementptr i8, ptr %vdev, i32 1352
  tail call void @media_device_cleanup(ptr noundef %mdev) #12
  tail call void @kfree(ptr noundef %add.ptr) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vim2m_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %dev_mutex = getelementptr inbounds %struct.vim2m_dev, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %dev_mutex, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 648) #15
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.open_unlock_crit_edge, label %if.end5

if.end.open_unlock_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %open_unlock

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @video_devdata(ptr noundef %file) #12
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call6) #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %private_data, align 4
  %dev8 = getelementptr inbounds %struct.vim2m_ctx, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %dev8, align 8
  %hdl9 = getelementptr inbounds %struct.vim2m_ctx, ptr %call7.i.i, i32 0, i32 2
  %call10 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl9, i32 noundef 4, ptr noundef nonnull @vim2m_open._key, ptr noundef nonnull @.str.20) #12
  %call11 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl9, ptr noundef nonnull @vim2m_ctrl_ops, i32 noundef 9963796, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #12
  %call12 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl9, ptr noundef nonnull @vim2m_ctrl_ops, i32 noundef 9963797, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #12
  %5 = load i32, ptr @default_transtime, align 4
  %conv = zext i32 %5 to i64
  store i64 %conv, ptr getelementptr inbounds (%struct.v4l2_ctrl_config, ptr @vim2m_ctrl_trans_time_msec, i32 0, i32 8), align 8
  %call13 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl9, ptr noundef nonnull @vim2m_ctrl_trans_time_msec, ptr noundef null) #12
  %call14 = tail call ptr @v4l2_ctrl_new_custom(ptr noundef %hdl9, ptr noundef nonnull @vim2m_ctrl_trans_num_bufs, ptr noundef null) #12
  %error = getelementptr inbounds %struct.vim2m_ctx, ptr %call7.i.i, i32 0, i32 2, i32 9
  %6 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool15.not = icmp eq i32 %7, 0
  br i1 %tobool15.not, label %if.end18, label %if.then16

if.then16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl9) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %open_unlock

if.end18:                                         ; preds = %if.end5
  %ctrl_handler = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %hdl9, ptr %ctrl_handler, align 4
  %call20 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl9) #12
  %q_data = getelementptr inbounds %struct.vim2m_ctx, ptr %call7.i.i, i32 0, i32 14
  %fmt = getelementptr inbounds %struct.vim2m_ctx, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 4
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @formats, ptr %fmt, align 8
  %10 = ptrtoint ptr %q_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 640, ptr %q_data, align 8
  %height = getelementptr inbounds %struct.vim2m_ctx, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 480, ptr %height, align 4
  %12 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
  %shr = ashr i32 %12, 3
  %mul34 = mul i32 %shr, 307200
  %sizeimage = getelementptr inbounds %struct.vim2m_ctx, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 2
  %13 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul34, ptr %sizeimage, align 8
  %arrayidx38 = getelementptr %struct.vim2m_ctx, ptr %call7.i.i, i32 0, i32 14, i32 1
  %14 = call ptr @memcpy(ptr %arrayidx38, ptr %q_data, i32 20)
  %colorspace = getelementptr inbounds %struct.vim2m_ctx, ptr %call7.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %colorspace, align 8
  %m2m_dev = getelementptr inbounds %struct.vim2m_dev, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_dev, align 8
  %call41 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %17, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #12
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call41, ptr %m2m_ctx, align 4
  %vb_mutex = getelementptr inbounds %struct.vim2m_ctx, ptr %call7.i.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %vb_mutex, ptr noundef nonnull @.str.21, ptr noundef nonnull @vim2m_open.__key) #12
  %work_run = getelementptr inbounds %struct.vim2m_ctx, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %work_run, i32 noundef 0) #12
  %19 = ptrtoint ptr %work_run to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -64, ptr %work_run, align 4
  %lockdep_map = getelementptr inbounds %struct.vim2m_ctx, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.23, ptr noundef nonnull @vim2m_open.__key.22, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry51 = getelementptr inbounds %struct.vim2m_ctx, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1
  %20 = ptrtoint ptr %entry51 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %entry51, ptr %entry51, align 8
  %prev.i = getelementptr inbounds %struct.vim2m_ctx, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %entry51, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.vim2m_ctx, ptr %call7.i.i, i32 0, i32 7, i32 0, i32 2
  %22 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @device_work, ptr %func, align 8
  %timer = getelementptr inbounds %struct.vim2m_ctx, ptr %call7.i.i, i32 0, i32 7, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.25, ptr noundef nonnull @vim2m_open.__key.24) #12
  %23 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m2m_ctx, align 4
  %cmp.i = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then65, label %if.end70

if.then65:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %24 to i32
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl9) #12
  tail call void @v4l2_fh_exit(ptr noundef nonnull %call7.i.i) #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #12
  br label %open_unlock

if.end70:                                         ; preds = %if.end18
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #12
  %num_inst = getelementptr inbounds %struct.vim2m_dev, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_inst, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %num_inst, i32 1, i32 3, i32 1) #12
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_inst, ptr %num_inst, i32 1, ptr elementtype(i32) %num_inst) #12, !srcloc !193
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.not = icmp eq i32 %27, 0
  br i1 %cmp.not, label %if.end70.open_unlock_crit_edge, label %do.end77

if.end70.open_unlock_crit_edge:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  br label %open_unlock

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %m2m_ctx, align 4
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name, ptr noundef nonnull @.str.27, ptr noundef nonnull %call7.i.i, ptr noundef %29) #16
  br label %open_unlock

open_unlock:                                      ; preds = %do.end77, %if.end70.open_unlock_crit_edge, %if.then65, %if.then16, %if.end.open_unlock_crit_edge
  %rc.0 = phi i32 [ %7, %if.then16 ], [ %25, %if.then65 ], [ 0, %do.end77 ], [ 0, %if.end70.open_unlock_crit_edge ], [ -12, %if.end.open_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #12
  br label %cleanup

cleanup:                                          ; preds = %open_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %open_unlock ], [ -512, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vim2m_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #12
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name, ptr noundef nonnull @.str.50, ptr noundef %3) #16
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  tail call void @v4l2_fh_del(ptr noundef %3) #12
  tail call void @v4l2_fh_exit(ptr noundef %3) #12
  %hdl = getelementptr inbounds %struct.vim2m_ctx, ptr %3, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #12
  %dev_mutex = getelementptr inbounds %struct.vim2m_dev, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #12
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %6) #12
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #12
  tail call void @kfree(ptr noundef %3) #12
  %num_inst = getelementptr inbounds %struct.vim2m_dev, ptr %1, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_inst, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %num_inst, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %num_inst, ptr %num_inst, i32 1, ptr elementtype(i32) %num_inst) #12, !srcloc !194
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %src_vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %1 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 19, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %3 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 744, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vim2m_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %5 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %6 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %timestamp_flags, align 4
  %vb_mutex = getelementptr inbounds %struct.vim2m_ctx, ptr %priv, i32 0, i32 6
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %7 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %vb_mutex, ptr %lock, align 4
  %supports_requests = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 4
  %8 = ptrtoint ptr %supports_requests to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %supports_requests, align 4
  %bf.set = or i16 %bf.load, 1024
  store i16 %bf.set, ptr %supports_requests, align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %dst_vq, align 4
  %io_modes2 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %10 = ptrtoint ptr %io_modes2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 19, ptr %io_modes2, align 4
  %drv_priv3 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %11 = ptrtoint ptr %drv_priv3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %priv, ptr %drv_priv3, align 4
  %buf_struct_size4 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %12 = ptrtoint ptr %buf_struct_size4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 744, ptr %buf_struct_size4, align 4
  %ops5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %13 = ptrtoint ptr %ops5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @vim2m_qops, ptr %ops5, align 4
  %mem_ops6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %14 = ptrtoint ptr %mem_ops6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops6, align 4
  %timestamp_flags7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %15 = ptrtoint ptr %timestamp_flags7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16384, ptr %timestamp_flags7, align 4
  %lock9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %16 = ptrtoint ptr %lock9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %vb_mutex, ptr %lock9, align 4
  %call10 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @device_work(ptr noundef %w) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %w, i32 -484
  %dev = getelementptr i8, ptr %w, i32 -292
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %m2m_ctx = getelementptr i8, ptr %w, i32 -296
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #12
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i29 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #12
  %num_processed = getelementptr i8, ptr %w, i32 -104
  %6 = ptrtoint ptr %num_processed to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_processed, align 4
  %inc = add i8 %7, 1
  store i8 %inc, ptr %num_processed, align 4
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef 5) #12
  tail call void @vb2_buffer_done(ptr noundef %call.i29, i32 noundef 5) #12
  %8 = ptrtoint ptr %num_processed to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_processed, align 4
  %conv = zext i8 %9 to i32
  %translen = getelementptr i8, ptr %w, i32 -100
  %10 = ptrtoint ptr %translen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %translen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp = icmp eq i32 %11, %conv
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %aborting = getelementptr i8, ptr %w, i32 100
  %12 = ptrtoint ptr %aborting to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %aborting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.else, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp6 = icmp ugt i32 %14, 1
  br i1 %cmp6, label %do.end, label %do.body.do.end14_crit_edge

do.body.do.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end14

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %16, i32 0, i32 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name, ptr noundef nonnull @.str.46) #16
  br label %do.end14

do.end14:                                         ; preds = %do.end, %do.body.do.end14_crit_edge
  %17 = ptrtoint ptr %num_processed to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %num_processed, align 4
  %m2m_dev = getelementptr inbounds %struct.vim2m_dev, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_dev, align 8
  %20 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %19, ptr noundef %21) #12
  br label %if.end18

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @device_run(ptr noundef %add.ptr)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %do.end14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vim2m_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 9963796, label %sw.bb
    i32 9963797, label %sw.bb2
    i32 9967872, label %sw.bb12
    i32 9967873, label %sw.bb18
  ]

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %mode1 = getelementptr i8, ptr %1, i32 392
  %7 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode1, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %or = or i32 %8, 1
  %9 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %mode1, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %8, -2
  %10 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and, ptr %mode1, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not = icmp eq i32 %12, 0
  %mode9 = getelementptr i8, ptr %1, i32 392
  %13 = ptrtoint ptr %mode9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode9, align 4
  br i1 %tobool4.not, label %if.else8, label %if.then5

if.then5:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  %or7 = or i32 %14, 2
  %15 = ptrtoint ptr %mode9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or7, ptr %mode9, align 4
  br label %cleanup

if.else8:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  %and10 = and i32 %14, -3
  %16 = ptrtoint ptr %mode9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and10, ptr %mode9, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val13, align 4
  %transtime = getelementptr i8, ptr %1, i32 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  %spec.store.select = select i1 %cmp, i32 1, i32 %18
  %19 = ptrtoint ptr %transtime to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.store.select, ptr %transtime, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %20 = ptrtoint ptr %val19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val19, align 4
  %translen = getelementptr i8, ptr %1, i32 188
  %22 = ptrtoint ptr %translen to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %translen, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr i8, ptr %1, i32 -4
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %24, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb18, %sw.bb12, %if.else8, %if.then5, %if.else, %if.then
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb12 ], [ 0, %if.then5 ], [ 0, %if.else8 ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %sw.bb18 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vim2m_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbuffers, align 4
  %4 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vq, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %q_data.i = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 14
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx3.i = getelementptr %struct.vim2m_ctx, ptr %1, i32 0, i32 14, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %get_q_data.exit.cleanup_crit_edge, label %if.end

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %get_q_data.exit
  %7 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %retval.0.i, align 4
  %height = getelementptr inbounds %struct.vim2m_q_data, ptr %retval.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %height, align 4
  %mul = mul i32 %10, %8
  %fmt = getelementptr inbounds %struct.vim2m_q_data, ptr %retval.0.i, i32 0, i32 4
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fmt, align 4
  %depth = getelementptr inbounds %struct.vim2m_fmt, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %depth, align 4
  %mul2 = mul i32 %mul, %14
  %shr = lshr i32 %mul2, 3
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end
  %count.0 = phi i32 [ %3, %if.end ], [ %dec, %while.cond.while.cond_crit_edge ]
  %mul3 = mul i32 %count.0, %shr
  %cmp = icmp ugt i32 %mul3, 16777216
  %dec = add i32 %count.0, -1
  br i1 %cmp, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %count.0, ptr %nbuffers, align 4
  %16 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not = icmp eq i32 %17, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %shr)
  %cmp6 = icmp ult i32 %19, %shr
  %cond = select i1 %cmp6, i32 -22, i32 0
  br label %cleanup

if.end7:                                          ; preds = %while.end
  %20 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %nplanes, align 4
  %21 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr, ptr %sizes, align 4
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp9.not = icmp eq i32 %22, 0
  br i1 %cmp9.not, label %if.end7.cleanup_crit_edge, label %do.end

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %switch.selectcmp.i = icmp eq i32 %26, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.35, ptr @.str.36
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %switch.selectcmp2.i = icmp eq i32 %26, 2
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.34, ptr %switch.select.i
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name, ptr noundef nonnull @.str.33, ptr noundef nonnull %switch.select3.i, i32 noundef %count.0, i32 noundef %shr) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.cleanup_crit_edge, %if.then5, %get_q_data.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.then5 ], [ -22, %get_q_data.exit.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end7.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vim2m_buf_out_validate(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %4 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %field, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %5, label %do.body [
    i32 0, label %if.end.thread
    i32 1, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %field, align 4
  br label %cleanup

do.body:                                          ; preds = %entry
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp5.not = icmp eq i32 %8, 0
  br i1 %cmp5.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.vim2m_ctx, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %10, i32 0, i32 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.38) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.end.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %if.end.thread ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vim2m_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp ugt i32 %4, 1
  br i1 %cmp, label %do.end, label %entry.do.end6_crit_edge

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.vim2m_ctx, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %switch.selectcmp.i = icmp eq i32 %8, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.35, ptr @.str.36
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %switch.selectcmp2.i = icmp eq i32 %8, 2
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.34, ptr %switch.select.i
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name, ptr noundef nonnull @.str.40, ptr noundef nonnull %switch.select3.i) #16
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %9 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vb, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %12, label %do.end6.cleanup_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  %q_data.i = getelementptr inbounds %struct.vim2m_ctx, ptr %3, i32 0, i32 14
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx3.i = getelementptr %struct.vim2m_ctx, ptr %3, i32 0, i32 14, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %get_q_data.exit.cleanup_crit_edge, label %if.end11

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %get_q_data.exit
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %14 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %if.end11
  %sizeimage = getelementptr inbounds %struct.vim2m_q_data, ptr %retval.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp13.not = icmp eq i32 %17, 0
  br i1 %cmp13.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %do.body15

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %if.end11
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 8
  %sizeimage59 = getelementptr inbounds %struct.vim2m_q_data, ptr %retval.0.i, i32 0, i32 2
  %20 = ptrtoint ptr %sizeimage59 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sizeimage59, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp1360 = icmp ult i32 %19, %21
  br i1 %cmp1360, label %do.body15.thread, label %if.then.i55

do.body15:                                        ; preds = %vb2_plane_size.exit
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp16.not = icmp eq i32 %22, 0
  br i1 %cmp16.not, label %do.body15.cleanup_crit_edge, label %do.body15.vb2_plane_size.exit51_crit_edge

do.body15.vb2_plane_size.exit51_crit_edge:        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %vb2_plane_size.exit51

do.body15.cleanup_crit_edge:                      ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body15.thread:                                 ; preds = %vb2_plane_size.exit.thread
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp16.not61 = icmp eq i32 %23, 0
  br i1 %cmp16.not61, label %do.body15.thread.cleanup_crit_edge, label %if.then.i49

do.body15.thread.cleanup_crit_edge:               ; preds = %do.body15.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i49:                                      ; preds = %do.body15.thread
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit51

vb2_plane_size.exit51:                            ; preds = %if.then.i49, %do.body15.vb2_plane_size.exit51_crit_edge
  %26 = phi i32 [ %21, %if.then.i49 ], [ %17, %do.body15.vb2_plane_size.exit51_crit_edge ]
  %retval.0.i50 = phi i32 [ %25, %if.then.i49 ], [ 0, %do.body15.vb2_plane_size.exit51_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.vim2m_ctx, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn.in, align 4
  %name2465 = getelementptr inbounds %struct.v4l2_device, ptr %.pn, i32 0, i32 4
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name2465, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.40, i32 noundef %retval.0.i50, i32 noundef %26) #16
  br label %cleanup

if.then.i55:                                      ; preds = %vb2_plane_size.exit.thread
  %28 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %21)
  %cmp1.i = icmp ult i32 %29, %21
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i55.if.end42.i_crit_edge

if.then.i55.if.end42.i_crit_edge:                 ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i55
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !195

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.44, i32 noundef 1163, i32 noundef 9, ptr noundef null) #12
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %30 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i55.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %31, %if.then38.i ], [ %21, %if.then.i55.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %32 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %vb2_plane_size.exit51, %do.body15.thread.cleanup_crit_edge, %do.body15.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge, %get_q_data.exit.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %get_q_data.exit.cleanup_crit_edge ], [ -22, %vb2_plane_size.exit51 ], [ -22, %do.body15.cleanup_crit_edge ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end42.i ], [ -22, %do.end6.cleanup_crit_edge ], [ -22, %do.body15.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vim2m_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 2, label %get_q_data.exit
    i32 1, label %get_q_data.exit.thread
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

get_q_data.exit:                                  ; preds = %entry
  %q_data.i = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 14
  %tobool.not = icmp eq ptr %q_data.i, null
  br i1 %tobool.not, label %get_q_data.exit.cleanup_crit_edge, label %if.end

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

get_q_data.exit.thread:                           ; preds = %entry
  %arrayidx3.i = getelementptr %struct.vim2m_ctx, ptr %1, i32 0, i32 14, i32 1
  %tobool.not40 = icmp eq ptr %arrayidx3.i, null
  br i1 %tobool.not40, label %get_q_data.exit.thread.cleanup_crit_edge, label %get_q_data.exit.thread.if.end24_crit_edge

get_q_data.exit.thread.if.end24_crit_edge:        ; preds = %get_q_data.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

get_q_data.exit.thread.cleanup_crit_edge:         ; preds = %get_q_data.exit.thread
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cond = icmp eq i32 %3, 2
  br i1 %cond, label %if.then23, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.then23:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %aborting = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %aborting to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %aborting, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end.if.end24_crit_edge, %get_q_data.exit.thread.if.end24_crit_edge
  %retval.0.i4144 = phi ptr [ %q_data.i, %if.end.if.end24_crit_edge ], [ %q_data.i, %if.then23 ], [ %arrayidx3.i, %get_q_data.exit.thread.if.end24_crit_edge ]
  %sequence = getelementptr inbounds %struct.vim2m_q_data, ptr %retval.0.i4144, i32 0, i32 3
  %6 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %sequence, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %get_q_data.exit.thread.cleanup_crit_edge, %get_q_data.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -22, %get_q_data.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %get_q_data.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vim2m_stop_streaming(ptr nocapture noundef readonly %q) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %work_run = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 7
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work_run) #12
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %hdl = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 2
  br label %for.cond

for.cond:                                         ; preds = %if.end27, %entry
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %3, label %if.else [
    i32 2, label %for.cond.if.then_crit_edge
    i32 10, label %for.cond.if.then_crit_edge42
    i32 3, label %for.cond.if.then_crit_edge43
    i32 8, label %for.cond.if.then_crit_edge44
    i32 5, label %for.cond.if.then_crit_edge45
    i32 7, label %for.cond.if.then_crit_edge46
    i32 12, label %for.cond.if.then_crit_edge47
    i32 14, label %for.cond.if.then_crit_edge48
  ]

for.cond.if.then_crit_edge48:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge47:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge46:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge45:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge44:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge43:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge42:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then

if.then:                                          ; preds = %for.cond.if.then_crit_edge, %for.cond.if.then_crit_edge42, %for.cond.if.then_crit_edge43, %for.cond.if.then_crit_edge44, %for.cond.if.then_crit_edge45, %for.cond.if.then_crit_edge46, %for.cond.if.then_crit_edge47, %for.cond.if.then_crit_edge48
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 8
  br label %if.end

if.else:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cap_q_ctx.i.sink = phi ptr [ %cap_q_ctx.i, %if.else ], [ %out_q_ctx.i, %if.then ]
  %call.i41 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink) #12
  %tobool.not = icmp eq ptr %call.i41, null
  br i1 %tobool.not, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  ret void

if.end27:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %call.i41, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %req, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %10, ptr noundef %hdl) #12
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i41, i32 noundef 6) #12
  br label %for.cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vim2m_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vim2m_buf_request_complete(ptr nocapture noundef readonly %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %hdl = getelementptr inbounds %struct.vim2m_ctx, ptr %3, i32 0, i32 2
  tail call void @v4l2_ctrl_request_complete(ptr noundef %5, ptr noundef %hdl) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_request_complete(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @device_run(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #12
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 7
  %call.i20 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #12
  %req = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %req, align 4
  %hdl = getelementptr inbounds %struct.vim2m_ctx, ptr %priv, i32 0, i32 2
  %call4 = tail call i32 @v4l2_ctrl_request_setup(ptr noundef %5, ptr noundef %hdl) #12
  %dev1.i = getelementptr inbounds %struct.vim2m_ctx, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %q_data.i.i = getelementptr inbounds %struct.vim2m_ctx, ptr %priv, i32 0, i32 14
  %8 = ptrtoint ptr %q_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q_data.i.i, align 4
  %fmt.i = getelementptr inbounds %struct.vim2m_ctx, ptr %priv, i32 0, i32 14, i32 0, i32 4
  %10 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fmt.i, align 4
  %depth.i = getelementptr inbounds %struct.vim2m_fmt, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %depth.i, align 4
  %mul.i = mul i32 %13, %9
  %shr.i = lshr i32 %mul.i, 3
  %shr5.i = ashr i32 %13, 3
  %arrayidx3.i.i = getelementptr %struct.vim2m_ctx, ptr %priv, i32 0, i32 14, i32 1
  %tobool7.not.i = icmp eq ptr %arrayidx3.i.i, null
  br i1 %tobool7.not.i, label %entry.device_process.exit_crit_edge, label %if.end9.i

entry.device_process.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %device_process.exit

if.end9.i:                                        ; preds = %entry
  %height10.i = getelementptr %struct.vim2m_ctx, ptr %priv, i32 0, i32 14, i32 1, i32 1
  %14 = ptrtoint ptr %height10.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height10.i, align 4
  %16 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx3.i.i, align 4
  %call12.i = tail call ptr @vb2_plane_vaddr(ptr noundef %call.i, i32 noundef 0) #12
  %call14.i = tail call ptr @vb2_plane_vaddr(ptr noundef %call.i20, i32 noundef 0) #12
  %tobool15.not.i = icmp eq ptr %call12.i, null
  %tobool16.not.i = icmp eq ptr %call14.i, null
  %or.cond.i = select i1 %tobool15.not.i, i1 true, i1 %tobool16.not.i
  br i1 %or.cond.i, label %do.end.i, label %if.end19.i

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %7, i32 0, i32 4
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name.i) #16
  br label %device_process.exit

if.end19.i:                                       ; preds = %if.end9.i
  %sequence.i = getelementptr %struct.vim2m_ctx, ptr %priv, i32 0, i32 14, i32 1, i32 3
  %18 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sequence.i, align 4
  %inc.i = add i32 %19, 1
  store i32 %inc.i, ptr %sequence.i, align 4
  %sequence20.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i20, i32 0, i32 4
  %20 = ptrtoint ptr %sequence20.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sequence20.i, align 8
  %sequence21.i = getelementptr inbounds %struct.vim2m_ctx, ptr %priv, i32 0, i32 14, i32 0, i32 3
  %21 = ptrtoint ptr %sequence21.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sequence21.i, align 4
  %inc22.i = add i32 %22, 1
  store i32 %inc22.i, ptr %sequence21.i, align 4
  %sequence23.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %sequence23.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %sequence23.i, align 8
  tail call void @v4l2_m2m_buf_copy_metadata(ptr noundef %call.i, ptr noundef %call.i20, i1 noundef zeroext true) #12
  %mode.i = getelementptr inbounds %struct.vim2m_ctx, ptr %priv, i32 0, i32 9
  %24 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mode.i, align 4
  %and.i = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool24.not.i = icmp eq i32 %and.i, 0
  %sub.i = add i32 %15, -1
  %start.0.i = select i1 %tobool24.not.i, i32 0, i32 %sub.i
  %end.0.i = select i1 %tobool24.not.i, i32 %15, i32 -1
  %step.0.i = select i1 %tobool24.not.i, i32 1, i32 -1
  %26 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fmt.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %fmt28.i = getelementptr %struct.vim2m_ctx, ptr %priv, i32 0, i32 14, i32 1, i32 4
  %30 = ptrtoint ptr %fmt28.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fmt28.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %33)
  %cmp.i22 = icmp eq i32 %29, %33
  br i1 %cmp.i22, label %land.lhs.true.i, label %if.end19.i.if.end55.i_crit_edge

if.end19.i.if.end55.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i

land.lhs.true.i:                                  ; preds = %if.end19.i
  %34 = ptrtoint ptr %q_data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %q_data.i.i, align 4
  %36 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp32.i = icmp eq i32 %35, %37
  br i1 %cmp32.i, label %land.lhs.true33.i, label %land.lhs.true.i.if.end55.i_crit_edge

land.lhs.true.i.if.end55.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i

land.lhs.true33.i:                                ; preds = %land.lhs.true.i
  %height34.i = getelementptr inbounds %struct.vim2m_ctx, ptr %priv, i32 0, i32 14, i32 0, i32 1
  %38 = ptrtoint ptr %height34.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %height34.i, align 4
  %40 = ptrtoint ptr %height10.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height10.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp36.i = icmp eq i32 %39, %41
  br i1 %cmp36.i, label %for.cond.preheader.i, label %land.lhs.true33.i.if.end55.i_crit_edge

land.lhs.true33.i.if.end55.i_crit_edge:           ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55.i

for.cond.preheader.i:                             ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_cmp4(i32 %start.0.i, i32 %end.0.i)
  %cmp38.not65.i = icmp eq i32 %start.0.i, %end.0.i
  br i1 %cmp38.not65.i, label %for.cond.preheader.i.device_process.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.device_process.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %device_process.exit

for.body.i:                                       ; preds = %copy_line.exit.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %y.067.i = phi i32 [ %add.i, %copy_line.exit.i.for.body.i_crit_edge ], [ %start.0.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %p_out.066.i = phi ptr [ %add.ptr53.i, %copy_line.exit.i.for.body.i_crit_edge ], [ %call14.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %mul39.i = mul i32 %y.067.i, %shr.i
  %add.ptr.i = getelementptr i8, ptr %call12.i, i32 %mul39.i
  %42 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %mode.i, align 4
  %and41.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  %44 = ptrtoint ptr %fmt28.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fmt28.i, align 4
  %depth1.i.i = getelementptr inbounds %struct.vim2m_fmt, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %depth1.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %depth1.i.i, align 4
  %shr.i.i = ashr i32 %47, 3
  %48 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx3.i.i, align 4
  br i1 %tobool42.not.i, label %if.then.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp26.not.i.i = icmp ult i32 %49, 2
  br i1 %cmp26.not.i.i, label %for.cond.preheader.i.i.copy_line.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.copy_line.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_line.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %50 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %fmt.i, align 4
  %depth45.i = getelementptr inbounds %struct.vim2m_fmt, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %depth45.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %depth45.i, align 4
  %shr46.i = ashr i32 %53, 3
  %sub47.i = sub nsw i32 %shr.i, %shr46.i
  %add.ptr48.i = getelementptr i8, ptr %add.ptr.i, i32 %sub47.i
  %idx.neg.i.i = sub nsw i32 0, %shr.i.i
  %shl.i.i = shl nsw i32 %shr.i.i, 1
  %idx.neg5.i.i = sub nsw i32 0, %shl.i.i
  br label %for.body.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %mul.i.i = mul i32 %49, %shr.i.i
  %54 = call ptr @memcpy(ptr %p_out.066.i, ptr %add.ptr.i, i32 %mul.i.i)
  br label %copy_line.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %x.029.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %src.addr.028.i.i = phi ptr [ %add.ptr48.i, %for.body.lr.ph.i.i ], [ %add.ptr6.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %dst.addr.027.i.i = phi ptr [ %p_out.066.i, %for.body.lr.ph.i.i ], [ %add.ptr8.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %55 = call ptr @memcpy(ptr %dst.addr.027.i.i, ptr %src.addr.028.i.i, i32 %shr.i.i)
  %add.ptr.i.i = getelementptr i8, ptr %dst.addr.027.i.i, i32 %shr.i.i
  %add.ptr4.i.i = getelementptr i8, ptr %src.addr.028.i.i, i32 %idx.neg.i.i
  %56 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %add.ptr4.i.i, i32 %shr.i.i)
  %add.ptr6.i.i = getelementptr i8, ptr %src.addr.028.i.i, i32 %idx.neg5.i.i
  %add.ptr8.i.i = getelementptr i8, ptr %dst.addr.027.i.i, i32 %shl.i.i
  %inc.i.i = add nuw nsw i32 %x.029.i.i, 1
  %57 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx3.i.i, align 4
  %shr3.i.i = lshr i32 %58, 1
  %cmp.i.i = icmp ult i32 %inc.i.i, %shr3.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.copy_line.exit.i_crit_edge

for.body.i.i.copy_line.exit.i_crit_edge:          ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_line.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

copy_line.exit.i:                                 ; preds = %for.body.i.i.copy_line.exit.i_crit_edge, %if.then.i.i, %for.cond.preheader.i.i.copy_line.exit.i_crit_edge
  %add.ptr53.i = getelementptr i8, ptr %p_out.066.i, i32 %shr.i
  %add.i = add i32 %y.067.i, %step.0.i
  %cmp38.not.i = icmp eq i32 %add.i, %end.0.i
  br i1 %cmp38.not.i, label %copy_line.exit.i.device_process.exit_crit_edge, label %copy_line.exit.i.for.body.i_crit_edge

copy_line.exit.i.for.body.i_crit_edge:            ; preds = %copy_line.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

copy_line.exit.i.device_process.exit_crit_edge:   ; preds = %copy_line.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %device_process.exit

if.end55.i:                                       ; preds = %land.lhs.true33.i.if.end55.i_crit_edge, %land.lhs.true.i.if.end55.i_crit_edge, %if.end19.i.if.end55.i_crit_edge
  %59 = ptrtoint ptr %q_data.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %q_data.i.i, align 4
  %61 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx3.i.i, align 4
  %.frozen = freeze i32 %60
  %.frozen29 = freeze i32 %62
  %div.i = udiv i32 %.frozen, %.frozen29
  %63 = mul i32 %div.i, %.frozen29
  %rem.i.decomposed = sub i32 %.frozen, %63
  call void @__sanitizer_cov_trace_cmp4(i32 %start.0.i, i32 %end.0.i)
  %cmp61.not60.i = icmp eq i32 %start.0.i, %end.0.i
  br i1 %cmp61.not60.i, label %if.end55.i.device_process.exit_crit_edge, label %for.body62.lr.ph.i

if.end55.i.device_process.exit_crit_edge:         ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %device_process.exit

for.body62.lr.ph.i:                               ; preds = %if.end55.i
  %height63.i = getelementptr inbounds %struct.vim2m_ctx, ptr %priv, i32 0, i32 14, i32 0, i32 1
  %shr80.i = lshr i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp8154.not.i = icmp ult i32 %17, 2
  %umax.i = tail call i32 @llvm.umax.i32(i32 %shr80.i, i32 1) #12
  br label %for.body62.i

for.body62.i:                                     ; preds = %for.inc129.i.for.body62.i_crit_edge, %for.body62.lr.ph.i
  %y_out.163.i = phi i32 [ 0, %for.body62.lr.ph.i ], [ %inc131.i, %for.inc129.i.for.body62.i_crit_edge ]
  %y.162.i = phi i32 [ %start.0.i, %for.body62.lr.ph.i ], [ %add130.i, %for.inc129.i.for.body62.i_crit_edge ]
  %p_out.161.i = phi ptr [ %call14.i, %for.body62.lr.ph.i ], [ %p_out.2.lcssa.i, %for.inc129.i.for.body62.i_crit_edge ]
  %64 = ptrtoint ptr %height63.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %height63.i, align 4
  %mul64.i = mul i32 %65, %y.162.i
  %66 = ptrtoint ptr %height10.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %height10.i, align 4
  %div66.i = udiv i32 %mul64.i, %67
  %mul67.i = mul i32 %div66.i, %shr.i
  %add.ptr68.i = getelementptr i8, ptr %call12.i, i32 %mul67.i
  %68 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mode.i, align 4
  %and70.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %for.body62.i.if.end78.i_crit_edge, label %if.then72.i

for.body62.i.if.end78.i_crit_edge:                ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end78.i

if.then72.i:                                      ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %fmt.i, align 4
  %depth74.i = getelementptr inbounds %struct.vim2m_fmt, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %depth74.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %depth74.i, align 4
  %shr75.i = ashr i32 %73, 3
  %sub76.i = sub nsw i32 %shr.i, %shr75.i
  %add.ptr77.i = getelementptr i8, ptr %add.ptr68.i, i32 %sub76.i
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.then72.i, %for.body62.i.if.end78.i_crit_edge
  %p_line.0.i = phi ptr [ %add.ptr77.i, %if.then72.i ], [ %add.ptr68.i, %for.body62.i.if.end78.i_crit_edge ]
  br i1 %cmp8154.not.i, label %if.end78.i.for.inc129.i_crit_edge, label %for.body82.lr.ph.i

if.end78.i.for.inc129.i_crit_edge:                ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc129.i

for.body82.lr.ph.i:                               ; preds = %if.end78.i
  %and239.i.i = and i32 %y_out.163.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and239.i.i)
  %tobool240.not.i.i = icmp eq i32 %and239.i.i, 0
  br label %for.body82.i

for.body82.i:                                     ; preds = %copy_two_pixels.exit.i.for.body82.i_crit_edge, %for.body82.lr.ph.i
  %x_offset.059.i = phi i32 [ 0, %for.body82.lr.ph.i ], [ %x_offset.2.i, %copy_two_pixels.exit.i.for.body82.i_crit_edge ]
  %x_err.058.i = phi i32 [ 0, %for.body82.lr.ph.i ], [ %x_err.2.i, %copy_two_pixels.exit.i.for.body82.i_crit_edge ]
  %x.057.i = phi i32 [ 0, %for.body82.lr.ph.i ], [ %inc127.i, %copy_two_pixels.exit.i.for.body82.i_crit_edge ]
  %p_out.256.i = phi ptr [ %p_out.161.i, %for.body82.lr.ph.i ], [ %p_out.3.i, %copy_two_pixels.exit.i.for.body82.i_crit_edge ]
  %p_in_x.sroa.0.055.i = phi ptr [ %p_line.0.i, %for.body82.lr.ph.i ], [ %storemerge1.i, %copy_two_pixels.exit.i.for.body82.i_crit_edge ]
  %add83.i = add i32 %x_offset.059.i, %div.i
  %add84.i = add i32 %x_err.058.i, %rem.i.decomposed
  call void @__sanitizer_cov_trace_cmp4(i32 %add84.i, i32 %17)
  %cmp85.i = icmp ugt i32 %add84.i, %17
  %sub88.i = select i1 %cmp85.i, i32 %17, i32 0
  %x_err.1.i = sub i32 %add84.i, %sub88.i
  %inc87.i = zext i1 %cmp85.i to i32
  %x_offset.1.i = add i32 %add83.i, %inc87.i
  %74 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mode.i, align 4
  %and91.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  %mul98.i = mul i32 %x_offset.1.i, %shr5.i
  %idx.neg.i = sub i32 0, %mul98.i
  %mul98.pn.i = select i1 %tobool92.not.i, i32 %mul98.i, i32 %idx.neg.i
  %storemerge.i = getelementptr i8, ptr %p_line.0.i, i32 %mul98.pn.i
  %76 = ptrtoint ptr %fmt28.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %fmt28.i, align 4
  %78 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %fmt.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  %82 = zext i32 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %81, label %for.body64.preheader.i.i [
    i32 1346520914, label %for.body.preheader.i.i
    i32 1380075346, label %for.body28.preheader.i.i
    i32 861030210, label %for.body81.preheader.i.i
  ]

for.body81.preheader.i.i:                         ; preds = %for.body82.i
  call void @__sanitizer_cov_trace_pc() #14
  %83 = ptrtoint ptr %p_in_x.sroa.0.055.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %p_in_x.sroa.0.055.i, align 1
  %arrayidx86.i.i = getelementptr i8, ptr %p_in_x.sroa.0.055.i, i32 1
  %85 = ptrtoint ptr %arrayidx86.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx86.i.i, align 1
  %arrayidx89.i.i = getelementptr i8, ptr %p_in_x.sroa.0.055.i, i32 2
  %87 = ptrtoint ptr %arrayidx89.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx89.i.i, align 1
  %89 = ptrtoint ptr %storemerge.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %storemerge.i, align 1
  %arrayidx86.1.i.i = getelementptr i8, ptr %storemerge.i, i32 1
  %91 = ptrtoint ptr %arrayidx86.1.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx86.1.i.i, align 1
  %arrayidx89.1.i.i = getelementptr i8, ptr %storemerge.i, i32 2
  %93 = ptrtoint ptr %arrayidx89.1.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %arrayidx89.1.i.i, align 1
  br label %sw.epilog.i.i

for.body28.preheader.i.i:                         ; preds = %for.body82.i
  call void @__sanitizer_cov_trace_pc() #14
  %95 = ptrtoint ptr %p_in_x.sroa.0.055.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %p_in_x.sroa.0.055.i, align 2
  %97 = lshr i16 %96, 8
  %98 = trunc i16 %97 to i8
  %conv38.i.i = or i8 %98, 7
  %99 = lshr i16 %96, 3
  %100 = trunc i16 %99 to i8
  %conv47.i.i = or i8 %100, 3
  %.tr.i.i = trunc i16 %96 to i8
  %conv52.i.i = shl i8 %.tr.i.i, 3
  %or54.i.i = or i8 %conv52.i.i, 7
  %101 = ptrtoint ptr %storemerge.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %storemerge.i, align 2
  %103 = lshr i16 %102, 8
  %104 = trunc i16 %103 to i8
  %conv38.1.i.i = or i8 %104, 7
  %105 = lshr i16 %102, 3
  %106 = trunc i16 %105 to i8
  %conv47.1.i.i = or i8 %106, 3
  %.tr.1.i.i = trunc i16 %102 to i8
  %conv52.1.i.i = shl i8 %.tr.1.i.i, 3
  %or54.1.i.i = or i8 %conv52.1.i.i, 7
  br label %sw.epilog.i.i

for.body.preheader.i.i:                           ; preds = %for.body82.i
  call void @__sanitizer_cov_trace_pc() #14
  %107 = ptrtoint ptr %p_in_x.sroa.0.055.i to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %p_in_x.sroa.0.055.i, align 2
  %109 = tail call i16 @llvm.bswap.i16(i16 %108) #12
  %110 = lshr i16 %109, 8
  %111 = trunc i16 %110 to i8
  %conv6.i.i = or i8 %111, 7
  %112 = lshr i16 %109, 3
  %113 = trunc i16 %112 to i8
  %conv14.i.i = or i8 %113, 3
  %.tr1.i.i = trunc i16 %109 to i8
  %conv19.i.i = shl i8 %.tr1.i.i, 3
  %or21.i.i = or i8 %conv19.i.i, 7
  %114 = ptrtoint ptr %storemerge.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %storemerge.i, align 2
  %116 = tail call i16 @llvm.bswap.i16(i16 %115) #12
  %117 = lshr i16 %116, 8
  %118 = trunc i16 %117 to i8
  %conv6.1.i.i = or i8 %118, 7
  %119 = lshr i16 %116, 3
  %120 = trunc i16 %119 to i8
  %conv14.1.i.i = or i8 %120, 3
  %.tr1.1.i.i = trunc i16 %116 to i8
  %conv19.1.i.i = shl i8 %.tr1.1.i.i, 3
  %or21.1.i.i = or i8 %conv19.1.i.i, 7
  br label %sw.epilog.i.i

for.body64.preheader.i.i:                         ; preds = %for.body82.i
  call void @__sanitizer_cov_trace_pc() #14
  %121 = ptrtoint ptr %p_in_x.sroa.0.055.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %p_in_x.sroa.0.055.i, align 1
  %arrayidx69.i.i = getelementptr i8, ptr %p_in_x.sroa.0.055.i, i32 1
  %123 = ptrtoint ptr %arrayidx69.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %arrayidx69.i.i, align 1
  %arrayidx72.i.i = getelementptr i8, ptr %p_in_x.sroa.0.055.i, i32 2
  %125 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %arrayidx72.i.i, align 1
  %127 = ptrtoint ptr %storemerge.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %storemerge.i, align 1
  %arrayidx69.1.i.i = getelementptr i8, ptr %storemerge.i, i32 1
  %129 = ptrtoint ptr %arrayidx69.1.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %arrayidx69.1.i.i, align 1
  %arrayidx72.1.i.i = getelementptr i8, ptr %storemerge.i, i32 2
  %131 = ptrtoint ptr %arrayidx72.1.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx72.1.i.i, align 1
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %for.body64.preheader.i.i, %for.body.preheader.i.i, %for.body28.preheader.i.i, %for.body81.preheader.i.i
  %_r.sroa.14.0.i.i = phi i8 [ %128, %for.body64.preheader.i.i ], [ %94, %for.body81.preheader.i.i ], [ %conv38.1.i.i, %for.body28.preheader.i.i ], [ %conv6.1.i.i, %for.body.preheader.i.i ]
  %_r.sroa.0.0.i.i = phi i8 [ %122, %for.body64.preheader.i.i ], [ %88, %for.body81.preheader.i.i ], [ %conv38.i.i, %for.body28.preheader.i.i ], [ %conv6.i.i, %for.body.preheader.i.i ]
  %_g.sroa.18.0.i.i = phi i8 [ %130, %for.body64.preheader.i.i ], [ %92, %for.body81.preheader.i.i ], [ %conv47.1.i.i, %for.body28.preheader.i.i ], [ %conv14.1.i.i, %for.body.preheader.i.i ]
  %_g.sroa.0.0.i.i = phi i8 [ %124, %for.body64.preheader.i.i ], [ %86, %for.body81.preheader.i.i ], [ %conv47.i.i, %for.body28.preheader.i.i ], [ %conv14.i.i, %for.body.preheader.i.i ]
  %_b.sroa.14.0.i.i = phi i8 [ %132, %for.body64.preheader.i.i ], [ %90, %for.body81.preheader.i.i ], [ %or54.1.i.i, %for.body28.preheader.i.i ], [ %or21.1.i.i, %for.body.preheader.i.i ]
  %_b.sroa.0.0.i.i = phi i8 [ %126, %for.body64.preheader.i.i ], [ %84, %for.body81.preheader.i.i ], [ %or54.i.i, %for.body28.preheader.i.i ], [ %or21.i.i, %for.body.preheader.i.i ]
  %133 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %77, align 4
  %135 = zext i32 %134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %135, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %134, label %sw.default169.i.i [
    i32 1346520914, label %for.cond99.preheader.i.i
    i32 1380075346, label %for.cond119.preheader.i.i
    i32 859981650, label %for.body144.preheader.i.i
    i32 861030210, label %for.body158.preheader.i.i
    i32 1111967570, label %sw.bb250.i.i
    i32 825770306, label %sw.bb218.i.i
    i32 1196573255, label %sw.bb226.i.i
    i32 1195528775, label %sw.bb238.i.i
  ]

for.body158.preheader.i.i:                        ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr160.i.i = getelementptr i8, ptr %p_out.256.i, i32 1
  %136 = ptrtoint ptr %p_out.256.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %_b.sroa.0.0.i.i, ptr %p_out.256.i, align 1
  %incdec.ptr162.i.i = getelementptr i8, ptr %p_out.256.i, i32 2
  %137 = ptrtoint ptr %incdec.ptr160.i.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %_g.sroa.0.0.i.i, ptr %incdec.ptr160.i.i, align 1
  %incdec.ptr164.i.i = getelementptr i8, ptr %p_out.256.i, i32 3
  %138 = ptrtoint ptr %incdec.ptr162.i.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %_r.sroa.0.0.i.i, ptr %incdec.ptr162.i.i, align 1
  %incdec.ptr160.1.i.i = getelementptr i8, ptr %p_out.256.i, i32 4
  %139 = ptrtoint ptr %incdec.ptr164.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %_b.sroa.14.0.i.i, ptr %incdec.ptr164.i.i, align 1
  %incdec.ptr162.1.i.i = getelementptr i8, ptr %p_out.256.i, i32 5
  %140 = ptrtoint ptr %incdec.ptr160.1.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %_g.sroa.18.0.i.i, ptr %incdec.ptr160.1.i.i, align 1
  %incdec.ptr164.1.i.i = getelementptr i8, ptr %p_out.256.i, i32 6
  %141 = ptrtoint ptr %incdec.ptr162.1.i.i to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %_r.sroa.14.0.i.i, ptr %incdec.ptr162.1.i.i, align 1
  br label %copy_two_pixels.exit.i

for.body144.preheader.i.i:                        ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %incdec.ptr146.i.i = getelementptr i8, ptr %p_out.256.i, i32 1
  %142 = ptrtoint ptr %p_out.256.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %_r.sroa.0.0.i.i, ptr %p_out.256.i, align 1
  %incdec.ptr148.i.i = getelementptr i8, ptr %p_out.256.i, i32 2
  %143 = ptrtoint ptr %incdec.ptr146.i.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %_g.sroa.0.0.i.i, ptr %incdec.ptr146.i.i, align 1
  %incdec.ptr150.i.i = getelementptr i8, ptr %p_out.256.i, i32 3
  %144 = ptrtoint ptr %incdec.ptr148.i.i to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 %_b.sroa.0.0.i.i, ptr %incdec.ptr148.i.i, align 1
  %incdec.ptr146.1.i.i = getelementptr i8, ptr %p_out.256.i, i32 4
  %145 = ptrtoint ptr %incdec.ptr150.i.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %_r.sroa.14.0.i.i, ptr %incdec.ptr150.i.i, align 1
  %incdec.ptr148.1.i.i = getelementptr i8, ptr %p_out.256.i, i32 5
  %146 = ptrtoint ptr %incdec.ptr146.1.i.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %_g.sroa.18.0.i.i, ptr %incdec.ptr146.1.i.i, align 1
  %incdec.ptr150.1.i.i = getelementptr i8, ptr %p_out.256.i, i32 6
  %147 = ptrtoint ptr %incdec.ptr148.1.i.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %_b.sroa.14.0.i.i, ptr %incdec.ptr148.1.i.i, align 1
  br label %copy_two_pixels.exit.i

for.cond119.preheader.i.i:                        ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv125.i.i = zext i8 %_r.sroa.0.0.i.i to i16
  %shl126.i.i = shl nuw i16 %conv125.i.i, 8
  %and127.i.i = and i16 %shl126.i.i, -2048
  %148 = lshr i8 %_b.sroa.0.0.i.i, 3
  %149 = zext i8 %148 to i16
  %conv128.i.i = zext i8 %_g.sroa.0.0.i.i to i16
  %shl129.i.i = shl nuw nsw i16 %conv128.i.i, 3
  %and130.i.i = and i16 %shl129.i.i, 2016
  %or131.i.i = or i16 %and130.i.i, %and127.i.i
  %or134.i.i = or i16 %or131.i.i, %149
  %150 = ptrtoint ptr %p_out.256.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %or134.i.i, ptr %p_out.256.i, align 2
  %add.ptr136.i.i = getelementptr i8, ptr %p_out.256.i, i32 2
  %151 = ptrtoint ptr %add.ptr136.i.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %or134.i.i, ptr %add.ptr136.i.i, align 2
  %add.ptr136.1.i.i = getelementptr i8, ptr %p_out.256.i, i32 4
  br label %copy_two_pixels.exit.i

for.cond99.preheader.i.i:                         ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv104.i.i = zext i8 %_r.sroa.0.0.i.i to i16
  %shl105.i.i = shl nuw i16 %conv104.i.i, 8
  %and106.i.i = and i16 %shl105.i.i, -2048
  %152 = lshr i8 %_b.sroa.0.0.i.i, 3
  %153 = zext i8 %152 to i16
  %conv107.i.i = zext i8 %_g.sroa.0.0.i.i to i16
  %shl108.i.i = shl nuw nsw i16 %conv107.i.i, 3
  %and109.i.i = and i16 %shl108.i.i, 2016
  %or110.i.i = or i16 %and109.i.i, %and106.i.i
  %or113.i.i = or i16 %or110.i.i, %153
  %154 = tail call i16 @llvm.bswap.i16(i16 %or113.i.i) #12
  %155 = ptrtoint ptr %p_out.256.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 %154, ptr %p_out.256.i, align 2
  %add.ptr.i3.i = getelementptr i8, ptr %p_out.256.i, i32 2
  %156 = ptrtoint ptr %add.ptr.i3.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %154, ptr %add.ptr.i3.i, align 2
  %add.ptr.1.i.i = getelementptr i8, ptr %p_out.256.i, i32 4
  br label %copy_two_pixels.exit.i

sw.default169.i.i:                                ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv170.i.i = zext i8 %_r.sroa.0.0.i.i to i32
  %mul.i4.i = mul nuw nsw i32 %conv170.i.i, 8453
  %conv171.i.i = zext i8 %_g.sroa.0.0.i.i to i32
  %mul172.i.i = mul nuw nsw i32 %conv171.i.i, 16594
  %conv173.i.i = zext i8 %_b.sroa.0.0.i.i to i32
  %mul174.i.i = mul nuw nsw i32 %conv173.i.i, 3223
  %add.i.i = add nuw nsw i32 %mul.i4.i, 524288
  %add175.i.i = add nuw nsw i32 %add.i.i, %mul172.i.i
  %add176.i.i = add nuw nsw i32 %add175.i.i, %mul174.i.i
  %157 = lshr i32 %add176.i.i, 15
  %conv178.i.i = trunc i32 %157 to i8
  %mul180.i.i = mul nuw nsw i32 %conv170.i.i, 8383730
  %mul182.neg.i.i = mul nuw nsw i32 %conv171.i.i, 8379030
  %mul184.i.i = mul nuw nsw i32 %conv173.i.i, 14456
  %sub.i.i23 = add nuw nsw i32 %mul180.i.i, 4210688
  %add185.i.i = add nuw i32 %sub.i.i23, %mul182.neg.i.i
  %add186.i.i = add nuw i32 %add185.i.i, %mul184.i.i
  %158 = lshr i32 %add186.i.i, 15
  %conv188.i.i = trunc i32 %158 to i8
  %mul191.i.i = mul nuw nsw i32 %conv170.i.i, 14456
  %mul194.neg.i.i = mul nuw nsw i32 %conv171.i.i, 8376503
  %mul198.neg.i.i = mul nuw nsw i32 %conv173.i.i, 8386257
  %sub195.i.i = add nuw nsw i32 %mul191.i.i, 4210688
  %sub199.i.i = add nuw nsw i32 %sub195.i.i, %mul194.neg.i.i
  %add200.i.i = add nuw i32 %sub199.i.i, %mul198.neg.i.i
  %159 = lshr i32 %add200.i.i, 15
  %conv202.i.i = trunc i32 %159 to i8
  %conv203.i.i = zext i8 %_r.sroa.14.0.i.i to i32
  %mul204.i.i = mul nuw nsw i32 %conv203.i.i, 8453
  %conv205.i.i = zext i8 %_g.sroa.18.0.i.i to i32
  %mul206.i.i = mul nuw nsw i32 %conv205.i.i, 16594
  %conv208.i.i = zext i8 %_b.sroa.14.0.i.i to i32
  %mul209.i.i = mul nuw nsw i32 %conv208.i.i, 3223
  %add207.i.i = add nuw nsw i32 %mul204.i.i, 524288
  %add210.i.i = add nuw nsw i32 %add207.i.i, %mul206.i.i
  %add211.i.i = add nuw nsw i32 %add210.i.i, %mul209.i.i
  %160 = lshr i32 %add211.i.i, 15
  %conv213.i.i = trunc i32 %160 to i8
  %incdec.ptr214.i.i = getelementptr i8, ptr %p_out.256.i, i32 1
  %161 = ptrtoint ptr %p_out.256.i to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %conv178.i.i, ptr %p_out.256.i, align 1
  %incdec.ptr215.i.i = getelementptr i8, ptr %p_out.256.i, i32 2
  %162 = ptrtoint ptr %incdec.ptr214.i.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv188.i.i, ptr %incdec.ptr214.i.i, align 1
  %incdec.ptr216.i.i = getelementptr i8, ptr %p_out.256.i, i32 3
  %163 = ptrtoint ptr %incdec.ptr215.i.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 %conv213.i.i, ptr %incdec.ptr215.i.i, align 1
  %incdec.ptr217.i.i = getelementptr i8, ptr %p_out.256.i, i32 4
  %164 = ptrtoint ptr %incdec.ptr216.i.i to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 %conv202.i.i, ptr %incdec.ptr216.i.i, align 1
  br label %copy_two_pixels.exit.i

sw.bb218.i.i:                                     ; preds = %sw.epilog.i.i
  %incdec.ptr220.i.i = getelementptr i8, ptr %p_out.256.i, i32 1
  br i1 %tobool240.not.i.i, label %if.then.i5.i, label %if.else.i.i

if.then.i5.i:                                     ; preds = %sw.bb218.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %165 = ptrtoint ptr %p_out.256.i to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %_b.sroa.0.0.i.i, ptr %p_out.256.i, align 1
  %incdec.ptr222.i.i = getelementptr i8, ptr %p_out.256.i, i32 2
  %166 = ptrtoint ptr %incdec.ptr220.i.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 %_g.sroa.18.0.i.i, ptr %incdec.ptr220.i.i, align 1
  br label %copy_two_pixels.exit.i

if.else.i.i:                                      ; preds = %sw.bb218.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %167 = ptrtoint ptr %p_out.256.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %_g.sroa.0.0.i.i, ptr %p_out.256.i, align 1
  %incdec.ptr225.i.i = getelementptr i8, ptr %p_out.256.i, i32 2
  %168 = ptrtoint ptr %incdec.ptr220.i.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %_r.sroa.14.0.i.i, ptr %incdec.ptr220.i.i, align 1
  br label %copy_two_pixels.exit.i

sw.bb226.i.i:                                     ; preds = %sw.epilog.i.i
  %incdec.ptr230.i.i = getelementptr i8, ptr %p_out.256.i, i32 1
  br i1 %tobool240.not.i.i, label %if.then229.i.i, label %if.else233.i.i

if.then229.i.i:                                   ; preds = %sw.bb226.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %169 = ptrtoint ptr %p_out.256.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %_g.sroa.0.0.i.i, ptr %p_out.256.i, align 1
  %incdec.ptr232.i.i = getelementptr i8, ptr %p_out.256.i, i32 2
  %170 = ptrtoint ptr %incdec.ptr230.i.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %_b.sroa.14.0.i.i, ptr %incdec.ptr230.i.i, align 1
  br label %copy_two_pixels.exit.i

if.else233.i.i:                                   ; preds = %sw.bb226.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %171 = ptrtoint ptr %p_out.256.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %_r.sroa.0.0.i.i, ptr %p_out.256.i, align 1
  %incdec.ptr236.i.i = getelementptr i8, ptr %p_out.256.i, i32 2
  %172 = ptrtoint ptr %incdec.ptr230.i.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %_g.sroa.18.0.i.i, ptr %incdec.ptr230.i.i, align 1
  br label %copy_two_pixels.exit.i

sw.bb238.i.i:                                     ; preds = %sw.epilog.i.i
  %incdec.ptr242.i.i = getelementptr i8, ptr %p_out.256.i, i32 1
  br i1 %tobool240.not.i.i, label %if.then241.i.i, label %if.else245.i.i

if.then241.i.i:                                   ; preds = %sw.bb238.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %173 = ptrtoint ptr %p_out.256.i to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 %_g.sroa.0.0.i.i, ptr %p_out.256.i, align 1
  %incdec.ptr244.i.i = getelementptr i8, ptr %p_out.256.i, i32 2
  %174 = ptrtoint ptr %incdec.ptr242.i.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 %_r.sroa.14.0.i.i, ptr %incdec.ptr242.i.i, align 1
  br label %copy_two_pixels.exit.i

if.else245.i.i:                                   ; preds = %sw.bb238.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %175 = ptrtoint ptr %p_out.256.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 %_b.sroa.0.0.i.i, ptr %p_out.256.i, align 1
  %incdec.ptr248.i.i = getelementptr i8, ptr %p_out.256.i, i32 2
  %176 = ptrtoint ptr %incdec.ptr242.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %_g.sroa.18.0.i.i, ptr %incdec.ptr242.i.i, align 1
  br label %copy_two_pixels.exit.i

sw.bb250.i.i:                                     ; preds = %sw.epilog.i.i
  %incdec.ptr254.i.i = getelementptr i8, ptr %p_out.256.i, i32 1
  br i1 %tobool240.not.i.i, label %if.then253.i.i, label %if.else257.i.i

if.then253.i.i:                                   ; preds = %sw.bb250.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %177 = ptrtoint ptr %p_out.256.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %_r.sroa.0.0.i.i, ptr %p_out.256.i, align 1
  %incdec.ptr256.i.i = getelementptr i8, ptr %p_out.256.i, i32 2
  %178 = ptrtoint ptr %incdec.ptr254.i.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %_g.sroa.18.0.i.i, ptr %incdec.ptr254.i.i, align 1
  br label %copy_two_pixels.exit.i

if.else257.i.i:                                   ; preds = %sw.bb250.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %179 = ptrtoint ptr %p_out.256.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %_g.sroa.0.0.i.i, ptr %p_out.256.i, align 1
  %incdec.ptr260.i.i = getelementptr i8, ptr %p_out.256.i, i32 2
  %180 = ptrtoint ptr %incdec.ptr254.i.i to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %_b.sroa.14.0.i.i, ptr %incdec.ptr254.i.i, align 1
  br label %copy_two_pixels.exit.i

copy_two_pixels.exit.i:                           ; preds = %if.else257.i.i, %if.then253.i.i, %if.else245.i.i, %if.then241.i.i, %if.else233.i.i, %if.then229.i.i, %if.else.i.i, %if.then.i5.i, %sw.default169.i.i, %for.cond99.preheader.i.i, %for.cond119.preheader.i.i, %for.body144.preheader.i.i, %for.body158.preheader.i.i
  %p_out.3.i = phi ptr [ %incdec.ptr217.i.i, %sw.default169.i.i ], [ %incdec.ptr244.i.i, %if.then241.i.i ], [ %incdec.ptr248.i.i, %if.else245.i.i ], [ %incdec.ptr232.i.i, %if.then229.i.i ], [ %incdec.ptr236.i.i, %if.else233.i.i ], [ %incdec.ptr222.i.i, %if.then.i5.i ], [ %incdec.ptr225.i.i, %if.else.i.i ], [ %incdec.ptr256.i.i, %if.then253.i.i ], [ %incdec.ptr260.i.i, %if.else257.i.i ], [ %incdec.ptr164.1.i.i, %for.body158.preheader.i.i ], [ %incdec.ptr150.1.i.i, %for.body144.preheader.i.i ], [ %add.ptr136.1.i.i, %for.cond119.preheader.i.i ], [ %add.ptr.1.i.i, %for.cond99.preheader.i.i ]
  %add106.i = add i32 %x_offset.1.i, %div.i
  %add107.i = add i32 %x_err.1.i, %rem.i.decomposed
  call void @__sanitizer_cov_trace_cmp4(i32 %add107.i, i32 %17)
  %cmp108.i = icmp ugt i32 %add107.i, %17
  %sub111.i = select i1 %cmp108.i, i32 %17, i32 0
  %x_err.2.i = sub i32 %add107.i, %sub111.i
  %inc110.i = zext i1 %cmp108.i to i32
  %x_offset.2.i = add i32 %add106.i, %inc110.i
  %181 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %mode.i, align 4
  %and114.i = and i32 %182, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114.i)
  %tobool115.not.i = icmp eq i32 %and114.i, 0
  %mul122.i = mul i32 %x_offset.2.i, %shr5.i
  %idx.neg118.i = sub i32 0, %mul122.i
  %mul122.pn.i = select i1 %tobool115.not.i, i32 %mul122.i, i32 %idx.neg118.i
  %storemerge1.i = getelementptr i8, ptr %p_line.0.i, i32 %mul122.pn.i
  %inc127.i = add nuw nsw i32 %x.057.i, 1
  %exitcond.not.i = icmp eq i32 %inc127.i, %umax.i
  br i1 %exitcond.not.i, label %copy_two_pixels.exit.i.for.inc129.i_crit_edge, label %copy_two_pixels.exit.i.for.body82.i_crit_edge

copy_two_pixels.exit.i.for.body82.i_crit_edge:    ; preds = %copy_two_pixels.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body82.i

copy_two_pixels.exit.i.for.inc129.i_crit_edge:    ; preds = %copy_two_pixels.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc129.i

for.inc129.i:                                     ; preds = %copy_two_pixels.exit.i.for.inc129.i_crit_edge, %if.end78.i.for.inc129.i_crit_edge
  %p_out.2.lcssa.i = phi ptr [ %p_out.161.i, %if.end78.i.for.inc129.i_crit_edge ], [ %p_out.3.i, %copy_two_pixels.exit.i.for.inc129.i_crit_edge ]
  %add130.i = add i32 %y.162.i, %step.0.i
  %inc131.i = add i32 %y_out.163.i, 1
  %cmp61.not.i = icmp eq i32 %add130.i, %end.0.i
  br i1 %cmp61.not.i, label %for.inc129.i.device_process.exit_crit_edge, label %for.inc129.i.for.body62.i_crit_edge

for.inc129.i.for.body62.i_crit_edge:              ; preds = %for.inc129.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body62.i

for.inc129.i.device_process.exit_crit_edge:       ; preds = %for.inc129.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %device_process.exit

device_process.exit:                              ; preds = %for.inc129.i.device_process.exit_crit_edge, %if.end55.i.device_process.exit_crit_edge, %copy_line.exit.i.device_process.exit_crit_edge, %for.cond.preheader.i.device_process.exit_crit_edge, %do.end.i, %entry.device_process.exit_crit_edge
  %183 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %req, align 4
  tail call void @v4l2_ctrl_request_complete(ptr noundef %184, ptr noundef %hdl) #12
  %transtime = getelementptr inbounds %struct.vim2m_ctx, ptr %priv, i32 0, i32 5
  %185 = ptrtoint ptr %transtime to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %transtime, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %186) #12
  %work_run = getelementptr inbounds %struct.vim2m_ctx, ptr %priv, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %187 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %187, ptr noundef %work_run, i32 noundef %call2.i) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_request_setup(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_copy_metadata(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.1, i32 noundef 16) #12
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.1, i32 noundef 32) #12
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @enum_fmt(ptr noundef %f, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @enum_fmt(ptr noundef %f, i32 noundef 2)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx.i, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %call.i = tail call ptr @v4l2_m2m_get_vq(ptr noundef %3, i32 noundef %5) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.vidioc_g_fmt.exit_crit_edge, label %if.end.i

entry.vidioc_g_fmt.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_g_fmt.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %7, label %if.end.i.vidioc_g_fmt.exit_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
  ]

if.end.i.vidioc_g_fmt.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_g_fmt.exit

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %q_data.i.i = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 14
  br label %get_q_data.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx3.i.i = getelementptr %struct.vim2m_ctx, ptr %1, i32 0, i32 14, i32 1
  br label %get_q_data.exit.i

get_q_data.exit.i:                                ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.i = phi ptr [ %arrayidx3.i.i, %sw.bb1.i.i ], [ %q_data.i.i, %sw.bb.i.i ]
  %tobool3.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool3.not.i, label %get_q_data.exit.i.vidioc_g_fmt.exit_crit_edge, label %if.end5.i

get_q_data.exit.i.vidioc_g_fmt.exit_crit_edge:    ; preds = %get_q_data.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_g_fmt.exit

if.end5.i:                                        ; preds = %get_q_data.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %retval.0.i.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %11 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.vim2m_q_data, ptr %retval.0.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height.i, align 4
  %height8.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %height8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height8.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %field.i, align 4
  %fmt10.i = getelementptr inbounds %struct.vim2m_q_data, ptr %retval.0.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %fmt10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fmt10.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pixelformat.i, align 4
  %21 = load i32, ptr %retval.0.i.i, align 4
  %22 = load ptr, ptr %fmt10.i, align 4
  %depth.i = getelementptr inbounds %struct.vim2m_fmt, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %depth.i, align 4
  %mul.i = mul i32 %24, %21
  %shr.i = lshr i32 %mul.i, 3
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr.i, ptr %bytesperline.i, align 4
  %sizeimage.i = getelementptr inbounds %struct.vim2m_q_data, ptr %retval.0.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sizeimage.i, align 4
  %sizeimage16.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %28 = ptrtoint ptr %sizeimage16.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %sizeimage16.i, align 4
  %colorspace.i = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %colorspace.i, align 4
  %colorspace18.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %31 = ptrtoint ptr %colorspace18.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %colorspace18.i, align 4
  %xfer_func.i = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 12
  %32 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xfer_func.i, align 4
  %xfer_func20.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %34 = ptrtoint ptr %xfer_func20.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %xfer_func20.i, align 4
  %ycbcr_enc.i = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 11
  %35 = ptrtoint ptr %ycbcr_enc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ycbcr_enc.i, align 4
  %37 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %37, align 4
  %quant.i = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 13
  %39 = ptrtoint ptr %quant.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %quant.i, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %quantization.i, align 4
  br label %vidioc_g_fmt.exit

vidioc_g_fmt.exit:                                ; preds = %if.end5.i, %get_q_data.exit.i.vidioc_g_fmt.exit_crit_edge, %if.end.i.vidioc_g_fmt.exit_crit_edge, %entry.vidioc_g_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ -22, %entry.vidioc_g_fmt.exit_crit_edge ], [ -22, %get_q_data.exit.i.vidioc_g_fmt.exit_crit_edge ], [ -22, %if.end.i.vidioc_g_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx.i, align 4
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %call.i = tail call ptr @v4l2_m2m_get_vq(ptr noundef %3, i32 noundef %5) #12
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.vidioc_g_fmt.exit_crit_edge, label %if.end.i

entry.vidioc_g_fmt.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_g_fmt.exit

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %f, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %7, label %if.end.i.vidioc_g_fmt.exit_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
  ]

if.end.i.vidioc_g_fmt.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_g_fmt.exit

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %q_data.i.i = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 14
  br label %get_q_data.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx3.i.i = getelementptr %struct.vim2m_ctx, ptr %1, i32 0, i32 14, i32 1
  br label %get_q_data.exit.i

get_q_data.exit.i:                                ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.i = phi ptr [ %arrayidx3.i.i, %sw.bb1.i.i ], [ %q_data.i.i, %sw.bb.i.i ]
  %tobool3.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool3.not.i, label %get_q_data.exit.i.vidioc_g_fmt.exit_crit_edge, label %if.end5.i

get_q_data.exit.i.vidioc_g_fmt.exit_crit_edge:    ; preds = %get_q_data.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_g_fmt.exit

if.end5.i:                                        ; preds = %get_q_data.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %retval.0.i.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %11 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.vim2m_q_data, ptr %retval.0.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height.i, align 4
  %height8.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %height8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height8.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %field.i, align 4
  %fmt10.i = getelementptr inbounds %struct.vim2m_q_data, ptr %retval.0.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %fmt10.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fmt10.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pixelformat.i, align 4
  %21 = load i32, ptr %retval.0.i.i, align 4
  %22 = load ptr, ptr %fmt10.i, align 4
  %depth.i = getelementptr inbounds %struct.vim2m_fmt, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %depth.i, align 4
  %mul.i = mul i32 %24, %21
  %shr.i = lshr i32 %mul.i, 3
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr.i, ptr %bytesperline.i, align 4
  %sizeimage.i = getelementptr inbounds %struct.vim2m_q_data, ptr %retval.0.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sizeimage.i, align 4
  %sizeimage16.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %28 = ptrtoint ptr %sizeimage16.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %sizeimage16.i, align 4
  %colorspace.i = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %colorspace.i, align 4
  %colorspace18.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %31 = ptrtoint ptr %colorspace18.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %colorspace18.i, align 4
  %xfer_func.i = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 12
  %32 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %xfer_func.i, align 4
  %xfer_func20.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %34 = ptrtoint ptr %xfer_func20.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %xfer_func20.i, align 4
  %ycbcr_enc.i = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 11
  %35 = ptrtoint ptr %ycbcr_enc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ycbcr_enc.i, align 4
  %37 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %37, align 4
  %quant.i = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 13
  %39 = ptrtoint ptr %quant.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %quant.i, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %quantization.i, align 4
  br label %vidioc_g_fmt.exit

vidioc_g_fmt.exit:                                ; preds = %if.end5.i, %get_q_data.exit.i.vidioc_g_fmt.exit_crit_edge, %if.end.i.vidioc_g_fmt.exit_crit_edge, %entry.vidioc_g_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end5.i ], [ -22, %entry.vidioc_g_fmt.exit_crit_edge ], [ -22, %get_q_data.exit.i.vidioc_g_fmt.exit_crit_edge ], [ -22, %if.end.i.vidioc_g_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call2 = tail call fastcc i32 @vidioc_s_fmt(ptr noundef %1, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @vidioc_try_fmt_vid_out(ptr noundef %file, ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %call3 = tail call fastcc i32 @vidioc_s_fmt(ptr noundef %3, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %colorspace, align 4
  %colorspace6 = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %colorspace6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %colorspace6, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %7 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xfer_func, align 4
  %xfer_func8 = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %xfer_func8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %xfer_func8, align 4
  %10 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %ycbcr_enc = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %ycbcr_enc, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quantization, align 4
  %quant = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %quant to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %quant, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then5 ], [ %call3, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %4 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp2.i = icmp eq i32 %4, %3
  br i1 %cmp2.i, label %entry.find_format.exit_crit_edge, label %for.inc.i

entry.find_format.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.i:                                        ; preds = %entry
  %5 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp2.1.i = icmp eq i32 %5, %3
  br i1 %cmp2.1.i, label %for.inc.i.find_format.exit_crit_edge, label %for.inc.1.i

for.inc.i.find_format.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %6 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp2.2.i = icmp eq i32 %6, %3
  br i1 %cmp2.2.i, label %for.inc.1.i.find_format.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.find_format.exit_crit_edge:           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %7 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp2.3.i = icmp eq i32 %7, %3
  br i1 %cmp2.3.i, label %for.inc.2.i.find_format.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.find_format.exit_crit_edge:           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %8 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp2.4.i = icmp eq i32 %8, %3
  br i1 %cmp2.4.i, label %for.inc.3.i.find_format.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.find_format.exit_crit_edge:           ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %9 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp2.5.i = icmp eq i32 %9, %3
  br i1 %cmp2.5.i, label %for.inc.4.i.find_format.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.find_format.exit_crit_edge:           ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %10 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp2.6.i = icmp eq i32 %10, %3
  br i1 %cmp2.6.i, label %for.inc.5.i.find_format.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.find_format.exit_crit_edge:           ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %11 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp2.7.i = icmp eq i32 %11, %3
  br i1 %cmp2.7.i, label %for.inc.6.i.find_format.exit_crit_edge, label %for.inc.7.i

for.inc.6.i.find_format.exit_crit_edge:           ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %12 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp2.8.i = icmp eq i32 %12, %3
  br i1 %cmp2.8.i, label %for.inc.7.i.find_format.exit_crit_edge, label %for.inc.7.i.find_format.exit56_crit_edge

for.inc.7.i.find_format.exit56_crit_edge:         ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit56

for.inc.7.i.find_format.exit_crit_edge:           ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

find_format.exit:                                 ; preds = %for.inc.7.i.find_format.exit_crit_edge, %for.inc.6.i.find_format.exit_crit_edge, %for.inc.5.i.find_format.exit_crit_edge, %for.inc.4.i.find_format.exit_crit_edge, %for.inc.3.i.find_format.exit_crit_edge, %for.inc.2.i.find_format.exit_crit_edge, %for.inc.1.i.find_format.exit_crit_edge, %for.inc.i.find_format.exit_crit_edge, %entry.find_format.exit_crit_edge
  %k.0.lcssa.ph.i = phi i32 [ 0, %entry.find_format.exit_crit_edge ], [ 1, %for.inc.i.find_format.exit_crit_edge ], [ 2, %for.inc.1.i.find_format.exit_crit_edge ], [ 3, %for.inc.2.i.find_format.exit_crit_edge ], [ 4, %for.inc.3.i.find_format.exit_crit_edge ], [ 5, %for.inc.4.i.find_format.exit_crit_edge ], [ 6, %for.inc.5.i.find_format.exit_crit_edge ], [ 7, %for.inc.6.i.find_format.exit_crit_edge ], [ 8, %for.inc.7.i.find_format.exit_crit_edge ]
  %arrayidx615.i = getelementptr [9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i
  %tobool.not = icmp eq ptr %arrayidx615.i, null
  br i1 %tobool.not, label %find_format.exit.find_format.exit56_crit_edge, label %find_format.exit.if.end_crit_edge

find_format.exit.if.end_crit_edge:                ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

find_format.exit.find_format.exit56_crit_edge:    ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit56

find_format.exit56:                               ; preds = %find_format.exit.find_format.exit56_crit_edge, %for.inc.7.i.find_format.exit56_crit_edge
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %4, ptr %pixelformat, align 4
  br label %if.end

if.end:                                           ; preds = %find_format.exit56, %find_format.exit.if.end_crit_edge
  %fmt.0 = phi ptr [ %arrayidx615.i, %find_format.exit.if.end_crit_edge ], [ @formats, %find_format.exit56 ]
  %types = getelementptr inbounds %struct.vim2m_fmt, ptr %fmt.0, i32 0, i32 2
  %14 = ptrtoint ptr %types to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %types, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixelformat, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name, i32 noundef %19) #16
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %colorspace = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %colorspace, align 4
  %colorspace15 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %22 = ptrtoint ptr %colorspace15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %colorspace15, align 4
  %xfer_func = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %xfer_func, align 4
  %xfer_func17 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %25 = ptrtoint ptr %xfer_func17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %xfer_func17, align 4
  %ycbcr_enc = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ycbcr_enc, align 4
  %28 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %28, align 4
  %quant = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 13
  %30 = ptrtoint ptr %quant to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %quant, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %quantization to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %quantization, align 4
  %fmt1.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %34)
  %cmp.i = icmp ult i32 %34, 32
  br i1 %cmp.i, label %if.end13.if.end10.sink.split.i_crit_edge, label %if.else.i

if.end13.if.end10.sink.split.i_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.sink.split.i

if.else.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %34)
  %cmp6.i = icmp ugt i32 %34, 480
  br i1 %cmp6.i, label %if.else.i.if.end10.sink.split.i_crit_edge, label %if.else.i.if.end10.i_crit_edge

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.else.i.if.end10.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.sink.split.i

if.end10.sink.split.i:                            ; preds = %if.else.i.if.end10.sink.split.i_crit_edge, %if.end13.if.end10.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 32, %if.end13.if.end10.sink.split.i_crit_edge ], [ 480, %if.else.i.if.end10.sink.split.i_crit_edge ]
  %35 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink.i, ptr %height.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end10.sink.split.i, %if.else.i.if.end10.i_crit_edge
  %36 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fmt1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %37)
  %cmp12.i = icmp ult i32 %37, 32
  br i1 %cmp12.i, label %if.end10.i.if.end24.sink.split.i_crit_edge, label %if.else16.i

if.end10.i.if.end24.sink.split.i_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.sink.split.i

if.else16.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %37)
  %cmp19.i = icmp ugt i32 %37, 640
  br i1 %cmp19.i, label %if.else16.i.if.end24.sink.split.i_crit_edge, label %if.else16.i.if.end24.i_crit_edge

if.else16.i.if.end24.i_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.else16.i.if.end24.sink.split.i_crit_edge:      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.sink.split.i

if.end24.sink.split.i:                            ; preds = %if.else16.i.if.end24.sink.split.i_crit_edge, %if.end10.i.if.end24.sink.split.i_crit_edge
  %.sink1.i = phi i32 [ 32, %if.end10.i.if.end24.sink.split.i_crit_edge ], [ 640, %if.else16.i.if.end24.sink.split.i_crit_edge ]
  %38 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %.sink1.i, ptr %fmt1.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end24.sink.split.i, %if.else16.i.if.end24.i_crit_edge
  %39 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pixelformat, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %40, label %sw.default.i.i [
    i32 825770306, label %if.end24.i.vidioc_try_fmt.exit_crit_edge
    i32 1196573255, label %if.end24.i.vidioc_try_fmt.exit_crit_edge58
    i32 1195528775, label %if.end24.i.vidioc_try_fmt.exit_crit_edge59
    i32 1111967570, label %if.end24.i.vidioc_try_fmt.exit_crit_edge60
  ]

if.end24.i.vidioc_try_fmt.exit_crit_edge60:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_try_fmt.exit

if.end24.i.vidioc_try_fmt.exit_crit_edge59:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_try_fmt.exit

if.end24.i.vidioc_try_fmt.exit_crit_edge58:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_try_fmt.exit

if.end24.i.vidioc_try_fmt.exit_crit_edge:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_try_fmt.exit

sw.default.i.i:                                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_try_fmt.exit

vidioc_try_fmt.exit:                              ; preds = %sw.default.i.i, %if.end24.i.vidioc_try_fmt.exit_crit_edge, %if.end24.i.vidioc_try_fmt.exit_crit_edge58, %if.end24.i.vidioc_try_fmt.exit_crit_edge59, %if.end24.i.vidioc_try_fmt.exit_crit_edge60
  %storemerge.i.neg.i = phi i32 [ -1, %sw.default.i.i ], [ -2, %if.end24.i.vidioc_try_fmt.exit_crit_edge ], [ -2, %if.end24.i.vidioc_try_fmt.exit_crit_edge58 ], [ -2, %if.end24.i.vidioc_try_fmt.exit_crit_edge59 ], [ -2, %if.end24.i.vidioc_try_fmt.exit_crit_edge60 ]
  %42 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fmt1.i, align 4
  %and.i = and i32 %43, -2
  store i32 %and.i, ptr %fmt1.i, align 4
  %44 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height.i, align 4
  %and32.i = and i32 %45, %storemerge.i.neg.i
  store i32 %and32.i, ptr %height.i, align 4
  %depth.i = getelementptr inbounds %struct.vim2m_fmt, ptr %fmt.0, i32 0, i32 1
  %46 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %depth.i, align 4
  %mul.i = mul i32 %47, %and.i
  %shr.i = lshr i32 %mul.i, 3
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %48 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shr.i, ptr %bytesperline.i, align 4
  %mul40.i = mul i32 %shr.i, %and32.i
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %49 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul40.i, ptr %sizeimage.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %50 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %field.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %vidioc_try_fmt.exit, %do.end
  %retval.0 = phi i32 [ 0, %vidioc_try_fmt.exit ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_out(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %4 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp2.i = icmp eq i32 %4, %3
  br i1 %cmp2.i, label %entry.find_format.exit_crit_edge, label %for.inc.i

entry.find_format.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.i:                                        ; preds = %entry
  %5 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp2.1.i = icmp eq i32 %5, %3
  br i1 %cmp2.1.i, label %for.inc.i.find_format.exit_crit_edge, label %for.inc.1.i

for.inc.i.find_format.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %6 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp2.2.i = icmp eq i32 %6, %3
  br i1 %cmp2.2.i, label %for.inc.1.i.find_format.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.find_format.exit_crit_edge:           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %7 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp2.3.i = icmp eq i32 %7, %3
  br i1 %cmp2.3.i, label %for.inc.2.i.find_format.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.find_format.exit_crit_edge:           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %8 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp2.4.i = icmp eq i32 %8, %3
  br i1 %cmp2.4.i, label %for.inc.3.i.find_format.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.find_format.exit_crit_edge:           ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %9 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp2.5.i = icmp eq i32 %9, %3
  br i1 %cmp2.5.i, label %for.inc.4.i.find_format.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.find_format.exit_crit_edge:           ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %10 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp2.6.i = icmp eq i32 %10, %3
  br i1 %cmp2.6.i, label %for.inc.5.i.find_format.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.find_format.exit_crit_edge:           ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %11 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp2.7.i = icmp eq i32 %11, %3
  br i1 %cmp2.7.i, label %for.inc.6.i.find_format.exit_crit_edge, label %for.inc.7.i

for.inc.6.i.find_format.exit_crit_edge:           ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %12 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp2.8.i = icmp eq i32 %12, %3
  br i1 %cmp2.8.i, label %for.inc.7.i.find_format.exit_crit_edge, label %for.inc.7.i.find_format.exit50_crit_edge

for.inc.7.i.find_format.exit50_crit_edge:         ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit50

for.inc.7.i.find_format.exit_crit_edge:           ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

find_format.exit:                                 ; preds = %for.inc.7.i.find_format.exit_crit_edge, %for.inc.6.i.find_format.exit_crit_edge, %for.inc.5.i.find_format.exit_crit_edge, %for.inc.4.i.find_format.exit_crit_edge, %for.inc.3.i.find_format.exit_crit_edge, %for.inc.2.i.find_format.exit_crit_edge, %for.inc.1.i.find_format.exit_crit_edge, %for.inc.i.find_format.exit_crit_edge, %entry.find_format.exit_crit_edge
  %k.0.lcssa.ph.i = phi i32 [ 0, %entry.find_format.exit_crit_edge ], [ 1, %for.inc.i.find_format.exit_crit_edge ], [ 2, %for.inc.1.i.find_format.exit_crit_edge ], [ 3, %for.inc.2.i.find_format.exit_crit_edge ], [ 4, %for.inc.3.i.find_format.exit_crit_edge ], [ 5, %for.inc.4.i.find_format.exit_crit_edge ], [ 6, %for.inc.5.i.find_format.exit_crit_edge ], [ 7, %for.inc.6.i.find_format.exit_crit_edge ], [ 8, %for.inc.7.i.find_format.exit_crit_edge ]
  %arrayidx615.i = getelementptr [9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i
  %tobool.not = icmp eq ptr %arrayidx615.i, null
  br i1 %tobool.not, label %find_format.exit.find_format.exit50_crit_edge, label %find_format.exit.if.end_crit_edge

find_format.exit.if.end_crit_edge:                ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

find_format.exit.find_format.exit50_crit_edge:    ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit50

find_format.exit50:                               ; preds = %find_format.exit.find_format.exit50_crit_edge, %for.inc.7.i.find_format.exit50_crit_edge
  %13 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %4, ptr %pixelformat, align 4
  br label %if.end

if.end:                                           ; preds = %find_format.exit50, %find_format.exit.if.end_crit_edge
  %fmt.0 = phi ptr [ %arrayidx615.i, %find_format.exit.if.end_crit_edge ], [ @formats, %find_format.exit50 ]
  %types = getelementptr inbounds %struct.vim2m_fmt, ptr %fmt.0, i32 0, i32 2
  %14 = ptrtoint ptr %types to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %types, align 4
  %and = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.vim2m_ctx, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pixelformat, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name, i32 noundef %19) #16
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool15.not = icmp eq i32 %21, 0
  br i1 %tobool15.not, label %if.then16, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %colorspace, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  %fmt1.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %24)
  %cmp.i = icmp ult i32 %24, 32
  br i1 %cmp.i, label %if.end19.if.end10.sink.split.i_crit_edge, label %if.else.i

if.end19.if.end10.sink.split.i_crit_edge:         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.sink.split.i

if.else.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 480, i32 %24)
  %cmp6.i = icmp ugt i32 %24, 480
  br i1 %cmp6.i, label %if.else.i.if.end10.sink.split.i_crit_edge, label %if.else.i.if.end10.i_crit_edge

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.else.i.if.end10.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.sink.split.i

if.end10.sink.split.i:                            ; preds = %if.else.i.if.end10.sink.split.i_crit_edge, %if.end19.if.end10.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 32, %if.end19.if.end10.sink.split.i_crit_edge ], [ 480, %if.else.i.if.end10.sink.split.i_crit_edge ]
  %25 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink.i, ptr %height.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end10.sink.split.i, %if.else.i.if.end10.i_crit_edge
  %26 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fmt1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %27)
  %cmp12.i = icmp ult i32 %27, 32
  br i1 %cmp12.i, label %if.end10.i.if.end24.sink.split.i_crit_edge, label %if.else16.i

if.end10.i.if.end24.sink.split.i_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.sink.split.i

if.else16.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 640, i32 %27)
  %cmp19.i = icmp ugt i32 %27, 640
  br i1 %cmp19.i, label %if.else16.i.if.end24.sink.split.i_crit_edge, label %if.else16.i.if.end24.i_crit_edge

if.else16.i.if.end24.i_crit_edge:                 ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.i

if.else16.i.if.end24.sink.split.i_crit_edge:      ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24.sink.split.i

if.end24.sink.split.i:                            ; preds = %if.else16.i.if.end24.sink.split.i_crit_edge, %if.end10.i.if.end24.sink.split.i_crit_edge
  %.sink1.i = phi i32 [ 32, %if.end10.i.if.end24.sink.split.i_crit_edge ], [ 640, %if.else16.i.if.end24.sink.split.i_crit_edge ]
  %28 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink1.i, ptr %fmt1.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end24.sink.split.i, %if.else16.i.if.end24.i_crit_edge
  %29 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pixelformat, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %30, label %sw.default.i.i [
    i32 825770306, label %if.end24.i.vidioc_try_fmt.exit_crit_edge
    i32 1196573255, label %if.end24.i.vidioc_try_fmt.exit_crit_edge52
    i32 1195528775, label %if.end24.i.vidioc_try_fmt.exit_crit_edge53
    i32 1111967570, label %if.end24.i.vidioc_try_fmt.exit_crit_edge54
  ]

if.end24.i.vidioc_try_fmt.exit_crit_edge54:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_try_fmt.exit

if.end24.i.vidioc_try_fmt.exit_crit_edge53:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_try_fmt.exit

if.end24.i.vidioc_try_fmt.exit_crit_edge52:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_try_fmt.exit

if.end24.i.vidioc_try_fmt.exit_crit_edge:         ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_try_fmt.exit

sw.default.i.i:                                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %vidioc_try_fmt.exit

vidioc_try_fmt.exit:                              ; preds = %sw.default.i.i, %if.end24.i.vidioc_try_fmt.exit_crit_edge, %if.end24.i.vidioc_try_fmt.exit_crit_edge52, %if.end24.i.vidioc_try_fmt.exit_crit_edge53, %if.end24.i.vidioc_try_fmt.exit_crit_edge54
  %storemerge.i.neg.i = phi i32 [ -1, %sw.default.i.i ], [ -2, %if.end24.i.vidioc_try_fmt.exit_crit_edge ], [ -2, %if.end24.i.vidioc_try_fmt.exit_crit_edge52 ], [ -2, %if.end24.i.vidioc_try_fmt.exit_crit_edge53 ], [ -2, %if.end24.i.vidioc_try_fmt.exit_crit_edge54 ]
  %32 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fmt1.i, align 4
  %and.i = and i32 %33, -2
  store i32 %and.i, ptr %fmt1.i, align 4
  %34 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height.i, align 4
  %and32.i = and i32 %35, %storemerge.i.neg.i
  store i32 %and32.i, ptr %height.i, align 4
  %depth.i = getelementptr inbounds %struct.vim2m_fmt, ptr %fmt.0, i32 0, i32 1
  %36 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %depth.i, align 4
  %mul.i = mul i32 %37, %and.i
  %shr.i = lshr i32 %mul.i, 3
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %38 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr.i, ptr %bytesperline.i, align 4
  %mul40.i = mul i32 %shr.i, %and32.i
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %39 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %mul40.i, ptr %sizeimage.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %40 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %field.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %vidioc_try_fmt.exit, %do.end
  %retval.0 = phi i32 [ 0, %vidioc_try_fmt.exit ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_framesizes(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fsize) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %pixel_format = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 1
  %2 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixel_format, align 4
  %4 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp2.i = icmp eq i32 %4, %3
  br i1 %cmp2.i, label %if.end.find_format.exit_crit_edge, label %for.inc.i

if.end.find_format.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.i:                                        ; preds = %if.end
  %5 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp2.1.i = icmp eq i32 %5, %3
  br i1 %cmp2.1.i, label %for.inc.i.find_format.exit_crit_edge, label %for.inc.1.i

for.inc.i.find_format.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %6 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %3)
  %cmp2.2.i = icmp eq i32 %6, %3
  br i1 %cmp2.2.i, label %for.inc.1.i.find_format.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.find_format.exit_crit_edge:           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %7 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %3)
  %cmp2.3.i = icmp eq i32 %7, %3
  br i1 %cmp2.3.i, label %for.inc.2.i.find_format.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.find_format.exit_crit_edge:           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %8 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %3)
  %cmp2.4.i = icmp eq i32 %8, %3
  br i1 %cmp2.4.i, label %for.inc.3.i.find_format.exit_crit_edge, label %for.inc.4.i

for.inc.3.i.find_format.exit_crit_edge:           ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %9 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp2.5.i = icmp eq i32 %9, %3
  br i1 %cmp2.5.i, label %for.inc.4.i.find_format.exit_crit_edge, label %for.inc.5.i

for.inc.4.i.find_format.exit_crit_edge:           ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %10 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %3)
  %cmp2.6.i = icmp eq i32 %10, %3
  br i1 %cmp2.6.i, label %for.inc.5.i.find_format.exit_crit_edge, label %for.inc.6.i

for.inc.5.i.find_format.exit_crit_edge:           ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %11 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp2.7.i = icmp eq i32 %11, %3
  br i1 %cmp2.7.i, label %for.inc.6.i.find_format.exit_crit_edge, label %for.inc.7.i

for.inc.6.i.find_format.exit_crit_edge:           ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %12 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %3)
  %cmp2.8.i = icmp eq i32 %12, %3
  br i1 %cmp2.8.i, label %for.inc.7.i.find_format.exit_crit_edge, label %for.inc.7.i.return_crit_edge

for.inc.7.i.return_crit_edge:                     ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

for.inc.7.i.find_format.exit_crit_edge:           ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

find_format.exit:                                 ; preds = %for.inc.7.i.find_format.exit_crit_edge, %for.inc.6.i.find_format.exit_crit_edge, %for.inc.5.i.find_format.exit_crit_edge, %for.inc.4.i.find_format.exit_crit_edge, %for.inc.3.i.find_format.exit_crit_edge, %for.inc.2.i.find_format.exit_crit_edge, %for.inc.1.i.find_format.exit_crit_edge, %for.inc.i.find_format.exit_crit_edge, %if.end.find_format.exit_crit_edge
  %k.0.lcssa.ph.i = phi i32 [ 0, %if.end.find_format.exit_crit_edge ], [ 1, %for.inc.i.find_format.exit_crit_edge ], [ 2, %for.inc.1.i.find_format.exit_crit_edge ], [ 3, %for.inc.2.i.find_format.exit_crit_edge ], [ 4, %for.inc.3.i.find_format.exit_crit_edge ], [ 5, %for.inc.4.i.find_format.exit_crit_edge ], [ 6, %for.inc.5.i.find_format.exit_crit_edge ], [ 7, %for.inc.6.i.find_format.exit_crit_edge ], [ 8, %for.inc.7.i.find_format.exit_crit_edge ]
  %arrayidx615.i = getelementptr [9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i
  %tobool.not = icmp eq ptr %arrayidx615.i, null
  br i1 %tobool.not, label %find_format.exit.return_crit_edge, label %if.end2

find_format.exit.return_crit_edge:                ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end2:                                          ; preds = %find_format.exit
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %type, align 4
  %14 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 32, ptr %14, align 4
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %16 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %min_height, align 4
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %17 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 640, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %18 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 480, ptr %max_height, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %19 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %3, label %sw.default.i [
    i32 825770306, label %if.end2.get_alignment.exit_crit_edge
    i32 1196573255, label %if.end2.get_alignment.exit_crit_edge14
    i32 1195528775, label %if.end2.get_alignment.exit_crit_edge15
    i32 1111967570, label %if.end2.get_alignment.exit_crit_edge16
  ]

if.end2.get_alignment.exit_crit_edge16:           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_alignment.exit

if.end2.get_alignment.exit_crit_edge15:           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_alignment.exit

if.end2.get_alignment.exit_crit_edge14:           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_alignment.exit

if.end2.get_alignment.exit_crit_edge:             ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_alignment.exit

sw.default.i:                                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %get_alignment.exit

get_alignment.exit:                               ; preds = %sw.default.i, %if.end2.get_alignment.exit_crit_edge, %if.end2.get_alignment.exit_crit_edge14, %if.end2.get_alignment.exit_crit_edge15, %if.end2.get_alignment.exit_crit_edge16
  %storemerge.i = phi i32 [ 1, %sw.default.i ], [ 2, %if.end2.get_alignment.exit_crit_edge ], [ 2, %if.end2.get_alignment.exit_crit_edge14 ], [ 2, %if.end2.get_alignment.exit_crit_edge15 ], [ 2, %if.end2.get_alignment.exit_crit_edge16 ]
  %20 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %step_width, align 4
  %21 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge.i, ptr %step_height, align 4
  br label %return

return:                                           ; preds = %get_alignment.exit, %find_format.exit.return_crit_edge, %for.inc.7.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %get_alignment.exit ], [ -22, %entry.return_crit_edge ], [ -22, %find_format.exit.return_crit_edge ], [ -22, %for.inc.7.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @enum_fmt(ptr nocapture noundef %f, i32 noundef %type) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 0, i32 2), align 4
  %and = and i32 %0, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.if.then6.critedge_crit_edge, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then.if.then6.critedge_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.critedge

for.inc:                                          ; preds = %if.then.for.inc_crit_edge, %entry.for.inc_crit_edge
  %num.1 = phi i32 [ 0, %entry.for.inc_crit_edge ], [ 1, %if.then.for.inc_crit_edge ]
  %3 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 1, i32 2), align 4
  %and.1 = and i32 %3, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1, i32 %5)
  %cmp1.1 = icmp eq i32 %num.1, %5
  br i1 %cmp1.1, label %if.then.1.if.then6.critedge_crit_edge, label %if.end.1

if.then.1.if.then6.critedge_crit_edge:            ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.critedge

if.end.1:                                         ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #14
  %inc.1 = add nuw nsw i32 %num.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  %num.1.1 = phi i32 [ %inc.1, %if.end.1 ], [ %num.1, %for.inc.for.inc.1_crit_edge ]
  %6 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 2, i32 2), align 4
  %and.2 = and i32 %6, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %7 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1.1, i32 %8)
  %cmp1.2 = icmp eq i32 %num.1.1, %8
  br i1 %cmp1.2, label %if.then.2.if.then6.critedge_crit_edge, label %if.end.2

if.then.2.if.then6.critedge_crit_edge:            ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.critedge

if.end.2:                                         ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #14
  %inc.2 = add nuw nsw i32 %num.1.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %num.1.2 = phi i32 [ %inc.2, %if.end.2 ], [ %num.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %9 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 3, i32 2), align 4
  %and.3 = and i32 %9, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  %10 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1.2, i32 %11)
  %cmp1.3 = icmp eq i32 %num.1.2, %11
  br i1 %cmp1.3, label %if.then.3.if.then6.critedge_crit_edge, label %if.end.3

if.then.3.if.then6.critedge_crit_edge:            ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.critedge

if.end.3:                                         ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #14
  %inc.3 = add nuw nsw i32 %num.1.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %num.1.3 = phi i32 [ %inc.3, %if.end.3 ], [ %num.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %12 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 4, i32 2), align 4
  %and.4 = and i32 %12, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  %13 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1.3, i32 %14)
  %cmp1.4 = icmp eq i32 %num.1.3, %14
  br i1 %cmp1.4, label %if.then.4.if.then6.critedge_crit_edge, label %if.end.4

if.then.4.if.then6.critedge_crit_edge:            ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.critedge

if.end.4:                                         ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #14
  %inc.4 = add nuw nsw i32 %num.1.3, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %num.1.4 = phi i32 [ %inc.4, %if.end.4 ], [ %num.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %15 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 5, i32 2), align 4
  %and.5 = and i32 %15, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  %16 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1.4, i32 %17)
  %cmp1.5 = icmp eq i32 %num.1.4, %17
  br i1 %cmp1.5, label %if.then.5.if.then6.critedge_crit_edge, label %if.end.5

if.then.5.if.then6.critedge_crit_edge:            ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.critedge

if.end.5:                                         ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #14
  %inc.5 = add nuw nsw i32 %num.1.4, 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5, %for.inc.4.for.inc.5_crit_edge
  %num.1.5 = phi i32 [ %inc.5, %if.end.5 ], [ %num.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %18 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 6, i32 2), align 4
  %and.6 = and i32 %18, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  %19 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1.5, i32 %20)
  %cmp1.6 = icmp eq i32 %num.1.5, %20
  br i1 %cmp1.6, label %if.then.6.if.then6.critedge_crit_edge, label %if.end.6

if.then.6.if.then6.critedge_crit_edge:            ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.critedge

if.end.6:                                         ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #14
  %inc.6 = add nuw nsw i32 %num.1.5, 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end.6, %for.inc.5.for.inc.6_crit_edge
  %num.1.6 = phi i32 [ %inc.6, %if.end.6 ], [ %num.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %21 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 7, i32 2), align 4
  %and.7 = and i32 %21, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  %22 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1.6, i32 %23)
  %cmp1.7 = icmp eq i32 %num.1.6, %23
  br i1 %cmp1.7, label %if.then.7.if.then6.critedge_crit_edge, label %if.end.7

if.then.7.if.then6.critedge_crit_edge:            ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.critedge

if.end.7:                                         ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #14
  %inc.7 = add nuw nsw i32 %num.1.6, 1
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end.7, %for.inc.6.for.inc.7_crit_edge
  %num.1.7 = phi i32 [ %inc.7, %if.end.7 ], [ %num.1.6, %for.inc.6.for.inc.7_crit_edge ]
  %24 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 8, i32 2), align 4
  %and.8 = and i32 %24, %type
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool.not.8, label %for.inc.7.cleanup_crit_edge, label %if.then.8

for.inc.7.cleanup_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.8:                                        ; preds = %for.inc.7
  %25 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1.7, i32 %26)
  %cmp1.8 = icmp eq i32 %num.1.7, %26
  br i1 %cmp1.8, label %if.then.8.if.then6.critedge_crit_edge, label %if.then.8.cleanup_crit_edge

if.then.8.cleanup_crit_edge:                      ; preds = %if.then.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.8.if.then6.critedge_crit_edge:            ; preds = %if.then.8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then6.critedge

if.then6.critedge:                                ; preds = %if.then.8.if.then6.critedge_crit_edge, %if.then.7.if.then6.critedge_crit_edge, %if.then.6.if.then6.critedge_crit_edge, %if.then.5.if.then6.critedge_crit_edge, %if.then.4.if.then6.critedge_crit_edge, %if.then.3.if.then6.critedge_crit_edge, %if.then.2.if.then6.critedge_crit_edge, %if.then.1.if.then6.critedge_crit_edge, %if.then.if.then6.critedge_crit_edge
  %i.018.lcssa = phi i32 [ 0, %if.then.if.then6.critedge_crit_edge ], [ 1, %if.then.1.if.then6.critedge_crit_edge ], [ 2, %if.then.2.if.then6.critedge_crit_edge ], [ 3, %if.then.3.if.then6.critedge_crit_edge ], [ 4, %if.then.4.if.then6.critedge_crit_edge ], [ 5, %if.then.5.if.then6.critedge_crit_edge ], [ 6, %if.then.6.if.then6.critedge_crit_edge ], [ 7, %if.then.7.if.then6.critedge_crit_edge ], [ 8, %if.then.8.if.then6.critedge_crit_edge ]
  %arrayidx7 = getelementptr [9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 %i.018.lcssa
  %27 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx7, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %29 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6.critedge, %if.then.8.cleanup_crit_edge, %for.inc.7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6.critedge ], [ -22, %if.then.8.cleanup_crit_edge ], [ -22, %for.inc.7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vidioc_s_fmt(ptr noundef %ctx, ptr nocapture noundef readonly %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %q_data.i = getelementptr inbounds %struct.vim2m_ctx, ptr %ctx, i32 0, i32 14
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx3.i = getelementptr %struct.vim2m_ctx, ptr %ctx, i32 0, i32 14, i32 1
  br label %get_q_data.exit

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ]
  %tobool3.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool3.not, label %get_q_data.exit.cleanup_crit_edge, label %if.end5

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %get_q_data.exit
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 21
  %7 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 0
  br i1 %cmp.i.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.vim2m_ctx, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %10, i32 0, i32 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name, ptr noundef nonnull @.str.53) #16
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pixelformat, align 4
  %13 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %12)
  %cmp2.i = icmp eq i32 %13, %12
  br i1 %cmp2.i, label %if.end9.for.end.thread.i_crit_edge, label %for.inc.i

if.end9.for.end.thread.i_crit_edge:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.inc.i:                                        ; preds = %if.end9
  %14 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp2.1.i = icmp eq i32 %14, %12
  br i1 %cmp2.1.i, label %for.inc.i.for.end.thread.i_crit_edge, label %for.inc.1.i

for.inc.i.for.end.thread.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %15 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %12)
  %cmp2.2.i = icmp eq i32 %15, %12
  br i1 %cmp2.2.i, label %for.inc.1.i.for.end.thread.i_crit_edge, label %for.inc.2.i

for.inc.1.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %16 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %12)
  %cmp2.3.i = icmp eq i32 %16, %12
  br i1 %cmp2.3.i, label %for.inc.2.i.for.end.thread.i_crit_edge, label %for.inc.3.i

for.inc.2.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  %17 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %12)
  %cmp2.4.i = icmp eq i32 %17, %12
  br i1 %cmp2.4.i, label %for.inc.3.i.for.end.thread.i_crit_edge, label %for.inc.4.i

for.inc.3.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  %18 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %12)
  %cmp2.5.i = icmp eq i32 %18, %12
  br i1 %cmp2.5.i, label %for.inc.4.i.for.end.thread.i_crit_edge, label %for.inc.5.i

for.inc.4.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %19 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %12)
  %cmp2.6.i = icmp eq i32 %19, %12
  br i1 %cmp2.6.i, label %for.inc.5.i.for.end.thread.i_crit_edge, label %for.inc.6.i

for.inc.5.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %20 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %12)
  %cmp2.7.i = icmp eq i32 %20, %12
  br i1 %cmp2.7.i, label %for.inc.6.i.for.end.thread.i_crit_edge, label %for.inc.7.i

for.inc.6.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.inc.7.i:                                      ; preds = %for.inc.6.i
  %21 = load i32, ptr getelementptr inbounds ([9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %12)
  %cmp2.8.i = icmp eq i32 %21, %12
  br i1 %cmp2.8.i, label %for.inc.7.i.for.end.thread.i_crit_edge, label %for.inc.7.i.find_format.exit_crit_edge

for.inc.7.i.find_format.exit_crit_edge:           ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %find_format.exit

for.inc.7.i.for.end.thread.i_crit_edge:           ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.inc.7.i.for.end.thread.i_crit_edge, %for.inc.6.i.for.end.thread.i_crit_edge, %for.inc.5.i.for.end.thread.i_crit_edge, %for.inc.4.i.for.end.thread.i_crit_edge, %for.inc.3.i.for.end.thread.i_crit_edge, %for.inc.2.i.for.end.thread.i_crit_edge, %for.inc.1.i.for.end.thread.i_crit_edge, %for.inc.i.for.end.thread.i_crit_edge, %if.end9.for.end.thread.i_crit_edge
  %k.0.lcssa.ph.i = phi i32 [ 0, %if.end9.for.end.thread.i_crit_edge ], [ 1, %for.inc.i.for.end.thread.i_crit_edge ], [ 2, %for.inc.1.i.for.end.thread.i_crit_edge ], [ 3, %for.inc.2.i.for.end.thread.i_crit_edge ], [ 4, %for.inc.3.i.for.end.thread.i_crit_edge ], [ 5, %for.inc.4.i.for.end.thread.i_crit_edge ], [ 6, %for.inc.5.i.for.end.thread.i_crit_edge ], [ 7, %for.inc.6.i.for.end.thread.i_crit_edge ], [ 8, %for.inc.7.i.for.end.thread.i_crit_edge ]
  %arrayidx615.i = getelementptr [9 x %struct.vim2m_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i
  br label %find_format.exit

find_format.exit:                                 ; preds = %for.end.thread.i, %for.inc.7.i.find_format.exit_crit_edge
  %22 = phi ptr [ %arrayidx615.i, %for.end.thread.i ], [ null, %for.inc.7.i.find_format.exit_crit_edge ]
  %fmt11 = getelementptr inbounds %struct.vim2m_q_data, ptr %retval.0.i, i32 0, i32 4
  %23 = ptrtoint ptr %fmt11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %fmt11, align 4
  %24 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fmt, align 4
  %26 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %retval.0.i, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height, align 4
  %height15 = getelementptr inbounds %struct.vim2m_q_data, ptr %retval.0.i, i32 0, i32 1
  %29 = ptrtoint ptr %height15 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %height15, align 4
  %mul = mul i32 %28, %25
  %depth = getelementptr inbounds %struct.vim2m_fmt, ptr %22, i32 0, i32 1
  %30 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %depth, align 4
  %mul19 = mul i32 %mul, %31
  %shr = lshr i32 %mul19, 3
  %sizeimage = getelementptr inbounds %struct.vim2m_q_data, ptr %retval.0.i, i32 0, i32 2
  %32 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr, ptr %sizeimage, align 4
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.not = icmp eq i32 %33, 0
  br i1 %cmp.not, label %find_format.exit.cleanup_crit_edge, label %do.end24

find_format.exit.cleanup_crit_edge:               ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end24:                                         ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev26 = getelementptr inbounds %struct.vim2m_ctx, ptr %ctx, i32 0, i32 1
  %34 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev26, align 4
  %name28 = getelementptr inbounds %struct.v4l2_device, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %switch.selectcmp.i = icmp eq i32 %37, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.35, ptr @.str.36
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %switch.selectcmp2.i = icmp eq i32 %37, 2
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.34, ptr %switch.select.i
  %38 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %depth, align 4
  %40 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %22, align 4
  %and = and i32 %41, 255
  %shr39 = lshr i32 %41, 8
  %and40 = and i32 %shr39, 255
  %shr43 = lshr i32 %41, 16
  %and44 = and i32 %shr43, 255
  %shr47 = lshr i32 %41, 24
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name28, ptr noundef nonnull @.str.53, ptr noundef nonnull %switch.select3.i, i32 noundef %25, i32 noundef %28, i32 noundef %39, i32 noundef %and, i32 noundef %and40, i32 noundef %and44, i32 noundef %shr47) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %find_format.exit.cleanup_crit_edge, %do.end, %get_q_data.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %get_q_data.exit.cleanup_crit_edge ], [ 0, %do.end24 ], [ 0, %find_format.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @job_ready(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %num_rdy.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %num_rdy.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_rdy.i, align 4
  %conv.i = zext i8 %3 to i32
  %translen = getelementptr inbounds %struct.vim2m_ctx, ptr %priv, i32 0, i32 4
  %4 = ptrtoint ptr %translen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %translen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i)
  %cmp = icmp ugt i32 %5, %conv.i
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %num_rdy.i17 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %1, i32 0, i32 7, i32 3
  %6 = ptrtoint ptr %num_rdy.i17 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_rdy.i17, align 4
  %conv.i18 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv.i18)
  %cmp5 = icmp ugt i32 %5, %conv.i18
  br i1 %cmp5, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6.not = icmp eq i32 %8, 0
  br i1 %cmp6.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.vim2m_ctx, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %10, i32 0, i32 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name, ptr noundef nonnull @.str.61) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup_crit_edge ], [ 1, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @job_abort(ptr nocapture noundef writeonly %priv) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %aborting = getelementptr inbounds %struct.vim2m_ctx, ptr %priv, i32 0, i32 8
  %0 = ptrtoint ptr %aborting to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %aborting, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_request_validate(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_request_queue(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vim2m_dev_release(ptr nocapture noundef %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !31, !32, !33, !35, !37, !39, !40, !42, !43, !44, !45, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !70, !71, !73, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !88, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105, !106, !107, !108, !110, !112, !114, !116, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !133, !134, !135, !136, !138, !139, !140, !141, !143, !144, !145, !146, !148, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !170, !172, !173, !174, !175, !177, !179, !180, !181, !182}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @__UNIQUE_ID_description298, !1, !"__UNIQUE_ID_description298", i1 false, i1 false}
!1 = !{!"../drivers/media/test-drivers/vim2m.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_author299, !3, !"__UNIQUE_ID_author299", i1 false, i1 false}
!3 = !{!"../drivers/media/test-drivers/vim2m.c", i32 31, i32 1}
!4 = !{ptr @__UNIQUE_ID_file300, !5, !"__UNIQUE_ID_file300", i1 false, i1 false}
!5 = !{!"../drivers/media/test-drivers/vim2m.c", i32 32, i32 1}
!6 = !{ptr @__UNIQUE_ID_license301, !5, !"__UNIQUE_ID_license301", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version302, !8, !"__UNIQUE_ID_version302", i1 false, i1 false}
!8 = !{!"../drivers/media/test-drivers/vim2m.c", i32 33, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_alias303, !14, !"__UNIQUE_ID_alias303", i1 false, i1 false}
!14 = !{!"../drivers/media/test-drivers/vim2m.c", i32 34, i32 1}
!15 = !{ptr @__param_debug, !16, !"__param_debug", i1 false, i1 false}
!16 = !{!"../drivers/media/test-drivers/vim2m.c", i32 37, i32 1}
!17 = !{ptr @__UNIQUE_ID_debugtype304, !16, !"__UNIQUE_ID_debugtype304", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_debug305, !19, !"__UNIQUE_ID_debug305", i1 false, i1 false}
!19 = !{!"../drivers/media/test-drivers/vim2m.c", i32 38, i32 1}
!20 = !{ptr @__param_default_transtime, !21, !"__param_default_transtime", i1 false, i1 false}
!21 = !{!"../drivers/media/test-drivers/vim2m.c", i32 42, i32 1}
!22 = !{ptr @__UNIQUE_ID_default_transtimetype306, !21, !"__UNIQUE_ID_default_transtimetype306", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_default_transtime307, !24, !"__UNIQUE_ID_default_transtime307", i1 false, i1 false}
!24 = !{!"../drivers/media/test-drivers/vim2m.c", i32 43, i32 1}
!25 = !{ptr @__initcall__kmod_vim2m__308_1426_vim2m_init6, !26, !"__initcall__kmod_vim2m__308_1426_vim2m_init6", i1 false, i1 false}
!26 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1426, i32 1}
!27 = !{ptr @__exitcall_vim2m_exit, !28, !"__exitcall_vim2m_exit", i1 false, i1 false}
!28 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1427, i32 1}
!29 = !{ptr @debug, !30, !"debug", i1 false, i1 false}
!30 = !{!"../drivers/media/test-drivers/vim2m.c", i32 36, i32 21}
!31 = !{ptr @__param_str_debug, !16, !"__param_str_debug", i1 false, i1 false}
!32 = !{ptr @__param_str_default_transtime, !21, !"__param_str_default_transtime", i1 false, i1 false}
!33 = !{ptr @default_transtime, !34, !"default_transtime", i1 false, i1 false}
!34 = !{!"../drivers/media/test-drivers/vim2m.c", i32 41, i32 21}
!35 = !{ptr @vim2m_pdrv, !36, !"vim2m_pdrv", i1 false, i1 false}
!36 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1397, i32 31}
!37 = !{ptr @vim2m_probe.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1311, i32 2}
!39 = !{ptr @.str.3, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1319, i32 2}
!42 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @vim2m_probe._entry, !41, !"_entry", i1 false, i1 false}
!45 = !{ptr @vim2m_probe._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1326, i32 3}
!48 = !{ptr @vim2m_probe._entry.7, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @vim2m_probe._entry_ptr.9, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1335, i32 30}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1344, i32 3}
!54 = !{ptr @vim2m_probe._entry.11, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @vim2m_probe._entry_ptr.13, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1352, i32 3}
!58 = !{ptr @vim2m_probe._entry.14, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @vim2m_probe._entry_ptr.16, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1358, i32 3}
!62 = !{ptr @vim2m_probe._entry.17, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @vim2m_probe._entry_ptr.19, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @vim2m_videodev, !65, !"vim2m_videodev", i1 false, i1 false}
!65 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1275, i32 34}
!66 = !{ptr @vim2m_fops, !67, !"vim2m_fops", i1 false, i1 false}
!67 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1266, i32 42}
!68 = !{ptr @vim2m_open._key, !69, !"_key", i1 false, i1 false}
!69 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1183, i32 2}
!70 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @vim2m_open.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1211, i32 2}
!73 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @vim2m_open.__key.22, !75, !"__key", i1 false, i1 false}
!75 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1212, i32 2}
!76 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @vim2m_open.__key.24, !75, !"__key", i1 false, i1 false}
!78 = !{ptr @.str.25, !75, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1226, i32 2}
!81 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @vim2m_open._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @vim2m_open._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @vim2m_ctrl_ops, !85, !"vim2m_ctrl_ops", i1 false, i1 false}
!85 = !{!"../drivers/media/test-drivers/vim2m.c", i32 939, i32 35}
!86 = !{ptr @.str.28, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/test-drivers/vim2m.c", i32 932, i32 3}
!88 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @vim2m_s_ctrl._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @vim2m_s_ctrl._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1143, i32 10}
!93 = !{ptr @vim2m_ctrl_trans_time_msec, !94, !"vim2m_ctrl_trans_time_msec", i1 false, i1 false}
!94 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1140, i32 32}
!95 = !{ptr @.str.31, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1153, i32 10}
!97 = !{ptr @vim2m_ctrl_trans_num_bufs, !98, !"vim2m_ctrl_trans_num_bufs", i1 false, i1 false}
!98 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1150, i32 38}
!99 = !{ptr @formats, !100, !"formats", i1 false, i1 false}
!100 = !{!"../drivers/media/test-drivers/vim2m.c", i32 91, i32 25}
!101 = !{ptr @vim2m_qops, !102, !"vim2m_qops", i1 false, i1 false}
!102 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1096, i32 29}
!103 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1002, i32 2}
!105 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @vim2m_queue_setup._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @vim2m_queue_setup._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.34, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/test-drivers/vim2m.c", i32 252, i32 10}
!110 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/test-drivers/vim2m.c", i32 254, i32 10}
!112 = !{ptr @.str.36, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/test-drivers/vim2m.c", i32 256, i32 10}
!114 = !{ptr @.str.37, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1016, i32 3}
!116 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @vim2m_buf_out_validate._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @vim2m_buf_out_validate._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.39, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1028, i32 2}
!121 = !{ptr @.str.40, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @vim2m_buf_prepare._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @vim2m_buf_prepare._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.42, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1034, i32 3}
!126 = !{ptr @vim2m_buf_prepare._entry.41, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @vim2m_buf_prepare._entry_ptr.43, !125, !"_entry_ptr", i1 false, i1 false}
!128 = distinct !{null, !129, !"__already_done", i1 false, i1 false}
!129 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!130 = !{ptr @.str.44, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.45, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/test-drivers/vim2m.c", i32 634, i32 3}
!133 = !{ptr @.str.46, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @device_work._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @device_work._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.47, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/test-drivers/vim2m.c", i32 467, i32 3}
!138 = !{ptr @.str.48, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @device_process._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @device_process._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.49, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1239, i32 2}
!143 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @vim2m_release._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @vim2m_release._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @vim2m_ioctl_ops, !147, !"vim2m_ioctl_ops", i1 false, i1 false}
!147 = !{!"../drivers/media/test-drivers/vim2m.c", i32 943, i32 36}
!148 = !{ptr @.str.51, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/test-drivers/vim2m.c", i32 651, i32 4}
!150 = !{ptr @.str.52, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/test-drivers/vim2m.c", i32 847, i32 3}
!152 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @vidioc_s_fmt._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @vidioc_s_fmt._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.55, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/test-drivers/vim2m.c", i32 857, i32 2}
!157 = !{ptr @vidioc_s_fmt._entry.54, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @vidioc_s_fmt._entry_ptr.56, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.57, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/test-drivers/vim2m.c", i32 797, i32 3}
!161 = !{ptr @.str.58, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @vidioc_try_fmt_vid_cap._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @vidioc_try_fmt_vid_cap._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.59, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/test-drivers/vim2m.c", i32 822, i32 3}
!166 = !{ptr @vidioc_try_fmt_vid_out._entry, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @vidioc_try_fmt_vid_out._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @m2m_ops, !169, !"m2m_ops", i1 false, i1 false}
!169 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1285, i32 34}
!170 = !{ptr @.str.60, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/test-drivers/vim2m.c", i32 571, i32 3}
!172 = !{ptr @.str.61, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @job_ready._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @job_ready._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @m2m_media_ops, !176, !"m2m_media_ops", i1 false, i1 false}
!176 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1291, i32 38}
!177 = !{ptr @.str.62, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/test-drivers/vim2m.c", i32 1386, i32 2}
!179 = !{ptr @.str.63, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @vim2m_remove._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @vim2m_remove._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @vim2m_pdev, !183, !"vim2m_pdev", i1 false, i1 false}
!183 = !{!"../drivers/media/test-drivers/vim2m.c", i32 79, i32 31}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!193 = !{i64 2148372225, i64 2148372251, i64 2148372280, i64 2148372314, i64 2148372345, i64 2148372368}
!194 = !{i64 2148374690, i64 2148374716, i64 2148374745, i64 2148374779, i64 2148374810, i64 2148374833}
!195 = !{!"branch_weights", i32 2000, i32 1}
