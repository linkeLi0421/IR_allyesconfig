; ModuleID = '/llk/IR_all_yes/drivers/media/platform/stm32/dma2d/dma2d.c_pt.bc'
source_filename = "../drivers/media/platform/stm32/dma2d/dma2d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.dma2d_frame = type { i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, [4 x i8], i32, i32, i32 }
%struct.dma2d_fmt = type { i32, i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dma2d_dev = type { %struct.v4l2_device, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.atomic_t, ptr, ptr, ptr, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_fh = type { %struct.list_head, ptr, ptr, i32, %struct.wait_queue_head, %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, ptr }
%struct.v4l2_m2m_ctx = type { ptr, i8, i8, ptr, i8, i8, ptr, %struct.v4l2_m2m_queue_ctx, %struct.v4l2_m2m_queue_ctx, %struct.list_head, i32, %struct.wait_queue_head, ptr }
%struct.v4l2_m2m_queue_ctx = type { %struct.vb2_queue, %struct.list_head, %struct.spinlock, i8, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dma2d_ctx = type { %struct.v4l2_fh, ptr, %struct.dma2d_frame, %struct.dma2d_frame, %struct.dma2d_frame, %struct.v4l2_framebuffer, i32, %struct.v4l2_ctrl_handler, i32, i32, i32, i32 }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.102 }
%struct.anon.102 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
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
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.90, %union.anon.91, i32, ptr, i32, %struct.anon.92, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.90 = type { i64 }
%union.anon.91 = type { ptr }
%struct.anon.92 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }

@__initcall__kmod_stm32_dma2d__298_735_dma2d_pdrv_init6 = internal global ptr @dma2d_pdrv_init, section ".initcall6.init", align 4
@dma2d_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @dma2d_probe, ptr @dma2d_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_dma2d_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_dma2d_pdrv_exit = internal global ptr @dma2d_pdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [56 x i8] c"stm32_dma2d.author=Dillon Min <dillon.minfei@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [65 x i8] c"stm32_dma2d.description=STM32 Chrom-Art Accelerator DMA2D driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [58 x i8] c"stm32_dma2d.file=drivers/media/platform/stm32/stm32-dma2d\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [24 x i8] c"stm32_dma2d.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stm-dma2d\00", [22 x i8] zeroinitializer }, align 32
@stm32_dma2d_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-dma2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@dma2d_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->ctrl_lock\00", [16 x i8] zeroinitializer }, align 32
@dma2d_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->mutex\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dma2d\00", [26 x i8] zeroinitializer }, align 32
@dma2d_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 625, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get dma2d clock gate\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dma2d_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/platform/stm32/dma2d/dma2d.c\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dma2d_probe._entry_ptr = internal global ptr @dma2d_probe._entry, section ".printk_index", align 4
@dma2d_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 632, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to prepare dma2d clock gate\0A\00", [60 x i8] zeroinitializer }, align 32
@dma2d_probe._entry_ptr.12 = internal global ptr @dma2d_probe._entry.10, section ".printk_index", align 4
@dma2d_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 638, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to find IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@dma2d_probe._entry_ptr.15 = internal global ptr @dma2d_probe._entry.13, section ".printk_index", align 4
@dma2d_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.7, i32 648, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to install IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@dma2d_probe._entry_ptr.18 = internal global ptr @dma2d_probe._entry.16, section ".printk_index", align 4
@dma2d_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.7, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to allocate video device\0A\00", [57 x i8] zeroinitializer }, align 32
@dma2d_probe._entry_ptr.21 = internal global ptr @dma2d_probe._entry.19, section ".printk_index", align 4
@dma2d_videodev = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @dma2d_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"stm-dma2d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 2, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 0, ptr @video_device_release, ptr @dma2d_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@dma2d_m2m_ops = internal constant { %struct.v4l2_m2m_ops, [20 x i8] } { %struct.v4l2_m2m_ops { ptr @device_run, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@dma2d_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.7, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", [59 x i8] zeroinitializer }, align 32
@dma2d_probe._entry_ptr.24 = internal global ptr @dma2d_probe._entry.22, section ".printk_index", align 4
@dma2d_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str.7, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to register video device\0A\00", [57 x i8] zeroinitializer }, align 32
@dma2d_probe._entry_ptr.27 = internal global ptr @dma2d_probe._entry.25, section ".printk_index", align 4
@dma2d_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.6, ptr @.str.7, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: device registered as /dev/video%d\0A\00", [55 x i8] zeroinitializer }, align 32
@dma2d_probe._entry_ptr.30 = internal global ptr @dma2d_probe._entry.28, section ".printk_index", align 4
@dma2d_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr null, ptr null, ptr @v4l2_m2m_fop_poll, ptr @video_ioctl2, ptr null, ptr @v4l2_m2m_fop_mmap, ptr @dma2d_open, ptr @dma2d_release }, [60 x i8] zeroinitializer }, align 32
@dma2d_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt, ptr null, ptr @vidioc_enum_fmt, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt, ptr null, ptr @vidioc_g_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt, ptr null, ptr @vidioc_s_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt, ptr null, ptr @vidioc_try_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_reqbufs, ptr @v4l2_m2m_ioctl_querybuf, ptr @v4l2_m2m_ioctl_qbuf, ptr @v4l2_m2m_ioctl_expbuf, ptr @v4l2_m2m_ioctl_dqbuf, ptr @v4l2_m2m_ioctl_create_bufs, ptr @v4l2_m2m_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @v4l2_m2m_ioctl_streamon, ptr @v4l2_m2m_ioctl_streamoff, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@def_frame = internal constant { %struct.dma2d_frame, [40 x i8] } { %struct.dma2d_frame { i32 240, i32 320, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 0, ptr @formats, [4 x i8] c"\00\00\00\FF", i32 0, i32 307200, i32 0 }, [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@formats = internal constant { [5 x %struct.dma2d_fmt], [36 x i8] } { [5 x %struct.dma2d_fmt] [%struct.dma2d_fmt { i32 875708738, i32 32, i32 0 }, %struct.dma2d_fmt { i32 859981650, i32 24, i32 1 }, %struct.dma2d_fmt { i32 1346520914, i32 16, i32 2 }, %struct.dma2d_fmt { i32 892424769, i32 16, i32 3 }, %struct.dma2d_fmt { i32 842093121, i32 16, i32 4 }], [36 x i8] zeroinitializer }, align 32
@dma2d_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @dma2d_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr @dma2d_buf_out_validate, ptr null, ptr @dma2d_buf_prepare, ptr null, ptr null, ptr @dma2d_start_streaming, ptr @dma2d_stop_streaming, ptr @dma2d_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@dma2d_setup_ctrls._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dma2d:264:(handler)->_lock\00", [37 x i8] zeroinitializer }, align 32
@dma2d_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @dma2d_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"platform:stm-dma2d\00", [45 x i8] zeroinitializer }, align 32
@dma2d_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: Removing stm-dma2d\00", [39 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma2d_remove\00", [19 x i8] zeroinitializer }, align 32
@dma2d_remove._entry_ptr = internal global ptr @dma2d_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.36 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.37 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.38 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 9963807, i64 9963819]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16]
@__sancov_gen_cov_switch_values.41 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 842093121, i64 859981650, i64 875708738, i64 892424769, i64 1346520914]
@__sancov_gen_cov_switch_values.43 = internal global [10 x i64] [i64 8, i64 32, i64 2, i64 3, i64 5, i64 7, i64 8, i64 10, i64 12, i64 14]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 32, i64 842093121, i64 859981650, i64 875708738, i64 892424769, i64 1346520914]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"dma2d_pdrv\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 726, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 730, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [18 x i8] c"stm32_dma2d_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 717, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 613, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 614, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 623, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 625, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 632, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 638, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 648, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 658, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [15 x i8] c"dma2d_videodev\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 587, i32 34 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"dma2d_m2m_ops\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 596, i32 34 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 671, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 678, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 684, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [11 x i8] c"dma2d_fops\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 547, i32 42 }
@___asan_gen_.140 = private unnamed_addr constant [16 x i8] c"dma2d_ioctl_ops\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 559, i32 36 }
@___asan_gen_.143 = private unnamed_addr constant [10 x i8] c"def_frame\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 80, i32 33 }
@___asan_gen_.146 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 50, i32 31 }
@___asan_gen_.149 = private unnamed_addr constant [11 x i8] c"dma2d_qops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 182, i32 29 }
@___asan_gen_.153 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1163, i32 7 }
@___asan_gen_.155 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 264, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [15 x i8] c"dma2d_ctrl_ops\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 256, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 341, i32 25 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [46 x i8] c"../drivers/media/platform/stm32/dma2d/dma2d.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 706, i32 2 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_dma2d_pdrv_exit, ptr @__initcall__kmod_stm32_dma2d__298_735_dma2d_pdrv_init6, ptr @dma2d_pdrv_exit, ptr @dma2d_probe._entry, ptr @dma2d_probe._entry.10, ptr @dma2d_probe._entry.13, ptr @dma2d_probe._entry.16, ptr @dma2d_probe._entry.19, ptr @dma2d_probe._entry.22, ptr @dma2d_probe._entry.25, ptr @dma2d_probe._entry.28, ptr @dma2d_probe._entry_ptr, ptr @dma2d_probe._entry_ptr.12, ptr @dma2d_probe._entry_ptr.15, ptr @dma2d_probe._entry_ptr.18, ptr @dma2d_probe._entry_ptr.21, ptr @dma2d_probe._entry_ptr.24, ptr @dma2d_probe._entry_ptr.27, ptr @dma2d_probe._entry_ptr.30, ptr @dma2d_remove._entry, ptr @dma2d_remove._entry_ptr, ptr @dma2d_pdrv, ptr @.str, ptr @stm32_dma2d_match, ptr @dma2d_probe.__key, ptr @.str.1, ptr @dma2d_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @dma2d_videodev, ptr @dma2d_m2m_ops, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @dma2d_fops, ptr @dma2d_ioctl_ops, ptr @def_frame, ptr @formats, ptr @dma2d_qops, ptr @.str.31, ptr @dma2d_setup_ctrls._key, ptr @.str.32, ptr @dma2d_ctrl_ops, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_dma2d_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_videodev to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_m2m_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @def_frame to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_setup_ctrls._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma2d_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dma2d_pdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @dma2d_pdrv, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dma2d_pdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @dma2d_pdrv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma2d_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 292, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %ctrl_lock = getelementptr inbounds %struct.dma2d_dev, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %ctrl_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @dma2d_probe.__key, i16 noundef signext 3) #7
  %mutex = getelementptr inbounds %struct.dma2d_dev, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.3, ptr noundef nonnull @dma2d_probe.__key.2) #7
  %num_inst = getelementptr inbounds %struct.dma2d_dev, ptr %call.i, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %num_inst, i32 noundef 4) #7
  %0 = ptrtoint ptr %num_inst to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %num_inst, align 4
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call6) #7
  %regs = getelementptr inbounds %struct.dma2d_dev, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %regs, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %do.body
  %call16 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.4) #7
  %gate = getelementptr inbounds %struct.dma2d_dev, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %gate to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call16, ptr %gate, align 4
  %cmp.i170 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %do.end22, label %if.end24

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %call26 = tail call i32 @clk_prepare(ptr noundef %call16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #10
  br label %put_clk_gate

if.end33:                                         ; preds = %if.end24
  %call34 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #7
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %do.end39, label %if.end41

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #10
  br label %unprep_clk_gate

if.end41:                                         ; preds = %if.end33
  %4 = ptrtoint ptr %call34 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call34, align 4
  %irq = getelementptr inbounds %struct.dma2d_dev, ptr %call.i, i32 0, i32 9
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %irq, align 4
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 8
  %call.i171 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %5, ptr noundef nonnull @dma2d_isr, ptr noundef null, i32 noundef 0, ptr noundef %8, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool45.not = icmp eq i32 %call.i171, 0
  br i1 %tobool45.not, label %if.end51, label %do.end49

do.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #10
  br label %unprep_clk_gate

if.end51:                                         ; preds = %if.end41
  %call53 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end56, label %if.end51.unprep_clk_gate_crit_edge

if.end51.unprep_clk_gate_crit_edge:               ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %unprep_clk_gate

if.end56:                                         ; preds = %if.end51
  %call57 = tail call ptr @video_device_alloc() #7
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %do.end62, label %if.end66

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %name64 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name64) #10
  br label %unreg_v4l2_dev

