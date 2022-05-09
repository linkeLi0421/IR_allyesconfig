; ModuleID = '/llk/IR_all_yes/drivers/media/platform/sti/hva/hva-v4l2.c_pt.bc'
source_filename = "../drivers/media/platform/sti/hva/hva-v4l2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hva_enc = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.hva_dev = type { %struct.v4l2_device, ptr, ptr, ptr, %struct.mutex, ptr, [16 x ptr], i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, %struct.mutex, %struct.completion, i32, [10 x ptr], i32, [10 x i32], i32, [10 x i32], i32, i32, i32, i32, i32, i32, %struct.hva_dev_dbg }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.hva_dev_dbg = type { ptr, %struct.hva_ctx }
%struct.hva_ctx = type { ptr, %struct.v4l2_fh, %struct.v4l2_ctrl_handler, %struct.hva_controls, i8, i8, [100 x i8], %struct.work_struct, %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hva_streaminfo, %struct.hva_frameinfo, ptr, ptr, i8, i32, i32, i32, i32, %struct.hva_ctx_dbg }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.hva_controls = type { %struct.v4l2_fract, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i8, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.hva_streaminfo = type { i32, i32, i32, [32 x i8], [32 x i8] }
%struct.hva_frameinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.hva_ctx_dbg = type { ptr, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.hva_stream = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, ptr, i8, i32, i32 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.hva_frame = type { %struct.vb2_v4l2_buffer, %struct.list_head, %struct.hva_frameinfo, i32, ptr, i8 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_buffer = type { i32, i32, i32, i32, i32, %struct.__kernel_v4l2_timeval, %struct.v4l2_timecode, i32, i32, %union.anon.99, i32, i32, %union.anon.101 }
%struct.__kernel_v4l2_timeval = type { i64, i64 }
%union.anon.99 = type { i32 }
%union.anon.101 = type { i32 }
%struct.v4l2_streamparm = type { i32, %union.anon.112 }
%union.anon.112 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }

@__initcall__kmod_st_hva__328_1472_hva_driver_init6 = internal global ptr @hva_driver_init, section ".initcall6.init", align 4
@hva_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hva_probe, ptr @hva_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hva_match_types, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hva_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hva_driver_exit = internal global ptr @hva_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file329 = internal constant [50 x i8] c"st_hva.file=drivers/media/platform/sti/hva/st-hva\00", section ".modinfo", align 1
@__UNIQUE_ID_license330 = internal constant [19 x i8] c"st_hva.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author331 = internal constant [53 x i8] c"st_hva.author=Yannick Fertre <yannick.fertre@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description332 = internal constant [68 x i8] c"st_hva.description=STMicroelectronics HVA video encoder V4L2 driver\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st-hva\00", [25 x i8] zeroinitializer }, align 32
@hva_match_types = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,st-hva\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hva_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hva_hw_runtime_suspend, ptr @hva_hw_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@hva_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&hva->lock\00", [21 x i8] zeroinitializer }, align 32
@hva_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1386, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s %s failed to register V4L2 device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hva_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/platform/sti/hva/hva-v4l2.c\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hva_probe._entry_ptr = internal global ptr @hva_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[---:----]\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@hva_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 1397, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s %s failed to allocate work queue\0A\00", [59 x i8] zeroinitializer }, align 32
@hva_probe._entry_ptr.11 = internal global ptr @hva_probe._entry.9, section ".printk_index", align 4
@hva_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1408, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s %s registered as /dev/video%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@hva_probe._entry_ptr.15 = internal global ptr @hva_probe._entry.12, section ".printk_index", align 4
@register_encoders.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st_hva\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"register_encoders\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s failed to register %s encoder (%d maximum reached)\0A\00", [41 x i8] zeroinitializer }, align 32
@hva_encoders = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @nv12h264enc, ptr @nv21h264enc], [24 x i8] zeroinitializer }, align 32
@register_encoders._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 185, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s %s encoder registered\0A\00", [38 x i8] zeroinitializer }, align 32
@register_encoders._entry_ptr = internal global ptr @register_encoders._entry, section ".printk_index", align 4
@nv12h264enc = external dso_local constant %struct.hva_enc, align 4
@nv21h264enc = external dso_local constant %struct.hva_enc, align 4
@hva_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @hva_device_run, ptr @hva_job_ready, ptr @hva_job_abort }, [20 x i8] zeroinitializer }, align 32
@hva_register_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.4, i32 1296, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s failed to initialize v4l2-m2m device\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hva_register_device\00", [44 x i8] zeroinitializer }, align 32
@hva_register_device._entry_ptr = internal global ptr @hva_register_device._entry, section ".printk_index", align 4
@hva_register_device._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.4, i32 1304, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s failed to allocate video device\0A\00", [60 x i8] zeroinitializer }, align 32
@hva_register_device._entry_ptr.24 = internal global ptr @hva_register_device._entry.22, section ".printk_index", align 4
@hva_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @hva_open, ptr @hva_release }, [60 x i8] zeroinitializer }, align 32
@hva_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @hva_querycap, ptr @hva_enum_fmt_stream, ptr null, ptr @hva_enum_fmt_frame, ptr null, ptr null, ptr null, ptr null, ptr @hva_g_fmt_stream, ptr null, ptr @hva_g_fmt_frame, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hva_s_fmt_stream, ptr null, ptr @hva_s_fmt_frame, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hva_try_fmt_stream, ptr null, ptr @hva_try_fmt_frame, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @hva_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hva_g_parm, ptr @hva_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s%lx\00", [26 x i8] zeroinitializer }, align 32
@hva_register_device._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.21, ptr @.str.4, i32 1322, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s failed to register video device\0A\00", [60 x i8] zeroinitializer }, align 32
@hva_register_device._entry_ptr.28 = internal global ptr @hva_register_device._entry.26, section ".printk_index", align 4
@hva_job_ready.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 -36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hva_job_ready\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s job not ready: no frame buffers\0A\00", [60 x i8] zeroinitializer }, align 32
@hva_job_ready.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.29, ptr @.str.4, ptr @.str.31, i8 0, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s job not ready: no stream buffers\0A\00", [59 x i8] zeroinitializer }, align 32
@hva_job_ready.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.29, ptr @.str.4, ptr @.str.32, i8 0, i8 -34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s job not ready: aborting\0A\00", [36 x i8] zeroinitializer }, align 32
@hva_job_abort.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.33, ptr @.str.4, ptr @.str.34, i8 0, i8 -39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hva_job_abort\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s aborting job\0A\00", [47 x i8] zeroinitializer }, align 32
@hva_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&ctx->run_work)\00", [62 x i8] zeroinitializer }, align 32
@hva_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 1185, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s [x:x] failed to setup controls\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hva_open\00", [23 x i8] zeroinitializer }, align 32
@hva_open._entry_ptr = internal global ptr @hva_open._entry, section ".printk_index", align 4
@hva_open.__key.38 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctx->lock\00", [21 x i8] zeroinitializer }, align 32
@hva_open._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.37, ptr @.str.4, i32 1198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s failed to initialize m2m context (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@hva_open._entry_ptr.42 = internal global ptr @hva_open._entry.40, section ".printk_index", align 4
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[%3d:----]\00", [21 x i8] zeroinitializer }, align 32
@hva_open._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.4, i32 1217, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s encoder instance created\0A\00", [35 x i8] zeroinitializer }, align 32
@hva_open._entry_ptr.46 = internal global ptr @hva_open._entry.44, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@hva_ctrls_setup._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"hva_v4l2:700:(&ctx->ctrl_handler)->_lock\00", [55 x i8] zeroinitializer }, align 32
@hva_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @hva_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@hva_ctrls_setup.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.49, ptr @.str.4, ptr @.str.50, i8 0, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hva_ctrls_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s controls setup failed (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@hva_s_ctrl.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.51, ptr @.str.4, ptr @.str.52, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hva_s_ctrl\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s S_CTRL: id = %d, val = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s profile\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"level %s\00", [23 x i8] zeroinitializer }, align 32
@hva_s_ctrl.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.51, ptr @.str.4, ptr @.str.55, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s S_CTRL: invalid control (id = %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@hva_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @hva_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @hva_buf_prepare, ptr null, ptr null, ptr @hva_start_streaming, ptr @hva_stop_streaming, ptr @hva_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@hva_queue_setup.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.56, ptr @.str.4, ptr @.str.57, i8 0, i8 -27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hva_queue_setup\00", [16 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s %s queue setup: num_buffers %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"frame\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"stream\00", [25 x i8] zeroinitializer }, align 32
@hva_buf_prepare.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.60, ptr @.str.4, ptr @.str.61, i8 0, i8 -20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hva_buf_prepare\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s frame[%d] prepare: %d field not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@hva_buf_prepare.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.60, ptr @.str.4, ptr @.str.62, i8 0, i8 -16, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s frame[%d] prepared; virt=%p, phy=%pad\0A\00", [54 x i8] zeroinitializer }, align 32
@hva_buf_prepare.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.60, ptr @.str.4, ptr @.str.63, i8 0, i8 -12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s stream[%d] prepared; virt=%p, phy=%pad\0A\00", [53 x i8] zeroinitializer }, align 32
@hva_start_streaming.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.64, ptr @.str.4, ptr @.str.65, i8 0, i8 -5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hva_start_streaming\00", [44 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s %s start streaming\0A\00", [41 x i8] zeroinitializer }, align 32
@hva_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.4, i32 1028, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s maximum instances reached\0A\00", [34 x i8] zeroinitializer }, align 32
@hva_start_streaming._entry_ptr = internal global ptr @hva_start_streaming._entry, section ".printk_index", align 4
@hva_open_encoder._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.4, i32 202, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s no encoder found matching %4.4s => %4.4s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hva_open_encoder\00", [47 x i8] zeroinitializer }, align 32
@hva_open_encoder._entry_ptr = internal global ptr @hva_open_encoder._entry, section ".printk_index", align 4
@hva_open_encoder.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.68, ptr @.str.4, ptr @.str.69, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s one encoder matching %4.4s => %4.4s\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"[%3d:%4.4s]\00", [20 x i8] zeroinitializer }, align 32
@hva_open_encoder._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.68, ptr @.str.4, i32 217, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s failed to open encoder instance (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@hva_open_encoder._entry_ptr.73 = internal global ptr @hva_open_encoder._entry.71, section ".printk_index", align 4
@hva_open_encoder.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.68, ptr @.str.4, ptr @.str.74, i8 0, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s %s encoder opened\0A\00", [42 x i8] zeroinitializer }, align 32
@hva_stop_streaming.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.75, ptr @.str.4, ptr @.str.76, i8 1, i8 12, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hva_stop_streaming\00", [45 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s %s stop streaming\0A\00", [42 x i8] zeroinitializer }, align 32
@hva_stop_streaming.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.75, ptr @.str.4, ptr @.str.77, i8 1, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s %s out=%d cap=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@hva_stop_streaming.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.75, ptr @.str.4, ptr @.str.78, i8 1, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s %s encoder closed\0A\00", [42 x i8] zeroinitializer }, align 32
@hva_release.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.79, ptr @.str.4, ptr @.str.78, i8 1, i8 53, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hva_release\00", [20 x i8] zeroinitializer }, align 32
@hva_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.79, ptr @.str.4, i32 1262, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s encoder instance released\0A\00", [34 x i8] zeroinitializer }, align 32
@hva_release._entry_ptr = internal global ptr @hva_release._entry, section ".printk_index", align 4
@hva_dbg_summary.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.81, ptr @.str.4, ptr @.str.82, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hva_dbg_summary\00", [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"%s %4.4s %dx%d > %4.4s %dx%d %s %s: %d frames encoded, %d system errors, %d encoding errors, %d frame errors\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"platform:%s\00", [20 x i8] zeroinitializer }, align 32
@hva_s_fmt_stream.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.84, ptr @.str.4, ptr @.str.85, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hva_s_fmt_stream\00", [47 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s V4L2 S_FMT (CAPTURE): unsupported format %.4s\0A\00", [46 x i8] zeroinitializer }, align 32
@hva_s_fmt_stream.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.84, ptr @.str.4, ptr @.str.86, i8 0, i8 116, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s V4L2 S_FMT (CAPTURE): queue busy\0A\00", [59 x i8] zeroinitializer }, align 32
@hva_s_fmt_frame.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.87, ptr @.str.4, ptr @.str.88, i8 0, i8 122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hva_s_fmt_frame\00", [16 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s V4L2 S_FMT (OUTPUT): unsupported format %.4s\0A\00", [47 x i8] zeroinitializer }, align 32
@hva_s_fmt_frame.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.87, ptr @.str.4, ptr @.str.89, i8 0, i8 124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s V4L2 S_FMT (OUTPUT): queue busy\0A\00", [60 x i8] zeroinitializer }, align 32
@hva_try_fmt_stream.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.90, ptr @.str.4, ptr @.str.91, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"hva_try_fmt_stream\00", [45 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s V4L2 TRY_FMT (CAPTURE): unsupported format %.4s\0A\00", [44 x i8] zeroinitializer }, align 32
@hva_try_fmt_stream.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.90, ptr @.str.4, ptr @.str.92, i8 0, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"%s V4L2 TRY_FMT (CAPTURE): resolution updated %dx%d -> %dx%d to fit frame resolution\0A\00", [42 x i8] zeroinitializer }, align 32
@hva_try_fmt_stream.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.90, ptr @.str.4, ptr @.str.93, i8 0, i8 95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [87 x i8], [41 x i8] } { [87 x i8] c"%s V4L2 TRY_FMT (CAPTURE): resolution updated %dx%d -> %dx%d to fit min/max/alignment\0A\00", [41 x i8] zeroinitializer }, align 32
@hva_try_fmt_frame.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.94, ptr @.str.4, ptr @.str.95, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hva_try_fmt_frame\00", [46 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s V4L2 TRY_FMT (OUTPUT): unsupported format %.4s\0A\00", [45 x i8] zeroinitializer }, align 32
@hva_try_fmt_frame.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.94, ptr @.str.4, ptr @.str.96, i8 0, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"%s V4L2 TRY_FMT (OUTPUT): resolution updated %dx%d -> %dx%d to fit min/max/alignment\0A\00", [42 x i8] zeroinitializer }, align 32
@hva_qbuf.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.97, ptr @.str.4, ptr @.str.98, i8 0, i8 -113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hva_qbuf\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s buffer index %d out of range (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@hva_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.4, i32 1442, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s %s removed\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hva_remove\00", [21 x i8] zeroinitializer }, align 32
@hva_remove._entry_ptr = internal global ptr @hva_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 10029513, i64 10029515, i64 10029518, i64 10029519, i64 10029665, i64 10029666, i64 10029667, i64 10029668, i64 10029669, i64 10029671, i64 10029675, i64 10029678, i64 10029679, i64 10029680, i64 10029682]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.102 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.103 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.104 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 825382478, i64 842094158]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 825382478, i64 842094158]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 825382478, i64 842094158]
@___asan_gen_.108 = private unnamed_addr constant [11 x i8] c"hva_driver\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1462, i32 31 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1466, i32 12 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"hva_match_types\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1453, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant [11 x i8] c"hva_pm_ops\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1448, i32 32 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1369, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1385, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1394, i32 20 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1396, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1407, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 176, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant [13 x i8] c"hva_encoders\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 42, i32 30 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 184, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [12 x i8] c"hva_m2m_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 899, i32 34 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1295, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1303, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant [9 x i8] c"hva_fops\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1270, i32 42 }
@___asan_gen_.204 = private unnamed_addr constant [14 x i8] c"hva_ioctl_ops\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 588, i32 36 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1316, i32 43 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1321, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 879, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 885, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 891, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 868, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1177, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1184, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1191, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1197, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1206, i32 41 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1217, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1163, i32 7 }
@___asan_gen_.273 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 700, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [13 x i8] c"hva_ctrl_ops\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 689, i32 35 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 786, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 622, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 642, i32 5 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 649, i32 5 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 680, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant [9 x i8] c"hva_qops\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1114, i32 29 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 917, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 945, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 959, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 975, i32 4 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1004, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1028, i32 3 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 201, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 206, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 210, i32 41 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 216, i32 3 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 221, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1073, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1092, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1101, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1239, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1262, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 237, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 262, i32 49 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 459, i32 3 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 466, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 490, i32 3 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 497, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 348, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 364, i32 4 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 379, i32 4 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 411, i32 3 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 429, i32 3 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 574, i32 4 }
@___asan_gen_.441 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.447 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.448 = private constant [45 x i8] c"../drivers/media/platform/sti/hva/hva-v4l2.c\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.448, i32 1442, i32 2 }
@llvm.compiler.used = appending global [136 x ptr] [ptr @__UNIQUE_ID_author331, ptr @__UNIQUE_ID_description332, ptr @__UNIQUE_ID_file329, ptr @__UNIQUE_ID_license330, ptr @__exitcall_hva_driver_exit, ptr @__initcall__kmod_st_hva__328_1472_hva_driver_init6, ptr @hva_driver_exit, ptr @hva_open._entry, ptr @hva_open._entry.40, ptr @hva_open._entry.44, ptr @hva_open._entry_ptr, ptr @hva_open._entry_ptr.42, ptr @hva_open._entry_ptr.46, ptr @hva_open_encoder._entry, ptr @hva_open_encoder._entry.71, ptr @hva_open_encoder._entry_ptr, ptr @hva_open_encoder._entry_ptr.73, ptr @hva_probe._entry, ptr @hva_probe._entry.12, ptr @hva_probe._entry.9, ptr @hva_probe._entry_ptr, ptr @hva_probe._entry_ptr.11, ptr @hva_probe._entry_ptr.15, ptr @hva_register_device._entry, ptr @hva_register_device._entry.22, ptr @hva_register_device._entry.26, ptr @hva_register_device._entry_ptr, ptr @hva_register_device._entry_ptr.24, ptr @hva_register_device._entry_ptr.28, ptr @hva_release._entry, ptr @hva_release._entry_ptr, ptr @hva_remove._entry, ptr @hva_remove._entry_ptr, ptr @hva_start_streaming._entry, ptr @hva_start_streaming._entry_ptr, ptr @register_encoders._entry, ptr @register_encoders._entry_ptr, ptr @hva_driver, ptr @.str, ptr @hva_match_types, ptr @hva_pm_ops, ptr @hva_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @hva_encoders, ptr @.str.19, ptr @hva_m2m_ops, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @hva_fops, ptr @hva_ioctl_ops, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @hva_open.__key, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @hva_open.__key.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @hva_ctrls_setup._key, ptr @.str.48, ptr @hva_ctrl_ops, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @hva_qops, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100], section "llvm.metadata"
@0 = internal global [114 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_match_types to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_encoders to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_encoders._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_register_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_register_device._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_register_device._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_open.__key.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_open._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_open._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_ctrls_setup._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_open_encoder._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_open_encoder._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 87, i32 128, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hva_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hva_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hva_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @hva_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1592, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %coherent_dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 19
  %dma_mask.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 18
  %0 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %coherent_dma_mask.i, ptr %dma_mask.i, align 8
  %call.i.i = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call1.i.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #8
  %dev6 = getelementptr inbounds %struct.hva_dev, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev6, align 8
  %pdev7 = getelementptr inbounds %struct.hva_dev, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %pdev7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %pdev7, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.hva_dev, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @hva_probe.__key) #8
  %call8 = tail call i32 @hva_hw_probe(ptr noundef %pdev, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  tail call fastcc void @register_encoders(ptr noundef nonnull %call.i)
  %nb_of_encoders.i = getelementptr inbounds %struct.hva_dev, ptr %call.i, i32 0, i32 20
  %4 = ptrtoint ptr %nb_of_encoders.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nb_of_encoders.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp25.not.i = icmp eq i32 %5, 0
  br i1 %cmp25.not.i, label %if.end11.register_formats.exit_crit_edge, label %for.body.lr.ph.i

if.end11.register_formats.exit_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %register_formats.exit

for.body.lr.ph.i:                                 ; preds = %if.end11
  %pixelformats.i = getelementptr inbounds %struct.hva_dev, ptr %call.i, i32 0, i32 21
  %nb_of_pixelformats.i = getelementptr inbounds %struct.hva_dev, ptr %call.i, i32 0, i32 22
  %streamformats.i = getelementptr inbounds %struct.hva_dev, ptr %call.i, i32 0, i32 23
  %nb_of_streamformats.i = getelementptr inbounds %struct.hva_dev, ptr %call.i, i32 0, i32 24
  br label %for.body.i

for.body.i:                                       ; preds = %register_format.exit24.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %register_format.exit24.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hva_dev, ptr %call.i, i32 0, i32 19, i32 %i.026.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.hva_enc, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat.i, align 4
  %10 = ptrtoint ptr %nb_of_pixelformats.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nb_of_pixelformats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp12.not.i.i = icmp eq i32 %11, 0
  br i1 %cmp12.not.i.i, label %for.body.i.if.then2.critedge.i.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.if.then2.critedge.i.i_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2.critedge.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %11
  br i1 %exitcond.not.i.i, label %for.cond.i.i.if.then2.critedge.i.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.cond.i.i.if.then2.critedge.i.i_crit_edge:     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2.critedge.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %i.013.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %pixelformats.i, i32 %i.013.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %9)
  %cmp1.i.i = icmp eq i32 %13, %9
  br i1 %cmp1.i.i, label %for.body.i.i.register_format.exit.i_crit_edge, label %for.cond.i.i

