; ModuleID = '/llk/IR_all_yes/drivers/media/platform/m2m-deinterlace.c_pt.bc'
source_filename = "../drivers/media/platform/m2m-deinterlace.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
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
%struct.v4l2_m2m_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.deinterlace_fmt = type { i32, i32 }
%struct.deinterlace_q_data = type { i32, i32, i32, ptr, i32 }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.deinterlace_dev = type { %struct.v4l2_device, %struct.video_device, %struct.atomic_t, %struct.mutex, %struct.spinlock, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
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
%struct.deinterlace_ctx = type { %struct.v4l2_fh, ptr, i32, i32, i32, ptr }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.92, i32 }
%union.anon.92 = type { i32 }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.93 }
%union.anon.93 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.95, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.95 = type { i8 }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }

@__UNIQUE_ID_description298 = internal constant [88 x i8] c"m2m_deinterlace.description=mem2mem device which supports deinterlacing using dmaengine\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [70 x i8] c"m2m_deinterlace.author=Javier Martin <javier.martin@vista-silicon.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [60 x i8] c"m2m_deinterlace.file=drivers/media/platform/m2m-deinterlace\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [28 x i8] c"m2m_deinterlace.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version302 = internal constant [30 x i8] c"m2m_deinterlace.version=0.0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m2m_deinterlace\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_debug = internal constant [22 x i8] c"m2m_deinterlace.debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype303 = internal constant [36 x i8] c"m2m_deinterlace.parmtype=debug:bool\00", section ".modinfo", align 1
@__initcall__kmod_m2m_deinterlace__304_1007_deinterlace_pdrv_init6 = internal global ptr @deinterlace_pdrv_init, section ".initcall6.init", align 4
@deinterlace_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @deinterlace_probe, ptr @deinterlace_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_deinterlace_pdrv_exit = internal global ptr @deinterlace_pdrv_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m2m-deinterlace\00", [16 x i8] zeroinitializer }, align 32
@deinterlace_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pcdev->irqlock\00", [16 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 939, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DMA does not support INTERLEAVE\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"deinterlace_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/platform/m2m-deinterlace.c\00", [55 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry_ptr = internal global ptr @deinterlace_probe._entry, section ".printk_index", align 4
@deinterlace_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pcdev->dev_mutex\00", [46 x i8] zeroinitializer }, align 32
@deinterlace_videodev = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @deinterlace_fops, i32 67141632, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"m2m-deinterlace\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release_empty, ptr @deinterlace_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.7, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry_ptr.14 = internal global ptr @deinterlace_probe._entry.12, section ".printk_index", align 4
@deinterlace_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.7, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016%s: mem2mem-deinterlace Device registered as /dev/video%d\0A\00", [35 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry_ptr.17 = internal global ptr @deinterlace_probe._entry.15, section ".printk_index", align 4
@m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @deinterlace_device_run, ptr @deinterlace_job_ready, ptr @deinterlace_job_abort }, [20 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.7, i32 970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", [59 x i8] zeroinitializer }, align 32
@deinterlace_probe._entry_ptr.20 = internal global ptr @deinterlace_probe._entry.18, section ".printk_index", align 4
@deinterlace_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @deinterlace_open, ptr @deinterlace_release }, [60 x i8] zeroinitializer }, align 32
@deinterlace_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr @vidioc_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr @vidioc_g_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr @vidioc_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr @vidioc_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr null, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vidioc_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@deinterlace_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.7, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: %s: Created instance %p, m2m_ctx: %p\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"deinterlace_open\00", [47 x i8] zeroinitializer }, align 32
@deinterlace_open._entry_ptr = internal global ptr @deinterlace_open._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@deinterlace_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @deinterlace_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @deinterlace_buf_prepare, ptr null, ptr null, ptr null, ptr null, ptr @deinterlace_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@formats = internal global { [2 x %struct.deinterlace_fmt], [16 x i8] } { [2 x %struct.deinterlace_fmt] [%struct.deinterlace_fmt { i32 842093913, i32 3 }, %struct.deinterlace_fmt { i32 1448695129, i32 3 }], [16 x i8] zeroinitializer }, align 32
@q_data = internal global { [2 x %struct.deinterlace_q_data], [56 x i8] } zeroinitializer, align 32
@deinterlace_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.7, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: %s: get %d buffer(s) of size %d each.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"deinterlace_queue_setup\00", [40 x i8] zeroinitializer }, align 32
@deinterlace_queue_setup._entry_ptr = internal global ptr @deinterlace_queue_setup._entry, section ".printk_index", align 4
@deinterlace_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.7, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s: type: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"deinterlace_buf_prepare\00", [40 x i8] zeroinitializer }, align 32
@deinterlace_buf_prepare._entry_ptr = internal global ptr @deinterlace_buf_prepare._entry, section ".printk_index", align 4
@deinterlace_buf_prepare._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.7, i32 770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: %s: %s data will not fit into plane (%lu < %lu)\0A\00", [41 x i8] zeroinitializer }, align 32
@deinterlace_buf_prepare._entry_ptr.29 = internal global ptr @deinterlace_buf_prepare._entry.27, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@deinterlace_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.7, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: Releasing instance %p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"deinterlace_release\00", [44 x i8] zeroinitializer }, align 32
@deinterlace_release._entry_ptr = internal global ptr @deinterlace_release._entry, section ".printk_index", align 4
@vidioc_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.7, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: %s queue busy\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vidioc_s_fmt\00", [19 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr = internal global ptr @vidioc_s_fmt._entry, section ".printk_index", align 4
@vidioc_s_fmt._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.7, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013%s: Couldn't set format type %d, wxh: %dx%d. fmt: %d, field: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr.37 = internal global ptr @vidioc_s_fmt._entry.35, section ".printk_index", align 4
@vidioc_s_fmt._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.7, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017%s: %s: Setting format for type %d, wxh: %dx%d, fmt: %d, field: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr.40 = internal global ptr @vidioc_s_fmt._entry.38, section ".printk_index", align 4
@vidioc_streamon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.7, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: src and dst formats don't match.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vidioc_streamon\00", [16 x i8] zeroinitializer }, align 32
@vidioc_streamon._entry_ptr = internal global ptr @vidioc_streamon._entry, section ".printk_index", align 4
@vidioc_streamon._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.7, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s: src and dst field conversion [(%d)->(%d)] not supported.\0A\00", [32 x i8] zeroinitializer }, align 32
@vidioc_streamon._entry_ptr.45 = internal global ptr @vidioc_streamon._entry.43, section ".printk_index", align 4
@vidioc_streamon._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.7, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@vidioc_streamon._entry_ptr.47 = internal global ptr @vidioc_streamon._entry.46, section ".printk_index", align 4
@deinterlace_device_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.7, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: %s: %s: DMA try issue.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"deinterlace_device_run\00", [41 x i8] zeroinitializer }, align 32
@deinterlace_device_run._entry_ptr = internal global ptr @deinterlace_device_run._entry, section ".printk_index", align 4
@deinterlace_device_run._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.7, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s: %s: %s: yuv420 interlaced tb.\0A\00", [59 x i8] zeroinitializer }, align 32
@deinterlace_device_run._entry_ptr.52 = internal global ptr @deinterlace_device_run._entry.50, section ".printk_index", align 4
@deinterlace_device_run._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.7, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017%s: %s: %s: yuv420 interlaced line doubling.\0A\00", [48 x i8] zeroinitializer }, align 32
@deinterlace_device_run._entry_ptr.55 = internal global ptr @deinterlace_device_run._entry.53, section ".printk_index", align 4
@deinterlace_device_run._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.7, i32 410, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: %s: %s: yuyv interlaced_tb.\0A\00", [61 x i8] zeroinitializer }, align 32
@deinterlace_device_run._entry_ptr.58 = internal global ptr @deinterlace_device_run._entry.56, section ".printk_index", align 4
@deinterlace_device_run._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.49, ptr @.str.7, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s: %s: %s: yuyv interlaced line doubling.\0A\00", [50 x i8] zeroinitializer }, align 32
@deinterlace_device_run._entry_ptr.61 = internal global ptr @deinterlace_device_run._entry.59, section ".printk_index", align 4
@deinterlace_device_run._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.49, ptr @.str.7, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: %s: %s: DMA issue done.\0A\00", [33 x i8] zeroinitializer }, align 32
@deinterlace_device_run._entry_ptr.64 = internal global ptr @deinterlace_device_run._entry.62, section ".printk_index", align 4
@deinterlace_issue_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.7, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: Acquiring kernel pointers to buffers failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"deinterlace_issue_dma\00", [42 x i8] zeroinitializer }, align 32
@deinterlace_issue_dma._entry_ptr = internal global ptr @deinterlace_issue_dma._entry, section ".printk_index", align 4
@deinterlace_issue_dma._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.7, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: DMA interleaved prep error\0A\00", [62 x i8] zeroinitializer }, align 32
@deinterlace_issue_dma._entry_ptr.69 = internal global ptr @deinterlace_issue_dma._entry.67, section ".printk_index", align 4
@deinterlace_issue_dma._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.66, ptr @.str.7, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014%s: DMA submit error %d with src=0x%x dst=0x%x len=0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@deinterlace_issue_dma._entry_ptr.72 = internal global ptr @deinterlace_issue_dma._entry.70, section ".printk_index", align 4
@dma_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.7, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s: %s: dma transfers completed.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma_callback\00", [19 x i8] zeroinitializer }, align 32
@dma_callback._entry_ptr = internal global ptr @dma_callback._entry, section ".printk_index", align 4
@deinterlace_job_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.7, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: %s: Task ready\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"deinterlace_job_ready\00", [42 x i8] zeroinitializer }, align 32
@deinterlace_job_ready._entry_ptr = internal global ptr @deinterlace_job_ready._entry, section ".printk_index", align 4
@deinterlace_job_ready._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.7, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: Task not ready to run\0A\00", [63 x i8] zeroinitializer }, align 32
@deinterlace_job_ready._entry_ptr.79 = internal global ptr @deinterlace_job_ready._entry.77, section ".printk_index", align 4
@deinterlace_job_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.7, i32 172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s: Aborting task\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"deinterlace_job_abort\00", [42 x i8] zeroinitializer }, align 32
@deinterlace_job_abort._entry_ptr = internal global ptr @deinterlace_job_abort._entry, section ".printk_index", align 4
@deinterlace_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.7, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: Removing mem2mem-deinterlace\00", [61 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"deinterlace_remove\00", [45 x i8] zeroinitializer }, align 32
@deinterlace_remove._entry_ptr = internal global ptr @deinterlace_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 9]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 9]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 9]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.93 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 25, i32 1 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 27, i32 13 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"deinterlace_pdrv\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1000, i32 31 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 1004, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 930, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 939, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 949, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [21 x i8] c"deinterlace_videodev\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 903, i32 34 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 958, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 963, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [8 x i8] c"m2m_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 913, i32 34 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 970, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"deinterlace_fops\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 894, i32 42 }
@___asan_gen_.169 = private unnamed_addr constant [22 x i8] c"deinterlace_ioctl_ops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 699, i32 36 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 872, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"deinterlace_qops\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 787, i32 29 }
@___asan_gen_.184 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 45, i32 31 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"q_data\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 88, i32 34 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 754, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 764, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 769, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 1163, i32 7 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 883, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 592, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 598, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 620, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 667, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 677, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 686, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 358, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 382, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 393, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 409, i32 4 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 416, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 425, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 228, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 330, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 341, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 199, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 156, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 160, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 172, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.365 = private constant [44 x i8] c"../drivers/media/platform/m2m-deinterlace.c\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 991, i32 2 }
@llvm.compiler.used = appending global [131 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_debugtype303, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__UNIQUE_ID_version302, ptr @__exitcall_deinterlace_pdrv_exit, ptr @__initcall__kmod_m2m_deinterlace__304_1007_deinterlace_pdrv_init6, ptr @__modver_attr, ptr @__param_debug, ptr @deinterlace_buf_prepare._entry, ptr @deinterlace_buf_prepare._entry.27, ptr @deinterlace_buf_prepare._entry_ptr, ptr @deinterlace_buf_prepare._entry_ptr.29, ptr @deinterlace_device_run._entry, ptr @deinterlace_device_run._entry.50, ptr @deinterlace_device_run._entry.53, ptr @deinterlace_device_run._entry.56, ptr @deinterlace_device_run._entry.59, ptr @deinterlace_device_run._entry.62, ptr @deinterlace_device_run._entry_ptr, ptr @deinterlace_device_run._entry_ptr.52, ptr @deinterlace_device_run._entry_ptr.55, ptr @deinterlace_device_run._entry_ptr.58, ptr @deinterlace_device_run._entry_ptr.61, ptr @deinterlace_device_run._entry_ptr.64, ptr @deinterlace_issue_dma._entry, ptr @deinterlace_issue_dma._entry.67, ptr @deinterlace_issue_dma._entry.70, ptr @deinterlace_issue_dma._entry_ptr, ptr @deinterlace_issue_dma._entry_ptr.69, ptr @deinterlace_issue_dma._entry_ptr.72, ptr @deinterlace_job_abort._entry, ptr @deinterlace_job_abort._entry_ptr, ptr @deinterlace_job_ready._entry, ptr @deinterlace_job_ready._entry.77, ptr @deinterlace_job_ready._entry_ptr, ptr @deinterlace_job_ready._entry_ptr.79, ptr @deinterlace_open._entry, ptr @deinterlace_open._entry_ptr, ptr @deinterlace_pdrv_exit, ptr @deinterlace_probe._entry, ptr @deinterlace_probe._entry.12, ptr @deinterlace_probe._entry.15, ptr @deinterlace_probe._entry.18, ptr @deinterlace_probe._entry_ptr, ptr @deinterlace_probe._entry_ptr.14, ptr @deinterlace_probe._entry_ptr.17, ptr @deinterlace_probe._entry_ptr.20, ptr @deinterlace_queue_setup._entry, ptr @deinterlace_queue_setup._entry_ptr, ptr @deinterlace_release._entry, ptr @deinterlace_release._entry_ptr, ptr @deinterlace_remove._entry, ptr @deinterlace_remove._entry_ptr, ptr @dma_callback._entry, ptr @dma_callback._entry_ptr, ptr @vidioc_s_fmt._entry, ptr @vidioc_s_fmt._entry.35, ptr @vidioc_s_fmt._entry.38, ptr @vidioc_s_fmt._entry_ptr, ptr @vidioc_s_fmt._entry_ptr.37, ptr @vidioc_s_fmt._entry_ptr.40, ptr @vidioc_streamon._entry, ptr @vidioc_streamon._entry.43, ptr @vidioc_streamon._entry.46, ptr @vidioc_streamon._entry_ptr, ptr @vidioc_streamon._entry_ptr.45, ptr @vidioc_streamon._entry_ptr.47, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @deinterlace_pdrv, ptr @.str.3, ptr @deinterlace_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @deinterlace_probe.__key.10, ptr @.str.11, ptr @deinterlace_videodev, ptr @.str.13, ptr @.str.16, ptr @m2m_ops, ptr @.str.19, ptr @deinterlace_fops, ptr @deinterlace_ioctl_ops, ptr @.str.21, ptr @.str.22, ptr @deinterlace_qops, ptr @formats, ptr @q_data, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_videodev to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @q_data to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_buf_prepare._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_streamon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_streamon._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_streamon._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_device_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_device_run._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_device_run._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_device_run._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_device_run._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_device_run._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_issue_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_issue_dma._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_issue_dma._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_job_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_job_ready._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_job_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @deinterlace_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_pdrv_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @deinterlace_pdrv, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @deinterlace_pdrv_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @deinterlace_pdrv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1632, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %irqlock = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.4, ptr noundef nonnull @deinterlace_probe.__key, i16 noundef signext 3) #7
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 13, ptr noundef nonnull %mask) #7
  %call2 = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef null) #7
  %dma_chan = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %dma_chan to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %dma_chan, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.body.cleanup_crit_edge, label %if.end6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.body
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call2, align 4
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %cap_mask, align 4
  %6 = and i32 %5, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #10
  br label %rel_dma

