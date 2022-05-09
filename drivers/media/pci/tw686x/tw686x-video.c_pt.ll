; ModuleID = '/llk/IR_all_yes/drivers/media/pci/tw686x/tw686x-video.c_pt.bc'
source_filename = "../drivers/media/pci/tw686x/tw686x-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tw686x_dma_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tw686x_format = type { ptr, i32, i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tw686x_dev = type { %struct.spinlock, %struct.v4l2_device, ptr, [32 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.timer_list, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.tw686x_video_channel = type { ptr, %struct.vb2_queue, %struct.list_head, ptr, [2 x ptr], [2 x %struct.tw686x_dma_desc], [2 x ptr], %struct.v4l2_ctrl_handler, ptr, %struct.mutex, %struct.spinlock, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.tw686x_dma_desc = type { i32, ptr, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.90, i32 }
%union.anon.90 = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.115, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.115 = type { ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.82 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.79], %struct.media_entity_enum, i32 }
%struct.anon.79 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.tw686x_sg_desc = type { i32, i32 }
%struct.tw686x_v4l2_buf = type { %struct.vb2_v4l2_buffer, %struct.list_head }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.85, %union.anon.86, i32, ptr, i32, %struct.anon.87, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.85 = type { i64 }
%union.anon.86 = type { ptr }
%struct.anon.87 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.91 }
%union.anon.91 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.93, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.93 = type { i8 }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_streamparm = type { i32, %union.anon.107 }
%union.anon.107 = type { %struct.v4l2_captureparm, [160 x i8] }
%struct.v4l2_captureparm = type { i32, i32, %struct.v4l2_fract, i32, i32, [4 x i32] }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_frmsizeenum = type { i32, i32, i32, %union.anon.108, [2 x i32] }
%union.anon.108 = type { %struct.v4l2_frmsize_stepwise }
%struct.v4l2_frmsize_stepwise = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_frmivalenum = type { i32, i32, i32, i32, i32, %union.anon.109, [2 x i32] }
%union.anon.109 = type { %struct.v4l2_frmival_stepwise }
%struct.v4l2_frmival_stepwise = type { %struct.v4l2_fract, %struct.v4l2_fract, %struct.v4l2_fract }

@tw686x_video_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: video%d: signal recovered\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tw686x_video_irq\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/tw686x/tw686x-video.c\00", [56 x i8] zeroinitializer }, align 32
@tw686x_video_irq._entry_ptr = internal global ptr @tw686x_video_irq._entry, section ".printk_index", align 4
@tw686x_video_irq._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: video%d: FIFO error\0A\00", [37 x i8] zeroinitializer }, align 32
@tw686x_video_irq._entry_ptr.5 = internal global ptr @tw686x_video_irq._entry.3, section ".printk_index", align 4
@tw686x_video_irq._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: video%d: unexpected p-b buffer!\0A\00", [57 x i8] zeroinitializer }, align 32
@tw686x_video_irq._entry_ptr.8 = internal global ptr @tw686x_video_irq._entry.6, section ".printk_index", align 4
@memcpy_dma_ops = internal constant { %struct.tw686x_dma_ops, [36 x i8] } { %struct.tw686x_dma_ops { ptr null, ptr @tw686x_memcpy_dma_alloc, ptr @tw686x_memcpy_dma_free, ptr @tw686x_memcpy_buf_refill, ptr @vb2_vmalloc_memops, i32 4, i32 2 }, [36 x i8] zeroinitializer }, align 32
@contig_dma_ops = internal constant { %struct.tw686x_dma_ops, [36 x i8] } { %struct.tw686x_dma_ops { ptr null, ptr null, ptr null, ptr @tw686x_contig_buf_refill, ptr @vb2_dma_contig_memops, i32 4, i32 2 }, [36 x i8] zeroinitializer }, align 32
@sg_dma_ops = internal constant { %struct.tw686x_dma_ops, [36 x i8] } { %struct.tw686x_dma_ops { ptr @tw686x_sg_setup, ptr @tw686x_sg_dma_alloc, ptr @tw686x_sg_dma_free, ptr @tw686x_sg_buf_refill, ptr @vb2_dma_sg_memops, i32 5, i32 0 }, [36 x i8] zeroinitializer }, align 32
@tw686x_video_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&vc->vb_mutex\00", [18 x i8] zeroinitializer }, align 32
@tw686x_video_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&vc->qlock\00", [21 x i8] zeroinitializer }, align 32
@formats = internal constant { [3 x %struct.tw686x_format], [48 x i8] } { [3 x %struct.tw686x_format] [%struct.tw686x_format { ptr null, i32 1498831189, i32 16, i32 0 }, %struct.tw686x_format { ptr null, i32 1346520914, i32 16, i32 5 }, %struct.tw686x_format { ptr null, i32 1448695129, i32 16, i32 6 }], [48 x i8] zeroinitializer }, align 32
@tw686x_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @tw686x_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @tw686x_buf_prepare, ptr null, ptr null, ptr @tw686x_start_streaming, ptr @tw686x_stop_streaming, ptr @tw686x_buf_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@tw686x_video_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 1235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: dma%d: cannot init vb2 queue\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tw686x_video_init\00", [46 x i8] zeroinitializer }, align 32
@tw686x_video_init._entry_ptr = internal global ptr @tw686x_video_init._entry, section ".printk_index", align 4
@tw686x_video_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"tw686x_video:1239:(&vc->ctrl_handler)->_lock\00", [51 x i8] zeroinitializer }, align 32
@tw686x_video_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.13, ptr @.str.2, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: dma%d: cannot init ctrl handler\0A\00", [57 x i8] zeroinitializer }, align 32
@tw686x_video_init._entry_ptr.17 = internal global ptr @tw686x_video_init._entry.15, section ".printk_index", align 4
@ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @tw686x_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@tw686x_video_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.2, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%s: dma%d: unable to allocate device\0A\00", [56 x i8] zeroinitializer }, align 32
@tw686x_video_init._entry_ptr.20 = internal global ptr @tw686x_video_init._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s video\00", [23 x i8] zeroinitializer }, align 32
@tw686x_video_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@tw686x_video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @tw686x_querycap, ptr @tw686x_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tw686x_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tw686x_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tw686x_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @tw686x_g_std, ptr @tw686x_s_std, ptr @tw686x_querystd, ptr @tw686x_enum_input, ptr @tw686x_g_input, ptr @tw686x_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tw686x_g_parm, ptr @tw686x_s_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr @tw686x_enum_framesizes, ptr @tw686x_enum_frameintervals, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Allocating buffer but previous still here\0A\00", [53 x i8] zeroinitializer }, align 32
@tw686x_memcpy_dma_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: dma%d: unable to allocate %s-buffer\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tw686x_memcpy_dma_alloc\00", [40 x i8] zeroinitializer }, align 32
@tw686x_memcpy_dma_alloc._entry_ptr = internal global ptr @tw686x_memcpy_dma_alloc._entry, section ".printk_index", align 4
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\00", [30 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"trying to deallocate on missing device\0A\00", [56 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@tw686x_sg_dma_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.28, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tw686x_sg_dma_alloc\00", [44 x i8] zeroinitializer }, align 32
@tw686x_sg_dma_alloc._entry_ptr = internal global ptr @tw686x_sg_dma_alloc._entry, section ".printk_index", align 4
@tw686x_sg_buf_refill._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: dma%d: unable to fill %s-buffer\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tw686x_sg_buf_refill\00", [43 x i8] zeroinitializer }, align 32
@tw686x_sg_buf_refill._entry_ptr = internal global ptr @tw686x_sg_buf_refill._entry, section ".printk_index", align 4
@fps_map = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 0, i32 -2147483642, i32 -2147385338, i32 -2141093882, i32 -2122219130, i32 -2045222522, i32 -2040424346, i32 -2040109466, i32 -1717986914, i32 -1712948834, i32 -1636178018, i32 -1635877250, i32 -1612187138, i32 -1610711042, i32 -1610612738], [36 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@tw686x_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013%s: video%d: refusing to start without DMA buffers\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tw686x_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@tw686x_start_streaming._entry_ptr = internal global ptr @tw686x_start_streaming._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tw686x\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Composite%d\00", [20 x i8] zeroinitializer }, align 32
@switch.table.tw686x_video_init = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @memcpy_dma_ops, ptr @contig_dma_ops, ptr @sg_dma_ops], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1346520914, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 1346520914, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 1346520914, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.41 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1103, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1120, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1131, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"memcpy_dma_ops\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 145, i32 36 }
@___asan_gen_.69 = private unnamed_addr constant [15 x i8] c"contig_dma_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 177, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant [11 x i8] c"sg_dma_ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 329, i32 36 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1197, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1198, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 33, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"tw686x_video_qops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 575, i32 29 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1234, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1239, i32 9 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1241, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [9 x i8] c"ctrl_ops\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 618, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1263, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1269, i32 44 }
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"tw686x_video_fops\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1042, i32 42 }
@___asan_gen_.129 = private unnamed_addr constant [23 x i8] c"tw686x_video_ioctl_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1052, i32 36 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 109, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 116, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 90, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 282, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 239, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant [8 x i8] c"fps_map\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 339, i32 27 }
@___asan_gen_.172 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 1163, i32 7 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 515, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 763, i32 23 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 766, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [43 x i8] c"../drivers/media/pci/tw686x/tw686x-video.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 1027, i32 37 }
@___asan_gen_.192 = private unnamed_addr constant [31 x i8] c"switch.table.tw686x_video_init\00", align 1
@llvm.compiler.used = appending global [61 x ptr] [ptr @tw686x_memcpy_dma_alloc._entry, ptr @tw686x_memcpy_dma_alloc._entry_ptr, ptr @tw686x_sg_buf_refill._entry, ptr @tw686x_sg_buf_refill._entry_ptr, ptr @tw686x_sg_dma_alloc._entry, ptr @tw686x_sg_dma_alloc._entry_ptr, ptr @tw686x_start_streaming._entry, ptr @tw686x_start_streaming._entry_ptr, ptr @tw686x_video_init._entry, ptr @tw686x_video_init._entry.15, ptr @tw686x_video_init._entry.18, ptr @tw686x_video_init._entry_ptr, ptr @tw686x_video_init._entry_ptr.17, ptr @tw686x_video_init._entry_ptr.20, ptr @tw686x_video_irq._entry, ptr @tw686x_video_irq._entry.3, ptr @tw686x_video_irq._entry.6, ptr @tw686x_video_irq._entry_ptr, ptr @tw686x_video_irq._entry_ptr.5, ptr @tw686x_video_irq._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @memcpy_dma_ops, ptr @contig_dma_ops, ptr @sg_dma_ops, ptr @tw686x_video_init.__key, ptr @.str.9, ptr @tw686x_video_init.__key.10, ptr @.str.11, ptr @formats, ptr @tw686x_video_qops, ptr @.str.12, ptr @.str.13, ptr @tw686x_video_init._key, ptr @.str.14, ptr @.str.16, ptr @ctrl_ops, ptr @.str.19, ptr @.str.21, ptr @tw686x_video_fops, ptr @tw686x_video_ioctl_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @fps_map, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @switch.table.tw686x_video_init], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_video_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_video_irq._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_video_irq._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @memcpy_dma_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @contig_dma_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sg_dma_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_video_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_video_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_video_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_video_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_video_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_video_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_video_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_memcpy_dma_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_sg_dma_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_sg_buf_refill._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fps_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tw686x_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tw686x_video_init to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tw686x_video_irq(ptr noundef %dev, i32 noundef %requests, i32 noundef %pb_status, i32 noundef %fifo_status, ptr nocapture noundef %reset_ch) local_unnamed_addr #0 align 64 {
entry:
  %requests.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %requests.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %requests, ptr %requests.addr, align 4
  %type.i = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 4
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type.i, align 4
  %and.i = and i32 %2, 15
  %call1 = call i32 @_find_next_bit_be(ptr noundef nonnull %requests.addr, i32 noundef %and.i, i32 noundef 0) #9
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type.i, align 4
  %and.i112117 = and i32 %4, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %and.i112117)
  %cmp118 = icmp ult i32 %call1, %and.i112117
  br i1 %cmp118, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %video_channels = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 9
  %name = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 1, i32 4
  %shr = lshr i32 %fifo_status, 24
  %shr18 = lshr i32 %fifo_status, 16
  %5 = or i32 %shr, %shr18
  %dma_ops = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ch.0119 = phi i32 [ %call1, %for.body.lr.ph ], [ %call72, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %video_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %video_channels, align 4
  %arrayidx = getelementptr %struct.tw686x_video_channel, ptr %7, i32 %ch.0119
  %no_signal = getelementptr %struct.tw686x_video_channel, ptr %7, i32 %ch.0119, i32 22
  %8 = ptrtoint ptr %no_signal to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %no_signal, align 8, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  %.pre = shl nuw i32 1, %ch.0119
  %.pre124 = and i32 %.pre, %fifo_status
  br i1 %tobool.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre124)
  %tobool3.not = icmp eq i32 %.pre124, 0
  br i1 %tobool3.not, label %do.end, label %if.end.thread

if.end.thread:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %no_signal to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %no_signal, align 8
  br label %if.end38

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %num = getelementptr %struct.tw686x_video_channel, ptr %7, i32 %ch.0119, i32 17
  %11 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num, align 4
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %12) #12
  %13 = ptrtoint ptr %no_signal to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %no_signal, align 8
  %14 = ptrtoint ptr %reset_ch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reset_ch, align 4
  %or = or i32 %15, %.pre
  store i32 %or, ptr %reset_ch, align 4
  %pb7 = getelementptr %struct.tw686x_video_channel, ptr %7, i32 %ch.0119, i32 21
  %16 = ptrtoint ptr %pb7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pb7, align 4
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre124)
  %tobool10 = icmp ne i32 %.pre124, 0
  %frombool = zext i1 %tobool10 to i8
  %17 = ptrtoint ptr %no_signal to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %no_signal, align 8
  %18 = and i32 %.pre, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %19 = icmp eq i32 %18, 0
  %or.cond = or i1 %tobool10, %19
  br i1 %or.cond, label %if.end.if.end38_crit_edge, label %cleanup

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %num31 = getelementptr %struct.tw686x_video_channel, ptr %7, i32 %ch.0119, i32 17
  %20 = ptrtoint ptr %num31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num31, align 4
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name, i32 noundef %21) #12
  %22 = ptrtoint ptr %reset_ch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reset_ch, align 4
  %or34 = or i32 %23, %.pre
  store i32 %or34, ptr %reset_ch, align 4
  %pb35 = getelementptr %struct.tw686x_video_channel, ptr %7, i32 %ch.0119, i32 21
  %24 = ptrtoint ptr %pb35 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %pb35, align 4
  br label %for.inc

if.end38:                                         ; preds = %if.end.if.end38_crit_edge, %if.end.thread
  %25 = lshr i32 %pb_status, %ch.0119
  %26 = and i32 %25, 1
  %pb44 = getelementptr %struct.tw686x_video_channel, ptr %7, i32 %ch.0119, i32 21
  %27 = ptrtoint ptr %pb44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pb44, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp45.not = icmp eq i32 %28, %26
  br i1 %cmp45.not, label %do.body61, label %do.end49

do.end49:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %num54 = getelementptr %struct.tw686x_video_channel, ptr %7, i32 %ch.0119, i32 17
  %29 = ptrtoint ptr %num54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num54, align 4
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %30) #12
  %31 = ptrtoint ptr %reset_ch to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %reset_ch, align 4
  %or57 = or i32 %32, %.pre
  store i32 %or57, ptr %reset_ch, align 4
  %33 = ptrtoint ptr %pb44 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %pb44, align 4
  br label %for.inc

do.body61:                                        ; preds = %if.end38
  %qlock = getelementptr %struct.tw686x_video_channel, ptr %7, i32 %ch.0119, i32 10
  %call65 = call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #9
  %arrayidx2.i = getelementptr %struct.tw686x_video_channel, ptr %7, i32 %ch.0119, i32 4, i32 %26
  %34 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx2.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %do.body61.tw686x_buf_done.exit_crit_edge, label %if.then.i

do.body61.tw686x_buf_done.exit_crit_edge:         ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw686x_buf_done.exit

if.then.i:                                        ; preds = %do.body61
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 8
  %dma_ops.i = getelementptr inbounds %struct.tw686x_dev, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dma_ops.i, align 4
  %field.i = getelementptr inbounds %struct.tw686x_dma_ops, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %field.i, align 4
  %field6.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %35, i32 0, i32 2
  %42 = ptrtoint ptr %field6.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %field6.i, align 4
  %sequence.i = getelementptr %struct.tw686x_video_channel, ptr %7, i32 %ch.0119, i32 20
  %43 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sequence.i, align 8
  %inc.i = add i32 %44, 1
  store i32 %inc.i, ptr %sequence.i, align 8
  %sequence7.i = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %35, i32 0, i32 4
  %45 = ptrtoint ptr %sequence7.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %sequence7.i, align 8
  %dma_mode.i = getelementptr inbounds %struct.tw686x_dev, ptr %37, i32 0, i32 5
  %46 = ptrtoint ptr %dma_mode.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i = icmp eq i32 %47, 0
  br i1 %cmp.i, label %if.then9.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = call ptr @vb2_plane_vaddr(ptr noundef nonnull %35, i32 noundef 0) #9
  %virt.i = getelementptr %struct.tw686x_video_channel, ptr %7, i32 %ch.0119, i32 5, i32 %26, i32 1
  %48 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %virt.i, align 4
  %size.i = getelementptr %struct.tw686x_video_channel, ptr %7, i32 %ch.0119, i32 5, i32 %26, i32 2
  %50 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size.i, align 4
  %52 = call ptr @memcpy(ptr %call.i, ptr %49, i32 %51)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then9.i, %if.then.i.if.end.i_crit_edge
  %call.i.i = call i64 @ktime_get() #9
  %timestamp.i = getelementptr inbounds %struct.vb2_buffer, ptr %35, i32 0, i32 5
  %53 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  call void @vb2_buffer_done(ptr noundef nonnull %35, i32 noundef 5) #9
  br label %tw686x_buf_done.exit

tw686x_buf_done.exit:                             ; preds = %if.end.i, %do.body61.tw686x_buf_done.exit_crit_edge
  %54 = xor i32 %26, 1
  %55 = ptrtoint ptr %pb44 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %pb44, align 4
  %56 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dma_ops, align 4
  %buf_refill = getelementptr inbounds %struct.tw686x_dma_ops, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %buf_refill to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf_refill, align 4
  call void %59(ptr noundef %arrayidx, i32 noundef %26) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call65) #9
  br label %for.inc