for.body.i.i.register_format.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %register_format.exit.i

if.then2.critedge.i.i:                            ; preds = %for.cond.i.i.if.then2.critedge.i.i_crit_edge, %for.body.i.if.then2.critedge.i.i_crit_edge
  %inc3.i.i = add i32 %11, 1
  %14 = ptrtoint ptr %nb_of_pixelformats.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc3.i.i, ptr %nb_of_pixelformats.i, align 4
  %arrayidx4.i.i = getelementptr i32, ptr %pixelformats.i, i32 %11
  %15 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %9, ptr %arrayidx4.i.i, align 4
  br label %register_format.exit.i

register_format.exit.i:                           ; preds = %if.then2.critedge.i.i, %for.body.i.i.register_format.exit.i_crit_edge
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %streamformat.i = getelementptr inbounds %struct.hva_enc, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %streamformat.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %streamformat.i, align 4
  %20 = ptrtoint ptr %nb_of_streamformats.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nb_of_streamformats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp12.not.i13.i = icmp eq i32 %21, 0
  br i1 %cmp12.not.i13.i, label %register_format.exit.i.if.then2.critedge.i23.i_crit_edge, label %register_format.exit.i.for.body.i20.i_crit_edge

register_format.exit.i.for.body.i20.i_crit_edge:  ; preds = %register_format.exit.i
  br label %for.body.i20.i

register_format.exit.i.if.then2.critedge.i23.i_crit_edge: ; preds = %register_format.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2.critedge.i23.i

for.cond.i16.i:                                   ; preds = %for.body.i20.i
  %inc.i14.i = add nuw i32 %i.013.i17.i, 1
  %exitcond.not.i15.i = icmp eq i32 %inc.i14.i, %21
  br i1 %exitcond.not.i15.i, label %for.cond.i16.i.if.then2.critedge.i23.i_crit_edge, label %for.cond.i16.i.for.body.i20.i_crit_edge

for.cond.i16.i.for.body.i20.i_crit_edge:          ; preds = %for.cond.i16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i20.i

for.cond.i16.i.if.then2.critedge.i23.i_crit_edge: ; preds = %for.cond.i16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then2.critedge.i23.i

for.body.i20.i:                                   ; preds = %for.cond.i16.i.for.body.i20.i_crit_edge, %register_format.exit.i.for.body.i20.i_crit_edge
  %i.013.i17.i = phi i32 [ %inc.i14.i, %for.cond.i16.i.for.body.i20.i_crit_edge ], [ 0, %register_format.exit.i.for.body.i20.i_crit_edge ]
  %arrayidx.i18.i = getelementptr i32, ptr %streamformats.i, i32 %i.013.i17.i
  %22 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i18.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %19)
  %cmp1.i19.i = icmp eq i32 %23, %19
  br i1 %cmp1.i19.i, label %for.body.i20.i.register_format.exit24.i_crit_edge, label %for.cond.i16.i

for.body.i20.i.register_format.exit24.i_crit_edge: ; preds = %for.body.i20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %register_format.exit24.i

if.then2.critedge.i23.i:                          ; preds = %for.cond.i16.i.if.then2.critedge.i23.i_crit_edge, %register_format.exit.i.if.then2.critedge.i23.i_crit_edge
  %inc3.i21.i = add i32 %21, 1
  %24 = ptrtoint ptr %nb_of_streamformats.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %inc3.i21.i, ptr %nb_of_streamformats.i, align 4
  %arrayidx4.i22.i = getelementptr i32, ptr %streamformats.i, i32 %21
  %25 = ptrtoint ptr %arrayidx4.i22.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %19, ptr %arrayidx4.i22.i, align 4
  br label %register_format.exit24.i

register_format.exit24.i:                         ; preds = %if.then2.critedge.i23.i, %for.body.i20.i.register_format.exit24.i_crit_edge
  %inc.i = add nuw i32 %i.026.i, 1
  %26 = ptrtoint ptr %nb_of_encoders.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nb_of_encoders.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %27
  br i1 %cmp.i, label %register_format.exit24.i.for.body.i_crit_edge, label %register_format.exit24.i.register_formats.exit_crit_edge

register_format.exit24.i.register_formats.exit_crit_edge: ; preds = %register_format.exit24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %register_formats.exit

register_format.exit24.i.for.body.i_crit_edge:    ; preds = %register_format.exit24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

register_formats.exit:                            ; preds = %register_format.exit24.i.register_formats.exit_crit_edge, %if.end11.register_formats.exit_crit_edge
  %call12 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end18, label %do.end17

do.end17:                                         ; preds = %register_formats.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str) #11
  br label %err_hw

if.end18:                                         ; preds = %register_formats.exit
  tail call void @hva_debugfs_create(ptr noundef nonnull %call.i) #8
  %call19 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.8, i32 noundef 262152, i32 noundef 1, ptr noundef nonnull @.str) #8
  %work_queue = getelementptr inbounds %struct.hva_dev, ptr %call.i, i32 0, i32 15
  %28 = ptrtoint ptr %work_queue to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call19, ptr %work_queue, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %do.end25, label %if.end.i

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str) #11
  br label %err_v4l2

if.end.i:                                         ; preds = %if.end18
  %29 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev6, align 8
  %call.i69 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @hva_m2m_ops) #8
  %m2m_dev.i = getelementptr inbounds %struct.hva_dev, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i69, ptr %m2m_dev.i, align 8
  %cmp.i.i70 = icmp ugt ptr %call.i69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i70, label %hva_register_device.exit, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call ptr @video_device_alloc() #8
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %do.end13.i, label %if.end14.i

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.7) #11
  br label %hva_register_device.exit.thread74

if.end14.i:                                       ; preds = %if.end7.i
  %fops.i = getelementptr inbounds %struct.video_device, ptr %call8.i, i32 0, i32 3
  %32 = ptrtoint ptr %fops.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @hva_fops, ptr %fops.i, align 4
  %ioctl_ops.i = getelementptr inbounds %struct.video_device, ptr %call8.i, i32 0, i32 24
  %33 = ptrtoint ptr %ioctl_ops.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @hva_ioctl_ops, ptr %ioctl_ops.i, align 4
  %release.i = getelementptr inbounds %struct.video_device, ptr %call8.i, i32 0, i32 23
  %34 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @video_device_release, ptr %release.i, align 8
  %lock15.i = getelementptr inbounds %struct.video_device, ptr %call8.i, i32 0, i32 26
  %35 = ptrtoint ptr %lock15.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %lock, ptr %lock15.i, align 8
  %vfl_dir.i = getelementptr inbounds %struct.video_device, ptr %call8.i, i32 0, i32 14
  %36 = ptrtoint ptr %vfl_dir.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %vfl_dir.i, align 4
  %device_caps.i = getelementptr inbounds %struct.video_device, ptr %call8.i, i32 0, i32 4
  %37 = ptrtoint ptr %device_caps.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 67141632, ptr %device_caps.i, align 8
  %v4l2_dev16.i = getelementptr inbounds %struct.video_device, ptr %call8.i, i32 0, i32 7
  %38 = ptrtoint ptr %v4l2_dev16.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %v4l2_dev16.i, align 4
  %name.i = getelementptr inbounds %struct.video_device, ptr %call8.i, i32 0, i32 12
  %ip_version.i = getelementptr inbounds %struct.hva_dev, ptr %call.i, i32 0, i32 18
  %39 = ptrtoint ptr %ip_version.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ip_version.i, align 4
  %call17.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str, i32 noundef %40) #8
  %41 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fops.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %call.i.i71 = tail call i32 @__video_register_device(ptr noundef nonnull %call8.i, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %44) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71)
  %tobool19.not.i = icmp eq i32 %call.i.i71, 0
  br i1 %tobool19.not.i, label %hva_register_device.exit.thread, label %do.end23.i

do.end23.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.7) #11
  tail call void @video_device_release(ptr noundef nonnull %call8.i) #8
  br label %hva_register_device.exit.thread74

hva_register_device.exit.thread:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %vdev25.i = getelementptr inbounds %struct.hva_dev, ptr %call.i, i32 0, i32 1
  %45 = ptrtoint ptr %vdev25.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call8.i, ptr %vdev25.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call8.i, i32 0, i32 5, i32 8
  %46 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i, ptr %driver_data.i.i.i, align 4
  br label %do.end33

hva_register_device.exit.thread74:                ; preds = %do.end23.i, %do.end13.i
  %ret.0.i = phi i32 [ %call.i.i71, %do.end23.i ], [ -12, %do.end13.i ]
  %47 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %m2m_dev.i, align 8
  tail call void @v4l2_m2m_release(ptr noundef %48) #8
  br label %err_work_queue

hva_register_device.exit:                         ; preds = %if.end.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.7) #11
  %49 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %m2m_dev.i, align 8
  %51 = ptrtoint ptr %50 to i32
  %tobool28.not = icmp eq ptr %50, null
  br i1 %tobool28.not, label %hva_register_device.exit.do.end33_crit_edge, label %hva_register_device.exit.err_work_queue_crit_edge

hva_register_device.exit.err_work_queue_crit_edge: ; preds = %hva_register_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_work_queue

hva_register_device.exit.do.end33_crit_edge:      ; preds = %hva_register_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end33

do.end33:                                         ; preds = %hva_register_device.exit.do.end33_crit_edge, %hva_register_device.exit.thread
  %vdev = getelementptr inbounds %struct.hva_dev, ptr %call.i, i32 0, i32 1
  %52 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vdev, align 8
  %num = getelementptr inbounds %struct.video_device, ptr %53, i32 0, i32 16
  %54 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %num, align 4
  %conv = zext i16 %55 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str, i32 noundef %conv) #11
  br label %cleanup

err_work_queue:                                   ; preds = %hva_register_device.exit.err_work_queue_crit_edge, %hva_register_device.exit.thread74
  %retval.0.i77 = phi i32 [ %ret.0.i, %hva_register_device.exit.thread74 ], [ %51, %hva_register_device.exit.err_work_queue_crit_edge ]
  %56 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %work_queue, align 4
  tail call void @destroy_workqueue(ptr noundef %57) #8
  br label %err_v4l2

err_v4l2:                                         ; preds = %err_work_queue, %do.end25
  %ret.0 = phi i32 [ %retval.0.i77, %err_work_queue ], [ -12, %do.end25 ]
  tail call void @hva_debugfs_remove(ptr noundef nonnull %call.i) #8
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #8
  br label %err_hw