if.end66:                                         ; preds = %if.end56
  %9 = call ptr @memcpy(ptr %call57, ptr @dma2d_videodev, i32 1352)
  %lock = getelementptr inbounds %struct.video_device, ptr %call57, i32 0, i32 26
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mutex, ptr %lock, align 8
  %v4l2_dev69 = getelementptr inbounds %struct.video_device, ptr %call57, i32 0, i32 7
  %11 = ptrtoint ptr %v4l2_dev69 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %v4l2_dev69, align 4
  %device_caps = getelementptr inbounds %struct.video_device, ptr %call57, i32 0, i32 4
  %12 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 67141632, ptr %device_caps, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call70 = tail call ptr @v4l2_m2m_init(ptr noundef nonnull @dma2d_m2m_ops) #7
  %m2m_dev = getelementptr inbounds %struct.dma2d_dev, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call70, ptr %m2m_dev, align 4
  %cmp.i172 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i172, label %do.end76, label %if.end84

do.end76:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %name79 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name79) #10
  %15 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %m2m_dev, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %rel_vdev

if.end84:                                         ; preds = %if.end66
  %fops.i = getelementptr inbounds %struct.video_device, ptr %call57, i32 0, i32 3
  %18 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fops.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call.i173 = tail call i32 @__video_register_device(ptr noundef nonnull %call57, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef %21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i173)
  %tobool86.not = icmp eq i32 %call.i173, 0
  br i1 %tobool86.not, label %if.end96, label %do.end90