for.inc:                                          ; preds = %tw686x_buf_done.exit, %do.end49, %cleanup, %do.end
  %60 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %type.i, align 4
  %and.i114 = and i32 %61, 15
  %add = add nuw i32 %ch.0119, 1
  %call72 = call i32 @_find_next_bit_be(ptr noundef nonnull %requests.addr, i32 noundef %and.i114, i32 noundef %add) #9
  %62 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type.i, align 4
  %and.i112 = and i32 %63, 15
  %cmp = icmp ult i32 %call72, %and.i112
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tw686x_video_free(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  %and.i18 = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %cmp19.not = icmp eq i32 %and.i18, 0
  br i1 %cmp19.not, label %entry.for.end8_crit_edge, label %for.body.lr.ph

entry.for.end8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end8

for.body.lr.ph:                                   ; preds = %entry
  %video_channels = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 9
  %dma_ops = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %ch.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc7, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %video_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %video_channels, align 4
  %device = getelementptr %struct.tw686x_video_channel, ptr %3, i32 %ch.020, i32 3
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  tail call void @video_unregister_device(ptr noundef %5) #9
  %6 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_ops, align 4
  %free = getelementptr inbounds %struct.tw686x_dma_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %free, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %for.body3.preheader

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body3.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.tw686x_video_channel, ptr %3, i32 %ch.020
  %10 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_ops, align 4
  %free5 = getelementptr inbounds %struct.tw686x_dma_ops, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %free5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %free5, align 4
  tail call void %13(ptr noundef %arrayidx, i32 noundef 0) #9
  %14 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_ops, align 4
  %free5.1 = getelementptr inbounds %struct.tw686x_dma_ops, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %free5.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %free5.1, align 4
  tail call void %17(ptr noundef %arrayidx, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %for.body3.preheader, %for.body.if.end_crit_edge
  %inc7 = add nuw nsw i32 %ch.020, 1
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type.i, align 4
  %and.i = and i32 %19, 15
  %cmp = icmp ult i32 %inc7, %and.i
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end8_crit_edge

if.end.for.end8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end8

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end8:                                         ; preds = %if.end.for.end8_crit_edge, %entry.for.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tw686x_video_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral.i340 = alloca [8 x i16], align 2
  %.compoundliteral8.i = alloca [8 x i16], align 2
  %.compoundliteral.i = alloca [8 x i16], align 2
  %.compoundliteral = alloca [8 x i16], align 2
  %.compoundliteral57 = alloca [8 x i16], align 2
  %.compoundliteral68 = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_mode = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %2 = icmp ult i32 %1, 3
  br i1 %2, label %switch.lookup, label %entry.cleanup219_crit_edge

entry.cleanup219_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup219

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.tw686x_video_init, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %dma_ops4 = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %dma_ops4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %switch.load, ptr %dma_ops4, align 4
  %pci_dev = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 6
  %5 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %v4l2_dev = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 1
  %call = tail call i32 @v4l2_device_register(ptr noundef %dev13, ptr noundef %v4l2_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end15, label %switch.lookup.cleanup219_crit_edge

switch.lookup.cleanup219_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup219

if.end15:                                         ; preds = %switch.lookup
  %dma_ops16 = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %dma_ops16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dma_ops16, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %tobool17.not = icmp eq ptr %10, null
  br i1 %tobool17.not, label %if.end15.if.end25_crit_edge, label %if.then18

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then18:                                        ; preds = %if.end15
  %call21 = tail call i32 %10(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then18.if.end25_crit_edge, label %if.then18.cleanup219_crit_edge

if.then18.cleanup219_crit_edge:                   ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup219

if.then18.if.end25_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25:                                         ; preds = %if.then18.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  %type.i = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 4
  %11 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type.i, align 4
  %and.i388 = and i32 %12, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i388)
  %cmp27389.not = icmp eq i32 %and.i388, 0
  br i1 %cmp27389.not, label %if.end25.for.cond30.preheader_crit_edge, label %for.body.lr.ph

if.end25.for.cond30.preheader_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond30.preheader

for.body.lr.ph:                                   ; preds = %if.end25
  %video_channels = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 9
  br label %for.body

for.cond30.preheader:                             ; preds = %for.body.for.cond30.preheader_crit_edge, %if.end25.for.cond30.preheader_crit_edge
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 4
  %and.i339394 = and i32 %14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i339394)
  %cmp32395.not = icmp eq i32 %and.i339394, 0
  br i1 %cmp32395.not, label %for.cond30.preheader.for.end182_crit_edge, label %if.end44.lr.ph

for.cond30.preheader.for.end182_crit_edge:        ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end182

if.end44.lr.ph:                                   ; preds = %for.cond30.preheader
  %video_channels35 = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 9
  %arrayinit.element.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 1
  %arrayinit.element31.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 2
  %arrayinit.element32.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 3
  %arrayinit.element33.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 4
  %arrayinit.element34.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 5
  %arrayinit.element35.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 6
  %arrayinit.element36.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 7
  %arrayinit.element.i341 = getelementptr inbounds i16, ptr %.compoundliteral.i340, i32 1
  %arrayinit.element1.i = getelementptr inbounds i16, ptr %.compoundliteral.i340, i32 2
  %arrayinit.element2.i = getelementptr inbounds i16, ptr %.compoundliteral.i340, i32 3
  %arrayinit.element3.i = getelementptr inbounds i16, ptr %.compoundliteral.i340, i32 4
  %arrayinit.element4.i = getelementptr inbounds i16, ptr %.compoundliteral.i340, i32 5
  %arrayinit.element5.i = getelementptr inbounds i16, ptr %.compoundliteral.i340, i32 6
  %arrayinit.element6.i = getelementptr inbounds i16, ptr %.compoundliteral.i340, i32 7
  %arrayinit.element10.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 1
  %arrayinit.element11.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 2
  %arrayinit.element12.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 3
  %arrayinit.element13.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 4
  %arrayinit.element14.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 5
  %arrayinit.element15.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 6
  %arrayinit.element16.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 7
  %arrayinit.element = getelementptr inbounds i16, ptr %.compoundliteral, i32 1
  %arrayinit.element50 = getelementptr inbounds i16, ptr %.compoundliteral, i32 2
  %arrayinit.element51 = getelementptr inbounds i16, ptr %.compoundliteral, i32 3
  %arrayinit.element52 = getelementptr inbounds i16, ptr %.compoundliteral, i32 4
  %arrayinit.element53 = getelementptr inbounds i16, ptr %.compoundliteral, i32 5
  %arrayinit.element54 = getelementptr inbounds i16, ptr %.compoundliteral, i32 6
  %arrayinit.element55 = getelementptr inbounds i16, ptr %.compoundliteral, i32 7
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 7
  %arrayinit.element59 = getelementptr inbounds i16, ptr %.compoundliteral57, i32 1
  %arrayinit.element60 = getelementptr inbounds i16, ptr %.compoundliteral57, i32 2
  %arrayinit.element61 = getelementptr inbounds i16, ptr %.compoundliteral57, i32 3
  %arrayinit.element62 = getelementptr inbounds i16, ptr %.compoundliteral57, i32 4
  %arrayinit.element63 = getelementptr inbounds i16, ptr %.compoundliteral57, i32 5
  %arrayinit.element64 = getelementptr inbounds i16, ptr %.compoundliteral57, i32 6
  %arrayinit.element65 = getelementptr inbounds i16, ptr %.compoundliteral57, i32 7
  %arrayinit.element70 = getelementptr inbounds i16, ptr %.compoundliteral68, i32 1
  %arrayinit.element71 = getelementptr inbounds i16, ptr %.compoundliteral68, i32 2
  %arrayinit.element72 = getelementptr inbounds i16, ptr %.compoundliteral68, i32 3
  %arrayinit.element73 = getelementptr inbounds i16, ptr %.compoundliteral68, i32 4
  %arrayinit.element74 = getelementptr inbounds i16, ptr %.compoundliteral68, i32 5
  %arrayinit.element75 = getelementptr inbounds i16, ptr %.compoundliteral68, i32 6
  %arrayinit.element76 = getelementptr inbounds i16, ptr %.compoundliteral68, i32 7
  %name153 = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 3
  br label %if.end44

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ch.0390 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %15 = ptrtoint ptr %video_channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %video_channels, align 4
  %arrayidx = getelementptr %struct.tw686x_video_channel, ptr %16, i32 %ch.0390
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev, ptr %arrayidx, align 8
  %ch29 = getelementptr %struct.tw686x_video_channel, ptr %16, i32 %ch.0390, i32 16
  %18 = ptrtoint ptr %ch29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %ch.0390, ptr %ch29, align 8
  %inc = add nuw nsw i32 %ch.0390, 1
  %19 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type.i, align 4
  %and.i = and i32 %20, 15
  %cmp27 = icmp ult i32 %inc, %and.i
  br i1 %cmp27, label %for.body.for.body_crit_edge, label %for.body.for.cond30.preheader_crit_edge

for.body.for.cond30.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond30.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond174.preheader:                            ; preds = %for.inc171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i339)
  %cmp176397.not = icmp eq i32 %and.i339, 0
  br i1 %cmp176397.not, label %for.cond174.preheader.for.end182_crit_edge, label %for.body178.lr.ph

for.cond174.preheader.for.end182_crit_edge:       ; preds = %for.cond174.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end182

for.body178.lr.ph:                                ; preds = %for.cond174.preheader
  %21 = ptrtoint ptr %dma_ops16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_ops16, align 4
  %hw_dma_mode = getelementptr inbounds %struct.tw686x_dma_ops, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %hw_dma_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hw_dma_mode, align 4
  br label %for.body178

if.end44:                                         ; preds = %for.inc171.if.end44_crit_edge, %if.end44.lr.ph
  %ch.1396 = phi i32 [ 0, %if.end44.lr.ph ], [ %inc172, %for.inc171.if.end44_crit_edge ]
  %25 = ptrtoint ptr %video_channels35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %video_channels35, align 4
  %arrayidx36 = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396
  %vb_mutex = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 9
  tail call void @__mutex_init(ptr noundef %vb_mutex, ptr noundef nonnull @.str.9, ptr noundef nonnull @tw686x_video_init.__key) #9
  %qlock = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %qlock, ptr noundef nonnull @.str.11, ptr noundef nonnull @tw686x_video_init.__key.10, i16 noundef signext 3) #9
  %vidq_queued = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 2
  %27 = ptrtoint ptr %vidq_queued to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %vidq_queued, ptr %vidq_queued, align 4
  %prev.i = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 2, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %vidq_queued, ptr %prev.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral.i)
  %video_standard.i = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 11
  %29 = ptrtoint ptr %video_standard.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 45056, ptr %video_standard.i, align 8
  %30 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx36, align 8
  %32 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 270, ptr %.compoundliteral.i, align 2
  %33 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 286, ptr %arrayinit.element.i, align 2
  %34 = ptrtoint ptr %arrayinit.element31.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 302, ptr %arrayinit.element31.i, align 2
  %35 = ptrtoint ptr %arrayinit.element32.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 318, ptr %arrayinit.element32.i, align 2
  %36 = ptrtoint ptr %arrayinit.element33.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 526, ptr %arrayinit.element33.i, align 2
  %37 = ptrtoint ptr %arrayinit.element34.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 542, ptr %arrayinit.element34.i, align 2
  %38 = ptrtoint ptr %arrayinit.element35.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 558, ptr %arrayinit.element35.i, align 2
  %39 = ptrtoint ptr %arrayinit.element36.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 574, ptr %arrayinit.element36.i, align 2
  %ch.i = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 16
  %40 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ch.i, align 8
  %arrayidx.i = getelementptr [8 x i16], ptr %.compoundliteral.i, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %43 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %mmio.i.i = getelementptr inbounds %struct.tw686x_dev, ptr %31, i32 0, i32 7
  %44 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %45, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #9, !srcloc !101
  %46 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx36, align 8
  %mmio.i66.i = getelementptr inbounds %struct.tw686x_dev, ptr %47, i32 0, i32 7
  %48 = ptrtoint ptr %mmio.i66.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mmio.i66.i, align 4
  %add.ptr.i67.i = getelementptr i32, ptr %49, i32 42
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #9, !srcloc !102
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %52 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ch.i, align 8
  %add45.i = add i32 %53, 13
  %shl46.i = shl nuw i32 1, %add45.i
  %neg.i = xor i32 %shl46.i, -1
  %and42.i = and i32 %51, %neg.i
  %54 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx36, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %56 = tail call i32 @llvm.bswap.i32(i32 %and42.i) #9
  %mmio.i68.i = getelementptr inbounds %struct.tw686x_dev, ptr %55, i32 0, i32 7
  %57 = ptrtoint ptr %mmio.i68.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mmio.i68.i, align 4
  %add.ptr.i69.i = getelementptr i32, ptr %58, i32 42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69.i, i32 %56) #9, !srcloc !101
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral.i)
  %59 = ptrtoint ptr %video_standard.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %video_standard.i, align 8
  %and = and i64 %60, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool45.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool45.not, i32 576, i32 480
  %call46 = tail call fastcc i32 @tw686x_set_format(ptr noundef %arrayidx36, i32 noundef 1498831189, i32 noundef 720, i32 noundef %cond, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end44.error218_crit_edge

if.end44.error218_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %error218

if.end49:                                         ; preds = %if.end44
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral.i340)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral8.i)
  %input.i = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 19
  %61 = ptrtoint ptr %input.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %input.i, align 4
  %62 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx36, align 8
  %64 = ptrtoint ptr %.compoundliteral.i340 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 16, ptr %.compoundliteral.i340, align 2
  %65 = ptrtoint ptr %arrayinit.element.i341 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 17, ptr %arrayinit.element.i341, align 2
  %66 = ptrtoint ptr %arrayinit.element1.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 18, ptr %arrayinit.element1.i, align 2
  %67 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 19, ptr %arrayinit.element2.i, align 2
  %68 = ptrtoint ptr %arrayinit.element3.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 20, ptr %arrayinit.element3.i, align 2
  %69 = ptrtoint ptr %arrayinit.element4.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 21, ptr %arrayinit.element4.i, align 2
  %70 = ptrtoint ptr %arrayinit.element5.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 22, ptr %arrayinit.element5.i, align 2
  %71 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 23, ptr %arrayinit.element6.i, align 2
  %72 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %ch.i, align 8
  %arrayidx.i343 = getelementptr [8 x i16], ptr %.compoundliteral.i340, i32 0, i32 %73
  %74 = ptrtoint ptr %arrayidx.i343 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %arrayidx.i343, align 2
  %conv.i344 = zext i16 %75 to i32
  %mmio.i.i345 = getelementptr inbounds %struct.tw686x_dev, ptr %63, i32 0, i32 7
  %76 = ptrtoint ptr %mmio.i.i345 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mmio.i.i345, align 4
  %add.ptr.i.i346 = getelementptr i32, ptr %77, i32 %conv.i344
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i346) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %79 = and i32 %78, -193
  %80 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx36, align 8
  %82 = ptrtoint ptr %.compoundliteral8.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 16, ptr %.compoundliteral8.i, align 2
  %83 = ptrtoint ptr %arrayinit.element10.i to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 17, ptr %arrayinit.element10.i, align 2
  %84 = ptrtoint ptr %arrayinit.element11.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 18, ptr %arrayinit.element11.i, align 2
  %85 = ptrtoint ptr %arrayinit.element12.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 19, ptr %arrayinit.element12.i, align 2
  %86 = ptrtoint ptr %arrayinit.element13.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 20, ptr %arrayinit.element13.i, align 2
  %87 = ptrtoint ptr %arrayinit.element14.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 21, ptr %arrayinit.element14.i, align 2
  %88 = ptrtoint ptr %arrayinit.element15.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 22, ptr %arrayinit.element15.i, align 2
  %89 = ptrtoint ptr %arrayinit.element16.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 23, ptr %arrayinit.element16.i, align 2
  %90 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %ch.i, align 8
  %arrayidx18.i = getelementptr [8 x i16], ptr %.compoundliteral8.i, i32 0, i32 %91
  %92 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx18.i, align 2
  %conv19.i = zext i16 %93 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %mmio.i27.i = getelementptr inbounds %struct.tw686x_dev, ptr %81, i32 0, i32 7
  %94 = ptrtoint ptr %mmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %mmio.i27.i, align 4
  %add.ptr.i28.i = getelementptr i32, ptr %95, i32 %conv19.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %79) #9, !srcloc !101
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral.i340)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral8.i)
  tail call fastcc void @tw686x_set_framerate(ptr noundef %arrayidx36, i32 noundef 30)
  %96 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 264, ptr %.compoundliteral, align 2
  %97 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 280, ptr %arrayinit.element, align 2
  %98 = ptrtoint ptr %arrayinit.element50 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 296, ptr %arrayinit.element50, align 2
  %99 = ptrtoint ptr %arrayinit.element51 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 312, ptr %arrayinit.element51, align 2
  %100 = ptrtoint ptr %arrayinit.element52 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 520, ptr %arrayinit.element52, align 2
  %101 = ptrtoint ptr %arrayinit.element53 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 536, ptr %arrayinit.element53, align 2
  %102 = ptrtoint ptr %arrayinit.element54 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 552, ptr %arrayinit.element54, align 2
  %103 = ptrtoint ptr %arrayinit.element55 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 568, ptr %arrayinit.element55, align 2
  %arrayidx56 = getelementptr [8 x i16], ptr %.compoundliteral, i32 0, i32 %ch.1396
  %104 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %arrayidx56, align 2
  %conv = zext i16 %105 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %106 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %107, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 335544320) #9, !srcloc !101
  %108 = ptrtoint ptr %.compoundliteral57 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 267, ptr %.compoundliteral57, align 2
  %109 = ptrtoint ptr %arrayinit.element59 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 283, ptr %arrayinit.element59, align 2
  %110 = ptrtoint ptr %arrayinit.element60 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 299, ptr %arrayinit.element60, align 2
  %111 = ptrtoint ptr %arrayinit.element61 to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 315, ptr %arrayinit.element61, align 2
  %112 = ptrtoint ptr %arrayinit.element62 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 523, ptr %arrayinit.element62, align 2
  %113 = ptrtoint ptr %arrayinit.element63 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 539, ptr %arrayinit.element63, align 2
  %114 = ptrtoint ptr %arrayinit.element64 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 555, ptr %arrayinit.element64, align 2
  %115 = ptrtoint ptr %arrayinit.element65 to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 571, ptr %arrayinit.element65, align 2
  %arrayidx66 = getelementptr [8 x i16], ptr %.compoundliteral57, i32 0, i32 %ch.1396
  %116 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %arrayidx66, align 2
  %conv67 = zext i16 %117 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %118 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i348 = getelementptr i32, ptr %119, i32 %conv67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i348, i32 -805306368) #9, !srcloc !101
  %120 = ptrtoint ptr %.compoundliteral68 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 74, ptr %.compoundliteral68, align 2
  %121 = ptrtoint ptr %arrayinit.element70 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 75, ptr %arrayinit.element70, align 2
  %122 = ptrtoint ptr %arrayinit.element71 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 76, ptr %arrayinit.element71, align 2
  %123 = ptrtoint ptr %arrayinit.element72 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 77, ptr %arrayinit.element72, align 2
  %124 = ptrtoint ptr %arrayinit.element73 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 78, ptr %arrayinit.element73, align 2
  %125 = ptrtoint ptr %arrayinit.element74 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 79, ptr %arrayinit.element74, align 2
  %126 = ptrtoint ptr %arrayinit.element75 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 80, ptr %arrayinit.element75, align 2
  %127 = ptrtoint ptr %arrayinit.element76 to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 81, ptr %arrayinit.element76, align 2
  %arrayidx77 = getelementptr [8 x i16], ptr %.compoundliteral68, i32 0, i32 %ch.1396
  %128 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %arrayidx77, align 2
  %conv78 = zext i16 %129 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %130 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i350 = getelementptr i32, ptr %131, i32 %conv78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i350, i32 0) #9, !srcloc !101
  %vidq = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 1
  %io_modes = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 1, i32 1
  %132 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 21, ptr %io_modes, align 4
  %133 = ptrtoint ptr %vidq to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 1, ptr %vidq, align 4
  %drv_priv = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 1, i32 10
  %134 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %arrayidx36, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 1, i32 12
  %135 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 744, ptr %buf_struct_size, align 4
  %ops = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 1, i32 7
  %136 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @tw686x_video_qops, ptr %ops, align 4
  %137 = ptrtoint ptr %dma_ops16 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dma_ops16, align 4
  %mem_ops = getelementptr inbounds %struct.tw686x_dma_ops, ptr %138, i32 0, i32 4
  %139 = ptrtoint ptr %mem_ops to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %mem_ops, align 4
  %mem_ops85 = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 1, i32 8
  %141 = ptrtoint ptr %mem_ops85 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %140, ptr %mem_ops85, align 4
  %timestamp_flags = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 1, i32 13
  %142 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 8192, ptr %timestamp_flags, align 4
  %min_buffers_needed = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 1, i32 15
  %143 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 2, ptr %min_buffers_needed, align 4
  %lock = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 1, i32 5
  %144 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %vb_mutex, ptr %lock, align 4
  %145 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dma_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp91.not = icmp eq i32 %146, 0
  %cond93 = select i1 %cmp91.not, i32 0, i32 4
  %gfp_flags = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 1, i32 14
  %147 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %cond93, ptr %gfp_flags, align 4
  %148 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pci_dev, align 4
  %dev96 = getelementptr inbounds %struct.pci_dev, ptr %149, i32 0, i32 44
  %dev98 = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 1, i32 2
  %150 = ptrtoint ptr %dev98 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %dev96, ptr %dev98, align 4
  %call100 = tail call i32 @vb2_queue_init(ptr noundef %vidq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end108, label %if.end49.error218.sink.split_crit_edge

if.end49.error218.sink.split_crit_edge:           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %error218.sink.split

if.end108:                                        ; preds = %if.end49
  %ctrl_handler = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 7
  %call110 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 4, ptr noundef nonnull @tw686x_video_init._key, ptr noundef nonnull @.str.14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end121, label %if.end108.error218.sink.split_crit_edge

if.end108.error218.sink.split_crit_edge:          ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #11
  br label %error218.sink.split

if.end121:                                        ; preds = %if.end108
  %call123 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ctrl_ops, i32 noundef 9963776, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #9
  %call125 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 100) #9
  %call127 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #9
  %call129 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_handler, ptr noundef nonnull @ctrl_ops, i32 noundef 9963779, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #9
  %error = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 7, i32 9
  %151 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool131.not = icmp eq i32 %152, 0
  br i1 %tobool131.not, label %if.end133, label %if.end121.error218_crit_edge