err_hw:                                           ; preds = %err_v4l2, %do.end17
  %ret.1 = phi i32 [ %call12, %do.end17 ], [ %ret.0, %err_v4l2 ]
  tail call void @hva_hw_remove(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_hw, %do.end33, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end33 ], [ %call8, %if.end5.cleanup_crit_edge ], [ %ret.1, %err_hw ], [ -12, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.hva_unregister_device.exit_crit_edge, label %if.end.i

entry.hva_unregister_device.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %hva_unregister_device.exit

if.end.i:                                         ; preds = %entry
  %m2m_dev.i = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %m2m_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_dev.i, align 8
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_m2m_release(ptr noundef nonnull %5) #8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %vdev.i = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdev.i, align 8
  tail call void @video_unregister_device(ptr noundef %7) #8
  br label %hva_unregister_device.exit

hva_unregister_device.exit:                       ; preds = %if.end4.i, %entry.hva_unregister_device.exit_crit_edge
  %work_queue = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %work_queue, align 4
  tail call void @destroy_workqueue(ptr noundef %9) #8
  tail call void @hva_hw_remove(ptr noundef %1) #8
  tail call void @hva_debugfs_remove(ptr noundef %1) #8
  tail call void @v4l2_device_unregister(ptr noundef %1) #8
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.7, ptr noundef %11) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hva_hw_probe(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @register_encoders(ptr nocapture noundef %hva) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %nb_of_encoders = getelementptr inbounds %struct.hva_dev, ptr %hva, i32 0, i32 20
  %2 = ptrtoint ptr %nb_of_encoders to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nb_of_encoders, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %3)
  %cmp2 = icmp ugt i32 %3, 9
  br i1 %cmp2, label %entry.do.body_crit_edge, label %if.end6

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %if.end6.do.body_crit_edge, %entry.do.body_crit_edge
  %i.027.lcssa = phi i32 [ 0, %entry.do.body_crit_edge ], [ 1, %if.end6.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @register_encoders.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@register_encoders, %if.then5)) #8
          to label %cleanup [label %if.then5], !srcloc !246

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [2 x ptr], ptr @hva_encoders, i32 0, i32 %i.027.lcssa
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @register_encoders.__UNIQUE_ID_ddebug298, ptr noundef %1, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.7, ptr noundef %7, i32 noundef 10) #8
  br label %cleanup

if.end6:                                          ; preds = %entry
  %inc = add nuw nsw i32 %3, 1
  %8 = ptrtoint ptr %nb_of_encoders to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc, ptr %nb_of_encoders, align 8
  %arrayidx9 = getelementptr %struct.hva_dev, ptr %hva, i32 0, i32 19, i32 %3
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @nv12h264enc, ptr %arrayidx9, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nv12h264enc to i32))
  %10 = load ptr, ptr @nv12h264enc, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.7, ptr noundef %10) #11
  %11 = ptrtoint ptr %nb_of_encoders to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nb_of_encoders, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %12)
  %cmp2.1 = icmp ugt i32 %12, 9
  br i1 %cmp2.1, label %if.end6.do.body_crit_edge, label %if.end6.1

if.end6.do.body_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end6.1:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %inc.1 = add nuw nsw i32 %12, 1
  %13 = ptrtoint ptr %nb_of_encoders to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %inc.1, ptr %nb_of_encoders, align 8
  %arrayidx9.1 = getelementptr %struct.hva_dev, ptr %hva, i32 0, i32 19, i32 %12
  %14 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @nv21h264enc, ptr %arrayidx9.1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nv21h264enc to i32))
  %15 = load ptr, ptr @nv21h264enc, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.7, ptr noundef %15) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end6.1, %if.then5, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @hva_debugfs_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hva_debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hva_hw_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hva_device_run(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %work_queue = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %work_queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %work_queue, align 4
  %run_work = getelementptr inbounds %struct.hva_ctx, ptr %priv, i32 0, i32 7
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %run_work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_job_ready(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %m2m_ctx = getelementptr inbounds %struct.hva_ctx, ptr %priv, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %num_rdy.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 8, i32 3
  %6 = ptrtoint ptr %num_rdy.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_rdy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_job_ready.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_job_ready, %if.then6)) #8
          to label %cleanup [label %if.then6], !srcloc !246

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.hva_ctx, ptr %priv, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_job_ready.__UNIQUE_ID_ddebug316, ptr noundef %3, ptr noundef nonnull @.str.30, ptr noundef %name) #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  %num_rdy.i68 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %num_rdy.i68 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %num_rdy.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not = icmp eq i8 %9, 0
  br i1 %tobool11.not, label %do.body13, label %if.end31

do.body13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_job_ready.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_job_ready, %if.then25)) #8
          to label %cleanup [label %if.then25], !srcloc !246

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %name26 = getelementptr inbounds %struct.hva_ctx, ptr %priv, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_job_ready.__UNIQUE_ID_ddebug317, ptr noundef %3, ptr noundef nonnull @.str.31, ptr noundef %name26) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end7
  %aborting = getelementptr inbounds %struct.hva_ctx, ptr %priv, i32 0, i32 5
  %10 = ptrtoint ptr %aborting to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %aborting, align 1, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool32.not = icmp eq i8 %11, 0
  br i1 %tobool32.not, label %if.end31.cleanup_crit_edge, label %do.body34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_job_ready.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_job_ready, %if.then46)) #8
          to label %cleanup [label %if.then46], !srcloc !246

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %name47 = getelementptr inbounds %struct.hva_ctx, ptr %priv, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_job_ready.__UNIQUE_ID_ddebug318, ptr noundef %3, ptr noundef nonnull @.str.32, ptr noundef %name47) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %do.body34, %if.end31.cleanup_crit_edge, %if.then25, %do.body13, %if.then6, %do.body
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %if.then25 ], [ 0, %if.then46 ], [ 1, %if.end31.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %do.body13 ], [ 0, %do.body34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hva_job_abort(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_job_abort.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_job_abort, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.hva_ctx, ptr %priv, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_job_abort.__UNIQUE_ID_ddebug315, ptr noundef %3, ptr noundef nonnull @.str.34, ptr noundef %name) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %aborting = getelementptr inbounds %struct.hva_ctx, ptr %priv, i32 0, i32 5
  %4 = ptrtoint ptr %aborting to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %aborting, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 944) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %1, ptr %call7.i.i, align 8
  %run_work = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %run_work, i32 noundef 0) #8
  %6 = ptrtoint ptr %run_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %run_work, align 8
  %lockdep_map = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.35, ptr noundef nonnull @hva_open.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry6 = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry6, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hva_run_work, ptr %func, align 4
  %fh = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 1
  %call8 = tail call ptr @video_devdata(ptr noundef %file) #8
  tail call void @v4l2_fh_init(ptr noundef %fh, ptr noundef %call8) #8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %fh, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef %fh) #8
  %call11 = tail call fastcc i32 @hva_ctrls_setup(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end17, label %do.end16

do.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.7) #11
  %sys_errors = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 23
  %11 = ptrtoint ptr %sys_errors to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sys_errors, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %sys_errors, align 4
  br label %err_fh

if.end17:                                         ; preds = %if.end
  %ctrl_handler = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 2
  %ctrl_handler19 = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %ctrl_handler19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ctrl_handler, ptr %ctrl_handler19, align 8
  %lock = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.39, ptr noundef nonnull @hva_open.__key.38) #8
  %m2m_dev = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %m2m_dev, align 8
  %call23 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %15, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @hva_queue_init) #8
  %m2m_ctx = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 1, i32 10
  %16 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call23, ptr %m2m_ctx, align 8
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end37

if.then28:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call23 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.7, i32 noundef %17) #11
  %sys_errors35 = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 23
  %18 = ptrtoint ptr %sys_errors35 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sys_errors35, align 4
  %inc36 = add i32 %19, 1
  store i32 %inc36, ptr %sys_errors35, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #8
  br label %err_fh

if.end37:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %lock38 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock38, i32 noundef 0) #8
  %instance_id = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %instance_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %instance_id, align 8
  %inc39 = add i32 %21, 1
  store i32 %inc39, ptr %instance_id, align 8
  %name = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 6
  %call41 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 100, ptr noundef nonnull @.str.43, i32 noundef %inc39)
  tail call void @mutex_unlock(ptr noundef %lock38) #8
  %frameinfo1.i = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 18
  %streaminfo2.i = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 17
  %22 = ptrtoint ptr %frameinfo1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 842094158, ptr %frameinfo1.i, align 4
  %width.i = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 18, i32 1
  %23 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 32, ptr %width.i, align 8
  %height.i = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 18, i32 2
  %24 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 32, ptr %height.i, align 4
  %aligned_width.i = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 18, i32 3
  %25 = ptrtoint ptr %aligned_width.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 32, ptr %aligned_width.i, align 8
  %aligned_height.i = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 18, i32 4
  %26 = ptrtoint ptr %aligned_height.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 32, ptr %aligned_height.i, align 4
  %size.i = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 18, i32 5
  %27 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1536, ptr %size.i, align 8
  %28 = ptrtoint ptr %streaminfo2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 875967048, ptr %streaminfo2.i, align 8
  %width10.i = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 17, i32 1
  %29 = ptrtoint ptr %width10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 32, ptr %width10.i, align 4
  %height11.i = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 17, i32 2
  %30 = ptrtoint ptr %height11.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 32, ptr %height11.i, align 8
  %colorspace.i = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 13
  %31 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %colorspace.i, align 8
  %xfer_func.i = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 14
  %32 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %xfer_func.i, align 4
  %ycbcr_enc.i = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 15
  %33 = ptrtoint ptr %ycbcr_enc.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %ycbcr_enc.i, align 8
  %quantization.i = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 16
  %34 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %quantization.i, align 4
  %max_stream_size.i = getelementptr inbounds %struct.hva_ctx, ptr %call7.i.i, i32 0, i32 12
  %35 = ptrtoint ptr %max_stream_size.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 768, ptr %max_stream_size.i, align 4
  tail call void @hva_dbg_ctx_create(ptr noundef nonnull %call7.i.i) #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.45, ptr noundef %name) #11
  br label %cleanup

err_fh:                                           ; preds = %if.then28, %do.end16
  %ret.0 = phi i32 [ %call11, %do.end16 ], [ %17, %if.then28 ]
  tail call void @v4l2_fh_del(ptr noundef %fh) #8
  tail call void @v4l2_fh_exit(ptr noundef %fh) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_fh, %if.end37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ %ret.0, %err_fh ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_release(ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev2 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  %enc3 = getelementptr i8, ptr %1, i32 816
  %6 = ptrtoint ptr %enc3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enc3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %do.body

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_release.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_release, %if.then8)) #8
          to label %do.end [label %if.then8], !srcloc !246

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr i8, ptr %1, i32 446
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_release.__UNIQUE_ID_ddebug327, ptr noundef %5, ptr noundef nonnull @.str.78, ptr noundef %name, ptr noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %close = getelementptr inbounds %struct.hva_enc, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %close, align 4
  %call10 = tail call i32 %11(ptr noundef %add.ptr) #8
  %12 = ptrtoint ptr %enc3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %enc3, align 4
  %id = getelementptr i8, ptr %1, i32 444
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %id, align 8
  %idxprom = zext i8 %14 to i32
  %arrayidx = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx, align 4
  %nb_of_instances = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %nb_of_instances to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nb_of_instances, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %nb_of_instances, align 4
  br label %if.end12

if.end12:                                         ; preds = %do.end, %entry.if.end12_crit_edge
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %dev1.i = getelementptr inbounds %struct.hva_dev, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev1.i, align 8
  %streaminfo.i = getelementptr i8, ptr %1, i32 716
  %frameinfo.i = getelementptr i8, ptr %1, i32 792
  %flags.i = getelementptr i8, ptr %1, i32 684
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end12.hva_dbg_summary.exit_crit_edge, label %do.body.i

if.end12.hva_dbg_summary.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %hva_dbg_summary.exit

do.body.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_dbg_summary.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_release, %if.then5.i)) #8
          to label %hva_dbg_summary.exit [label %if.then5.i], !srcloc !246

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr i8, ptr %1, i32 446
  %aligned_width.i = getelementptr i8, ptr %1, i32 804
  %24 = ptrtoint ptr %aligned_width.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %aligned_width.i, align 4
  %aligned_height.i = getelementptr i8, ptr %1, i32 808
  %26 = ptrtoint ptr %aligned_height.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %aligned_height.i, align 4
  %width.i = getelementptr i8, ptr %1, i32 720
  %28 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %width.i, align 4
  %height.i = getelementptr i8, ptr %1, i32 724
  %30 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height.i, align 4
  %profile.i = getelementptr i8, ptr %1, i32 728
  %level.i = getelementptr i8, ptr %1, i32 760
  %encoded_frames.i = getelementptr i8, ptr %1, i32 828
  %32 = ptrtoint ptr %encoded_frames.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %encoded_frames.i, align 8
  %sys_errors.i = getelementptr i8, ptr %1, i32 832
  %34 = ptrtoint ptr %sys_errors.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sys_errors.i, align 4
  %encode_errors.i = getelementptr i8, ptr %1, i32 836
  %36 = ptrtoint ptr %encode_errors.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %encode_errors.i, align 8
  %frame_errors.i = getelementptr i8, ptr %1, i32 840
  %38 = ptrtoint ptr %frame_errors.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %frame_errors.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_dbg_summary.__UNIQUE_ID_ddebug301, ptr noundef %21, ptr noundef nonnull @.str.82, ptr noundef %name.i, ptr noundef %frameinfo.i, i32 noundef %25, i32 noundef %27, ptr noundef %streaminfo.i, i32 noundef %29, i32 noundef %31, ptr noundef %profile.i, ptr noundef %level.i, i32 noundef %33, i32 noundef %35, i32 noundef %37, i32 noundef %39) #8
  br label %hva_dbg_summary.exit

hva_dbg_summary.exit:                             ; preds = %if.then5.i, %do.body.i, %if.end12.hva_dbg_summary.exit_crit_edge
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %40 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %41) #8
  %ctrl_handler = getelementptr i8, ptr %1, i32 192
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #8
  tail call void @v4l2_fh_del(ptr noundef %1) #8
  tail call void @v4l2_fh_exit(ptr noundef %1) #8
  tail call void @hva_dbg_ctx_remove(ptr noundef %add.ptr) #8
  %name18 = getelementptr i8, ptr %1, i32 446
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.80, ptr noundef %name18) #11
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hva_run_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -552
  %enc1 = getelementptr i8, ptr %work, i32 268
  %0 = ptrtoint ptr %enc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enc1, align 4
  %lock = getelementptr i8, ptr %work, i32 44
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  tail call void @hva_dbg_perf_begin(ptr noundef %add.ptr) #8
  %m2m_ctx = getelementptr i8, ptr %work, i32 -360
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #8
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i44 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #8
  %frame_num = getelementptr i8, ptr %work, i32 140
  %6 = ptrtoint ptr %frame_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_num, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %frame_num, align 4
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %sequence, align 8
  %encode = getelementptr inbounds %struct.hva_enc, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %encode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %encode, align 4
  %call11 = tail call i32 %10(ptr noundef %add.ptr, ptr noundef %call.i, ptr noundef %call.i44) #8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i44, i32 0, i32 4
  %11 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not.i = icmp eq i32 %12, 0
  br i1 %cmp.not.i, label %entry.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

entry.vb2_set_plane_payload.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %entry
  %bytesused = getelementptr inbounds %struct.hva_stream, ptr %call.i44, i32 0, i32 6
  %13 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bytesused, align 8
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i44, i32 0, i32 10, i32 0, i32 4
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp1.i = icmp ult i32 %16, %14
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !248

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.47, i32 noundef 1163, i32 noundef 9, ptr noundef null) #8
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %18, %if.then38.i ], [ %14, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %call.i44, i32 0, i32 10, i32 0, i32 3
  %19 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %entry.vb2_set_plane_payload.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.else, label %vb2_set_plane_payload.exit.if.end_crit_edge

vb2_set_plane_payload.exit.if.end_crit_edge:      ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #10
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %timestamp, align 8
  %timestamp14 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i44, i32 0, i32 5
  %22 = ptrtoint ptr %timestamp14 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %timestamp14, align 8
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i44, i32 0, i32 2
  %23 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %field, align 4
  %stream_num = getelementptr i8, ptr %work, i32 144
  %24 = ptrtoint ptr %stream_num to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stream_num, align 8
  %sub = add i32 %25, -1
  %sequence15 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i44, i32 0, i32 4
  %26 = ptrtoint ptr %sequence15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub, ptr %sequence15, align 8
  %encoded_frames = getelementptr i8, ptr %work, i32 280
  %27 = ptrtoint ptr %encoded_frames to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %encoded_frames, align 8
  %inc16 = add i32 %28, 1
  store i32 %inc16, ptr %encoded_frames, align 8
  tail call void @hva_dbg_perf_end(ptr noundef %add.ptr, ptr noundef %call.i44) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %vb2_set_plane_payload.exit.if.end_crit_edge
  %.sink45 = phi i32 [ 5, %if.else ], [ 6, %vb2_set_plane_payload.exit.if.end_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef %.sink45) #8
  tail call void @vb2_buffer_done(ptr noundef %call.i44, i32 noundef %.sink45) #8
  tail call void @mutex_unlock(ptr noundef %lock) #8
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 8
  %m2m_dev = getelementptr inbounds %struct.hva_dev, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %m2m_dev, align 8
  %33 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %32, ptr noundef %34) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hva_ctrls_setup(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 8
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %ctrl_handler = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 2
  %call = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 15, ptr noundef nonnull @hva_ctrls_setup._key, ptr noundef nonnull @.str.48) #8
  %call3 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029518, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 1) #8
  %call5 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029515, i64 noundef 1, i64 noundef 60, i64 noundef 1, i64 noundef 16) #8
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029519, i64 noundef 1000, i64 noundef 60000000, i64 noundef 1000, i64 noundef 20000000) #8
  %call9 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029513, i8 noundef zeroext 0, i64 noundef -2, i8 noundef zeroext 0) #8
  %call11 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029675, i8 noundef zeroext 15, i64 noundef -32790, i8 noundef zeroext 4) #8
  %call13 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029671, i8 noundef zeroext 13, i64 noundef 0, i8 noundef zeroext 11) #8
  %call15 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029669, i8 noundef zeroext 1, i64 noundef 0, i8 noundef zeroext 0) #8
  %call17 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029668, i64 noundef 1, i64 noundef 10000, i64 noundef 1, i64 noundef 3000) #8
  %call19 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029667, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %call21 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029665, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 5) #8
  %call23 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029666, i64 noundef 0, i64 noundef 51, i64 noundef 1, i64 noundef 51) #8
  %call25 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029678, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %call27 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029679, i8 noundef zeroext 1, i64 noundef -3, i8 noundef zeroext 1) #8
  %call29 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029680, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %call33 = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler, ptr noundef nonnull @hva_ctrl_ops, i32 noundef 10029682, i8 noundef zeroext 4, i64 noundef -17, i8 noundef zeroext 4) #8
  %error = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 2, i32 9
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end44, label %if.then

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_ctrls_setup.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_ctrls_setup, %if.then42)) #8
          to label %do.end [label %if.then42], !srcloc !246