do.end90:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %name93 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %name93) #10
  %22 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %23) #7
  br label %rel_vdev

if.end96:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i174 = getelementptr inbounds %struct.video_device, ptr %call57, i32 0, i32 5, i32 8
  %24 = ptrtoint ptr %driver_data.i.i174 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i174, align 4
  %vfd97 = getelementptr inbounds %struct.dma2d_dev, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %vfd97 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call57, ptr %vfd97, align 4
  %name103 = getelementptr inbounds %struct.v4l2_device, ptr %call.i, i32 0, i32 4
  %num = getelementptr inbounds %struct.video_device, ptr %call57, i32 0, i32 16
  %26 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %num, align 4
  %conv = zext i16 %27 to i32
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name103, i32 noundef %conv) #10
  br label %cleanup

rel_vdev:                                         ; preds = %do.end90, %do.end76
  %ret.0 = phi i32 [ %17, %do.end76 ], [ %call.i173, %do.end90 ]
  tail call void @video_device_release(ptr noundef nonnull %call57) #7
  br label %unreg_v4l2_dev

unreg_v4l2_dev:                                   ; preds = %rel_vdev, %do.end62
  %ret.1 = phi i32 [ %ret.0, %rel_vdev ], [ -12, %do.end62 ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call.i) #7
  br label %unprep_clk_gate

unprep_clk_gate:                                  ; preds = %unreg_v4l2_dev, %if.end51.unprep_clk_gate_crit_edge, %do.end49, %do.end39
  %ret.2 = phi i32 [ %call.i171, %do.end49 ], [ %call53, %if.end51.unprep_clk_gate_crit_edge ], [ %ret.1, %unreg_v4l2_dev ], [ -6, %do.end39 ]
  %28 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %gate, align 4
  tail call void @clk_unprepare(ptr noundef %29) #7
  br label %put_clk_gate

put_clk_gate:                                     ; preds = %unprep_clk_gate, %do.end31
  %ret.3 = phi i32 [ %call26, %do.end31 ], [ %ret.2, %unprep_clk_gate ]
  %30 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gate, align 4
  tail call void @clk_put(ptr noundef %31) #7
  br label %cleanup

cleanup:                                          ; preds = %put_clk_gate, %if.end96, %do.end22, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then11 ], [ -6, %do.end22 ], [ %ret.3, %put_clk_gate ], [ 0, %if.end96 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma2d_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_device, ptr %1, i32 0, i32 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name) #10
  %m2m_dev = getelementptr inbounds %struct.dma2d_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %m2m_dev, align 4
  tail call void @v4l2_m2m_release(ptr noundef %3) #7
  %vfd = getelementptr inbounds %struct.dma2d_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %vfd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vfd, align 4
  tail call void @video_unregister_device(ptr noundef %5) #7
  tail call void @v4l2_device_unregister(ptr noundef %1) #7
  %gate = getelementptr inbounds %struct.dma2d_dev, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gate, align 4
  tail call void @clk_unprepare(ptr noundef %7) #7
  %8 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gate, align 4
  tail call void @clk_put(ptr noundef %9) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma2d_isr(i32 noundef %irq, ptr noundef %prv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %curr = getelementptr inbounds %struct.dma2d_dev, ptr %prv, i32 0, i32 8
  %0 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr, align 4
  %call = tail call i32 @dma2d_get_int(ptr noundef %prv) #7
  tail call void @dma2d_clear_int(ptr noundef %prv) #7
  %and = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.then, label %entry.if.end96_crit_edge

entry.if.end96_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then:                                          ; preds = %entry
  %gate = getelementptr inbounds %struct.dma2d_dev, ptr %prv, i32 0, i32 7
  %2 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gate, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %do.end, label %if.then.if.end_crit_edge, !prof !98

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 529, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %5, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %out_q_ctx.i) #7
  %6 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %7, i32 0, i32 7
  %call.i111 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i) #7
  %tobool28.not = icmp eq ptr %call.i111, null
  br i1 %tobool28.not, label %do.end46, label %if.end.if.end52_crit_edge, !prof !98

if.end.if.end52_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

do.end46:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 534, i32 noundef 9, ptr noundef null) #7
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %if.end.if.end52_crit_edge
  %tobool61.not = icmp eq ptr %call.i, null
  br i1 %tobool61.not, label %do.end79, label %if.end52.if.end85_crit_edge, !prof !98

if.end52.if.end85_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

do.end79:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 535, i32 noundef 9, ptr noundef null) #7
  br label %if.end85