if.end121.error218_crit_edge:                     ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %error218

if.end133:                                        ; preds = %if.end121
  %call135 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_handler) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end138, label %if.end133.error218_crit_edge

if.end133.error218_crit_edge:                     ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #11
  br label %error218

if.end138:                                        ; preds = %if.end133
  %call139 = tail call ptr @video_device_alloc() #9
  %tobool140.not = icmp eq ptr %call139, null
  br i1 %tobool140.not, label %if.end138.error218.sink.split_crit_edge, label %if.end150

if.end138.error218.sink.split_crit_edge:          ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %error218.sink.split

if.end150:                                        ; preds = %if.end138
  %name151 = getelementptr inbounds %struct.video_device, ptr %call139, i32 0, i32 12
  %call155 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name151, i32 noundef 32, ptr noundef nonnull @.str.21, ptr noundef %name153)
  %fops = getelementptr inbounds %struct.video_device, ptr %call139, i32 0, i32 3
  %153 = ptrtoint ptr %fops to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr @tw686x_video_fops, ptr %fops, align 4
  %ioctl_ops = getelementptr inbounds %struct.video_device, ptr %call139, i32 0, i32 24
  %154 = ptrtoint ptr %ioctl_ops to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @tw686x_video_ioctl_ops, ptr %ioctl_ops, align 4
  %release = getelementptr inbounds %struct.video_device, ptr %call139, i32 0, i32 23
  %155 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr @video_device_release, ptr %release, align 8
  %v4l2_dev157 = getelementptr inbounds %struct.video_device, ptr %call139, i32 0, i32 7
  %156 = ptrtoint ptr %v4l2_dev157 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %v4l2_dev, ptr %v4l2_dev157, align 4
  %queue = getelementptr inbounds %struct.video_device, ptr %call139, i32 0, i32 10
  %157 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %vidq, ptr %queue, align 8
  %tvnorms = getelementptr inbounds %struct.video_device, ptr %call139, i32 0, i32 22
  %158 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %158)
  store i64 16777215, ptr %tvnorms, align 8
  %minor = getelementptr inbounds %struct.video_device, ptr %call139, i32 0, i32 15
  %159 = ptrtoint ptr %minor to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 -1, ptr %minor, align 8
  %lock160 = getelementptr inbounds %struct.video_device, ptr %call139, i32 0, i32 26
  %160 = ptrtoint ptr %lock160 to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %vb_mutex, ptr %lock160, align 8
  %ctrl_handler162 = getelementptr inbounds %struct.video_device, ptr %call139, i32 0, i32 9
  %161 = ptrtoint ptr %ctrl_handler162 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %ctrl_handler, ptr %ctrl_handler162, align 4
  %device_caps = getelementptr inbounds %struct.video_device, ptr %call139, i32 0, i32 4
  %162 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 83886081, ptr %device_caps, align 8
  %device = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 3
  %163 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call139, ptr %device, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %call139, i32 0, i32 5, i32 8
  %164 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %arrayidx36, ptr %driver_data.i.i, align 4
  %165 = load ptr, ptr %fops, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %165, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef nonnull %call139, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %167) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp164 = icmp slt i32 %call.i, 0
  br i1 %cmp164, label %if.end150.error218_crit_edge, label %for.inc171

if.end150.error218_crit_edge:                     ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %error218

for.inc171:                                       ; preds = %if.end150
  %num = getelementptr inbounds %struct.video_device, ptr %call139, i32 0, i32 16
  %168 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %num, align 4
  %conv168 = zext i16 %169 to i32
  %num169 = getelementptr %struct.tw686x_video_channel, ptr %26, i32 %ch.1396, i32 17
  %170 = ptrtoint ptr %num169 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %conv168, ptr %num169, align 4
  %inc172 = add nuw nsw i32 %ch.1396, 1
  %171 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %type.i, align 4
  %and.i339 = and i32 %172, 15
  %cmp32 = icmp ult i32 %inc172, %and.i339
  br i1 %cmp32, label %for.inc171.if.end44_crit_edge, label %for.cond174.preheader

for.inc171.if.end44_crit_edge:                    ; preds = %for.inc171
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

for.body178:                                      ; preds = %for.body178.for.body178_crit_edge, %for.body178.lr.ph
  %ch.2399 = phi i32 [ 0, %for.body178.lr.ph ], [ %inc181, %for.body178.for.body178_crit_edge ]
  %val.0398 = phi i32 [ 5400, %for.body178.lr.ph ], [ %or, %for.body178.for.body178_crit_edge ]
  %mul = shl nuw i32 %ch.2399, 1
  %add = add nuw nsw i32 %mul, 16
  %shl = shl i32 %24, %add
  %or = or i32 %shl, %val.0398
  %inc181 = add nuw nsw i32 %ch.2399, 1
  %exitcond.not = icmp eq i32 %inc181, %and.i339
  br i1 %exitcond.not, label %for.body178.for.end182_crit_edge, label %for.body178.for.body178_crit_edge

for.body178.for.body178_crit_edge:                ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body178

for.body178.for.end182_crit_edge:                 ; preds = %for.body178
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end182

for.end182:                                       ; preds = %for.body178.for.end182_crit_edge, %for.cond174.preheader.for.end182_crit_edge, %for.cond30.preheader.for.end182_crit_edge
  %val.0.lcssa = phi i32 [ 5400, %for.cond174.preheader.for.end182_crit_edge ], [ 5400, %for.cond30.preheader.for.end182_crit_edge ], [ %or, %for.body178.for.end182_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %173 = tail call i32 @llvm.bswap.i32(i32 %val.0.lcssa) #9
  %mmio.i353 = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 7
  %174 = ptrtoint ptr %mmio.i353 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %mmio.i353, align 4
  %add.ptr.i354 = getelementptr i32, ptr %175, i32 46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i354, i32 %173) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %176 = ptrtoint ptr %mmio.i353 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %mmio.i353, align 4
  %add.ptr.i356 = getelementptr i32, ptr %177, i32 406
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i356, i32 -419430400) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %178 = ptrtoint ptr %mmio.i353 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %mmio.i353, align 4
  %add.ptr.i358 = getelementptr i32, ptr %179, i32 399
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i358, i32 -872415232) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %180 = ptrtoint ptr %mmio.i353 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mmio.i353, align 4
  %add.ptr.i360 = getelementptr i32, ptr %181, i32 405
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i360, i32 -1526726656) #9, !srcloc !101
  %182 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %type.i, align 4
  %and.i362 = and i32 %183, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i362)
  %cmp199 = icmp ugt i32 %and.i362, 4
  br i1 %cmp199, label %if.then201, label %for.end182.cleanup219_crit_edge

for.end182.cleanup219_crit_edge:                  ; preds = %for.end182
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup219

if.then201:                                       ; preds = %for.end182
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %184 = ptrtoint ptr %mmio.i353 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %mmio.i353, align 4
  %add.ptr.i364 = getelementptr i32, ptr %185, i32 655
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i364, i32 -872415232) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %186 = ptrtoint ptr %mmio.i353 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %mmio.i353, align 4
  %add.ptr.i366 = getelementptr i32, ptr %187, i32 661
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i366, i32 -1526726656) #9, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %188 = ptrtoint ptr %mmio.i353 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %mmio.i353, align 4
  %add.ptr.i368 = getelementptr i32, ptr %189, i32 662
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i368, i32 -419430400) #9, !srcloc !101
  br label %cleanup219

error218.sink.split:                              ; preds = %if.end138.error218.sink.split_crit_edge, %if.end108.error218.sink.split_crit_edge, %if.end49.error218.sink.split_crit_edge
  %.str.12.sink = phi ptr [ @.str.12, %if.end49.error218.sink.split_crit_edge ], [ @.str.16, %if.end108.error218.sink.split_crit_edge ], [ @.str.19, %if.end138.error218.sink.split_crit_edge ]
  %err.0.ph.ph = phi i32 [ %call100, %if.end49.error218.sink.split_crit_edge ], [ %call110, %if.end108.error218.sink.split_crit_edge ], [ -12, %if.end138.error218.sink.split_crit_edge ]
  %name = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 1, i32 4
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.12.sink, ptr noundef %name, i32 noundef %ch.1396) #12
  br label %error218

error218:                                         ; preds = %error218.sink.split, %if.end150.error218_crit_edge, %if.end133.error218_crit_edge, %if.end121.error218_crit_edge, %if.end44.error218_crit_edge
  %err.0.ph = phi i32 [ %err.0.ph.ph, %error218.sink.split ], [ %call.i, %if.end150.error218_crit_edge ], [ %call135, %if.end133.error218_crit_edge ], [ %152, %if.end121.error218_crit_edge ], [ %call46, %if.end44.error218_crit_edge ]
  %190 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %type.i, align 4
  %and.i18.i = and i32 %191, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18.i)
  %cmp19.not.i = icmp eq i32 %and.i18.i, 0
  br i1 %cmp19.not.i, label %error218.cleanup219_crit_edge, label %error218.for.body.i_crit_edge

error218.for.body.i_crit_edge:                    ; preds = %error218
  br label %for.body.i

error218.cleanup219_crit_edge:                    ; preds = %error218
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup219

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %error218.for.body.i_crit_edge
  %ch.020.i = phi i32 [ %inc7.i, %if.end.i.for.body.i_crit_edge ], [ 0, %error218.for.body.i_crit_edge ]
  %192 = ptrtoint ptr %video_channels35 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %video_channels35, align 4
  %device.i = getelementptr %struct.tw686x_video_channel, ptr %193, i32 %ch.020.i, i32 3
  %194 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %device.i, align 4
  tail call void @video_unregister_device(ptr noundef %195) #9
  %196 = ptrtoint ptr %dma_ops16 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dma_ops16, align 4
  %free.i = getelementptr inbounds %struct.tw686x_dma_ops, ptr %197, i32 0, i32 2
  %198 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %free.i, align 4
  %tobool.not.i = icmp eq ptr %199, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %for.body3.preheader.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.body3.preheader.i:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i369 = getelementptr %struct.tw686x_video_channel, ptr %193, i32 %ch.020.i
  tail call void %199(ptr noundef %arrayidx.i369, i32 noundef 0) #9
  %200 = ptrtoint ptr %dma_ops16 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dma_ops16, align 4
  %free5.1.i = getelementptr inbounds %struct.tw686x_dma_ops, ptr %201, i32 0, i32 2
  %202 = ptrtoint ptr %free5.1.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %free5.1.i, align 4
  tail call void %203(ptr noundef %arrayidx.i369, i32 noundef 1) #9
  br label %if.end.i

if.end.i:                                         ; preds = %for.body3.preheader.i, %for.body.i.if.end.i_crit_edge
  %inc7.i = add nuw nsw i32 %ch.020.i, 1
  %204 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %type.i, align 4
  %and.i.i = and i32 %205, 15
  %cmp.i = icmp ult i32 %inc7.i, %and.i.i
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup219_crit_edge

if.end.i.cleanup219_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup219

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cleanup219:                                       ; preds = %if.end.i.cleanup219_crit_edge, %error218.cleanup219_crit_edge, %if.then201, %for.end182.cleanup219_crit_edge, %if.then18.cleanup219_crit_edge, %switch.lookup.cleanup219_crit_edge, %entry.cleanup219_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup219_crit_edge ], [ %call, %switch.lookup.cleanup219_crit_edge ], [ %call21, %if.then18.cleanup219_crit_edge ], [ 0, %if.then201 ], [ 0, %for.end182.cleanup219_crit_edge ], [ %err.0.ph, %error218.cleanup219_crit_edge ], [ %err.0.ph, %if.end.i.cleanup219_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tw686x_set_standard(ptr nocapture noundef %vc, i64 noundef %id) unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %id, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.else:                                          ; preds = %entry
  %and1 = and i64 %id, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.else4, label %if.else.if.end30_crit_edge

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.else4:                                         ; preds = %if.else
  %and5 = and i64 %id, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5)
  %tobool6.not = icmp eq i64 %and5, 0
  br i1 %tobool6.not, label %if.else8, label %if.else4.if.end30_crit_edge

if.else4.if.end30_crit_edge:                      ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.else8:                                         ; preds = %if.else4
  %and9 = and i64 %id, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9)
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %if.else12, label %if.else8.if.end30_crit_edge

if.else8.if.end30_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.else12:                                        ; preds = %if.else8
  %and13 = and i64 %id, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and13)
  %tobool14.not = icmp eq i64 %and13, 0
  br i1 %tobool14.not, label %if.else16, label %if.else12.if.end30_crit_edge

if.else12.if.end30_crit_edge:                     ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.else16:                                        ; preds = %if.else12
  %and17 = and i64 %id, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17)
  %tobool18.not = icmp eq i64 %and17, 0
  br i1 %tobool18.not, label %if.else20, label %if.else16.if.end30_crit_edge

if.else16.if.end30_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.else20:                                        ; preds = %if.else16
  %and21 = and i64 %id, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21)
  %tobool22.not = icmp eq i64 %and21, 0
  br i1 %tobool22.not, label %if.else20.cleanup_crit_edge, label %if.else20.if.end30_crit_edge

if.else20.if.end30_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.else20.cleanup_crit_edge:                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.else20.if.end30_crit_edge, %if.else16.if.end30_crit_edge, %if.else12.if.end30_crit_edge, %if.else8.if.end30_crit_edge, %if.else4.if.end30_crit_edge, %if.else.if.end30_crit_edge, %entry.if.end30_crit_edge
  %val.0 = phi i32 [ 0, %entry.if.end30_crit_edge ], [ 16777216, %if.else.if.end30_crit_edge ], [ 33554432, %if.else4.if.end30_crit_edge ], [ 50331648, %if.else8.if.end30_crit_edge ], [ 67108864, %if.else12.if.end30_crit_edge ], [ 83886080, %if.else16.if.end30_crit_edge ], [ 100663296, %if.else20.if.end30_crit_edge ]
  %video_standard = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 11
  %0 = ptrtoint ptr %video_standard to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %id, ptr %video_standard, align 8
  %1 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vc, align 8
  %3 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 270, ptr %.compoundliteral, align 2
  %arrayinit.element = getelementptr inbounds i16, ptr %.compoundliteral, i32 1
  %4 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 286, ptr %arrayinit.element, align 2
  %arrayinit.element31 = getelementptr inbounds i16, ptr %.compoundliteral, i32 2
  %5 = ptrtoint ptr %arrayinit.element31 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 302, ptr %arrayinit.element31, align 2
  %arrayinit.element32 = getelementptr inbounds i16, ptr %.compoundliteral, i32 3
  %6 = ptrtoint ptr %arrayinit.element32 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 318, ptr %arrayinit.element32, align 2
  %arrayinit.element33 = getelementptr inbounds i16, ptr %.compoundliteral, i32 4
  %7 = ptrtoint ptr %arrayinit.element33 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 526, ptr %arrayinit.element33, align 2
  %arrayinit.element34 = getelementptr inbounds i16, ptr %.compoundliteral, i32 5
  %8 = ptrtoint ptr %arrayinit.element34 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 542, ptr %arrayinit.element34, align 2
  %arrayinit.element35 = getelementptr inbounds i16, ptr %.compoundliteral, i32 6
  %9 = ptrtoint ptr %arrayinit.element35 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 558, ptr %arrayinit.element35, align 2
  %arrayinit.element36 = getelementptr inbounds i16, ptr %.compoundliteral, i32 7
  %10 = ptrtoint ptr %arrayinit.element36 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 574, ptr %arrayinit.element36, align 2
  %ch = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 16
  %11 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ch, align 8
  %arrayidx = getelementptr [8 x i16], ptr %.compoundliteral, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %14 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %2, i32 0, i32 7
  %15 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %16, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %val.0) #9, !srcloc !101
  %17 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vc, align 8
  %mmio.i66 = getelementptr inbounds %struct.tw686x_dev, ptr %18, i32 0, i32 7
  %19 = ptrtoint ptr %mmio.i66 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mmio.i66, align 4
  %add.ptr.i67 = getelementptr i32, ptr %20, i32 42
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #9, !srcloc !102
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %and38 = and i64 %id, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and38)
  %tobool39.not = icmp eq i64 %and38, 0
  %23 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ch, align 8
  %add45 = add i32 %24, 13
  %shl46 = shl nuw i32 1, %add45
  %neg = xor i32 %shl46, -1
  %and42 = and i32 %22, %neg
  %or = or i32 %shl46, %22
  %val.1 = select i1 %tobool39.not, i32 %or, i32 %and42
  %25 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vc, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %val.1) #9
  %mmio.i68 = getelementptr inbounds %struct.tw686x_dev, ptr %26, i32 0, i32 7
  %28 = ptrtoint ptr %mmio.i68 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mmio.i68, align 4
  %add.ptr.i69 = getelementptr i32, ptr %29, i32 42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %27) #9, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %if.else20.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ -22, %if.else20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tw686x_set_format(ptr noundef %vc, i32 noundef %pixelformat, i32 noundef %width, i32 noundef %height, i1 noundef zeroext %realloc) unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca [8 x i16], align 2
  %.compoundliteral62 = alloca [8 x i16], align 2
  %.compoundliteral87 = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc, align 8
  %2 = zext i32 %pixelformat to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pixelformat, label %entry.format_by_fourcc.exit_crit_edge [
    i32 1498831189, label %entry.if.then.i_crit_edge
    i32 1346520914, label %if.then.fold.split.i
    i32 1448695129, label %if.then.fold.split10.i
  ]

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

entry.format_by_fourcc.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %format_by_fourcc.exit

if.then.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split10.i, %if.then.fold.split.i, %entry.if.then.i_crit_edge
  %cnt.08.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split10.i ]
  %arrayidx.i = getelementptr [3 x %struct.tw686x_format], ptr @formats, i32 0, i32 %cnt.08.lcssa.i
  br label %format_by_fourcc.exit