if.end15:                                         ; preds = %if.end6
  %call17 = call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.rel_dma_crit_edge

if.end15.rel_dma_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %rel_dma

if.end20:                                         ; preds = %if.end15
  %busy = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 2
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %busy, i32 noundef 4) #7
  %7 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %busy, align 4
  %dev_mutex = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 3
  call void @__mutex_init(ptr noundef %dev_mutex, ptr noundef nonnull @.str.11, ptr noundef nonnull @deinterlace_probe.__key.10) #7
  %vfd24 = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 1
  %8 = call ptr @memcpy(ptr %vfd24, ptr @deinterlace_videodev, i32 1352)
  %lock = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 1, i32 26
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev_mutex, ptr %lock, align 8
  %v4l2_dev27 = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 1, i32 7
  %10 = ptrtoint ptr %v4l2_dev27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %v4l2_dev27, align 4
  %call.i98 = call i32 @__video_register_device(ptr noundef %vfd24, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool29.not = icmp eq i32 %call.i98, 0
  br i1 %tobool29.not, label %if.end36, label %do.end33

do.end33:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name) #10
  br label %unreg_dev

if.end36:                                         ; preds = %if.end20
  %driver_data.i.i = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 1, i32 5, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %name42 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %num = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 1, i32 16
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %num, align 4
  %conv = zext i16 %13 to i32
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name42, i32 noundef %conv) #10
  %driver_data.i.i99 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i99 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i99, align 4
  %call45 = call ptr @v4l2_m2m_init(ptr noundef nonnull @m2m_ops) #7
  %m2m_dev = getelementptr inbounds %struct.deinterlace_dev, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call45, ptr %m2m_dev, align 8
  %cmp.i = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end51, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end51:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name42) #10
  %16 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_dev, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @video_unregister_device(ptr noundef %vfd24) #7
  br label %unreg_dev

unreg_dev:                                        ; preds = %do.end51, %do.end33
  %ret.0 = phi i32 [ %call.i98, %do.end33 ], [ %18, %do.end51 ]
  call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #7
  br label %rel_dma

rel_dma:                                          ; preds = %unreg_dev, %if.end15.rel_dma_crit_edge, %do.end13
  %ret.1 = phi i32 [ %call17, %if.end15.rel_dma_crit_edge ], [ %ret.0, %unreg_dev ], [ -19, %do.end13 ]
  %19 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_chan, align 4
  call void @dma_release_channel(ptr noundef %20) #7
  br label %cleanup

cleanup:                                          ; preds = %rel_dma, %if.end36.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %rel_dma ], [ -12, %entry.cleanup_crit_edge ], [ -19, %do.body.cleanup_crit_edge ], [ 0, %if.end36.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name) #10
  %m2m_dev = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev, align 8
  tail call void @v4l2_m2m_release(ptr noundef %3) #7
  %vfd = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %vfd) #7
  tail call void @v4l2_device_unregister(ptr noundef %1) #7
  %dma_chan = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dma_chan, align 4
  tail call void @dma_release_channel(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 212) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @video_devdata(ptr noundef %file) #7
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call2) #7
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %private_data, align 4
  %dev = getelementptr inbounds %struct.deinterlace_ctx, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %dev, align 8
  %m2m_dev = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_dev, align 8
  %call4 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %6, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #7
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %m2m_ctx, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call4 to i32
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 40) #11
  %xt = getelementptr inbounds %struct.deinterlace_ctx, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %xt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i50, ptr %xt, align 8
  %tobool16.not = icmp eq ptr %call7.i.i50, null
  br i1 %tobool16.not, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %colorspace = getelementptr inbounds %struct.deinterlace_ctx, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %colorspace, align 8
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #7
  %12 = load i8, ptr @debug, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool20.not = icmp eq i8 %12, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %do.end

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %m2m_ctx, align 4
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name, ptr noundef nonnull @.str.22, ptr noundef nonnull %call7.i.i, ptr noundef %14) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end18.cleanup_crit_edge, %if.then17, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then9 ], [ -12, %if.then17 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = load i8, ptr @debug, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %3 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %4, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef nonnull @.str.32, ptr noundef %1) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  tail call void @v4l2_fh_del(ptr noundef %1) #7
  tail call void @v4l2_fh_exit(ptr noundef %1) #7
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %6) #7
  %xt = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %xt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %xt, align 4
  tail call void @kfree(ptr noundef %8) #7
  tail call void @kfree(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_init(ptr noundef %priv, ptr noundef %src_vq, ptr noundef %dst_vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  store ptr @deinterlace_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %5 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %6 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %timestamp_flags, align 4
  %dev = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %dev2 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dev2, align 4
  %12 = load ptr, ptr %dev, align 4
  %dev_mutex = getelementptr inbounds %struct.deinterlace_dev, ptr %12, i32 0, i32 3
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev_mutex, ptr %lock, align 4
  store ptr @formats, ptr getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 0, i32 3), align 4
  store i32 640, ptr @q_data, align 4
  store i32 480, ptr getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 0, i32 1), align 4
  store i32 460800, ptr getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 0, i32 2), align 4
  store i32 5, ptr getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 0, i32 4), align 4
  %call = tail call i32 @vb2_queue_init(ptr noundef %src_vq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dst_vq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %dst_vq, align 4
  %io_modes5 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 1
  %15 = ptrtoint ptr %io_modes5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 19, ptr %io_modes5, align 4
  %drv_priv6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %16 = ptrtoint ptr %drv_priv6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %priv, ptr %drv_priv6, align 4
  %buf_struct_size7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %17 = ptrtoint ptr %buf_struct_size7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 744, ptr %buf_struct_size7, align 4
  %ops8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %18 = ptrtoint ptr %ops8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @deinterlace_qops, ptr %ops8, align 4
  %mem_ops9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %19 = ptrtoint ptr %mem_ops9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops9, align 4
  %timestamp_flags10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %20 = ptrtoint ptr %timestamp_flags10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16384, ptr %timestamp_flags10, align 4
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 8
  %dev14 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %25 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %dev14, align 4
  %26 = load ptr, ptr %dev, align 4
  %dev_mutex16 = getelementptr inbounds %struct.deinterlace_dev, ptr %26, i32 0, i32 3
  %lock17 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %27 = ptrtoint ptr %lock17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev_mutex16, ptr %lock17, align 4
  store ptr @formats, ptr getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 1, i32 3), align 4
  store i32 640, ptr getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 1), align 4
  store i32 480, ptr getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 1, i32 1), align 4
  store i32 460800, ptr getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 1, i32 2), align 4
  store i32 8, ptr getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 0, i32 4), align 4
  %call18 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body.i [
    i32 2, label %entry.get_q_data.exit_crit_edge
    i32 1, label %sw.bb1.i
  ]

entry.get_q_data.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_q_data.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/m2m-deinterlace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 98, 0\0A.popsection", ""() #7, !srcloc !190
  unreachable