if.then42:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_ctrls_setup.__UNIQUE_ID_ddebug314, ptr noundef %3, ptr noundef nonnull @.str.50, ptr noundef %name, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then42, %if.then
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #8
  br label %cleanup

if.end44:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call46 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #8
  %ctrls = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 3
  %6 = ptrtoint ptr %ctrls to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ctrls, align 4
  %denominator = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 3, i32 0, i32 1
  %7 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 30, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %do.end
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %src_vq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %src_vq, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %1 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 784, ptr %buf_struct_size, align 4
  %min_buffers_needed = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 15
  %2 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %min_buffers_needed, align 4
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv, align 8
  %dev = getelementptr inbounds %struct.hva_dev, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %dev1 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %dev1, align 4
  %io_modes.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 1
  %8 = ptrtoint ptr %io_modes.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 17, ptr %io_modes.i, align 4
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %9 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %priv, ptr %drv_priv.i, align 4
  %ops.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @hva_qops, ptr %ops.i, align 4
  %mem_ops.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %11 = ptrtoint ptr %mem_ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops.i, align 4
  %timestamp_flags.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %12 = ptrtoint ptr %timestamp_flags.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16384, ptr %timestamp_flags.i, align 4
  %13 = load ptr, ptr %priv, align 8
  %lock.i = getelementptr inbounds %struct.hva_dev, ptr %13, i32 0, i32 4
  %lock1.i = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %14 = ptrtoint ptr %lock1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lock.i, ptr %lock1.i, align 4
  %call.i = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %dst_vq, align 4
  %buf_struct_size3 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %16 = ptrtoint ptr %buf_struct_size3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 768, ptr %buf_struct_size3, align 4
  %min_buffers_needed4 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 15
  %17 = ptrtoint ptr %min_buffers_needed4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %min_buffers_needed4, align 4
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %priv, align 8
  %dev6 = getelementptr inbounds %struct.hva_dev, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev6, align 8
  %dev7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %22 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %dev7, align 4
  %io_modes.i22 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %23 = ptrtoint ptr %io_modes.i22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 17, ptr %io_modes.i22, align 4
  %drv_priv.i23 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %24 = ptrtoint ptr %drv_priv.i23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %priv, ptr %drv_priv.i23, align 4
  %ops.i24 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %25 = ptrtoint ptr %ops.i24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @hva_qops, ptr %ops.i24, align 4
  %mem_ops.i25 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %26 = ptrtoint ptr %mem_ops.i25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops.i25, align 4
  %timestamp_flags.i26 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %27 = ptrtoint ptr %timestamp_flags.i26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16384, ptr %timestamp_flags.i26, align 4
  %28 = load ptr, ptr %priv, align 8
  %lock.i27 = getelementptr inbounds %struct.hva_dev, ptr %28, i32 0, i32 4
  %lock1.i28 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %29 = ptrtoint ptr %lock1.i28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %lock.i27, ptr %lock1.i28, align 4
  %call.i29 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i29, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hva_dbg_ctx_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hva_dbg_perf_begin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hva_dbg_perf_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -196
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_s_ctrl.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_s_ctrl, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr i8, ptr %1, i32 254
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_s_ctrl.__UNIQUE_ID_ddebug312, ptr noundef %5, ptr noundef nonnull @.str.52, ptr noundef %name, i32 noundef %7, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %10 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id5, align 8
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %do.body69 [
    i32 10029518, label %sw.bb
    i32 10029515, label %sw.bb7
    i32 10029519, label %sw.bb10
    i32 10029513, label %sw.bb13
    i32 10029675, label %sw.bb16
    i32 10029671, label %sw.bb25
    i32 10029669, label %sw.bb36
    i32 10029668, label %sw.bb39
    i32 10029667, label %sw.bb42
    i32 10029665, label %sw.bb47
    i32 10029666, label %sw.bb50
    i32 10029678, label %sw.bb53
    i32 10029679, label %sw.bb58
    i32 10029680, label %sw.bb61
    i32 10029682, label %sw.bb66
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val6, align 4
  %bitrate_mode = getelementptr i8, ptr %1, i32 192
  %15 = ptrtoint ptr %bitrate_mode to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %bitrate_mode, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %16 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val8, align 4
  %gop_size = getelementptr i8, ptr %1, i32 196
  %18 = ptrtoint ptr %gop_size to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %gop_size, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %val11 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val11, align 4
  %bitrate = getelementptr i8, ptr %1, i32 200
  %21 = ptrtoint ptr %bitrate to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bitrate, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %val14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %22 = ptrtoint ptr %val14 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val14, align 4
  %aspect = getelementptr i8, ptr %1, i32 204
  %24 = ptrtoint ptr %aspect to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %aspect, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %val17 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %25 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val17, align 4
  %profile = getelementptr i8, ptr %1, i32 208
  %27 = ptrtoint ptr %profile to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %profile, align 4
  %profile19 = getelementptr i8, ptr %1, i32 536
  %28 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id5, align 8
  %call22 = tail call ptr @v4l2_ctrl_get_menu(i32 noundef %29) #8
  %30 = ptrtoint ptr %val17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val17, align 4
  %arrayidx = getelementptr ptr, ptr %call22, i32 %31
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %call24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %profile19, i32 noundef 32, ptr noundef nonnull @.str.53, ptr noundef %33)
  br label %cleanup

sw.bb25:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %34 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val26, align 4
  %level = getelementptr i8, ptr %1, i32 212
  %36 = ptrtoint ptr %level to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %level, align 4
  %level29 = getelementptr i8, ptr %1, i32 568
  %37 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id5, align 8
  %call32 = tail call ptr @v4l2_ctrl_get_menu(i32 noundef %38) #8
  %39 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val26, align 4
  %arrayidx34 = getelementptr ptr, ptr %call32, i32 %40
  %41 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx34, align 4
  %call35 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %level29, i32 noundef 32, ptr noundef nonnull @.str.54, ptr noundef %42)
  br label %cleanup

sw.bb36:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %val37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %43 = ptrtoint ptr %val37 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val37, align 4
  %entropy_mode = getelementptr i8, ptr %1, i32 216
  %45 = ptrtoint ptr %entropy_mode to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %entropy_mode, align 4
  br label %cleanup

sw.bb39:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %val40 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %46 = ptrtoint ptr %val40 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val40, align 4
  %cpb_size = getelementptr i8, ptr %1, i32 220
  %48 = ptrtoint ptr %cpb_size to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %cpb_size, align 4
  br label %cleanup

sw.bb42:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %val43 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %49 = ptrtoint ptr %val43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool44 = icmp ne i32 %50, 0
  %dct8x8 = getelementptr i8, ptr %1, i32 224
  %frombool46 = zext i1 %tobool44 to i8
  %51 = ptrtoint ptr %dct8x8 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %frombool46, ptr %dct8x8, align 4
  br label %cleanup

sw.bb47:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %val48 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %52 = ptrtoint ptr %val48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %val48, align 4
  %qpmin = getelementptr i8, ptr %1, i32 228
  %54 = ptrtoint ptr %qpmin to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %qpmin, align 4
  br label %cleanup

sw.bb50:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %val51 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %55 = ptrtoint ptr %val51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val51, align 4
  %qpmax = getelementptr i8, ptr %1, i32 232
  %57 = ptrtoint ptr %qpmax to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %qpmax, align 4
  br label %cleanup

sw.bb53:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %val54 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %58 = ptrtoint ptr %val54 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool55 = icmp ne i32 %59, 0
  %vui_sar = getelementptr i8, ptr %1, i32 236
  %frombool57 = zext i1 %tobool55 to i8
  %60 = ptrtoint ptr %vui_sar to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %frombool57, ptr %vui_sar, align 4
  br label %cleanup

sw.bb58:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %val59 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %61 = ptrtoint ptr %val59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %val59, align 4
  %vui_sar_idc = getelementptr i8, ptr %1, i32 240
  %63 = ptrtoint ptr %vui_sar_idc to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %vui_sar_idc, align 4
  br label %cleanup

sw.bb61:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %val62 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %64 = ptrtoint ptr %val62 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %val62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool63 = icmp ne i32 %65, 0
  %sei_fp = getelementptr i8, ptr %1, i32 244
  %frombool65 = zext i1 %tobool63 to i8
  %66 = ptrtoint ptr %sei_fp to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %frombool65, ptr %sei_fp, align 4
  br label %cleanup

sw.bb66:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %val67 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %67 = ptrtoint ptr %val67 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val67, align 4
  %sei_fp_type = getelementptr i8, ptr %1, i32 248
  %69 = ptrtoint ptr %sei_fp_type to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %sei_fp_type, align 4
  br label %cleanup

do.body69:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_s_ctrl.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_s_ctrl, %if.then81)) #8
          to label %cleanup [label %if.then81], !srcloc !246

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #10
  %name82 = getelementptr i8, ptr %1, i32 254
  %70 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %id5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_s_ctrl.__UNIQUE_ID_ddebug313, ptr noundef %5, ptr noundef nonnull @.str.55, ptr noundef %name82, i32 noundef %71) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %do.body69, %sw.bb66, %sw.bb61, %sw.bb58, %sw.bb53, %sw.bb50, %sw.bb47, %sw.bb42, %sw.bb39, %sw.bb36, %sw.bb25, %sw.bb16, %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb
  %retval.0 = phi i32 [ -22, %if.then81 ], [ 0, %sw.bb66 ], [ 0, %sw.bb61 ], [ 0, %sw.bb58 ], [ 0, %sw.bb53 ], [ 0, %sw.bb50 ], [ 0, %sw.bb47 ], [ 0, %sw.bb42 ], [ 0, %sw.bb39 ], [ 0, %sw.bb36 ], [ 0, %sw.bb25 ], [ 0, %sw.bb16 ], [ 0, %sw.bb13 ], [ 0, %sw.bb10 ], [ 0, %sw.bb7 ], [ 0, %sw.bb ], [ -22, %do.body69 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_get_menu(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readonly %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_queue_setup.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_queue_setup, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %cond = select i1 %cmp, ptr @.str.58, ptr @.str.59
  %8 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_buffers, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_queue_setup.__UNIQUE_ID_ddebug319, ptr noundef %5, ptr noundef nonnull @.str.57, ptr noundef %name, ptr noundef nonnull %cond, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp6 = icmp eq i32 %11, 2
  %size7 = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 18, i32 5
  %max_stream_size = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 12
  %cond8.in = select i1 %cmp6, ptr %size7, ptr %max_stream_size
  %12 = ptrtoint ptr %cond8.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond8 = load i32, ptr %cond8.in, align 4
  %13 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  br i1 %tobool9.not, label %if.end13, label %if.then10

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %cond8)
  %cmp11 = icmp ult i32 %16, %cond8
  %cond12 = select i1 %cmp11, i32 -22, i32 0
  br label %cleanup

if.end13:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %num_planes, align 4
  %18 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cond8, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then10
  %retval.0 = phi i32 [ %cond12, %if.then10 ], [ 0, %if.end13 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_buf_prepare(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %10 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %field, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %11, label %do.body [
    i32 0, label %if.end.thread
    i32 1, label %if.then.if.end19_crit_edge
  ]

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end.thread:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %field, align 4
  br label %if.end19

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_buf_prepare.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_buf_prepare, %if.then16)) #8
          to label %cleanup86 [label %if.then16], !srcloc !246

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.hva_ctx, ptr %3, i32 0, i32 6
  %index = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %16 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_buf_prepare.__UNIQUE_ID_ddebug320, ptr noundef %7, ptr noundef nonnull @.str.61, ptr noundef %name, i32 noundef %15, i32 noundef %17) #8
  br label %cleanup86

if.end19:                                         ; preds = %if.end.thread, %if.then.if.end19_crit_edge
  %prepared = getelementptr inbounds %struct.hva_frame, ptr %vb, i32 0, i32 5
  %18 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %prepared, align 8, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool20.not = icmp eq i8 %19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end19.cleanup86_crit_edge

if.end19.cleanup86_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup86

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #8
  %vaddr = getelementptr inbounds %struct.hva_frame, ptr %vb, i32 0, i32 4
  %20 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call22, ptr %vaddr, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #8
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call.i, align 4
  %paddr = getelementptr inbounds %struct.hva_frame, ptr %vb, i32 0, i32 3
  %23 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %paddr, align 8
  %info = getelementptr inbounds %struct.hva_frame, ptr %vb, i32 0, i32 2
  %frameinfo = getelementptr inbounds %struct.hva_ctx, ptr %3, i32 0, i32 18
  %24 = call ptr @memcpy(ptr %info, ptr %frameinfo, i32 24)
  %25 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %prepared, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_buf_prepare.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_buf_prepare, %if.then38)) #8
          to label %cleanup86 [label %if.then38], !srcloc !246

if.then38:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %name39 = getelementptr inbounds %struct.hva_ctx, ptr %3, i32 0, i32 6
  %index41 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %26 = ptrtoint ptr %index41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index41, align 4
  %28 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %vaddr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_buf_prepare.__UNIQUE_ID_ddebug321, ptr noundef %7, ptr noundef nonnull @.str.62, ptr noundef %name39, i32 noundef %27, ptr noundef %29, ptr noundef %paddr) #8
  br label %cleanup86

if.else:                                          ; preds = %entry
  %prepared51 = getelementptr inbounds %struct.hva_stream, ptr %vb, i32 0, i32 4
  %30 = ptrtoint ptr %prepared51 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %prepared51, align 8, !range !247
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool52.not = icmp eq i8 %31, 0
  br i1 %tobool52.not, label %if.then53, label %if.else.cleanup86_crit_edge

if.else.cleanup86_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup86

if.then53:                                        ; preds = %if.else
  %call55 = tail call ptr @vb2_plane_vaddr(ptr noundef %vb, i32 noundef 0) #8
  %vaddr56 = getelementptr inbounds %struct.hva_stream, ptr %vb, i32 0, i32 3
  %32 = ptrtoint ptr %vaddr56 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call55, ptr %vaddr56, align 4
  %call.i131 = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #8
  %33 = ptrtoint ptr %call.i131 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call.i131, align 4
  %paddr59 = getelementptr inbounds %struct.hva_stream, ptr %vb, i32 0, i32 2
  %35 = ptrtoint ptr %paddr59 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %paddr59, align 8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %36 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.not.i = icmp eq i32 %37, 0
  br i1 %cmp.not.i, label %if.then53.vb2_plane_size.exit_crit_edge, label %if.then.i

if.then53.vb2_plane_size.exit_crit_edge:          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #10
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %38 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %if.then53.vb2_plane_size.exit_crit_edge
  %retval.0.i132 = phi i32 [ %39, %if.then.i ], [ 0, %if.then53.vb2_plane_size.exit_crit_edge ]
  %size = getelementptr inbounds %struct.hva_stream, ptr %vb, i32 0, i32 5
  %40 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i132, ptr %size, align 4
  %41 = ptrtoint ptr %prepared51 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %prepared51, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_buf_prepare.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_buf_prepare, %if.then75)) #8
          to label %cleanup86 [label %if.then75], !srcloc !246