if.end85:                                         ; preds = %do.end79, %if.end52.if.end85_crit_edge
  tail call void @vb2_buffer_done(ptr noundef %call.i, i32 noundef 5) #7
  tail call void @vb2_buffer_done(ptr noundef %call.i111, i32 noundef 5) #7
  %m2m_dev = getelementptr inbounds %struct.dma2d_dev, ptr %prv, i32 0, i32 1
  %8 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %m2m_dev, align 4
  %10 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_job_finish(ptr noundef %9, ptr noundef %11) #7
  %12 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %curr, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.end85, %entry.if.end96_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma2d_get_int(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma2d_clear_int(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_job_finish(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_buf_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma2d_open(ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 612) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.dma2d_ctx, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %dev2, align 8
  %cap = getelementptr inbounds %struct.dma2d_ctx, ptr %call7.i.i, i32 0, i32 2
  %4 = call ptr @memcpy(ptr %cap, ptr @def_frame, i32 56)
  %bg = getelementptr inbounds %struct.dma2d_ctx, ptr %call7.i.i, i32 0, i32 4
  %5 = call ptr @memcpy(ptr %bg, ptr @def_frame, i32 56)
  %out = getelementptr inbounds %struct.dma2d_ctx, ptr %call7.i.i, i32 0, i32 3
  %6 = call ptr @memcpy(ptr %out, ptr @def_frame, i32 56)
  %op_mode = getelementptr inbounds %struct.dma2d_ctx, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %op_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %op_mode, align 8
  %colorspace = getelementptr inbounds %struct.dma2d_ctx, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3, ptr %colorspace, align 4
  %mutex = getelementptr inbounds %struct.dma2d_dev, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %m2m_dev = getelementptr inbounds %struct.dma2d_dev, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %m2m_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %m2m_dev, align 4
  %call7 = tail call ptr @v4l2_m2m_ctx_init(ptr noundef %10, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @queue_init) #7
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7, ptr %m2m_ctx, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call7 to i32
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end16:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call ptr @video_devdata(ptr noundef %file) #7
  tail call void @v4l2_fh_init(ptr noundef nonnull %call7.i.i, ptr noundef %call18) #7
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i, ptr %private_data, align 4
  tail call void @v4l2_fh_add(ptr noundef nonnull %call7.i.i) #7
  %ctrl_handler.i = getelementptr inbounds %struct.dma2d_ctx, ptr %call7.i.i, i32 0, i32 7
  %call.i54 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler.i, i32 noundef 2, ptr noundef nonnull @dma2d_setup_ctrls._key, ptr noundef nonnull @.str.32) #7
  %call1.i = tail call ptr @v4l2_ctrl_new_std_menu(ptr noundef %ctrl_handler.i, ptr noundef nonnull @dma2d_ctrl_ops, i32 noundef 9963807, i8 noundef zeroext 16, i64 noundef -65538, i8 noundef zeroext 0) #7
  %call2.i = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler.i, ptr noundef nonnull @dma2d_ctrl_ops, i32 noundef 9963819, i64 noundef 0, i64 noundef 16777215, i64 noundef 1, i64 noundef 0) #7
  %call22 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler.i) #7
  %ctrl_handler25 = getelementptr inbounds %struct.v4l2_fh, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %ctrl_handler25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ctrl_handler.i, ptr %ctrl_handler25, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then11, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -512, %if.then5 ], [ %12, %if.then11 ], [ 0, %if.end16 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma2d_release(ptr noundef %file) #2 align 64 {
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
  %mutex = getelementptr inbounds %struct.dma2d_dev, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %m2m_ctx, align 4
  tail call void @v4l2_m2m_ctx_release(ptr noundef %5) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  %ctrl_handler = getelementptr inbounds %struct.dma2d_ctx, ptr %3, i32 0, i32 7
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #7
  tail call void @v4l2_fh_del(ptr noundef %3) #7
  tail call void @v4l2_fh_exit(ptr noundef %3) #7
  tail call void @kfree(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_ctx_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
  store i32 17, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %priv, ptr %drv_priv, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 7
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @dma2d_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 8
  %4 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 12
  %5 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 744, ptr %buf_struct_size, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 13
  %6 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16384, ptr %timestamp_flags, align 4
  %dev = getelementptr inbounds %struct.dma2d_ctx, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %mutex = getelementptr inbounds %struct.dma2d_dev, ptr %8, i32 0, i32 3
  %lock = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 5
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %mutex, ptr %lock, align 4
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %dev3 = getelementptr inbounds %struct.vb2_queue, ptr %src_vq, i32 0, i32 2
  %13 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %dev3, align 4
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
  store i32 17, ptr %io_modes5, align 4
  %drv_priv6 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 10
  %16 = ptrtoint ptr %drv_priv6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %priv, ptr %drv_priv6, align 4
  %ops7 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 7
  %17 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @dma2d_qops, ptr %ops7, align 4
  %mem_ops8 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 8
  %18 = ptrtoint ptr %mem_ops8 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops8, align 4
  %buf_struct_size9 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 12
  %19 = ptrtoint ptr %buf_struct_size9 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 744, ptr %buf_struct_size9, align 4
  %timestamp_flags10 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 13
  %20 = ptrtoint ptr %timestamp_flags10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16384, ptr %timestamp_flags10, align 4
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %mutex12 = getelementptr inbounds %struct.dma2d_dev, ptr %22, i32 0, i32 3
  %lock13 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 5
  %23 = ptrtoint ptr %lock13 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %mutex12, ptr %lock13, align 4
  %24 = load ptr, ptr %dev, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %dev17 = getelementptr inbounds %struct.vb2_queue, ptr %dst_vq, i32 0, i32 2
  %27 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %dev17, align 4
  %call18 = tail call i32 @vb2_queue_init(ptr noundef %dst_vq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dma2d_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef readnone %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vq, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %cond.false.i [
    i32 2, label %entry.cond.true.i_crit_edge
    i32 10, label %entry.cond.true.i_crit_edge9
    i32 3, label %entry.cond.true.i_crit_edge10
    i32 8, label %entry.cond.true.i_crit_edge11
    i32 5, label %entry.cond.true.i_crit_edge12
    i32 7, label %entry.cond.true.i_crit_edge13
    i32 12, label %entry.cond.true.i_crit_edge14
    i32 14, label %entry.cond.true.i_crit_edge15
  ]

entry.cond.true.i_crit_edge15:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge14:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge13:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge12:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge11:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge10:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge9:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

cond.true.i:                                      ; preds = %entry.cond.true.i_crit_edge, %entry.cond.true.i_crit_edge9, %entry.cond.true.i_crit_edge10, %entry.cond.true.i_crit_edge11, %entry.cond.true.i_crit_edge12, %entry.cond.true.i_crit_edge13, %entry.cond.true.i_crit_edge14, %entry.cond.true.i_crit_edge15
  %cap.i = getelementptr inbounds %struct.dma2d_ctx, ptr %1, i32 0, i32 2
  br label %get_frame.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %out.i = getelementptr inbounds %struct.dma2d_ctx, ptr %1, i32 0, i32 3
  br label %get_frame.exit

get_frame.exit:                                   ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %cap.i, %cond.true.i ], [ %out.i, %cond.false.i ]
  %5 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sizes, align 4
  %size = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 12
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp = icmp ult i32 %8, %10
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %get_frame.exit
  call void @__sanitizer_cov_trace_pc() #9
  %size2 = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 12
  %11 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size2, align 4
  %13 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %sizes, align 4
  %14 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %nplanes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dma2d_buf_out_validate(ptr nocapture noundef %vb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %0 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %field, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp3.not = icmp eq i32 %4, 1
  %. = select i1 %cmp3.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma2d_buf_prepare(ptr nocapture noundef %vb) #2 align 64 {
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
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %5, label %cond.false.i [
    i32 2, label %entry.cond.true.i_crit_edge
    i32 10, label %entry.cond.true.i_crit_edge17
    i32 3, label %entry.cond.true.i_crit_edge18
    i32 8, label %entry.cond.true.i_crit_edge19
    i32 5, label %entry.cond.true.i_crit_edge20
    i32 7, label %entry.cond.true.i_crit_edge21
    i32 12, label %entry.cond.true.i_crit_edge22
    i32 14, label %entry.cond.true.i_crit_edge23
  ]

entry.cond.true.i_crit_edge23:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge22:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge21:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge20:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge19:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge18:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge17:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

cond.true.i:                                      ; preds = %entry.cond.true.i_crit_edge, %entry.cond.true.i_crit_edge17, %entry.cond.true.i_crit_edge18, %entry.cond.true.i_crit_edge19, %entry.cond.true.i_crit_edge20, %entry.cond.true.i_crit_edge21, %entry.cond.true.i_crit_edge22, %entry.cond.true.i_crit_edge23
  %cap.i = getelementptr inbounds %struct.dma2d_ctx, ptr %3, i32 0, i32 2
  br label %get_frame.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %out.i = getelementptr inbounds %struct.dma2d_ctx, ptr %3, i32 0, i32 3
  br label %get_frame.exit

get_frame.exit:                                   ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %cap.i, %cond.true.i ], [ %out.i, %cond.false.i ]
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %7 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %get_frame.exit
  %size = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 12
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.cleanup_crit_edge

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit.thread:                       ; preds = %get_frame.exit
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %11 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %length.i, align 8
  %size15 = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 12
  %13 = ptrtoint ptr %size15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp16 = icmp ult i32 %12, %14
  br i1 %cmp16, label %vb2_plane_size.exit.thread.cleanup_crit_edge, label %if.then.i13

vb2_plane_size.exit.thread.cleanup_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i13:                                      ; preds = %vb2_plane_size.exit.thread
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %14)
  %cmp1.i = icmp ult i32 %16, %14
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i13.if.end42.i_crit_edge

if.then.i13.if.end42.i_crit_edge:                 ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i13
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !99

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1163, i32 noundef 9, ptr noundef null) #7
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %17 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i13.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %18, %if.then38.i ], [ %14, %if.then.i13.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %19 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %vb2_plane_size.exit.thread.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vb2_set_plane_payload.exit ], [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ -22, %vb2_plane_size.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dma2d_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %3, label %cond.false.i [
    i32 2, label %entry.cond.true.i_crit_edge
    i32 10, label %entry.cond.true.i_crit_edge3
    i32 3, label %entry.cond.true.i_crit_edge4
    i32 8, label %entry.cond.true.i_crit_edge5
    i32 5, label %entry.cond.true.i_crit_edge6
    i32 7, label %entry.cond.true.i_crit_edge7
    i32 12, label %entry.cond.true.i_crit_edge8
    i32 14, label %entry.cond.true.i_crit_edge9
  ]

entry.cond.true.i_crit_edge9:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge8:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge7:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge6:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge5:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge4:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge3:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

entry.cond.true.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

cond.true.i:                                      ; preds = %entry.cond.true.i_crit_edge, %entry.cond.true.i_crit_edge3, %entry.cond.true.i_crit_edge4, %entry.cond.true.i_crit_edge5, %entry.cond.true.i_crit_edge6, %entry.cond.true.i_crit_edge7, %entry.cond.true.i_crit_edge8, %entry.cond.true.i_crit_edge9
  %cap.i = getelementptr inbounds %struct.dma2d_ctx, ptr %1, i32 0, i32 2
  br label %get_frame.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %out.i = getelementptr inbounds %struct.dma2d_ctx, ptr %1, i32 0, i32 3
  br label %get_frame.exit

get_frame.exit:                                   ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %cap.i, %cond.true.i ], [ %out.i, %cond.false.i ]
  %sequence = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 13
  %5 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %sequence, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma2d_stop_streaming(ptr nocapture noundef readonly %q) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %1, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %if.end26, %entry
  %2 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %q, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %3, label %if.else [
    i32 2, label %for.cond.if.then_crit_edge
    i32 10, label %for.cond.if.then_crit_edge38
    i32 3, label %for.cond.if.then_crit_edge39
    i32 8, label %for.cond.if.then_crit_edge40
    i32 5, label %for.cond.if.then_crit_edge41
    i32 7, label %for.cond.if.then_crit_edge42
    i32 12, label %for.cond.if.then_crit_edge43
    i32 14, label %for.cond.if.then_crit_edge44
  ]