format_by_fourcc.exit:                            ; preds = %if.then.i, %entry.format_by_fourcc.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ null, %entry.format_by_fourcc.exit_crit_edge ]
  %format = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 8
  %3 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %retval.0.i, ptr %format, align 8
  %width2 = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 12
  %4 = ptrtoint ptr %width2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %width, ptr %width2, align 8
  %height3 = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 13
  %5 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %height, ptr %height3, align 4
  %dma_ops = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_ops, align 4
  %alloc = getelementptr inbounds %struct.tw686x_dma_ops, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %alloc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %alloc, align 4
  %tobool.not = icmp ne ptr %9, null
  %10 = and i1 %tobool.not, %realloc
  br i1 %10, label %for.body.preheader, label %format_by_fourcc.exit.if.end22_crit_edge

format_by_fourcc.exit.if.end22_crit_edge:         ; preds = %format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

for.body.preheader:                               ; preds = %format_by_fourcc.exit
  %11 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_ops, align 4
  %free = getelementptr inbounds %struct.tw686x_dma_ops, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %free to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %free, align 4
  tail call void %14(ptr noundef %vc, i32 noundef 0) #9
  %15 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_ops, align 4
  %free.1 = getelementptr inbounds %struct.tw686x_dma_ops, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %free.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %free.1, align 4
  tail call void %18(ptr noundef %vc, i32 noundef 1) #9
  %19 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_ops, align 4
  %alloc10 = getelementptr inbounds %struct.tw686x_dma_ops, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %alloc10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %alloc10, align 4
  %call11 = tail call i32 %22(ptr noundef %vc, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %for.inc19, label %for.body.preheader.cleanup_crit_edge

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dma_ops, align 4
  %free17 = getelementptr inbounds %struct.tw686x_dma_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %free17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %free17, align 4
  tail call void %26(ptr noundef %vc, i32 noundef 0) #9
  br label %cleanup

for.inc19:                                        ; preds = %for.body.preheader
  %27 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dma_ops, align 4
  %alloc10.1 = getelementptr inbounds %struct.tw686x_dma_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %alloc10.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %alloc10.1, align 4
  %call11.1 = tail call i32 %30(ptr noundef %vc, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.1)
  %tobool12.not.1 = icmp eq i32 %call11.1, 0
  br i1 %tobool12.not.1, label %for.inc19.if.end22_crit_edge, label %if.then15

for.inc19.if.end22_crit_edge:                     ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end22:                                         ; preds = %for.inc19.if.end22_crit_edge, %format_by_fourcc.exit.if.end22_crit_edge
  %31 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vc, align 8
  %33 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 16, ptr %.compoundliteral, align 2
  %arrayinit.element = getelementptr inbounds i16, ptr %.compoundliteral, i32 1
  %34 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 17, ptr %arrayinit.element, align 2
  %arrayinit.element24 = getelementptr inbounds i16, ptr %.compoundliteral, i32 2
  %35 = ptrtoint ptr %arrayinit.element24 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 18, ptr %arrayinit.element24, align 2
  %arrayinit.element25 = getelementptr inbounds i16, ptr %.compoundliteral, i32 3
  %36 = ptrtoint ptr %arrayinit.element25 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 19, ptr %arrayinit.element25, align 2
  %arrayinit.element26 = getelementptr inbounds i16, ptr %.compoundliteral, i32 4
  %37 = ptrtoint ptr %arrayinit.element26 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 20, ptr %arrayinit.element26, align 2
  %arrayinit.element27 = getelementptr inbounds i16, ptr %.compoundliteral, i32 5
  %38 = ptrtoint ptr %arrayinit.element27 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 21, ptr %arrayinit.element27, align 2
  %arrayinit.element28 = getelementptr inbounds i16, ptr %.compoundliteral, i32 6
  %39 = ptrtoint ptr %arrayinit.element28 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 22, ptr %arrayinit.element28, align 2
  %arrayinit.element29 = getelementptr inbounds i16, ptr %.compoundliteral, i32 7
  %40 = ptrtoint ptr %arrayinit.element29 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 23, ptr %arrayinit.element29, align 2
  %ch = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 16
  %41 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ch, align 8
  %arrayidx = getelementptr [8 x i16], ptr %.compoundliteral, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %44 to i32
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %32, i32 0, i32 7
  %45 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %46, i32 %conv
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %48 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %width2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 361, i32 %49)
  %cmp32 = icmp ult i32 %49, 361
  %masksel = select i1 %cmp32, i32 8388608, i32 361
  %50 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %height3, align 4
  %video_standard = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 11
  %52 = ptrtoint ptr %video_standard to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %video_standard, align 8
  %and37 = and i64 %53, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and37)
  %tobool38.not = icmp eq i64 %and37, 0
  %div = select i1 %tobool38.not, i32 288, i32 240
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %div)
  %cmp39.not = icmp ugt i32 %51, %div
  %54 = and i32 %47, -32770
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %and44 = or i32 %masksel, %55
  %masksel152 = select i1 %cmp39.not, i32 0, i32 16777216
  %and44.masked = and i32 %and44, -17301504
  %and46 = or i32 %masksel152, %and44.masked
  %dma_mode = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 5
  %56 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp47 = icmp eq i32 %57, 2
  br i1 %cmp47, label %if.then49, label %if.end22.if.end56_crit_edge

if.end22.if.end56_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then49:                                        ; preds = %if.end22
  %type.i = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 4
  %58 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %type.i, align 4
  %and.i = and i32 %59, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool51.not = icmp eq i32 %and.i, 0
  br i1 %tobool51.not, label %cond.false, label %if.then49.cond.end_crit_edge

if.then49.cond.end_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ch, align 8
  %mul = shl i32 %61, 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then49.cond.end_crit_edge
  %cond53 = phi i32 [ %mul, %cond.false ], [ 0, %if.then49.cond.end_crit_edge ]
  %sub = shl i32 %cond53, 10
  %shl = or i32 %and46, %cond53
  %or54 = or i32 %shl, %sub
  %or55 = or i32 %or54, 261120
  br label %if.end56

if.end56:                                         ; preds = %cond.end, %if.end22.if.end56_crit_edge
  %val.2 = phi i32 [ %or55, %cond.end ], [ %and46, %if.end22.if.end56_crit_edge ]
  %and57 = and i32 %val.2, -7340033
  %62 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %format, align 8
  %mode = getelementptr inbounds %struct.tw686x_format, ptr %63, i32 0, i32 3
  %64 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mode, align 4
  %shl59 = shl i32 %65, 20
  %or60 = or i32 %shl59, %and57
  %66 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vc, align 8
  %68 = ptrtoint ptr %.compoundliteral62 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 16, ptr %.compoundliteral62, align 2
  %arrayinit.element64 = getelementptr inbounds i16, ptr %.compoundliteral62, i32 1
  %69 = ptrtoint ptr %arrayinit.element64 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 17, ptr %arrayinit.element64, align 2
  %arrayinit.element65 = getelementptr inbounds i16, ptr %.compoundliteral62, i32 2
  %70 = ptrtoint ptr %arrayinit.element65 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 18, ptr %arrayinit.element65, align 2
  %arrayinit.element66 = getelementptr inbounds i16, ptr %.compoundliteral62, i32 3
  %71 = ptrtoint ptr %arrayinit.element66 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 19, ptr %arrayinit.element66, align 2
  %arrayinit.element67 = getelementptr inbounds i16, ptr %.compoundliteral62, i32 4
  %72 = ptrtoint ptr %arrayinit.element67 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 20, ptr %arrayinit.element67, align 2
  %arrayinit.element68 = getelementptr inbounds i16, ptr %.compoundliteral62, i32 5
  %73 = ptrtoint ptr %arrayinit.element68 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 21, ptr %arrayinit.element68, align 2
  %arrayinit.element69 = getelementptr inbounds i16, ptr %.compoundliteral62, i32 6
  %74 = ptrtoint ptr %arrayinit.element69 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 22, ptr %arrayinit.element69, align 2
  %arrayinit.element70 = getelementptr inbounds i16, ptr %.compoundliteral62, i32 7
  %75 = ptrtoint ptr %arrayinit.element70 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 23, ptr %arrayinit.element70, align 2
  %76 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ch, align 8
  %arrayidx72 = getelementptr [8 x i16], ptr %.compoundliteral62, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %arrayidx72, align 2
  %conv73 = zext i16 %79 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %80 = tail call i32 @llvm.bswap.i32(i32 %or60) #9
  %mmio.i148 = getelementptr inbounds %struct.tw686x_dev, ptr %67, i32 0, i32 7
  %81 = ptrtoint ptr %mmio.i148 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mmio.i148, align 4
  %add.ptr.i149 = getelementptr i32, ptr %82, i32 %conv73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i149, i32 %80) #9, !srcloc !101
  %83 = ptrtoint ptr %width2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %width2, align 8
  %mul75 = shl i32 %84, 1
  %and76 = and i32 %mul75, 2046
  %85 = ptrtoint ptr %height3 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %height3, align 4
  %87 = shl i32 %86, 21
  %shl82 = and i32 %87, -4194304
  %shl83 = shl nuw nsw i32 %and76, 11
  %or84 = or i32 %shl82, %shl83
  %or85 = or i32 %or84, %and76
  %88 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %vc, align 8
  %90 = ptrtoint ptr %.compoundliteral87 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 129, ptr %.compoundliteral87, align 2
  %arrayinit.element89 = getelementptr inbounds i16, ptr %.compoundliteral87, i32 1
  %91 = ptrtoint ptr %arrayinit.element89 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 137, ptr %arrayinit.element89, align 2
  %arrayinit.element90 = getelementptr inbounds i16, ptr %.compoundliteral87, i32 2
  %92 = ptrtoint ptr %arrayinit.element90 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 145, ptr %arrayinit.element90, align 2
  %arrayinit.element91 = getelementptr inbounds i16, ptr %.compoundliteral87, i32 3
  %93 = ptrtoint ptr %arrayinit.element91 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 153, ptr %arrayinit.element91, align 2
  %arrayinit.element92 = getelementptr inbounds i16, ptr %.compoundliteral87, i32 4
  %94 = ptrtoint ptr %arrayinit.element92 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 161, ptr %arrayinit.element92, align 2
  %arrayinit.element93 = getelementptr inbounds i16, ptr %.compoundliteral87, i32 5
  %95 = ptrtoint ptr %arrayinit.element93 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 169, ptr %arrayinit.element93, align 2
  %arrayinit.element94 = getelementptr inbounds i16, ptr %.compoundliteral87, i32 6
  %96 = ptrtoint ptr %arrayinit.element94 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 177, ptr %arrayinit.element94, align 2
  %arrayinit.element95 = getelementptr inbounds i16, ptr %.compoundliteral87, i32 7
  %97 = ptrtoint ptr %arrayinit.element95 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 185, ptr %arrayinit.element95, align 2
  %98 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ch, align 8
  %arrayidx97 = getelementptr [8 x i16], ptr %.compoundliteral87, i32 0, i32 %99
  %100 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %arrayidx97, align 2
  %conv98 = zext i16 %101 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %102 = tail call i32 @llvm.bswap.i32(i32 %or85) #9
  %mmio.i150 = getelementptr inbounds %struct.tw686x_dev, ptr %89, i32 0, i32 7
  %103 = ptrtoint ptr %mmio.i150 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mmio.i150, align 4
  %add.ptr.i151 = getelementptr i32, ptr %104, i32 %conv98
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i151, i32 %102) #9, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then15, %for.body.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end56 ], [ %call11.1, %if.then15 ], [ %call11, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tw686x_set_framerate(ptr nocapture noundef %vc, i32 noundef %fps) unnamed_addr #0 align 64 {
entry:
  %.compoundliteral = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %video_standard = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 11
  %0 = ptrtoint ptr %video_standard to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %video_standard, align 8
  %and = and i64 %1, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 25, i32 30
  %mul.i = mul i32 %fps, 15
  %add.i = add i32 %mul.i, 12
  %div.i = udiv i32 %add.i, %cond
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %cond)
  %tobool.not.i = icmp ult i32 %add.i, %cond
  br i1 %tobool.not.i, label %entry.tw686x_fps_idx.exit_crit_edge, label %if.end.i

entry.tw686x_fps_idx.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw686x_fps_idx.exit

if.end.i:                                         ; preds = %entry
  %2 = add nsw i32 %div.i, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -14, i32 %2)
  %3 = icmp ult i32 %2, -14
  br i1 %3, label %if.end.i.tw686x_real_fps.exit.i_crit_edge, label %cond.false.i.i.i

if.end.i.tw686x_real_fps.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw686x_real_fps.exit.i

cond.false.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr [15 x i32], ptr @fps_map, i32 0, i32 %div.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %sub1.i.i = sub nuw nsw i32 32, %cond
  %shr.i.i = lshr i32 -1, %sub1.i.i
  %and2.i.i = and i32 %5, %shr.i.i
  %call.i.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %and2.i.i) #9
  br label %tw686x_real_fps.exit.i

tw686x_real_fps.exit.i:                           ; preds = %cond.false.i.i.i, %if.end.i.tw686x_real_fps.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %cond, %if.end.i.tw686x_real_fps.exit.i_crit_edge ], [ %call.i.i.i.i, %cond.false.i.i.i ]
  %sub.i = sub i32 %retval.0.i.i, %fps
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp2.i = icmp sgt i32 %sub.i, 1
  %dec.i = sext i1 %cmp2.i to i32
  %idx.0.v.i = select i1 %cmp.i, i32 1, i32 %dec.i
  %idx.0.i = add nsw i32 %idx.0.v.i, %div.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %idx.0.i)
  %cmp6.i = icmp ugt i32 %idx.0.i, 14
  %spec.select = select i1 %cmp6.i, i32 0, i32 %idx.0.i
  br label %tw686x_fps_idx.exit

tw686x_fps_idx.exit:                              ; preds = %tw686x_real_fps.exit.i, %entry.tw686x_fps_idx.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %entry.tw686x_fps_idx.exit_crit_edge ], [ %spec.select, %tw686x_real_fps.exit.i ]
  %6 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vc, align 8
  %8 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 57, ptr %.compoundliteral, align 2
  %arrayinit.element = getelementptr inbounds i16, ptr %.compoundliteral, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 58, ptr %arrayinit.element, align 2
  %arrayinit.element1 = getelementptr inbounds i16, ptr %.compoundliteral, i32 2
  %10 = ptrtoint ptr %arrayinit.element1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 59, ptr %arrayinit.element1, align 2
  %arrayinit.element2 = getelementptr inbounds i16, ptr %.compoundliteral, i32 3
  %11 = ptrtoint ptr %arrayinit.element2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 60, ptr %arrayinit.element2, align 2
  %arrayinit.element3 = getelementptr inbounds i16, ptr %.compoundliteral, i32 4
  %12 = ptrtoint ptr %arrayinit.element3 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 61, ptr %arrayinit.element3, align 2
  %arrayinit.element4 = getelementptr inbounds i16, ptr %.compoundliteral, i32 5
  %13 = ptrtoint ptr %arrayinit.element4 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 62, ptr %arrayinit.element4, align 2
  %arrayinit.element5 = getelementptr inbounds i16, ptr %.compoundliteral, i32 6
  %14 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 63, ptr %arrayinit.element5, align 2
  %arrayinit.element6 = getelementptr inbounds i16, ptr %.compoundliteral, i32 7
  %15 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 64, ptr %arrayinit.element6, align 2
  %ch = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 16
  %16 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ch, align 8
  %arrayidx = getelementptr [8 x i16], ptr %.compoundliteral, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %19 to i32
  %arrayidx7 = getelementptr [15 x i32], ptr @fps_map, i32 0, i32 %retval.0.i
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx7, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #9
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %7, i32 0, i32 7
  %23 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %24, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #9, !srcloc !101
  %25 = ptrtoint ptr %video_standard to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %video_standard, align 8
  %and9 = and i64 %26, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9)
  %tobool10.not = icmp eq i64 %and9, 0
  %cond11 = select i1 %tobool10.not, i32 25, i32 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %27 = icmp eq i32 %retval.0.i, 0
  br i1 %27, label %tw686x_fps_idx.exit.tw686x_real_fps.exit_crit_edge, label %cond.false.i.i

tw686x_fps_idx.exit.tw686x_real_fps.exit_crit_edge: ; preds = %tw686x_fps_idx.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw686x_real_fps.exit

cond.false.i.i:                                   ; preds = %tw686x_fps_idx.exit
  call void @__sanitizer_cov_trace_pc() #11
  %sub1.i = sub nuw nsw i32 32, %cond11
  %shr.i = lshr i32 -1, %sub1.i
  %and2.i = and i32 %shr.i, %21
  %call.i.i.i = tail call i32 @__sw_hweight32(i32 noundef %and2.i) #9
  br label %tw686x_real_fps.exit

tw686x_real_fps.exit:                             ; preds = %cond.false.i.i, %tw686x_fps_idx.exit.tw686x_real_fps.exit_crit_edge
  %retval.0.i21 = phi i32 [ %cond11, %tw686x_fps_idx.exit.tw686x_real_fps.exit_crit_edge ], [ %call.i.i.i, %cond.false.i.i ]
  %fps13 = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 18
  %28 = ptrtoint ptr %fps13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %retval.0.i21, ptr %fps13, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_memcpy_dma_alloc(ptr noundef %vc, i32 noundef %pb) #0 align 64 {
entry:
  %.compoundliteral = alloca [8 x i16], align 2
  %.compoundliteral8 = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pb)
  %tobool.not = icmp eq i32 %pb, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 130, ptr %.compoundliteral, align 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %.compoundliteral8 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 128, ptr %.compoundliteral8, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %.compoundliteral8.sink102 = phi ptr [ %.compoundliteral8, %cond.false ], [ %.compoundliteral, %cond.true ]
  %.sink101 = phi i16 [ 136, %cond.false ], [ 138, %cond.true ]
  %.sink99 = phi i16 [ 144, %cond.false ], [ 146, %cond.true ]
  %.sink97 = phi i16 [ 152, %cond.false ], [ 154, %cond.true ]
  %.sink95 = phi i16 [ 160, %cond.false ], [ 162, %cond.true ]
  %.sink93 = phi i16 [ 168, %cond.false ], [ 170, %cond.true ]
  %.sink91 = phi i16 [ 176, %cond.false ], [ 178, %cond.true ]
  %.sink = phi i16 [ 184, %cond.false ], [ 186, %cond.true ]
  %arrayinit.element10 = getelementptr inbounds i16, ptr %.compoundliteral8.sink102, i32 1
  %4 = ptrtoint ptr %arrayinit.element10 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %.sink101, ptr %arrayinit.element10, align 2
  %arrayinit.element11 = getelementptr inbounds i16, ptr %.compoundliteral8.sink102, i32 2
  %5 = ptrtoint ptr %arrayinit.element11 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %.sink99, ptr %arrayinit.element11, align 2
  %arrayinit.element12 = getelementptr inbounds i16, ptr %.compoundliteral8.sink102, i32 3
  %6 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %.sink97, ptr %arrayinit.element12, align 2
  %arrayinit.element13 = getelementptr inbounds i16, ptr %.compoundliteral8.sink102, i32 4
  %7 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %.sink95, ptr %arrayinit.element13, align 2
  %arrayinit.element14 = getelementptr inbounds i16, ptr %.compoundliteral8.sink102, i32 5
  %8 = ptrtoint ptr %arrayinit.element14 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %.sink93, ptr %arrayinit.element14, align 2
  %arrayinit.element15 = getelementptr inbounds i16, ptr %.compoundliteral8.sink102, i32 6
  %9 = ptrtoint ptr %arrayinit.element15 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %.sink91, ptr %arrayinit.element15, align 2
  %arrayinit.element16 = getelementptr inbounds i16, ptr %.compoundliteral8.sink102, i32 7
  %10 = ptrtoint ptr %arrayinit.element16 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %.sink, ptr %arrayinit.element16, align 2
  %ch17 = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 16
  %11 = ptrtoint ptr %ch17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ch17, align 8
  %arrayidx18 = getelementptr [8 x i16], ptr %.compoundliteral8.sink102, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %13)
  %cond.in = load i16, ptr %arrayidx18, align 2
  %cond = zext i16 %cond.in to i32
  %arrayidx20 = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 5, i32 %pb
  %virt21 = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 5, i32 %pb, i32 1
  %14 = ptrtoint ptr %virt21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt21, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %cond.end.if.end_crit_edge, label %do.end, !prof !104

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 110, i32 noundef 9, ptr noundef nonnull @.str.22) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %cond.end.if.end_crit_edge
  %width = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 12
  %16 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 13
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %mul = mul i32 %19, %17
  %format = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 8
  %20 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %format, align 8
  %depth = getelementptr inbounds %struct.tw686x_format, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %depth, align 4
  %mul42 = mul i32 %mul, %23
  %shr = lshr i32 %mul42, 3
  %pci_dev = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pci_dev, align 4
  %dev43 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev43, i32 noundef %shr, ptr noundef %arrayidx20, i32 noundef 3264, i32 noundef 0) #9
  %tobool46.not = icmp eq ptr %call.i, null
  br i1 %tobool46.not, label %do.end50, label %if.end56

