; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mx2_emmaprp.c_pt.bc'
source_filename = "../drivers/media/platform/mx2_emmaprp.c"
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
%struct.emmaprp_fmt = type { i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.emmaprp_dev = type { %struct.v4l2_device, ptr, %struct.mutex, %struct.spinlock, ptr, ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.emmaprp_ctx = type { %struct.v4l2_fh, ptr, i32, [2 x %struct.emmaprp_q_data] }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.emmaprp_q_data = type { i32, i32, i32, ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.92, i32 }
%union.anon.92 = type { i32 }
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
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.93 }
%union.anon.93 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.95, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.95 = type { i8 }

@__UNIQUE_ID_description298 = internal constant [86 x i8] c"mx2_emmaprp.description=Mem-to-mem device which supports eMMa-PrP present in mx2 SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [66 x i8] c"mx2_emmaprp.author=Javier Martin <javier.martin@vista-silicon.com\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [52 x i8] c"mx2_emmaprp.file=drivers/media/platform/mx2_emmaprp\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [24 x i8] c"mx2_emmaprp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version302 = internal constant [26 x i8] c"mx2_emmaprp.version=0.0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mx2_emmaprp\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.1\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_debug = internal constant [18 x i8] c"mx2_emmaprp.debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype303 = internal constant [32 x i8] c"mx2_emmaprp.parmtype=debug:bool\00", section ".modinfo", align 1
@__initcall__kmod_mx2_emmaprp__304_912_emmaprp_pdrv_init6 = internal global ptr @emmaprp_pdrv_init, section ".initcall6.init", align 4
@emmaprp_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @emmaprp_probe, ptr @emmaprp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_emmaprp_pdrv_exit = internal global ptr @emmaprp_pdrv_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"m2m-emmaprp\00", [20 x i8] zeroinitializer }, align 32
@emmaprp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pcdev->irqlock\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@emmaprp_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&pcdev->dev_mutex\00", [46 x i8] zeroinitializer }, align 32
@emmaprp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to allocate video device\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emmaprp_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/platform/mx2_emmaprp.c\00", [59 x i8] zeroinitializer }, align 32
@emmaprp_probe._entry_ptr = internal global ptr @emmaprp_probe._entry, section ".printk_index", align 4
@emmaprp_videodev = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @emmaprp_fops, i32 67141632, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"m2m-emmaprp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release, ptr @emmaprp_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@emmaprp_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.11, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s: mem2mem-emmaprp Device registered as /dev/video%d\0A\00", [39 x i8] zeroinitializer }, align 32
@emmaprp_probe._entry_ptr.14 = internal global ptr @emmaprp_probe._entry.12, section ".printk_index", align 4
@m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @emmaprp_device_run, ptr null, ptr @emmaprp_job_abort }, [20 x i8] zeroinitializer }, align 32
@emmaprp_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.11, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", [59 x i8] zeroinitializer }, align 32
@emmaprp_probe._entry_ptr.17 = internal global ptr @emmaprp_probe._entry.15, section ".printk_index", align 4
@emmaprp_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.10, ptr @.str.11, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@emmaprp_probe._entry_ptr.20 = internal global ptr @emmaprp_probe._entry.18, section ".printk_index", align 4
@emmaprp_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @emmaprp_open, ptr @emmaprp_release }, [60 x i8] zeroinitializer }, align 32
@emmaprp_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr @vidioc_enum_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr @vidioc_g_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr @vidioc_s_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr @vidioc_try_fmt_vid_out, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr null, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@formats = internal global { [2 x %struct.emmaprp_fmt], [16 x i8] } { [2 x %struct.emmaprp_fmt] [%struct.emmaprp_fmt { i32 842093913, i32 1 }, %struct.emmaprp_fmt { i32 1448695129, i32 2 }], [16 x i8] zeroinitializer }, align 32
@emmaprp_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.11, i32 755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s: %s: Created instance %p, m2m_ctx: %p\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"emmaprp_open\00", [19 x i8] zeroinitializer }, align 32
@emmaprp_open._entry_ptr = internal global ptr @emmaprp_open._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@emmaprp_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @emmaprp_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @emmaprp_buf_prepare, ptr null, ptr null, ptr null, ptr null, ptr @emmaprp_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@emmaprp_queue_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.11, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s: %s: get %d buffer(s) of size %d each.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"emmaprp_queue_setup\00", [44 x i8] zeroinitializer }, align 32
@emmaprp_queue_setup._entry_ptr = internal global ptr @emmaprp_queue_setup._entry, section ".printk_index", align 4
@emmaprp_buf_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.11, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\017%s: %s: type: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"emmaprp_buf_prepare\00", [44 x i8] zeroinitializer }, align 32
@emmaprp_buf_prepare._entry_ptr = internal global ptr @emmaprp_buf_prepare._entry, section ".printk_index", align 4
@emmaprp_buf_prepare._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.11, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s: %s: %s data will not fit into plane(%lu < %lu)\0A\00", [42 x i8] zeroinitializer }, align 32
@emmaprp_buf_prepare._entry_ptr.29 = internal global ptr @emmaprp_buf_prepare._entry.27, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@emmaprp_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.11, i32 765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: %s: Releasing instance %p\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"emmaprp_release\00", [16 x i8] zeroinitializer }, align 32
@emmaprp_release._entry_ptr = internal global ptr @emmaprp_release._entry, section ".printk_index", align 4
@vidioc_s_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.11, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: %s queue busy\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vidioc_s_fmt\00", [19 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr = internal global ptr @vidioc_s_fmt._entry, section ".printk_index", align 4
@vidioc_s_fmt._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.11, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017%s: %s: Setting format for type %d, wxh: %dx%d, fmt: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@vidioc_s_fmt._entry_ptr.37 = internal global ptr @vidioc_s_fmt._entry.35, section ".printk_index", align 4
@vidioc_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.11, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Fourcc format (0x%08x) invalid.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vidioc_try_fmt_vid_cap\00", [41 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_try_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_try_fmt_vid_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.40, ptr @.str.11, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vidioc_try_fmt_vid_out\00", [41 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_out._entry_ptr = internal global ptr @vidioc_try_fmt_vid_out._entry, section ".printk_index", align 4
@emmaprp_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.11, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: %s: irqst = 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"emmaprp_irq\00", [20 x i8] zeroinitializer }, align 32
@emmaprp_irq._entry_ptr = internal global ptr @emmaprp_irq._entry, section ".printk_index", align 4
@emmaprp_irq._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.11, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Instance released before the end of transaction\0A\00", [45 x i8] zeroinitializer }, align 32
@emmaprp_irq._entry_ptr.45 = internal global ptr @emmaprp_irq._entry.43, section ".printk_index", align 4
@emmaprp_irq._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.11, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013PrP bus error occurred, this transfer is probably corrupted\0A\00", [33 x i8] zeroinitializer }, align 32
@emmaprp_irq._entry_ptr.48 = internal global ptr @emmaprp_irq._entry.46, section ".printk_index", align 4
@emmaprp_device_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.11, i32 294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: Acquiring kernel pointers to buffers failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"emmaprp_device_run\00", [45 x i8] zeroinitializer }, align 32
@emmaprp_device_run._entry_ptr = internal global ptr @emmaprp_device_run._entry, section ".printk_index", align 4
@emmaprp_dump_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.11, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [195 x i8], [61 x i8] } { [195 x i8] c"\017%s: %s: eMMa-PrP Registers:\0A  SOURCE_Y_PTR = 0x%08X\0A  SRC_FRAME_SIZE = 0x%08X\0A  DEST_Y_PTR = 0x%08X\0A  DEST_CR_PTR = 0x%08X\0A  DEST_CB_PTR = 0x%08X\0A  CH2_OUT_IMAGE_SIZE = 0x%08X\0A  CNTL = 0x%08X\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"emmaprp_dump_regs\00", [46 x i8] zeroinitializer }, align 32
@emmaprp_dump_regs._entry_ptr = internal global ptr @emmaprp_dump_regs._entry, section ".printk_index", align 4
@emmaprp_job_abort._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.11, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s: %s: Aborting task\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"emmaprp_job_abort\00", [46 x i8] zeroinitializer }, align 32
@emmaprp_job_abort._entry_ptr = internal global ptr @emmaprp_job_abort._entry, section ".printk_index", align 4
@emmaprp_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.11, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: Removing mem2mem-emmaprp\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"emmaprp_remove\00", [17 x i8] zeroinitializer }, align 32
@emmaprp_remove._entry_ptr = internal global ptr @emmaprp_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 33, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 35, i32 13 }
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"emmaprp_pdrv\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 905, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 909, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 813, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 815, i32 49 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 820, i32 49 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 832, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 836, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"emmaprp_videodev\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 788, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 847, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [8 x i8] c"m2m_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 798, i32 34 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 865, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 872, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [13 x i8] c"emmaprp_fops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 779, i32 42 }
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"emmaprp_ioctl_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 593, i32 36 }
@___asan_gen_.139 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 153, i32 27 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 755, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [13 x i8] c"emmaprp_qops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 676, i32 29 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 642, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 652, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 657, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 1163, i32 7 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 765, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 546, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 562, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 505, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 522, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 339, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 343, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 350, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 293, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 248, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 241, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.275 = private constant [40 x i8] c"../drivers/media/platform/mx2_emmaprp.c\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.275, i32 895, i32 2 }
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_debugtype303, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__UNIQUE_ID_version302, ptr @__exitcall_emmaprp_pdrv_exit, ptr @__initcall__kmod_mx2_emmaprp__304_912_emmaprp_pdrv_init6, ptr @__modver_attr, ptr @__param_debug, ptr @emmaprp_buf_prepare._entry, ptr @emmaprp_buf_prepare._entry.27, ptr @emmaprp_buf_prepare._entry_ptr, ptr @emmaprp_buf_prepare._entry_ptr.29, ptr @emmaprp_device_run._entry, ptr @emmaprp_device_run._entry_ptr, ptr @emmaprp_dump_regs._entry, ptr @emmaprp_dump_regs._entry_ptr, ptr @emmaprp_irq._entry, ptr @emmaprp_irq._entry.43, ptr @emmaprp_irq._entry.46, ptr @emmaprp_irq._entry_ptr, ptr @emmaprp_irq._entry_ptr.45, ptr @emmaprp_irq._entry_ptr.48, ptr @emmaprp_job_abort._entry, ptr @emmaprp_job_abort._entry_ptr, ptr @emmaprp_open._entry, ptr @emmaprp_open._entry_ptr, ptr @emmaprp_pdrv_exit, ptr @emmaprp_probe._entry, ptr @emmaprp_probe._entry.12, ptr @emmaprp_probe._entry.15, ptr @emmaprp_probe._entry.18, ptr @emmaprp_probe._entry_ptr, ptr @emmaprp_probe._entry_ptr.14, ptr @emmaprp_probe._entry_ptr.17, ptr @emmaprp_probe._entry_ptr.20, ptr @emmaprp_queue_setup._entry, ptr @emmaprp_queue_setup._entry_ptr, ptr @emmaprp_release._entry, ptr @emmaprp_release._entry_ptr, ptr @emmaprp_remove._entry, ptr @emmaprp_remove._entry_ptr, ptr @vidioc_s_fmt._entry, ptr @vidioc_s_fmt._entry.35, ptr @vidioc_s_fmt._entry_ptr, ptr @vidioc_s_fmt._entry_ptr.37, ptr @vidioc_try_fmt_vid_cap._entry, ptr @vidioc_try_fmt_vid_cap._entry_ptr, ptr @vidioc_try_fmt_vid_out._entry, ptr @vidioc_try_fmt_vid_out._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @emmaprp_pdrv, ptr @.str.3, ptr @emmaprp_probe.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @emmaprp_probe.__key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @emmaprp_videodev, ptr @.str.13, ptr @m2m_ops, ptr @.str.16, ptr @.str.19, ptr @emmaprp_fops, ptr @emmaprp_ioctl_ops, ptr @formats, ptr @.str.21, ptr @.str.22, ptr @emmaprp_qops, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_videodev to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_queue_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_buf_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_buf_prepare._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_irq._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_irq._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_device_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_dump_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 195, i32 256, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_job_abort._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmaprp_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @emmaprp_pdrv_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @emmaprp_pdrv, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @emmaprp_pdrv_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @emmaprp_pdrv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emmaprp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 284, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %irqlock = getelementptr inbounds %struct.emmaprp_dev, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %irqlock, ptr noundef nonnull @.str.4, ptr noundef nonnull @emmaprp_probe.__key, i16 noundef signext 3) #7
  %call3 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.5) #7
  %clk_emma_ipg = getelementptr inbounds %struct.emmaprp_dev, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %clk_emma_ipg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %clk_emma_ipg, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %do.body
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #7
  %clk_emma_ahb = getelementptr inbounds %struct.emmaprp_dev, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %clk_emma_ahb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %clk_emma_ahb, align 4
  %cmp.i148 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call18 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %base_emma = getelementptr inbounds %struct.emmaprp_dev, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %base_emma to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call18, ptr %base_emma, align 4
  %cmp.i149 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  %call26 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body30, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body30:                                        ; preds = %if.end24
  %dev_mutex = getelementptr inbounds %struct.emmaprp_dev, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %dev_mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @emmaprp_probe.__key.7) #7
  %call33 = tail call ptr @video_device_alloc() #7
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %do.end38, label %if.end41

