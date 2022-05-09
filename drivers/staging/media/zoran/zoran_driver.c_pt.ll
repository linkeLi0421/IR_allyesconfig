; ModuleID = '/llk/IR_all_yes/drivers/staging/media/zoran/zoran_driver.c_pt.bc'
source_filename = "../drivers/staging/media/zoran/zoran_driver.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.zoran_format = type { ptr, i32, i32, i32, i32, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.81 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.81 = type { %struct.anon.82 }
%struct.anon.82 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.78], %struct.media_entity_enum, i32 }
%struct.anon.78 = type { ptr, ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.zoran = type { %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.vb2_queue, %struct.i2c_adapter, %struct.i2c_algo_bit_data, i32, ptr, ptr, ptr, ptr, %struct.mutex, i8, %struct.card_info, ptr, i16, [32 x i8], ptr, i8, ptr, %struct.spinlock, i32, i64, i32, %struct.zoran_v4l_settings, i32, %struct.zoran_jpg_settings, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.list_head, %struct.spinlock, [8 x ptr] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.card_info = type { i32, [32 x i8], ptr, ptr, ptr, ptr, i16, i16, i16, i32, [16 x %struct.input], i64, [3 x ptr], i32, i32, [8 x i8], [2 x i8], [2 x i8], %struct.vfe_polarity, [8 x i8], i8, i8, ptr }
%struct.input = type { i32, [32 x i8] }
%struct.vfe_polarity = type { i8, [3 x i8] }
%struct.zoran_v4l_settings = type { i32, i32, i32, ptr }
%struct.zoran_jpg_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_jpegcompression }
%struct.v4l2_jpegcompression = type { i32, i32, i32, [60 x i8], i32, [60 x i8], i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.tvnorm = type { i16, i16, i16, i16, i16, i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.120, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.120 = type { ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.96 }
%union.anon.96 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.98, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.98 = type { i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.zr_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"15-bit RGB LE\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"15-bit RGB BE\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"16-bit RGB LE\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"16-bit RGB BE\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"24-bit RGB\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"32-bit RGB LE\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"32-bit RGB BE\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"4:2:2, packed, YUYV\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"4:2:2, packed, UYVY\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Hardware-encoded Motion-JPEG\00", [35 x i8] zeroinitializer }, align 32
@zoran_formats = dso_local constant { [10 x %struct.zoran_format], [48 x i8] } { [10 x %struct.zoran_format] [%struct.zoran_format { ptr @.str, i32 1329743698, i32 8, i32 15, i32 4, i32 29 }, %struct.zoran_format { ptr @.str.1, i32 1363298130, i32 8, i32 15, i32 4, i32 28 }, %struct.zoran_format { ptr @.str.2, i32 1346520914, i32 8, i32 16, i32 4, i32 21 }, %struct.zoran_format { ptr @.str.3, i32 1380075346, i32 8, i32 16, i32 4, i32 20 }, %struct.zoran_format { ptr @.str.4, i32 861030210, i32 8, i32 24, i32 4, i32 10 }, %struct.zoran_format { ptr @.str.5, i32 877807426, i32 8, i32 32, i32 4, i32 9 }, %struct.zoran_format { ptr @.str.6, i32 876758866, i32 8, i32 32, i32 4, i32 8 }, %struct.zoran_format { ptr @.str.7, i32 1448695129, i32 1, i32 16, i32 4, i32 0 }, %struct.zoran_format { ptr @.str.8, i32 1498831189, i32 1, i32 16, i32 4, i32 1 }, %struct.zoran_format { ptr @.str.9, i32 1196444237, i32 1, i32 0, i32 13, i32 0 }], [48 x i8] zeroinitializer }, align 32
@zoran_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr @vb2_fop_write, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@zoran_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @zoran_querycap, ptr @zoran_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zoran_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zoran_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zoran_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @zoran_g_std, ptr @zoran_s_std, ptr null, ptr @zoran_enum_input, ptr @zoran_g_input, ptr @zoran_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zoran_g_selection, ptr @zoran_s_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @zoran_g_parm, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@zoran_template = dso_local constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @zoran_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"ZORAN\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 16756991, ptr @zoran_vdev_release, ptr @zoran_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@zoran_queue_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&zr->queued_bufs_lock\00", [42 x i8] zeroinitializer }, align 32
@zr_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @zr_vb2_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @zr_vb2_prepare, ptr null, ptr null, ptr @zr_vb2_start_streaming, ptr @zr_vb2_stop_streaming, ptr @zr_vb2_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_contig_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"zoran\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PCI:%s\00", [25 x i8] zeroinitializer }, align 32
@zoran_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.15, i32 539, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"VIDIOC_S_FMT - unknown/unsupported format 0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zoran_s_fmt_vid_cap\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/staging/media/zoran/zoran_driver.c\00", [53 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@zoran_s_fmt_vid_cap._entry_ptr = internal global ptr @zoran_s_fmt_vid_cap._entry, section ".printk_index", align 4
@zoran_s_fmt_vid_out.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.15, ptr @.str.20, i8 0, i8 113, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"zr36067\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"zoran_s_fmt_vid_out\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"size=%dx%d, fmt=0x%x (%4.4s)\0A\00", [34 x i8] zeroinitializer }, align 32
@jpg_bufsize = external dso_local local_unnamed_addr global i32, align 4
@zoran_v4l_set_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.15, i32 176, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - wrong frame size (%dx%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"zoran_v4l_set_format\00", [43 x i8] zeroinitializer }, align 32
@zoran_v4l_set_format._entry_ptr = internal global ptr @zoran_v4l_set_format._entry, section ".printk_index", align 4
@zoran_v4l_set_format._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.15, i32 187, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s - video buffer size (%d kB) is too small\0A\00", [51 x i8] zeroinitializer }, align 32
@zoran_v4l_set_format._entry_ptr.25 = internal global ptr @zoran_v4l_set_format._entry.23, section ".printk_index", align 4
@zoran_v4l_set_format._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.15, i32 194, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - wrong frame alignment\0A\00", [36 x i8] zeroinitializer }, align 32
@zoran_v4l_set_format._entry_ptr.28 = internal global ptr @zoran_v4l_set_format._entry.26, section ".printk_index", align 4
@zoran_set_norm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.15, i32 210, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - unsupported norm %llx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zoran_set_norm\00", [17 x i8] zeroinitializer }, align 32
@zoran_set_norm._entry_ptr = internal global ptr @zoran_set_norm._entry, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@zoran_set_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.15, i32 236, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s - unsupported input %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"zoran_set_input\00", [16 x i8] zeroinitializer }, align 32
@zoran_set_input._entry_ptr = internal global ptr @zoran_set_input._entry, section ".printk_index", align 4
@zoran_g_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.15, i32 669, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s invalid selection type combination\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zoran_g_selection\00", [46 x i8] zeroinitializer }, align 32
@zoran_g_selection._entry_ptr = internal global ptr @zoran_g_selection._entry, section ".printk_index", align 4
@zoran_s_selection._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.15, i32 715, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"VIDIOC_S_SELECTION - subcapture only supported for compressed capture\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"zoran_s_selection\00", [46 x i8] zeroinitializer }, align 32
@zoran_s_selection._entry_ptr = internal global ptr @zoran_s_selection._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@zr_vb2_queue_setup.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.38, ptr @.str.15, ptr @.str.39, i8 0, i8 -54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"zr_vb2_queue_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s nbuf=%u nplanes=%u\00", [42 x i8] zeroinitializer }, align 32
@zr_vb2_start_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.15, i32 933, ptr @.str.42, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"START JPG\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"zr_vb2_start_streaming\00", [41 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@zr_vb2_start_streaming._entry_ptr = internal global ptr @zr_vb2_start_streaming._entry, section ".printk_index", align 4
@zr_vb2_start_streaming._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.41, ptr @.str.15, i32 947, ptr @.str.42, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"START RAW\0A\00", [21 x i8] zeroinitializer }, align 32
@zr_vb2_start_streaming._entry_ptr.45 = internal global ptr @zr_vb2_start_streaming._entry.43, section ".printk_index", align 4
@pass_through = external dso_local local_unnamed_addr global i32, align 4
@zr_vb2_stop_streaming.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.46, ptr @.str.15, ptr @.str.47, i8 0, i8 -11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"zr_vb2_stop_streaming\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s clean buf %d\0A\00", [47 x i8] zeroinitializer }, align 32
@zr_vb2_stop_streaming._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.15, i32 997, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Buffer remaining %d\0A\00", [43 x i8] zeroinitializer }, align 32
@zr_vb2_stop_streaming._entry_ptr = internal global ptr @zr_vb2_stop_streaming._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 861030210, i64 876758866, i64 877807426, i64 1196444237, i64 1329743698, i64 1346520914, i64 1363298130, i64 1380075346, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.49 = internal global [12 x i64] [i64 10, i64 32, i64 861030210, i64 876758866, i64 877807426, i64 1196444237, i64 1329743698, i64 1346520914, i64 1363298130, i64 1380075346, i64 1448695129, i64 1498831189]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 62, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 70, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 77, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 85, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 92, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 99, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 106, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 113, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 120, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 127, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"zoran_formats\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 60, i32 27 }
@___asan_gen_.84 = private unnamed_addr constant [11 x i8] c"zoran_fops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 783, i32 42 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"zoran_ioctl_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 750, i32 36 }
@___asan_gen_.90 = private unnamed_addr constant [15 x i8] c"zoran_template\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 794, i32 27 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1015, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [14 x i8] c"zr_video_qops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 1001, i32 29 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 256, i32 23 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 257, i32 49 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 538, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 451, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 176, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 186, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 194, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 210, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 236, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 669, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 715, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 1163, i32 7 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 808, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 933, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 947, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 983, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.229 = private constant [46 x i8] c"../drivers/staging/media/zoran/zoran_driver.c\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.229, i32 997, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @zoran_g_selection._entry, ptr @zoran_g_selection._entry_ptr, ptr @zoran_s_fmt_vid_cap._entry, ptr @zoran_s_fmt_vid_cap._entry_ptr, ptr @zoran_s_selection._entry, ptr @zoran_s_selection._entry_ptr, ptr @zoran_set_input._entry, ptr @zoran_set_input._entry_ptr, ptr @zoran_set_norm._entry, ptr @zoran_set_norm._entry_ptr, ptr @zoran_v4l_set_format._entry, ptr @zoran_v4l_set_format._entry.23, ptr @zoran_v4l_set_format._entry.26, ptr @zoran_v4l_set_format._entry_ptr, ptr @zoran_v4l_set_format._entry_ptr.25, ptr @zoran_v4l_set_format._entry_ptr.28, ptr @zr_vb2_start_streaming._entry, ptr @zr_vb2_start_streaming._entry.43, ptr @zr_vb2_start_streaming._entry_ptr, ptr @zr_vb2_start_streaming._entry_ptr.45, ptr @zr_vb2_stop_streaming._entry, ptr @zr_vb2_stop_streaming._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @zoran_formats, ptr @zoran_fops, ptr @zoran_ioctl_ops, ptr @zoran_template, ptr @zoran_queue_init.__key, ptr @.str.10, ptr @zr_video_qops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_formats to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_queue_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_v4l_set_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_v4l_set_format._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_v4l_set_format._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_set_norm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_set_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_g_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zoran_s_selection._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr_vb2_start_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr_vb2_start_streaming._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zr_vb2_stop_streaming._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local void @zoran_vdev_release(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zr_set_buf(ptr noundef %zr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %running = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 59
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %inuse = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 67
  %2 = ptrtoint ptr %inuse to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inuse, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.do.body15_crit_edge, label %if.then1