for.cond.if.then_crit_edge44:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.if.then_crit_edge43:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.if.then_crit_edge42:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.if.then_crit_edge41:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.if.then_crit_edge40:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.if.then_crit_edge39:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.if.then_crit_edge38:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.cond.if.then_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %for.cond.if.then_crit_edge, %for.cond.if.then_crit_edge38, %for.cond.if.then_crit_edge39, %for.cond.if.then_crit_edge40, %for.cond.if.then_crit_edge41, %for.cond.if.then_crit_edge42, %for.cond.if.then_crit_edge43, %for.cond.if.then_crit_edge44
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 8
  br label %if.end

if.else:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %8, i32 0, i32 7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cap_q_ctx.i.sink = phi ptr [ %cap_q_ctx.i, %if.else ], [ %out_q_ctx.i, %if.then ]
  %call.i37 = tail call ptr @v4l2_m2m_buf_remove(ptr noundef %cap_q_ctx.i.sink) #7
  %tobool.not = icmp eq ptr %call.i37, null
  br i1 %tobool.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  ret void

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @vb2_buffer_done(ptr noundef nonnull %call.i37, i32 noundef 6) #7
  br label %for.cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma2d_buf_queue(ptr noundef %vb) #2 align 64 {
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
declare dso_local void @v4l2_m2m_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std_menu(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma2d_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %dev = getelementptr i8, ptr %1, i32 -220
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %ctrl_lock = getelementptr inbounds %struct.dma2d_dev, ptr %3, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl_lock) #7
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963807, label %sw.bb
    i32 9963819, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %8, label %sw.bb.cleanup_crit_edge [
    i32 16, label %if.then
    i32 0, label %if.then11
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %op_mode = getelementptr i8, ptr %1, i32 -4
  %10 = ptrtoint ptr %op_mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %op_mode, align 4
  br label %cleanup

if.then11:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %op_mode12 = getelementptr i8, ptr %1, i32 -4
  %11 = ptrtoint ptr %op_mode12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %op_mode12, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %12 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val16, align 4
  %14 = lshr i32 %13, 16
  %conv17 = trunc i32 %14 to i8
  %a_rgb = getelementptr i8, ptr %1, i32 -120
  %arrayidx = getelementptr i8, ptr %1, i32 -118
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv17, ptr %arrayidx, align 2
  %16 = load i32, ptr %val16, align 4
  %17 = lshr i32 %16, 8
  %conv21 = trunc i32 %17 to i8
  %arrayidx23 = getelementptr i8, ptr %1, i32 -119
  %18 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv21, ptr %arrayidx23, align 1
  %19 = load i32, ptr %val16, align 4
  %conv27 = trunc i32 %19 to i8
  %20 = ptrtoint ptr %a_rgb to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv27, ptr %a_rgb, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb14, %if.then11, %if.then, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %if.then11 ], [ 0, %sw.bb14 ]
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %ctrl_lock33 = getelementptr inbounds %struct.dma2d_dev, ptr %22, i32 0, i32 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl_lock33, i32 noundef %call3) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_ctx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_fh_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str, i32 noundef 16) #7
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef nonnull @.str, i32 noundef 32) #7
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call4 = tail call i32 @strscpy(ptr noundef %bus_info, ptr noundef nonnull @.str.33, i32 noundef 32) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %prv, ptr nocapture noundef %f) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp ugt i32 %1, 4
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr [5 x %struct.dma2d_fmt], ptr @formats, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %4 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %prv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %prv, i32 0, i32 10
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
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %5, label %cond.false.i [
    i32 2, label %if.end.cond.true.i_crit_edge
    i32 10, label %if.end.cond.true.i_crit_edge42
    i32 3, label %if.end.cond.true.i_crit_edge43
    i32 8, label %if.end.cond.true.i_crit_edge44
    i32 5, label %if.end.cond.true.i_crit_edge45
    i32 7, label %if.end.cond.true.i_crit_edge46
    i32 12, label %if.end.cond.true.i_crit_edge47
    i32 14, label %if.end.cond.true.i_crit_edge48
  ]