do.end38:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name) #10
  br label %unreg_dev

if.end41:                                         ; preds = %do.body30
  %6 = call ptr @memcpy(ptr %call33, ptr @emmaprp_videodev, i32 1352)
  %lock = getelementptr inbounds %struct.video_device, ptr %call33, i32 0, i32 26
  %7 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev_mutex, ptr %lock, align 8
  %v4l2_dev44 = getelementptr inbounds %struct.video_device, ptr %call33, i32 0, i32 7
  %8 = ptrtoint ptr %v4l2_dev44 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %v4l2_dev44, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call33, i32 0, i32 5, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %vfd45 = getelementptr inbounds %struct.emmaprp_dev, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %vfd45 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call33, ptr %vfd45, align 4
  %name51 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %num = getelementptr inbounds %struct.video_device, ptr %call33, i32 0, i32 16
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %num, align 4
  %conv = zext i16 %12 to i32
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name51, i32 noundef %conv) #10
  %driver_data.i.i150 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i150 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i150, align 4
  %call54 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp = icmp slt i32 %call54, 0
  br i1 %cmp, label %if.end41.rel_vdev_crit_edge, label %if.end57

if.end41.rel_vdev_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %rel_vdev

if.end57:                                         ; preds = %if.end41
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end57.dev_name.exit_crit_edge

if.end57.dev_name.exit_crit_edge:                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end57.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %17, %if.end.i ], [ %15, %if.end57.dev_name.exit_crit_edge ]
  %call.i151 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call54, ptr noundef nonnull @emmaprp_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool62.not = icmp eq i32 %call.i151, 0
  br i1 %tobool62.not, label %if.end64, label %dev_name.exit.rel_vdev_crit_edge

dev_name.exit.rel_vdev_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %rel_vdev

if.end64:                                         ; preds = %dev_name.exit
  %call65 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @m2m_ops) #7
  %m2m_dev = getelementptr inbounds %struct.emmaprp_dev, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call65, ptr %m2m_dev, align 4
  %cmp.i152 = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152, label %do.end71, label %if.end79

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %call76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name51) #10
  %19 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %m2m_dev, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %rel_vdev

if.end79:                                         ; preds = %if.end64
  %fops.i = getelementptr inbounds %struct.video_device, ptr %call33, i32 0, i32 3
  %22 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fops.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call.i153 = tail call i32 @__video_register_device(ptr noundef nonnull %call33, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %tobool81.not = icmp eq i32 %call.i153, 0
  br i1 %tobool81.not, label %if.end79.cleanup_crit_edge, label %do.end85

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end85:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name51) #10
  %26 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %27) #7
  br label %rel_vdev