get_q_data.exit:                                  ; preds = %sw.bb1.i, %entry.get_q_data.exit_crit_edge
  %retval.0.i = phi ptr [ getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 1), %sw.bb1.i ], [ @q_data, %entry.get_q_data.exit_crit_edge ]
  %fmt = getelementptr inbounds %struct.deinterlace_q_data, ptr %retval.0.i, i32 0, i32 3
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fmt, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %10)
  %cond = icmp eq i32 %10, 842093913
  %11 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %retval.0.i, align 4
  %height = getelementptr inbounds %struct.deinterlace_q_data, ptr %retval.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %12, 3
  %mul2 = mul i32 %mul, %14
  %div21 = lshr i32 %mul2, 1
  br label %sw.epilog

sw.default:                                       ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mul6 = shl i32 %12, 1
  %mul7 = mul i32 %mul6, %14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %size.0 = phi i32 [ %div21, %sw.bb ], [ %mul7, %sw.default ]
  %15 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %nplanes, align 4
  %16 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %3, ptr %nbuffers, align 4
  %17 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %size.0, ptr %sizes, align 4
  %18 = load i8, ptr @debug, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %sw.epilog.do.end12_crit_edge, label %do.end

sw.epilog.do.end12_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.deinterlace_ctx, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %20, i32 0, i32 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name, ptr noundef nonnull @.str.24, i32 noundef %3, i32 noundef %size.0) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end, %sw.epilog.do.end12_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %4 = load i8, ptr @debug, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.deinterlace_ctx, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name, ptr noundef nonnull @.str.26, i32 noundef %8) #10
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %9 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vb, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %12, label %do.body.i [
    i32 2, label %do.end6.get_q_data.exit_crit_edge
    i32 1, label %sw.bb1.i
  ]

do.end6.get_q_data.exit_crit_edge:                ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_q_data.exit

do.body.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/m2m-deinterlace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 98, 0\0A.popsection", ""() #7, !srcloc !190
  unreachable

get_q_data.exit:                                  ; preds = %sw.bb1.i, %do.end6.get_q_data.exit_crit_edge
  %retval.0.i = phi ptr [ getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 1), %sw.bb1.i ], [ @q_data, %do.end6.get_q_data.exit_crit_edge ]
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %14 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %get_q_data.exit
  %sizeimage = getelementptr inbounds %struct.deinterlace_q_data, ptr %retval.0.i, i32 0, i32 2
  %16 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sizeimage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp11.not = icmp eq i32 %17, 0
  br i1 %cmp11.not, label %vb2_plane_size.exit.cleanup_crit_edge, label %do.body14

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

vb2_plane_size.exit.thread:                       ; preds = %get_q_data.exit
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 8
  %sizeimage57 = getelementptr inbounds %struct.deinterlace_q_data, ptr %retval.0.i, i32 0, i32 2
  %20 = ptrtoint ptr %sizeimage57 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sizeimage57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp1158 = icmp ult i32 %19, %21
  br i1 %cmp1158, label %do.body14.thread, label %if.then.i55

do.body14:                                        ; preds = %vb2_plane_size.exit
  %22 = load i8, ptr @debug, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool15.not = icmp eq i8 %22, 0
  br i1 %tobool15.not, label %do.body14.cleanup_crit_edge, label %do.body14.vb2_plane_size.exit51_crit_edge

do.body14.vb2_plane_size.exit51_crit_edge:        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_plane_size.exit51

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body14.thread:                                 ; preds = %vb2_plane_size.exit.thread
  %23 = load i8, ptr @debug, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool15.not59 = icmp eq i8 %23, 0
  br i1 %tobool15.not59, label %do.body14.thread.cleanup_crit_edge, label %if.then.i49

do.body14.thread.cleanup_crit_edge:               ; preds = %do.body14.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i49:                                      ; preds = %do.body14.thread
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit51

vb2_plane_size.exit51:                            ; preds = %if.then.i49, %do.body14.vb2_plane_size.exit51_crit_edge
  %26 = phi i32 [ %21, %if.then.i49 ], [ %17, %do.body14.vb2_plane_size.exit51_crit_edge ]
  %retval.0.i50 = phi i32 [ %25, %if.then.i49 ], [ 0, %do.body14.vb2_plane_size.exit51_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.deinterlace_ctx, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn.in, align 4
  %name2663 = getelementptr inbounds %struct.v4l2_device, ptr %.pn, i32 0, i32 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name2663, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i50, i32 noundef %26) #10
  br label %cleanup

if.then.i55:                                      ; preds = %vb2_plane_size.exit.thread
  %28 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %21)
  %cmp1.i = icmp ult i32 %29, %21
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i55.if.end42.i_crit_edge

if.then.i55.if.end42.i_crit_edge:                 ; preds = %if.then.i55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i55
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !191

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 1163, i32 noundef 9, ptr noundef null) #7
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

cleanup:                                          ; preds = %if.end42.i, %vb2_plane_size.exit51, %do.body14.thread.cleanup_crit_edge, %do.body14.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit51 ], [ -22, %do.body14.cleanup_crit_edge ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end42.i ], [ -22, %do.body14.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deinterlace_buf_queue(ptr noundef %vb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  tail call void @v4l2_m2m_buf_queue(ptr noundef %5, ptr noundef %vb) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.3, i32 noundef 16) #7
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.3, i32 noundef 32) #7
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.3, i32 noundef 32) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
  %and.i = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1.i = icmp eq i32 %2, 0
  br i1 %cmp1.i, label %if.then.i.if.then6.critedge.i_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i.if.then6.critedge.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.critedge.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %num.1.i = phi i32 [ 0, %entry.for.inc.i_crit_edge ], [ 1, %if.then.i.for.inc.i_crit_edge ]
  %3 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 1, i32 1), align 4
  %and.1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.enum_fmt.exit_crit_edge, label %if.then.1.i

for.inc.i.enum_fmt.exit_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %enum_fmt.exit

if.then.1.i:                                      ; preds = %for.inc.i
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1.i, i32 %5)
  %cmp1.1.i = icmp eq i32 %num.1.i, %5
  br i1 %cmp1.1.i, label %if.then.1.i.if.then6.critedge.i_crit_edge, label %if.then.1.i.enum_fmt.exit_crit_edge

if.then.1.i.enum_fmt.exit_crit_edge:              ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %enum_fmt.exit

if.then.1.i.if.then6.critedge.i_crit_edge:        ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.critedge.i

if.then6.critedge.i:                              ; preds = %if.then.1.i.if.then6.critedge.i_crit_edge, %if.then.i.if.then6.critedge.i_crit_edge
  %i.018.lcssa.i = phi i32 [ 0, %if.then.i.if.then6.critedge.i_crit_edge ], [ 1, %if.then.1.i.if.then6.critedge.i_crit_edge ]
  %arrayidx7.i = getelementptr [2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 %i.018.lcssa.i
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %8 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pixelformat.i, align 4
  br label %enum_fmt.exit

enum_fmt.exit:                                    ; preds = %if.then6.critedge.i, %if.then.1.i.enum_fmt.exit_crit_edge, %for.inc.i.enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then6.critedge.i ], [ -22, %if.then.1.i.enum_fmt.exit_crit_edge ], [ -22, %for.inc.i.enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
  %and.i = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  %1 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1.i = icmp eq i32 %2, 0
  br i1 %cmp1.i, label %if.then.i.if.then6.critedge.i_crit_edge, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i.if.then6.critedge.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.critedge.i

for.inc.i:                                        ; preds = %if.then.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %num.1.i = phi i32 [ 0, %entry.for.inc.i_crit_edge ], [ 1, %if.then.i.for.inc.i_crit_edge ]
  %3 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 1, i32 1), align 4
  %and.1.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.enum_fmt.exit_crit_edge, label %if.then.1.i

for.inc.i.enum_fmt.exit_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %enum_fmt.exit

if.then.1.i:                                      ; preds = %for.inc.i
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num.1.i, i32 %5)
  %cmp1.1.i = icmp eq i32 %num.1.i, %5
  br i1 %cmp1.1.i, label %if.then.1.i.if.then6.critedge.i_crit_edge, label %if.then.1.i.enum_fmt.exit_crit_edge

if.then.1.i.enum_fmt.exit_crit_edge:              ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %enum_fmt.exit

if.then.1.i.if.then6.critedge.i_crit_edge:        ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6.critedge.i

if.then6.critedge.i:                              ; preds = %if.then.1.i.if.then6.critedge.i_crit_edge, %if.then.i.if.then6.critedge.i_crit_edge
  %i.018.lcssa.i = phi i32 [ 0, %if.then.i.if.then6.critedge.i_crit_edge ], [ 1, %if.then.1.i.if.then6.critedge.i_crit_edge ]
  %arrayidx7.i = getelementptr [2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 %i.018.lcssa.i
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %8 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pixelformat.i, align 4
  br label %enum_fmt.exit

enum_fmt.exit:                                    ; preds = %if.then6.critedge.i, %if.then.1.i.enum_fmt.exit_crit_edge, %for.inc.i.enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then6.critedge.i ], [ -22, %if.then.1.i.enum_fmt.exit_crit_edge ], [ -22, %for.inc.i.enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call.i = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.vidioc_g_fmt.exit_crit_edge, label %if.end.i

entry.vidioc_g_fmt.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vidioc_g_fmt.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %5, label %do.body.i.i [
    i32 2, label %if.end.i.get_q_data.exit.i_crit_edge
    i32 1, label %sw.bb1.i.i
  ]

if.end.i.get_q_data.exit.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_q_data.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_q_data.exit.i

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/m2m-deinterlace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 98, 0\0A.popsection", ""() #7, !srcloc !190
  unreachable

get_q_data.exit.i:                                ; preds = %sw.bb1.i.i, %if.end.i.get_q_data.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 1), %sw.bb1.i.i ], [ @q_data, %if.end.i.get_q_data.exit.i_crit_edge ]
  %7 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %retval.0.i.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %9 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.deinterlace_q_data, ptr %retval.0.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height.i, align 4
  %height5.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height5.i, align 4
  %field.i = getelementptr inbounds %struct.deinterlace_q_data, ptr %retval.0.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %field.i, align 4
  %field7.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %field7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %field7.i, align 4
  %fmt8.i = getelementptr inbounds %struct.deinterlace_q_data, ptr %retval.0.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %fmt8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fmt8.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pixelformat.i, align 4
  %21 = load ptr, ptr %fmt8.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %23)
  %cond.i = icmp eq i32 %23, 842093913
  %24 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %retval.0.i.i, align 4
  %mul.i = mul i32 %25, 3
  %div41.i = lshr i32 %mul.i, 1
  %mul16.i = shl i32 %25, 1
  %mul16.sink.i = select i1 %cond.i, i32 %div41.i, i32 %mul16.i
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul16.sink.i, ptr %26, align 4
  %sizeimage.i = getelementptr inbounds %struct.deinterlace_q_data, ptr %retval.0.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sizeimage.i, align 4
  %sizeimage20.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %30 = ptrtoint ptr %sizeimage20.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %sizeimage20.i, align 4
  %colorspace.i = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 3
  %31 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %colorspace.i, align 4
  %colorspace22.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %33 = ptrtoint ptr %colorspace22.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %colorspace22.i, align 4
  br label %vidioc_g_fmt.exit