do.end50:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 1, i32 4
  %ch52 = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 16
  %26 = ptrtoint ptr %ch52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ch52, align 8
  %cond54 = select i1 %tobool.not, ptr @.str.26, ptr @.str.25
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name, i32 noundef %27, ptr noundef nonnull %cond54) #12
  br label %cleanup

if.end56:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %size = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 5, i32 %pb, i32 2
  %28 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %shr, ptr %size, align 4
  %29 = ptrtoint ptr %virt21 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %virt21, align 4
  %30 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx20, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #9
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 7
  %33 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %34, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %32) #9, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %do.end50
  %retval.0 = phi i32 [ 0, %if.end56 ], [ -12, %do.end50 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw686x_memcpy_dma_free(ptr nocapture noundef %vc, i32 noundef %pb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 5, i32 %pb
  %0 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc, align 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %pci_dev6 = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %pci_dev6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #9
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end15, label %if.end28

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 90, i32 noundef 9, ptr noundef nonnull @.str.27) #9
  br label %cleanup

if.end28:                                         ; preds = %entry
  %virt = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 5, i32 %pb, i32 1
  %4 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt, align 4
  %tobool29.not = icmp eq ptr %5, null
  br i1 %tobool29.not, label %if.end28.cleanup_crit_edge, label %if.then30

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %pci_dev6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev6, align 4
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %size = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 5, i32 %pb, i32 2
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  tail call void @dma_free_attrs(ptr noundef %dev32, i32 noundef %9, ptr noundef nonnull %5, i32 noundef %11, i32 noundef 0) #9
  %12 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %virt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end28.cleanup_crit_edge, %do.end15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw686x_memcpy_buf_refill(ptr noundef %vc, i32 noundef %pb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vidq_queued = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 2
  %0 = ptrtoint ptr %vidq_queued to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %vidq_queued, align 4
  %cmp.i.not = icmp eq ptr %1, %vidq_queued
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  %.sink = phi ptr [ %add.ptr, %list_del.exit ], [ null, %entry.cleanup_crit_edge ]
  %arrayidx3 = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 4, i32 %pb
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.sink, ptr %arrayidx3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw686x_contig_buf_refill(ptr noundef %vc, i32 noundef %pb) #0 align 64 {
entry:
  %.compoundliteral = alloca [8 x i16], align 2
  %.compoundliteral8 = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vidq_queued = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 2
  %0 = ptrtoint ptr %vidq_queued to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %vidq_queued, align 4
  %cmp.i.not = icmp eq ptr %1, %vidq_queued
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pb)
  %tobool1.not = icmp eq i32 %pb, 0
  br i1 %tobool1.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 130, ptr %.compoundliteral, align 2
  br label %cond.end

cond.false:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %.compoundliteral8 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 128, ptr %.compoundliteral8, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %.compoundliteral8.sink50 = phi ptr [ %.compoundliteral8, %cond.false ], [ %.compoundliteral, %cond.true ]
  %.sink49 = phi i16 [ 136, %cond.false ], [ 138, %cond.true ]
  %.sink47 = phi i16 [ 144, %cond.false ], [ 146, %cond.true ]
  %.sink45 = phi i16 [ 152, %cond.false ], [ 154, %cond.true ]
  %.sink43 = phi i16 [ 160, %cond.false ], [ 162, %cond.true ]
  %.sink41 = phi i16 [ 168, %cond.false ], [ 170, %cond.true ]
  %.sink39 = phi i16 [ 176, %cond.false ], [ 178, %cond.true ]
  %.sink = phi i16 [ 184, %cond.false ], [ 186, %cond.true ]
  %arrayinit.element10 = getelementptr inbounds i16, ptr %.compoundliteral8.sink50, i32 1
  %4 = ptrtoint ptr %arrayinit.element10 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %.sink49, ptr %arrayinit.element10, align 2
  %arrayinit.element11 = getelementptr inbounds i16, ptr %.compoundliteral8.sink50, i32 2
  %5 = ptrtoint ptr %arrayinit.element11 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %.sink47, ptr %arrayinit.element11, align 2
  %arrayinit.element12 = getelementptr inbounds i16, ptr %.compoundliteral8.sink50, i32 3
  %6 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %.sink45, ptr %arrayinit.element12, align 2
  %arrayinit.element13 = getelementptr inbounds i16, ptr %.compoundliteral8.sink50, i32 4
  %7 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %.sink43, ptr %arrayinit.element13, align 2
  %arrayinit.element14 = getelementptr inbounds i16, ptr %.compoundliteral8.sink50, i32 5
  %8 = ptrtoint ptr %arrayinit.element14 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %.sink41, ptr %arrayinit.element14, align 2
  %arrayinit.element15 = getelementptr inbounds i16, ptr %.compoundliteral8.sink50, i32 6
  %9 = ptrtoint ptr %arrayinit.element15 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %.sink39, ptr %arrayinit.element15, align 2
  %arrayinit.element16 = getelementptr inbounds i16, ptr %.compoundliteral8.sink50, i32 7
  %10 = ptrtoint ptr %arrayinit.element16 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %.sink, ptr %arrayinit.element16, align 2
  %ch17 = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 16
  %11 = ptrtoint ptr %ch17 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ch17, align 8
  %arrayidx18 = getelementptr [8 x i16], ptr %.compoundliteral8.sink50, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load2_noabort(i32 %13)
  %cond.in = load i16, ptr %arrayidx18, align 2
  %cond = zext i16 %cond.in to i32
  %add.ptr = getelementptr i8, ptr %1, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %cond.end.list_del.exit_crit_edge

cond.end.list_del.exit_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %cond.end.list_del.exit_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %add.ptr, i32 noundef 0) #9
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call.i, align 4
  %24 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vc, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #9
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %25, i32 0, i32 7
  %27 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %28, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %26) #9, !srcloc !101
  %state = getelementptr i8, ptr %1, i32 -672
  %29 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  %.sink51 = phi ptr [ %add.ptr, %list_del.exit ], [ null, %entry.cleanup_crit_edge ]
  %arrayidx26 = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 4, i32 %pb
  %30 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %.sink51, ptr %arrayidx26, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_sg_setup(ptr nocapture noundef readonly %dev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type.i, align 4
  %and.i = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %and.i18 = and i32 %1, 15
  %and.i20 = shl i32 %1, 11
  %mul = and i32 %and.i20, 30720
  %sg_table_size.0 = select i1 %tobool.not, i32 %mul, i32 2048
  %channels.0 = select i1 %tobool.not, i32 1, i32 %and.i18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channels.0)
  %cmp22.not = icmp eq i32 %channels.0, 0
  br i1 %cmp22.not, label %entry.for.end9_crit_edge, label %for.body.lr.ph

entry.for.end9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end9

for.body.lr.ph:                                   ; preds = %entry
  %video_channels = getelementptr inbounds %struct.tw686x_dev, ptr %dev, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ch.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc8, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %video_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %video_channels, align 4
  %size = getelementptr %struct.tw686x_video_channel, ptr %3, i32 %ch.023, i32 5, i32 0, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sg_table_size.0, ptr %size, align 4
  %size.1 = getelementptr %struct.tw686x_video_channel, ptr %3, i32 %ch.023, i32 5, i32 1, i32 2
  %5 = ptrtoint ptr %size.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sg_table_size.0, ptr %size.1, align 4
  %inc8 = add nuw nsw i32 %ch.023, 1
  %exitcond.not = icmp eq i32 %inc8, %channels.0
  br i1 %exitcond.not, label %for.body.for.end9_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end9

for.end9:                                         ; preds = %for.body.for.end9_crit_edge, %entry.for.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_sg_dma_alloc(ptr noundef %vc, i32 noundef %pb) #0 align 64 {
entry:
  %.compoundliteral = alloca [8 x i16], align 2
  %.compoundliteral9 = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 5, i32 %pb
  %0 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pb)
  %tobool.not = icmp eq i32 %pb, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 9, ptr %.compoundliteral, align 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %.compoundliteral9 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 8, ptr %.compoundliteral9, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %.compoundliteral9.sink73 = phi ptr [ %.compoundliteral9, %cond.false ], [ %.compoundliteral, %cond.true ]
  %.sink72 = phi i16 [ 208, %cond.false ], [ 209, %cond.true ]
  %.sink70 = phi i16 [ 210, %cond.false ], [ 211, %cond.true ]
  %.sink68 = phi i16 [ 212, %cond.false ], [ 213, %cond.true ]
  %.sink66 = phi i16 [ 214, %cond.false ], [ 215, %cond.true ]
  %.sink64 = phi i16 [ 216, %cond.false ], [ 217, %cond.true ]
  %.sink62 = phi i16 [ 218, %cond.false ], [ 219, %cond.true ]
  %.sink = phi i16 [ 220, %cond.false ], [ 221, %cond.true ]
  %arrayinit.element11 = getelementptr inbounds i16, ptr %.compoundliteral9.sink73, i32 1
  %4 = ptrtoint ptr %arrayinit.element11 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %.sink72, ptr %arrayinit.element11, align 2
  %arrayinit.element12 = getelementptr inbounds i16, ptr %.compoundliteral9.sink73, i32 2
  %5 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %.sink70, ptr %arrayinit.element12, align 2
  %arrayinit.element13 = getelementptr inbounds i16, ptr %.compoundliteral9.sink73, i32 3
  %6 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %.sink68, ptr %arrayinit.element13, align 2
  %arrayinit.element14 = getelementptr inbounds i16, ptr %.compoundliteral9.sink73, i32 4
  %7 = ptrtoint ptr %arrayinit.element14 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %.sink66, ptr %arrayinit.element14, align 2
  %arrayinit.element15 = getelementptr inbounds i16, ptr %.compoundliteral9.sink73, i32 5
  %8 = ptrtoint ptr %arrayinit.element15 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %.sink64, ptr %arrayinit.element15, align 2
  %arrayinit.element16 = getelementptr inbounds i16, ptr %.compoundliteral9.sink73, i32 6
  %9 = ptrtoint ptr %arrayinit.element16 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %.sink62, ptr %arrayinit.element16, align 2
  %arrayinit.element17 = getelementptr inbounds i16, ptr %.compoundliteral9.sink73, i32 7
  %10 = ptrtoint ptr %arrayinit.element17 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %.sink, ptr %arrayinit.element17, align 2
  %ch18 = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 16
  %11 = ptrtoint ptr %ch18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ch18, align 8
  %arrayidx19 = getelementptr [8 x i16], ptr %.compoundliteral9.sink73, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %13)
  %cond.in = load i16, ptr %arrayidx19, align 2
  %cond = zext i16 %cond.in to i32
  %size = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 5, i32 %pb, i32 2
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %if.else, label %if.then

if.then:                                          ; preds = %cond.end
  %pci_dev = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pci_dev, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev22, i32 noundef %15, ptr noundef %arrayidx, i32 noundef 3264, i32 noundef 0) #9
  %tobool24.not = icmp eq ptr %call.i, null
  br i1 %tobool24.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 1, i32 4
  %ch26 = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 16
  %18 = ptrtoint ptr %ch26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ch26, align 8
  %cond28 = select i1 %tobool.not, ptr @.str.26, ptr @.str.25
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %name, i32 noundef %19, ptr noundef nonnull %cond28) #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %virt30 = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 5, i32 %pb, i32 1
  %20 = ptrtoint ptr %virt30 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %virt30, align 4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %25, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #9, !srcloc !101
  br label %if.end37

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %video_channels = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %video_channels to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %video_channels, align 4
  %virt35 = getelementptr %struct.tw686x_video_channel, ptr %27, i32 0, i32 5, i32 %pb, i32 1
  %28 = ptrtoint ptr %virt35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %virt35, align 4
  %ch36 = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 16
  %30 = ptrtoint ptr %ch36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ch36, align 8
  %mul = shl i32 %31, 11
  %add.ptr = getelementptr i8, ptr %29, i32 %mul
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.end
  %virt.0 = phi ptr [ %call.i, %if.end ], [ %add.ptr, %if.else ]
  %arrayidx38 = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 6, i32 %pb
  %32 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %virt.0, ptr %arrayidx38, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw686x_sg_dma_free(ptr nocapture noundef %vc, i32 noundef %pb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 5, i32 %pb, i32 2
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 5, i32 %pb
  %2 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vc, align 8
  %pci_dev = getelementptr inbounds %struct.tw686x_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %virt = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 5, i32 %pb, i32 1
  %6 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  tail call void @dma_free_attrs(ptr noundef %dev2, i32 noundef %1, ptr noundef %7, i32 noundef %9, i32 noundef 0) #9
  %10 = ptrtoint ptr %virt to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %virt, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx5 = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 6, i32 %pb
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx5, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw686x_sg_buf_refill(ptr noundef %vc, i32 noundef %pb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vc, align 8
  %vidq_queued = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 2
  %2 = ptrtoint ptr %vidq_queued to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %vidq_queued, align 4
  %cmp.i.not40 = icmp eq ptr %3, %vidq_queued
  br i1 %cmp.i.not40, label %entry.cleanup14_crit_edge, label %while.body.lr.ph

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

while.body.lr.ph:                                 ; preds = %entry
  %width = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 12
  %height = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 13
  %format = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 8
  %arrayidx = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 6, i32 %pb
  %name = getelementptr inbounds %struct.tw686x_dev, ptr %1, i32 0, i32 1, i32 4
  %ch = getelementptr inbounds %struct.tw686x_video_channel, ptr %vc, i32 0, i32 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pb)
  %tobool7.not = icmp eq i32 %pb, 0
  %cond = select i1 %tobool7.not, ptr @.str.26, ptr @.str.25
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  %4 = phi ptr [ %3, %while.body.lr.ph ], [ %43, %do.end.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %4, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %4) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width, align 8
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %17 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %format, align 8
  %depth = getelementptr inbounds %struct.tw686x_format, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %depth, align 4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %call.i.i34 = tail call ptr @vb2_plane_cookie(ptr noundef %add.ptr, i32 noundef 0) #9
  %23 = call ptr @memset(ptr %22, i32 0, i32 2048)
  %nents.i = getelementptr inbounds %struct.sg_table, ptr %call.i.i34, i32 0, i32 1
  %24 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp62.not.i = icmp eq i32 %25, 0
  br i1 %cmp62.not.i, label %list_del.exit.do.end_crit_edge, label %for.body.preheader.i

list_del.exit.do.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.preheader.i:                             ; preds = %list_del.exit
  %mul = mul i32 %16, %14
  %mul3 = mul i32 %mul, %20
  %shr = lshr i32 %mul3, 3
  %26 = ptrtoint ptr %call.i.i34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i.i34, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %buf_len.addr.066.i = phi i32 [ %buf_len.addr.1.lcssa.i, %for.inc.i.for.body.i_crit_edge ], [ %shr, %for.body.preheader.i ]
  %count.065.i = phi i32 [ %count.1.lcssa.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %i.064.i = phi i32 [ %inc16.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %sg.063.i = phi ptr [ %call17.i, %for.inc.i.for.body.i_crit_edge ], [ %27, %for.body.preheader.i ]
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.063.i, i32 0, i32 4
  %28 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not53.i = icmp eq i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len.addr.066.i)
  %tobool1.not54.i = icmp eq i32 %buf_len.addr.066.i, 0
  %or.cond55.i = select i1 %tobool.not53.i, i1 true, i1 %tobool1.not54.i
  br i1 %or.cond55.i, label %for.body.i.cleanup.i_crit_edge, label %while.body.preheader.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

while.body.preheader.i:                           ; preds = %for.body.i
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.063.i, i32 0, i32 3
  %30 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma_address.i, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %while.body.preheader.i
  %buf_len.addr.159.i = phi i32 [ %sub12.i, %if.end.i.while.body.i_crit_edge ], [ %buf_len.addr.066.i, %while.body.preheader.i ]
  %phys.058.i = phi i32 [ %add.i, %if.end.i.while.body.i_crit_edge ], [ %31, %while.body.preheader.i ]
  %count.157.i = phi i32 [ %inc.i, %if.end.i.while.body.i_crit_edge ], [ %count.065.i, %while.body.preheader.i ]
  %len.056.i = phi i32 [ %sub.i, %if.end.i.while.body.i_crit_edge ], [ %29, %while.body.preheader.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %count.157.i)
  %cmp2.i = icmp eq i32 %count.157.i, 256
  br i1 %cmp2.i, label %while.body.i.do.end_crit_edge, label %if.end.i

while.body.i.do.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %while.body.i
  %32 = tail call i32 @llvm.umin.i32(i32 %len.056.i, i32 %buf_len.addr.159.i) #9
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 4096) #9
  %34 = tail call i32 @llvm.bswap.i32(i32 %phys.058.i) #9
  %arrayidx.i = getelementptr %struct.tw686x_sg_desc, ptr %22, i32 %count.157.i
  %phys10.i = getelementptr %struct.tw686x_sg_desc, ptr %22, i32 %count.157.i, i32 1
  %35 = ptrtoint ptr %phys10.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %phys10.i, align 4
  %or.i = or i32 %33, 1073741824
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %inc.i = add i32 %count.157.i, 1
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %arrayidx.i, align 4
  %add.i = add i32 %33, %phys.058.i
  %sub.i = sub i32 %len.056.i, %33
  %sub12.i = sub i32 %buf_len.addr.159.i, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i = icmp eq i32 %sub.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub12.i)
  %tobool1.not.i = icmp eq i32 %sub12.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i, label %if.end.i.cleanup.i_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %count.1.lcssa.i = phi i32 [ %count.065.i, %for.body.i.cleanup.i_crit_edge ], [ %inc.i, %if.end.i.cleanup.i_crit_edge ]
  %buf_len.addr.1.lcssa.i = phi i32 [ %buf_len.addr.066.i, %for.body.i.cleanup.i_crit_edge ], [ %sub12.i, %if.end.i.cleanup.i_crit_edge ]
  %tobool1.not.lcssa.i = phi i1 [ %tobool1.not54.i, %for.body.i.cleanup.i_crit_edge ], [ %tobool1.not.i, %if.end.i.cleanup.i_crit_edge ]
  br i1 %tobool1.not.lcssa.i, label %if.end, label %for.inc.i

for.inc.i:                                        ; preds = %cleanup.i
  %inc16.i = add nuw i32 %i.064.i, 1
  %call17.i = tail call ptr @sg_next(ptr noundef %sg.063.i) #9
  %38 = ptrtoint ptr %nents.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nents.i, align 4
  %cmp.i35 = icmp ult i32 %inc16.i, %39
  br i1 %cmp.i35, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.do.end_crit_edge

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