rel_vdev:                                         ; preds = %do.end85, %do.end71, %dev_name.exit.rel_vdev_crit_edge, %if.end41.rel_vdev_crit_edge
  %ret.0 = phi i32 [ %call.i151, %dev_name.exit.rel_vdev_crit_edge ], [ %21, %do.end71 ], [ %call.i153, %do.end85 ], [ %call54, %if.end41.rel_vdev_crit_edge ]
  tail call void @video_device_release(ptr noundef nonnull %call33) #7
  br label %unreg_dev

unreg_dev:                                        ; preds = %rel_vdev, %do.end38
  %ret.1 = phi i32 [ %ret.0, %rel_vdev ], [ -12, %do.end38 ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #7
  tail call void @mutex_destroy(ptr noundef %dev_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %unreg_dev, %if.end79.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then21, %if.then14, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %3, %if.then14 ], [ %5, %if.then21 ], [ %ret.1, %unreg_dev ], [ -12, %entry.cleanup_crit_edge ], [ %call26, %if.end24.cleanup_crit_edge ], [ 0, %if.end79.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emmaprp_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name) #10
  %vfd = getelementptr inbounds %struct.emmaprp_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vfd, align 4
  tail call void @video_unregister_device(ptr noundef %3) #7
  %m2m_dev = getelementptr inbounds %struct.emmaprp_dev, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %5) #7
  tail call void @v4l2_device_unregister(ptr noundef %1) #7
  %dev_mutex = getelementptr inbounds %struct.emmaprp_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %dev_mutex) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emmaprp_irq(i32 noundef %irq_emma, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base_emma = getelementptr inbounds %struct.emmaprp_dev, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_emma, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !153
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_emma, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %2) #7, !srcloc !156
  %6 = load i8, ptr @debug, align 1, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end8

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end12

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_device, ptr %data, i32 0, i32 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef %name, ptr noundef nonnull @.str.42, i32 noundef %3) #10
  br label %do.end12

do.end12:                                         ; preds = %do.end8, %entry.do.end12_crit_edge
  %m2m_dev = getelementptr inbounds %struct.emmaprp_dev, ptr %data, i32 0, i32 7
  %7 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_dev, align 4
  %call13 = tail call ptr @v4l2_m2m_get_curr_priv(ptr noundef %8) #7
  %cmp14 = icmp eq ptr %call13, null
  br i1 %cmp14, label %do.end19, label %if.end22

do.end19:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44) #10
  br label %cleanup

if.end22:                                         ; preds = %do.end12
  %aborting = getelementptr inbounds %struct.emmaprp_ctx, ptr %call13, i32 0, i32 2
  %9 = ptrtoint ptr %aborting to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %aborting, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool23.not = icmp eq i32 %10, 0
  br i1 %tobool23.not, label %if.then24, label %if.end22.if.end68_crit_edge

if.end22.if.end68_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then24:                                        ; preds = %if.end22
  %11 = and i32 %3, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.else, label %do.end31

do.end31:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base_emma, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 1048576) #7, !srcloc !156
  br label %if.end68

if.else:                                          ; preds = %if.then24
  %and39 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.else.if.end68_crit_edge, label %if.then41

if.else.if.end68_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call13, i32 0, i32 10
  %15 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %16, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #7
  %17 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %18, i32 0, i32 7
  %call.i99 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #7
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %timestamp to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %timestamp, align 8
  %timestamp47 = getelementptr inbounds %struct.vb2_buffer, ptr %call.i99, i32 0, i32 5
  %21 = ptrtoint ptr %timestamp47 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %20, ptr %timestamp47, align 8
  %flags48 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i99, i32 0, i32 1
  %22 = ptrtoint ptr %flags48 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags48, align 8
  %and49 = and i32 %23, -458753
  store i32 %and49, ptr %flags48, align 8
  %flags50 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %flags50 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags50, align 8
  %and51 = and i32 %25, 458752
  %or = or i32 %and51, %and49
  store i32 %or, ptr %flags48, align 8
  %timecode = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i99, i32 0, i32 3
  %timecode53 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 3
  %26 = call ptr @memcpy(ptr %timecode, ptr %timecode53, i32 16)
  %irqlock = getelementptr inbounds %struct.emmaprp_dev, ptr %data, i32 0, i32 3
  %call60 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqlock) #7
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef 5) #7
  tail call void @vb2_buffer_done(ptr noundef %call.i99, i32 noundef 5) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqlock, i32 noundef %call60) #7
  br label %if.end68

if.end68:                                         ; preds = %if.then41, %if.else.if.end68_crit_edge, %do.end31, %if.end22.if.end68_crit_edge
  %27 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %m2m_dev, align 4
  %m2m_ctx71 = getelementptr inbounds %struct.v4l2_fh, ptr %call13, i32 0, i32 10
  %29 = ptrtoint ptr %m2m_ctx71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %m2m_ctx71, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %28, ptr noundef %30) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %do.end19
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emmaprp_open(ptr noundef %file) #2 align 64 {
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
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 232) #11
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
  %dev = getelementptr inbounds %struct.emmaprp_ctx, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %dev, align 8
  %dev_mutex = getelementptr inbounds %struct.emmaprp_dev, ptr %1, i32 0, i32 2
  %call4 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %dev_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %m2m_dev = getelementptr inbounds %struct.emmaprp_dev, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_dev, align 4
  %call8 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %6, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #7
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8, ptr %m2m_ctx, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end18

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call8 to i32
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %clk_emma_ipg = getelementptr inbounds %struct.emmaprp_dev, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %clk_emma_ipg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_emma_ipg, align 4
  %call.i60 = tail call i32 @clk_prepare(ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.not.i = icmp eq i32 %call.i60, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end18.clk_prepare_enable.exit_crit_edge

if.end18.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end18
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %10) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end18.clk_prepare_enable.exit_crit_edge
  %clk_emma_ahb = getelementptr inbounds %struct.emmaprp_dev, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %clk_emma_ahb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_emma_ahb, align 4
  %call.i61 = tail call i32 @clk_prepare(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool.not.i62 = icmp eq i32 %call.i61, 0
  br i1 %tobool.not.i62, label %if.end.i65, label %clk_prepare_enable.exit.clk_prepare_enable.exit67_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit67_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit67

if.end.i65:                                       ; preds = %clk_prepare_enable.exit
  %call1.i63 = tail call i32 @clk_enable(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool2.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool2.not.i64, label %if.end.i65.clk_prepare_enable.exit67_crit_edge, label %if.then3.i66

if.end.i65.clk_prepare_enable.exit67_crit_edge:   ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit67

if.then3.i66:                                     ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %12) #7
  br label %clk_prepare_enable.exit67

clk_prepare_enable.exit67:                        ; preds = %if.then3.i66, %if.end.i65.clk_prepare_enable.exit67_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit67_crit_edge
  %fmt = getelementptr inbounds %struct.emmaprp_ctx, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 3
  %13 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr getelementptr inbounds ([2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 1), ptr %fmt, align 4
  %fmt23 = getelementptr %struct.emmaprp_ctx, ptr %call7.i.i, i32 0, i32 3, i32 1, i32 3
  %14 = ptrtoint ptr %fmt23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @formats, ptr %fmt23, align 4
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #7
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #7
  %15 = load i8, ptr @debug, align 1, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool26.not = icmp eq i8 %15, 0
  br i1 %tobool26.not, label %clk_prepare_enable.exit67.cleanup_crit_edge, label %do.end

clk_prepare_enable.exit67.cleanup_crit_edge:      ; preds = %clk_prepare_enable.exit67
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %clk_prepare_enable.exit67
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %m2m_ctx, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name, ptr noundef nonnull @.str.22, ptr noundef nonnull %call7.i.i, ptr noundef %17) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %clk_prepare_enable.exit67.cleanup_crit_edge, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %if.then6 ], [ %8, %if.then13 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end ], [ 0, %clk_prepare_enable.exit67.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emmaprp_release(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = load i8, ptr @debug, align 1, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %name, ptr noundef nonnull @.str.32, ptr noundef %3) #10
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %dev_mutex = getelementptr inbounds %struct.emmaprp_dev, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %dev_mutex, i32 noundef 0) #7
  %clk_emma_ahb = getelementptr inbounds %struct.emmaprp_dev, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %clk_emma_ahb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk_emma_ahb, align 4
  tail call void @clk_disable(ptr noundef %6) #7
  tail call void @clk_unprepare(ptr noundef %6) #7
  %clk_emma_ipg = getelementptr inbounds %struct.emmaprp_dev, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %clk_emma_ipg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk_emma_ipg, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  tail call void @clk_unprepare(ptr noundef %8) #7
  tail call void @v4l2_fh_del(ptr noundef %3) #7
  tail call void @v4l2_fh_exit(ptr noundef %3) #7
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %10) #7
  tail call void @mutex_unlock(ptr noundef %dev_mutex) #7
  tail call void @kfree(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

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
  store ptr @emmaprp_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %5 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %6 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %timestamp_flags, align 4
  %dev = getelementptr inbounds %struct.emmaprp_ctx, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %dev2 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %11 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %dev2, align 4
  %12 = load ptr, ptr %dev, align 4
  %dev_mutex = getelementptr inbounds %struct.emmaprp_dev, ptr %12, i32 0, i32 2
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev_mutex, ptr %lock, align 4
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
  store ptr @emmaprp_qops, ptr %ops8, align 4
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
  %24 = load ptr, ptr %22, align 4
  %dev14 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %25 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %dev14, align 4
  %26 = load ptr, ptr %dev, align 4
  %dev_mutex16 = getelementptr inbounds %struct.emmaprp_dev, ptr %26, i32 0, i32 2
  %lock17 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %27 = ptrtoint ptr %lock17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %dev_mutex16, ptr %lock17, align 4
  %call18 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emmaprp_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #2 align 64 {
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
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %q_data.i = getelementptr inbounds %struct.emmaprp_ctx, ptr %1, i32 0, i32 3
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3.i = getelementptr %struct.emmaprp_ctx, ptr %1, i32 0, i32 3, i32 1
  br label %get_q_data.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/mx2_emmaprp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 226, 0\0A.popsection", ""() #7, !srcloc !159
  unreachable

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ]
  %fmt = getelementptr inbounds %struct.emmaprp_q_data, ptr %retval.0.i, i32 0, i32 3
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fmt, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %10)
  %cmp = icmp eq i32 %10, 842093913
  %11 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %retval.0.i, align 4
  %height = getelementptr inbounds %struct.emmaprp_q_data, ptr %retval.0.i, i32 0, i32 1
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %12, 3
  %mul2 = mul i32 %mul, %14
  %div29 = lshr i32 %mul2, 1
  br label %if.end