if.then75:                                        ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  %name76 = getelementptr inbounds %struct.hva_ctx, ptr %3, i32 0, i32 6
  %index78 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %42 = ptrtoint ptr %index78 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index78, align 4
  %44 = ptrtoint ptr %vaddr56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vaddr56, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_buf_prepare.__UNIQUE_ID_ddebug322, ptr noundef %7, ptr noundef nonnull @.str.63, ptr noundef %name76, i32 noundef %43, ptr noundef %45, ptr noundef %paddr59) #8
  br label %cleanup86

cleanup86:                                        ; preds = %if.then75, %vb2_plane_size.exit, %if.else.cleanup86_crit_edge, %if.then38, %if.then21, %if.end19.cleanup86_crit_edge, %if.then16, %do.body
  %retval.1 = phi i32 [ -22, %if.then16 ], [ 0, %if.end19.cleanup86_crit_edge ], [ 0, %if.else.cleanup86_crit_edge ], [ 0, %if.then75 ], [ 0, %if.then38 ], [ -22, %do.body ], [ 0, %if.then21 ], [ 0, %vb2_plane_size.exit ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev2 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_start_streaming.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_start_streaming, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  %cond = select i1 %cmp, ptr @.str.58, ptr @.str.59
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_start_streaming.__UNIQUE_ID_ddebug323, ptr noundef %5, ptr noundef nonnull @.str.65, ptr noundef %name, ptr noundef nonnull %cond) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vq, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %9, label %if.else [
    i32 2, label %do.end.if.then28_crit_edge
    i32 10, label %do.end.if.then28_crit_edge150
    i32 3, label %do.end.if.then28_crit_edge151
    i32 8, label %do.end.if.then28_crit_edge152
    i32 5, label %do.end.if.then28_crit_edge153
    i32 7, label %do.end.if.then28_crit_edge154
    i32 12, label %do.end.if.then28_crit_edge155
    i32 14, label %do.end.if.then28_crit_edge156
  ]

do.end.if.then28_crit_edge156:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

do.end.if.then28_crit_edge155:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

do.end.if.then28_crit_edge154:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

do.end.if.then28_crit_edge153:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

do.end.if.then28_crit_edge152:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

do.end.if.then28_crit_edge151:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

do.end.if.then28_crit_edge150:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

do.end.if.then28_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then28

if.then28:                                        ; preds = %do.end.if.then28_crit_edge, %do.end.if.then28_crit_edge150, %do.end.if.then28_crit_edge151, %do.end.if.then28_crit_edge152, %do.end.if.then28_crit_edge153, %do.end.if.then28_crit_edge154, %do.end.if.then28_crit_edge155, %do.end.if.then28_crit_edge156
  %m2m_ctx = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 1, i32 10
  %11 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %m2m_ctx, align 4
  %start_streaming_called.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %12, i32 0, i32 7, i32 0, i32 28
  %13 = ptrtoint ptr %start_streaming_called.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load.i = load i16, ptr %start_streaming_called.i, align 4
  %14 = and i16 %bf.load.i, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.i.not = icmp eq i16 %14, 0
  br i1 %tobool.i.not, label %if.then28.cleanup_crit_edge, label %if.then28.if.end38_crit_edge

if.then28.if.end38_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %do.end
  %m2m_ctx33 = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 1, i32 10
  %15 = ptrtoint ptr %m2m_ctx33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_ctx33, align 4
  %start_streaming_called.i128 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %16, i32 0, i32 8, i32 0, i32 28
  %17 = ptrtoint ptr %start_streaming_called.i128 to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i129 = load i16, ptr %start_streaming_called.i128, align 4
  %18 = and i16 %bf.load.i129, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool.i130.not = icmp eq i16 %18, 0
  br i1 %tobool.i130.not, label %if.else.cleanup_crit_edge, label %if.else.if.end38_crit_edge

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %if.else.if.end38_crit_edge, %if.then28.if.end38_crit_edge
  %arrayidx = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 0
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %tobool40.not = icmp eq ptr %20, null
  br i1 %tobool40.not, label %if.end38.if.then41_crit_edge, label %for.inc

if.end38.if.then41_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.then41:                                        ; preds = %for.inc.14.if.then41_crit_edge, %for.inc.13.if.then41_crit_edge, %for.inc.12.if.then41_crit_edge, %for.inc.11.if.then41_crit_edge, %for.inc.10.if.then41_crit_edge, %for.inc.9.if.then41_crit_edge, %for.inc.8.if.then41_crit_edge, %for.inc.7.if.then41_crit_edge, %for.inc.6.if.then41_crit_edge, %for.inc.5.if.then41_crit_edge, %for.inc.4.if.then41_crit_edge, %for.inc.3.if.then41_crit_edge, %for.inc.2.if.then41_crit_edge, %for.inc.1.if.then41_crit_edge, %for.inc.if.then41_crit_edge, %if.end38.if.then41_crit_edge
  %i.0135.lcssa = phi i8 [ 0, %if.end38.if.then41_crit_edge ], [ 1, %for.inc.if.then41_crit_edge ], [ 2, %for.inc.1.if.then41_crit_edge ], [ 3, %for.inc.2.if.then41_crit_edge ], [ 4, %for.inc.3.if.then41_crit_edge ], [ 5, %for.inc.4.if.then41_crit_edge ], [ 6, %for.inc.5.if.then41_crit_edge ], [ 7, %for.inc.6.if.then41_crit_edge ], [ 8, %for.inc.7.if.then41_crit_edge ], [ 9, %for.inc.8.if.then41_crit_edge ], [ 10, %for.inc.9.if.then41_crit_edge ], [ 11, %for.inc.10.if.then41_crit_edge ], [ 12, %for.inc.11.if.then41_crit_edge ], [ 13, %for.inc.12.if.then41_crit_edge ], [ 14, %for.inc.13.if.then41_crit_edge ], [ 15, %for.inc.14.if.then41_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx, %if.end38.if.then41_crit_edge ], [ %arrayidx.1, %for.inc.if.then41_crit_edge ], [ %arrayidx.2, %for.inc.1.if.then41_crit_edge ], [ %arrayidx.3, %for.inc.2.if.then41_crit_edge ], [ %arrayidx.4, %for.inc.3.if.then41_crit_edge ], [ %arrayidx.5, %for.inc.4.if.then41_crit_edge ], [ %arrayidx.6, %for.inc.5.if.then41_crit_edge ], [ %arrayidx.7, %for.inc.6.if.then41_crit_edge ], [ %arrayidx.8, %for.inc.7.if.then41_crit_edge ], [ %arrayidx.9, %for.inc.8.if.then41_crit_edge ], [ %arrayidx.10, %for.inc.9.if.then41_crit_edge ], [ %arrayidx.11, %for.inc.10.if.then41_crit_edge ], [ %arrayidx.12, %for.inc.11.if.then41_crit_edge ], [ %arrayidx.13, %for.inc.12.if.then41_crit_edge ], [ %arrayidx.14, %for.inc.13.if.then41_crit_edge ], [ %arrayidx.15, %for.inc.14.if.then41_crit_edge ]
  %21 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %1, ptr %arrayidx.lcssa, align 4
  %id = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %i.0135.lcssa, ptr %id, align 8
  %nb_of_instances = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 7
  %23 = ptrtoint ptr %nb_of_instances to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nb_of_instances, align 4
  %inc53 = add i32 %24, 1
  store i32 %inc53, ptr %nb_of_instances, align 4
  %enc = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 19
  %25 = ptrtoint ptr %enc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %enc, align 4
  %tobool54.not = icmp eq ptr %26, null
  br i1 %tobool54.not, label %if.then55, label %if.then41.cleanup_crit_edge

if.then41.cleanup_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %if.end38
  %arrayidx.1 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.1, align 4
  %tobool40.not.1 = icmp eq ptr %28, null
  br i1 %tobool40.not.1, label %for.inc.if.then41_crit_edge, label %for.inc.1

for.inc.if.then41_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 2
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.2, align 4
  %tobool40.not.2 = icmp eq ptr %30, null
  br i1 %tobool40.not.2, label %for.inc.1.if.then41_crit_edge, label %for.inc.2

for.inc.1.if.then41_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 3
  %31 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.3, align 4
  %tobool40.not.3 = icmp eq ptr %32, null
  br i1 %tobool40.not.3, label %for.inc.2.if.then41_crit_edge, label %for.inc.3

for.inc.2.if.then41_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 4
  %33 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.4, align 4
  %tobool40.not.4 = icmp eq ptr %34, null
  br i1 %tobool40.not.4, label %for.inc.3.if.then41_crit_edge, label %for.inc.4

for.inc.3.if.then41_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 5
  %35 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.5, align 4
  %tobool40.not.5 = icmp eq ptr %36, null
  br i1 %tobool40.not.5, label %for.inc.4.if.then41_crit_edge, label %for.inc.5

for.inc.4.if.then41_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 6
  %37 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.6, align 4
  %tobool40.not.6 = icmp eq ptr %38, null
  br i1 %tobool40.not.6, label %for.inc.5.if.then41_crit_edge, label %for.inc.6

for.inc.5.if.then41_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 7
  %39 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.7, align 4
  %tobool40.not.7 = icmp eq ptr %40, null
  br i1 %tobool40.not.7, label %for.inc.6.if.then41_crit_edge, label %for.inc.7

for.inc.6.if.then41_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 8
  %41 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.8, align 4
  %tobool40.not.8 = icmp eq ptr %42, null
  br i1 %tobool40.not.8, label %for.inc.7.if.then41_crit_edge, label %for.inc.8

for.inc.7.if.then41_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 9
  %43 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.9, align 4
  %tobool40.not.9 = icmp eq ptr %44, null
  br i1 %tobool40.not.9, label %for.inc.8.if.then41_crit_edge, label %for.inc.9

for.inc.8.if.then41_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 10
  %45 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.10, align 4
  %tobool40.not.10 = icmp eq ptr %46, null
  br i1 %tobool40.not.10, label %for.inc.9.if.then41_crit_edge, label %for.inc.10

for.inc.9.if.then41_crit_edge:                    ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 11
  %47 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.11, align 4
  %tobool40.not.11 = icmp eq ptr %48, null
  br i1 %tobool40.not.11, label %for.inc.10.if.then41_crit_edge, label %for.inc.11

for.inc.10.if.then41_crit_edge:                   ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 12
  %49 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.12, align 4
  %tobool40.not.12 = icmp eq ptr %50, null
  br i1 %tobool40.not.12, label %for.inc.11.if.then41_crit_edge, label %for.inc.12

for.inc.11.if.then41_crit_edge:                   ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.13 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 13
  %51 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.13, align 4
  %tobool40.not.13 = icmp eq ptr %52, null
  br i1 %tobool40.not.13, label %for.inc.12.if.then41_crit_edge, label %for.inc.13

for.inc.12.if.then41_crit_edge:                   ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.14 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 14
  %53 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.14, align 4
  %tobool40.not.14 = icmp eq ptr %54, null
  br i1 %tobool40.not.14, label %for.inc.13.if.then41_crit_edge, label %for.inc.14

for.inc.13.if.then41_crit_edge:                   ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.inc.14:                                       ; preds = %for.inc.13
  %arrayidx.15 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 15
  %55 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.15, align 4
  %tobool40.not.15 = icmp eq ptr %56, null
  br i1 %tobool40.not.15, label %for.inc.14.if.then41_crit_edge, label %for.inc.15

for.inc.14.if.then41_crit_edge:                   ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

for.inc.15:                                       ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #10
  %name50 = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.66, ptr noundef %name50) #11
  br label %err

if.then55:                                        ; preds = %if.then41
  %streaminfo = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 17
  %57 = ptrtoint ptr %streaminfo to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %streaminfo, align 8
  %frameinfo = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 18
  %59 = ptrtoint ptr %frameinfo to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %frameinfo, align 4
  %call57 = tail call fastcc i32 @hva_open_encoder(ptr noundef %1, i32 noundef %58, i32 noundef %60, ptr noundef %enc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %err_ctx, label %if.then55.cleanup_crit_edge

if.then55.cleanup_crit_edge:                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_ctx:                                          ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %id, align 8
  %idxprom = zext i8 %62 to i32
  %arrayidx65 = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 %idxprom
  %63 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %arrayidx65, align 4
  %64 = ptrtoint ptr %nb_of_instances to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nb_of_instances, align 4
  %dec = add i32 %65, -1
  store i32 %dec, ptr %nb_of_instances, align 4
  br label %err

err:                                              ; preds = %err_ctx, %for.inc.15
  %ret.0 = phi i32 [ %call57, %err_ctx ], [ -12, %for.inc.15 ]
  %66 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %67)
  %cmp68 = icmp eq i32 %67, 2
  %m2m_ctx72 = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 1, i32 10
  %68 = ptrtoint ptr %m2m_ctx72 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %m2m_ctx72, align 4
  br i1 %cmp68, label %while.cond.preheader, label %while.cond76.preheader

while.cond76.preheader:                           ; preds = %err
  %cap_q_ctx.i136 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %69, i32 0, i32 7
  %call.i131137 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i136) #8
  %tobool80.not138 = icmp eq ptr %call.i131137, null
  br i1 %tobool80.not138, label %while.cond76.preheader.if.end83_crit_edge, label %while.cond76.preheader.while.body81_crit_edge

while.cond76.preheader.while.body81_crit_edge:    ; preds = %while.cond76.preheader
  br label %while.body81

while.cond76.preheader.if.end83_crit_edge:        ; preds = %while.cond76.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

while.cond.preheader:                             ; preds = %err
  %out_q_ctx.i140 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %69, i32 0, i32 8
  %call.i141 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i140) #8
  %tobool74.not142 = icmp eq ptr %call.i141, null
  br i1 %tobool74.not142, label %while.cond.preheader.if.end83_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.if.end83_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %call.i143 = phi ptr [ %call.i, %while.body.while.body_crit_edge ], [ %call.i141, %while.cond.preheader.while.body_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i143, i32 noundef 3) #8
  %70 = ptrtoint ptr %m2m_ctx72 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %m2m_ctx72, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %71, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #8
  %tobool74.not = icmp eq ptr %call.i, null
  br i1 %tobool74.not, label %while.body.if.end83_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.if.end83_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

while.body81:                                     ; preds = %while.body81.while.body81_crit_edge, %while.cond76.preheader.while.body81_crit_edge
  %call.i131139 = phi ptr [ %call.i131, %while.body81.while.body81_crit_edge ], [ %call.i131137, %while.cond76.preheader.while.body81_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i131139, i32 noundef 3) #8
  %72 = ptrtoint ptr %m2m_ctx72 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %m2m_ctx72, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %73, i32 0, i32 7
  %call.i131 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #8
  %tobool80.not = icmp eq ptr %call.i131, null
  br i1 %tobool80.not, label %while.body81.if.end83_crit_edge, label %while.body81.while.body81_crit_edge

while.body81.while.body81_crit_edge:              ; preds = %while.body81
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body81

while.body81.if.end83_crit_edge:                  ; preds = %while.body81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.end83:                                         ; preds = %while.body81.if.end83_crit_edge, %while.body.if.end83_crit_edge, %while.cond.preheader.if.end83_crit_edge, %while.cond76.preheader.if.end83_crit_edge
  %sys_errors = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 23
  %74 = ptrtoint ptr %sys_errors to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %sys_errors, align 4
  %inc84 = add i32 %75, 1
  store i32 %inc84, ptr %sys_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.then55.cleanup_crit_edge, %if.then41.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then28.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end83 ], [ 0, %if.then28.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.then55.cleanup_crit_edge ], [ 0, %if.then41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hva_stop_streaming(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev2 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  %enc3 = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %enc3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enc3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_stop_streaming.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_stop_streaming, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !246

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp = icmp eq i32 %9, 2
  %cond = select i1 %cmp, ptr @.str.58, ptr @.str.59
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_stop_streaming.__UNIQUE_ID_ddebug324, ptr noundef %5, ptr noundef nonnull @.str.76, ptr noundef %name, ptr noundef nonnull %cond) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp8 = icmp eq i32 %11, 2
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %do.end
  %frame_num = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %frame_num to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %frame_num, align 4
  %m2m_ctx = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 1, i32 10
  %13 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i204 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %14, i32 0, i32 8
  %call.i205 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i204) #8
  %tobool11.not206 = icmp eq ptr %call.i205, null
  br i1 %tobool11.not206, label %if.then9.if.end19_crit_edge, label %if.then9.while.body_crit_edge