vidioc_g_fmt.exit:                                ; preds = %get_q_data.exit.i, %entry.vidioc_g_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %get_q_data.exit.i ], [ -22, %entry.vidioc_g_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx.i = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx.i, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call.i = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.vidioc_g_fmt.exit_crit_edge, label %if.end.i

entry.vidioc_g_fmt.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vidioc_g_fmt.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %5, label %do.body.i.i [
    i32 2, label %if.end.i.get_q_data.exit.i_crit_edge
    i32 1, label %sw.bb1.i.i
  ]

if.end.i.get_q_data.exit.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_q_data.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_q_data.exit.i

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/m2m-deinterlace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 98, 0\0A.popsection", ""() #7, !srcloc !190
  unreachable

get_q_data.exit.i:                                ; preds = %sw.bb1.i.i, %if.end.i.get_q_data.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 1), %sw.bb1.i.i ], [ @q_data, %if.end.i.get_q_data.exit.i_crit_edge ]
  %7 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %retval.0.i.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %9 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.deinterlace_q_data, ptr %retval.0.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height.i, align 4
  %height5.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height5.i, align 4
  %field.i = getelementptr inbounds %struct.deinterlace_q_data, ptr %retval.0.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %field.i, align 4
  %field7.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %field7.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %field7.i, align 4
  %fmt8.i = getelementptr inbounds %struct.deinterlace_q_data, ptr %retval.0.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %fmt8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fmt8.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %pixelformat.i, align 4
  %21 = load ptr, ptr %fmt8.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %23)
  %cond.i = icmp eq i32 %23, 842093913
  %24 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %retval.0.i.i, align 4
  %mul.i = mul i32 %25, 3
  %div41.i = lshr i32 %mul.i, 1
  %mul16.i = shl i32 %25, 1
  %mul16.sink.i = select i1 %cond.i, i32 %div41.i, i32 %mul16.i
  %26 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul16.sink.i, ptr %26, align 4
  %sizeimage.i = getelementptr inbounds %struct.deinterlace_q_data, ptr %retval.0.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sizeimage.i, align 4
  %sizeimage20.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %30 = ptrtoint ptr %sizeimage20.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %sizeimage20.i, align 4
  %colorspace.i = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 3
  %31 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %colorspace.i, align 4
  %colorspace22.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %33 = ptrtoint ptr %colorspace22.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %colorspace22.i, align 4
  br label %vidioc_g_fmt.exit

vidioc_g_fmt.exit:                                ; preds = %get_q_data.exit.i, %entry.vidioc_g_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %get_q_data.exit.i ], [ -22, %entry.vidioc_g_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %pixelformat.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
  %and.i.i = and i32 %2, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

entry.for.inc.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = load i32, ptr @formats, align 4
  %4 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2.i.i = icmp eq i32 %3, %5
  br i1 %cmp2.i.i, label %land.lhs.true.i.i.find_format.exit.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i.find_format.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %entry.for.inc.i.i_crit_edge
  %6 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 1, i32 1), align 4
  %and.1.i.i = and i32 %6, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.if.then.i_crit_edge, label %land.lhs.true.1.i.i

for.inc.i.i.if.then.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.1.i.i:                              ; preds = %for.inc.i.i
  %7 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp2.1.i.i = icmp eq i32 %7, %9
  br i1 %cmp2.1.i.i, label %land.lhs.true.1.i.i.find_format.exit.i_crit_edge, label %land.lhs.true.1.i.i.if.then.i_crit_edge

land.lhs.true.1.i.i.if.then.i_crit_edge:          ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.1.i.i.find_format.exit.i_crit_edge: ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit.i

find_format.exit.i:                               ; preds = %land.lhs.true.1.i.i.find_format.exit.i_crit_edge, %land.lhs.true.i.i.find_format.exit.i_crit_edge
  %k.0.lcssa.ph.i.i = phi i32 [ 0, %land.lhs.true.i.i.find_format.exit.i_crit_edge ], [ 1, %land.lhs.true.1.i.i.find_format.exit.i_crit_edge ]
  %arrayidx618.i.i = getelementptr [2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i.i
  %tobool.not.i = icmp eq ptr %arrayidx618.i.i, null
  br i1 %tobool.not.i, label %find_format.exit.i.if.then.i_crit_edge, label %lor.lhs.false.i

find_format.exit.i.if.then.i_crit_edge:           ; preds = %find_format.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %find_format.exit.i
  %types.i = getelementptr [2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i.i, i32 1
  %10 = ptrtoint ptr %types.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %types.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %find_format.exit.i.if.then.i_crit_edge, %land.lhs.true.1.i.i.if.then.i_crit_edge, %for.inc.i.i.if.then.i_crit_edge
  %12 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 842093913, ptr %pixelformat.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %colorspace.i = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 3
  %13 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %colorspace4.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field.i, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %17, label %if.then13.i [
    i32 8, label %if.end.i.vidioc_try_fmt_vid_cap.exit_crit_edge
    i32 9, label %if.end.i.vidioc_try_fmt_vid_cap.exit_crit_edge5
    i32 1, label %if.end.i.vidioc_try_fmt_vid_cap.exit_crit_edge6
  ]

if.end.i.vidioc_try_fmt_vid_cap.exit_crit_edge6:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vidioc_try_fmt_vid_cap.exit

if.end.i.vidioc_try_fmt_vid_cap.exit_crit_edge5:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vidioc_try_fmt_vid_cap.exit

if.end.i.vidioc_try_fmt_vid_cap.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vidioc_try_fmt_vid_cap.exit

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %field.i, align 4
  br label %vidioc_try_fmt_vid_cap.exit

vidioc_try_fmt_vid_cap.exit:                      ; preds = %if.then13.i, %if.end.i.vidioc_try_fmt_vid_cap.exit_crit_edge, %if.end.i.vidioc_try_fmt_vid_cap.exit_crit_edge5, %if.end.i.vidioc_try_fmt_vid_cap.exit_crit_edge6
  %fmt1.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %20 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixelformat.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %21)
  %cond.i.i = icmp eq i32 %21, 842093913
  %22 = ptrtoint ptr %fmt1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fmt1.i.i, align 4
  %mul.i.i = mul i32 %23, 3
  %div1.i.i = lshr i32 %mul.i.i, 1
  %mul7.i.i = shl i32 %23, 1
  %mul7.sink.i.i = select i1 %cond.i.i, i32 %div1.i.i, i32 %mul7.i.i
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul7.sink.i.i, ptr %24, align 4
  %height.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height.i.i, align 4
  %mul13.i.i = mul i32 %mul7.sink.i.i, %27
  %sizeimage.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %28 = ptrtoint ptr %sizeimage.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul13.i.i, ptr %sizeimage.i.i, align 4
  %call1 = tail call fastcc i32 @vidioc_s_fmt(ptr noundef %priv, ptr noundef %f)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %pixelformat.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
  %and.i.i = and i32 %2, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

entry.for.inc.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %3 = load i32, ptr @formats, align 4
  %4 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2.i.i = icmp eq i32 %3, %5
  br i1 %cmp2.i.i, label %land.lhs.true.i.i.find_format.exit.i_crit_edge, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

land.lhs.true.i.i.find_format.exit.i_crit_edge:   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %entry.for.inc.i.i_crit_edge
  %6 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 1, i32 1), align 4
  %and.1.i.i = and i32 %6, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.if.then.i_crit_edge, label %land.lhs.true.1.i.i

for.inc.i.i.if.then.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.1.i.i:                              ; preds = %for.inc.i.i
  %7 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp2.1.i.i = icmp eq i32 %7, %9
  br i1 %cmp2.1.i.i, label %land.lhs.true.1.i.i.find_format.exit.i_crit_edge, label %land.lhs.true.1.i.i.if.then.i_crit_edge

land.lhs.true.1.i.i.if.then.i_crit_edge:          ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true.1.i.i.find_format.exit.i_crit_edge: ; preds = %land.lhs.true.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit.i

find_format.exit.i:                               ; preds = %land.lhs.true.1.i.i.find_format.exit.i_crit_edge, %land.lhs.true.i.i.find_format.exit.i_crit_edge
  %k.0.lcssa.ph.i.i = phi i32 [ 0, %land.lhs.true.i.i.find_format.exit.i_crit_edge ], [ 1, %land.lhs.true.1.i.i.find_format.exit.i_crit_edge ]
  %arrayidx618.i.i = getelementptr [2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i.i
  %tobool.not.i = icmp eq ptr %arrayidx618.i.i, null
  br i1 %tobool.not.i, label %find_format.exit.i.if.then.i_crit_edge, label %lor.lhs.false.i

find_format.exit.i.if.then.i_crit_edge:           ; preds = %find_format.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %find_format.exit.i
  %types.i = getelementptr [2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i.i, i32 1
  %10 = ptrtoint ptr %types.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %types.i, align 4
  %and.i = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.i_crit_edge

lor.lhs.false.i.if.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %find_format.exit.i.if.then.i_crit_edge, %land.lhs.true.1.i.i.if.then.i_crit_edge, %for.inc.i.i.if.then.i_crit_edge
  %12 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 842093913, ptr %pixelformat.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %lor.lhs.false.i.if.end.i_crit_edge
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %colorspace.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not.i = icmp eq i32 %14, 0
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end.i.if.end8.i_crit_edge

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %colorspace.i, align 4
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i.if.end8.i_crit_edge
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field.i, align 4
  %.off.i = add i32 %17, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end8.i.vidioc_try_fmt_vid_out.exit_crit_edge, label %if.then13.i

if.end8.i.vidioc_try_fmt_vid_out.exit_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vidioc_try_fmt_vid_out.exit

if.then13.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %field.i, align 4
  br label %vidioc_try_fmt_vid_out.exit

vidioc_try_fmt_vid_out.exit:                      ; preds = %if.then13.i, %if.end8.i.vidioc_try_fmt_vid_out.exit_crit_edge
  %fmt1.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %19 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pixelformat.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %20)
  %cond.i.i = icmp eq i32 %20, 842093913
  %21 = ptrtoint ptr %fmt1.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fmt1.i.i, align 4
  %mul.i.i = mul i32 %22, 3
  %div1.i.i = lshr i32 %mul.i.i, 1
  %mul7.i.i = shl i32 %22, 1
  %mul7.sink.i.i = select i1 %cond.i.i, i32 %div1.i.i, i32 %mul7.i.i
  %23 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul7.sink.i.i, ptr %23, align 4
  %height.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height.i.i, align 4
  %mul13.i.i = mul i32 %mul7.sink.i.i, %26
  %sizeimage.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %sizeimage.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul13.i.i, ptr %sizeimage.i.i, align 4
  %call1 = tail call fastcc i32 @vidioc_s_fmt(ptr noundef %priv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then3, label %vidioc_try_fmt_vid_out.exit.cleanup_crit_edge

vidioc_try_fmt_vid_out.exit.cleanup_crit_edge:    ; preds = %vidioc_try_fmt_vid_out.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %vidioc_try_fmt_vid_out.exit
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %colorspace.i, align 4
  %colorspace4 = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 3
  %30 = ptrtoint ptr %colorspace4 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %colorspace4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %vidioc_try_fmt_vid_out.exit.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr nocapture noundef %f) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
  %and.i = and i32 %2, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %land.lhs.true.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %entry
  %3 = load i32, ptr @formats, align 4
  %4 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2.i = icmp eq i32 %3, %5
  br i1 %cmp2.i, label %land.lhs.true.i.find_format.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i.find_format.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %6 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 1, i32 1), align 4
  %and.1.i = and i32 %6, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.if.then_crit_edge, label %land.lhs.true.1.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %7 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp2.1.i = icmp eq i32 %7, %9
  br i1 %cmp2.1.i, label %land.lhs.true.1.i.find_format.exit_crit_edge, label %land.lhs.true.1.i.if.then_crit_edge