if.else:                                          ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mul5 = shl i32 %12, 1
  %mul6 = mul i32 %mul5, %14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %size.0 = phi i32 [ %div29, %if.then ], [ %mul6, %if.else ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.end
  %count.0 = phi i32 [ %3, %if.end ], [ %dec, %while.cond.while.cond_crit_edge ]
  %mul7 = mul i32 %count.0, %size.0
  %cmp8 = icmp ugt i32 %mul7, 16777216
  %dec = add i32 %count.0, -1
  br i1 %cmp8, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %nplanes, align 4
  %16 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %count.0, ptr %nbuffers, align 4
  %17 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %size.0, ptr %sizes, align 4
  %18 = load i8, ptr @debug, align 1, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %while.end.do.end16_crit_edge, label %do.end

while.end.do.end16_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end:                                           ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.emmaprp_ctx, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %20, i32 0, i32 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name, ptr noundef nonnull @.str.24, i32 noundef %count.0, i32 noundef %size.0) #10
  br label %do.end16

do.end16:                                         ; preds = %do.end, %while.end.do.end16_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @emmaprp_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
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
  %4 = load i8, ptr @debug, align 1, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.emmaprp_ctx, ptr %3, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %12, label %do.body.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  %q_data.i = getelementptr inbounds %struct.emmaprp_ctx, ptr %3, i32 0, i32 3
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3.i = getelementptr %struct.emmaprp_ctx, ptr %3, i32 0, i32 3, i32 1
  br label %get_q_data.exit

do.body.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/mx2_emmaprp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 226, 0\0A.popsection", ""() #7, !srcloc !159
  unreachable

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ]
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %14 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %get_q_data.exit
  %sizeimage = getelementptr inbounds %struct.emmaprp_q_data, ptr %retval.0.i, i32 0, i32 2
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
  %sizeimage58 = getelementptr inbounds %struct.emmaprp_q_data, ptr %retval.0.i, i32 0, i32 2
  %20 = ptrtoint ptr %sizeimage58 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sizeimage58, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp1159 = icmp ult i32 %19, %21
  br i1 %cmp1159, label %do.body14.thread, label %if.then.i56

do.body14:                                        ; preds = %vb2_plane_size.exit
  %22 = load i8, ptr @debug, align 1, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool15.not = icmp eq i8 %22, 0
  br i1 %tobool15.not, label %do.body14.cleanup_crit_edge, label %do.body14.vb2_plane_size.exit52_crit_edge

do.body14.vb2_plane_size.exit52_crit_edge:        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_plane_size.exit52

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body14.thread:                                 ; preds = %vb2_plane_size.exit.thread
  %23 = load i8, ptr @debug, align 1, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool15.not60 = icmp eq i8 %23, 0
  br i1 %tobool15.not60, label %do.body14.thread.cleanup_crit_edge, label %if.then.i50

do.body14.thread.cleanup_crit_edge:               ; preds = %do.body14.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i50:                                      ; preds = %do.body14.thread
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit52

vb2_plane_size.exit52:                            ; preds = %if.then.i50, %do.body14.vb2_plane_size.exit52_crit_edge
  %26 = phi i32 [ %21, %if.then.i50 ], [ %17, %do.body14.vb2_plane_size.exit52_crit_edge ]
  %retval.0.i51 = phi i32 [ %25, %if.then.i50 ], [ 0, %do.body14.vb2_plane_size.exit52_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.emmaprp_ctx, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn.in, align 4
  %name2664 = getelementptr inbounds %struct.v4l2_device, ptr %.pn, i32 0, i32 4
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %name2664, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26, i32 noundef %retval.0.i51, i32 noundef %26) #10
  br label %cleanup

if.then.i56:                                      ; preds = %vb2_plane_size.exit.thread
  %28 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %21)
  %cmp1.i = icmp ult i32 %29, %21
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i56.if.end42.i_crit_edge