if.then9.while.body_crit_edge:                    ; preds = %if.then9
  br label %while.body

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then9.while.body_crit_edge
  %call.i207 = phi ptr [ %call.i, %while.body.while.body_crit_edge ], [ %call.i205, %if.then9.while.body_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i207, i32 noundef 6) #8
  %15 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %16, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #8
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %while.body.if.end19_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.if.end19_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.else:                                          ; preds = %do.end
  %stream_num = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 11
  %17 = ptrtoint ptr %stream_num to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %stream_num, align 8
  %m2m_ctx14 = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 1, i32 10
  %18 = ptrtoint ptr %m2m_ctx14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_ctx14, align 4
  %cap_q_ctx.i200 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %19, i32 0, i32 7
  %call.i186201 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i200) #8
  %tobool16.not202 = icmp eq ptr %call.i186201, null
  br i1 %tobool16.not202, label %if.else.if.end19_crit_edge, label %if.else.while.body17_crit_edge

if.else.while.body17_crit_edge:                   ; preds = %if.else
  br label %while.body17

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

while.body17:                                     ; preds = %while.body17.while.body17_crit_edge, %if.else.while.body17_crit_edge
  %call.i186203 = phi ptr [ %call.i186, %while.body17.while.body17_crit_edge ], [ %call.i186201, %if.else.while.body17_crit_edge ]
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i186203, i32 noundef 6) #8
  %20 = ptrtoint ptr %m2m_ctx14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %m2m_ctx14, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %21, i32 0, i32 7
  %call.i186 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #8
  %tobool16.not = icmp eq ptr %call.i186, null
  br i1 %tobool16.not, label %while.body17.if.end19_crit_edge, label %while.body17.while.body17_crit_edge

while.body17.while.body17_crit_edge:              ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body17

while.body17.if.end19_crit_edge:                  ; preds = %while.body17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end19:                                         ; preds = %while.body17.if.end19_crit_edge, %if.else.if.end19_crit_edge, %while.body.if.end19_crit_edge, %if.then9.if.end19_crit_edge
  %22 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vq, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %23, label %if.end19.land.lhs.true69_crit_edge [
    i32 2, label %if.end19.land.lhs.true_crit_edge
    i32 10, label %if.end19.land.lhs.true_crit_edge212
    i32 3, label %if.end19.land.lhs.true_crit_edge213
    i32 8, label %if.end19.land.lhs.true_crit_edge214
    i32 5, label %if.end19.land.lhs.true_crit_edge215
    i32 7, label %if.end19.land.lhs.true_crit_edge216
    i32 12, label %if.end19.land.lhs.true_crit_edge217
    i32 14, label %if.end19.land.lhs.true_crit_edge218
  ]

if.end19.land.lhs.true_crit_edge218:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end19.land.lhs.true_crit_edge217:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end19.land.lhs.true_crit_edge216:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end19.land.lhs.true_crit_edge215:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end19.land.lhs.true_crit_edge214:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end19.land.lhs.true_crit_edge213:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end19.land.lhs.true_crit_edge212:              ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end19.land.lhs.true_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.end19.land.lhs.true69_crit_edge:               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true69

land.lhs.true:                                    ; preds = %if.end19.land.lhs.true_crit_edge, %if.end19.land.lhs.true_crit_edge212, %if.end19.land.lhs.true_crit_edge213, %if.end19.land.lhs.true_crit_edge214, %if.end19.land.lhs.true_crit_edge215, %if.end19.land.lhs.true_crit_edge216, %if.end19.land.lhs.true_crit_edge217, %if.end19.land.lhs.true_crit_edge218
  %m2m_ctx43 = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 1, i32 10
  %25 = ptrtoint ptr %m2m_ctx43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %m2m_ctx43, align 4
  %streaming.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %26, i32 0, i32 7, i32 0, i32 28
  %27 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %land.lhs.true.do.body75_crit_edge, label %lor.lhs.false45

land.lhs.true.do.body75_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body75

lor.lhs.false45:                                  ; preds = %land.lhs.true
  %28 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %23, label %lor.lhs.false45.land.lhs.true69_crit_edge [
    i32 2, label %lor.lhs.false45.if.end107_crit_edge
    i32 10, label %lor.lhs.false45.if.end107_crit_edge219
    i32 3, label %lor.lhs.false45.if.end107_crit_edge220
    i32 8, label %lor.lhs.false45.if.end107_crit_edge221
    i32 5, label %lor.lhs.false45.if.end107_crit_edge222
    i32 7, label %lor.lhs.false45.if.end107_crit_edge223
    i32 12, label %lor.lhs.false45.if.end107_crit_edge224
    i32 14, label %lor.lhs.false45.if.end107_crit_edge225
  ]

lor.lhs.false45.if.end107_crit_edge225:           ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

lor.lhs.false45.if.end107_crit_edge224:           ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

lor.lhs.false45.if.end107_crit_edge223:           ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

lor.lhs.false45.if.end107_crit_edge222:           ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

lor.lhs.false45.if.end107_crit_edge221:           ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

lor.lhs.false45.if.end107_crit_edge220:           ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

lor.lhs.false45.if.end107_crit_edge219:           ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

lor.lhs.false45.if.end107_crit_edge:              ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

lor.lhs.false45.land.lhs.true69_crit_edge:        ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true69

land.lhs.true69:                                  ; preds = %lor.lhs.false45.land.lhs.true69_crit_edge, %if.end19.land.lhs.true69_crit_edge
  %m2m_ctx71 = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 1, i32 10
  %29 = ptrtoint ptr %m2m_ctx71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %m2m_ctx71, align 4
  %streaming.i187 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %30, i32 0, i32 8, i32 0, i32 28
  %31 = ptrtoint ptr %streaming.i187 to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load.i188 = load i16, ptr %streaming.i187, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i188)
  %tobool.i189 = icmp slt i16 %bf.load.i188, 0
  br i1 %tobool.i189, label %land.lhs.true69.do.body75_crit_edge, label %land.lhs.true69.if.end107_crit_edge

land.lhs.true69.if.end107_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end107

land.lhs.true69.do.body75_crit_edge:              ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body75

do.body75:                                        ; preds = %land.lhs.true69.do.body75_crit_edge, %land.lhs.true.do.body75_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_stop_streaming.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_stop_streaming, %if.then87)) #8
          to label %cleanup [label %if.then87], !srcloc !246

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #10
  %name88 = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp91 = icmp eq i32 %33, 2
  %cond92 = select i1 %cmp91, ptr @.str.58, ptr @.str.59
  %m2m_ctx94 = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 1, i32 10
  %34 = ptrtoint ptr %m2m_ctx94 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %m2m_ctx94, align 4
  %streaming.i190 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %35, i32 0, i32 8, i32 0, i32 28
  %36 = ptrtoint ptr %streaming.i190 to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load.i191 = load i16, ptr %streaming.i190, align 4
  %bf.load.i191.lobit = lshr i16 %bf.load.i191, 15
  %37 = zext i16 %bf.load.i191.lobit to i32
  %streaming.i193 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %35, i32 0, i32 7, i32 0, i32 28
  %38 = ptrtoint ptr %streaming.i193 to i32
  call void @__asan_load2_noabort(i32 %38)
  %bf.load.i194 = load i16, ptr %streaming.i193, align 4
  %bf.load.i194.lobit = lshr i16 %bf.load.i194, 15
  %39 = zext i16 %bf.load.i194.lobit to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_stop_streaming.__UNIQUE_ID_ddebug325, ptr noundef %5, ptr noundef nonnull @.str.77, ptr noundef %name88, ptr noundef nonnull %cond92, i32 noundef %37, i32 noundef %39) #8
  br label %cleanup

if.end107:                                        ; preds = %land.lhs.true69.if.end107_crit_edge, %lor.lhs.false45.if.end107_crit_edge, %lor.lhs.false45.if.end107_crit_edge219, %lor.lhs.false45.if.end107_crit_edge220, %lor.lhs.false45.if.end107_crit_edge221, %lor.lhs.false45.if.end107_crit_edge222, %lor.lhs.false45.if.end107_crit_edge223, %lor.lhs.false45.if.end107_crit_edge224, %lor.lhs.false45.if.end107_crit_edge225
  %tobool108.not = icmp eq ptr %7, null
  br i1 %tobool108.not, label %if.end107.if.end131_crit_edge, label %do.body110

if.end107.if.end131_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end131

do.body110:                                       ; preds = %if.end107
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_stop_streaming.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_stop_streaming, %if.then122)) #8
          to label %do.end128 [label %if.then122], !srcloc !246

if.then122:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #10
  %name123 = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_stop_streaming.__UNIQUE_ID_ddebug326, ptr noundef %5, ptr noundef nonnull @.str.78, ptr noundef %name123, ptr noundef %41) #8
  br label %do.end128

do.end128:                                        ; preds = %if.then122, %do.body110
  %close = getelementptr inbounds %struct.hva_enc, ptr %7, i32 0, i32 6
  %42 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %close, align 4
  %call129 = tail call i32 %43(ptr noundef %1) #8
  %44 = ptrtoint ptr %enc3 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %enc3, align 4
  %id = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 4
  %45 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %id, align 8
  %idxprom = zext i8 %46 to i32
  %arrayidx = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 6, i32 %idxprom
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %arrayidx, align 4
  %nb_of_instances = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 7
  %48 = ptrtoint ptr %nb_of_instances to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nb_of_instances, align 4
  %dec = add i32 %49, -1
  store i32 %dec, ptr %nb_of_instances, align 4
  br label %if.end131

if.end131:                                        ; preds = %do.end128, %if.end107.if.end131_crit_edge
  %aborting = getelementptr inbounds %struct.hva_ctx, ptr %1, i32 0, i32 5
  %50 = ptrtoint ptr %aborting to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %aborting, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end131, %if.then87, %do.body75
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hva_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.hva_ctx, ptr %3, i32 0, i32 1, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @v4l2_m2m_buf_queue(ptr noundef nonnull %5, ptr noundef %vb) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @hva_open_encoder(ptr noundef %ctx, i32 noundef %streamformat, i32 noundef %pixelformat, ptr nocapture noundef writeonly %penc) unnamed_addr #2 align 64 {
entry:
  %streamformat.addr = alloca i32, align 4
  %pixelformat.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %streamformat.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %streamformat, ptr %streamformat.addr, align 4
  %1 = ptrtoint ptr %pixelformat.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %pixelformat, ptr %pixelformat.addr, align 4
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 8
  %dev2 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 8
  %nb_of_encoders.i = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 20
  %6 = ptrtoint ptr %nb_of_encoders.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nb_of_encoders.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp12.not.i = icmp eq i32 %7, 0
  br i1 %cmp12.not.i, label %entry.do.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 19, i32 %i.013.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %pixelformat1.i = getelementptr inbounds %struct.hva_enc, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %pixelformat1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %pixelformat)
  %cmp2.i = icmp eq i32 %11, %pixelformat
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %streamformat3.i = getelementptr inbounds %struct.hva_enc, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %streamformat3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %streamformat3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %streamformat)
  %cmp4.i = icmp eq i32 %13, %streamformat
  br i1 %cmp4.i, label %hva_find_encoder.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

hva_find_encoder.exit:                            ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %hva_find_encoder.exit.do.end_crit_edge, label %do.body3

hva_find_encoder.exit.do.end_crit_edge:           ; preds = %hva_find_encoder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %hva_find_encoder.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  %name = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.67, ptr noundef %name, ptr noundef nonnull %pixelformat.addr, ptr noundef nonnull %streamformat.addr) #11
  br label %cleanup

do.body3:                                         ; preds = %hva_find_encoder.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_open_encoder.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_open_encoder, %if.then8)) #8
          to label %do.end13 [label %if.then8], !srcloc !246

if.then8:                                         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  %name9 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 6
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_open_encoder.__UNIQUE_ID_ddebug299, ptr noundef %5, ptr noundef nonnull @.str.69, ptr noundef %name9, ptr noundef nonnull %pixelformat.addr, ptr noundef nonnull %streamformat.addr) #8
  br label %do.end13

do.end13:                                         ; preds = %if.then8, %do.body3
  %name14 = getelementptr inbounds %struct.hva_ctx, ptr %ctx, i32 0, i32 6
  %instance_id = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %instance_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %instance_id, align 8
  %call16 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name14, i32 noundef 100, ptr noundef nonnull @.str.70, i32 noundef %15, ptr noundef nonnull %streamformat.addr)
  %open = getelementptr inbounds %struct.hva_enc, ptr %9, i32 0, i32 5
  %16 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %open, align 4
  %call17 = call i32 %17(ptr noundef %ctx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body26, label %do.end22

do.end22:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.72, ptr noundef %name14, i32 noundef %call17) #11
  br label %cleanup