if.end.do.body15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

if.then1:                                         ; preds = %if.end
  %call.i = tail call i64 @ktime_get() #8
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i, ptr %timestamp, align 8
  %vbseq = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 35
  %5 = ptrtoint ptr %vbseq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %vbseq, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr %vbseq, align 4
  %sequence = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %sequence, align 8
  %field = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %field, align 4
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not.i = icmp eq i32 %10, 0
  br i1 %cmp.not.i, label %if.then1.vb2_set_plane_payload.exit_crit_edge, label %if.then.i

if.then1.vb2_set_plane_payload.exit_crit_edge:    ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_set_plane_payload.exit

if.then.i:                                        ; preds = %if.then1
  %buffer_size = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 23
  %11 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %buffer_size, align 8
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %3, i32 0, i32 10, i32 0, i32 4
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %12)
  %cmp1.i = icmp ult i32 %14, %12
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i.if.end42.i_crit_edge

if.then.i.if.end42.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !117

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 1163, i32 noundef 9, ptr noundef null) #8
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %15 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %16, %if.then38.i ], [ %12, %if.then.i.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %3, i32 0, i32 10, i32 0, i32 3
  %17 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %if.then1.vb2_set_plane_payload.exit_crit_edge
  tail call void @vb2_buffer_done(ptr noundef nonnull %3, i32 noundef 5) #8
  %18 = ptrtoint ptr %inuse to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %inuse, align 8
  br label %do.body15

do.body15:                                        ; preds = %vb2_set_plane_payload.exit, %if.end.do.body15_crit_edge
  %queued_bufs_lock = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 66
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock) #8
  %queued_bufs = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 65
  %19 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %queued_bufs, align 4
  %cmp.i.not = icmp eq ptr %20, %queued_bufs
  br i1 %cmp.i.not, label %do.body24, label %if.end33

do.body24:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !118
  tail call void @arm_heavy_mb() #8
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %21 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %22, i32 64
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !120
  %24 = and i32 %23, -2
  %25 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr31 = getelementptr i8, ptr %26, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %24) #8, !srcloc !121
  %video_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 2
  %27 = ptrtoint ptr %video_dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %video_dev, align 8
  %queue = getelementptr inbounds %struct.video_device, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %queue, align 8
  tail call void @vb2_queue_error(ptr noundef %30) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock, i32 noundef %call18) #8
  br label %cleanup

if.end33:                                         ; preds = %do.body15
  %31 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %queued_bufs, align 4
  %cmp40.not = icmp eq ptr %32, %queued_bufs
  %add.ptr43 = getelementptr i8, ptr %32, i32 -736
  %tobool44.not184 = icmp eq ptr %add.ptr43, null
  %tobool44.not = or i1 %cmp40.not, %tobool44.not184
  br i1 %tobool44.not, label %do.body46, label %if.end62

do.body46:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !122
  tail call void @arm_heavy_mb() #8
  %zr36057_mem51 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %33 = ptrtoint ptr %zr36057_mem51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %zr36057_mem51, align 8
  %add.ptr52 = getelementptr i8, ptr %34, i32 64
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr52) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !123
  %36 = and i32 %35, -2
  %37 = ptrtoint ptr %zr36057_mem51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %zr36057_mem51, align 8
  %add.ptr58 = getelementptr i8, ptr %38, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %36) #8, !srcloc !121
  %video_dev59 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 2
  %39 = ptrtoint ptr %video_dev59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %video_dev59, align 8
  %queue60 = getelementptr inbounds %struct.video_device, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %queue60 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %queue60, align 8
  tail call void @vb2_queue_error(ptr noundef %42) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock, i32 noundef %call18) #8
  br label %cleanup

if.end62:                                         ; preds = %if.end33
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %32) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end62.list_del.exit_crit_edge

if.end62.list_del.exit_crit_edge:                 ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %32, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end62.list_del.exit_crit_edge
  %49 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock, i32 noundef %call18) #8
  %state = getelementptr i8, ptr %32, i32 -672
  %51 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %state, align 8
  %call.i183 = tail call ptr @vb2_plane_cookie(ptr noundef nonnull %add.ptr43, i32 noundef 0) #8
  %52 = ptrtoint ptr %call.i183 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %call.i183, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool69.not = icmp eq i32 %53, 0
  br i1 %tobool69.not, label %list_del.exit.cleanup_crit_edge, label %if.end71

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71:                                         ; preds = %list_del.exit
  %54 = ptrtoint ptr %inuse to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr43, ptr %inuse, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !124
  tail call void @arm_heavy_mb() #8
  %55 = tail call i32 @llvm.bswap.i32(i32 %53)
  %zr36057_mem77 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 19
  %56 = ptrtoint ptr %zr36057_mem77 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %zr36057_mem77, align 8
  %add.ptr78 = getelementptr i8, ptr %57, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %55) #8, !srcloc !121
  %height = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 24, i32 1
  %58 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %height, align 4
  %timing = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 14
  %60 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %timing, align 8
  %ha = getelementptr inbounds %struct.tvnorm, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %ha to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %ha, align 2
  %64 = lshr i16 %63, 1
  %div = zext i16 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %div)
  %cmp80 = icmp sgt i32 %59, %div
  br i1 %cmp80, label %if.then82, label %if.end71.do.body85_crit_edge

if.end71.do.body85_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body85

if.then82:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %bytesperline = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 24, i32 2
  %65 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %bytesperline, align 4
  %add = add i32 %66, %53
  %.pre = tail call i32 @llvm.bswap.i32(i32 %add)
  br label %do.body85

do.body85:                                        ; preds = %if.then82, %if.end71.do.body85_crit_edge
  %.pre-phi = phi i32 [ %55, %if.end71.do.body85_crit_edge ], [ %.pre, %if.then82 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !125
  tail call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %zr36057_mem77 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %zr36057_mem77, align 8
  %add.ptr89 = getelementptr i8, ptr %68, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 %.pre-phi) #8, !srcloc !121
  %69 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %height, align 4
  %71 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %timing, align 8
  %ha93 = getelementptr inbounds %struct.tvnorm, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %ha93 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %ha93, align 2
  %75 = lshr i16 %74, 1
  %div95 = zext i16 %75 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %div95)
  %cmp96 = icmp sgt i32 %70, %div95
  br i1 %cmp96, label %if.then98, label %do.body85.if.end102_crit_edge

do.body85.if.end102_crit_edge:                    ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.then98:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #10
  %bytesperline100 = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 24, i32 2
  %76 = ptrtoint ptr %bytesperline100 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bytesperline100, align 4
  %phi.bo = shl i32 %77, 16
  %phi.bo182 = or i32 %phi.bo, 259
  br label %if.end102

if.end102:                                        ; preds = %if.then98, %do.body85.if.end102_crit_edge
  %reg.1 = phi i32 [ %phi.bo182, %if.then98 ], [ 259, %do.body85.if.end102_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !126
  tail call void @arm_heavy_mb() #8
  %78 = tail call i32 @llvm.bswap.i32(i32 %reg.1)
  %79 = ptrtoint ptr %zr36057_mem77 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %zr36057_mem77, align 8
  %add.ptr109 = getelementptr i8, ptr %80, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109, i32 %78) #8, !srcloc !121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !127
  tail call void @arm_heavy_mb() #8
  %81 = ptrtoint ptr %zr36057_mem77 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %zr36057_mem77, align 8
  %add.ptr116 = getelementptr i8, ptr %82, i32 24
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr116) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !128
  %84 = or i32 %83, 128
  %85 = ptrtoint ptr %zr36057_mem77 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %zr36057_mem77, align 8
  %add.ptr122 = getelementptr i8, ptr %86, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr122, i32 %84) #8, !srcloc !121
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %list_del.exit.cleanup_crit_edge, %do.body46, %do.body24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.body24 ], [ 0, %if.end102 ], [ -22, %do.body46 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %list_del.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_error(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zoran_queue_init(ptr noundef %zr, ptr noundef %vq) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queued_bufs_lock = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 66
  tail call void @__raw_spin_lock_init(ptr noundef %queued_bufs_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @zoran_queue_init.__key, i16 noundef signext 3) #8
  %queued_bufs = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 65
  %0 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %queued_bufs, ptr %queued_bufs, align 4
  %prev.i = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 65, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %queued_bufs, ptr %prev.i, align 4
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 17
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %dev1 = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 2
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev, ptr %dev1, align 4
  %5 = ptrtoint ptr %vq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %vq, align 4
  %io_modes = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 1
  %6 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 31, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %7 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %zr, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 12
  %8 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 744, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 7
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @zr_video_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 8
  %10 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @vb2_dma_contig_memops, ptr %mem_ops, align 4
  %gfp_flags = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 14
  %11 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %gfp_flags, align 4
  %timestamp_flags = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 13
  %12 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8192, ptr %timestamp_flags, align 4
  %min_buffers_needed = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 15
  %13 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 9, ptr %min_buffers_needed, align 4
  %lock = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 11
  %lock2 = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 5
  %14 = ptrtoint ptr %lock2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lock, ptr %lock2, align 4
  %call3 = tail call i32 @vb2_queue_init(ptr noundef %vq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %video_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 2
  %15 = ptrtoint ptr %video_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %video_dev, align 8
  %queue = getelementptr inbounds %struct.video_device, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %vq, ptr %queue, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @zoran_queue_exit(ptr nocapture noundef readonly %zr) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %video_dev = getelementptr inbounds %struct.zoran, ptr %zr, i32 0, i32 2
  %0 = ptrtoint ptr %video_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %video_dev, align 8
  %queue = getelementptr inbounds %struct.video_device, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 8
  tail call void @vb2_queue_release(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_queue_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_write(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zoran_querycap(ptr noundef %file, ptr nocapture noundef readnone %__fh, ptr noundef %cap) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %name = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 16
  %call2 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %name, i32 noundef 32) #8
  %call4 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.11, i32 noundef 16) #8
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call7 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %bus_info, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i.i)
  %video_dev = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %video_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %video_dev, align 8
  %device_caps = getelementptr inbounds %struct.video_device, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %device_caps to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %device_caps, align 8
  %device_caps8 = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 5
  %12 = ptrtoint ptr %device_caps8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %device_caps8, align 4
  %or = or i32 %11, -2147483648
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %13 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %capabilities, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zoran_enum_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %__fh, ptr noundef %f) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %cmp.i = icmp ugt i32 %1, 9
  br i1 %cmp.i, label %entry.zoran_enum_fmt.exit_crit_edge, label %if.end.i

entry.zoran_enum_fmt.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %zoran_enum_fmt.exit

if.end.i:                                         ; preds = %entry
  %type.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1.not.i = icmp eq i32 %3, 1
  br i1 %cmp1.not.i, label %if.then7.i, label %if.end.i.zoran_enum_fmt.exit_crit_edge

if.end.i.zoran_enum_fmt.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zoran_enum_fmt.exit

if.then7.i:                                       ; preds = %if.end.i
  %arrayidx.i = getelementptr [10 x %struct.zoran_format], ptr @zoran_formats, i32 0, i32 %1
  %description.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i2 = tail call i32 @strscpy(ptr noundef %description.i, ptr noundef %5, i32 noundef 32) #8
  %fourcc.i = getelementptr [10 x %struct.zoran_format], ptr @zoran_formats, i32 0, i32 %1, i32 1
  %6 = ptrtoint ptr %fourcc.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fourcc.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %8 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %1)
  %tobool13.not.not.i = icmp eq i32 %1, 9
  br i1 %tobool13.not.not.i, label %if.then14.i, label %if.then7.i.zoran_enum_fmt.exit_crit_edge