do.end:                                           ; preds = %for.inc.i.do.end_crit_edge, %while.body.i.do.end_crit_edge, %list_del.exit.do.end_crit_edge
  %40 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ch, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name, i32 noundef %41, ptr noundef nonnull %cond) #12
  tail call void @vb2_buffer_done(ptr noundef %add.ptr, i32 noundef 6) #9
  %42 = ptrtoint ptr %vidq_queued to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %vidq_queued, align 4
  %cmp.i.not = icmp eq ptr %43, %vidq_queued
  br i1 %cmp.i.not, label %do.end.cleanup14_crit_edge, label %do.end.while.body_crit_edge

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.end.cleanup14_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup14

if.end:                                           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr i8, ptr %4, i32 -672
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 4, ptr %state, align 8
  br label %cleanup14

cleanup14:                                        ; preds = %if.end, %do.end.cleanup14_crit_edge, %entry.cleanup14_crit_edge
  %add.ptr.lcssa.sink = phi ptr [ %add.ptr, %if.end ], [ null, %entry.cleanup14_crit_edge ], [ null, %do.end.cleanup14_crit_edge ]
  %arrayidx11 = getelementptr %struct.tw686x_video_channel, ptr %vc, i32 0, i32 4, i32 %pb
  %45 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.lcssa.sink, ptr %arrayidx11, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tw686x_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %width = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %height, align 4
  %mul = mul i32 %5, %3
  %format = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %format, align 8
  %depth = getelementptr inbounds %struct.tw686x_format, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %depth, align 4
  %mul1 = mul i32 %mul, %9
  %shr = lshr i32 %mul1, 3
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %10 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_buffers, align 4
  %12 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbuffers, align 4
  %add = add i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp = icmp ult i32 %add, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub i32 3, %11
  %14 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nplanes, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %16, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end8
    i32 1, label %lor.lhs.false
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %shr)
  %cmp5 = icmp ult i32 %19, %shr
  %spec.select = select i1 %cmp5, i32 -22, i32 0
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr, ptr %sizes, align 4
  %21 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %nplanes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %if.end.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_buf_prepare(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %width = getelementptr inbounds %struct.tw686x_video_channel, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.tw686x_video_channel, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %mul = mul i32 %7, %5
  %format = getelementptr inbounds %struct.tw686x_video_channel, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %format, align 8
  %depth = getelementptr inbounds %struct.tw686x_format, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %depth, align 4
  %mul1 = mul i32 %mul, %11
  %shr = lshr i32 %mul1, 3
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %12 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %mul1)
  %cmp.not = icmp ult i32 %mul1, 8
  br i1 %cmp.not, label %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.cleanup_crit_edge

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit.thread:                       ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %shr)
  %cmp14 = icmp ult i32 %15, %shr
  br i1 %cmp14, label %vb2_plane_size.exit.thread.cleanup_crit_edge, label %if.then.i12

vb2_plane_size.exit.thread.cleanup_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i12:                                      ; preds = %vb2_plane_size.exit.thread
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %shr)
  %cmp1.i = icmp ult i32 %17, %shr
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i12.if.end42.i_crit_edge

if.then.i12.if.end42.i_crit_edge:                 ; preds = %if.then.i12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i12
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !104

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i12.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %19, %if.then38.i ], [ %shr, %if.then.i12.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %20 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %vb2_plane_size.exit.thread.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vb2_set_plane_payload.exit ], [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ -22, %vb2_plane_size.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %pci_dev7 = getelementptr inbounds %struct.tw686x_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %pci_dev7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call4) #9
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.do.body59_crit_edge, label %do.body10

entry.do.body59_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body59

do.body10:                                        ; preds = %entry
  %qlock = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 10
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #9
  %dma_mode = getelementptr inbounds %struct.tw686x_dev, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %dma_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp22 = icmp eq i32 %7, 0
  br i1 %cmp22, label %land.lhs.true, label %do.body10.if.end36_crit_edge

do.body10.if.end36_crit_edge:                     ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true:                                    ; preds = %do.body10
  %virt = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %virt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt, align 4
  %tobool24.not = icmp eq ptr %9, null
  br i1 %tobool24.not, label %land.lhs.true.if.then29_crit_edge, label %lor.lhs.false

land.lhs.true.if.then29_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

lor.lhs.false:                                    ; preds = %land.lhs.true
  %virt27 = getelementptr %struct.tw686x_video_channel, ptr %1, i32 0, i32 5, i32 1, i32 1
  %10 = ptrtoint ptr %virt27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt27, align 4
  %tobool28.not = icmp eq ptr %11, null
  br i1 %tobool28.not, label %lor.lhs.false.if.then29_crit_edge, label %lor.lhs.false.if.end36_crit_edge

lor.lhs.false.if.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

lor.lhs.false.if.then29_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then29

if.then29:                                        ; preds = %lor.lhs.false.if.then29_crit_edge, %land.lhs.true.if.then29_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call17) #9
  %name = getelementptr inbounds %struct.tw686x_dev, ptr %3, i32 0, i32 1, i32 4
  %num = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num, align 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %name, i32 noundef %13) #12
  br label %do.body59

if.end36:                                         ; preds = %lor.lhs.false.if.end36_crit_edge, %do.body10.if.end36_crit_edge
  %dma_ops = getelementptr inbounds %struct.tw686x_dev, ptr %3, i32 0, i32 8
  %14 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_ops, align 4
  %buf_refill = getelementptr inbounds %struct.tw686x_dma_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %buf_refill to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf_refill, align 4
  tail call void %17(ptr noundef %1, i32 noundef 0) #9
  %18 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_ops, align 4
  %buf_refill.1 = getelementptr inbounds %struct.tw686x_dma_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %buf_refill.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %buf_refill.1, align 4
  tail call void %21(ptr noundef %1, i32 noundef 1) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call17) #9
  %sequence = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 20
  %22 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %sequence, align 8
  %pb40 = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 21
  %23 = ptrtoint ptr %pb40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %pb40, align 4
  %call50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %ch = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 16
  %24 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ch, align 8
  tail call void @tw686x_enable_channel(ptr noundef %3, i32 noundef %25) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call50) #9
  %dma_delay_timer = getelementptr inbounds %struct.tw686x_dev, ptr %3, i32 0, i32 14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %26, 10
  %call57 = tail call i32 @mod_timer(ptr noundef %dma_delay_timer, i32 noundef %add) #9
  br label %cleanup

do.body59:                                        ; preds = %if.then29, %entry.do.body59_crit_edge
  %err.0 = phi i32 [ -12, %if.then29 ], [ -19, %entry.do.body59_crit_edge ]
  %qlock65 = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 10
  %call67 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock65) #9
  %vidq_queued.i = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %vidq_queued.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %vidq_queued.i, align 4
  %cmp.i.not19.i = icmp eq ptr %28, %vidq_queued.i
  br i1 %cmp.i.not19.i, label %do.body59.for.cond.preheader.i_crit_edge, label %do.body59.while.body.i_crit_edge

do.body59.while.body.i_crit_edge:                 ; preds = %do.body59
  br label %while.body.i

do.body59.for.cond.preheader.i_crit_edge:         ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %list_del.exit.i.for.cond.preheader.i_crit_edge, %do.body59.for.cond.preheader.i_crit_edge
  %arrayidx.i = getelementptr %struct.tw686x_video_channel, ptr %1, i32 0, i32 4, i32 0
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %30, null
  br i1 %tobool2.not.i, label %for.cond.preheader.i.if.end.i_crit_edge, label %if.then.i

for.cond.preheader.i.if.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %do.body59.while.body.i_crit_edge
  %31 = phi ptr [ %41, %list_del.exit.i.while.body.i_crit_edge ], [ %28, %do.body59.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %31, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %31) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %38 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %31, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef 3) #9
  %40 = ptrtoint ptr %vidq_queued.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile ptr, ptr %vidq_queued.i, align 4
  %cmp.i.not.i = icmp eq ptr %41, %vidq_queued.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.for.cond.preheader.i_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

list_del.exit.i.for.cond.preheader.i_crit_edge:   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

if.then.i:                                        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vb2_buffer_done(ptr noundef nonnull %30, i32 noundef 3) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.cond.preheader.i.if.end.i_crit_edge
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.tw686x_video_channel, ptr %1, i32 0, i32 4, i32 1
  %43 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool2.not.1.i = icmp eq ptr %44, null
  br i1 %tobool2.not.1.i, label %if.end.i.tw686x_clear_queue.exit_crit_edge, label %if.then.1.i

if.end.i.tw686x_clear_queue.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw686x_clear_queue.exit

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vb2_buffer_done(ptr noundef nonnull %44, i32 noundef 3) #9
  br label %tw686x_clear_queue.exit

tw686x_clear_queue.exit:                          ; preds = %if.then.1.i, %if.end.i.tw686x_clear_queue.exit_crit_edge
  %45 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %arrayidx.1.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock65, i32 noundef %call67) #9
  br label %cleanup

cleanup:                                          ; preds = %tw686x_clear_queue.exit, %if.end36
  %retval.0 = phi i32 [ 0, %if.end36 ], [ %err.0, %tw686x_clear_queue.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw686x_stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %pci_dev7 = getelementptr inbounds %struct.tw686x_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %pci_dev7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %call4) #9
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.do.body10_crit_edge, label %if.then

entry.do.body10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ch = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ch, align 8
  tail call void @tw686x_disable_channel(ptr noundef %3, i32 noundef %7) #9
  br label %do.body10

do.body10:                                        ; preds = %if.then, %entry.do.body10_crit_edge
  %qlock = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 10
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #9
  %vidq_queued.i = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %vidq_queued.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %vidq_queued.i, align 4
  %cmp.i.not19.i = icmp eq ptr %9, %vidq_queued.i
  br i1 %cmp.i.not19.i, label %do.body10.for.cond.preheader.i_crit_edge, label %do.body10.while.body.i_crit_edge

do.body10.while.body.i_crit_edge:                 ; preds = %do.body10
  br label %while.body.i

do.body10.for.cond.preheader.i_crit_edge:         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %list_del.exit.i.for.cond.preheader.i_crit_edge, %do.body10.for.cond.preheader.i_crit_edge
  %arrayidx.i = getelementptr %struct.tw686x_video_channel, ptr %1, i32 0, i32 4, i32 0
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %for.cond.preheader.i.if.end.i_crit_edge, label %if.then.i

for.cond.preheader.i.if.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %do.body10.while.body.i_crit_edge
  %12 = phi ptr [ %22, %list_del.exit.i.while.body.i_crit_edge ], [ %9, %do.body10.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %12, i32 -736
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %12) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef 6) #9
  %21 = ptrtoint ptr %vidq_queued.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %vidq_queued.i, align 4
  %cmp.i.not.i = icmp eq ptr %22, %vidq_queued.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.for.cond.preheader.i_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

list_del.exit.i.for.cond.preheader.i_crit_edge:   ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i

if.then.i:                                        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vb2_buffer_done(ptr noundef nonnull %11, i32 noundef 6) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.cond.preheader.i.if.end.i_crit_edge
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx.i, align 4
  %arrayidx.1.i = getelementptr %struct.tw686x_video_channel, ptr %1, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool2.not.1.i = icmp eq ptr %25, null
  br i1 %tobool2.not.1.i, label %if.end.i.tw686x_clear_queue.exit_crit_edge, label %if.then.1.i

if.end.i.tw686x_clear_queue.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw686x_clear_queue.exit

if.then.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vb2_buffer_done(ptr noundef nonnull %25, i32 noundef 6) #9
  br label %tw686x_clear_queue.exit

tw686x_clear_queue.exit:                          ; preds = %if.then.1.i, %if.end.i.tw686x_clear_queue.exit_crit_edge
  %26 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %arrayidx.1.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call17) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tw686x_buf_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #9
  %pci_dev11 = getelementptr inbounds %struct.tw686x_dev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %pci_dev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev11, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call8) #9
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %do.body15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vb2_buffer_done(ptr noundef %vb, i32 noundef 6) #9
  br label %cleanup

do.body15:                                        ; preds = %entry
  %qlock = getelementptr inbounds %struct.tw686x_video_channel, ptr %3, i32 0, i32 10
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qlock) #9
  %list = getelementptr inbounds %struct.tw686x_v4l2_buf, ptr %vb, i32 0, i32 1
  %vidq_queued = getelementptr inbounds %struct.tw686x_video_channel, ptr %3, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.tw686x_video_channel, ptr %3, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %9, ptr noundef %vidq_queued) #9
  br i1 %call.i.i, label %if.end.i.i, label %do.body15.list_add_tail.exit_crit_edge

do.body15.list_add_tail.exit_crit_edge:           ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vidq_queued, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.tw686x_v4l2_buf, ptr %vb, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body15.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qlock, i32 noundef %call22) #9
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tw686x_enable_channel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tw686x_disable_channel(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  %.compoundliteral = alloca [8 x i16], align 2
  %.compoundliteral10 = alloca [8 x i16], align 2
  %.compoundliteral23 = alloca [8 x i16], align 2
  %.compoundliteral35 = alloca [8 x i16], align 2
  %.compoundliteral48 = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -568
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %ch2 = getelementptr i8, ptr %1, i32 352
  %4 = ptrtoint ptr %ch2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ch2, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb9
    i32 9963778, label %sw.bb22
    i32 9963779, label %sw.bb47
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 257, ptr %.compoundliteral, align 2
  %arrayinit.element = getelementptr inbounds i16, ptr %.compoundliteral, i32 1
  %10 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 273, ptr %arrayinit.element, align 2
  %arrayinit.element3 = getelementptr inbounds i16, ptr %.compoundliteral, i32 2
  %11 = ptrtoint ptr %arrayinit.element3 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 289, ptr %arrayinit.element3, align 2
  %arrayinit.element4 = getelementptr inbounds i16, ptr %.compoundliteral, i32 3
  %12 = ptrtoint ptr %arrayinit.element4 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 305, ptr %arrayinit.element4, align 2
  %arrayinit.element5 = getelementptr inbounds i16, ptr %.compoundliteral, i32 4
  %13 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 513, ptr %arrayinit.element5, align 2
  %arrayinit.element6 = getelementptr inbounds i16, ptr %.compoundliteral, i32 5
  %14 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 529, ptr %arrayinit.element6, align 2
  %arrayinit.element7 = getelementptr inbounds i16, ptr %.compoundliteral, i32 6
  %15 = ptrtoint ptr %arrayinit.element7 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 545, ptr %arrayinit.element7, align 2
  %arrayinit.element8 = getelementptr inbounds i16, ptr %.compoundliteral, i32 7
  %16 = ptrtoint ptr %arrayinit.element8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 561, ptr %arrayinit.element8, align 2
  %arrayidx = getelementptr [8 x i16], ptr %.compoundliteral, i32 0, i32 %5
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %18 to i32
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %and = shl i32 %20, 24
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %3, i32 0, i32 7
  %21 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %22, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %and) #9, !srcloc !101
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %.compoundliteral10 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 258, ptr %.compoundliteral10, align 2
  %arrayinit.element12 = getelementptr inbounds i16, ptr %.compoundliteral10, i32 1
  %24 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 274, ptr %arrayinit.element12, align 2
  %arrayinit.element13 = getelementptr inbounds i16, ptr %.compoundliteral10, i32 2
  %25 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 290, ptr %arrayinit.element13, align 2
  %arrayinit.element14 = getelementptr inbounds i16, ptr %.compoundliteral10, i32 3
  %26 = ptrtoint ptr %arrayinit.element14 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 306, ptr %arrayinit.element14, align 2
  %arrayinit.element15 = getelementptr inbounds i16, ptr %.compoundliteral10, i32 4
  %27 = ptrtoint ptr %arrayinit.element15 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 514, ptr %arrayinit.element15, align 2
  %arrayinit.element16 = getelementptr inbounds i16, ptr %.compoundliteral10, i32 5
  %28 = ptrtoint ptr %arrayinit.element16 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 530, ptr %arrayinit.element16, align 2
  %arrayinit.element17 = getelementptr inbounds i16, ptr %.compoundliteral10, i32 6
  %29 = ptrtoint ptr %arrayinit.element17 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 546, ptr %arrayinit.element17, align 2
  %arrayinit.element18 = getelementptr inbounds i16, ptr %.compoundliteral10, i32 7
  %30 = ptrtoint ptr %arrayinit.element18 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 562, ptr %arrayinit.element18, align 2
  %arrayidx19 = getelementptr [8 x i16], ptr %.compoundliteral10, i32 0, i32 %5
  %31 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx19, align 2
  %conv20 = zext i16 %32 to i32
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %33 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val21, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  %mmio.i78 = getelementptr inbounds %struct.tw686x_dev, ptr %3, i32 0, i32 7
  %36 = ptrtoint ptr %mmio.i78 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mmio.i78, align 4
  %add.ptr.i79 = getelementptr i32, ptr %37, i32 %conv20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %35) #9, !srcloc !101
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %.compoundliteral23 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 260, ptr %.compoundliteral23, align 2
  %arrayinit.element25 = getelementptr inbounds i16, ptr %.compoundliteral23, i32 1
  %39 = ptrtoint ptr %arrayinit.element25 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 276, ptr %arrayinit.element25, align 2
  %arrayinit.element26 = getelementptr inbounds i16, ptr %.compoundliteral23, i32 2
  %40 = ptrtoint ptr %arrayinit.element26 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 292, ptr %arrayinit.element26, align 2
  %arrayinit.element27 = getelementptr inbounds i16, ptr %.compoundliteral23, i32 3
  %41 = ptrtoint ptr %arrayinit.element27 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 308, ptr %arrayinit.element27, align 2
  %arrayinit.element28 = getelementptr inbounds i16, ptr %.compoundliteral23, i32 4
  %42 = ptrtoint ptr %arrayinit.element28 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 516, ptr %arrayinit.element28, align 2
  %arrayinit.element29 = getelementptr inbounds i16, ptr %.compoundliteral23, i32 5
  %43 = ptrtoint ptr %arrayinit.element29 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 532, ptr %arrayinit.element29, align 2
  %arrayinit.element30 = getelementptr inbounds i16, ptr %.compoundliteral23, i32 6
  %44 = ptrtoint ptr %arrayinit.element30 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 548, ptr %arrayinit.element30, align 2
  %arrayinit.element31 = getelementptr inbounds i16, ptr %.compoundliteral23, i32 7
  %45 = ptrtoint ptr %arrayinit.element31 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 564, ptr %arrayinit.element31, align 2
  %arrayidx32 = getelementptr [8 x i16], ptr %.compoundliteral23, i32 0, i32 %5
  %46 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx32, align 2
  %conv33 = zext i16 %47 to i32
  %val34 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %48 = ptrtoint ptr %val34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val34, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #9
  %mmio.i80 = getelementptr inbounds %struct.tw686x_dev, ptr %3, i32 0, i32 7
  %51 = ptrtoint ptr %mmio.i80 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mmio.i80, align 4
  %add.ptr.i81 = getelementptr i32, ptr %52, i32 %conv33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81, i32 %50) #9, !srcloc !101
  %53 = ptrtoint ptr %.compoundliteral35 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 261, ptr %.compoundliteral35, align 2
  %arrayinit.element37 = getelementptr inbounds i16, ptr %.compoundliteral35, i32 1
  %54 = ptrtoint ptr %arrayinit.element37 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 277, ptr %arrayinit.element37, align 2
  %arrayinit.element38 = getelementptr inbounds i16, ptr %.compoundliteral35, i32 2
  %55 = ptrtoint ptr %arrayinit.element38 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 293, ptr %arrayinit.element38, align 2
  %arrayinit.element39 = getelementptr inbounds i16, ptr %.compoundliteral35, i32 3
  %56 = ptrtoint ptr %arrayinit.element39 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 309, ptr %arrayinit.element39, align 2
  %arrayinit.element40 = getelementptr inbounds i16, ptr %.compoundliteral35, i32 4
  %57 = ptrtoint ptr %arrayinit.element40 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 517, ptr %arrayinit.element40, align 2
  %arrayinit.element41 = getelementptr inbounds i16, ptr %.compoundliteral35, i32 5
  %58 = ptrtoint ptr %arrayinit.element41 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 533, ptr %arrayinit.element41, align 2
  %arrayinit.element42 = getelementptr inbounds i16, ptr %.compoundliteral35, i32 6
  %59 = ptrtoint ptr %arrayinit.element42 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 549, ptr %arrayinit.element42, align 2
  %arrayinit.element43 = getelementptr inbounds i16, ptr %.compoundliteral35, i32 7
  %60 = ptrtoint ptr %arrayinit.element43 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 565, ptr %arrayinit.element43, align 2
  %arrayidx44 = getelementptr [8 x i16], ptr %.compoundliteral35, i32 0, i32 %5
  %61 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx44, align 2
  %conv45 = zext i16 %62 to i32
  %63 = ptrtoint ptr %val34 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val34, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #9
  %66 = ptrtoint ptr %mmio.i80 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mmio.i80, align 4
  %add.ptr.i83 = getelementptr i32, ptr %67, i32 %conv45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %65) #9, !srcloc !101
  br label %cleanup