do.body26:                                        ; preds = %do.end13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_open_encoder.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_open_encoder, %if.then38)) #8
          to label %do.end44 [label %if.then38], !srcloc !246

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %9, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_open_encoder.__UNIQUE_ID_ddebug300, ptr noundef %5, ptr noundef nonnull @.str.74, ptr noundef %name14, ptr noundef %19) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then38, %do.body26
  %20 = ptrtoint ptr %penc to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %9, ptr %penc, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end44, %do.end22, %do.end
  %retval.0 = phi i32 [ %call17, %do.end22 ], [ 0, %do.end44 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hva_dbg_ctx_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_querycap(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #8
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %vdev = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdev, align 8
  %name = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 12
  %call3 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #8
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %pdev = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %call6 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.83, ptr noundef %9)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hva_enum_fmt_stream(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %nb_of_streamformats = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 24
  %6 = ptrtoint ptr %nb_of_streamformats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nb_of_streamformats, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !248

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 23, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hva_enum_fmt_frame(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %nb_of_pixelformats = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %nb_of_pixelformats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nb_of_pixelformats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge, !prof !248

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 21, i32 %5
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %10 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %pixelformat, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hva_g_fmt_stream(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %f) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %streaminfo1 = getelementptr i8, ptr %1, i32 716
  %width = getelementptr i8, ptr %1, i32 720
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fmt, align 4
  %height = getelementptr i8, ptr %1, i32 724
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height4, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr i8, ptr %1, i32 700
  %9 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %colorspace, align 8
  %colorspace7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %colorspace7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %colorspace7, align 4
  %xfer_func = getelementptr i8, ptr %1, i32 704
  %12 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xfer_func, align 4
  %xfer_func9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %14 = ptrtoint ptr %xfer_func9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %xfer_func9, align 4
  %ycbcr_enc = getelementptr i8, ptr %1, i32 708
  %15 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ycbcr_enc, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %17, align 4
  %quantization = getelementptr i8, ptr %1, i32 712
  %19 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %quantization, align 4
  %quantization12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %quantization12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %quantization12, align 4
  %22 = ptrtoint ptr %streaminfo1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %streaminfo1, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %pixelformat, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %bytesperline, align 4
  %max_stream_size = getelementptr i8, ptr %1, i32 696
  %26 = ptrtoint ptr %max_stream_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %max_stream_size, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %28 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %sizeimage, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hva_g_fmt_frame(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef writeonly %f) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %frameinfo1 = getelementptr i8, ptr %1, i32 792
  %width = getelementptr i8, ptr %1, i32 796
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fmt, align 4
  %height = getelementptr i8, ptr %1, i32 800
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height4, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %field, align 4
  %colorspace = getelementptr i8, ptr %1, i32 700
  %9 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %colorspace, align 8
  %colorspace7 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %colorspace7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %colorspace7, align 4
  %xfer_func = getelementptr i8, ptr %1, i32 704
  %12 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xfer_func, align 4
  %xfer_func9 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %14 = ptrtoint ptr %xfer_func9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %xfer_func9, align 4
  %ycbcr_enc = getelementptr i8, ptr %1, i32 708
  %15 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ycbcr_enc, align 8
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %17, align 4
  %quantization = getelementptr i8, ptr %1, i32 712
  %19 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %quantization, align 4
  %quantization12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %quantization12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %quantization12, align 4
  %22 = ptrtoint ptr %frameinfo1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %frameinfo1, align 4
  %pixelformat14 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %24 = ptrtoint ptr %pixelformat14 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %pixelformat14, align 4
  %aligned_width = getelementptr i8, ptr %1, i32 804
  %25 = ptrtoint ptr %aligned_width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %aligned_width, align 4
  %27 = load i32, ptr %frameinfo1, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %27, label %sw.default.i [
    i32 842094158, label %entry.frame_stride.exit_crit_edge
    i32 825382478, label %entry.frame_stride.exit_crit_edge36
  ]

entry.frame_stride.exit_crit_edge36:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %frame_stride.exit

entry.frame_stride.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %frame_stride.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %frame_stride.exit

frame_stride.exit:                                ; preds = %sw.default.i, %entry.frame_stride.exit_crit_edge, %entry.frame_stride.exit_crit_edge36
  %retval.0.i = phi i32 [ 0, %sw.default.i ], [ %26, %entry.frame_stride.exit_crit_edge ], [ %26, %entry.frame_stride.exit_crit_edge36 ]
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %29 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i, ptr %bytesperline, align 4
  %size = getelementptr i8, ptr %1, i32 812
  %30 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %size, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %32 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %sizeimage, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_s_fmt_stream(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %call = tail call i32 @hva_try_fmt_stream(ptr noundef %file, ptr noundef %fh, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_s_fmt_stream.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_s_fmt_stream, %if.then7)) #8
          to label %cleanup [label %if.then7], !srcloc !246

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr i8, ptr %1, i32 446
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_s_fmt_stream.__UNIQUE_ID_ddebug307, ptr noundef %5, ptr noundef nonnull @.str.85, ptr noundef %name, ptr noundef %pixelformat) #8
  br label %cleanup

if.end8:                                          ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f, align 4
  %call10 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %7, i32 noundef %9) #8
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %call10, i32 0, i32 28
  %10 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %do.body13, label %if.end31

do.body13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_s_fmt_stream.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_s_fmt_stream, %if.then25)) #8
          to label %cleanup [label %if.then25], !srcloc !246

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %name26 = getelementptr i8, ptr %1, i32 446
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_s_fmt_stream.__UNIQUE_ID_ddebug308, ptr noundef %5, ptr noundef nonnull @.str.86, ptr noundef %name26) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %fmt32 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizeimage, align 4
  %max_stream_size = getelementptr i8, ptr %1, i32 696
  %13 = ptrtoint ptr %max_stream_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %max_stream_size, align 4
  %14 = ptrtoint ptr %fmt32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fmt32, align 4
  %streaminfo = getelementptr i8, ptr %1, i32 716
  %width34 = getelementptr i8, ptr %1, i32 720
  %16 = ptrtoint ptr %width34 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %width34, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  %height37 = getelementptr i8, ptr %1, i32 724
  %19 = ptrtoint ptr %height37 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %height37, align 8
  %pixelformat39 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %pixelformat39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixelformat39, align 4
  %22 = ptrtoint ptr %streaminfo to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %streaminfo, align 8
  %flags = getelementptr i8, ptr %1, i32 684
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 8
  %or = or i32 %24, 1
  store i32 %or, ptr %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then25, %do.body13, %if.then7, %do.body
  %retval.0 = phi i32 [ 0, %if.end31 ], [ %call, %if.then7 ], [ -16, %if.then25 ], [ %call, %do.body ], [ -16, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_s_fmt_frame(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %call = tail call i32 @hva_try_fmt_frame(ptr noundef %file, ptr noundef %fh, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_s_fmt_frame.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_s_fmt_frame, %if.then7)) #8
          to label %cleanup [label %if.then7], !srcloc !246

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr i8, ptr %1, i32 446
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_s_fmt_frame.__UNIQUE_ID_ddebug309, ptr noundef %5, ptr noundef nonnull @.str.88, ptr noundef %name, ptr noundef %pixelformat) #8
  br label %cleanup

if.end8:                                          ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f, align 4
  %call10 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %7, i32 noundef %9) #8
  %streaming.i = getelementptr inbounds %struct.vb2_queue, ptr %call10, i32 0, i32 28
  %10 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %do.body13, label %if.end31

do.body13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_s_fmt_frame.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_s_fmt_frame, %if.then25)) #8
          to label %cleanup [label %if.then25], !srcloc !246

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #10
  %name26 = getelementptr i8, ptr %1, i32 446
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_s_fmt_frame.__UNIQUE_ID_ddebug310, ptr noundef %5, ptr noundef nonnull @.str.89, ptr noundef %name26) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %colorspace, align 4
  %colorspace32 = getelementptr i8, ptr %1, i32 700
  %13 = ptrtoint ptr %colorspace32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %colorspace32, align 8
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %14 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xfer_func, align 4
  %xfer_func33 = getelementptr i8, ptr %1, i32 704
  %16 = ptrtoint ptr %xfer_func33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %xfer_func33, align 4
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %ycbcr_enc = getelementptr i8, ptr %1, i32 708
  %20 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ycbcr_enc, align 8
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %quantization, align 4
  %quantization34 = getelementptr i8, ptr %1, i32 712
  %23 = ptrtoint ptr %quantization34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %quantization34, align 4
  %24 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fmt, align 4
  %add = add i32 %25, 15
  %and = and i32 %add, -16
  %frameinfo = getelementptr i8, ptr %1, i32 792
  %aligned_width = getelementptr i8, ptr %1, i32 804
  %26 = ptrtoint ptr %aligned_width to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and, ptr %aligned_width, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height, align 4
  %add35 = add i32 %28, 15
  %and36 = and i32 %add35, -16
  %aligned_height = getelementptr i8, ptr %1, i32 808
  %29 = ptrtoint ptr %aligned_height to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %and36, ptr %aligned_height, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %30 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sizeimage, align 4
  %size = getelementptr i8, ptr %1, i32 812
  %32 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %size, align 4
  %pixelformat39 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %pixelformat39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pixelformat39, align 4
  %35 = ptrtoint ptr %frameinfo to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %frameinfo, align 4
  %36 = load i32, ptr %fmt, align 4
  %width44 = getelementptr i8, ptr %1, i32 796
  %37 = ptrtoint ptr %width44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %width44, align 4
  %38 = load i32, ptr %height, align 4
  %height47 = getelementptr i8, ptr %1, i32 800
  %39 = ptrtoint ptr %height47 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %height47, align 4
  %flags = getelementptr i8, ptr %1, i32 684
  %40 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags, align 8
  %or = or i32 %41, 2
  store i32 %or, ptr %flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.then25, %do.body13, %if.then7, %do.body
  %retval.0 = phi i32 [ 0, %if.end31 ], [ %call, %if.then7 ], [ -16, %if.then25 ], [ %call, %do.body ], [ -16, %do.body13 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_try_fmt_stream(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixelformat, align 4
  %frameinfo = getelementptr i8, ptr %1, i32 792
  %8 = ptrtoint ptr %frameinfo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frameinfo, align 4
  %nb_of_encoders.i = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 20
  %10 = ptrtoint ptr %nb_of_encoders.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nb_of_encoders.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp12.not.i = icmp eq i32 %11, 0
  br i1 %cmp12.not.i, label %entry.do.body_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hva_dev, ptr %3, i32 0, i32 19, i32 %i.013.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i, align 4
  %pixelformat1.i = getelementptr inbounds %struct.hva_enc, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %pixelformat1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixelformat1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %9)
  %cmp2.i = icmp eq i32 %15, %9
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %streamformat3.i = getelementptr inbounds %struct.hva_enc, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %streamformat3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %streamformat3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %7)
  %cmp4.i = icmp eq i32 %17, %7
  br i1 %cmp4.i, label %hva_find_encoder.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.inc.i.do.body_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.body_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

hva_find_encoder.exit:                            ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %hva_find_encoder.exit.do.body_crit_edge, label %if.end10

hva_find_encoder.exit.do.body_crit_edge:          ; preds = %hva_find_encoder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %hva_find_encoder.exit.do.body_crit_edge, %for.inc.i.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_try_fmt_stream.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_try_fmt_stream, %if.then8)) #8
          to label %cleanup [label %if.then8], !srcloc !246

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr i8, ptr %1, i32 446
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_try_fmt_stream.__UNIQUE_ID_ddebug302, ptr noundef %5, ptr noundef nonnull @.str.91, ptr noundef %name, ptr noundef %pixelformat) #8
  br label %cleanup

if.end10:                                         ; preds = %hva_find_encoder.exit
  %18 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fmt, align 4
  %height12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height12, align 4
  %flags = getelementptr i8, ptr %1, i32 684
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 8
  %and = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end10
  %width16 = getelementptr i8, ptr %1, i32 796
  %24 = ptrtoint ptr %width16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %width16, align 4
  %26 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %fmt, align 4
  %height19 = getelementptr i8, ptr %1, i32 800
  %27 = ptrtoint ptr %height19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height19, align 4
  %29 = ptrtoint ptr %height12 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %height12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %19)
  %cmp.not = icmp eq i32 %25, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %21)
  %cmp23.not = icmp eq i32 %28, %21
  %or.cond = select i1 %cmp.not, i1 %cmp23.not, i1 false
  br i1 %or.cond, label %if.then14.if.end75_crit_edge, label %do.body25

if.then14.if.end75_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

do.body25:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_try_fmt_stream.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_try_fmt_stream, %if.then37)) #8
          to label %if.end75 [label %if.then37], !srcloc !246

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %name38 = getelementptr i8, ptr %1, i32 446
  %30 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fmt, align 4
  %32 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_try_fmt_stream.__UNIQUE_ID_ddebug303, ptr noundef %5, ptr noundef nonnull @.str.92, ptr noundef %name38, i32 noundef %19, i32 noundef %21, i32 noundef %31, i32 noundef %33) #8
  br label %if.end75

if.else:                                          ; preds = %if.end10
  %max_width = getelementptr inbounds %struct.hva_enc, ptr %13, i32 0, i32 3
  %34 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_width, align 4
  %max_height = getelementptr inbounds %struct.hva_enc, ptr %13, i32 0, i32 4
  %36 = ptrtoint ptr %max_height to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_height, align 4
  tail call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef 32, i32 noundef %35, i32 noundef 0, ptr noundef %height12, i32 noundef 32, i32 noundef %37, i32 noundef 0, i32 noundef 0) #8
  %38 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %19)
  %cmp49.not = icmp eq i32 %39, %19
  br i1 %cmp49.not, label %lor.lhs.false50, label %if.else.do.body54_crit_edge

if.else.do.body54_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

lor.lhs.false50:                                  ; preds = %if.else
  %40 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %height12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %21)
  %cmp52.not = icmp eq i32 %41, %21
  br i1 %cmp52.not, label %lor.lhs.false50.if.end75_crit_edge, label %lor.lhs.false50.do.body54_crit_edge

lor.lhs.false50.do.body54_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body54

lor.lhs.false50.if.end75_crit_edge:               ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

do.body54:                                        ; preds = %lor.lhs.false50.do.body54_crit_edge, %if.else.do.body54_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_try_fmt_stream.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_try_fmt_stream, %if.then66)) #8
          to label %if.end75 [label %if.then66], !srcloc !246

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #10
  %name67 = getelementptr i8, ptr %1, i32 446
  %42 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fmt, align 4
  %44 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height12, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_try_fmt_stream.__UNIQUE_ID_ddebug304, ptr noundef %5, ptr noundef nonnull @.str.93, ptr noundef %name67, i32 noundef %19, i32 noundef %21, i32 noundef %43, i32 noundef %45) #8
  br label %if.end75

if.end75:                                         ; preds = %if.then66, %do.body54, %lor.lhs.false50.if.end75_crit_edge, %if.then37, %do.body25, %if.then14.if.end75_crit_edge
  %46 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fmt, align 4
  %48 = ptrtoint ptr %height12 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %height12, align 4
  %mul.i = mul i32 %47, 3
  %mul1.i = mul i32 %mul.i, %49
  %div2.i = lshr i32 %mul1.i, 2
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %50 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %div2.i)
  %cmp79 = icmp ult i32 %51, %div2.i
  br i1 %cmp79, label %if.then80, label %if.end75.if.end82_crit_edge

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %div2.i, ptr %sizeimage, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.then80, %if.end75.if.end82_crit_edge
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %53 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %bytesperline, align 4
  %colorspace = getelementptr i8, ptr %1, i32 700
  %54 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %colorspace, align 8
  %colorspace83 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %56 = ptrtoint ptr %colorspace83 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %colorspace83, align 4
  %xfer_func = getelementptr i8, ptr %1, i32 704
  %57 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %xfer_func, align 4
  %xfer_func84 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %59 = ptrtoint ptr %xfer_func84 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %xfer_func84, align 4
  %ycbcr_enc = getelementptr i8, ptr %1, i32 708
  %60 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ycbcr_enc, align 8
  %62 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %61, ptr %62, align 4
  %quantization = getelementptr i8, ptr %1, i32 712
  %64 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %quantization, align 4
  %quantization85 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %66 = ptrtoint ptr %quantization85 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %quantization85, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %67 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %field, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %if.then8, %do.body
  %retval.0 = phi i32 [ 0, %if.end82 ], [ -22, %if.then8 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_try_fmt_frame(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #2 align 64 {
entry:
  %pixelformat = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pixelformat) #8
  %pixelformat2 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %pixelformat2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixelformat2, align 4
  %8 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pixelformat, align 4
  %streaminfo = getelementptr i8, ptr %1, i32 716
  %9 = ptrtoint ptr %streaminfo to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %streaminfo, align 8
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 8
  %nb_of_encoders.i = getelementptr inbounds %struct.hva_dev, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %nb_of_encoders.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nb_of_encoders.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp12.not.i = icmp eq i32 %14, 0
  br i1 %cmp12.not.i, label %entry.do.body_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.013.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hva_dev, ptr %12, i32 0, i32 19, i32 %i.013.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %pixelformat1.i = getelementptr inbounds %struct.hva_enc, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %pixelformat1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pixelformat1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %7)
  %cmp2.i = icmp eq i32 %18, %7
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %streamformat3.i = getelementptr inbounds %struct.hva_enc, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %streamformat3.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %streamformat3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %10)
  %cmp4.i = icmp eq i32 %20, %10
  br i1 %cmp4.i, label %hva_find_encoder.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.inc.i.do.body_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.do.body_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

hva_find_encoder.exit:                            ; preds = %land.lhs.true.i
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %hva_find_encoder.exit.do.body_crit_edge, label %if.end9

hva_find_encoder.exit.do.body_crit_edge:          ; preds = %hva_find_encoder.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %hva_find_encoder.exit.do.body_crit_edge, %for.inc.i.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_try_fmt_frame.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_try_fmt_frame, %if.then8)) #8
          to label %cleanup [label %if.then8], !srcloc !246

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr i8, ptr %1, i32 446
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_try_fmt_frame.__UNIQUE_ID_ddebug305, ptr noundef %5, ptr noundef nonnull @.str.95, ptr noundef %name, ptr noundef nonnull %pixelformat) #8
  br label %cleanup

if.end9:                                          ; preds = %hva_find_encoder.exit
  %21 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fmt, align 4
  %height11 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %height11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842094158, i32 %7)
  %switch.selectcmp.case1.i = icmp eq i32 %7, 842094158
  call void @__sanitizer_cov_trace_const_cmp4(i32 825382478, i32 %7)
  %switch.selectcmp.case2.i = icmp eq i32 %7, 825382478
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %sub = zext i1 %switch.selectcmp.i to i32
  tail call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef 32, i32 noundef 1920, i32 noundef %sub, ptr noundef %height11, i32 noundef 32, i32 noundef 1920, i32 noundef %sub, i32 noundef 0) #8
  %25 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %22)
  %cmp.not = icmp eq i32 %26, %22
  br i1 %cmp.not, label %lor.lhs.false, label %if.end9.do.body21_crit_edge

if.end9.do.body21_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21

lor.lhs.false:                                    ; preds = %if.end9
  %27 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %24)
  %cmp19.not = icmp eq i32 %28, %24
  br i1 %cmp19.not, label %lor.lhs.false.if.end41_crit_edge, label %lor.lhs.false.do.body21_crit_edge