if.then7.i.zoran_enum_fmt.exit_crit_edge:         ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zoran_enum_fmt.exit

if.then14.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags15.i = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 2
  %9 = ptrtoint ptr %flags15.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags15.i, align 4
  %or.i = or i32 %10, 1
  store i32 %or.i, ptr %flags15.i, align 4
  br label %zoran_enum_fmt.exit

zoran_enum_fmt.exit:                              ; preds = %if.then14.i, %if.then7.i.zoran_enum_fmt.exit_crit_edge, %if.end.i.zoran_enum_fmt.exit_crit_edge, %entry.zoran_enum_fmt.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.zoran_enum_fmt.exit_crit_edge ], [ -22, %if.end.i.zoran_enum_fmt.exit_crit_edge ], [ 0, %if.then14.i ], [ 0, %if.then7.i.zoran_enum_fmt.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zoran_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %__fh, ptr nocapture noundef writeonly %fmt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %map_mode = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %map_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %map_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %img_width.i = getelementptr inbounds %struct.zoran, ptr %5, i32 0, i32 26, i32 8
  %6 = ptrtoint ptr %img_width.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %img_width.i, align 8
  %hor_dcm.i = getelementptr inbounds %struct.zoran, ptr %5, i32 0, i32 26, i32 1
  %8 = ptrtoint ptr %hor_dcm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hor_dcm.i, align 4
  %div.i = sdiv i32 %7, %9
  %fmt2.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %10 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div.i, ptr %fmt2.i, align 4
  %img_height.i = getelementptr inbounds %struct.zoran, ptr %5, i32 0, i32 26, i32 9
  %11 = ptrtoint ptr %img_height.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %img_height.i, align 4
  %mul.i = shl i32 %12, 1
  %ver_dcm.i = getelementptr inbounds %struct.zoran, ptr %5, i32 0, i32 26, i32 2
  %13 = ptrtoint ptr %ver_dcm.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ver_dcm.i, align 8
  %tmp_dcm.i = getelementptr inbounds %struct.zoran, ptr %5, i32 0, i32 26, i32 3
  %15 = ptrtoint ptr %tmp_dcm.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tmp_dcm.i, align 4
  %mul6.i = mul i32 %16, %14
  %div7.i = sdiv i32 %mul.i, %mul6.i
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div7.i, ptr %height.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.zoran, ptr %5, i32 0, i32 23
  %18 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buffer_size.i, align 8
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %20 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %sizeimage.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1196444237, ptr %pixelformat.i, align 4
  %22 = load i32, ptr %tmp_dcm.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i = icmp eq i32 %22, 1
  %odd_even.i = getelementptr inbounds %struct.zoran, ptr %5, i32 0, i32 26, i32 5
  %23 = ptrtoint ptr %odd_even.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %odd_even.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  %cond.i = select i1 %tobool.not.i, i32 6, i32 5
  %cond18.i = select i1 %tobool.not.i, i32 3, i32 2
  %cond18.sink.i = select i1 %cmp.i, i32 %cond.i, i32 %cond18.i
  %25 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cond18.sink.i, ptr %25, align 4
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %27 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %bytesperline.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %colorspace.i, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %v4l_settings = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 24
  %29 = ptrtoint ptr %v4l_settings to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %v4l_settings, align 4
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %31 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %fmt2, align 4
  %height = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 24, i32 1
  %32 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %height, align 4
  %height6 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %34 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %height6, align 4
  %buffer_size = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 23
  %35 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %buffer_size, align 8
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %37 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %sizeimage, align 4
  %format = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 24, i32 3
  %38 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %format, align 4
  %fourcc = getelementptr inbounds %struct.zoran_format, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %fourcc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fourcc, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %pixelformat, align 4
  %43 = load ptr, ptr %format, align 4
  %colorspace = getelementptr inbounds %struct.zoran_format, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %colorspace, align 4
  %colorspace13 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %46 = ptrtoint ptr %colorspace13 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %colorspace13, align 4
  %bytesperline = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 24, i32 2
  %47 = ptrtoint ptr %bytesperline to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bytesperline, align 4
  %bytesperline16 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %49 = ptrtoint ptr %bytesperline16 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %bytesperline16, align 4
  %timing = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 14
  %50 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %timing, align 8
  %ha = getelementptr inbounds %struct.tvnorm, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %ha to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %ha, align 2
  %conv = zext i16 %53 to i32
  %54 = load i32, ptr %height, align 4
  %mul = shl i32 %54, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv)
  %cmp19 = icmp sgt i32 %mul, %conv
  %field = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 4, ptr %field, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %field, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then21, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zoran_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %__fh, ptr nocapture noundef %fmt) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 1196444237, label %if.then
    i32 1329743698, label %entry.if.end13_crit_edge
    i32 1363298130, label %if.end13.fold.split
    i32 1346520914, label %if.end13.fold.split130
    i32 1380075346, label %if.end13.fold.split131
    i32 861030210, label %if.end13.fold.split132
    i32 877807426, label %if.end13.fold.split133
    i32 876758866, label %if.end13.fold.split134
    i32 1448695129, label %if.end13.fold.split135
    i32 1498831189, label %if.end13.fold.split136
  ]

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @zoran_s_fmt_vid_out(ptr noundef %file, ptr noundef %fmt)
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %3) #11
  br label %cleanup

if.end13.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13.fold.split130:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13.fold.split131:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13.fold.split132:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13.fold.split133:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13.fold.split134:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13.fold.split135:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13.fold.split136:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end13:                                         ; preds = %if.end13.fold.split136, %if.end13.fold.split135, %if.end13.fold.split134, %if.end13.fold.split133, %if.end13.fold.split132, %if.end13.fold.split131, %if.end13.fold.split130, %if.end13.fold.split, %entry.if.end13_crit_edge
  %i.0128.lcssa = phi i32 [ 0, %entry.if.end13_crit_edge ], [ 1, %if.end13.fold.split ], [ 2, %if.end13.fold.split130 ], [ 3, %if.end13.fold.split131 ], [ 4, %if.end13.fold.split132 ], [ 5, %if.end13.fold.split133 ], [ 6, %if.end13.fold.split134 ], [ 7, %if.end13.fold.split135 ], [ 8, %if.end13.fold.split136 ]
  %arrayidx14 = getelementptr [10 x %struct.zoran_format], ptr @zoran_formats, i32 0, i32 %i.0128.lcssa
  %fourcc15 = getelementptr [10 x %struct.zoran_format], ptr @zoran_formats, i32 0, i32 %i.0128.lcssa, i32 1
  %7 = ptrtoint ptr %fourcc15 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fourcc15, align 4
  %9 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %pixelformat, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %timing = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %timing, align 8
  %ha = getelementptr inbounds %struct.tvnorm, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %ha to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ha, align 2
  %conv = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv)
  %cmp19 = icmp ugt i32 %11, %conv
  br i1 %cmp19, label %if.then21, label %if.end13.if.end27_crit_edge

if.end13.if.end27_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then21:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %height, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then21, %if.end13.if.end27_crit_edge
  %17 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fmt1, align 4
  %19 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %timing, align 8
  %wa = getelementptr inbounds %struct.tvnorm, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %wa to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %wa, align 2
  %conv30 = zext i16 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %conv30)
  %cmp31 = icmp ugt i32 %18, %conv30
  br i1 %cmp31, label %if.then33, label %if.end27.if.end39_crit_edge

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv30, ptr %fmt1, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.end27.if.end39_crit_edge
  %24 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %25)
  %cmp42 = icmp ult i32 %25, 24
  br i1 %cmp42, label %if.then44, label %if.end39.if.end47_crit_edge

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 24, ptr %height, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end39.if.end47_crit_edge
  %27 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fmt1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %28)
  %cmp50 = icmp ult i32 %28, 32
  br i1 %cmp50, label %if.then52, label %if.end47.if.end55_crit_edge

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 32, ptr %fmt1, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end47.if.end55_crit_edge
  %map_mode = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 64
  %30 = ptrtoint ptr %map_mode to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %map_mode, align 8
  %31 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %fmt1, align 4
  %33 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %34)
  %cmp.i = icmp slt i32 %34, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %32)
  %cmp1.i = icmp slt i32 %32, 32
  %or.cond.i = or i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.end55.do.end.i_crit_edge, label %lor.lhs.false2.i

if.end55.do.end.i_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false2.i:                                 ; preds = %if.end55
  %35 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %timing, align 8
  %ha.i = getelementptr inbounds %struct.tvnorm, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %ha.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ha.i, align 2
  %conv.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv.i)
  %cmp3.i = icmp ugt i32 %34, %conv.i
  br i1 %cmp3.i, label %lor.lhs.false2.i.do.end.i_crit_edge, label %lor.lhs.false5.i

lor.lhs.false2.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false5.i:                                 ; preds = %lor.lhs.false2.i
  %wa.i = getelementptr inbounds %struct.tvnorm, ptr %36, i32 0, i32 1
  %39 = ptrtoint ptr %wa.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %wa.i, align 2
  %conv7.i = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv7.i)
  %cmp8.i = icmp ugt i32 %32, %conv7.i
  br i1 %cmp8.i, label %lor.lhs.false5.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false5.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false5.i.do.end.i_crit_edge, %lor.lhs.false2.i.do.end.i_crit_edge, %if.end55.do.end.i_crit_edge
  %pci_dev.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 17
  %41 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci_dev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %32, i32 noundef %34) #11
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false5.i
  %depth.i = getelementptr [10 x %struct.zoran_format], ptr @zoran_formats, i32 0, i32 %i.0128.lcssa, i32 3
  %43 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %depth.i, align 4
  %add.i = add i32 %44, 7
  %div.i = sdiv i32 %add.i, 8
  %mul.i = mul i32 %div.i, %32
  %mul10.i = mul i32 %mul.i, %34
  %buffer_size.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 23
  %45 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul10.i, ptr %buffer_size.i, align 8
  %46 = add i32 %44, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %46)
  %47 = icmp ult i32 %46, -8
  %and.i = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond78.i = or i1 %tobool.not.i, %47
  br i1 %or.cond78.i, label %lor.lhs.false26.i, label %if.end.i.do.end35.i_crit_edge

if.end.i.do.end35.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35.i

lor.lhs.false26.i:                                ; preds = %if.end.i
  %48 = add i32 %44, -25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %48)
  %49 = icmp ult i32 %48, -8
  %and30.i = and i32 %32, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  %or.cond79.i = or i1 %tobool31.not.i, %49
  br i1 %or.cond79.i, label %if.end63, label %lor.lhs.false26.i.do.end35.i_crit_edge

lor.lhs.false26.i.do.end35.i_crit_edge:           ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end35.i