sw.bb47:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %.compoundliteral48 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 262, ptr %.compoundliteral48, align 2
  %arrayinit.element50 = getelementptr inbounds i16, ptr %.compoundliteral48, i32 1
  %69 = ptrtoint ptr %arrayinit.element50 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 278, ptr %arrayinit.element50, align 2
  %arrayinit.element51 = getelementptr inbounds i16, ptr %.compoundliteral48, i32 2
  %70 = ptrtoint ptr %arrayinit.element51 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 294, ptr %arrayinit.element51, align 2
  %arrayinit.element52 = getelementptr inbounds i16, ptr %.compoundliteral48, i32 3
  %71 = ptrtoint ptr %arrayinit.element52 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 310, ptr %arrayinit.element52, align 2
  %arrayinit.element53 = getelementptr inbounds i16, ptr %.compoundliteral48, i32 4
  %72 = ptrtoint ptr %arrayinit.element53 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 518, ptr %arrayinit.element53, align 2
  %arrayinit.element54 = getelementptr inbounds i16, ptr %.compoundliteral48, i32 5
  %73 = ptrtoint ptr %arrayinit.element54 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 534, ptr %arrayinit.element54, align 2
  %arrayinit.element55 = getelementptr inbounds i16, ptr %.compoundliteral48, i32 6
  %74 = ptrtoint ptr %arrayinit.element55 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 550, ptr %arrayinit.element55, align 2
  %arrayinit.element56 = getelementptr inbounds i16, ptr %.compoundliteral48, i32 7
  %75 = ptrtoint ptr %arrayinit.element56 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 566, ptr %arrayinit.element56, align 2
  %arrayidx57 = getelementptr [8 x i16], ptr %.compoundliteral48, i32 0, i32 %5
  %76 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %arrayidx57, align 2
  %conv58 = zext i16 %77 to i32
  %val59 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %78 = ptrtoint ptr %val59 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val59, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %and60 = shl i32 %79, 24
  %mmio.i84 = getelementptr inbounds %struct.tw686x_dev, ptr %3, i32 0, i32 7
  %80 = ptrtoint ptr %mmio.i84 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mmio.i84, align 4
  %add.ptr.i85 = getelementptr i32, ptr %81, i32 %conv58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 %and60) #9, !srcloc !101
  br label %cleanup

cleanup:                                          ; preds = %sw.bb47, %sw.bb22, %sw.bb9, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb47 ], [ 0, %sw.bb22 ], [ 0, %sw.bb9 ], [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call2 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.34, i32 noundef 16) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name = getelementptr inbounds %struct.tw686x_dev, ptr %3, i32 0, i32 3
  %call5 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #9
  %pci_dev = getelementptr inbounds %struct.tw686x_dev, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.35, ptr noundef %retval.0.i.i)
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tw686x_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %fourcc = getelementptr [3 x %struct.tw686x_format], ptr @formats, i32 0, i32 %1, i32 1
  %2 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fourcc, align 4
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
define internal i32 @tw686x_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %width = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %6 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %height, align 4
  %height4 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %height4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %height4, align 4
  %dma_ops = getelementptr inbounds %struct.tw686x_dev, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dma_ops, align 4
  %field = getelementptr inbounds %struct.tw686x_dma_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %field, align 4
  %field6 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %field6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %field6, align 4
  %format = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %format, align 8
  %fourcc = getelementptr inbounds %struct.tw686x_format, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %19 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %pixelformat, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %colorspace, align 4
  %21 = load ptr, ptr %format, align 8
  %depth = getelementptr inbounds %struct.tw686x_format, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %depth, align 4
  %mul = mul i32 %23, %5
  %div32 = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div32, ptr %bytesperline, align 4
  %mul17 = mul i32 %div32, %8
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %25 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul17, ptr %sizeimage, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %num_buffers.i = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 1, i32 21
  %2 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %width = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %video_standard.i = getelementptr inbounds %struct.tw686x_video_channel, ptr %9, i32 0, i32 11
  %12 = ptrtoint ptr %video_standard.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %video_standard.i, align 8
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %14 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixelformat.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %15, label %if.end.if.then.i_crit_edge [
    i32 1498831189, label %if.end.format_by_fourcc.exit.i_crit_edge
    i32 1346520914, label %if.then.fold.split.i.i
    i32 1448695129, label %if.then.fold.split10.i.i
  ]

if.end.format_by_fourcc.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %format_by_fourcc.exit.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.fold.split.i.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %format_by_fourcc.exit.i

if.then.fold.split10.i.i:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %format_by_fourcc.exit.i

format_by_fourcc.exit.i:                          ; preds = %if.then.fold.split10.i.i, %if.then.fold.split.i.i, %if.end.format_by_fourcc.exit.i_crit_edge
  %cnt.08.lcssa.i.i = phi i32 [ 0, %if.end.format_by_fourcc.exit.i_crit_edge ], [ 1, %if.then.fold.split.i.i ], [ 2, %if.then.fold.split10.i.i ]
  %arrayidx.i.i = getelementptr [3 x %struct.tw686x_format], ptr @formats, i32 0, i32 %cnt.08.lcssa.i.i
  %tobool3.not.i = icmp eq ptr %arrayidx.i.i, null
  br i1 %tobool3.not.i, label %format_by_fourcc.exit.i.if.then.i_crit_edge, label %format_by_fourcc.exit.i.tw686x_try_fmt_vid_cap.exit_crit_edge

format_by_fourcc.exit.i.tw686x_try_fmt_vid_cap.exit_crit_edge: ; preds = %format_by_fourcc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tw686x_try_fmt_vid_cap.exit

format_by_fourcc.exit.i.if.then.i_crit_edge:      ; preds = %format_by_fourcc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %format_by_fourcc.exit.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %17 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1498831189, ptr %pixelformat.i, align 4
  br label %tw686x_try_fmt_vid_cap.exit

tw686x_try_fmt_vid_cap.exit:                      ; preds = %if.then.i, %format_by_fourcc.exit.i.tw686x_try_fmt_vid_cap.exit_crit_edge
  %format.0.i = phi ptr [ %arrayidx.i.i, %format_by_fourcc.exit.i.tw686x_try_fmt_vid_cap.exit_crit_edge ], [ @formats, %if.then.i ]
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %and.i = and i64 %13, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 576, i32 480
  %18 = ptrtoint ptr %fmt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fmt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 360, i32 %19)
  %cmp.inv.i = icmp ugt i32 %19, 360
  %..i = select i1 %cmp.inv.i, i32 720, i32 360
  %20 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %..i, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %height.i, align 4
  %div55.i = lshr exact i32 %cond.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %div55.i)
  %cmp14.not.i = icmp ugt i32 %22, %div55.i
  %storemerge56.i = select i1 %cmp14.not.i, i32 %cond.i, i32 %div55.i
  %23 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge56.i, ptr %height.i, align 4
  %depth.i = getelementptr inbounds %struct.tw686x_format, ptr %format.0.i, i32 0, i32 2
  %24 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %depth.i, align 4
  %mul.i = mul i32 %25, %..i
  %div2557.i = lshr exact i32 %mul.i, 3
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %26 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div2557.i, ptr %bytesperline.i, align 4
  %mul31.i = mul i32 %div2557.i, %storemerge56.i
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %27 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul31.i, ptr %sizeimage.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %colorspace.i, align 4
  %dma_ops.i = getelementptr inbounds %struct.tw686x_dev, ptr %11, i32 0, i32 8
  %29 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dma_ops.i, align 4
  %field.i = getelementptr inbounds %struct.tw686x_dma_ops, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %field.i, align 4
  %field35.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %33 = ptrtoint ptr %field35.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %field35.i, align 4
  %mul = mul i32 %7, %5
  %mul8 = mul nuw nsw i32 %storemerge56.i, %..i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mul8)
  %cmp = icmp ne i32 %mul, %mul8
  %34 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pixelformat.i, align 4
  %call15 = tail call fastcc i32 @tw686x_set_format(ptr noundef %1, i32 noundef %35, i32 noundef %..i, i32 noundef %storemerge56.i, i1 noundef zeroext %cmp)
  br label %cleanup

cleanup:                                          ; preds = %tw686x_try_fmt_vid_cap.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %tw686x_try_fmt_vid_cap.exit ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %video_standard = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %video_standard to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %video_standard, align 8
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixelformat, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %7, label %entry.if.then_crit_edge [
    i32 1498831189, label %entry.format_by_fourcc.exit_crit_edge
    i32 1346520914, label %if.then.fold.split.i
    i32 1448695129, label %if.then.fold.split10.i
  ]

entry.format_by_fourcc.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %format_by_fourcc.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %format_by_fourcc.exit

if.then.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %format_by_fourcc.exit

format_by_fourcc.exit:                            ; preds = %if.then.fold.split10.i, %if.then.fold.split.i, %entry.format_by_fourcc.exit_crit_edge
  %cnt.08.lcssa.i = phi i32 [ 0, %entry.format_by_fourcc.exit_crit_edge ], [ 1, %if.then.fold.split.i ], [ 2, %if.then.fold.split10.i ]
  %arrayidx.i = getelementptr [3 x %struct.tw686x_format], ptr @formats, i32 0, i32 %cnt.08.lcssa.i
  %tobool3.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool3.not, label %format_by_fourcc.exit.if.then_crit_edge, label %format_by_fourcc.exit.if.end_crit_edge

format_by_fourcc.exit.if.end_crit_edge:           ; preds = %format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

format_by_fourcc.exit.if.then_crit_edge:          ; preds = %format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %format_by_fourcc.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1498831189, ptr %pixelformat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %format_by_fourcc.exit.if.end_crit_edge
  %format.0 = phi ptr [ %arrayidx.i, %format_by_fourcc.exit.if.end_crit_edge ], [ @formats, %if.then ]
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %and = and i64 %5, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 576, i32 480
  %10 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 360, i32 %11)
  %cmp.inv = icmp ugt i32 %11, 360
  %. = select i1 %cmp.inv, i32 720, i32 360
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %., ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 4
  %div55 = lshr exact i32 %cond, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %div55)
  %cmp14.not = icmp ugt i32 %14, %div55
  %storemerge56 = select i1 %cmp14.not, i32 %cond, i32 %div55
  %15 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge56, ptr %height, align 4
  %depth = getelementptr inbounds %struct.tw686x_format, ptr %format.0, i32 0, i32 2
  %16 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %depth, align 4
  %mul = mul i32 %17, %.
  %div2557 = lshr exact i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div2557, ptr %bytesperline, align 4
  %mul31 = mul i32 %div2557, %storemerge56
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %19 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %mul31, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %20 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %colorspace, align 4
  %dma_ops = getelementptr inbounds %struct.tw686x_dev, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %dma_ops to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma_ops, align 4
  %field = getelementptr inbounds %struct.tw686x_dma_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %field, align 4
  %field35 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %field35 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %field35, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %video_standard = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %video_standard to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %video_standard, align 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %id, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %id) #0 align 64 {
entry:
  %f = alloca %struct.v4l2_format, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %f) #9
  %2 = call ptr @memset(ptr %f, i32 255, i32 204)
  %video_standard = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %video_standard to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %video_standard, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %id)
  %cmp = icmp eq i64 %4, %id
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_buffers.i = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 1, i32 21
  %5 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i.not = icmp eq i32 %6, 0
  br i1 %cmp.i.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call fastcc i32 @tw686x_set_standard(ptr noundef %1, i64 noundef %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  %width.i = getelementptr inbounds %struct.tw686x_video_channel, ptr %8, i32 0, i32 12
  %11 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width.i, align 8
  %fmt.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %13 = ptrtoint ptr %fmt.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %fmt.i, align 4
  %height.i = getelementptr inbounds %struct.tw686x_video_channel, ptr %8, i32 0, i32 13
  %14 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height.i, align 4
  %height4.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %height4.i, align 4
  %dma_ops.i = getelementptr inbounds %struct.tw686x_dev, ptr %10, i32 0, i32 8
  %17 = ptrtoint ptr %dma_ops.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dma_ops.i, align 4
  %field.i = getelementptr inbounds %struct.tw686x_dma_ops, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %field.i, align 4
  %field6.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %21 = ptrtoint ptr %field6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %field6.i, align 4
  %format.i = getelementptr inbounds %struct.tw686x_video_channel, ptr %8, i32 0, i32 8
  %22 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %format.i, align 8
  %fourcc.i = getelementptr inbounds %struct.tw686x_format, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %fourcc.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %26 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %pixelformat.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %27 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %colorspace.i, align 4
  %depth.i = getelementptr inbounds %struct.tw686x_format, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %depth.i, align 4
  %mul.i = mul i32 %29, %12
  %div32.i = lshr i32 %mul.i, 3
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %30 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div32.i, ptr %bytesperline.i, align 4
  %mul17.i = mul i32 %div32.i, %15
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %31 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul17.i, ptr %sizeimage.i, align 4
  %call8 = call i32 @tw686x_s_fmt_vid_cap(ptr noundef %file, ptr noundef %priv, ptr noundef nonnull %f)
  %fps = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 18
  %32 = ptrtoint ptr %fps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fps, align 8
  tail call fastcc void @tw686x_set_framerate(ptr noundef %1, i32 noundef %33)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ 0, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %f) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_querystd(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %std) #0 align 64 {
entry:
  %.compoundliteral = alloca [8 x i16], align 2
  %.compoundliteral10 = alloca [8 x i16], align 2
  %.compoundliteral22 = alloca [8 x i16], align 2
  %.compoundliteral36 = alloca [8 x i16], align 2
  %.compoundliteral51 = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %streaming.i = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 1, i32 28
  %2 = ptrtoint ptr %streaming.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %streaming.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %5 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 270, ptr %.compoundliteral, align 2
  %arrayinit.element = getelementptr inbounds i16, ptr %.compoundliteral, i32 1
  %6 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 286, ptr %arrayinit.element, align 2
  %arrayinit.element3 = getelementptr inbounds i16, ptr %.compoundliteral, i32 2
  %7 = ptrtoint ptr %arrayinit.element3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 302, ptr %arrayinit.element3, align 2
  %arrayinit.element4 = getelementptr inbounds i16, ptr %.compoundliteral, i32 3
  %8 = ptrtoint ptr %arrayinit.element4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 318, ptr %arrayinit.element4, align 2
  %arrayinit.element5 = getelementptr inbounds i16, ptr %.compoundliteral, i32 4
  %9 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 526, ptr %arrayinit.element5, align 2
  %arrayinit.element6 = getelementptr inbounds i16, ptr %.compoundliteral, i32 5
  %10 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 542, ptr %arrayinit.element6, align 2
  %arrayinit.element7 = getelementptr inbounds i16, ptr %.compoundliteral, i32 6
  %11 = ptrtoint ptr %arrayinit.element7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 558, ptr %arrayinit.element7, align 2
  %arrayinit.element8 = getelementptr inbounds i16, ptr %.compoundliteral, i32 7
  %12 = ptrtoint ptr %arrayinit.element8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 574, ptr %arrayinit.element8, align 2
  %ch = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ch, align 8
  %arrayidx = getelementptr [8 x i16], ptr %.compoundliteral, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %16 to i32
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %4, i32 0, i32 7
  %17 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %18, i32 %conv
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %20 = ptrtoint ptr %.compoundliteral10 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 270, ptr %.compoundliteral10, align 2
  %arrayinit.element12 = getelementptr inbounds i16, ptr %.compoundliteral10, i32 1
  %21 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 286, ptr %arrayinit.element12, align 2
  %arrayinit.element13 = getelementptr inbounds i16, ptr %.compoundliteral10, i32 2
  %22 = ptrtoint ptr %arrayinit.element13 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 302, ptr %arrayinit.element13, align 2
  %arrayinit.element14 = getelementptr inbounds i16, ptr %.compoundliteral10, i32 3
  %23 = ptrtoint ptr %arrayinit.element14 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 318, ptr %arrayinit.element14, align 2
  %arrayinit.element15 = getelementptr inbounds i16, ptr %.compoundliteral10, i32 4
  %24 = ptrtoint ptr %arrayinit.element15 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 526, ptr %arrayinit.element15, align 2
  %arrayinit.element16 = getelementptr inbounds i16, ptr %.compoundliteral10, i32 5
  %25 = ptrtoint ptr %arrayinit.element16 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 542, ptr %arrayinit.element16, align 2
  %arrayinit.element17 = getelementptr inbounds i16, ptr %.compoundliteral10, i32 6
  %26 = ptrtoint ptr %arrayinit.element17 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 558, ptr %arrayinit.element17, align 2
  %arrayinit.element18 = getelementptr inbounds i16, ptr %.compoundliteral10, i32 7
  %27 = ptrtoint ptr %arrayinit.element18 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 574, ptr %arrayinit.element18, align 2
  %28 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ch, align 8
  %arrayidx20 = getelementptr [8 x i16], ptr %.compoundliteral10, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx20, align 2
  %conv21 = zext i16 %31 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %32 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i106 = getelementptr i32, ptr %33, i32 %conv21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 117440512) #9, !srcloc !101
  %34 = ptrtoint ptr %.compoundliteral22 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 271, ptr %.compoundliteral22, align 2
  %arrayinit.element24 = getelementptr inbounds i16, ptr %.compoundliteral22, i32 1
  %35 = ptrtoint ptr %arrayinit.element24 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 287, ptr %arrayinit.element24, align 2
  %arrayinit.element25 = getelementptr inbounds i16, ptr %.compoundliteral22, i32 2
  %36 = ptrtoint ptr %arrayinit.element25 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 303, ptr %arrayinit.element25, align 2
  %arrayinit.element26 = getelementptr inbounds i16, ptr %.compoundliteral22, i32 3
  %37 = ptrtoint ptr %arrayinit.element26 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 319, ptr %arrayinit.element26, align 2
  %arrayinit.element27 = getelementptr inbounds i16, ptr %.compoundliteral22, i32 4
  %38 = ptrtoint ptr %arrayinit.element27 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 527, ptr %arrayinit.element27, align 2
  %arrayinit.element28 = getelementptr inbounds i16, ptr %.compoundliteral22, i32 5
  %39 = ptrtoint ptr %arrayinit.element28 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 543, ptr %arrayinit.element28, align 2
  %arrayinit.element29 = getelementptr inbounds i16, ptr %.compoundliteral22, i32 6
  %40 = ptrtoint ptr %arrayinit.element29 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 559, ptr %arrayinit.element29, align 2
  %arrayinit.element30 = getelementptr inbounds i16, ptr %.compoundliteral22, i32 7
  %41 = ptrtoint ptr %arrayinit.element30 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 575, ptr %arrayinit.element30, align 2
  %42 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ch, align 8
  %arrayidx32 = getelementptr [8 x i16], ptr %.compoundliteral22, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx32, align 2
  %conv33 = zext i16 %45 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %46 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i108 = getelementptr i32, ptr %47, i32 %conv33
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 -16777216) #9, !srcloc !101
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -50, %48
  %49 = load volatile i32, ptr @jiffies, align 128
  %sub113 = add i32 %add.neg, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub113)
  %cmp114 = icmp slt i32 %sub113, 0
  br i1 %cmp114, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %arrayinit.element38 = getelementptr inbounds i16, ptr %.compoundliteral36, i32 1
  %arrayinit.element39 = getelementptr inbounds i16, ptr %.compoundliteral36, i32 2
  %arrayinit.element40 = getelementptr inbounds i16, ptr %.compoundliteral36, i32 3
  %arrayinit.element41 = getelementptr inbounds i16, ptr %.compoundliteral36, i32 4
  %arrayinit.element42 = getelementptr inbounds i16, ptr %.compoundliteral36, i32 5
  %arrayinit.element43 = getelementptr inbounds i16, ptr %.compoundliteral36, i32 6
  %arrayinit.element44 = getelementptr inbounds i16, ptr %.compoundliteral36, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end50.while.body_crit_edge, %while.body.lr.ph
  %50 = ptrtoint ptr %.compoundliteral36 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 270, ptr %.compoundliteral36, align 2
  %51 = ptrtoint ptr %arrayinit.element38 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 286, ptr %arrayinit.element38, align 2
  %52 = ptrtoint ptr %arrayinit.element39 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 302, ptr %arrayinit.element39, align 2
  %53 = ptrtoint ptr %arrayinit.element40 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 318, ptr %arrayinit.element40, align 2
  %54 = ptrtoint ptr %arrayinit.element41 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 526, ptr %arrayinit.element41, align 2
  %55 = ptrtoint ptr %arrayinit.element42 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 542, ptr %arrayinit.element42, align 2
  %56 = ptrtoint ptr %arrayinit.element43 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 558, ptr %arrayinit.element43, align 2
  %57 = ptrtoint ptr %arrayinit.element44 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 574, ptr %arrayinit.element44, align 2
  %58 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ch, align 8
  %arrayidx46 = getelementptr [8 x i16], ptr %.compoundliteral36, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx46, align 2
  %conv47 = zext i16 %61 to i32
  %62 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i110 = getelementptr i32, ptr %63, i32 %conv47
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i110) #9, !srcloc !102
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %and = and i32 %65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end50

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end50:                                         ; preds = %while.body
  tail call void @msleep(i32 noundef 100) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %66
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end50.while.body_crit_edge, label %if.end50.while.end_crit_edge