if.end.cond.true.i_crit_edge48:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

if.end.cond.true.i_crit_edge47:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

if.end.cond.true.i_crit_edge46:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

if.end.cond.true.i_crit_edge45:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

if.end.cond.true.i_crit_edge44:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

if.end.cond.true.i_crit_edge43:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

if.end.cond.true.i_crit_edge42:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

if.end.cond.true.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

cond.true.i:                                      ; preds = %if.end.cond.true.i_crit_edge, %if.end.cond.true.i_crit_edge42, %if.end.cond.true.i_crit_edge43, %if.end.cond.true.i_crit_edge44, %if.end.cond.true.i_crit_edge45, %if.end.cond.true.i_crit_edge46, %if.end.cond.true.i_crit_edge47, %if.end.cond.true.i_crit_edge48
  %cap.i = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 2
  br label %get_frame.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %out.i = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 3
  br label %get_frame.exit

get_frame.exit:                                   ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %cap.i, %cond.true.i ], [ %out.i, %cond.false.i ]
  %7 = ptrtoint ptr %cond.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cond.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %height5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %height5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %height5, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %13 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %field, align 4
  %fmt7 = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 9
  %14 = ptrtoint ptr %fmt7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fmt7, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %pixelformat, align 4
  %19 = load i32, ptr %cond.i, align 4
  %20 = load ptr, ptr %fmt7, align 4
  %depth = getelementptr inbounds %struct.dma2d_fmt, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %depth, align 4
  %mul = mul i32 %22, %19
  %shr = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr, ptr %bytesperline, align 4
  %size = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 12
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %size, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %26 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 8
  %27 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %colorspace, align 4
  %colorspace14 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %29 = ptrtoint ptr %colorspace14 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %colorspace14, align 4
  %xfer_func = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 10
  %30 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xfer_func, align 4
  %xfer_func16 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %32 = ptrtoint ptr %xfer_func16 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %xfer_func16, align 4
  %ycbcr_enc = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 9
  %33 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ycbcr_enc, align 4
  %35 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %34, ptr %35, align 4
  %quant = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 11
  %37 = ptrtoint ptr %quant to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %quant, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %quantization to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %quantization, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_frame.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_frame.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef %prv, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @vidioc_try_fmt(ptr noundef %file, ptr noundef %prv, ptr noundef %f)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %prv, i32 0, i32 10
  %0 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %m2m_ctx, align 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %call1 = tail call ptr @v4l2_m2m_get_vq(ptr noundef %1, i32 noundef %3) #7
  %num_buffers.i = getelementptr inbounds %struct.vb2_queue, ptr %call1, i32 0, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %fmt5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixelformat, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %7, label %if.end4.cleanup_crit_edge [
    i32 875708738, label %if.end4.if.end9_crit_edge
    i32 859981650, label %cleanup.fold.split.i
    i32 1346520914, label %cleanup.fold.split7.i
    i32 892424769, label %cleanup.fold.split8.i
    i32 842093121, label %cleanup.fold.split9.i
  ]

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.fold.split.i:                             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

cleanup.fold.split7.i:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

cleanup.fold.split8.i:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

cleanup.fold.split9.i:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end9:                                          ; preds = %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split7.i, %cleanup.fold.split.i, %if.end4.if.end9_crit_edge
  %retval.0.i.ph = phi ptr [ getelementptr inbounds ([5 x %struct.dma2d_fmt], ptr @formats, i32 0, i32 4), %cleanup.fold.split9.i ], [ getelementptr inbounds ([5 x %struct.dma2d_fmt], ptr @formats, i32 0, i32 3), %cleanup.fold.split8.i ], [ getelementptr inbounds ([5 x %struct.dma2d_fmt], ptr @formats, i32 0, i32 2), %cleanup.fold.split7.i ], [ getelementptr inbounds ([5 x %struct.dma2d_fmt], ptr @formats, i32 0, i32 1), %cleanup.fold.split.i ], [ @formats, %if.end4.if.end9_crit_edge ]
  %9 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp = icmp eq i32 %10, 2
  br i1 %cmp, label %if.then11, label %if.end9.if.end18_crit_edge

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %colorspace, align 4
  %colorspace13 = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 8
  %13 = ptrtoint ptr %colorspace13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %colorspace13, align 4
  %xfer_func = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %14 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xfer_func, align 4
  %xfer_func15 = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 10
  %16 = ptrtoint ptr %xfer_func15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %xfer_func15, align 4
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %ycbcr_enc = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 9
  %20 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ycbcr_enc, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %quantization to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %quantization, align 4
  %quant = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 11
  %23 = ptrtoint ptr %quant to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %quant, align 4
  %24 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %f, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then11, %if.end9.if.end18_crit_edge
  %25 = phi i32 [ %.pr, %if.then11 ], [ %10, %if.end9.if.end18_crit_edge ]
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %25, label %cond.false.i [
    i32 2, label %if.end18.cond.true.i_crit_edge
    i32 10, label %if.end18.cond.true.i_crit_edge71
    i32 3, label %if.end18.cond.true.i_crit_edge72
    i32 8, label %if.end18.cond.true.i_crit_edge73
    i32 5, label %if.end18.cond.true.i_crit_edge74
    i32 7, label %if.end18.cond.true.i_crit_edge75
    i32 12, label %if.end18.cond.true.i_crit_edge76
    i32 14, label %if.end18.cond.true.i_crit_edge77
  ]

if.end18.cond.true.i_crit_edge77:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

if.end18.cond.true.i_crit_edge76:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

if.end18.cond.true.i_crit_edge75:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

if.end18.cond.true.i_crit_edge74:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

if.end18.cond.true.i_crit_edge73:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

if.end18.cond.true.i_crit_edge72:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

if.end18.cond.true.i_crit_edge71:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

if.end18.cond.true.i_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.true.i