do.end35.i:                                       ; preds = %lor.lhs.false26.i.do.end35.i_crit_edge, %if.end.i.do.end35.i_crit_edge
  %pci_dev36.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 17
  %50 = ptrtoint ptr %pci_dev36.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pci_dev36.i, align 8
  %dev37.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37.i, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.22) #11
  br label %cleanup

if.end63:                                         ; preds = %lor.lhs.false26.i
  %v4l_settings.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 24
  %52 = ptrtoint ptr %v4l_settings.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %32, ptr %v4l_settings.i, align 4
  %height41.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 24, i32 1
  %53 = ptrtoint ptr %height41.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %34, ptr %height41.i, align 4
  %format43.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 24, i32 3
  %54 = ptrtoint ptr %format43.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx14, ptr %format43.i, align 4
  %bytesperline.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 24, i32 2
  %55 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mul.i, ptr %bytesperline.i, align 4
  %bytesperline65 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %56 = ptrtoint ptr %bytesperline65 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %mul.i, ptr %bytesperline65, align 4
  %57 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buffer_size.i, align 8
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %59 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %sizeimage, align 4
  %60 = load ptr, ptr %format43.i, align 4
  %colorspace = getelementptr inbounds %struct.zoran_format, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %colorspace, align 4
  %colorspace69 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %63 = ptrtoint ptr %colorspace69 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %colorspace69, align 4
  %64 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %timing, align 8
  %ha71 = getelementptr inbounds %struct.tvnorm, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %ha71 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %ha71, align 2
  %conv72 = zext i16 %67 to i32
  %68 = load i32, ptr %height41.i, align 4
  %mul = shl i32 %68, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv72)
  %cmp75 = icmp sgt i32 %mul, %conv72
  %field = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  br i1 %cmp75, label %if.then77, label %if.else

if.then77:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 4, ptr %field, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 2, ptr %field, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then77, %do.end35.i, %do.end.i, %do.end, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ -22, %do.end ], [ 0, %if.else ], [ 0, %if.then77 ], [ -22, %do.end.i ], [ -22, %do.end35.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zoran_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %__fh, ptr noundef %fmt) #1 align 64 {
entry:
  %settings.i = alloca %struct.zoran_jpg_settings, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 1196444237, label %if.then
    i32 1329743698, label %entry.if.end11_crit_edge
    i32 1363298130, label %if.end11.fold.split
    i32 1346520914, label %if.end11.fold.split63
    i32 1380075346, label %if.end11.fold.split64
    i32 861030210, label %if.end11.fold.split65
    i32 877807426, label %if.end11.fold.split66
    i32 876758866, label %if.end11.fold.split67
    i32 1448695129, label %if.end11.fold.split68
    i32 1498831189, label %if.end11.fold.split69
  ]

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %settings.i) #8
  %7 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1196444237, i32 %8)
  %cmp.not.i = icmp eq i32 %8, 1196444237
  br i1 %cmp.not.i, label %if.end.i, label %if.then.zoran_try_fmt_vid_out.exit_crit_edge

if.then.zoran_try_fmt_vid_out.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %zoran_try_fmt_vid_out.exit

if.end.i:                                         ; preds = %if.then
  %jpg_settings.i = getelementptr inbounds %struct.zoran, ptr %6, i32 0, i32 26
  %9 = call ptr @memcpy(ptr %settings.i, ptr %jpg_settings.i, i32 180)
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height.i, align 4
  %mul.i = shl i32 %11, 1
  %timing.i = getelementptr inbounds %struct.zoran, ptr %6, i32 0, i32 14
  %12 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %timing.i, align 8
  %ha.i = getelementptr inbounds %struct.tvnorm, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %ha.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ha.i, align 2
  %conv.i = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %conv.i)
  %cmp3.i = icmp ugt i32 %mul.i, %conv.i
  %spec.select.i = select i1 %cmp3.i, i32 1, i32 2
  %16 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings.i, i32 0, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.select.i, ptr %16, align 4
  %18 = ptrtoint ptr %settings.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %settings.i, align 4
  %img_height.i = getelementptr inbounds %struct.zoran, ptr %6, i32 0, i32 26, i32 9
  %19 = ptrtoint ptr %img_height.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %img_height.i, align 4
  %div.i = sdiv i32 %20, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %div.i)
  %cmp11.not.i = icmp ugt i32 %11, %div.i
  %.sink1.i = select i1 %cmp11.not.i, i32 1, i32 2
  %21 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings.i, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink1.i, ptr %21, align 4
  %23 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fmt1, align 4
  %img_width.i = getelementptr inbounds %struct.zoran, ptr %6, i32 0, i32 26, i32 8
  %25 = ptrtoint ptr %img_width.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %img_width.i, align 8
  %div19.i = sdiv i32 %26, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %div19.i)
  %cmp20.not.i = icmp ugt i32 %24, %div19.i
  br i1 %cmp20.not.i, label %if.else23.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %hor_dcm.i = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings.i, i32 0, i32 1
  %27 = ptrtoint ptr %hor_dcm.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %hor_dcm.i, align 4
  br label %if.end36.i

if.else23.i:                                      ; preds = %if.end.i
  %div28.i = sdiv i32 %26, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %div28.i)
  %cmp29.not.i = icmp ugt i32 %24, %div28.i
  %hor_dcm34.i = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings.i, i32 0, i32 1
  br i1 %cmp29.not.i, label %if.else33.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %hor_dcm34.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %hor_dcm34.i, align 4
  br label %if.end36.i

if.else33.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %hor_dcm34.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %hor_dcm34.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.else33.i, %if.then31.i, %if.then22.i
  %spec.select3.i = select i1 %cmp3.i, i32 2, i32 1
  %30 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings.i, i32 0, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %spec.select3.i, ptr %30, align 4
  %hor_dcm44.i = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings.i, i32 0, i32 1
  %32 = ptrtoint ptr %hor_dcm44.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hor_dcm44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp45.i = icmp sgt i32 %33, 1
  br i1 %cmp45.i, label %if.then47.i, label %if.else62.i

if.then47.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %timing.i, align 8
  %wa.i = getelementptr inbounds %struct.tvnorm, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %wa.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %wa.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %37)
  %cmp50.i = icmp eq i16 %37, 720
  %cond.i = select i1 %cmp50.i, i32 8, i32 0
  %img_x.i = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings.i, i32 0, i32 6
  %38 = ptrtoint ptr %img_x.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond.i, ptr %img_x.i, align 4
  %39 = ptrtoint ptr %wa.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %wa.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %40)
  %cmp55.i = icmp eq i16 %40, 720
  %narrow.i = select i1 %cmp55.i, i16 704, i16 %40
  br label %if.end68.i

if.else62.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %img_x63.i = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings.i, i32 0, i32 6
  %41 = ptrtoint ptr %img_x63.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %img_x63.i, align 4
  %42 = ptrtoint ptr %timing.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %timing.i, align 8
  %wa65.i = getelementptr inbounds %struct.tvnorm, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %wa65.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %wa65.i, align 2
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.else62.i, %if.then47.i
  %conv66.sink.in.i = phi i16 [ %narrow.i, %if.then47.i ], [ %45, %if.else62.i ]
  %conv66.sink.i = zext i16 %conv66.sink.in.i to i32
  %46 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings.i, i32 0, i32 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv66.sink.i, ptr %46, align 4
  %call69.i = call i32 @zoran_check_jpg_settings(ptr noundef %6, ptr noundef nonnull %settings.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool.not.i, label %if.end71.i, label %if.end68.i.zoran_try_fmt_vid_out.exit_crit_edge

if.end68.i.zoran_try_fmt_vid_out.exit_crit_edge:  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zoran_try_fmt_vid_out.exit

if.end71.i:                                       ; preds = %if.end68.i
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %46, align 4
  %50 = ptrtoint ptr %hor_dcm44.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hor_dcm44.i, align 4
  %div74.i = sdiv i32 %49, %51
  %52 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %div74.i, ptr %fmt1, align 4
  %img_height77.i = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings.i, i32 0, i32 9
  %53 = ptrtoint ptr %img_height77.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %img_height77.i, align 4
  %mul78.i = shl i32 %54, 1
  %55 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %16, align 4
  %57 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %21, align 4
  %mul81.i = mul i32 %58, %56
  %div82.i = sdiv i32 %mul78.i, %mul81.i
  %59 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div82.i, ptr %height.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp86.i = icmp eq i32 %56, 1
  %odd_even.i = getelementptr inbounds %struct.zoran, ptr %6, i32 0, i32 26, i32 5
  %60 = ptrtoint ptr %odd_even.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %odd_even.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool90.not.i = icmp eq i32 %61, 0
  %cond91.i = select i1 %tobool90.not.i, i32 6, i32 5
  %cond97.i = select i1 %tobool90.not.i, i32 3, i32 2
  %cond97.sink.i = select i1 %cmp86.i, i32 %cond91.i, i32 %cond97.i
  %62 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %cond97.sink.i, ptr %62, align 4
  %mul1.i.i = mul i32 %mul81.i, %51
  %conv2.i.i = and i32 %mul1.i.i, 255
  %div3.i.i = udiv i32 524288, %conv2.i.i
  %dec.i.i = add nsw i32 %div3.i.i, -1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %if.end71.i
  %result.020.i.i = phi i32 [ %shl.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ 2, %if.end71.i ]
  %num.019.i.i = phi i32 [ %shr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %dec.i.i, %if.end71.i ]
  %shr.i.i = lshr i32 %num.019.i.i, 1
  %shl.i.i = shl i32 %result.020.i.i, 1
  %tobool.not.i.i = icmp ult i32 %num.019.i.i, 2
  br i1 %tobool.not.i.i, label %zoran_v4l2_calc_bufsize.exit.i, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

zoran_v4l2_calc_bufsize.exit.i:                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jpg_bufsize to i32))
  %64 = load i32, ptr @jpg_bufsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i.i, i32 %64)
  %cmp.i.i = icmp ugt i32 %shl.i.i, %64
  %65 = call i32 @llvm.umax.i32(i32 %shl.i.i, i32 8192) #8
  %retval.0.i.i = select i1 %cmp.i.i, i32 %64, i32 %65
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %66 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %retval.0.i.i, ptr %sizeimage.i, align 4
  %buffer_size.i = getelementptr inbounds %struct.zoran, ptr %6, i32 0, i32 23
  %67 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %retval.0.i.i, ptr %buffer_size.i, align 8
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %68 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %bytesperline.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %69 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %colorspace.i, align 4
  br label %zoran_try_fmt_vid_out.exit

zoran_try_fmt_vid_out.exit:                       ; preds = %zoran_v4l2_calc_bufsize.exit.i, %if.end68.i.zoran_try_fmt_vid_out.exit_crit_edge, %if.then.zoran_try_fmt_vid_out.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %zoran_v4l2_calc_bufsize.exit.i ], [ -22, %if.then.zoran_try_fmt_vid_out.exit_crit_edge ], [ %call69.i, %if.end68.i.zoran_try_fmt_vid_out.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %settings.i) #8
  br label %cleanup