land.lhs.true.1.i.if.then_crit_edge:              ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true.1.i.find_format.exit_crit_edge:     ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit

find_format.exit:                                 ; preds = %land.lhs.true.1.i.find_format.exit_crit_edge, %land.lhs.true.i.find_format.exit_crit_edge
  %k.0.lcssa.ph.i = phi i32 [ 0, %land.lhs.true.i.find_format.exit_crit_edge ], [ 1, %land.lhs.true.1.i.find_format.exit_crit_edge ]
  %arrayidx618.i = getelementptr [2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i
  %tobool.not = icmp eq ptr %arrayidx618.i, null
  br i1 %tobool.not, label %find_format.exit.if.then_crit_edge, label %lor.lhs.false

find_format.exit.if.then_crit_edge:               ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %find_format.exit
  %types = getelementptr [2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i, i32 1
  %10 = ptrtoint ptr %types to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %types, align 4
  %and = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %find_format.exit.if.then_crit_edge, %land.lhs.true.1.i.if.then_crit_edge, %for.inc.i.if.then_crit_edge
  %12 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 842093913, ptr %pixelformat.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %colorspace = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 3
  %13 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %colorspace, align 4
  %colorspace4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %15 = ptrtoint ptr %colorspace4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %colorspace4, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %17, label %if.then13 [
    i32 8, label %if.end.if.end16_crit_edge
    i32 9, label %if.end.if.end16_crit_edge29
    i32 1, label %if.end.if.end16_crit_edge30
  ]

if.end.if.end16_crit_edge30:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end.if.end16_crit_edge29:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %field, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge, %if.end.if.end16_crit_edge29, %if.end.if.end16_crit_edge30
  %fmt1.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %20 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %21)
  %cond.i = icmp eq i32 %21, 842093913
  %22 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fmt1.i, align 4
  %mul.i = mul i32 %23, 3
  %div1.i = lshr i32 %mul.i, 1
  %mul7.i = shl i32 %23, 1
  %mul7.sink.i = select i1 %cond.i, i32 %div1.i, i32 %mul7.i
  %24 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul7.sink.i, ptr %24, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %26 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height.i, align 4
  %mul13.i = mul i32 %mul7.sink.i, %27
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %28 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul13.i, ptr %sizeimage.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
  %and.i = and i32 %2, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %land.lhs.true.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %entry
  %3 = load i32, ptr @formats, align 4
  %4 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp2.i = icmp eq i32 %3, %5
  br i1 %cmp2.i, label %land.lhs.true.i.find_format.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i.find_format.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %6 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 1, i32 1), align 4
  %and.1.i = and i32 %6, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.if.then_crit_edge, label %land.lhs.true.1.i

for.inc.i.if.then_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %7 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 1), align 4
  %8 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp2.1.i = icmp eq i32 %7, %9
  br i1 %cmp2.1.i, label %land.lhs.true.1.i.find_format.exit_crit_edge, label %land.lhs.true.1.i.if.then_crit_edge

land.lhs.true.1.i.if.then_crit_edge:              ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true.1.i.find_format.exit_crit_edge:     ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit

find_format.exit:                                 ; preds = %land.lhs.true.1.i.find_format.exit_crit_edge, %land.lhs.true.i.find_format.exit_crit_edge
  %k.0.lcssa.ph.i = phi i32 [ 0, %land.lhs.true.i.find_format.exit_crit_edge ], [ 1, %land.lhs.true.1.i.find_format.exit_crit_edge ]
  %arrayidx618.i = getelementptr [2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i
  %tobool.not = icmp eq ptr %arrayidx618.i, null
  br i1 %tobool.not, label %find_format.exit.if.then_crit_edge, label %lor.lhs.false

find_format.exit.if.then_crit_edge:               ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %find_format.exit
  %types = getelementptr [2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i, i32 1
  %10 = ptrtoint ptr %types to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %types, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %find_format.exit.if.then_crit_edge, %land.lhs.true.1.i.if.then_crit_edge, %for.inc.i.if.then_crit_edge
  %12 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 842093913, ptr %pixelformat.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool4.not = icmp eq i32 %14, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %colorspace, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %field, align 4
  %.off = add i32 %17, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end8.if.end16_crit_edge, label %if.then13

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %field, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end8.if.end16_crit_edge
  %fmt1.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %19 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %20)
  %cond.i = icmp eq i32 %20, 842093913
  %21 = ptrtoint ptr %fmt1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fmt1.i, align 4
  %mul.i = mul i32 %22, 3
  %div1.i = lshr i32 %mul.i, 1
  %mul7.i = shl i32 %22, 1
  %mul7.sink.i = select i1 %cond.i, i32 %div1.i, i32 %mul7.i
  %23 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %mul7.sink.i, ptr %23, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %height.i, align 4
  %mul13.i = mul i32 %mul7.sink.i, %26
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul13.i, ptr %sizeimage.i, align 4
  ret i32 0
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
declare dso_local i32 @v4l2_m2m_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_streamon(ptr noundef %file, ptr nocapture noundef readonly %priv, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 0, i32 3), align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = load ptr, ptr getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 1, i32 3), align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %5)
  %cmp.not = icmp eq i32 %2, %5
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %7, i32 0, i32 4
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 0, i32 4), align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %8, label %if.end.cleanup_crit_edge [
    i32 6, label %sw.bb
    i32 5, label %sw.bb22
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %10 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 1, i32 4), align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %10, label %do.end12 [
    i32 1, label %sw.bb.sw.epilog_crit_edge
    i32 9, label %sw.bb.sw.epilog_crit_edge58
  ]

sw.bb.sw.epilog_crit_edge58:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end12:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %dev14 = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 1
  %12 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev14, align 4
  %name16 = getelementptr inbounds %struct.v4l2_device, ptr %13, i32 0, i32 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name16, i32 noundef 6, i32 noundef %10) #10
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  %14 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 1, i32 4), align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %14, label %do.end31 [
    i32 1, label %sw.bb22.sw.epilog_crit_edge
    i32 8, label %sw.bb22.sw.epilog_crit_edge59
  ]

sw.bb22.sw.epilog_crit_edge59:                    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end31:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  %dev33 = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 1
  %16 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev33, align 4
  %name35 = getelementptr inbounds %struct.v4l2_device, ptr %17, i32 0, i32 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name35, i32 noundef 5, i32 noundef %14) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb22.sw.epilog_crit_edge, %sw.bb22.sw.epilog_crit_edge59, %sw.bb.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge58
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %18 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %m2m_ctx, align 4
  %call41 = tail call i32 @v4l2_m2m_streamon(ptr noundef %file, ptr noundef %19, i32 noundef %type) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end31, %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end31 ], [ %call41, %sw.epilog ], [ -22, %do.end12 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vidioc_s_fmt(ptr nocapture noundef readonly %ctx, ptr nocapture noundef %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %5, label %do.body.i [
    i32 2, label %if.end.if.end5_crit_edge
    i32 1, label %sw.bb1.i
  ]

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/m2m-deinterlace.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 98, 0\0A.popsection", ""() #7, !srcloc !190
  unreachable

if.end5:                                          ; preds = %sw.bb1.i, %if.end.if.end5_crit_edge
  %retval.0.i = phi ptr [ getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 1), %sw.bb1.i ], [ @q_data, %if.end.if.end5_crit_edge ]
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call, i32 0, i32 21
  %7 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not = icmp eq i32 %8, 0
  br i1 %cmp.i.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %10, i32 0, i32 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name, ptr noundef nonnull @.str.34) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
  %and.i = and i32 %11, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end9.for.inc.i_crit_edge, label %land.lhs.true.i

if.end9.for.inc.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end9
  %12 = load i32, ptr @formats, align 4
  %13 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp2.i = icmp eq i32 %12, %14
  br i1 %cmp2.i, label %land.lhs.true.i.find_format.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i.find_format.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %if.end9.for.inc.i_crit_edge
  %15 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 1, i32 1), align 4
  %and.1.i = and i32 %15, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.find_format.exit.thread_crit_edge, label %land.lhs.true.1.i

for.inc.i.find_format.exit.thread_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit.thread

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %16 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 1), align 4
  %17 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %18)
  %cmp2.1.i = icmp eq i32 %16, %18
  br i1 %cmp2.1.i, label %land.lhs.true.1.i.find_format.exit_crit_edge, label %land.lhs.true.1.i.find_format.exit.thread_crit_edge

land.lhs.true.1.i.find_format.exit.thread_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit.thread

land.lhs.true.1.i.find_format.exit_crit_edge:     ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit

find_format.exit.thread:                          ; preds = %land.lhs.true.1.i.find_format.exit.thread_crit_edge, %for.inc.i.find_format.exit.thread_crit_edge
  %fmt118 = getelementptr inbounds %struct.deinterlace_q_data, ptr %retval.0.i, i32 0, i32 3
  %19 = ptrtoint ptr %fmt118 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %fmt118, align 4
  br label %do.end16

find_format.exit:                                 ; preds = %land.lhs.true.1.i.find_format.exit_crit_edge, %land.lhs.true.i.find_format.exit_crit_edge
  %k.0.lcssa.ph.i = phi i32 [ 0, %land.lhs.true.i.find_format.exit_crit_edge ], [ 1, %land.lhs.true.1.i.find_format.exit_crit_edge ]
  %arrayidx618.i = getelementptr [2 x %struct.deinterlace_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i
  %fmt = getelementptr inbounds %struct.deinterlace_q_data, ptr %retval.0.i, i32 0, i32 3
  %20 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx618.i, ptr %fmt, align 4
  %tobool12.not = icmp eq ptr %arrayidx618.i, null
  br i1 %tobool12.not, label %find_format.exit.do.end16_crit_edge, label %if.end28

find_format.exit.do.end16_crit_edge:              ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end16:                                         ; preds = %find_format.exit.do.end16_crit_edge, %find_format.exit.thread
  %dev18 = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 1
  %21 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev18, align 4
  %name20 = getelementptr inbounds %struct.v4l2_device, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %f, align 4
  %fmt23 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %25 = ptrtoint ptr %fmt23 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fmt23, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %27 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %height, align 4
  %29 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pixelformat.i, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %31 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %field, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name20, i32 noundef %24, i32 noundef %26, i32 noundef %28, i32 noundef %30, i32 noundef %32) #10
  br label %cleanup

if.end28:                                         ; preds = %find_format.exit
  %fmt29 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %33 = ptrtoint ptr %fmt29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %fmt29, align 4
  %35 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %retval.0.i, align 4
  %height33 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %height33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %height33, align 4
  %height34 = getelementptr inbounds %struct.deinterlace_q_data, ptr %retval.0.i, i32 0, i32 1
  %38 = ptrtoint ptr %height34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %height34, align 4
  %field36 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %39 = ptrtoint ptr %field36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %field36, align 4
  %field37 = getelementptr inbounds %struct.deinterlace_q_data, ptr %retval.0.i, i32 0, i32 4
  %41 = ptrtoint ptr %field37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %field37, align 4
  %42 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %43)
  %cond = icmp eq i32 %43, 842093913
  %44 = ptrtoint ptr %fmt29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %fmt29, align 4
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %45, 3
  %div116 = lshr i32 %mul, 1
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %46 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div116, ptr %bytesperline, align 4
  %47 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %retval.0.i, align 4
  %49 = ptrtoint ptr %height34 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %height34, align 4
  %mul45 = mul i32 %48, 3
  %mul46 = mul i32 %mul45, %50
  %div47117 = lshr i32 %mul46, 1
  br label %do.body59