if.then.i56.if.end42.i_crit_edge:                 ; preds = %if.then.i56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i56
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !160

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

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i56.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %31, %if.then38.i ], [ %21, %if.then.i56.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %32 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42.i, %vb2_plane_size.exit52, %do.body14.thread.cleanup_crit_edge, %do.body14.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit52 ], [ -22, %do.body14.cleanup_crit_edge ], [ 0, %vb2_plane_size.exit.cleanup_crit_edge ], [ 0, %if.end42.i ], [ -22, %do.body14.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emmaprp_buf_queue(ptr noundef %vb) #2 align 64 {
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
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.3, i32 noundef 16) #7
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str.3, i32 noundef 32) #7
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
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
  %3 = load i32, ptr getelementptr inbounds ([2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 1, i32 1), align 4
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
  %arrayidx7.i = getelementptr [2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 %i.018.lcssa.i
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
define internal i32 @vidioc_enum_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 0, i32 1), align 4
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
  %3 = load i32, ptr getelementptr inbounds ([2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 1, i32 1), align 4
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
  %arrayidx7.i = getelementptr [2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 %i.018.lcssa.i
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %5, label %do.body.i.i [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %q_data.i.i = getelementptr inbounds %struct.emmaprp_ctx, ptr %priv, i32 0, i32 3
  br label %get_q_data.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3.i.i = getelementptr %struct.emmaprp_ctx, ptr %priv, i32 0, i32 3, i32 1
  br label %get_q_data.exit.i

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/mx2_emmaprp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 226, 0\0A.popsection", ""() #7, !srcloc !159
  unreachable

get_q_data.exit.i:                                ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.i = phi ptr [ %arrayidx3.i.i, %sw.bb1.i.i ], [ %q_data.i.i, %sw.bb.i.i ]
  %7 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %retval.0.i.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %9 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.emmaprp_q_data, ptr %retval.0.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height.i, align 4
  %height5.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height5.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %field.i, align 4
  %fmt7.i = getelementptr inbounds %struct.emmaprp_q_data, ptr %retval.0.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %fmt7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fmt7.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %17)
  %cmp.i = icmp eq i32 %17, 842093913
  %19 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %retval.0.i.i, align 4
  %mul.i = mul i32 %20, 3
  %div37.i = lshr i32 %mul.i, 1
  %mul15.i = shl i32 %20, 1
  %mul15.sink.i = select i1 %cmp.i, i32 %div37.i, i32 %mul15.i
  %21 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul15.sink.i, ptr %21, align 4
  %sizeimage.i = getelementptr inbounds %struct.emmaprp_q_data, ptr %retval.0.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sizeimage.i, align 4
  %sizeimage20.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %25 = ptrtoint ptr %sizeimage20.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %sizeimage20.i, align 4
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %5, label %do.body.i.i [
    i32 2, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %q_data.i.i = getelementptr inbounds %struct.emmaprp_ctx, ptr %priv, i32 0, i32 3
  br label %get_q_data.exit.i

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3.i.i = getelementptr %struct.emmaprp_ctx, ptr %priv, i32 0, i32 3, i32 1
  br label %get_q_data.exit.i

do.body.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/mx2_emmaprp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 226, 0\0A.popsection", ""() #7, !srcloc !159
  unreachable

get_q_data.exit.i:                                ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %retval.0.i.i = phi ptr [ %arrayidx3.i.i, %sw.bb1.i.i ], [ %q_data.i.i, %sw.bb.i.i ]
  %7 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %retval.0.i.i, align 4
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %9 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.emmaprp_q_data, ptr %retval.0.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height.i, align 4
  %height5.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %height5.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height5.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %field.i, align 4
  %fmt7.i = getelementptr inbounds %struct.emmaprp_q_data, ptr %retval.0.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %fmt7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fmt7.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %17)
  %cmp.i = icmp eq i32 %17, 842093913
  %19 = ptrtoint ptr %retval.0.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %retval.0.i.i, align 4
  %mul.i = mul i32 %20, 3
  %div37.i = lshr i32 %mul.i, 1
  %mul15.i = shl i32 %20, 1
  %mul15.sink.i = select i1 %cmp.i, i32 %div37.i, i32 %mul15.i
  %21 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul15.sink.i, ptr %21, align 4
  %sizeimage.i = getelementptr inbounds %struct.emmaprp_q_data, ptr %retval.0.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %sizeimage.i, align 4
  %sizeimage20.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %25 = ptrtoint ptr %sizeimage20.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %sizeimage20.i, align 4
  br label %vidioc_g_fmt.exit

vidioc_g_fmt.exit:                                ; preds = %get_q_data.exit.i, %entry.vidioc_g_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %get_q_data.exit.i ], [ -22, %entry.vidioc_g_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat.i.i, align 4
  %2 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %1)
  %cmp2.i.i = icmp eq i32 %2, %1
  br i1 %cmp2.i.i, label %entry.find_format.exit.i_crit_edge, label %for.inc.i.i

entry.find_format.exit.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit.i

for.inc.i.i:                                      ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds ([2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp2.1.i.i = icmp eq i32 %3, %1
  br i1 %cmp2.1.i.i, label %for.inc.i.i.find_format.exit.i_crit_edge, label %for.inc.i.i.vidioc_try_fmt_vid_cap.exit.thread_crit_edge

for.inc.i.i.vidioc_try_fmt_vid_cap.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vidioc_try_fmt_vid_cap.exit.thread

for.inc.i.i.find_format.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit.i

find_format.exit.i:                               ; preds = %for.inc.i.i.find_format.exit.i_crit_edge, %entry.find_format.exit.i_crit_edge
  %k.0.lcssa.ph.i.i = phi i32 [ 0, %entry.find_format.exit.i_crit_edge ], [ 1, %for.inc.i.i.find_format.exit.i_crit_edge ]
  %arrayidx615.i.i = getelementptr [2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i.i
  %tobool.not.i = icmp eq ptr %arrayidx615.i.i, null
  br i1 %tobool.not.i, label %find_format.exit.i.vidioc_try_fmt_vid_cap.exit.thread_crit_edge, label %lor.lhs.false.i

find_format.exit.i.vidioc_try_fmt_vid_cap.exit.thread_crit_edge: ; preds = %find_format.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vidioc_try_fmt_vid_cap.exit.thread

lor.lhs.false.i:                                  ; preds = %find_format.exit.i
  %types.i = getelementptr [2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i.i, i32 1
  %4 = ptrtoint ptr %types.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %types.i, align 4
  %and.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.vidioc_try_fmt_vid_cap.exit.thread_crit_edge, label %vidioc_try_fmt_vid_cap.exit

lor.lhs.false.i.vidioc_try_fmt_vid_cap.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vidioc_try_fmt_vid_cap.exit.thread

vidioc_try_fmt_vid_cap.exit.thread:               ; preds = %lor.lhs.false.i.vidioc_try_fmt_vid_cap.exit.thread_crit_edge, %find_format.exit.i.vidioc_try_fmt_vid_cap.exit.thread_crit_edge, %for.inc.i.i.vidioc_try_fmt_vid_cap.exit.thread_crit_edge
  %dev.i = getelementptr inbounds %struct.emmaprp_ctx, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %7, i32 0, i32 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name.i, i32 noundef %1) #10
  br label %cleanup

vidioc_try_fmt_vid_cap.exit:                      ; preds = %lor.lhs.false.i
  %call4.i = tail call fastcc i32 @vidioc_try_fmt(ptr noundef %f) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %vidioc_try_fmt_vid_cap.exit.cleanup_crit_edge

vidioc_try_fmt_vid_cap.exit.cleanup_crit_edge:    ; preds = %vidioc_try_fmt_vid_cap.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %vidioc_try_fmt_vid_cap.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @vidioc_s_fmt(ptr noundef %priv, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %vidioc_try_fmt_vid_cap.exit.cleanup_crit_edge, %vidioc_try_fmt_vid_cap.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call4.i, %vidioc_try_fmt_vid_cap.exit.cleanup_crit_edge ], [ -22, %vidioc_try_fmt_vid_cap.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_out(ptr nocapture noundef readnone %file, ptr noundef %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat.i.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat.i.i, align 4
  %2 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %1)
  %cmp2.i.i = icmp eq i32 %2, %1
  br i1 %cmp2.i.i, label %entry.find_format.exit.i_crit_edge, label %for.inc.i.i

entry.find_format.exit.i_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit.i

for.inc.i.i:                                      ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds ([2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp2.1.i.i = icmp eq i32 %3, %1
  br i1 %cmp2.1.i.i, label %for.inc.i.i.find_format.exit.i_crit_edge, label %for.inc.i.i.vidioc_try_fmt_vid_out.exit.thread_crit_edge

for.inc.i.i.vidioc_try_fmt_vid_out.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vidioc_try_fmt_vid_out.exit.thread

for.inc.i.i.find_format.exit.i_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit.i

find_format.exit.i:                               ; preds = %for.inc.i.i.find_format.exit.i_crit_edge, %entry.find_format.exit.i_crit_edge
  %k.0.lcssa.ph.i.i = phi i32 [ 0, %entry.find_format.exit.i_crit_edge ], [ 1, %for.inc.i.i.find_format.exit.i_crit_edge ]
  %arrayidx615.i.i = getelementptr [2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i.i
  %tobool.not.i = icmp eq ptr %arrayidx615.i.i, null
  br i1 %tobool.not.i, label %find_format.exit.i.vidioc_try_fmt_vid_out.exit.thread_crit_edge, label %lor.lhs.false.i

find_format.exit.i.vidioc_try_fmt_vid_out.exit.thread_crit_edge: ; preds = %find_format.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vidioc_try_fmt_vid_out.exit.thread

lor.lhs.false.i:                                  ; preds = %find_format.exit.i
  %types.i = getelementptr [2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i.i, i32 1
  %4 = ptrtoint ptr %types.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %types.i, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.vidioc_try_fmt_vid_out.exit.thread_crit_edge, label %vidioc_try_fmt_vid_out.exit

lor.lhs.false.i.vidioc_try_fmt_vid_out.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %vidioc_try_fmt_vid_out.exit.thread

vidioc_try_fmt_vid_out.exit.thread:               ; preds = %lor.lhs.false.i.vidioc_try_fmt_vid_out.exit.thread_crit_edge, %find_format.exit.i.vidioc_try_fmt_vid_out.exit.thread_crit_edge, %for.inc.i.i.vidioc_try_fmt_vid_out.exit.thread_crit_edge
  %dev.i = getelementptr inbounds %struct.emmaprp_ctx, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %7, i32 0, i32 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name.i, i32 noundef %1) #10
  br label %cleanup

vidioc_try_fmt_vid_out.exit:                      ; preds = %lor.lhs.false.i
  %call4.i = tail call fastcc i32 @vidioc_try_fmt(ptr noundef %f) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %vidioc_try_fmt_vid_out.exit.cleanup_crit_edge

vidioc_try_fmt_vid_out.exit.cleanup_crit_edge:    ; preds = %vidioc_try_fmt_vid_out.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %vidioc_try_fmt_vid_out.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call fastcc i32 @vidioc_s_fmt(ptr noundef %priv, ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %vidioc_try_fmt_vid_out.exit.cleanup_crit_edge, %vidioc_try_fmt_vid_out.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call4.i, %vidioc_try_fmt_vid_out.exit.cleanup_crit_edge ], [ -22, %vidioc_try_fmt_vid_out.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat.i, align 4
  %2 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %1)
  %cmp2.i = icmp eq i32 %2, %1
  br i1 %cmp2.i, label %entry.find_format.exit_crit_edge, label %for.inc.i

entry.find_format.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit

for.inc.i:                                        ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds ([2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp2.1.i = icmp eq i32 %3, %1
  br i1 %cmp2.1.i, label %for.inc.i.find_format.exit_crit_edge, label %for.inc.i.do.end_crit_edge

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.i.find_format.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit

find_format.exit:                                 ; preds = %for.inc.i.find_format.exit_crit_edge, %entry.find_format.exit_crit_edge
  %k.0.lcssa.ph.i = phi i32 [ 0, %entry.find_format.exit_crit_edge ], [ 1, %for.inc.i.find_format.exit_crit_edge ]
  %arrayidx615.i = getelementptr [2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i
  %tobool.not = icmp eq ptr %arrayidx615.i, null
  br i1 %tobool.not, label %find_format.exit.do.end_crit_edge, label %lor.lhs.false

find_format.exit.do.end_crit_edge:                ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %find_format.exit
  %types = getelementptr [2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i, i32 1
  %4 = ptrtoint ptr %types to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %types, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %find_format.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.emmaprp_ctx, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %7, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name, i32 noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call fastcc i32 @vidioc_try_fmt(ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_out(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %priv, ptr noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat.i, align 4
  %2 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %1)
  %cmp2.i = icmp eq i32 %2, %1
  br i1 %cmp2.i, label %entry.find_format.exit_crit_edge, label %for.inc.i

entry.find_format.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit

for.inc.i:                                        ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds ([2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp2.1.i = icmp eq i32 %3, %1
  br i1 %cmp2.1.i, label %for.inc.i.find_format.exit_crit_edge, label %for.inc.i.do.end_crit_edge

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.inc.i.find_format.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit

find_format.exit:                                 ; preds = %for.inc.i.find_format.exit_crit_edge, %entry.find_format.exit_crit_edge
  %k.0.lcssa.ph.i = phi i32 [ 0, %entry.find_format.exit_crit_edge ], [ 1, %for.inc.i.find_format.exit_crit_edge ]
  %arrayidx615.i = getelementptr [2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i
  %tobool.not = icmp eq ptr %arrayidx615.i, null
  br i1 %tobool.not, label %find_format.exit.do.end_crit_edge, label %lor.lhs.false

find_format.exit.do.end_crit_edge:                ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false:                                    ; preds = %find_format.exit
  %types = getelementptr [2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i, i32 1
  %4 = ptrtoint ptr %types to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %types, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.do.end_crit_edge, label %if.end

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %find_format.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge
  %dev = getelementptr inbounds %struct.emmaprp_ctx, ptr %priv, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %7, i32 0, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name, i32 noundef %1) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call fastcc i32 @vidioc_try_fmt(ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %do.end ]
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
declare dso_local i32 @v4l2_m2m_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vidioc_s_fmt(ptr noundef %ctx, ptr noundef %f) unnamed_addr #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %5, label %do.body.i [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %q_data.i = getelementptr inbounds %struct.emmaprp_ctx, ptr %ctx, i32 0, i32 3
  br label %get_q_data.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx3.i = getelementptr %struct.emmaprp_ctx, ptr %ctx, i32 0, i32 3, i32 1
  br label %get_q_data.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/platform/mx2_emmaprp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 226, 0\0A.popsection", ""() #7, !srcloc !159
  unreachable

get_q_data.exit:                                  ; preds = %sw.bb1.i, %sw.bb.i
  %retval.0.i = phi ptr [ %arrayidx3.i, %sw.bb1.i ], [ %q_data.i, %sw.bb.i ]
  %tobool3.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool3.not, label %get_q_data.exit.cleanup_crit_edge, label %if.end5

get_q_data.exit.cleanup_crit_edge:                ; preds = %get_q_data.exit
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.emmaprp_ctx, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %10, i32 0, i32 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name, ptr noundef nonnull @.str.34) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call fastcc i32 @vidioc_try_fmt(ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %11 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pixelformat.i, align 4
  %13 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %12)
  %cmp2.i = icmp eq i32 %13, %12
  br i1 %cmp2.i, label %if.end13.for.end.thread.i_crit_edge, label %for.inc.i

if.end13.for.end.thread.i_crit_edge:              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread.i

for.inc.i:                                        ; preds = %if.end13
  %14 = load i32, ptr getelementptr inbounds ([2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp2.1.i = icmp eq i32 %14, %12
  br i1 %cmp2.1.i, label %for.inc.i.for.end.thread.i_crit_edge, label %for.inc.i.find_format.exit_crit_edge

for.inc.i.find_format.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit

for.inc.i.for.end.thread.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.inc.i.for.end.thread.i_crit_edge, %if.end13.for.end.thread.i_crit_edge
  %k.0.lcssa.ph.i = phi i32 [ 0, %if.end13.for.end.thread.i_crit_edge ], [ 1, %for.inc.i.for.end.thread.i_crit_edge ]
  %arrayidx615.i = getelementptr [2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i
  br label %find_format.exit

find_format.exit:                                 ; preds = %for.end.thread.i, %for.inc.i.find_format.exit_crit_edge
  %15 = phi ptr [ %arrayidx615.i, %for.end.thread.i ], [ null, %for.inc.i.find_format.exit_crit_edge ]
  %fmt = getelementptr inbounds %struct.emmaprp_q_data, ptr %retval.0.i, i32 0, i32 3
  %16 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %fmt, align 4
  %fmt15 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %17 = ptrtoint ptr %fmt15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fmt15, align 4
  %19 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %retval.0.i, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  %height18 = getelementptr inbounds %struct.emmaprp_q_data, ptr %retval.0.i, i32 0, i32 1
  %22 = ptrtoint ptr %height18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %height18, align 4
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %24)
  %cmp = icmp eq i32 %24, 842093913
  %mul = mul i32 %21, %18
  %mul23 = mul i32 %mul, 3
  %div78 = lshr i32 %mul23, 1
  %mul27 = shl i32 %mul, 1
  %mul27.sink = select i1 %cmp, i32 %div78, i32 %mul27
  %25 = getelementptr inbounds %struct.emmaprp_q_data, ptr %retval.0.i, i32 0, i32 2
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %mul27.sink, ptr %25, align 4
  %27 = load i8, ptr @debug, align 1, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool31.not = icmp eq i8 %27, 0
  br i1 %tobool31.not, label %find_format.exit.cleanup_crit_edge, label %do.end37

find_format.exit.cleanup_crit_edge:               ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end37:                                         ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev39 = getelementptr inbounds %struct.emmaprp_ctx, ptr %ctx, i32 0, i32 1
  %28 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev39, align 4
  %name41 = getelementptr inbounds %struct.v4l2_device, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %f, align 4
  %32 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %retval.0.i, align 4
  %34 = ptrtoint ptr %height18 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height18, align 4
  %36 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fmt, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %name41, ptr noundef nonnull @.str.34, i32 noundef %31, i32 noundef %33, i32 noundef %35, i32 noundef %39) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %find_format.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end, %get_q_data.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %get_q_data.exit.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %do.end37 ], [ 0, %find_format.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vidioc_try_fmt(ptr noundef %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat.i, align 4
  %2 = load i32, ptr @formats, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %1)
  %cmp2.i = icmp eq i32 %2, %1
  br i1 %cmp2.i, label %entry.find_format.exit_crit_edge, label %for.inc.i

entry.find_format.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit

for.inc.i:                                        ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds ([2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp2.1.i = icmp eq i32 %3, %1
  br i1 %cmp2.1.i, label %for.inc.i.find_format.exit_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.i.find_format.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_format.exit

find_format.exit:                                 ; preds = %for.inc.i.find_format.exit_crit_edge, %entry.find_format.exit_crit_edge
  %k.0.lcssa.ph.i = phi i32 [ 0, %entry.find_format.exit_crit_edge ], [ 1, %for.inc.i.find_format.exit_crit_edge ]
  %arrayidx615.i = getelementptr [2 x %struct.emmaprp_fmt], ptr @formats, i32 0, i32 %k.0.lcssa.ph.i
  %tobool.not = icmp eq ptr %arrayidx615.i, null
  br i1 %tobool.not, label %find_format.exit.cleanup_crit_edge, label %if.end

find_format.exit.cleanup_crit_edge:               ; preds = %find_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %find_format.exit
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %field1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %field1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch = icmp ult i32 %5, 2
  br i1 %switch, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %field1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %field1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %1)
  %cmp10 = icmp eq i32 %1, 842093913
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  br i1 %cmp10, label %if.then11, label %if.else17

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef 32, i32 noundef 2040, i32 noundef 3, ptr noundef %height, i32 noundef 32, i32 noundef 2046, i32 noundef 1, i32 noundef 1) #7
  %7 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fmt, align 4
  %mul = mul i32 %8, 3
  %div50 = lshr i32 %mul, 1
  br label %if.end27

if.else17:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @v4l_bound_align_image(ptr noundef %fmt, i32 noundef 32, i32 noundef 2040, i32 noundef 2, ptr noundef %height, i32 noundef 32, i32 noundef 2046, i32 noundef 1, i32 noundef 1) #7
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fmt, align 4
  %mul24 = shl i32 %10, 1
  br label %if.end27

if.end27:                                         ; preds = %if.else17, %if.then11
  %mul24.sink = phi i32 [ %div50, %if.then11 ], [ %mul24, %if.else17 ]
  %11 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul24.sink, ptr %11, align 4
  %height29 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %height29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height29, align 4
  %mul32 = mul i32 %mul24.sink, %14
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %15 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul32, ptr %sizeimage, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end.cleanup_crit_edge, %find_format.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end27 ], [ -22, %find_format.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_curr_priv(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emmaprp_device_run(ptr nocapture noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.emmaprp_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %2 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %3, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #7
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 7
  %call.i113 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #7
  %q_data.i = getelementptr inbounds %struct.emmaprp_ctx, ptr %priv, i32 0, i32 3
  %6 = ptrtoint ptr %q_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %q_data.i, align 4
  %height = getelementptr inbounds %struct.emmaprp_ctx, ptr %priv, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %arrayidx3.i = getelementptr %struct.emmaprp_ctx, ptr %priv, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.i, align 4
  %height7 = getelementptr %struct.emmaprp_ctx, ptr %priv, i32 0, i32 3, i32 1, i32 1
  %12 = ptrtoint ptr %height7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height7, align 4
  %call.i114 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i, i32 noundef 0) #7
  %14 = ptrtoint ptr %call.i114 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call.i114, align 4
  %call.i115 = tail call ptr @vb2_plane_cookie(ptr noundef %call.i113, i32 noundef 0) #7
  %16 = ptrtoint ptr %call.i115 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call.i115, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool11.not = icmp eq i32 %17, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %do.end, label %do.body14

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name) #10
  br label %cleanup

do.body14:                                        ; preds = %entry
  %mul = mul i32 %13, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %15)
  %base_emma = getelementptr inbounds %struct.emmaprp_dev, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base_emma, align 4
  %add.ptr = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #7, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  tail call void @arm_heavy_mb() #7
  %shl = shl i32 %7, 16
  %or = or i32 %shl, %9
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  %22 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_emma, align 4
  %add.ptr21 = getelementptr i8, ptr %23, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %21) #7, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %17)
  %25 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base_emma, align 4
  %add.ptr26 = getelementptr i8, ptr %26, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %24) #7, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %add = add i32 %17, %mul
  %27 = tail call i32 @llvm.bswap.i32(i32 %add)
  %28 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_emma, align 4
  %add.ptr31 = getelementptr i8, ptr %29, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %27) #7, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  tail call void @arm_heavy_mb() #7
  %shr = lshr i32 %mul, 2
  %add36 = add i32 %add, %shr
  %30 = tail call i32 @llvm.bswap.i32(i32 %add36)
  %31 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base_emma, align 4
  %add.ptr38 = getelementptr i8, ptr %32, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %30) #7, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  tail call void @arm_heavy_mb() #7
  %shl42 = shl i32 %11, 16
  %or43 = or i32 %shl42, %13
  %33 = tail call i32 @llvm.bswap.i32(i32 %or43)
  %34 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base_emma, align 4
  %add.ptr45 = getelementptr i8, ptr %35, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %33) #7, !srcloc !156
  %36 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base_emma, align 4
  %add.ptr47 = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %39 = or i32 %38, 620756992
  %40 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base_emma, align 4
  %add.ptr58 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %39) #7, !srcloc !156
  %42 = load i8, ptr @debug, align 1, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i, label %do.body14.emmaprp_dump_regs.exit_crit_edge, label %do.end.i

do.body14.emmaprp_dump_regs.exit_crit_edge:       ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %emmaprp_dump_regs.exit

do.end.i:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %name.i = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base_emma, align 4
  %add.ptr.i = getelementptr i8, ptr %44, i32 12
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !153
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  %47 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base_emma, align 4
  %add.ptr8.i = getelementptr i8, ptr %48, i32 44
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #7, !srcloc !153
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  %51 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base_emma, align 4
  %add.ptr15.i = getelementptr i8, ptr %52, i32 32
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #7, !srcloc !153
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  %55 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base_emma, align 4
  %add.ptr22.i = getelementptr i8, ptr %56, i32 40
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22.i) #7, !srcloc !153
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  %59 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base_emma, align 4
  %add.ptr29.i = getelementptr i8, ptr %60, i32 36
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29.i) #7, !srcloc !153
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  %63 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base_emma, align 4
  %add.ptr36.i = getelementptr i8, ptr %64, i32 64
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #7, !srcloc !153
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  %67 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base_emma, align 4
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #7, !srcloc !153
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  %call47.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef %name.i, ptr noundef nonnull @.str.52, i32 noundef %46, i32 noundef %50, i32 noundef %54, i32 noundef %58, i32 noundef %62, i32 noundef %66, i32 noundef %70) #10
  br label %emmaprp_dump_regs.exit

emmaprp_dump_regs.exit:                           ; preds = %do.end.i, %do.body14.emmaprp_dump_regs.exit_crit_edge
  %71 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base_emma, align 4
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %72) #7, !srcloc !153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  tail call void @arm_heavy_mb() #7
  %74 = or i32 %73, 167772160
  %75 = ptrtoint ptr %base_emma to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %base_emma, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #7, !srcloc !156
  br label %cleanup

cleanup:                                          ; preds = %emmaprp_dump_regs.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @emmaprp_job_abort(ptr nocapture noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.emmaprp_ctx, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %aborting = getelementptr inbounds %struct.emmaprp_ctx, ptr %priv, i32 0, i32 2
  %2 = ptrtoint ptr %aborting to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %aborting, align 4
  %3 = load i8, ptr @debug, align 1, !range !157
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name, ptr noundef nonnull @.str.54) #10
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %m2m_dev = getelementptr inbounds %struct.emmaprp_dev, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_dev, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %priv, i32 0, i32 10
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %5, ptr noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !16, !18, !19, !21, !22, !24, !26, !28, !29, !31, !33, !35, !36, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !58, !60, !61, !62, !63, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !84, !86, !87, !88, !89, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__UNIQUE_ID_description298, !1, !"__UNIQUE_ID_description298", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_author299, !3, !"__UNIQUE_ID_author299", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 31, i32 1}
!4 = !{ptr @__UNIQUE_ID_file300, !5, !"__UNIQUE_ID_file300", i1 false, i1 false}
!5 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 32, i32 1}
!6 = !{ptr @__UNIQUE_ID_license301, !5, !"__UNIQUE_ID_license301", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_version302, !8, !"__UNIQUE_ID_version302", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 33, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__param_debug, !14, !"__param_debug", i1 false, i1 false}
!14 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 36, i32 1}
!15 = !{ptr @__UNIQUE_ID_debugtype303, !14, !"__UNIQUE_ID_debugtype303", i1 false, i1 false}
!16 = !{ptr @__initcall__kmod_mx2_emmaprp__304_912_emmaprp_pdrv_init6, !17, !"__initcall__kmod_mx2_emmaprp__304_912_emmaprp_pdrv_init6", i1 false, i1 false}
!17 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 912, i32 1}
!18 = !{ptr @__exitcall_emmaprp_pdrv_exit, !17, !"__exitcall_emmaprp_pdrv_exit", i1 false, i1 false}
!19 = !{ptr @debug, !20, !"debug", i1 false, i1 false}
!20 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 35, i32 13}
!21 = !{ptr @__param_str_debug, !14, !"__param_str_debug", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 909, i32 11}
!24 = !{ptr @emmaprp_pdrv, !25, !"emmaprp_pdrv", i1 false, i1 false}
!25 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 905, i32 31}
!26 = !{ptr @emmaprp_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 813, i32 2}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 815, i32 49}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 820, i32 49}
!33 = !{ptr @emmaprp_probe.__key.7, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 832, i32 2}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 836, i32 3}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @emmaprp_probe._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @emmaprp_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 847, i32 2}
!44 = !{ptr @emmaprp_probe._entry.12, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @emmaprp_probe._entry_ptr.14, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 865, i32 3}
!48 = !{ptr @emmaprp_probe._entry.15, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @emmaprp_probe._entry_ptr.17, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 872, i32 3}
!52 = !{ptr @emmaprp_probe._entry.18, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @emmaprp_probe._entry_ptr.20, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @emmaprp_videodev, !55, !"emmaprp_videodev", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 788, i32 34}
!56 = !{ptr @emmaprp_fops, !57, !"emmaprp_fops", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 779, i32 42}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 755, i32 2}
!60 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @emmaprp_open._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @emmaprp_open._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @emmaprp_qops, !64, !"emmaprp_qops", i1 false, i1 false}
!64 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 676, i32 29}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 642, i32 2}
!67 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @emmaprp_queue_setup._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @emmaprp_queue_setup._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 652, i32 2}
!72 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @emmaprp_buf_prepare._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @emmaprp_buf_prepare._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 657, i32 3}
!77 = !{ptr @emmaprp_buf_prepare._entry.27, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @emmaprp_buf_prepare._entry_ptr.29, !76, !"_entry_ptr", i1 false, i1 false}
!79 = distinct !{null, !80, !"__already_done", i1 false, i1 false}
!80 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!81 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @formats, !83, !"formats", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 153, i32 27}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 765, i32 2}
!86 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @emmaprp_release._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @emmaprp_release._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @emmaprp_ioctl_ops, !90, !"emmaprp_ioctl_ops", i1 false, i1 false}
!90 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 593, i32 36}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 546, i32 3}
!93 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @vidioc_s_fmt._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @vidioc_s_fmt._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 562, i32 2}
!98 = !{ptr @vidioc_s_fmt._entry.35, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @vidioc_s_fmt._entry_ptr.37, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.38, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 505, i32 3}
!102 = !{ptr @.str.39, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @vidioc_try_fmt_vid_cap._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @vidioc_try_fmt_vid_cap._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 522, i32 3}
!107 = !{ptr @vidioc_try_fmt_vid_out._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @vidioc_try_fmt_vid_out._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.41, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 339, i32 2}
!111 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @emmaprp_irq._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @emmaprp_irq._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.44, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 343, i32 3}
!116 = !{ptr @emmaprp_irq._entry.43, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @emmaprp_irq._entry_ptr.45, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 350, i32 4}
!120 = !{ptr @emmaprp_irq._entry.46, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @emmaprp_irq._entry_ptr.48, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @m2m_ops, !123, !"m2m_ops", i1 false, i1 false}
!123 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 798, i32 34}
!124 = !{ptr @.str.49, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 293, i32 3}
!126 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @emmaprp_device_run._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @emmaprp_device_run._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 248, i32 2}
!131 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @emmaprp_dump_regs._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @emmaprp_dump_regs._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 241, i32 2}
!136 = !{ptr @.str.54, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @emmaprp_job_abort._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @emmaprp_job_abort._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/platform/mx2_emmaprp.c", i32 895, i32 2}
!141 = !{ptr @.str.56, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @emmaprp_remove._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @emmaprp_remove._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i64 5074775}
!154 = !{i64 2156444115}
!155 = !{i64 2156444342}
!156 = !{i64 5074357}
!157 = !{i8 0, i8 2}
!158 = !{i64 2156450283}
!159 = !{i64 2156424324, i64 2156424825, i64 2156424361, i64 2156424417, i64 2156424451, i64 2156424475, i64 2156424516, i64 2156424537, i64 2156424565, i64 2156424599}
!160 = !{!"branch_weights", i32 2000, i32 1}
!161 = !{i64 2156438752}
!162 = !{i64 2156439225}
!163 = !{i64 2156439726}
!164 = !{i64 2156440149}
!165 = !{i64 2156440615}
!166 = !{i64 2156441166}
!167 = !{i64 2156441955}
!168 = !{i64 2156442240}
!169 = !{i64 2156433564}
!170 = !{i64 2156434079}
!171 = !{i64 2156434594}
!172 = !{i64 2156435109}
!173 = !{i64 2156435624}
!174 = !{i64 2156436139}
!175 = !{i64 2156436654}
!176 = !{i64 2156443035}
!177 = !{i64 2156443320}