if.end11.fold.split:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11.fold.split63:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11.fold.split64:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11.fold.split65:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11.fold.split66:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11.fold.split67:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11.fold.split68:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11.fold.split69:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.end11:                                         ; preds = %if.end11.fold.split69, %if.end11.fold.split68, %if.end11.fold.split67, %if.end11.fold.split66, %if.end11.fold.split65, %if.end11.fold.split64, %if.end11.fold.split63, %if.end11.fold.split, %entry.if.end11_crit_edge
  %i.061.lcssa = phi i32 [ 0, %entry.if.end11_crit_edge ], [ 1, %if.end11.fold.split ], [ 2, %if.end11.fold.split63 ], [ 3, %if.end11.fold.split64 ], [ 4, %if.end11.fold.split65 ], [ 5, %if.end11.fold.split66 ], [ 6, %if.end11.fold.split67 ], [ 7, %if.end11.fold.split68 ], [ 8, %if.end11.fold.split69 ]
  %fourcc13 = getelementptr [10 x %struct.zoran_format], ptr @zoran_formats, i32 0, i32 %i.061.lcssa, i32 1
  %70 = ptrtoint ptr %fourcc13 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %fourcc13, align 4
  %72 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %pixelformat, align 4
  %colorspace = getelementptr [10 x %struct.zoran_format], ptr @zoran_formats, i32 0, i32 %i.061.lcssa, i32 2
  %73 = ptrtoint ptr %colorspace to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %colorspace, align 4
  %colorspace18 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %75 = ptrtoint ptr %colorspace18 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %colorspace18, align 4
  %timing = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 14
  %76 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %timing, align 8
  %ha = getelementptr inbounds %struct.tvnorm, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %ha to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %ha, align 2
  %conv = zext i16 %79 to i32
  %height = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %80 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %height, align 4
  %mul = shl i32 %81, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv)
  %cmp20 = icmp ugt i32 %mul, %conv
  %spec.select = select i1 %cmp20, i32 4, i32 2
  %82 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %spec.select, ptr %82, align 4
  %depth = getelementptr [10 x %struct.zoran_format], ptr @zoran_formats, i32 0, i32 %i.061.lcssa, i32 3
  %84 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %depth, align 4
  %86 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %timing, align 8
  %wa = getelementptr inbounds %struct.tvnorm, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %wa to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %wa, align 2
  %conv30 = zext i16 %89 to i32
  %sub.off = add i32 %85, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.off)
  %90 = icmp ult i32 %sub.off, 8
  %cond = select i1 %90, i32 1, i32 2
  %ha36 = getelementptr inbounds %struct.tvnorm, ptr %87, i32 0, i32 5
  %91 = ptrtoint ptr %ha36 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %ha36, align 2
  %conv37 = zext i16 %92 to i32
  tail call void @v4l_bound_align_image(ptr noundef %fmt1, i32 noundef 32, i32 noundef %conv30, i32 noundef %cond, ptr noundef %height, i32 noundef 24, i32 noundef %conv37, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %zoran_try_fmt_vid_out.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %zoran_try_fmt_vid_out.exit ], [ 0, %if.end11 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zoran_g_std(ptr noundef %file, ptr nocapture noundef readnone %__fh, ptr nocapture noundef writeonly %std) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %norm = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %norm to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %norm, align 8
  %4 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %std, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zoran_s_std(ptr noundef %file, ptr nocapture noundef readnone %__fh, i64 noundef %std) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %running = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %norms.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 13, i32 11
  %4 = ptrtoint ptr %norms.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %norms.i, align 8
  %and.i = and i64 %5, %std
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, i64 noundef %std) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %and1.i = and i64 %std, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.zoran, ptr %1, i32 0, i32 13, i32 12, i32 2
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end.i
  %and5.i = and i64 %std, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and5.i)
  %tobool6.not.i = icmp eq i64 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else12.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx10.i = getelementptr %struct.zoran, ptr %1, i32 0, i32 13, i32 12, i32 1
  br label %if.end18.i

if.else12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %tvn14.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 13, i32 12
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else12.i, %if.then7.i, %if.then3.i
  %.sink.in.i = phi ptr [ %arrayidx10.i, %if.then7.i ], [ %tvn14.i, %if.else12.i ], [ %arrayidx.i, %if.then3.i ]
  %8 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.sink.i = load ptr, ptr %.sink.in.i, align 4
  %timing11.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 14
  %9 = ptrtoint ptr %timing11.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %.sink.i, ptr %timing11.i, align 8
  %decoder.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %decoder.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %decoder.i, align 4
  %tobool19.not.i = icmp eq ptr %11, null
  br i1 %tobool19.not.i, label %if.end18.i.if.end41.i_crit_edge, label %if.else21.i

if.end18.i.if.end41.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.else21.i:                                      ; preds = %if.end18.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %video.i, align 4
  %tobool22.not.i = icmp eq ptr %15, null
  br i1 %tobool22.not.i, label %if.else21.i.if.end41.i_crit_edge, label %land.lhs.true.i

if.else21.i.if.end41.i_crit_edge:                 ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

land.lhs.true.i:                                  ; preds = %if.else21.i
  %s_std.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %s_std.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %s_std.i, align 4
  %tobool25.not.i = icmp eq ptr %17, null
  br i1 %tobool25.not.i, label %land.lhs.true.i.if.end41.i_crit_edge, label %if.else27.i

land.lhs.true.i.if.end41.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i

if.else27.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool28.not.i = icmp eq ptr %18, null
  br i1 %tobool28.not.i, label %if.else27.i.if.else34.i_crit_edge, label %land.lhs.true29.i

if.else27.i.if.else34.i_crit_edge:                ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else34.i

land.lhs.true29.i:                                ; preds = %if.else27.i
  %s_std30.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %s_std30.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %s_std30.i, align 4
  %tobool31.not.i = icmp eq ptr %20, null
  br i1 %tobool31.not.i, label %land.lhs.true29.i.if.else34.i_crit_edge, label %land.lhs.true29.i.if.end41.sink.split.i_crit_edge

land.lhs.true29.i.if.end41.sink.split.i_crit_edge: ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.sink.split.i

land.lhs.true29.i.if.else34.i_crit_edge:          ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else34.i

if.else34.i:                                      ; preds = %land.lhs.true29.i.if.else34.i_crit_edge, %if.else27.i.if.else34.i_crit_edge
  br label %if.end41.sink.split.i

if.end41.sink.split.i:                            ; preds = %if.else34.i, %land.lhs.true29.i.if.end41.sink.split.i_crit_edge
  %.sink108.i = phi ptr [ %17, %if.else34.i ], [ %20, %land.lhs.true29.i.if.end41.sink.split.i_crit_edge ]
  %call38.i = tail call i32 %.sink108.i(ptr noundef nonnull %11, i64 noundef %std) #8
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end41.sink.split.i, %land.lhs.true.i.if.end41.i_crit_edge, %if.else21.i.if.end41.i_crit_edge, %if.end18.i.if.end41.i_crit_edge
  %encoder.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %encoder.i, align 8
  %tobool44.not.i = icmp eq ptr %22, null
  br i1 %tobool44.not.i, label %if.end41.i.if.end70.i_crit_edge, label %if.else46.i

if.end41.i.if.end70.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70.i

if.else46.i:                                      ; preds = %if.end41.i
  %ops47.i = getelementptr inbounds %struct.v4l2_subdev, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %ops47.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops47.i, align 4
  %video48.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %video48.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %video48.i, align 4
  %tobool49.not.i = icmp eq ptr %26, null
  br i1 %tobool49.not.i, label %if.else46.i.if.end70.i_crit_edge, label %land.lhs.true50.i

if.else46.i.if.end70.i_crit_edge:                 ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70.i

land.lhs.true50.i:                                ; preds = %if.else46.i
  %s_std_output.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %s_std_output.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %s_std_output.i, align 4
  %tobool53.not.i = icmp eq ptr %28, null
  br i1 %tobool53.not.i, label %land.lhs.true50.i.if.end70.i_crit_edge, label %if.else55.i

land.lhs.true50.i.if.end70.i_crit_edge:           ; preds = %land.lhs.true50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70.i

if.else55.i:                                      ; preds = %land.lhs.true50.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool56.not.i = icmp eq ptr %29, null
  br i1 %tobool56.not.i, label %if.else55.i.if.else63.i_crit_edge, label %land.lhs.true57.i

if.else55.i.if.else63.i_crit_edge:                ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else63.i

land.lhs.true57.i:                                ; preds = %if.else55.i
  %s_std_output58.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %s_std_output58.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %s_std_output58.i, align 4
  %tobool59.not.i = icmp eq ptr %31, null
  br i1 %tobool59.not.i, label %land.lhs.true57.i.if.else63.i_crit_edge, label %land.lhs.true57.i.if.end70.sink.split.i_crit_edge

land.lhs.true57.i.if.end70.sink.split.i_crit_edge: ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end70.sink.split.i

land.lhs.true57.i.if.else63.i_crit_edge:          ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else63.i

if.else63.i:                                      ; preds = %land.lhs.true57.i.if.else63.i_crit_edge, %if.else55.i.if.else63.i_crit_edge
  br label %if.end70.sink.split.i

if.end70.sink.split.i:                            ; preds = %if.else63.i, %land.lhs.true57.i.if.end70.sink.split.i_crit_edge
  %.sink109.i = phi ptr [ %28, %if.else63.i ], [ %31, %land.lhs.true57.i.if.end70.sink.split.i_crit_edge ]
  %call67.i = tail call i32 %.sink109.i(ptr noundef nonnull %22, i64 noundef %std) #8
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.end70.sink.split.i, %land.lhs.true50.i.if.end70.i_crit_edge, %if.else46.i.if.end70.i_crit_edge, %if.end41.i.if.end70.i_crit_edge
  %norm72.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 22
  %32 = ptrtoint ptr %norm72.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %std, ptr %norm72.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end70.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %if.end70.i ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zoran_enum_input(ptr noundef %file, ptr nocapture noundef readnone %__fh, ptr noundef %inp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %inp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %inp, align 8
  %inputs = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 13, i32 9
  %4 = ptrtoint ptr %inputs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %inputs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp ult i32 %3, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %name = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 1
  %name3 = getelementptr %struct.zoran, ptr %1, i32 0, i32 13, i32 10, i32 %3, i32 1
  %call5 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name3, i32 noundef 32) #8
  %type = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %type, align 4
  %std = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 5
  %7 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 16756991, ptr %std, align 8
  %decoder = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %decoder, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %video, align 4
  %tobool7.not = icmp eq ptr %13, null
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %g_input_status = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %g_input_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %g_input_status, align 4
  %tobool10.not = icmp eq ptr %15, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %if.else12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else12:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool13.not = icmp eq ptr %16, null
  br i1 %tobool13.not, label %if.else12.if.else20_crit_edge, label %land.lhs.true14

if.else12.if.else20_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else20

land.lhs.true14:                                  ; preds = %if.else12
  %g_input_status15 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %g_input_status15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %g_input_status15, align 4
  %tobool16.not = icmp eq ptr %18, null
  br i1 %tobool16.not, label %land.lhs.true14.if.else20_crit_edge, label %land.lhs.true14.cleanup.sink.split_crit_edge

land.lhs.true14.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true14.if.else20_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else20