cond.true.i:                                      ; preds = %if.end18.cond.true.i_crit_edge, %if.end18.cond.true.i_crit_edge71, %if.end18.cond.true.i_crit_edge72, %if.end18.cond.true.i_crit_edge73, %if.end18.cond.true.i_crit_edge74, %if.end18.cond.true.i_crit_edge75, %if.end18.cond.true.i_crit_edge76, %if.end18.cond.true.i_crit_edge77
  %cap.i = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 2
  br label %get_frame.exit

cond.false.i:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %out.i = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 3
  br label %get_frame.exit

get_frame.exit:                                   ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi ptr [ %cap.i, %cond.true.i ], [ %out.i, %cond.false.i ]
  %27 = ptrtoint ptr %fmt5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fmt5, align 4
  %29 = ptrtoint ptr %cond.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %cond.i, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %30 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %height, align 4
  %height24 = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 1
  %32 = ptrtoint ptr %height24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %height24, align 4
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %33 = ptrtoint ptr %sizeimage to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sizeimage, align 4
  %size = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 12
  %35 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %size, align 4
  %o_width = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 4
  %36 = ptrtoint ptr %o_width to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %o_width, align 4
  %o_height = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 5
  %37 = ptrtoint ptr %o_height to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %o_height, align 4
  %c_width = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 2
  %38 = ptrtoint ptr %c_width to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %28, ptr %c_width, align 4
  %c_height = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 3
  %39 = ptrtoint ptr %c_height to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %31, ptr %c_height, align 4
  %right = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 7
  %40 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %28, ptr %right, align 4
  %bottom = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 6
  %41 = ptrtoint ptr %bottom to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %31, ptr %bottom, align 4
  %fmt30 = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 9
  %42 = ptrtoint ptr %fmt30 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %retval.0.i.ph, ptr %fmt30, align 4
  %line_offset = getelementptr inbounds %struct.dma2d_frame, ptr %cond.i, i32 0, i32 8
  %43 = ptrtoint ptr %line_offset to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %line_offset, align 4
  br label %cleanup

cleanup:                                          ; preds = %get_frame.exit, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %get_frame.exit ], [ %call, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_try_fmt(ptr nocapture noundef readnone %file, ptr nocapture noundef readonly %prv, ptr nocapture noundef %f) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %0 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixelformat, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %1, label %if.then [
    i32 875708738, label %entry.if.end_crit_edge
    i32 859981650, label %cleanup.fold.split.i
    i32 1346520914, label %cleanup.fold.split7.i
    i32 892424769, label %cleanup.fold.split8.i
    i32 842093121, label %cleanup.fold.split9.i
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split7.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split8.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 875708738, ptr %pixelformat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split7.i, %cleanup.fold.split.i, %entry.if.end_crit_edge
  %fmt.0 = phi ptr [ @formats, %if.then ], [ getelementptr inbounds ([5 x %struct.dma2d_fmt], ptr @formats, i32 0, i32 4), %cleanup.fold.split9.i ], [ getelementptr inbounds ([5 x %struct.dma2d_fmt], ptr @formats, i32 0, i32 3), %cleanup.fold.split8.i ], [ getelementptr inbounds ([5 x %struct.dma2d_fmt], ptr @formats, i32 0, i32 2), %cleanup.fold.split7.i ], [ getelementptr inbounds ([5 x %struct.dma2d_fmt], ptr @formats, i32 0, i32 1), %cleanup.fold.split.i ], [ @formats, %entry.if.end_crit_edge ]
  %field8 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %field8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %field8, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 0, label %if.then9
    i32 1, label %if.end.if.end13_crit_edge
  ]

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %field8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %field8, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %8 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2592, i32 %9)
  %cmp15 = icmp ugt i32 %9, 2592
  br i1 %cmp15, label %if.then16, label %if.end13.if.end19_crit_edge

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2592, ptr %fmt1, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end13.if.end19_crit_edge
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2592, i32 %12)
  %cmp21 = icmp ugt i32 %12, 2592
  br i1 %cmp21, label %if.then22, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2592, ptr %height, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %if.end19.if.end25_crit_edge
  %14 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fmt1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp28 = icmp eq i32 %15, 0
  br i1 %cmp28, label %if.then29, label %if.end25.if.end32_crit_edge

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %fmt1, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %if.end25.if.end32_crit_edge
  %17 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp35 = icmp eq i32 %18, 0
  br i1 %cmp35, label %if.then36, label %if.end32.if.end39_crit_edge

if.end32.if.end39_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %height, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end32.if.end39_crit_edge
  %20 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %21, label %if.end39.if.end58_crit_edge [
    i32 2, label %land.lhs.true
    i32 1, label %if.then49
  ]

if.end39.if.end58_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

land.lhs.true:                                    ; preds = %if.end39
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %colorspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool42.not = icmp eq i32 %24, 0
  br i1 %tobool42.not, label %if.then43, label %land.lhs.true.if.end58_crit_edge

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then43:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %colorspace, align 4
  br label %if.end58

if.then49:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %colorspace50 = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 8
  %26 = ptrtoint ptr %colorspace50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %colorspace50, align 4
  %colorspace52 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %colorspace52 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %colorspace52, align 4
  %xfer_func = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 10
  %29 = ptrtoint ptr %xfer_func to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %xfer_func, align 4
  %xfer_func54 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %31 = ptrtoint ptr %xfer_func54 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %xfer_func54, align 4
  %ycbcr_enc = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 9
  %32 = ptrtoint ptr %ycbcr_enc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ycbcr_enc, align 4
  %34 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %33, ptr %34, align 4
  %quant = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 11
  %36 = ptrtoint ptr %quant to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %quant, align 4
  %quantization = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %38 = ptrtoint ptr %quantization to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %quantization, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then49, %if.then43, %land.lhs.true.if.end58_crit_edge, %if.end39.if.end58_crit_edge
  %39 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fmt1, align 4
  %depth = getelementptr inbounds %struct.dma2d_fmt, ptr %fmt.0, i32 0, i32 1
  %41 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %depth, align 4
  %mul = mul i32 %42, %40
  %shr = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %43 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr, ptr %bytesperline, align 4
  %44 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height, align 4
  %mul66 = mul i32 %45, %shr
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %46 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul66, ptr %sizeimage, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end58 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_m2m_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_get_vq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @device_run(ptr noundef %prv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %ctrl_lock = getelementptr inbounds %struct.dma2d_dev, ptr %1, i32 0, i32 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %ctrl_lock) #7
  %curr = getelementptr inbounds %struct.dma2d_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %prv, ptr %curr, align 4
  %m2m_ctx = getelementptr inbounds %struct.v4l2_fh, ptr %prv, i32 0, i32 10
  %3 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %m2m_ctx, align 4
  %out_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %4, i32 0, i32 8
  %call.i = tail call ptr @v4l2_m2m_next_buf(ptr noundef %out_q_ctx.i) #7
  %5 = ptrtoint ptr %m2m_ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %m2m_ctx, align 4
  %cap_q_ctx.i = getelementptr inbounds %struct.v4l2_m2m_ctx, ptr %6, i32 0, i32 7
  %call.i73 = tail call ptr @v4l2_m2m_next_buf(ptr noundef %cap_q_ctx.i) #7
  %tobool.not = icmp eq ptr %call.i73, null
  %tobool10.not = icmp eq ptr %call.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end:                                           ; preds = %entry
  %out.i = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 3
  %cap.i = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 2
  %tobool13.not = icmp eq ptr %out.i, null
  %tobool15.not = icmp eq ptr %cap.i, null
  %or.cond72 = select i1 %tobool13.not, i1 true, i1 %tobool15.not
  br i1 %or.cond72, label %if.end.end_crit_edge, label %if.end17

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end17:                                         ; preds = %if.end
  %sequence = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 2, i32 13
  %7 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sequence, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %sequence, align 4
  %sequence18 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %sequence18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %sequence18, align 8
  %sequence19 = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 3, i32 13
  %10 = ptrtoint ptr %sequence19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sequence19, align 4
  %inc20 = add i32 %11, 1
  store i32 %inc20, ptr %sequence19, align 4
  %sequence21 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %call.i73, i32 0, i32 4
  %12 = ptrtoint ptr %sequence21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %sequence21, align 8
  tail call void @v4l2_m2m_buf_copy_metadata(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i73, i1 noundef zeroext true) #7
  %gate = getelementptr inbounds %struct.dma2d_dev, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %gate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gate, align 4
  %call22 = tail call i32 @clk_enable(ptr noundef %14) #7
  %call.i74 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call.i, i32 noundef 0) #7
  %15 = ptrtoint ptr %call.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call.i74, align 4
  tail call void @dma2d_config_fg(ptr noundef %1, ptr noundef nonnull %cap.i, i32 noundef %16) #7
  %op_mode = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 6
  %17 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %op_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp24.not = icmp eq i32 %18, 3
  br i1 %cmp24.not, label %if.end17.if.end35_crit_edge, label %if.then26