sw.default:                                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %mul51 = shl i32 %45, 1
  %bytesperline53 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %51 = ptrtoint ptr %bytesperline53 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul51, ptr %bytesperline53, align 4
  %52 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %retval.0.i, align 4
  %54 = ptrtoint ptr %height34 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %height34, align 4
  %mul56 = shl i32 %53, 1
  %mul57 = mul i32 %mul56, %55
  br label %do.body59

do.body59:                                        ; preds = %sw.default, %sw.bb
  %mul57.sink = phi i32 [ %div47117, %sw.bb ], [ %mul57, %sw.default ]
  %56 = getelementptr inbounds %struct.deinterlace_q_data, ptr %retval.0.i, i32 0, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %mul57.sink, ptr %56, align 4
  %58 = load i8, ptr @debug, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool60.not = icmp eq i8 %58, 0
  br i1 %tobool60.not, label %do.body59.cleanup_crit_edge, label %do.end65

do.body59.cleanup_crit_edge:                      ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end65:                                         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #9
  %dev67 = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 1
  %59 = ptrtoint ptr %dev67 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev67, align 4
  %name69 = getelementptr inbounds %struct.v4l2_device, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %f, align 4
  %63 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %retval.0.i, align 4
  %65 = ptrtoint ptr %height34 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %height34, align 4
  %67 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %fmt, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %68, align 4
  %71 = ptrtoint ptr %field37 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %field37, align 4
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef %name69, ptr noundef nonnull @.str.34, i32 noundef %62, i32 noundef %64, i32 noundef %66, i32 noundef %70, i32 noundef %72) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end65, %do.body59.cleanup_crit_edge, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -22, %do.end16 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.end65 ], [ 0, %do.body59.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_streamon(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deinterlace_device_run(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %busy = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %busy, i32 noundef 4) #7
  %2 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %busy, align 4
  %3 = load i8, ptr @debug, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %5, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, ptr noundef %name, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.49) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %6 = load ptr, ptr getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 1, i32 3), align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %8)
  %cond = icmp eq i32 %8, 842093913
  %9 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 1, i32 4), align 4
  %10 = and i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %10)
  %switch = icmp eq i32 %10, 8
  %11 = load i8, ptr @debug, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  br i1 %cond, label %sw.bb, label %sw.default46

sw.bb:                                            ; preds = %do.end5
  br i1 %switch, label %do.body8, label %do.body27

do.body8:                                         ; preds = %sw.bb
  br i1 %tobool9.not, label %do.body8.do.end25_crit_edge, label %do.end16

do.body8.do.end25_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end25

do.end16:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %name20 = getelementptr inbounds %struct.v4l2_device, ptr %13, i32 0, i32 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name20, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.49) #10
  br label %do.end25

do.end25:                                         ; preds = %do.end16, %do.body8.do.end25_crit_edge
  tail call fastcc void @deinterlace_issue_dma(ptr noundef %priv, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @deinterlace_issue_dma(ptr noundef %priv, i32 noundef 1, i32 noundef 0)
  tail call fastcc void @deinterlace_issue_dma(ptr noundef %priv, i32 noundef 2, i32 noundef 0)
  tail call fastcc void @deinterlace_issue_dma(ptr noundef %priv, i32 noundef 3, i32 noundef 0)
  br label %do.body89

do.body27:                                        ; preds = %sw.bb
  br i1 %tobool9.not, label %do.body27.do.end44_crit_edge, label %do.end35

do.body27.do.end44_crit_edge:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

do.end35:                                         ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %name39 = getelementptr inbounds %struct.v4l2_device, ptr %15, i32 0, i32 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef %name39, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.49) #10
  br label %do.end44

do.end44:                                         ; preds = %do.end35, %do.body27.do.end44_crit_edge
  tail call fastcc void @deinterlace_issue_dma(ptr noundef %priv, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @deinterlace_issue_dma(ptr noundef %priv, i32 noundef 6, i32 noundef 0)
  tail call fastcc void @deinterlace_issue_dma(ptr noundef %priv, i32 noundef 2, i32 noundef 0)
  tail call fastcc void @deinterlace_issue_dma(ptr noundef %priv, i32 noundef 7, i32 noundef 0)
  br label %do.body89

sw.default46:                                     ; preds = %do.end5
  br i1 %switch, label %do.body49, label %do.body69

do.body49:                                        ; preds = %sw.default46
  br i1 %tobool9.not, label %do.body49.do.body89_crit_edge, label %do.end57

do.body49.do.body89_crit_edge:                    ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body89

do.end57:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %name61 = getelementptr inbounds %struct.v4l2_device, ptr %17, i32 0, i32 4
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %name61, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.49) #10
  br label %do.body89

do.body69:                                        ; preds = %sw.default46
  br i1 %tobool9.not, label %do.body69.do.body89_crit_edge, label %do.end77

do.body69.do.body89_crit_edge:                    ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body89

do.end77:                                         ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %name81 = getelementptr inbounds %struct.v4l2_device, ptr %19, i32 0, i32 4
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name81, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.49) #10
  br label %do.body89

do.body89:                                        ; preds = %do.end77, %do.body69.do.body89_crit_edge, %do.end57, %do.body49.do.body89_crit_edge, %do.end44, %do.end25
  %.sink133 = phi i32 [ 4, %do.end44 ], [ 4, %do.end25 ], [ 9, %do.end57 ], [ 9, %do.body49.do.body89_crit_edge ], [ 9, %do.end77 ], [ 9, %do.body69.do.body89_crit_edge ]
  %.sink = phi i32 [ 8, %do.end44 ], [ 5, %do.end25 ], [ 10, %do.end57 ], [ 10, %do.body49.do.body89_crit_edge ], [ 11, %do.end77 ], [ 11, %do.body69.do.body89_crit_edge ]
  tail call fastcc void @deinterlace_issue_dma(ptr noundef %priv, i32 noundef %.sink133, i32 noundef 0)
  tail call fastcc void @deinterlace_issue_dma(ptr noundef %priv, i32 noundef %.sink, i32 noundef 1)
  %20 = load i8, ptr @debug, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool90.not = icmp eq i8 %20, 0
  br i1 %tobool90.not, label %do.body89.do.end106_crit_edge, label %do.end97

do.body89.do.end106_crit_edge:                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end106

do.end97:                                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %name101 = getelementptr inbounds %struct.v4l2_device, ptr %22, i32 0, i32 4
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name101, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.49) #10
  br label %do.end106

do.end106:                                        ; preds = %do.end97, %do.body89.do.end106_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @deinterlace_job_ready(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %num_rdy.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8, i32 3
  %4 = ptrtoint ptr %num_rdy.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_rdy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %entry.do.body17_crit_edge, label %land.lhs.true

entry.do.body17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

land.lhs.true:                                    ; preds = %entry
  %num_rdy.i39 = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 7, i32 3
  %6 = ptrtoint ptr %num_rdy.i39 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %num_rdy.i39, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp4.not = icmp eq i8 %7, 0
  br i1 %cmp4.not, label %land.lhs.true.do.body17_crit_edge, label %land.lhs.true5

land.lhs.true.do.body17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

land.lhs.true5:                                   ; preds = %land.lhs.true
  %busy = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %busy, i32 noundef 4) #7
  %8 = ptrtoint ptr %busy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.body, label %land.lhs.true5.do.body17_crit_edge

land.lhs.true5.do.body17_crit_edge:               ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body17

do.body:                                          ; preds = %land.lhs.true5
  %10 = load i8, ptr @debug, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %do.body.cleanup.sink.split_crit_edge

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body17:                                        ; preds = %land.lhs.true5.do.body17_crit_edge, %land.lhs.true.do.body17_crit_edge, %entry.do.body17_crit_edge
  %11 = load i8, ptr @debug, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool18.not = icmp eq i8 %11, 0
  br i1 %tobool18.not, label %do.body17.cleanup_crit_edge, label %do.body17.cleanup.sink.split_crit_edge

do.body17.cleanup.sink.split_crit_edge:           ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

do.body17.cleanup_crit_edge:                      ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body17.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge
  %.str.78.sink = phi ptr [ @.str.75, %do.body.cleanup.sink.split_crit_edge ], [ @.str.78, %do.body17.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 1, %do.body.cleanup.sink.split_crit_edge ], [ 0, %do.body17.cleanup.sink.split_crit_edge ]
  %name28 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.78.sink, ptr noundef %name28, ptr noundef nonnull @.str.76) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body17.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body.cleanup_crit_edge ], [ 0, %do.body17.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @deinterlace_job_abort(ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %aborting = getelementptr inbounds %struct.deinterlace_ctx, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %aborting to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %aborting, align 4
  %3 = load i8, ptr @debug, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name, ptr noundef nonnull @.str.81) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %m2m_dev = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_dev, align 8
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %5, ptr noundef %7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @deinterlace_issue_dma(ptr noundef %ctx, i32 noundef %op, i32 noundef %do_callback) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dma_chan = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dma_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_chan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %ctx, i32 0, i32 10
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #7
  %8 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %9, i32 0, i32 7
  %call.i489 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #7
  %10 = load i32, ptr @q_data, align 4
  %11 = load i32, ptr getelementptr inbounds ([2 x %struct.deinterlace_q_data], ptr @q_data, i32 0, i32 0, i32 1), align 4
  %mul = mul i32 %11, %10
  %call.i490 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i, i32 noundef 0) #7
  %12 = ptrtoint ptr %call.i490 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call.i490, align 4
  %call.i491 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i489, i32 noundef 0) #7
  %14 = ptrtoint ptr %call.i491 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i491, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not = icmp eq i32 %15, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %name) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %op, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb34
    i32 3, label %sw.bb54
    i32 4, label %sw.bb78
    i32 5, label %sw.bb102
    i32 6, label %sw.bb128
    i32 7, label %sw.bb145
    i32 8, label %sw.bb167
    i32 9, label %sw.bb193
    i32 10, label %sw.bb211
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div487 = lshr i32 %11, 1
  %xt = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 5
  %17 = ptrtoint ptr %xt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xt, align 4
  %numf = getelementptr inbounds %struct.dma_interleaved_template, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %numf to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div487, ptr %numf, align 4
  %20 = load ptr, ptr %xt, align 4
  %sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %10, ptr %sgl, align 4
  %22 = load ptr, ptr %xt, align 4
  %icg = getelementptr inbounds %struct.dma_interleaved_template, ptr %22, i32 1, i32 1
  %23 = ptrtoint ptr %icg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %10, ptr %icg, align 4
  %24 = load ptr, ptr %xt, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %13, ptr %24, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div17485 = lshr i32 %11, 1
  %xt18 = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 5
  %26 = ptrtoint ptr %xt18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %xt18, align 4
  %numf19 = getelementptr inbounds %struct.dma_interleaved_template, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %numf19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div17485, ptr %numf19, align 4
  %29 = load ptr, ptr %xt18, align 4
  %sgl21 = getelementptr inbounds %struct.dma_interleaved_template, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %sgl21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %10, ptr %sgl21, align 4
  %31 = load ptr, ptr %xt18, align 4
  %icg27 = getelementptr inbounds %struct.dma_interleaved_template, ptr %31, i32 1, i32 1
  %32 = ptrtoint ptr %icg27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %10, ptr %icg27, align 4
  %div28486 = lshr i32 %mul, 1
  %add = add i32 %13, %div28486
  %33 = load ptr, ptr %xt18, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %33, align 4
  %add31 = add i32 %15, %10
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div35483 = lshr i32 %11, 2
  %xt36 = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 5
  %35 = ptrtoint ptr %xt36 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %xt36, align 4
  %numf37 = getelementptr inbounds %struct.dma_interleaved_template, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %numf37 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %div35483, ptr %numf37, align 4
  %div38484 = lshr i32 %10, 1
  %38 = load ptr, ptr %xt36, align 4
  %sgl40 = getelementptr inbounds %struct.dma_interleaved_template, ptr %38, i32 0, i32 9
  %39 = ptrtoint ptr %sgl40 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %div38484, ptr %sgl40, align 4
  %40 = load ptr, ptr %xt36, align 4
  %icg47 = getelementptr inbounds %struct.dma_interleaved_template, ptr %40, i32 1, i32 1
  %41 = ptrtoint ptr %icg47 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div38484, ptr %icg47, align 4
  %add48 = add i32 %13, %mul
  %42 = load ptr, ptr %xt36, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %add48, ptr %42, align 4
  %add51 = add i32 %15, %mul
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div55480 = lshr i32 %11, 2
  %xt56 = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 5
  %44 = ptrtoint ptr %xt56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %xt56, align 4
  %numf57 = getelementptr inbounds %struct.dma_interleaved_template, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %numf57 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %div55480, ptr %numf57, align 4
  %div58481 = lshr i32 %10, 1
  %47 = load ptr, ptr %xt56, align 4
  %sgl60 = getelementptr inbounds %struct.dma_interleaved_template, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %sgl60 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div58481, ptr %sgl60, align 4
  %49 = load ptr, ptr %xt56, align 4
  %icg67 = getelementptr inbounds %struct.dma_interleaved_template, ptr %49, i32 1, i32 1
  %50 = ptrtoint ptr %icg67 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div58481, ptr %icg67, align 4
  %mul68 = mul i32 %mul, 9
  %div69482 = lshr i32 %mul68, 3
  %add70 = add i32 %div69482, %13
  %51 = load ptr, ptr %xt56, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add70, ptr %51, align 4
  %add73 = add i32 %15, %mul
  %add75 = add i32 %add73, %div58481
  br label %sw.epilog