if.else20:                                        ; preds = %land.lhs.true14.if.else20_crit_edge, %if.else12.if.else20_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else20, %land.lhs.true14.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %15, %if.else20 ], [ %18, %land.lhs.true14.cleanup.sink.split_crit_edge ]
  %status = getelementptr inbounds %struct.v4l2_input, ptr %inp, i32 0, i32 6
  %call19 = tail call i32 %.sink(ptr noundef nonnull %9, ptr noundef %status) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zoran_g_input(ptr noundef %file, ptr nocapture noundef readnone %__fh, ptr nocapture noundef writeonly %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %input1 = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %input1, align 8
  %4 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %input, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zoran_s_input(ptr noundef %file, ptr nocapture noundef readnone %__fh, i32 noundef %input) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %running = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %input1.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %input1.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %input)
  %cmp.i = icmp eq i32 %5, %input
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %input)
  %cmp2.i = icmp slt i32 %input, 0
  br i1 %cmp2.i, label %if.end.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %inputs.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 13, i32 9
  %6 = ptrtoint ptr %inputs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inputs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %input)
  %cmp3.not.i = icmp sgt i32 %7, %input
  br i1 %cmp3.not.i, label %if.end5.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %pci_dev.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %pci_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci_dev.i, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32, i32 noundef %input) #11
  br label %cleanup

if.end5.i:                                        ; preds = %lor.lhs.false.i
  %10 = ptrtoint ptr %input1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %input, ptr %input1.i, align 8
  %decoder.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %decoder.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %decoder.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end5.i.cleanup_crit_edge, label %if.else.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i:                                        ; preds = %if.end5.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %video.i, align 4
  %tobool8.not.i = icmp eq ptr %16, null
  br i1 %tobool8.not.i, label %if.else.i.cleanup_crit_edge, label %land.lhs.true.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.else.i
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool11.not.i = icmp eq ptr %18, null
  br i1 %tobool11.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.else13.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else13.i:                                      ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool14.not.i = icmp eq ptr %19, null
  br i1 %tobool14.not.i, label %if.else13.i.if.else22.i_crit_edge, label %land.lhs.true15.i

if.else13.i.if.else22.i_crit_edge:                ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else22.i

land.lhs.true15.i:                                ; preds = %if.else13.i
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %tobool17.not.i = icmp eq ptr %21, null
  br i1 %tobool17.not.i, label %land.lhs.true15.i.if.else22.i_crit_edge, label %if.then18.i

land.lhs.true15.i.if.else22.i_crit_edge:          ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else22.i

if.then18.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.zoran, ptr %1, i32 0, i32 13, i32 10, i32 %input
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %call.i4 = tail call i32 %21(ptr noundef nonnull %12, i32 noundef %23, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

if.else22.i:                                      ; preds = %land.lhs.true15.i.if.else22.i_crit_edge, %if.else13.i.if.else22.i_crit_edge
  %arrayidx28.i = getelementptr %struct.zoran, ptr %1, i32 0, i32 13, i32 10, i32 %input
  %24 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx28.i, align 4
  %call30.i = tail call i32 %18(ptr noundef nonnull %12, i32 noundef %25, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else22.i, %if.then18.i, %land.lhs.true.i.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ -22, %do.end.i ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.else.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.end5.i.cleanup_crit_edge ], [ 0, %if.else22.i ], [ 0, %if.then18.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zoran_g_selection(ptr noundef %file, ptr nocapture noundef readnone %__fh, ptr nocapture noundef %sel) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %6 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb18
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %img_y = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 26, i32 7
  %9 = ptrtoint ptr %img_y to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %img_y, align 4
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %top, align 4
  %img_x = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 26, i32 6
  %12 = ptrtoint ptr %img_x to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %img_x, align 8
  %14 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %r, align 4
  %img_width = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 26, i32 8
  %15 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %img_width, align 8
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %width, align 4
  %img_height = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 26, i32 9
  %18 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %img_height, align 4
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %r10 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %top11 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %top11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %top11, align 4
  %22 = ptrtoint ptr %r10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %r10, align 4
  %width15 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %width15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 32, ptr %width15, align 4
  %height17 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %height17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 24, ptr %height17, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %r19 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %top20 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %top20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %top20, align 4
  %26 = ptrtoint ptr %r19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %r19, align 4
  %timing = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %timing, align 8
  %wa = getelementptr inbounds %struct.tvnorm, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %wa to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %wa, align 2
  %conv = zext i16 %30 to i32
  %width24 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %width24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv, ptr %width24, align 4
  %32 = load ptr, ptr %timing, align 8
  %ha = getelementptr inbounds %struct.tvnorm, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %ha to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ha, align 2
  %conv26 = zext i16 %34 to i32
  %height28 = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %height28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv26, ptr %height28, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb18, %sw.bb9, %sw.bb, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.bb18 ], [ 0, %sw.bb9 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zoran_s_selection(ptr noundef %file, ptr nocapture noundef readnone %__fh, ptr nocapture noundef readonly %sel) #1 align 64 {
entry:
  %settings = alloca %struct.zoran_jpg_settings, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %settings) #8
  %2 = ptrtoint ptr %sel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sel, align 4
  %.off = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3
  %width = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %height = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end6

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 1
  %8 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %target, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7.not = icmp eq i32 %9, 0
  br i1 %cmp7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %map_mode = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 64
  %10 = ptrtoint ptr %map_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %map_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp10 = icmp eq i32 %11, 1
  br i1 %cmp10, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %jpg_settings = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 26
  %14 = call ptr @memcpy(ptr %settings, ptr %jpg_settings, i32 180)
  %15 = ptrtoint ptr %r to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %r, align 4
  %img_x = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 6
  %17 = ptrtoint ptr %img_x to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %img_x, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %sel, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %top to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %top, align 4
  %img_y = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 7
  %20 = ptrtoint ptr %img_y to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %img_y, align 4
  %img_width = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 8
  %21 = ptrtoint ptr %img_width to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %5, ptr %img_width, align 4
  %img_height = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 9
  %22 = ptrtoint ptr %img_height to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %7, ptr %img_height, align 4
  %call19 = call i32 @zoran_check_jpg_settings(ptr noundef %1, ptr noundef nonnull %settings, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %23 = call ptr @memcpy(ptr %jpg_settings, ptr %settings, i32 180)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end12.cleanup_crit_edge, %do.end, %if.end6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end22 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %call19, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %settings) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zoran_g_parm(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %parm) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zoran_s_fmt_vid_out(ptr noundef %file, ptr nocapture noundef %fmt) unnamed_addr #1 align 64 {
entry:
  %printformat = alloca i32, align 4
  %settings = alloca %struct.zoran_jpg_settings, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %printformat) #8
  %fmt1 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixelformat, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = ptrtoint ptr %printformat to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %printformat, align 4
  call void @llvm.lifetime.start.p0(i64 180, ptr nonnull %settings) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zoran_s_fmt_vid_out.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zoran_s_fmt_vid_out, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fmt1, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %12 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pixelformat, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zoran_s_fmt_vid_out.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %9, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %printformat) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %14 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixelformat, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1196444237, i32 %15)
  %cmp.not = icmp eq i32 %15, 1196444237
  br i1 %cmp.not, label %if.end12, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %height14 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %height14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %height14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %if.end12.cleanup_crit_edge, label %lor.lhs.false

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end12
  %18 = ptrtoint ptr %fmt1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fmt1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool18.not = icmp eq i32 %19, 0
  br i1 %tobool18.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end20

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false
  %jpg_settings = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 26
  %20 = call ptr @memcpy(ptr %settings, ptr %jpg_settings, i32 180)
  %mul = shl i32 %17, 1
  %timing = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %timing, align 8
  %ha = getelementptr inbounds %struct.tvnorm, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %ha to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ha, align 2
  %conv = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv)
  %cmp23 = icmp ugt i32 %mul, %conv
  %spec.select = select i1 %cmp23, i32 1, i32 2
  %25 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 3
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.select, ptr %25, align 4
  %27 = ptrtoint ptr %settings to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %settings, align 4
  %img_height = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 26, i32 9
  %28 = ptrtoint ptr %img_height to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %img_height, align 4
  %div = sdiv i32 %29, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div)
  %cmp31.not = icmp ugt i32 %17, %div
  %.sink3 = select i1 %cmp31.not, i32 1, i32 2
  %30 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %.sink3, ptr %30, align 4
  %img_width = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 26, i32 8
  %32 = ptrtoint ptr %img_width to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %img_width, align 8
  %div40 = sdiv i32 %33, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %div40)
  %cmp41.not = icmp ugt i32 %19, %div40
  br i1 %cmp41.not, label %if.else44, label %if.then43

if.then43:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %hor_dcm = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 1
  %34 = ptrtoint ptr %hor_dcm to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %hor_dcm, align 4
  br label %if.end57

if.else44:                                        ; preds = %if.end20
  %div49 = sdiv i32 %33, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %div49)
  %cmp50.not = icmp ugt i32 %19, %div49
  %hor_dcm55 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 1
  br i1 %cmp50.not, label %if.else54, label %if.then52

if.then52:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %hor_dcm55 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %hor_dcm55, align 4
  br label %if.end57

if.else54:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %hor_dcm55 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %hor_dcm55, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else54, %if.then52, %if.then43
  %37 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp59 = icmp eq i32 %38, 1
  %spec.select6 = select i1 %cmp59, i32 2, i32 1
  %39 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %spec.select6, ptr %39, align 4
  %hor_dcm65 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 1
  %41 = ptrtoint ptr %hor_dcm65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hor_dcm65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp66 = icmp sgt i32 %42, 1
  br i1 %cmp66, label %if.then68, label %if.else83

if.then68:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %timing, align 8
  %wa = getelementptr inbounds %struct.tvnorm, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %wa to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %wa, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %46)
  %cmp71 = icmp eq i16 %46, 720
  %cond = select i1 %cmp71, i32 8, i32 0
  %img_x = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 6
  %47 = ptrtoint ptr %img_x to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %cond, ptr %img_x, align 4
  %48 = ptrtoint ptr %wa to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %wa, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %49)
  %cmp76 = icmp eq i16 %49, 720
  %narrow = select i1 %cmp76, i16 704, i16 %49
  br label %if.end89

if.else83:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %img_x84 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 6
  %50 = ptrtoint ptr %img_x84 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %img_x84, align 4
  %51 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %timing, align 8
  %wa86 = getelementptr inbounds %struct.tvnorm, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %wa86 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %wa86, align 2
  br label %if.end89