if.end17.if.end35_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then26:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %fmt = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 2, i32 9
  %19 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fmt, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %fmt27 = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 3, i32 9
  %23 = ptrtoint ptr %fmt27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fmt27, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp29 = icmp ne i32 %22, %26
  %. = zext i1 %cmp29 to i32
  %27 = ptrtoint ptr %op_mode to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %., ptr %op_mode, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then26, %if.end17.if.end35_crit_edge
  %call.i75 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %call.i73, i32 noundef 0) #7
  %28 = ptrtoint ptr %call.i75 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call.i75, align 4
  tail call void @dma2d_config_out(ptr noundef %1, ptr noundef nonnull %out.i, i32 noundef %29) #7
  %30 = ptrtoint ptr %op_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %op_mode, align 4
  %32 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %out.i, align 4
  %conv39 = trunc i32 %33 to i16
  %height = getelementptr inbounds %struct.dma2d_ctx, ptr %prv, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %height, align 4
  %conv40 = trunc i32 %35 to i16
  tail call void @dma2d_config_common(ptr noundef %1, i32 noundef %31, i16 noundef zeroext %conv39, i16 noundef zeroext %conv40) #7
  tail call void @dma2d_start(ptr noundef %1) #7
  br label %end

end:                                              ; preds = %if.end35, %if.end.end_crit_edge, %entry.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %ctrl_lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_m2m_buf_copy_metadata(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma2d_config_fg(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma2d_config_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma2d_config_common(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma2d_start(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_m2m_next_buf(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !71, !73, !74, !76, !78, !80, !82, !84, !85, !86, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_stm32_dma2d__298_735_dma2d_pdrv_init6, !1, !"__initcall__kmod_stm32_dma2d__298_735_dma2d_pdrv_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 735, i32 1}
!2 = !{ptr @__exitcall_dma2d_pdrv_exit, !1, !"__exitcall_dma2d_pdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author299, !4, !"__UNIQUE_ID_author299", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 737, i32 1}
!5 = !{ptr @__UNIQUE_ID_description300, !6, !"__UNIQUE_ID_description300", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 738, i32 1}
!7 = !{ptr @__UNIQUE_ID_file301, !8, !"__UNIQUE_ID_file301", i1 false, i1 false}
!8 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 739, i32 1}
!9 = !{ptr @__UNIQUE_ID_license302, !8, !"__UNIQUE_ID_license302", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 730, i32 11}
!12 = !{ptr @dma2d_pdrv, !13, !"dma2d_pdrv", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 726, i32 31}
!14 = !{ptr @dma2d_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 613, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @dma2d_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 614, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 623, i32 34}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 625, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @dma2d_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @dma2d_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 632, i32 3}
!32 = !{ptr @dma2d_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dma2d_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 638, i32 3}
!36 = !{ptr @dma2d_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dma2d_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 648, i32 3}
!40 = !{ptr @dma2d_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @dma2d_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 658, i32 3}
!44 = !{ptr @dma2d_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @dma2d_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 671, i32 3}
!48 = !{ptr @dma2d_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @dma2d_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 678, i32 3}
!52 = !{ptr @dma2d_probe._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @dma2d_probe._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 684, i32 2}
!56 = !{ptr @dma2d_probe._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @dma2d_probe._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @dma2d_videodev, !59, !"dma2d_videodev", i1 false, i1 false}
!59 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 587, i32 34}
!60 = !{ptr @dma2d_fops, !61, !"dma2d_fops", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 547, i32 42}
!62 = !{ptr @def_frame, !63, !"def_frame", i1 false, i1 false}
!63 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 80, i32 33}
!64 = !{ptr @formats, !65, !"formats", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 50, i32 31}
!66 = !{ptr @dma2d_qops, !67, !"dma2d_qops", i1 false, i1 false}
!67 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 182, i32 29}
!68 = distinct !{null, !69, !"__already_done", i1 false, i1 false}
!69 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!70 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @dma2d_setup_ctrls._key, !72, !"_key", i1 false, i1 false}
!72 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 264, i32 2}
!73 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @dma2d_ctrl_ops, !75, !"dma2d_ctrl_ops", i1 false, i1 false}
!75 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 256, i32 35}
!76 = !{ptr @dma2d_ioctl_ops, !77, !"dma2d_ioctl_ops", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 559, i32 36}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 341, i32 25}
!80 = !{ptr @dma2d_m2m_ops, !81, !"dma2d_m2m_ops", i1 false, i1 false}
!81 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 596, i32 34}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 706, i32 2}
!84 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @dma2d_remove._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @dma2d_remove._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @stm32_dma2d_match, !88, !"stm32_dma2d_match", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/stm32/dma2d/dma2d.c", i32 717, i32 34}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"branch_weights", i32 1, i32 2000}
!99 = !{!"branch_weights", i32 2000, i32 1}