sw.bb78:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div79477 = lshr i32 %11, 2
  %xt80 = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 5
  %53 = ptrtoint ptr %xt80 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %xt80, align 4
  %numf81 = getelementptr inbounds %struct.dma_interleaved_template, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %numf81 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div79477, ptr %numf81, align 4
  %div82478 = lshr i32 %10, 1
  %56 = load ptr, ptr %xt80, align 4
  %sgl84 = getelementptr inbounds %struct.dma_interleaved_template, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %sgl84 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %div82478, ptr %sgl84, align 4
  %58 = load ptr, ptr %xt80, align 4
  %icg91 = getelementptr inbounds %struct.dma_interleaved_template, ptr %58, i32 1, i32 1
  %59 = ptrtoint ptr %icg91 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div82478, ptr %icg91, align 4
  %mul92 = mul i32 %mul, 5
  %div93479 = lshr i32 %mul92, 2
  %add94 = add i32 %div93479, %13
  %60 = load ptr, ptr %xt80, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add94, ptr %60, align 4
  %add99 = add i32 %15, %div93479
  br label %sw.epilog

sw.bb102:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div103473 = lshr i32 %11, 2
  %xt104 = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 5
  %62 = ptrtoint ptr %xt104 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %xt104, align 4
  %numf105 = getelementptr inbounds %struct.dma_interleaved_template, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %numf105 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %div103473, ptr %numf105, align 4
  %div106474 = lshr i32 %10, 1
  %65 = load ptr, ptr %xt104, align 4
  %sgl108 = getelementptr inbounds %struct.dma_interleaved_template, ptr %65, i32 0, i32 9
  %66 = ptrtoint ptr %sgl108 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %div106474, ptr %sgl108, align 4
  %67 = load ptr, ptr %xt104, align 4
  %icg115 = getelementptr inbounds %struct.dma_interleaved_template, ptr %67, i32 1, i32 1
  %68 = ptrtoint ptr %icg115 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %div106474, ptr %icg115, align 4
  %mul116 = mul i32 %mul, 11
  %div117475 = lshr i32 %mul116, 3
  %add118 = add i32 %div117475, %13
  %69 = load ptr, ptr %xt104, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add118, ptr %69, align 4
  %mul121 = mul i32 %mul, 5
  %div122476 = lshr i32 %mul121, 2
  %add123 = add nuw i32 %div122476, %div106474
  %add125 = add i32 %add123, %15
  br label %sw.epilog

sw.bb128:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div129472 = lshr i32 %11, 1
  %xt130 = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 5
  %71 = ptrtoint ptr %xt130 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %xt130, align 4
  %numf131 = getelementptr inbounds %struct.dma_interleaved_template, ptr %72, i32 0, i32 7
  %73 = ptrtoint ptr %numf131 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %div129472, ptr %numf131, align 4
  %74 = load ptr, ptr %xt130, align 4
  %sgl133 = getelementptr inbounds %struct.dma_interleaved_template, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %sgl133 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %10, ptr %sgl133, align 4
  %76 = load ptr, ptr %xt130, align 4
  %icg139 = getelementptr inbounds %struct.dma_interleaved_template, ptr %76, i32 1, i32 1
  %77 = ptrtoint ptr %icg139 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %10, ptr %icg139, align 4
  %78 = load ptr, ptr %xt130, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %13, ptr %78, align 4
  %add142 = add i32 %15, %10
  br label %sw.epilog

sw.bb145:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div146470 = lshr i32 %11, 2
  %xt147 = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 5
  %80 = ptrtoint ptr %xt147 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %xt147, align 4
  %numf148 = getelementptr inbounds %struct.dma_interleaved_template, ptr %81, i32 0, i32 7
  %82 = ptrtoint ptr %numf148 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %div146470, ptr %numf148, align 4
  %div149471 = lshr i32 %10, 1
  %83 = load ptr, ptr %xt147, align 4
  %sgl151 = getelementptr inbounds %struct.dma_interleaved_template, ptr %83, i32 0, i32 9
  %84 = ptrtoint ptr %sgl151 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %div149471, ptr %sgl151, align 4
  %85 = load ptr, ptr %xt147, align 4
  %icg158 = getelementptr inbounds %struct.dma_interleaved_template, ptr %85, i32 1, i32 1
  %86 = ptrtoint ptr %icg158 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %div149471, ptr %icg158, align 4
  %add159 = add i32 %13, %mul
  %87 = load ptr, ptr %xt147, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add159, ptr %87, align 4
  %add162 = add i32 %15, %mul
  %add164 = add i32 %add162, %div149471
  br label %sw.epilog

sw.bb167:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div168467 = lshr i32 %11, 2
  %xt169 = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 5
  %89 = ptrtoint ptr %xt169 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %xt169, align 4
  %numf170 = getelementptr inbounds %struct.dma_interleaved_template, ptr %90, i32 0, i32 7
  %91 = ptrtoint ptr %numf170 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %div168467, ptr %numf170, align 4
  %div171468 = lshr i32 %10, 1
  %92 = load ptr, ptr %xt169, align 4
  %sgl173 = getelementptr inbounds %struct.dma_interleaved_template, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %sgl173 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %div171468, ptr %sgl173, align 4
  %94 = load ptr, ptr %xt169, align 4
  %icg180 = getelementptr inbounds %struct.dma_interleaved_template, ptr %94, i32 1, i32 1
  %95 = ptrtoint ptr %icg180 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %div171468, ptr %icg180, align 4
  %mul181 = mul i32 %mul, 5
  %div182469 = lshr i32 %mul181, 2
  %add183 = add i32 %div182469, %13
  %96 = load ptr, ptr %xt169, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add183, ptr %96, align 4
  %add188 = add nuw i32 %div182469, %div171468
  %add190 = add i32 %add188, %15
  br label %sw.epilog

sw.bb193:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div194466 = lshr i32 %11, 1
  %xt195 = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 5
  %98 = ptrtoint ptr %xt195 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %xt195, align 4
  %numf196 = getelementptr inbounds %struct.dma_interleaved_template, ptr %99, i32 0, i32 7
  %100 = ptrtoint ptr %numf196 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %div194466, ptr %numf196, align 4
  %mul197 = shl i32 %10, 1
  %101 = load ptr, ptr %xt195, align 4
  %sgl199 = getelementptr inbounds %struct.dma_interleaved_template, ptr %101, i32 0, i32 9
  %102 = ptrtoint ptr %sgl199 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %mul197, ptr %sgl199, align 4
  %103 = load ptr, ptr %xt195, align 4
  %icg206 = getelementptr inbounds %struct.dma_interleaved_template, ptr %103, i32 1, i32 1
  %104 = ptrtoint ptr %icg206 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %mul197, ptr %icg206, align 4
  %105 = load ptr, ptr %xt195, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %13, ptr %105, align 4
  br label %sw.epilog