if.end89:                                         ; preds = %if.else83, %if.then68
  %conv87.sink.in = phi i16 [ %narrow, %if.then68 ], [ %54, %if.else83 ]
  %conv87.sink = zext i16 %conv87.sink.in to i32
  %55 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 8
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv87.sink, ptr %55, align 4
  %call90 = call i32 @zoran_check_jpg_settings(ptr noundef %1, ptr noundef nonnull %settings, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end89.cleanup_crit_edge

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end93:                                         ; preds = %if.end89
  %57 = call ptr @memcpy(ptr %jpg_settings, ptr %settings, i32 180)
  %58 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %59)
  %cmp95 = icmp eq i32 %59, 2
  %spec.select7 = select i1 %cmp95, i32 2, i32 3
  %60 = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 64
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %spec.select7, ptr %60, align 8
  %hor_dcm.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 26, i32 1
  %62 = ptrtoint ptr %hor_dcm.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %hor_dcm.i, align 4
  %ver_dcm.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 26, i32 2
  %64 = ptrtoint ptr %ver_dcm.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ver_dcm.i, align 4
  %mul.i = mul i32 %65, %63
  %tmp_dcm.i = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 26, i32 3
  %66 = ptrtoint ptr %tmp_dcm.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %tmp_dcm.i, align 4
  %mul1.i = mul i32 %mul.i, %67
  %conv2.i = and i32 %mul1.i, 255
  %div3.i = udiv i32 524288, %conv2.i
  %dec.i = add nsw i32 %div3.i, -1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end93
  %result.020.i = phi i32 [ %shl.i, %while.body.i.while.body.i_crit_edge ], [ 2, %if.end93 ]
  %num.019.i = phi i32 [ %shr.i, %while.body.i.while.body.i_crit_edge ], [ %dec.i, %if.end93 ]
  %shr.i = lshr i32 %num.019.i, 1
  %shl.i = shl i32 %result.020.i, 1
  %tobool.not.i = icmp ult i32 %num.019.i, 2
  br i1 %tobool.not.i, label %zoran_v4l2_calc_bufsize.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

zoran_v4l2_calc_bufsize.exit:                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jpg_bufsize to i32))
  %68 = load i32, ptr @jpg_bufsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %68)
  %cmp.i = icmp ugt i32 %shl.i, %68
  %69 = call i32 @llvm.umax.i32(i32 %shl.i, i32 8192) #8
  %retval.0.i1 = select i1 %cmp.i, i32 %68, i32 %69
  %buffer_size = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 23
  %70 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %retval.0.i1, ptr %buffer_size, align 8
  %71 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %55, align 4
  %73 = ptrtoint ptr %hor_dcm65 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hor_dcm65, align 4
  %div105 = sdiv i32 %72, %74
  %75 = ptrtoint ptr %fmt1 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %div105, ptr %fmt1, align 4
  %img_height108 = getelementptr inbounds %struct.zoran_jpg_settings, ptr %settings, i32 0, i32 9
  %76 = ptrtoint ptr %img_height108 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %img_height108, align 4
  %mul109 = shl i32 %77, 1
  %78 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %25, align 4
  %80 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %30, align 4
  %mul112 = mul i32 %81, %79
  %div113 = sdiv i32 %mul109, %mul112
  %82 = ptrtoint ptr %height14 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %div113, ptr %height14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %79)
  %cmp117 = icmp eq i32 %79, 1
  %odd_even = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 26, i32 5
  %83 = ptrtoint ptr %odd_even to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %odd_even, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool121.not = icmp eq i32 %84, 0
  %cond122 = select i1 %tobool121.not, i32 6, i32 5
  %cond128 = select i1 %tobool121.not, i32 3, i32 2
  %cond128.sink = select i1 %cmp117, i32 %cond122, i32 %cond128
  %85 = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 3
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %cond128.sink, ptr %85, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 4
  %87 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %bytesperline, align 4
  %88 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %buffer_size, align 8
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5
  %90 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %fmt, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %91 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %colorspace, align 4
  br label %cleanup

cleanup:                                          ; preds = %zoran_v4l2_calc_bufsize.exit, %if.end89.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %zoran_v4l2_calc_bufsize.exit ], [ -22, %do.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ %call90, %if.end89.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 180, ptr nonnull %settings) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %printformat) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zoran_check_jpg_settings(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr_vb2_queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %buffer_size = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %buffer_size, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zr_vb2_queue_setup.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zr_vb2_queue_setup, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !129

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbuffers, align 4
  %8 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nplanes, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zr_vb2_queue_setup.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.38, i32 noundef %7, i32 noundef %9) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %buf_in_reserve = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 60
  %10 = ptrtoint ptr %buf_in_reserve to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %buf_in_reserve, align 8
  %11 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nbuffers, align 4
  %min_buffers_needed = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 15
  %13 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %min_buffers_needed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp = icmp ult i32 %12, %14
  br i1 %cmp, label %if.then4, label %do.end.if.end6_crit_edge

do.end.if.end6_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %nbuffers, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %do.end.if.end6_crit_edge
  %16 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool7.not = icmp eq i32 %17, 0
  br i1 %tobool7.not, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %3)
  %cmp9 = icmp ult i32 %19, %3
  %. = select i1 %cmp9, i32 -22, i32 0
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %nplanes, align 4
  %21 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %3, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then8
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %., %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @zr_vb2_prepare(ptr nocapture noundef readonly %vb) #7 align 64 {
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
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %4 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i, label %entry.vb2_plane_size.exit_crit_edge, label %if.then.i

entry.vb2_plane_size.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vb2_plane_size.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %6 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length.i, align 8
  br label %vb2_plane_size.exit

vb2_plane_size.exit:                              ; preds = %if.then.i, %entry.vb2_plane_size.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.then.i ], [ 0, %entry.vb2_plane_size.exit_crit_edge ]
  %buffer_size = getelementptr inbounds %struct.zoran, ptr %3, i32 0, i32 23
  %8 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %buffer_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %9)
  %cmp = icmp ult i32 %retval.0.i, %9
  br i1 %cmp, label %vb2_plane_size.exit.cleanup_crit_edge, label %if.end

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prepared = getelementptr inbounds %struct.zoran, ptr %3, i32 0, i32 55
  %10 = ptrtoint ptr %prepared to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %prepared, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %vb2_plane_size.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zr_vb2_start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %stat_com = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %stat_com to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stat_com, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777216, ptr %3, align 4
  %arrayidx1 = getelementptr %struct.zoran, ptr %1, i32 0, i32 67, i32 0
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arrayidx1, align 4
  %6 = load ptr, ptr %stat_com, align 8
  %arrayidx.1 = getelementptr i32, ptr %6, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16777216, ptr %arrayidx.1, align 4
  %arrayidx1.1 = getelementptr %struct.zoran, ptr %1, i32 0, i32 67, i32 1
  %8 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx1.1, align 4
  %9 = load ptr, ptr %stat_com, align 8
  %arrayidx.2 = getelementptr i32, ptr %9, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16777216, ptr %arrayidx.2, align 4
  %arrayidx1.2 = getelementptr %struct.zoran, ptr %1, i32 0, i32 67, i32 2
  %11 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx1.2, align 4
  %12 = load ptr, ptr %stat_com, align 8
  %arrayidx.3 = getelementptr i32, ptr %12, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16777216, ptr %arrayidx.3, align 4
  %arrayidx1.3 = getelementptr %struct.zoran, ptr %1, i32 0, i32 67, i32 3
  %14 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %arrayidx1.3, align 4
  %map_mode = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 64
  %15 = ptrtoint ptr %map_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %map_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp2.not = icmp eq i32 %16, 1
  %pci_dev17 = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 17
  %17 = ptrtoint ptr %pci_dev17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci_dev17, align 8
  %dev18 = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  br i1 %cmp2.not, label %do.end16, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev18, ptr noundef nonnull @.str.40) #11
  tail call void @zr36057_restart(ptr noundef %1) #8
  tail call void @zoran_init_hardware(ptr noundef %1) #8
  %19 = ptrtoint ptr %map_mode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %map_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp4 = icmp eq i32 %20, 2
  %. = select i1 %cmp4, i32 2, i32 1
  tail call void @zr36057_enable_jpg(ptr noundef %1, i32 noundef %.) #8
  tail call void @zoran_feed_stat_com(ptr noundef %1) #8
  tail call void @jpeg_start(ptr noundef %1) #8
  %21 = ptrtoint ptr %map_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %map_mode, align 8
  %running = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 59
  %23 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %running, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !130
  tail call void @arm_heavy_mb() #8
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 19
  %24 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %25, i32 64
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !131
  %27 = or i32 %26, 1
  %28 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr12 = getelementptr i8, ptr %29, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %27) #8, !srcloc !121
  br label %cleanup

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev18, ptr noundef nonnull @.str.44) #11
  tail call void @zr36057_restart(ptr noundef %1) #8
  tail call void @zoran_init_hardware(ptr noundef %1) #8
  tail call void @zr36057_enable_jpg(ptr noundef %1, i32 noundef 0) #8
  tail call void @zr36057_set_memgrab(ptr noundef %1, i32 noundef 1) #8
  %30 = ptrtoint ptr %map_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %map_mode, align 8
  %running20 = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 59
  %32 = ptrtoint ptr %running20 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %running20, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !132
  tail call void @arm_heavy_mb() #8
  %zr36057_mem26 = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 19
  %33 = ptrtoint ptr %zr36057_mem26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %zr36057_mem26, align 8
  %add.ptr27 = getelementptr i8, ptr %34, i32 64
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !133
  %36 = or i32 %35, 1
  %37 = ptrtoint ptr %zr36057_mem26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %zr36057_mem26, align 8
  %add.ptr33 = getelementptr i8, ptr %38, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %36) #8, !srcloc !121
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %do.end
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zr_vb2_stop_streaming(ptr nocapture noundef readonly %vq) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !134
  tail call void @arm_heavy_mb() #8
  %zr36057_mem = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !119
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !135
  %5 = and i32 %4, -2
  %6 = ptrtoint ptr %zr36057_mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %zr36057_mem, align 8
  %add.ptr3 = getelementptr i8, ptr %7, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #8, !srcloc !121
  %map_mode = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 64
  %8 = ptrtoint ptr %map_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %map_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @zr36057_enable_jpg(ptr noundef %1, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @zr36057_set_memgrab(ptr noundef %1, i32 noundef 0) #8
  %running = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 59
  %10 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %running, align 4
  tail call void @zoran_set_pci_master(ptr noundef %1, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pass_through to i32))
  %11 = load i32, ptr @pass_through, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then4, label %if.end.if.end59_crit_edge

if.end.if.end59_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then4:                                         ; preds = %if.end
  %decoder = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %decoder, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %if.then4.if.end27_crit_edge, label %if.else

if.then4.if.end27_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.else:                                          ; preds = %if.then4
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %video, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %if.else.if.end27_crit_edge, label %land.lhs.true

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true:                                    ; preds = %if.else
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %s_stream, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %land.lhs.true.if.end27_crit_edge, label %if.else12

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.else12:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool13.not = icmp eq ptr %20, null
  br i1 %tobool13.not, label %if.else12.if.else20_crit_edge, label %land.lhs.true14

if.else12.if.else20_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else20

land.lhs.true14:                                  ; preds = %if.else12
  %s_stream15 = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %s_stream15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %s_stream15, align 4
  %tobool16.not = icmp eq ptr %22, null
  br i1 %tobool16.not, label %land.lhs.true14.if.else20_crit_edge, label %land.lhs.true14.if.end27.sink.split_crit_edge

land.lhs.true14.if.end27.sink.split_crit_edge:    ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.sink.split

land.lhs.true14.if.else20_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else20

if.else20:                                        ; preds = %land.lhs.true14.if.else20_crit_edge, %if.else12.if.else20_crit_edge
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.else20, %land.lhs.true14.if.end27.sink.split_crit_edge
  %.sink = phi ptr [ %19, %if.else20 ], [ %22, %land.lhs.true14.if.end27.sink.split_crit_edge ]
  %call24 = tail call i32 %.sink(ptr noundef nonnull %13, i32 noundef 0) #8
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %land.lhs.true.if.end27_crit_edge, %if.else.if.end27_crit_edge, %if.then4.if.end27_crit_edge
  %encoder = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %encoder, align 8
  %tobool31.not = icmp eq ptr %24, null
  br i1 %tobool31.not, label %if.end27.if.end59_crit_edge, label %if.else33