if.end50.while.end_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end50.while.body_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end50.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %detected_std.1 = phi i32 [ 0, %if.end.while.end_crit_edge ], [ %65, %while.body.while.end_crit_edge ], [ %65, %if.end50.while.end_crit_edge ]
  %67 = ptrtoint ptr %.compoundliteral51 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 270, ptr %.compoundliteral51, align 2
  %arrayinit.element53 = getelementptr inbounds i16, ptr %.compoundliteral51, i32 1
  %68 = ptrtoint ptr %arrayinit.element53 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 286, ptr %arrayinit.element53, align 2
  %arrayinit.element54 = getelementptr inbounds i16, ptr %.compoundliteral51, i32 2
  %69 = ptrtoint ptr %arrayinit.element54 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 302, ptr %arrayinit.element54, align 2
  %arrayinit.element55 = getelementptr inbounds i16, ptr %.compoundliteral51, i32 3
  %70 = ptrtoint ptr %arrayinit.element55 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 318, ptr %arrayinit.element55, align 2
  %arrayinit.element56 = getelementptr inbounds i16, ptr %.compoundliteral51, i32 4
  %71 = ptrtoint ptr %arrayinit.element56 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 526, ptr %arrayinit.element56, align 2
  %arrayinit.element57 = getelementptr inbounds i16, ptr %.compoundliteral51, i32 5
  %72 = ptrtoint ptr %arrayinit.element57 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 542, ptr %arrayinit.element57, align 2
  %arrayinit.element58 = getelementptr inbounds i16, ptr %.compoundliteral51, i32 6
  %73 = ptrtoint ptr %arrayinit.element58 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 558, ptr %arrayinit.element58, align 2
  %arrayinit.element59 = getelementptr inbounds i16, ptr %.compoundliteral51, i32 7
  %74 = ptrtoint ptr %arrayinit.element59 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 574, ptr %arrayinit.element59, align 2
  %75 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ch, align 8
  %arrayidx61 = getelementptr [8 x i16], ptr %.compoundliteral51, i32 0, i32 %76
  %77 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %arrayidx61, align 2
  %conv62 = zext i16 %78 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %79 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i112 = getelementptr i32, ptr %80, i32 %conv62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %19) #9, !srcloc !101
  %and63 = and i32 %detected_std.1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end66, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end66:                                         ; preds = %while.end
  %shr = lshr i32 %detected_std.1, 4
  %and67 = and i32 %shr, 7
  %81 = zext i32 %and67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %and67, label %if.end66.cleanup.sink.split_crit_edge [
    i32 0, label %if.end66.cleanup.sink.split.sink.split_crit_edge
    i32 3, label %sw.bb69
    i32 4, label %sw.bb71
    i32 6, label %sw.bb73
    i32 1, label %sw.bb75
    i32 5, label %sw.bb77
    i32 2, label %sw.bb79
  ]

if.end66.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

if.end66.cleanup.sink.split_crit_edge:            ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sw.bb69:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

sw.bb71:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

sw.bb73:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

sw.bb75:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

sw.bb77:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

sw.bb79:                                          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %sw.bb79, %sw.bb77, %sw.bb75, %sw.bb73, %sw.bb71, %sw.bb69, %if.end66.cleanup.sink.split.sink.split_crit_edge
  %.sink116 = phi i64 [ 16711680, %sw.bb79 ], [ 1024, %sw.bb77 ], [ 255, %sw.bb75 ], [ 2048, %sw.bb73 ], [ 256, %sw.bb71 ], [ 16384, %sw.bb69 ], [ 45056, %if.end66.cleanup.sink.split.sink.split_crit_edge ]
  %82 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %std, align 8
  %and80 = and i64 %83, %.sink116
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end66.cleanup.sink.split_crit_edge
  %and68.sink = phi i64 [ 0, %if.end66.cleanup.sink.split_crit_edge ], [ %and80, %cleanup.sink.split.sink.split ]
  %84 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %and68.sink, ptr %std, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %i) #0 align 64 {
entry:
  %.compoundliteral = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp ugt i32 %1, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %call2 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.36, i32 noundef %1)
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 4
  %device = getelementptr inbounds %struct.tw686x_video_channel, ptr %3, i32 0, i32 3
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %tvnorms = getelementptr inbounds %struct.video_device, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %tvnorms to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tvnorms, align 8
  %std = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 5
  %9 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %std, align 8
  %capabilities = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 7
  %10 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %capabilities, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %13 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 256, ptr %.compoundliteral, align 2
  %arrayinit.element = getelementptr inbounds i16, ptr %.compoundliteral, i32 1
  %14 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 272, ptr %arrayinit.element, align 2
  %arrayinit.element3 = getelementptr inbounds i16, ptr %.compoundliteral, i32 2
  %15 = ptrtoint ptr %arrayinit.element3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 288, ptr %arrayinit.element3, align 2
  %arrayinit.element4 = getelementptr inbounds i16, ptr %.compoundliteral, i32 3
  %16 = ptrtoint ptr %arrayinit.element4 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 304, ptr %arrayinit.element4, align 2
  %arrayinit.element5 = getelementptr inbounds i16, ptr %.compoundliteral, i32 4
  %17 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 512, ptr %arrayinit.element5, align 2
  %arrayinit.element6 = getelementptr inbounds i16, ptr %.compoundliteral, i32 5
  %18 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 528, ptr %arrayinit.element6, align 2
  %arrayinit.element7 = getelementptr inbounds i16, ptr %.compoundliteral, i32 6
  %19 = ptrtoint ptr %arrayinit.element7 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 544, ptr %arrayinit.element7, align 2
  %arrayinit.element8 = getelementptr inbounds i16, ptr %.compoundliteral, i32 7
  %20 = ptrtoint ptr %arrayinit.element8 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 560, ptr %arrayinit.element8, align 2
  %ch = getelementptr inbounds %struct.tw686x_video_channel, ptr %3, i32 0, i32 16
  %21 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ch, align 8
  %arrayidx = getelementptr [8 x i16], ptr %.compoundliteral, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %24 to i32
  %mmio.i = getelementptr inbounds %struct.tw686x_dev, ptr %12, i32 0, i32 7
  %25 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %26, i32 %conv
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !102
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %status = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 6
  %and = lshr i32 %28, 6
  %29 = and i32 %and, 2
  %30 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %status, align 8
  %and13 = and i32 %28, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %or17 = or i32 %29, 256
  %31 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or17, ptr %status, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then15 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_g_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  %4 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_s_input(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #0 align 64 {
entry:
  %.compoundliteral.i = alloca [8 x i16], align 2
  %.compoundliteral8.i = alloca [8 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i)
  %cmp = icmp ugt i32 %i, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %input = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %i)
  %cmp1 = icmp eq i32 %3, %i
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %num_buffers.i = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 1, i32 21
  %4 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 0
  br i1 %cmp.i.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral8.i)
  %6 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %i, ptr %input, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 16, ptr %.compoundliteral.i, align 2
  %arrayinit.element.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 1
  %10 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 17, ptr %arrayinit.element.i, align 2
  %arrayinit.element1.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 2
  %11 = ptrtoint ptr %arrayinit.element1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 18, ptr %arrayinit.element1.i, align 2
  %arrayinit.element2.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 3
  %12 = ptrtoint ptr %arrayinit.element2.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 19, ptr %arrayinit.element2.i, align 2
  %arrayinit.element3.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 4
  %13 = ptrtoint ptr %arrayinit.element3.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 20, ptr %arrayinit.element3.i, align 2
  %arrayinit.element4.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 5
  %14 = ptrtoint ptr %arrayinit.element4.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 21, ptr %arrayinit.element4.i, align 2
  %arrayinit.element5.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 6
  %15 = ptrtoint ptr %arrayinit.element5.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 22, ptr %arrayinit.element5.i, align 2
  %arrayinit.element6.i = getelementptr inbounds i16, ptr %.compoundliteral.i, i32 7
  %16 = ptrtoint ptr %arrayinit.element6.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 23, ptr %arrayinit.element6.i, align 2
  %ch.i = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 16
  %17 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ch.i, align 8
  %arrayidx.i = getelementptr [8 x i16], ptr %.compoundliteral.i, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %20 to i32
  %mmio.i.i = getelementptr inbounds %struct.tw686x_dev, ptr %8, i32 0, i32 7
  %21 = ptrtoint ptr %mmio.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio.i.i, align 4
  %add.ptr.i.i = getelementptr i32, ptr %22, i32 %conv.i
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %24 = and i32 %23, -193
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #9
  %shl.i = shl nuw i32 %i, 30
  %or.i = or i32 %25, %shl.i
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 8
  %28 = ptrtoint ptr %.compoundliteral8.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 16, ptr %.compoundliteral8.i, align 2
  %arrayinit.element10.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 1
  %29 = ptrtoint ptr %arrayinit.element10.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 17, ptr %arrayinit.element10.i, align 2
  %arrayinit.element11.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 2
  %30 = ptrtoint ptr %arrayinit.element11.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 18, ptr %arrayinit.element11.i, align 2
  %arrayinit.element12.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 3
  %31 = ptrtoint ptr %arrayinit.element12.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 19, ptr %arrayinit.element12.i, align 2
  %arrayinit.element13.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 4
  %32 = ptrtoint ptr %arrayinit.element13.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 20, ptr %arrayinit.element13.i, align 2
  %arrayinit.element14.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 5
  %33 = ptrtoint ptr %arrayinit.element14.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 21, ptr %arrayinit.element14.i, align 2
  %arrayinit.element15.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 6
  %34 = ptrtoint ptr %arrayinit.element15.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 22, ptr %arrayinit.element15.i, align 2
  %arrayinit.element16.i = getelementptr inbounds i16, ptr %.compoundliteral8.i, i32 7
  %35 = ptrtoint ptr %arrayinit.element16.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 23, ptr %arrayinit.element16.i, align 2
  %36 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ch.i, align 8
  %arrayidx18.i = getelementptr [8 x i16], ptr %.compoundliteral8.i, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx18.i, align 2
  %conv19.i = zext i16 %39 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void @arm_heavy_mb() #9
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i) #9
  %mmio.i27.i = getelementptr inbounds %struct.tw686x_dev, ptr %27, i32 0, i32 7
  %41 = ptrtoint ptr %mmio.i27.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %mmio.i27.i, align 4
  %add.ptr.i28.i = getelementptr i32, ptr %42, i32 %conv19.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 %40) #9, !srcloc !101
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral8.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -16, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_g_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %0 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %parm = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1
  %readbuffers = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %readbuffers to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %readbuffers, align 4
  %5 = ptrtoint ptr %parm to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4096, ptr %parm, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %timeperframe, align 4
  %fps = getelementptr inbounds %struct.tw686x_video_channel, ptr %3, i32 0, i32 18
  %7 = ptrtoint ptr %fps to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fps, align 8
  %denominator = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_s_parm(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %sp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %timeperframe = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2
  %denominator1 = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %denominator1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %denominator1, align 4
  %4 = ptrtoint ptr %timeperframe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeperframe, align 4
  %num_buffers.i = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 1, i32 21
  %6 = ptrtoint ptr %num_buffers.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %div = udiv i32 %3, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.false ], [ 0, %if.end.cond.end_crit_edge ]
  %fps6 = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %fps6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fps6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %cond)
  %cmp.not = icmp eq i32 %9, %cond
  br i1 %cmp.not, label %cond.end.if.end8_crit_edge, label %if.then7

cond.end.if.end8_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @tw686x_set_framerate(ptr noundef %1, i32 noundef %cond)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %cond.end.if.end8_crit_edge
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %10 = ptrtoint ptr %sp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.not.i = icmp eq i32 %11, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %parm.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1
  %readbuffers.i = getelementptr inbounds %struct.v4l2_streamparm, ptr %sp, i32 0, i32 1, i32 0, i32 4
  %14 = ptrtoint ptr %readbuffers.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 3, ptr %readbuffers.i, align 4
  %15 = ptrtoint ptr %parm.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %parm.i, align 4
  %16 = ptrtoint ptr %timeperframe to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %timeperframe, align 4
  %fps.i = getelementptr inbounds %struct.tw686x_video_channel, ptr %13, i32 0, i32 18
  %17 = ptrtoint ptr %fps.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fps.i, align 8
  %19 = ptrtoint ptr %denominator1 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %denominator1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ -22, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_enum_framesizes(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %fsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %0 = ptrtoint ptr %fsize to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %type = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3, ptr %type, align 4
  %5 = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3
  %max_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %max_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 720, ptr %max_width, align 4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 360, ptr %5, align 4
  %step_width = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 2
  %8 = ptrtoint ptr %step_width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 360, ptr %step_width, align 4
  %video_standard = getelementptr inbounds %struct.tw686x_video_channel, ptr %3, i32 0, i32 11
  %9 = ptrtoint ptr %video_standard to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %video_standard, align 8
  %and = and i64 %10, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool3.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool3.not, i32 576, i32 480
  %max_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 4
  %11 = ptrtoint ptr %max_height to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %max_height, align 4
  %div518 = lshr exact i32 %cond, 1
  %min_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 3
  %12 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div518, ptr %min_height, align 4
  %step_height = getelementptr inbounds %struct.v4l2_frmsizeenum, ptr %fsize, i32 0, i32 3, i32 0, i32 5
  %13 = ptrtoint ptr %step_height to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div518, ptr %step_height, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tw686x_enum_frameintervals(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %ival) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %video_standard = getelementptr inbounds %struct.tw686x_video_channel, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %video_standard to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %video_standard, align 8
  %and = and i64 %3, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 25, i32 30
  %sub = add nuw nsw i32 %cond, 1
  %div19 = lshr i32 %sub, 1
  %4 = ptrtoint ptr %ival to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ival, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %div19)
  %cmp.not = icmp ult i32 %5, %div19
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %ival, i32 0, i32 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 4
  %7 = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %ival, i32 0, i32 5
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %7, align 4
  %sub2 = add nsw i32 %div19, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub2)
  %cmp3 = icmp ult i32 %5, %sub2
  %add6 = shl i32 %5, 1
  %mul = add i32 %add6, 2
  %mul.sink = select i1 %cmp3, i32 %mul, i32 %cond
  %denominator = getelementptr inbounds %struct.v4l2_frmivalenum, ptr %ival, i32 0, i32 5, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul.sink, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !22, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !45, !46, !47, !48, !49, !51, !53, !55, !57, !58, !59, !61, !62, !63, !64, !66, !68, !70, !72, !73, !75, !76, !77, !78, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 1103, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tw686x_video_irq._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tw686x_video_irq._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 1120, i32 5}
!8 = !{ptr @tw686x_video_irq._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @tw686x_video_irq._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 1131, i32 4}
!12 = !{ptr @tw686x_video_irq._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @tw686x_video_irq._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @tw686x_video_init.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 1197, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @tw686x_video_init.__key.10, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 1198, i32 3}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 1234, i32 4}
!22 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tw686x_video_init._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @tw686x_video_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @tw686x_video_init._key, !26, !"_key", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 1239, i32 9}
!27 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 1241, i32 4}
!30 = !{ptr @tw686x_video_init._entry.15, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tw686x_video_init._entry_ptr.17, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 1263, i32 4}
!34 = !{ptr @tw686x_video_init._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @tw686x_video_init._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 1269, i32 44}
!38 = !{ptr @memcpy_dma_ops, !39, !"memcpy_dma_ops", i1 false, i1 false}
!39 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 145, i32 36}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 109, i32 2}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 116, i32 3}
!44 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @tw686x_memcpy_dma_alloc._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @tw686x_memcpy_dma_alloc._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 90, i32 3}
!51 = !{ptr @contig_dma_ops, !52, !"contig_dma_ops", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 177, i32 36}
!53 = !{ptr @sg_dma_ops, !54, !"sg_dma_ops", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 329, i32 36}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 282, i32 4}
!57 = !{ptr @tw686x_sg_dma_alloc._entry, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @tw686x_sg_dma_alloc._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 239, i32 4}
!61 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @tw686x_sg_buf_refill._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @tw686x_sg_buf_refill._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @formats, !65, !"formats", i1 false, i1 false}
!65 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 33, i32 35}
!66 = !{ptr @fps_map, !67, !"fps_map", i1 false, i1 false}
!67 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 339, i32 27}
!68 = !{ptr @tw686x_video_qops, !69, !"tw686x_video_qops", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 575, i32 29}
!70 = distinct !{null, !71, !"__already_done", i1 false, i1 false}
!71 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!72 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 515, i32 3}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @tw686x_start_streaming._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @tw686x_start_streaming._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @ctrl_ops, !79, !"ctrl_ops", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 618, i32 35}
!80 = !{ptr @tw686x_video_fops, !81, !"tw686x_video_fops", i1 false, i1 false}
!81 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 1042, i32 42}
!82 = !{ptr @tw686x_video_ioctl_ops, !83, !"tw686x_video_ioctl_ops", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 1052, i32 36}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 763, i32 23}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 766, i32 4}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/tw686x/tw686x-video.c", i32 1027, i32 37}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i8 0, i8 2}
!100 = !{i64 2156882042}
!101 = !{i64 7182014}
!102 = !{i64 7182432}
!103 = !{i64 2156881659}
!104 = !{!"branch_weights", i32 2000, i32 1}