sw.bb211:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div212464 = lshr i32 %11, 1
  %xt213 = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 5
  %107 = ptrtoint ptr %xt213 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %xt213, align 4
  %numf214 = getelementptr inbounds %struct.dma_interleaved_template, ptr %108, i32 0, i32 7
  %109 = ptrtoint ptr %numf214 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %div212464, ptr %numf214, align 4
  %mul215 = shl i32 %10, 1
  %110 = load ptr, ptr %xt213, align 4
  %sgl217 = getelementptr inbounds %struct.dma_interleaved_template, ptr %110, i32 0, i32 9
  %111 = ptrtoint ptr %sgl217 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %mul215, ptr %sgl217, align 4
  %112 = load ptr, ptr %xt213, align 4
  %icg224 = getelementptr inbounds %struct.dma_interleaved_template, ptr %112, i32 1, i32 1
  %113 = ptrtoint ptr %icg224 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %mul215, ptr %icg224, align 4
  %add225 = add i32 %13, %mul
  %114 = load ptr, ptr %xt213, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %add225, ptr %114, align 4
  %add229 = add i32 %15, %mul215
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %div233488 = lshr i32 %11, 1
  %xt234 = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 5
  %116 = ptrtoint ptr %xt234 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %xt234, align 4
  %numf235 = getelementptr inbounds %struct.dma_interleaved_template, ptr %117, i32 0, i32 7
  %118 = ptrtoint ptr %numf235 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %div233488, ptr %numf235, align 4
  %mul236 = shl i32 %10, 1
  %119 = load ptr, ptr %xt234, align 4
  %sgl238 = getelementptr inbounds %struct.dma_interleaved_template, ptr %119, i32 0, i32 9
  %120 = ptrtoint ptr %sgl238 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %mul236, ptr %sgl238, align 4
  %121 = load ptr, ptr %xt234, align 4
  %icg245 = getelementptr inbounds %struct.dma_interleaved_template, ptr %121, i32 1, i32 1
  %122 = ptrtoint ptr %icg245 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %mul236, ptr %icg245, align 4
  %123 = load ptr, ptr %xt234, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %13, ptr %123, align 4
  %add249 = add i32 %15, %mul236
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb211, %sw.bb193, %sw.bb167, %sw.bb145, %sw.bb128, %sw.bb102, %sw.bb78, %sw.bb54, %sw.bb34, %sw.bb16, %sw.bb
  %xt234.sink = phi ptr [ %xt234, %sw.default ], [ %xt213, %sw.bb211 ], [ %xt195, %sw.bb193 ], [ %xt169, %sw.bb167 ], [ %xt147, %sw.bb145 ], [ %xt130, %sw.bb128 ], [ %xt104, %sw.bb102 ], [ %xt80, %sw.bb78 ], [ %xt56, %sw.bb54 ], [ %xt36, %sw.bb34 ], [ %xt18, %sw.bb16 ], [ %xt, %sw.bb ]
  %add249.sink = phi i32 [ %add249, %sw.default ], [ %add229, %sw.bb211 ], [ %15, %sw.bb193 ], [ %add190, %sw.bb167 ], [ %add164, %sw.bb145 ], [ %add142, %sw.bb128 ], [ %add125, %sw.bb102 ], [ %add99, %sw.bb78 ], [ %add75, %sw.bb54 ], [ %add51, %sw.bb34 ], [ %add31, %sw.bb16 ], [ %15, %sw.bb ]
  %125 = ptrtoint ptr %xt234.sink to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %xt234.sink, align 4
  %dst_start251 = getelementptr inbounds %struct.dma_interleaved_template, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %dst_start251 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %add249.sink, ptr %dst_start251, align 4
  %xt252 = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 5
  %128 = ptrtoint ptr %xt252 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %xt252, align 4
  %frame_size = getelementptr inbounds %struct.dma_interleaved_template, ptr %129, i32 0, i32 8
  %130 = ptrtoint ptr %frame_size to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 1, ptr %frame_size, align 4
  %131 = load ptr, ptr %xt252, align 4
  %dir = getelementptr inbounds %struct.dma_interleaved_template, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %dir, align 4
  %133 = load ptr, ptr %xt252, align 4
  %src_sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %133, i32 0, i32 5
  %134 = ptrtoint ptr %src_sgl to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %src_sgl, align 2
  %135 = load ptr, ptr %xt252, align 4
  %dst_sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %135, i32 0, i32 6
  %136 = ptrtoint ptr %dst_sgl to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %dst_sgl, align 1
  %device_prep_interleaved_dma = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 41
  %137 = ptrtoint ptr %device_prep_interleaved_dma to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %device_prep_interleaved_dma, align 4
  %139 = load ptr, ptr %xt252, align 4
  %call257 = tail call ptr %138(ptr noundef %3, ptr noundef %139, i32 noundef 3) #7
  %cmp = icmp eq ptr %call257, null
  br i1 %cmp, label %do.end261, label %if.end267

do.end261:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %name264 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call266 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef %name264) #10
  br label %cleanup

if.end267:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_callback)
  %tobool268.not = icmp eq i32 %do_callback, 0
  br i1 %tobool268.not, label %if.end267.if.end270_crit_edge, label %if.then269

if.end267.if.end270_crit_edge:                    ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end270

if.then269:                                       ; preds = %if.end267
  call void @__sanitizer_cov_trace_pc() #9
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call257, i32 0, i32 6
  %140 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @dma_callback, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call257, i32 0, i32 8
  %141 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %ctx, ptr %callback_param, align 4
  br label %if.end270

if.end270:                                        ; preds = %if.then269, %if.end267.if.end270_crit_edge
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call257, i32 0, i32 4
  %142 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tx_submit.i, align 4
  %call.i492 = tail call i32 %143(ptr noundef nonnull %call257) #7
  %cookie = getelementptr inbounds %struct.deinterlace_ctx, ptr %ctx, i32 0, i32 4
  %144 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %call.i492, ptr %cookie, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i492)
  %tobool274.not = icmp sgt i32 %call.i492, -1
  br i1 %tobool274.not, label %if.end287, label %do.end278

do.end278:                                        ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #9
  %name281 = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %mul284 = mul i32 %mul, 3
  %div285465 = lshr i32 %mul284, 1
  %call286 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name281, i32 noundef %call.i492, i32 noundef %13, i32 noundef %15, i32 noundef %div285465) #10
  br label %cleanup

if.end287:                                        ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #9
  %145 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %3, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %146, i32 0, i32 50
  %147 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %device_issue_pending.i, align 4
  tail call void %148(ptr noundef %3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end287, %do.end278, %do.end261, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_callback(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.deinterlace_ctx, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %busy = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %busy, i32 noundef 4) #7
  %2 = ptrtoint ptr %busy to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %busy, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %data, i32 0, i32 10
  %3 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %4, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #7
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 7
  %call.i29 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #7
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %timestamp, align 8
  %timestamp5 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i29, i32 0, i32 5
  %9 = ptrtoint ptr %timestamp5 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %timestamp5, align 8
  %flags = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i29, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and = and i32 %11, -458753
  store i32 %and, ptr %flags, align 8
  %flags6 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags6, align 8
  %and7 = and i32 %13, 458752
  %or = or i32 %and7, %and
  store i32 %or, ptr %flags, align 8
  %timecode = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i29, i32 0, i32 3
  %timecode9 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 3
  %14 = call ptr @memcpy(ptr %timecode, ptr %timecode9, i32 16)
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef 5) #7
  tail call void @vb2_buffer_done(ptr noundef %call.i29, i32 noundef 5) #7
  %m2m_dev = getelementptr inbounds %struct.deinterlace_dev, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_dev, align 8
  %17 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %16, ptr noundef %18) #7
  %19 = load i8, ptr @debug, align 1, !range !189
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %entry.do.end16_crit_edge, label %do.end

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name, ptr noundef nonnull @.str.74) #10
  br label %do.end16

do.end16:                                         ; preds = %do.end, %entry.do.end16_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !19, !21, !22, !24, !26, !28, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !56, !58, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !82, !84, !86, !87, !88, !89, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @__UNIQUE_ID_description298, !1, !"__UNIQUE_ID_description298", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_author299, !3, !"__UNIQUE_ID_author299", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file300, !5, !"__UNIQUE_ID_file300", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license301, !5, !"__UNIQUE_ID_license301", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version302, !8, !"__UNIQUE_ID_version302", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 25, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_debug, !14, !"__param_debug", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 28, i32 1}
!15 = !{ptr @__UNIQUE_ID_debugtype303, !14, !"__UNIQUE_ID_debugtype303", i1 false, i1 false}
!16 = !{ptr @__initcall__kmod_m2m_deinterlace__304_1007_deinterlace_pdrv_init6, !17, !"__initcall__kmod_m2m_deinterlace__304_1007_deinterlace_pdrv_init6", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 1007, i32 1}
!18 = !{ptr @__exitcall_deinterlace_pdrv_exit, !17, !"__exitcall_deinterlace_pdrv_exit", i1 false, i1 false}
!19 = !{ptr @debug, !20, !"debug", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 27, i32 13}
!21 = !{ptr @__param_str_debug, !14, !"__param_str_debug", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 1004, i32 11}
!24 = !{ptr @deinterlace_pdrv, !25, !"deinterlace_pdrv", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 1000, i32 31}
!26 = !{ptr @deinterlace_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 930, i32 2}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 939, i32 3}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @deinterlace_probe._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @deinterlace_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @deinterlace_probe.__key.10, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 949, i32 2}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 958, i32 3}
!42 = !{ptr @deinterlace_probe._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @deinterlace_probe._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 963, i32 2}
!46 = !{ptr @deinterlace_probe._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @deinterlace_probe._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 970, i32 3}
!50 = !{ptr @deinterlace_probe._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @deinterlace_probe._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @deinterlace_videodev, !53, !"deinterlace_videodev", i1 false, i1 false}
!53 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 903, i32 34}
!54 = !{ptr @deinterlace_fops, !55, !"deinterlace_fops", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 894, i32 42}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 872, i32 2}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @deinterlace_open._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @deinterlace_open._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @deinterlace_qops, !62, !"deinterlace_qops", i1 false, i1 false}
!62 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 787, i32 29}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 754, i32 2}
!65 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @deinterlace_queue_setup._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @deinterlace_queue_setup._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 764, i32 2}
!70 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @deinterlace_buf_prepare._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @deinterlace_buf_prepare._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 769, i32 3}
!75 = !{ptr @deinterlace_buf_prepare._entry.27, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @deinterlace_buf_prepare._entry_ptr.29, !74, !"_entry_ptr", i1 false, i1 false}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!79 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @formats, !81, !"formats", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 45, i32 31}
!82 = !{ptr @q_data, !83, !"q_data", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 88, i32 34}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 883, i32 2}
!86 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @deinterlace_release._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @deinterlace_release._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @deinterlace_ioctl_ops, !90, !"deinterlace_ioctl_ops", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 699, i32 36}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 592, i32 3}
!93 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @vidioc_s_fmt._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @vidioc_s_fmt._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 598, i32 3}
!98 = !{ptr @vidioc_s_fmt._entry.35, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @vidioc_s_fmt._entry_ptr.37, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 620, i32 2}
!102 = !{ptr @vidioc_s_fmt._entry.38, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @vidioc_s_fmt._entry_ptr.40, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 667, i32 3}
!106 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @vidioc_streamon._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @vidioc_streamon._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 677, i32 4}
!111 = !{ptr @vidioc_streamon._entry.43, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @vidioc_streamon._entry_ptr.45, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @vidioc_streamon._entry.46, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 686, i32 4}
!115 = !{ptr @vidioc_streamon._entry_ptr.47, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @m2m_ops, !117, !"m2m_ops", i1 false, i1 false}
!117 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 913, i32 34}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 358, i32 2}
!120 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @deinterlace_device_run._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @deinterlace_device_run._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.51, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 382, i32 4}
!125 = !{ptr @deinterlace_device_run._entry.50, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @deinterlace_device_run._entry_ptr.52, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 393, i32 4}
!129 = !{ptr @deinterlace_device_run._entry.53, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @deinterlace_device_run._entry_ptr.55, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 409, i32 4}
!133 = !{ptr @deinterlace_device_run._entry.56, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @deinterlace_device_run._entry_ptr.58, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 416, i32 4}
!137 = !{ptr @deinterlace_device_run._entry.59, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @deinterlace_device_run._entry_ptr.61, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 425, i32 2}
!141 = !{ptr @deinterlace_device_run._entry.62, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @deinterlace_device_run._entry_ptr.64, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 228, i32 3}
!145 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @deinterlace_issue_dma._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @deinterlace_issue_dma._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 330, i32 3}
!150 = !{ptr @deinterlace_issue_dma._entry.67, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @deinterlace_issue_dma._entry_ptr.69, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 341, i32 3}
!154 = !{ptr @deinterlace_issue_dma._entry.70, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @deinterlace_issue_dma._entry_ptr.72, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 199, i32 2}
!158 = !{ptr @.str.74, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @dma_callback._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @dma_callback._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 156, i32 3}
!163 = !{ptr @.str.76, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @deinterlace_job_ready._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @deinterlace_job_ready._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 160, i32 2}
!168 = !{ptr @deinterlace_job_ready._entry.77, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @deinterlace_job_ready._entry_ptr.79, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 172, i32 2}
!172 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @deinterlace_job_abort._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @deinterlace_job_abort._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/platform/m2m-deinterlace.c", i32 991, i32 2}
!177 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @deinterlace_remove._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @deinterlace_remove._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{i8 0, i8 2}
!190 = !{i64 2156463499, i64 2156464003, i64 2156463536, i64 2156463592, i64 2156463626, i64 2156463650, i64 2156463691, i64 2156463712, i64 2156463740, i64 2156463774}
!191 = !{!"branch_weights", i32 2000, i32 1}