if.end27.if.end59_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.else33:                                        ; preds = %if.end27
  %ops34 = getelementptr inbounds %struct.v4l2_subdev, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %ops34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops34, align 4
  %video35 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %video35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %video35, align 4
  %tobool36.not = icmp eq ptr %28, null
  br i1 %tobool36.not, label %if.else33.if.end59_crit_edge, label %land.lhs.true37

if.else33.if.end59_crit_edge:                     ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

land.lhs.true37:                                  ; preds = %if.else33
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %tobool40.not = icmp eq ptr %30, null
  br i1 %tobool40.not, label %land.lhs.true37.if.end59_crit_edge, label %if.else42

land.lhs.true37.if.end59_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.else42:                                        ; preds = %land.lhs.true37
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 3), align 4
  %tobool43.not = icmp eq ptr %31, null
  br i1 %tobool43.not, label %if.else42.if.else50_crit_edge, label %land.lhs.true44

if.else42.if.else50_crit_edge:                    ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else50

land.lhs.true44:                                  ; preds = %if.else42
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool46.not = icmp eq ptr %33, null
  br i1 %tobool46.not, label %land.lhs.true44.if.else50_crit_edge, label %land.lhs.true44.if.end59.sink.split_crit_edge

land.lhs.true44.if.end59.sink.split_crit_edge:    ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59.sink.split

land.lhs.true44.if.else50_crit_edge:              ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else50

if.else50:                                        ; preds = %land.lhs.true44.if.else50_crit_edge, %if.else42.if.else50_crit_edge
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %if.else50, %land.lhs.true44.if.end59.sink.split_crit_edge
  %.sink164 = phi ptr [ %30, %if.else50 ], [ %33, %land.lhs.true44.if.end59.sink.split_crit_edge ]
  %call49 = tail call i32 %.sink164(ptr noundef nonnull %24, i32 noundef 2, i32 noundef 0, i32 noundef 0) #8
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %land.lhs.true37.if.end59_crit_edge, %if.else33.if.end59_crit_edge, %if.end27.if.end59_crit_edge, %if.end.if.end59_crit_edge
  %stat_com = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 36
  %pci_dev = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end59
  %j.0160 = phi i32 [ 0, %if.end59 ], [ %inc, %for.inc.for.body_crit_edge ]
  %34 = ptrtoint ptr %stat_com to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %stat_com, align 8
  %arrayidx = getelementptr i32, ptr %35, i32 %j.0160
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16777216, ptr %arrayidx, align 4
  %arrayidx61 = getelementptr %struct.zoran, ptr %1, i32 0, i32 67, i32 %j.0160
  %37 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx61, align 4
  %tobool62.not = icmp eq ptr %38, null
  br i1 %tobool62.not, label %for.body.for.inc_crit_edge, label %if.end64

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end64:                                         ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @zr_vb2_stop_streaming.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@zr_vb2_stop_streaming, %if.then73)) #8
          to label %do.end76 [label %if.then73], !srcloc !129

if.then73:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @zr_vb2_stop_streaming.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %j.0160) #8
  br label %do.end76

do.end76:                                         ; preds = %if.then73, %if.end64
  tail call void @vb2_buffer_done(ptr noundef nonnull %38, i32 noundef 6) #8
  %41 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %arrayidx61, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end76, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0160, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %do.body80, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body80:                                        ; preds = %for.inc
  %queued_bufs_lock = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 66
  %call84 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock) #8
  %queued_bufs = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 65
  %42 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %queued_bufs, align 4
  %cmp.i.not163 = icmp eq ptr %43, %queued_bufs
  br i1 %cmp.i.not163, label %do.body80.while.end_crit_edge, label %while.body.lr.ph

do.body80.while.end_crit_edge:                    ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.body80
  %buf_in_reserve = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 60
  br label %while.body

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %while.body.lr.ph
  %44 = phi ptr [ %43, %while.body.lr.ph ], [ %56, %list_del.exit.while.body_crit_edge ]
  %add.ptr95 = getelementptr i8, ptr %44, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %44) #8
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %44, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr95, i32 noundef 6) #8
  %53 = ptrtoint ptr %buf_in_reserve to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %buf_in_reserve, align 8
  %dec = add i32 %54, -1
  store i32 %dec, ptr %buf_in_reserve, align 8
  %55 = ptrtoint ptr %queued_bufs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %queued_bufs, align 4
  %cmp.i.not = icmp eq ptr %56, %queued_bufs
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %do.body80.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock, i32 noundef %call84) #8
  %buf_in_reserve99 = getelementptr inbounds %struct.zoran, ptr %1, i32 0, i32 60
  %57 = ptrtoint ptr %buf_in_reserve99 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %buf_in_reserve99, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool100.not = icmp eq i32 %58, 0
  br i1 %tobool100.not, label %while.end.if.end108_crit_edge, label %do.end104

while.end.if.end108_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end108

do.end104:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pci_dev, align 8
  %dev106 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev106, ptr noundef nonnull @.str.48, i32 noundef %58) #11
  br label %if.end108

if.end108:                                        ; preds = %do.end104, %while.end.if.end108_crit_edge
  %61 = ptrtoint ptr %map_mode to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 1, ptr %map_mode, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @zr_vb2_queue(ptr noundef %vb) #1 align 64 {
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
  %queued_bufs_lock = getelementptr inbounds %struct.zoran, ptr %3, i32 0, i32 66
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queued_bufs_lock) #8
  %queue = getelementptr inbounds %struct.zr_buffer, ptr %vb, i32 0, i32 1
  %queued_bufs = getelementptr inbounds %struct.zoran, ptr %3, i32 0, i32 65
  %prev.i = getelementptr inbounds %struct.zoran, ptr %3, i32 0, i32 65, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %5, ptr noundef %queued_bufs) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %queue, ptr %prev.i, align 4
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %queued_bufs, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.zr_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %queue, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %buf_in_reserve = getelementptr inbounds %struct.zoran, ptr %3, i32 0, i32 60
  %10 = ptrtoint ptr %buf_in_reserve to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %buf_in_reserve, align 8
  %inc = add i32 %11, 1
  store i32 %inc, ptr %buf_in_reserve, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queued_bufs_lock, i32 noundef %call4) #8
  %running = getelementptr inbounds %struct.zoran, ptr %3, i32 0, i32 59
  %12 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp8 = icmp eq i32 %13, 2
  br i1 %cmp8, label %if.then, label %list_add_tail.exit.if.end_crit_edge

list_add_tail.exit.if.end_crit_edge:              ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @zoran_feed_stat_com(ptr noundef %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %list_add_tail.exit.if.end_crit_edge
  %queued = getelementptr inbounds %struct.zoran, ptr %3, i32 0, i32 56
  %14 = ptrtoint ptr %queued to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %queued, align 8
  %inc10 = add i32 %15, 1
  store i32 %inc10, ptr %queued, align 8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @zr36057_restart(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @zoran_init_hardware(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @zr36057_enable_jpg(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @zoran_feed_stat_com(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @jpeg_start(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @zr36057_set_memgrab(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @zoran_set_pci_master(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !86, !88, !89, !90, !92, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107}
!llvm.module.flags = !{!108, !109, !110, !111, !112, !113, !114, !115}
!llvm.ident = !{!116}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 62, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 70, i32 11}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 77, i32 11}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 85, i32 11}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 92, i32 11}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 99, i32 11}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 106, i32 11}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 113, i32 11}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 120, i32 11}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 127, i32 11}
!20 = !{ptr @zoran_formats, !21, !"zoran_formats", i1 false, i1 false}
!21 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 60, i32 27}
!22 = !{ptr @zoran_template, !23, !"zoran_template", i1 false, i1 false}
!23 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 794, i32 27}
!24 = !{ptr @zoran_queue_init.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 1015, i32 2}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @zoran_fops, !28, !"zoran_fops", i1 false, i1 false}
!28 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 783, i32 42}
!29 = !{ptr @zoran_ioctl_ops, !30, !"zoran_ioctl_ops", i1 false, i1 false}
!30 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 750, i32 36}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 256, i32 23}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 257, i32 49}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 538, i32 3}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @zoran_s_fmt_vid_cap._entry, !36, !"_entry", i1 false, i1 false}
!42 = !{ptr @zoran_s_fmt_vid_cap._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 451, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @zoran_s_fmt_vid_out.__UNIQUE_ID_ddebug300, !44, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 176, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @zoran_v4l_set_format._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @zoran_v4l_set_format._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 186, i32 3}
!55 = !{ptr @zoran_v4l_set_format._entry.23, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @zoran_v4l_set_format._entry_ptr.25, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 194, i32 3}
!59 = !{ptr @zoran_v4l_set_format._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @zoran_v4l_set_format._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 210, i32 3}
!63 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @zoran_set_norm._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @zoran_set_norm._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 236, i32 3}
!68 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @zoran_set_input._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @zoran_set_input._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 669, i32 3}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @zoran_g_selection._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @zoran_g_selection._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 715, i32 3}
!78 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @zoran_s_selection._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @zoran_s_selection._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!83 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @zr_video_qops, !85, !"zr_video_qops", i1 false, i1 false}
!85 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 1001, i32 29}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 808, i32 2}
!88 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @zr_vb2_queue_setup.__UNIQUE_ID_ddebug301, !87, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 933, i32 3}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @zr_vb2_start_streaming._entry, !91, !"_entry", i1 false, i1 false}
!95 = !{ptr @zr_vb2_start_streaming._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 947, i32 2}
!98 = !{ptr @zr_vb2_start_streaming._entry.43, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @zr_vb2_start_streaming._entry_ptr.45, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 983, i32 3}
!102 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @zr_vb2_stop_streaming.__UNIQUE_ID_ddebug303, !101, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/media/zoran/zoran_driver.c", i32 997, i32 3}
!106 = !{ptr @zr_vb2_stop_streaming._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @zr_vb2_stop_streaming._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{i32 1, !"wchar_size", i32 2}
!109 = !{i32 1, !"min_enum_size", i32 4}
!110 = !{i32 8, !"branch-target-enforcement", i32 0}
!111 = !{i32 8, !"sign-return-address", i32 0}
!112 = !{i32 8, !"sign-return-address-all", i32 0}
!113 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!114 = !{i32 7, !"uwtable", i32 1}
!115 = !{i32 7, !"frame-pointer", i32 2}
!116 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{i64 2156792852}
!119 = !{i64 5406781}
!120 = !{i64 2156793908}
!121 = !{i64 5406363}
!122 = !{i64 2156799776}
!123 = !{i64 2156800832}
!124 = !{i64 2156801135}
!125 = !{i64 2156801632}
!126 = !{i64 2156802378}
!127 = !{i64 2156804158}
!128 = !{i64 2156805208}
!129 = !{i64 2148979979, i64 2148979984, i64 2148979997, i64 2148980041, i64 2148980075, i64 2148980096}
!130 = !{i64 2156808489}
!131 = !{i64 2156809539}
!132 = !{i64 2156812715}
!133 = !{i64 2156813765}
!134 = !{i64 2156815368}
!135 = !{i64 2156816424}