lor.lhs.false.do.body21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body21

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.body21:                                        ; preds = %lor.lhs.false.do.body21_crit_edge, %if.end9.do.body21_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_try_fmt_frame.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_try_fmt_frame, %if.then33)) #8
          to label %if.end41 [label %if.then33], !srcloc !246

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #10
  %name34 = getelementptr i8, ptr %1, i32 446
  %29 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fmt, align 4
  %31 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %height11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_try_fmt_frame.__UNIQUE_ID_ddebug306, ptr noundef %5, ptr noundef nonnull @.str.96, ptr noundef %name34, i32 noundef %22, i32 noundef %24, i32 noundef %30, i32 noundef %32) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then33, %do.body21, %lor.lhs.false.if.end41_crit_edge
  %33 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fmt, align 4
  %add = add i32 %34, 15
  %and = and i32 %add, -16
  %35 = ptrtoint ptr %height11 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %height11, align 4
  %add44 = add i32 %36, 15
  %and45 = and i32 %add44, -16
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %37 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool46.not = icmp eq i32 %38, 0
  br i1 %tobool46.not, label %if.then47, label %if.end41.if.end49_crit_edge

if.end41.if.end49_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then47:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %colorspace, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %40 = ptrtoint ptr %xfer_func to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %xfer_func, align 4
  %41 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %41, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %43 = ptrtoint ptr %quantization to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %quantization, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end41.if.end49_crit_edge
  %44 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pixelformat, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %45, label %sw.default.i [
    i32 842094158, label %if.end49.frame_stride.exit_crit_edge
    i32 825382478, label %if.end49.frame_stride.exit_crit_edge105
  ]

if.end49.frame_stride.exit_crit_edge105:          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %frame_stride.exit

if.end49.frame_stride.exit_crit_edge:             ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %frame_stride.exit

sw.default.i:                                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %frame_stride.exit

frame_stride.exit:                                ; preds = %sw.default.i, %if.end49.frame_stride.exit_crit_edge, %if.end49.frame_stride.exit_crit_edge105
  %retval.0.i93 = phi i32 [ 0, %sw.default.i ], [ %and, %if.end49.frame_stride.exit_crit_edge ], [ %and, %if.end49.frame_stride.exit_crit_edge105 ]
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %47 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %retval.0.i93, ptr %bytesperline, align 4
  %48 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %45, label %frame_stride.exit.frame_size.exit_crit_edge [
    i32 842094158, label %frame_stride.exit.sw.bb.i_crit_edge
    i32 825382478, label %frame_stride.exit.sw.bb.i_crit_edge106
  ]

frame_stride.exit.sw.bb.i_crit_edge106:           ; preds = %frame_stride.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

frame_stride.exit.sw.bb.i_crit_edge:              ; preds = %frame_stride.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

frame_stride.exit.frame_size.exit_crit_edge:      ; preds = %frame_stride.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %frame_size.exit

sw.bb.i:                                          ; preds = %frame_stride.exit.sw.bb.i_crit_edge, %frame_stride.exit.sw.bb.i_crit_edge106
  %mul.i = mul i32 %and, 3
  %mul1.i = mul i32 %mul.i, %and45
  %div2.i = lshr exact i32 %mul1.i, 1
  br label %frame_size.exit

frame_size.exit:                                  ; preds = %sw.bb.i, %frame_stride.exit.frame_size.exit_crit_edge
  %retval.0.i94 = phi i32 [ %div2.i, %sw.bb.i ], [ 0, %frame_stride.exit.frame_size.exit_crit_edge ]
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %49 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %retval.0.i94, ptr %sizeimage, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %50 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %field, align 4
  br label %cleanup

cleanup:                                          ; preds = %frame_size.exit, %if.then8, %do.body
  %retval.0 = phi i32 [ 0, %frame_size.exit ], [ -22, %if.then8 ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pixelformat) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hva_qbuf(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %dev1 = getelementptr inbounds %struct.hva_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %type = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %entry.if.end24_crit_edge

entry.if.end24_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then:                                          ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %9, i32 noundef 1) #8
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf, align 8
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 21
  %12 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_buffers, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp3.not = icmp ult i32 %11, %13
  br i1 %cmp3.not, label %vb2_get_buffer.exit, label %do.body

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hva_qbuf.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@hva_qbuf, %if.then9)) #8
          to label %cleanup28 [label %if.then9], !srcloc !246

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr i8, ptr %1, i32 446
  %14 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %buf, align 8
  %16 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_buffers, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hva_qbuf.__UNIQUE_ID_ddebug311, ptr noundef %5, ptr noundef nonnull @.str.98, ptr noundef %name, i32 noundef %15, i32 noundef %17) #8
  br label %cleanup28

vb2_get_buffer.exit:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.vb2_queue, ptr %call, i32 0, i32 20, i32 %11
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %bytesused = getelementptr inbounds %struct.v4l2_buffer, ptr %buf, i32 0, i32 2
  %20 = ptrtoint ptr %bytesused to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bytesused, align 8
  %bytesused21 = getelementptr inbounds %struct.hva_stream, ptr %19, i32 0, i32 6
  %22 = ptrtoint ptr %bytesused21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %bytesused21, align 8
  br label %if.end24

if.end24:                                         ; preds = %vb2_get_buffer.exit, %entry.if.end24_crit_edge
  %m2m_ctx26 = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %m2m_ctx26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %m2m_ctx26, align 4
  %call27 = tail call i32 @v4l2_m2m_qbuf(ptr noundef %file, ptr noundef %24, ptr noundef %buf) #8
  br label %cleanup28

cleanup28:                                        ; preds = %if.end24, %if.then9, %do.body
  %retval.1 = phi i32 [ %call27, %if.end24 ], [ -22, %if.then9 ], [ -22, %do.body ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hva_g_parm(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %sp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %ctrls = getelementptr i8, ptr %3, i32 376
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1
  %4 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4096, ptr %parm, align 4
  %5 = ptrtoint ptr %ctrls to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctrls, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2
  %7 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %timeperframe, align 4
  %denominator = getelementptr i8, ptr %3, i32 380
  %8 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %denominator, align 4
  %denominator6 = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %denominator6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %denominator6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hva_s_parm(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %fh, ptr nocapture noundef %sp) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %ctrls = getelementptr i8, ptr %1, i32 376
  %2 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeperframe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.hva_g_parm.exit_crit_edge, label %lor.lhs.false

if.end.hva_g_parm.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %hva_g_parm.exit

lor.lhs.false:                                    ; preds = %if.end
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %denominator, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %lor.lhs.false.hva_g_parm.exit_crit_edge, label %if.end6

lor.lhs.false.hva_g_parm.exit_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %hva_g_parm.exit

hva_g_parm.exit:                                  ; preds = %lor.lhs.false.hva_g_parm.exit_crit_edge, %if.end.hva_g_parm.exit_crit_edge
  %8 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4096, ptr %parm, align 4
  %9 = ptrtoint ptr %ctrls to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctrls, align 4
  %11 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %timeperframe, align 4
  %denominator.i = getelementptr i8, ptr %1, i32 380
  %12 = ptrtoint ptr %denominator.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %denominator.i, align 4
  %denominator6.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %denominator6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %denominator6.i, align 4
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %parm, align 4
  %16 = ptrtoint ptr %ctrls to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %5, ptr %ctrls, align 4
  %17 = ptrtoint ptr %denominator to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %denominator, align 4
  %denominator15 = getelementptr i8, ptr %1, i32 380
  %19 = ptrtoint ptr %denominator15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %denominator15, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %hva_g_parm.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %hva_g_parm.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_qbuf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hva_hw_runtime_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hva_hw_runtime_resume(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 114)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !65, !67, !68, !69, !71, !72, !74, !75, !77, !78, !79, !81, !83, !84, !86, !87, !88, !89, !91, !92, !94, !95, !96, !98, !100, !101, !102, !104, !105, !107, !108, !110, !111, !112, !114, !116, !117, !118, !120, !122, !124, !125, !127, !129, !130, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !161, !163, !164, !165, !167, !168, !170, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !185, !187, !188, !189, !191, !193, !195, !196, !197, !199, !200, !202, !203, !204, !206, !207, !209, !210, !211, !213, !214, !216, !217, !219, !220, !221, !223, !224, !226, !227, !228, !230, !231, !232, !233, !235}
!llvm.module.flags = !{!237, !238, !239, !240, !241, !242, !243, !244}
!llvm.ident = !{!245}

!0 = !{ptr @__initcall__kmod_st_hva__328_1472_hva_driver_init6, !1, !"__initcall__kmod_st_hva__328_1472_hva_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1472, i32 1}
!2 = !{ptr @__exitcall_hva_driver_exit, !1, !"__exitcall_hva_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file329, !4, !"__UNIQUE_ID_file329", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1474, i32 1}
!5 = !{ptr @__UNIQUE_ID_license330, !4, !"__UNIQUE_ID_license330", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author331, !7, !"__UNIQUE_ID_author331", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1475, i32 1}
!8 = !{ptr @__UNIQUE_ID_description332, !9, !"__UNIQUE_ID_description332", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1476, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1466, i32 12}
!12 = !{ptr @hva_driver, !13, !"hva_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1462, i32 31}
!14 = !{ptr @hva_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1369, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1385, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @hva_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @hva_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1394, i32 20}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1396, i32 3}
!30 = !{ptr @hva_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @hva_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1407, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hva_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @hva_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 176, i32 4}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @register_encoders.__UNIQUE_ID_ddebug298, !38, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 184, i32 3}
!44 = !{ptr @register_encoders._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @register_encoders._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @hva_encoders, !47, !"hva_encoders", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 42, i32 30}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1295, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @hva_register_device._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @hva_register_device._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1303, i32 3}
!55 = !{ptr @hva_register_device._entry.22, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @hva_register_device._entry_ptr.24, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1316, i32 43}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1321, i32 3}
!61 = !{ptr @hva_register_device._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @hva_register_device._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @hva_m2m_ops, !64, !"hva_m2m_ops", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 899, i32 34}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 879, i32 3}
!67 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @hva_job_ready.__UNIQUE_ID_ddebug316, !66, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 885, i32 3}
!71 = !{ptr @hva_job_ready.__UNIQUE_ID_ddebug317, !70, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 891, i32 3}
!74 = !{ptr @hva_job_ready.__UNIQUE_ID_ddebug318, !73, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 868, i32 2}
!77 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @hva_job_abort.__UNIQUE_ID_ddebug315, !76, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!79 = !{ptr @hva_fops, !80, !"hva_fops", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1270, i32 42}
!81 = !{ptr @hva_open.__key, !82, !"__key", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1177, i32 2}
!83 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1184, i32 3}
!86 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @hva_open._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @hva_open._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @hva_open.__key.38, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1191, i32 2}
!91 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1197, i32 3}
!94 = !{ptr @hva_open._entry.40, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @hva_open._entry_ptr.42, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1206, i32 41}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1217, i32 2}
!100 = !{ptr @hva_open._entry.44, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @hva_open._entry_ptr.46, !99, !"_entry_ptr", i1 false, i1 false}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!104 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @hva_ctrls_setup._key, !106, !"_key", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 700, i32 2}
!107 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 786, i32 3}
!110 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @hva_ctrls_setup.__UNIQUE_ID_ddebug314, !109, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!112 = !{ptr @hva_ctrl_ops, !113, !"hva_ctrl_ops", i1 false, i1 false}
!113 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 689, i32 35}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 622, i32 2}
!116 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @hva_s_ctrl.__UNIQUE_ID_ddebug312, !115, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 642, i32 5}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 649, i32 5}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 680, i32 3}
!124 = !{ptr @hva_s_ctrl.__UNIQUE_ID_ddebug313, !123, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!125 = !{ptr @hva_qops, !126, !"hva_qops", i1 false, i1 false}
!126 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1114, i32 29}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 917, i32 2}
!129 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @hva_queue_setup.__UNIQUE_ID_ddebug319, !128, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!131 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 945, i32 4}
!135 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @hva_buf_prepare.__UNIQUE_ID_ddebug320, !134, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 959, i32 4}
!139 = !{ptr @hva_buf_prepare.__UNIQUE_ID_ddebug321, !138, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 975, i32 4}
!142 = !{ptr @hva_buf_prepare.__UNIQUE_ID_ddebug322, !141, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1004, i32 2}
!145 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @hva_start_streaming.__UNIQUE_ID_ddebug323, !144, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1028, i32 3}
!149 = !{ptr @hva_start_streaming._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @hva_start_streaming._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 201, i32 3}
!153 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @hva_open_encoder._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @hva_open_encoder._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 206, i32 2}
!158 = !{ptr @hva_open_encoder.__UNIQUE_ID_ddebug299, !157, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 210, i32 41}
!161 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 216, i32 3}
!163 = !{ptr @hva_open_encoder._entry.71, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @hva_open_encoder._entry_ptr.73, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 221, i32 2}
!167 = !{ptr @hva_open_encoder.__UNIQUE_ID_ddebug300, !166, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1073, i32 2}
!170 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @hva_stop_streaming.__UNIQUE_ID_ddebug324, !169, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!172 = !{ptr @.str.77, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1092, i32 3}
!174 = !{ptr @hva_stop_streaming.__UNIQUE_ID_ddebug325, !173, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!175 = !{ptr @.str.78, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1101, i32 3}
!177 = !{ptr @hva_stop_streaming.__UNIQUE_ID_ddebug326, !176, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!178 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1239, i32 3}
!180 = !{ptr @hva_release.__UNIQUE_ID_ddebug327, !179, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!181 = !{ptr @.str.80, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1262, i32 2}
!183 = !{ptr @hva_release._entry, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @hva_release._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.81, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 237, i32 2}
!187 = !{ptr @.str.82, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @hva_dbg_summary.__UNIQUE_ID_ddebug301, !186, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!189 = !{ptr @hva_ioctl_ops, !190, !"hva_ioctl_ops", i1 false, i1 false}
!190 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 588, i32 36}
!191 = !{ptr @.str.83, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 262, i32 49}
!193 = !{ptr @.str.84, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 459, i32 3}
!195 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @hva_s_fmt_stream.__UNIQUE_ID_ddebug307, !194, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!197 = !{ptr @.str.86, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 466, i32 3}
!199 = !{ptr @hva_s_fmt_stream.__UNIQUE_ID_ddebug308, !198, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!200 = !{ptr @.str.87, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 490, i32 3}
!202 = !{ptr @.str.88, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @hva_s_fmt_frame.__UNIQUE_ID_ddebug309, !201, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!204 = !{ptr @.str.89, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 497, i32 3}
!206 = !{ptr @hva_s_fmt_frame.__UNIQUE_ID_ddebug310, !205, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!207 = !{ptr @.str.90, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 348, i32 3}
!209 = !{ptr @.str.91, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @hva_try_fmt_stream.__UNIQUE_ID_ddebug302, !208, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!211 = !{ptr @.str.92, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 364, i32 4}
!213 = !{ptr @hva_try_fmt_stream.__UNIQUE_ID_ddebug303, !212, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!214 = !{ptr @.str.93, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 379, i32 4}
!216 = !{ptr @hva_try_fmt_stream.__UNIQUE_ID_ddebug304, !215, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!217 = !{ptr @.str.94, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 411, i32 3}
!219 = !{ptr @.str.95, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @hva_try_fmt_frame.__UNIQUE_ID_ddebug305, !218, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!221 = !{ptr @.str.96, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 429, i32 3}
!223 = !{ptr @hva_try_fmt_frame.__UNIQUE_ID_ddebug306, !222, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!224 = !{ptr @.str.97, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 574, i32 4}
!226 = !{ptr @.str.98, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @hva_qbuf.__UNIQUE_ID_ddebug311, !225, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!228 = !{ptr @.str.99, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1442, i32 2}
!230 = !{ptr @.str.100, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @hva_remove._entry, !229, !"_entry", i1 false, i1 false}
!232 = !{ptr @hva_remove._entry_ptr, !229, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @hva_match_types, !234, !"hva_match_types", i1 false, i1 false}
!234 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1453, i32 34}
!235 = !{ptr @hva_pm_ops, !236, !"hva_pm_ops", i1 false, i1 false}
!236 = !{!"../drivers/media/platform/sti/hva/hva-v4l2.c", i32 1448, i32 32}
!237 = !{i32 1, !"wchar_size", i32 2}
!238 = !{i32 1, !"min_enum_size", i32 4}
!239 = !{i32 8, !"branch-target-enforcement", i32 0}
!240 = !{i32 8, !"sign-return-address", i32 0}
!241 = !{i32 8, !"sign-return-address-all", i32 0}
!242 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!243 = !{i32 7, !"uwtable", i32 1}
!244 = !{i32 7, !"frame-pointer", i32 2}
!245 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!246 = !{i64 2148989571, i64 2148989576, i64 2148989589, i64 2148989633, i64 2148989667, i64 2148989688}
!247 = !{i8 0, i8 2}
!248 = !{!"branch_weights", i32 2000, i32 1}
