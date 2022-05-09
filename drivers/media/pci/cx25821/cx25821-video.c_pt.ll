; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx25821/cx25821-video.c_pt.bc'
source_filename = "../drivers/media/pci/cx25821/cx25821-video.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.sram_channel = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.cx25821_fmt = type { i32, i32, i32, i32 }
%struct.cx25821_board = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cx25821_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, %struct.cx25821_riscmem, ptr }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.95, i32 }
%union.anon.95 = type { i32 }
%struct.cx25821_riscmem = type { i32, ptr, ptr, i32 }
%struct.cx25821_dev = type { %struct.v4l2_device, ptr, i8, i8, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32, [3 x %struct.cx25821_i2c], i32, %struct.mutex, [12 x %struct.cx25821_channel], i32, [32 x i8], i32, i64, i16, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, %struct.work_struct, ptr, %struct.spinlock, [2 x %struct.cx25821_video_out_data] }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.cx25821_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.cx25821_channel = type { i32, ptr, %struct.v4l2_ctrl_handler, %struct.video_device, %struct.cx25821_dmaqueue, %struct.vb2_queue, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.cx25821_dmaqueue = type { %struct.list_head, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx25821_video_out_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.120, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.120 = type { ptr }
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
%struct.v4l2_input = type { i32, [32 x i8], i32, i32, i32, i64, i32, i32, [3 x i32] }

@__UNIQUE_ID_description300 = internal constant [66 x i8] c"cx25821.description=v4l2 driver module for cx25821 based TV cards\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [52 x i8] c"cx25821.author=Hiep Huynh <hiep.huynh@conexant.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [47 x i8] c"cx25821.file=drivers/media/pci/cx25821/cx25821\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [20 x i8] c"cx25821.license=GPL\00", section ".modinfo", align 1
@__param_str_video_nr = internal constant [17 x i8] c"cx25821.video_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_video_nr = internal constant %struct.kparam_array { i32 2, i32 4, ptr null, ptr @param_ops_int, ptr @video_nr }, align 4
@__param_video_nr = internal constant %struct.kernel_param { ptr @__param_str_video_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_video_nr } }, section "__param", align 4
@__UNIQUE_ID_video_nrtype304 = internal constant [39 x i8] c"cx25821.parmtype=video_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_nr305 = internal constant [43 x i8] c"cx25821.parm=video_nr:video device numbers\00", section ".modinfo", align 1
@__param_str_video_debug = internal constant [20 x i8] c"cx25821.video_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@video_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_video_debug = internal constant %struct.kernel_param { ptr @__param_str_video_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @video_debug } }, section "__param", align 4
@__UNIQUE_ID_video_debugtype306 = internal constant [33 x i8] c"cx25821.parmtype=video_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_video_debug307 = internal constant [55 x i8] c"cx25821.parm=video_debug:enable debug messages [video]\00", section ".modinfo", align 1
@__param_str_irq_debug = internal constant [18 x i8] c"cx25821.irq_debug\00", align 1
@irq_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_irq_debug = internal constant %struct.kernel_param { ptr @__param_str_irq_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @irq_debug } }, section "__param", align 4
@__UNIQUE_ID_irq_debugtype308 = internal constant [31 x i8] c"cx25821.parmtype=irq_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_irq_debug309 = internal constant [59 x i8] c"cx25821.parm=irq_debug:enable debug messages [IRQ handler]\00", section ".modinfo", align 1
@cx25821_video_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014cx25821: %s, %s: video risc op code error\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx25821_video_irq\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/pci/cx25821/cx25821-video.c\00", [54 x i8] zeroinitializer }, align 32
@cx25821_video_irq._entry_ptr = internal global ptr @cx25821_video_irq._entry, section ".printk_index", align 4
@cx25821_video_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->slock\00", [20 x i8] zeroinitializer }, align 32
@cx25821_video_register._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cx25821_video:688:(hdl)->_lock\00", [33 x i8] zeroinitializer }, align 32
@cx25821_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @cx25821_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@cx25821_sram_channels = external dso_local constant [0 x %struct.sram_channel], align 4
@cx25821_video_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @cx25821_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @cx25821_buffer_prepare, ptr @cx25821_buffer_finish, ptr null, ptr @cx25821_start_streaming, ptr @cx25821_stop_streaming, ptr @cx25821_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@cx25821_video_device = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @video_fops, i32 83886081, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"cx25821-video\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 47103, ptr @video_device_release_empty, ptr @video_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s #%d\00", [25 x i8] zeroinitializer }, align 32
@video_nr = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 -1, i32 -1], [24 x i8] zeroinitializer }, align 32
@formats = internal constant { [2 x %struct.cx25821_fmt], [32 x i8] } { [2 x %struct.cx25821_fmt] [%struct.cx25821_fmt { i32 1345401945, i32 12, i32 1, i32 0 }, %struct.cx25821_fmt { i32 1448695129, i32 16, i32 1, i32 0 }], [32 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx25821\00", [24 x i8] zeroinitializer }, align 32
@cx25821_boards = external dso_local local_unnamed_addr global [0 x %struct.cx25821_board], align 4
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCIe:%s\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Composite\00", [22 x i8] zeroinitializer }, align 32
@vidioc_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016cx25821: Video input 0 is %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_log_status\00", [46 x i8] zeroinitializer }, align 32
@vidioc_log_status._entry_ptr = internal global ptr @vidioc_log_status._entry, section ".printk_index", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"streaming\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stopped\00", [24 x i8] zeroinitializer }, align 32
@video_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@video_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @cx25821_vidioc_querycap, ptr @cx25821_vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx25821_vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx25821_vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr @vb2_ioctl_create_bufs, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @cx25821_vidioc_g_std, ptr @cx25821_vidioc_s_std, ptr null, ptr @cx25821_vidioc_enum_input, ptr @cx25821_vidioc_g_input, ptr @cx25821_vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 1345401945, i64 1448695129]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1345401945, i64 1448695129]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1345401945, i64 1448695129]
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"video_debug\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 26, i32 21 }
@___asan_gen_.21 = private unnamed_addr constant [10 x i8] c"irq_debug\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 30, i32 21 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 99, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 675, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 688, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"cx25821_ctrl_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 574, i32 35 }
@___asan_gen_.51 = private unnamed_addr constant [19 x i8] c"cx25821_video_qops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 293, i32 29 }
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"cx25821_video_device\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 612, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 757, i32 44 }
@___asan_gen_.60 = private unnamed_addr constant [9 x i8] c"video_nr\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 20, i32 21 }
@___asan_gen_.63 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 36, i32 33 }
@___asan_gen_.67 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 1163, i32 7 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 427, i32 23 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 429, i32 25 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 518, i32 19 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 415, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [11 x i8] c"video_fops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 578, i32 42 }
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"video_ioctl_ops\00", align 1
@___asan_gen_.97 = private constant [45 x i8] c"../drivers/media/pci/cx25821/cx25821-video.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 588, i32 36 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_irq_debug309, ptr @__UNIQUE_ID_irq_debugtype308, ptr @__UNIQUE_ID_license303, ptr @__UNIQUE_ID_video_debug307, ptr @__UNIQUE_ID_video_debugtype306, ptr @__UNIQUE_ID_video_nr305, ptr @__UNIQUE_ID_video_nrtype304, ptr @__param_irq_debug, ptr @__param_video_debug, ptr @__param_video_nr, ptr @cx25821_video_irq._entry, ptr @cx25821_video_irq._entry_ptr, ptr @vidioc_log_status._entry, ptr @vidioc_log_status._entry_ptr, ptr @video_debug, ptr @irq_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cx25821_video_register.__key, ptr @.str.3, ptr @cx25821_video_register._key, ptr @.str.4, ptr @cx25821_ctrl_ops, ptr @cx25821_video_qops, ptr @cx25821_video_device, ptr @.str.5, ptr @video_nr, ptr @formats, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @video_fops, ptr @video_ioctl_ops], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_video_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_video_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_video_register._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx25821_video_device to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_nr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @formats to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @video_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx25821_start_video_dma(ptr noundef %dev, ptr nocapture readnone %q, ptr nocapture noundef readonly %buf, ptr noundef %channel) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bpl = getelementptr inbounds %struct.cx25821_buffer, ptr %buf, i32 0, i32 2
  %0 = ptrtoint ptr %bpl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bpl, align 8
  %dma = getelementptr inbounds %struct.cx25821_buffer, ptr %buf, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma, align 4
  %call = tail call i32 @cx25821_sram_channel_setup(ptr noundef %dev, ptr noundef %channel, i32 noundef %1, i32 noundef %3) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !89
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 7
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %gpcnt_ctl = getelementptr inbounds %struct.sram_channel, ptr %channel, i32 0, i32 15
  %6 = ptrtoint ptr %gpcnt_ctl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpcnt_ctl, align 4
  %shr = lshr i32 %7, 2
  %add.ptr = getelementptr i32, ptr %5, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 50331648) #9, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !91
  tail call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr5 = getelementptr i32, ptr %9, i32 65540
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #9, !srcloc !92
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !93
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %add.ptr12 = getelementptr i32, ptr %13, i32 65540
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #9, !srcloc !92
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  %i = getelementptr inbounds %struct.sram_channel, ptr %channel, i32 0, i32 1
  %16 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %i, align 4
  %shl = shl nuw i32 1, %17
  %or = or i32 %shl, %15
  %neg = xor i32 %or, -1
  %and = and i32 %11, %neg
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  %add.ptr19 = getelementptr i32, ptr %19, i32 65540
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #9, !srcloc !92
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  %22 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i, align 4
  %shl24 = shl nuw i32 1, %23
  %or25 = or i32 %shl24, %21
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr29 = getelementptr i32, ptr %25, i32 65540
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #9, !srcloc !92
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  %28 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %i, align 4
  %shl34 = shl nuw i32 1, %29
  %or35 = or i32 %shl34, %27
  %and36 = and i32 %or35, %or25
  %or37 = or i32 %and36, %and
  %30 = tail call i32 @llvm.bswap.i32(i32 %or37)
  %31 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lmmio, align 4
  %add.ptr39 = getelementptr i32, ptr %32, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %30) #9, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @arm_heavy_mb() #9
  %33 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lmmio, align 4
  %int_msk = getelementptr inbounds %struct.sram_channel, ptr %channel, i32 0, i32 11
  %35 = ptrtoint ptr %int_msk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %int_msk, align 4
  %shr46 = lshr i32 %36, 2
  %add.ptr47 = getelementptr i32, ptr %34, i32 %shr46
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !98
  %38 = or i32 %37, 285212672
  %39 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lmmio, align 4
  %41 = ptrtoint ptr %int_msk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %int_msk, align 4
  %shr55 = lshr i32 %42, 2
  %add.ptr56 = getelementptr i32, ptr %40, i32 %shr55
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %38) #9, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !99
  tail call void @arm_heavy_mb() #9
  %43 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lmmio, align 4
  %dma_ctl = getelementptr inbounds %struct.sram_channel, ptr %channel, i32 0, i32 14
  %45 = ptrtoint ptr %dma_ctl to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_ctl, align 4
  %shr61 = lshr i32 %46, 2
  %add.ptr62 = getelementptr i32, ptr %44, i32 %shr61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 285212672) #9, !srcloc !90
  %47 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lmmio, align 4
  %add.ptr66 = getelementptr i32, ptr %48, i32 278558
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  tail call void @arm_heavy_mb() #9
  %50 = and i32 %49, 16711679
  %51 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lmmio, align 4
  %add.ptr75 = getelementptr i32, ptr %52, i32 278558
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %50) #9, !srcloc !90
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx25821_sram_channel_setup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx25821_video_irq(ptr noundef %dev, i32 noundef %chan_num, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sram_channels = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %chan_num, i32 6
  %0 = ptrtoint ptr %sram_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sram_channels, align 4
  %lmmio = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %int_msk = getelementptr inbounds %struct.sram_channel, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %int_msk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %int_msk, align 4
  %shr = lshr i32 %5, 2
  %add.ptr = getelementptr i32, ptr %3, i32 %shr
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !92
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  %and = and i32 %7, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  tail call void @arm_heavy_mb() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %status)
  %9 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio, align 4
  %int_stat = getelementptr inbounds %struct.sram_channel, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %int_stat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %int_stat, align 4
  %shr3 = lshr i32 %12, 2
  %add.ptr4 = getelementptr i32, ptr %10, i32 %shr3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %8) #9, !srcloc !90
  %and5 = and i32 %status, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %do.body.if.end29_crit_edge, label %do.end9

do.body.if.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.end9:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 18
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, ptr noundef %14) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %15 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio, align 4
  %dma_ctl = getelementptr inbounds %struct.sram_channel, ptr %1, i32 0, i32 14
  %17 = ptrtoint ptr %dma_ctl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_ctl, align 4
  %shr19 = lshr i32 %18, 2
  %add.ptr20 = getelementptr i32, ptr %16, i32 %shr19
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  %20 = and i32 %19, -285212673
  %21 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio, align 4
  %23 = ptrtoint ptr %dma_ctl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_ctl, align 4
  %shr27 = lshr i32 %24, 2
  %add.ptr28 = getelementptr i32, ptr %22, i32 %shr27
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %20) #9, !srcloc !90
  tail call void @cx25821_sram_channel_dump(ptr noundef %dev, ptr noundef %1) #9
  br label %if.end29

if.end29:                                         ; preds = %do.end9, %do.body.if.end29_crit_edge
  %and30 = and i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.then32

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then32:                                        ; preds = %if.end29
  %i = getelementptr inbounds %struct.sram_channel, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %i, align 4
  %dma_vidq = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %26, i32 4
  %slock = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 45
  tail call void @_raw_spin_lock(ptr noundef %slock) #9
  %27 = ptrtoint ptr %dma_vidq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %dma_vidq, align 4
  %cmp.i.not = icmp eq ptr %28, %dma_vidq
  br i1 %cmp.i.not, label %if.then32.if.end45_crit_edge, label %if.then37

if.then32.if.end45_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then37:                                        ; preds = %if.then32
  %add.ptr40 = getelementptr i8, ptr %28, i32 -736
  %call.i = tail call i64 @ktime_get() #9
  %timestamp = getelementptr i8, ptr %28, i32 -712
  %29 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %call.i, ptr %timestamp, align 8
  %count = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %26, i32 4, i32 1
  %30 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count, align 4
  %inc = add i32 %31, 1
  store i32 %inc, ptr %count, align 4
  %sequence = getelementptr i8, ptr %28, i32 -272
  %32 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %sequence, align 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %28) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then37.list_del.exit_crit_edge

if.then37.list_del.exit_crit_edge:                ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %28, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then37.list_del.exit_crit_edge
  %39 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr40, i32 noundef 5) #9
  br label %if.end45

if.end45:                                         ; preds = %list_del.exit, %if.then32.if.end45_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %slock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end29.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end45 ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx25821_sram_channel_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx25821_video_unregister(ptr noundef %dev, i32 noundef %chan_num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 65540
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %3 = and i32 %2, -16777217
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %add.ptr3 = getelementptr i32, ptr %5, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %3) #9, !srcloc !90
  %flags.i = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %chan_num, i32 3, i32 17
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vdev = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %chan_num, i32 3
  tail call void @video_unregister_device(ptr noundef %vdev) #9
  %hdl = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %chan_num, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx25821_video_register(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tvnorm = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %tvnorm to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 4096, ptr %tvnorm, align 8
  %slock = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 45
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.3, ptr noundef nonnull @cx25821_video_register.__key, i16 noundef signext 3) #9
  %lmmio = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 7
  %lock = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 15
  %pci = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 1
  %name63 = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 18
  %nr = getelementptr inbounds %struct.cx25821_dev, ptr %dev, i32 0, i32 14
  %arrayidx181 = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 0
  %vdev1182 = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 0, i32 3
  %hdl2183 = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 0, i32 2
  br label %if.then5

if.then5:                                         ; preds = %for.inc.if.then5_crit_edge, %entry
  %hdl2187 = phi ptr [ %hdl2183, %entry ], [ %hdl2, %for.inc.if.then5_crit_edge ]
  %vdev1186 = phi ptr [ %vdev1182, %entry ], [ %vdev1, %for.inc.if.then5_crit_edge ]
  %arrayidx185 = phi ptr [ %arrayidx181, %entry ], [ %arrayidx, %for.inc.if.then5_crit_edge ]
  %i.0171184 = phi i32 [ 0, %entry ], [ %inc, %for.inc.if.then5_crit_edge ]
  %call6 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl2187, i32 noundef 4, ptr noundef nonnull @cx25821_video_register._key, ptr noundef nonnull @.str.4) #9
  %call7 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl2187, ptr noundef nonnull @cx25821_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 10000, i64 noundef 1, i64 noundef 6200) #9
  %call8 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl2187, ptr noundef nonnull @cx25821_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 10000, i64 noundef 1, i64 noundef 5000) #9
  %call9 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl2187, ptr noundef nonnull @cx25821_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 10000, i64 noundef 1, i64 noundef 5000) #9
  %call10 = tail call ptr @v4l2_ctrl_new_std(ptr noundef %hdl2187, ptr noundef nonnull @cx25821_ctrl_ops, i32 noundef 9963779, i64 noundef 0, i64 noundef 10000, i64 noundef 1, i64 noundef 5000) #9
  %error = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 2, i32 9
  %1 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool11.not = icmp eq i32 %2, 0
  br i1 %tobool11.not, label %if.end14, label %if.then5.while.body.lr.ph_crit_edge

if.then5.while.body.lr.ph_crit_edge:              ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

if.end14:                                         ; preds = %if.then5
  %call15 = tail call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl2187) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end22, label %if.end14.while.body.lr.ph_crit_edge

if.end14.while.body.lr.ph_crit_edge:              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

if.end22:                                         ; preds = %if.end14
  %arrayidx23 = getelementptr [0 x %struct.sram_channel], ptr @cx25821_sram_channels, i32 0, i32 %i.0171184
  %sram_channels = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 6
  %3 = ptrtoint ptr %sram_channels to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx23, ptr %sram_channels, align 4
  %width = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 9
  %4 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 720, ptr %width, align 8
  %field = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 8
  %5 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %field, align 4
  %6 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tvnorm, align 8
  %and = and i64 %7, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool25.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool25.not, i32 480, i32 576
  %8 = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 10
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spec.select, ptr %8, align 4
  %pixel_formats = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 11
  %10 = ptrtoint ptr %pixel_formats to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixel_formats, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp30 = icmp eq i32 %11, 5
  %.sink176 = select i1 %cmp30, ptr @formats, ptr getelementptr inbounds ([2 x %struct.cx25821_fmt], ptr @formats, i32 0, i32 1)
  %12 = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 7
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.sink176, ptr %12, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %16 = ptrtoint ptr %sram_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sram_channels, align 4
  %int_stat = getelementptr inbounds %struct.sram_channel, ptr %17, i32 0, i32 12
  %18 = ptrtoint ptr %int_stat to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %int_stat, align 4
  %shr = lshr i32 %19, 2
  %add.ptr = getelementptr i32, ptr %15, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #9, !srcloc !90
  %dma_vidq = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 4
  %20 = ptrtoint ptr %dma_vidq to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %dma_vidq, ptr %dma_vidq, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dma_vidq, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dma_vidq, ptr %prev.i, align 4
  %vidq = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 5
  %22 = ptrtoint ptr %vidq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %vidq, align 4
  %io_modes = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 5, i32 1
  %23 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 23, ptr %io_modes, align 4
  %gfp_flags = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 5, i32 14
  %24 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %gfp_flags, align 4
  %min_buffers_needed = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 5, i32 15
  %25 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %min_buffers_needed, align 4
  %drv_priv = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 5, i32 10
  %26 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx185, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 5, i32 12
  %27 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 768, ptr %buf_struct_size, align 4
  %ops = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 5, i32 7
  %28 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @cx25821_video_qops, ptr %ops, align 4
  %mem_ops = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 5, i32 8
  %29 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 5, i32 13
  %30 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8192, ptr %timestamp_flags, align 4
  %lock45 = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 5, i32 5
  %31 = ptrtoint ptr %lock45 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %lock, ptr %lock45, align 4
  %32 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pci, align 8
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %dev47 = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 5, i32 2
  %34 = ptrtoint ptr %dev47 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %dev46, ptr %dev47, align 4
  %call50 = tail call i32 @vb2_queue_init(ptr noundef %vidq) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end22.while.body.lr.ph_crit_edge, label %cond.false

if.end22.while.body.lr.ph_crit_edge:              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

cond.false:                                       ; preds = %if.end22
  %35 = call ptr @memcpy(ptr %vdev1186, ptr @cx25821_video_device, i32 1352)
  %v4l2_dev56 = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 3, i32 7
  %36 = ptrtoint ptr %v4l2_dev56 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dev, ptr %v4l2_dev56, align 4
  %ctrl_handler = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 3, i32 9
  %37 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %hdl2187, ptr %ctrl_handler, align 4
  %lock62 = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 3, i32 26
  %38 = ptrtoint ptr %lock62 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %lock, ptr %lock62, align 8
  %queue = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 3, i32 10
  %39 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %vidq, ptr %queue, align 8
  %name = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 3, i32 12
  %call65 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %name63, i32 noundef %i.0171184)
  %driver_data.i.i = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 3, i32 5, i32 8
  %40 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx185, ptr %driver_data.i.i, align 4
  %41 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr, align 8
  %arrayidx66 = getelementptr [2 x i32], ptr @video_nr, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx66, align 4
  %fops.i = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.0171184, i32 3, i32 3
  %45 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %fops.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %vdev1186, i32 noundef 0, i32 noundef %44, i32 noundef 1, ptr noundef %48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp68 = icmp slt i32 %call.i, 0
  br i1 %cmp68, label %cond.false.while.body.lr.ph_crit_edge, label %for.inc

cond.false.while.body.lr.ph_crit_edge:            ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %cond.false.while.body.lr.ph_crit_edge, %if.end22.while.body.lr.ph_crit_edge, %if.end14.while.body.lr.ph_crit_edge, %if.then5.while.body.lr.ph_crit_edge
  %err.1 = phi i32 [ %2, %if.then5.while.body.lr.ph_crit_edge ], [ %call15, %if.end14.while.body.lr.ph_crit_edge ], [ %call50, %if.end22.while.body.lr.ph_crit_edge ], [ %call.i, %cond.false.while.body.lr.ph_crit_edge ]
  br label %while.body

for.inc:                                          ; preds = %cond.false
  %inc = add nuw nsw i32 %i.0171184, 1
  %arrayidx = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %inc
  %vdev1 = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %inc, i32 3
  %hdl2 = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %inc, i32 2
  %cmp4 = icmp eq i32 %inc, 8
  br i1 %cmp4, label %do.body75, label %for.inc.if.then5_crit_edge

for.inc.if.then5_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

do.body75:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !109
  tail call void @arm_heavy_mb() #9
  %49 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lmmio, align 4
  %add.ptr79 = getelementptr i32, ptr %50, i32 65540
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !110
  %52 = or i32 %51, -16777216
  %53 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lmmio, align 4
  %add.ptr86 = getelementptr i32, ptr %54, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 %52) #9, !srcloc !90
  br label %cleanup88

while.body:                                       ; preds = %cx25821_video_unregister.exit.while.body_crit_edge, %while.body.lr.ph
  %i.1174 = phi i32 [ %i.0171184, %while.body.lr.ph ], [ %dec, %cx25821_video_unregister.exit.while.body_crit_edge ]
  %dec = add nsw i32 %i.1174, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %55 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lmmio, align 4
  %add.ptr.i = getelementptr i32, ptr %56, i32 65540
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %58 = and i32 %57, -16777217
  %59 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %lmmio, align 4
  %add.ptr3.i = getelementptr i32, ptr %60, i32 65540
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %58) #9, !srcloc !90
  %flags.i.i = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.1174, i32 3, i32 17
  %61 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i, label %while.body.cx25821_video_unregister.exit_crit_edge, label %if.then.i

while.body.cx25821_video_unregister.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx25821_video_unregister.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %vdev.i = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.1174, i32 3
  tail call void @video_unregister_device(ptr noundef %vdev.i) #9
  %hdl.i = getelementptr %struct.cx25821_dev, ptr %dev, i32 0, i32 16, i32 %i.1174, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl.i) #9
  br label %cx25821_video_unregister.exit

cx25821_video_unregister.exit:                    ; preds = %if.then.i, %while.body.cx25821_video_unregister.exit_crit_edge
  %cmp87 = icmp sgt i32 %i.1174, 0
  br i1 %cmp87, label %cx25821_video_unregister.exit.while.body_crit_edge, label %cx25821_video_unregister.exit.cleanup88_crit_edge

cx25821_video_unregister.exit.cleanup88_crit_edge: ; preds = %cx25821_video_unregister.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup88

cx25821_video_unregister.exit.while.body_crit_edge: ; preds = %cx25821_video_unregister.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

cleanup88:                                        ; preds = %cx25821_video_unregister.exit.cleanup88_crit_edge, %do.body75
  %retval.0 = phi i32 [ 0, %do.body75 ], [ %err.1, %cx25821_video_unregister.exit.cleanup88_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25821_s_ctrl(ptr nocapture noundef readonly %ctrl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -8
  %dev1 = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963779, label %sw.bb3
    i32 9963777, label %sw.bb7
    i32 9963778, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr, align 8
  %call = tail call i32 @medusa_set_brightness(ptr noundef %3, i32 noundef %8, i32 noundef %10) #9
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val4, align 4
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr, align 8
  %call6 = tail call i32 @medusa_set_hue(ptr noundef %3, i32 noundef %12, i32 noundef %14) #9
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val8, align 4
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr, align 8
  %call10 = tail call i32 @medusa_set_contrast(ptr noundef %3, i32 noundef %16, i32 noundef %18) #9
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %19 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val12, align 4
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr, align 8
  %call14 = tail call i32 @medusa_set_saturation(ptr noundef %3, i32 noundef %20, i32 noundef %22) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb11, %sw.bb7, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb11 ], [ 0, %sw.bb7 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @medusa_set_brightness(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @medusa_set_hue(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @medusa_set_contrast(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @medusa_set_saturation(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx25821_queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef %num_planes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %fmt = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fmt, align 8
  %depth = getelementptr inbounds %struct.cx25821_fmt, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %depth, align 4
  %width = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 8
  %mul = mul i32 %7, %5
  %height = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %mul1 = mul i32 %mul, %9
  %shr = lshr i32 %mul1, 3
  %10 = ptrtoint ptr %num_planes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %shr)
  %cmp = icmp ult i32 %13, %shr
  %cond = select i1 %cmp, i32 -22, i32 0
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %num_planes, align 4
  %15 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %cond, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25821_buffer_prepare(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %dev1 = getelementptr inbounds %struct.cx25821_channel, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #9
  %pixel_formats = getelementptr inbounds %struct.cx25821_channel, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %pixel_formats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixel_formats, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %7)
  %cmp = icmp eq i32 %7, 5
  %fmt = getelementptr inbounds %struct.cx25821_channel, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fmt, align 8
  %depth = getelementptr inbounds %struct.cx25821_fmt, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %depth, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %width = getelementptr inbounds %struct.cx25821_channel, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 8
  %mul = mul i32 %13, %11
  %shr = lshr i32 %mul, 3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shr7 = ashr i32 %11, 3
  %width8 = getelementptr inbounds %struct.cx25821_channel, ptr %3, i32 0, i32 9
  %14 = ptrtoint ptr %width8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %width8, align 8
  %mul9 = mul i32 %shr7, %15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %mul9.sink = phi i32 [ %shr, %if.then ], [ %mul9, %if.else ]
  %16 = getelementptr inbounds %struct.cx25821_buffer, ptr %vb, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul9.sink, ptr %16, align 8
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %18 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not.i = icmp eq i32 %19, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %if.end
  %height = getelementptr inbounds %struct.cx25821_channel, ptr %3, i32 0, i32 10
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %16, align 8
  %mul13 = mul i32 %23, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul13)
  %cmp14.not = icmp eq i32 %mul13, 0
  br i1 %cmp14.not, label %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.cleanup_crit_edge

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit.thread:                       ; preds = %if.end
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %24 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %length.i, align 8
  %height165 = getelementptr inbounds %struct.cx25821_channel, ptr %3, i32 0, i32 10
  %26 = ptrtoint ptr %height165 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %height165, align 4
  %28 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %16, align 8
  %mul13167 = mul i32 %29, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %mul13167)
  %cmp14168 = icmp ult i32 %25, %mul13167
  br i1 %cmp14168, label %vb2_plane_size.exit.thread.cleanup_crit_edge, label %if.then.i163

vb2_plane_size.exit.thread.cleanup_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i163:                                     ; preds = %vb2_plane_size.exit.thread
  %30 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %mul13167)
  %cmp1.i = icmp ult i32 %31, %mul13167
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i163.if.end42.i_crit_edge

if.then.i163.if.end42.i_crit_edge:                ; preds = %if.then.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i163
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !111

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1163, i32 noundef 9, ptr noundef null) #9
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %32 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i163.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %33, %if.then38.i ], [ %mul13167, %if.then.i163.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %34 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge
  %height169180 = phi ptr [ %height165, %if.end42.i ], [ %height, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge ]
  %field = getelementptr inbounds %struct.cx25821_channel, ptr %3, i32 0, i32 8
  %35 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %field, align 4
  %field21 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %vb, i32 0, i32 2
  %37 = ptrtoint ptr %field21 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %field21, align 4
  %38 = ptrtoint ptr %pixel_formats to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %pixel_formats, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %39)
  %cmp23 = icmp eq i32 %39, 5
  %40 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %16, align 8
  br i1 %cmp23, label %vb2_set_plane_payload.exit.if.end34_crit_edge, label %if.else26

vb2_set_plane_payload.exit.if.end34_crit_edge:    ; preds = %vb2_set_plane_payload.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.else26:                                        ; preds = %vb2_set_plane_payload.exit
  %use_cif_resolution = getelementptr inbounds %struct.cx25821_channel, ptr %3, i32 0, i32 12
  %42 = ptrtoint ptr %use_cif_resolution to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %use_cif_resolution, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not = icmp eq i32 %43, 0
  br i1 %tobool.not, label %if.else26.if.end34_crit_edge, label %if.then28

if.else26.if.end34_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then28:                                        ; preds = %if.else26
  %tvnorm = getelementptr inbounds %struct.cx25821_dev, ptr %5, i32 0, i32 20
  %44 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %tvnorm, align 8
  %and = and i64 %45, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool29.not = icmp eq i64 %and, 0
  br i1 %tobool29.not, label %if.else31, label %if.then28.if.end34_crit_edge

if.then28.if.end34_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.else31:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #11
  %cif_width = getelementptr inbounds %struct.cx25821_channel, ptr %3, i32 0, i32 13
  %46 = ptrtoint ptr %cif_width to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cif_width, align 8
  %shl = shl i32 %47, 1
  br label %if.end34

if.end34:                                         ; preds = %if.else31, %if.then28.if.end34_crit_edge, %if.else26.if.end34_crit_edge, %vb2_set_plane_payload.exit.if.end34_crit_edge
  %bpl_local.0 = phi i32 [ %shl, %if.else31 ], [ %41, %if.else26.if.end34_crit_edge ], [ 704, %if.then28.if.end34_crit_edge ], [ %41, %vb2_set_plane_payload.exit.if.end34_crit_edge ]
  %48 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %field, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %49, label %do.end84 [
    i32 2, label %sw.bb
    i32 3, label %sw.bb39
    i32 4, label %sw.bb46
    i32 5, label %sw.bb53
    i32 6, label %sw.bb65
  ]

sw.bb:                                            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %pci = getelementptr inbounds %struct.cx25821_dev, ptr %5, i32 0, i32 1
  %51 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pci, align 8
  %risc = getelementptr inbounds %struct.cx25821_buffer, ptr %vb, i32 0, i32 3
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %55 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %16, align 8
  %57 = ptrtoint ptr %height169180 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %height169180, align 4
  %call38 = tail call i32 @cx25821_risc_buffer(ptr noundef %52, ptr noundef %risc, ptr noundef %54, i32 noundef 0, i32 noundef -1, i32 noundef %56, i32 noundef 0, i32 noundef %58) #9
  br label %cleanup

sw.bb39:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %pci40 = getelementptr inbounds %struct.cx25821_dev, ptr %5, i32 0, i32 1
  %59 = ptrtoint ptr %pci40 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pci40, align 8
  %risc41 = getelementptr inbounds %struct.cx25821_buffer, ptr %vb, i32 0, i32 3
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  %63 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %16, align 8
  %65 = ptrtoint ptr %height169180 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %height169180, align 4
  %call45 = tail call i32 @cx25821_risc_buffer(ptr noundef %60, ptr noundef %risc41, ptr noundef %62, i32 noundef -1, i32 noundef 0, i32 noundef %64, i32 noundef 0, i32 noundef %66) #9
  br label %cleanup

sw.bb46:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %pci47 = getelementptr inbounds %struct.cx25821_dev, ptr %5, i32 0, i32 1
  %67 = ptrtoint ptr %pci47 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pci47, align 8
  %risc48 = getelementptr inbounds %struct.cx25821_buffer, ptr %vb, i32 0, i32 3
  %69 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i, align 4
  %71 = ptrtoint ptr %height169180 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %height169180, align 4
  %shr51 = lshr i32 %72, 1
  %call52 = tail call i32 @cx25821_risc_buffer(ptr noundef %68, ptr noundef %risc48, ptr noundef %70, i32 noundef 0, i32 noundef %bpl_local.0, i32 noundef %bpl_local.0, i32 noundef %bpl_local.0, i32 noundef %shr51) #9
  br label %cleanup

sw.bb53:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %pci54 = getelementptr inbounds %struct.cx25821_dev, ptr %5, i32 0, i32 1
  %73 = ptrtoint ptr %pci54 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pci54, align 8
  %risc55 = getelementptr inbounds %struct.cx25821_buffer, ptr %vb, i32 0, i32 3
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call.i, align 4
  %77 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %16, align 8
  %79 = ptrtoint ptr %height169180 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %height169180, align 4
  %shr59 = lshr i32 %80, 1
  %mul60 = mul i32 %shr59, %78
  %call64 = tail call i32 @cx25821_risc_buffer(ptr noundef %74, ptr noundef %risc55, ptr noundef %76, i32 noundef 0, i32 noundef %mul60, i32 noundef %78, i32 noundef 0, i32 noundef %shr59) #9
  br label %cleanup

sw.bb65:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %pci66 = getelementptr inbounds %struct.cx25821_dev, ptr %5, i32 0, i32 1
  %81 = ptrtoint ptr %pci66 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %pci66, align 8
  %risc67 = getelementptr inbounds %struct.cx25821_buffer, ptr %vb, i32 0, i32 3
  %83 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %call.i, align 4
  %85 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %16, align 8
  %87 = ptrtoint ptr %height169180 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %height169180, align 4
  %shr71 = lshr i32 %88, 1
  %mul72 = mul i32 %shr71, %86
  %call76 = tail call i32 @cx25821_risc_buffer(ptr noundef %82, ptr noundef %risc67, ptr noundef %84, i32 noundef %mul72, i32 noundef 0, i32 noundef %86, i32 noundef 0, i32 noundef %shr71) #9
  br label %cleanup

do.end84:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 211, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %sw.bb65, %sw.bb53, %sw.bb46, %sw.bb39, %sw.bb, %vb2_plane_size.exit.thread.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ -22, %do.end84 ], [ %call76, %sw.bb65 ], [ %call64, %sw.bb53 ], [ %call52, %sw.bb46 ], [ %call45, %sw.bb39 ], [ %call38, %sw.bb ], [ -22, %vb2_plane_size.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx25821_buffer_finish(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %dev4 = getelementptr inbounds %struct.cx25821_channel, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 4
  tail call void @cx25821_free_buffer(ptr noundef %5, ptr noundef %vb) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25821_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %dev1 = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %dma_vidq = getelementptr %struct.cx25821_dev, ptr %3, i32 0, i32 16, i32 %5, i32 4
  %6 = ptrtoint ptr %dma_vidq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dma_vidq, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 -736
  %count2 = getelementptr %struct.cx25821_dev, ptr %3, i32 0, i32 16, i32 %5, i32 4, i32 1
  %8 = ptrtoint ptr %count2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %count2, align 4
  %sram_channels = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %sram_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sram_channels, align 4
  %call = tail call i32 @cx25821_start_video_dma(ptr noundef %3, ptr undef, ptr noundef %add.ptr, ptr noundef %10)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx25821_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %dev1 = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 8
  %dma_vidq = getelementptr %struct.cx25821_dev, ptr %3, i32 0, i32 16, i32 %5, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !112
  tail call void @arm_heavy_mb() #9
  %lmmio = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %sram_channels = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %sram_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sram_channels, align 4
  %dma_ctl = getelementptr inbounds %struct.sram_channel, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %dma_ctl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_ctl, align 4
  %shr = lshr i32 %11, 2
  %add.ptr = getelementptr i32, ptr %7, i32 %shr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !90
  %slock = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 45
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #9
  %12 = ptrtoint ptr %dma_vidq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %dma_vidq, align 4
  %cmp.i.not21 = icmp eq ptr %13, %dma_vidq
  br i1 %cmp.i.not21, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %14 = phi ptr [ %24, %list_del.exit.while.body_crit_edge ], [ %13, %entry.while.body_crit_edge ]
  %add.ptr12 = getelementptr i8, ptr %14, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #9
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %21 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr12, i32 noundef 6) #9
  %23 = ptrtoint ptr %dma_vidq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %dma_vidq, align 4
  %cmp.i.not = icmp eq ptr %24, %dma_vidq
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx25821_buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %dev4 = getelementptr inbounds %struct.cx25821_channel, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 8
  %dma_vidq = getelementptr %struct.cx25821_dev, ptr %5, i32 0, i32 16, i32 %7, i32 4
  %dma = getelementptr inbounds %struct.cx25821_buffer, ptr %vb, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma, align 4
  %add = add i32 %9, 12
  %10 = tail call i32 @llvm.bswap.i32(i32 %add)
  %cpu = getelementptr inbounds %struct.cx25821_buffer, ptr %vb, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cpu, align 4
  %arrayidx6 = getelementptr i32, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %arrayidx6, align 4
  %jmp = getelementptr inbounds %struct.cx25821_buffer, ptr %vb, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %jmp, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 368, ptr %15, align 4
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma, align 4
  %add11 = add i32 %18, 12
  %19 = tail call i32 @llvm.bswap.i32(i32 %add11)
  %20 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %jmp, align 4
  %arrayidx14 = getelementptr i32, ptr %21, i32 1
  %22 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %19, ptr %arrayidx14, align 4
  %23 = load ptr, ptr %jmp, align 4
  %arrayidx17 = getelementptr i32, ptr %23, i32 2
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx17, align 4
  %25 = ptrtoint ptr %dma_vidq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %dma_vidq, align 4
  %cmp.i.not = icmp eq ptr %26, %dma_vidq
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %queue = getelementptr inbounds %struct.cx25821_buffer, ptr %vb, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.list_head, ptr %dma_vidq, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %28, ptr noundef %dma_vidq) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %queue, ptr %prev.i, align 4
  %30 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dma_vidq, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.cx25821_buffer, ptr %vb, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %queue, ptr %28, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %33 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cpu, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %or = or i32 %36, 1
  store i32 %or, ptr %34, align 4
  %prev24 = getelementptr inbounds %struct.list_head, ptr %dma_vidq, i32 0, i32 1
  %37 = ptrtoint ptr %prev24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev24, align 4
  %queue27 = getelementptr inbounds %struct.cx25821_buffer, ptr %vb, i32 0, i32 1
  %call.i.i49 = tail call zeroext i1 @__list_add_valid(ptr noundef %queue27, ptr noundef %38, ptr noundef %dma_vidq) #9
  br i1 %call.i.i49, label %if.end.i.i51, label %if.else.list_add_tail.exit52_crit_edge

if.else.list_add_tail.exit52_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit52

if.end.i.i51:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %prev24 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %queue27, ptr %prev24, align 4
  %40 = ptrtoint ptr %queue27 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dma_vidq, ptr %queue27, align 4
  %prev3.i.i50 = getelementptr inbounds %struct.cx25821_buffer, ptr %vb, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %prev3.i.i50 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i50, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %queue27, ptr %38, align 4
  br label %list_add_tail.exit52

list_add_tail.exit52:                             ; preds = %if.end.i.i51, %if.else.list_add_tail.exit52_crit_edge
  %43 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma, align 4
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %jmp32 = getelementptr i8, ptr %38, i32 20
  %46 = ptrtoint ptr %jmp32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %jmp32, align 4
  %arrayidx33 = getelementptr i32, ptr %47, i32 1
  %48 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %45, ptr %arrayidx33, align 4
  br label %if.end

if.end:                                           ; preds = %list_add_tail.exit52, %if.end.i.i, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx25821_risc_buffer(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx25821_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25821_vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %dev1 = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call2 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef nonnull @.str.7, i32 noundef 16) #9
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %board = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %board, align 8
  %arrayidx = getelementptr [0 x %struct.cx25821_board], ptr @cx25821_boards, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %7, i32 noundef 32) #9
  %pci = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci, align 8
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bus_info, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i.i)
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %14 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -2063597565, ptr %capabilities, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx25821_vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp ugt i32 %1, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end, !prof !113

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr [2 x %struct.cx25821_fmt], ptr @formats, i32 0, i32 %1
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
define internal i32 @cx25821_vidioc_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %width = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 8
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %height, align 4
  %height3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %height3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %height3, align 4
  %field = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %field, align 4
  %field5 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %field5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %field5, align 4
  %fmt6 = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %fmt6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fmt6, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %pixelformat, align 4
  %16 = load i32, ptr %width, align 8
  %17 = load ptr, ptr %fmt6, align 8
  %depth = getelementptr inbounds %struct.cx25821_fmt, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %depth, align 4
  %mul = mul i32 %19, %16
  %shr = lshr i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %20 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr, ptr %bytesperline, align 4
  %21 = load i32, ptr %height, align 4
  %mul14 = mul i32 %21, %shr
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %22 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %mul14, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %23 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %colorspace, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25821_vidioc_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %tvnorms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %dev = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %tvnorm = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tvnorm, align 8
  %6 = ptrtoint ptr %tvnorms to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %tvnorms, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25821_vidioc_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %tvnorms) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %dev1 = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %tvnorm = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tvnorm, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %tvnorms)
  %cmp = icmp eq i64 %5, %tvnorms
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %tvnorm to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %tvnorms, ptr %tvnorm, align 8
  %width = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 720, ptr %width, align 8
  %8 = load i64, ptr %tvnorm, align 8
  %and = and i64 %8, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 480, i32 576
  %height = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %height to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %height, align 4
  %call4 = tail call i32 @medusa_set_videostandard(ptr noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_log_status(ptr noundef %file, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %dev1 = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %sram_channels = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %sram_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sram_channels, align 4
  %lmmio = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %dma_ctl = getelementptr inbounds %struct.sram_channel, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %dma_ctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_ctl, align 4
  %shr = lshr i32 %9, 2
  %add.ptr = getelementptr i32, ptr %7, i32 %shr
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  %11 = and i32 %10, 285212672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool.not, ptr @.str.13, ptr @.str.12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %cond) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @medusa_set_videostandard(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %dev1 = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i.i, i32 0, i32 5, i32 8
  %4 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %dev1.i = getelementptr inbounds %struct.cx25821_channel, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1.i, align 4
  %fmt2.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field3.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %field3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %field3.i, align 4
  %pixelformat.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixelformat.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %11, label %entry.cleanup_crit_edge [
    i32 1345401945, label %entry.cx25821_format_by_fourcc.exit.i_crit_edge
    i32 1448695129, label %if.then.fold.split.i.i
  ]

entry.cx25821_format_by_fourcc.exit.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx25821_format_by_fourcc.exit.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.fold.split.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx25821_format_by_fourcc.exit.i

cx25821_format_by_fourcc.exit.i:                  ; preds = %if.then.fold.split.i.i, %entry.cx25821_format_by_fourcc.exit.i_crit_edge
  %i.07.lcssa.i.i = phi i32 [ 0, %entry.cx25821_format_by_fourcc.exit.i_crit_edge ], [ 1, %if.then.fold.split.i.i ]
  %add.ptr.i.i = getelementptr %struct.cx25821_fmt, ptr @formats, i32 %i.07.lcssa.i.i
  %cmp.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp.i, label %cx25821_format_by_fourcc.exit.i.cleanup_crit_edge, label %if.end.i

cx25821_format_by_fourcc.exit.i.cleanup_crit_edge: ; preds = %cx25821_format_by_fourcc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %cx25821_format_by_fourcc.exit.i
  %tvnorm.i = getelementptr inbounds %struct.cx25821_dev, ptr %7, i32 0, i32 20
  %13 = ptrtoint ptr %tvnorm.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %tvnorm.i, align 8
  %and.i = and i64 %14, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 480, i32 576
  %15 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fmt2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp7.not.i = icmp eq i32 %9, 3
  %spec.store.select.i = select i1 %cmp7.not.i, i32 3, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 352, i32 %16)
  %cmp10.i = icmp ult i32 %16, 352
  br i1 %cmp10.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %div62.i = lshr exact i32 %cond.i, 2
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %16)
  %cmp13.i = icmp ult i32 %16, 720
  br i1 %cmp13.i, label %if.then14.i, label %if.else.i.if.end_crit_edge

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then14.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %div1561.i = lshr exact i32 %cond.i, 1
  br label %if.end

if.end:                                           ; preds = %if.then14.i, %if.else.i.if.end_crit_edge, %if.then11.i
  %div1561.sink.i = phi i32 [ %div1561.i, %if.then14.i ], [ %div62.i, %if.then11.i ], [ %cond.i, %if.else.i.if.end_crit_edge ]
  %field.0.i = phi i32 [ %spec.store.select.i, %if.then14.i ], [ %spec.store.select.i, %if.then11.i ], [ 4, %if.else.i.if.end_crit_edge ]
  %w.0.i = phi i32 [ 352, %if.then14.i ], [ 176, %if.then11.i ], [ 720, %if.else.i.if.end_crit_edge ]
  %height17.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %height17.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div1561.sink.i, ptr %height17.i, align 4
  %18 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %field.0.i, ptr %field3.i, align 4
  %19 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %w.0.i, ptr %fmt2.i, align 4
  %depth.i = getelementptr %struct.cx25821_fmt, ptr @formats, i32 %i.07.lcssa.i.i, i32 1
  %20 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %depth.i, align 4
  %mul.i = mul i32 %21, %w.0.i
  %shr.i = lshr exact i32 %mul.i, 3
  %bytesperline.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %22 = ptrtoint ptr %bytesperline.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr.i, ptr %bytesperline.i, align 4
  %mul34.i = mul i32 %shr.i, %div1561.sink.i
  %sizeimage.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %23 = ptrtoint ptr %sizeimage.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul34.i, ptr %sizeimage.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %24 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %colorspace.i, align 4
  %25 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %11, label %if.end.cx25821_format_by_fourcc.exit_crit_edge [
    i32 1345401945, label %if.end.if.then.i_crit_edge
    i32 1448695129, label %if.then.fold.split.i
  ]

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.cx25821_format_by_fourcc.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx25821_format_by_fourcc.exit

if.then.fold.split.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %if.then.fold.split.i, %if.end.if.then.i_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %if.end.if.then.i_crit_edge ], [ 1, %if.then.fold.split.i ]
  %add.ptr.i = getelementptr %struct.cx25821_fmt, ptr @formats, i32 %i.07.lcssa.i
  br label %cx25821_format_by_fourcc.exit

cx25821_format_by_fourcc.exit:                    ; preds = %if.then.i, %if.end.cx25821_format_by_fourcc.exit_crit_edge
  %retval.0.i48 = phi ptr [ %add.ptr.i, %if.then.i ], [ null, %if.end.cx25821_format_by_fourcc.exit_crit_edge ]
  %fmt4 = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %fmt4 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i48, ptr %fmt4, align 8
  %27 = ptrtoint ptr %field3.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %field3.i, align 4
  %field6 = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %field6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %field6, align 4
  %30 = ptrtoint ptr %fmt2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fmt2.i, align 4
  %width8 = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 9
  %32 = ptrtoint ptr %width8 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %width8, align 8
  %33 = ptrtoint ptr %height17.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %height17.i, align 4
  %height10 = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 10
  %35 = ptrtoint ptr %height10 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %height10, align 4
  %36 = ptrtoint ptr %pixelformat.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %pixelformat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1345401945, i32 %37)
  %cmp13 = icmp eq i32 %37, 1345401945
  %. = select i1 %cmp13, i32 5, i32 4
  tail call void @cx25821_set_pixel_format(ptr noundef %3, i32 noundef 0, i32 noundef %.) #9
  %38 = ptrtoint ptr %width8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %width8, align 8
  %40 = add i32 %39, -320
  %switch.and = and i32 %40, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %41 = zext i1 %switch.selectcmp to i32
  %use_cif_resolution22 = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 12
  %42 = ptrtoint ptr %use_cif_resolution22 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %use_cif_resolution22, align 4
  %43 = ptrtoint ptr %width8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %width8, align 8
  %cif_width = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 13
  %45 = ptrtoint ptr %cif_width to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %cif_width, align 8
  tail call void @medusa_set_resolution(ptr noundef %3, i32 noundef %44, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %cx25821_format_by_fourcc.exit, %cx25821_format_by_fourcc.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cx25821_format_by_fourcc.exit ], [ -22, %cx25821_format_by_fourcc.exit.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25821_vidioc_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #9
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %dev1 = getelementptr inbounds %struct.cx25821_channel, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %fmt2 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %field3 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %field3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %field3, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %6 = ptrtoint ptr %pixelformat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixelformat, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 1345401945, label %entry.cx25821_format_by_fourcc.exit_crit_edge
    i32 1448695129, label %if.then.fold.split.i
  ]

entry.cx25821_format_by_fourcc.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx25821_format_by_fourcc.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx25821_format_by_fourcc.exit

cx25821_format_by_fourcc.exit:                    ; preds = %if.then.fold.split.i, %entry.cx25821_format_by_fourcc.exit_crit_edge
  %i.07.lcssa.i = phi i32 [ 0, %entry.cx25821_format_by_fourcc.exit_crit_edge ], [ 1, %if.then.fold.split.i ]
  %add.ptr.i = getelementptr %struct.cx25821_fmt, ptr @formats, i32 %i.07.lcssa.i
  %cmp = icmp eq ptr %add.ptr.i, null
  br i1 %cmp, label %cx25821_format_by_fourcc.exit.cleanup_crit_edge, label %if.end

cx25821_format_by_fourcc.exit.cleanup_crit_edge:  ; preds = %cx25821_format_by_fourcc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cx25821_format_by_fourcc.exit
  %tvnorm = getelementptr inbounds %struct.cx25821_dev, ptr %3, i32 0, i32 20
  %9 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %tvnorm, align 8
  %and = and i64 %10, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 480, i32 576
  %11 = ptrtoint ptr %fmt2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fmt2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp7.not = icmp eq i32 %5, 3
  %spec.store.select = select i1 %cmp7.not, i32 3, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 352, i32 %12)
  %cmp10 = icmp ult i32 %12, 352
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %div62 = lshr exact i32 %cond, 2
  br label %if.end22

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %12)
  %cmp13 = icmp ult i32 %12, 720
  br i1 %cmp13, label %if.then14, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %div1561 = lshr exact i32 %cond, 1
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.else.if.end22_crit_edge, %if.then11
  %div1561.sink = phi i32 [ %div1561, %if.then14 ], [ %div62, %if.then11 ], [ %cond, %if.else.if.end22_crit_edge ]
  %field.0 = phi i32 [ %spec.store.select, %if.then14 ], [ %spec.store.select, %if.then11 ], [ 4, %if.else.if.end22_crit_edge ]
  %w.0 = phi i32 [ 352, %if.then14 ], [ 176, %if.then11 ], [ 720, %if.else.if.end22_crit_edge ]
  %height17 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %13 = ptrtoint ptr %height17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div1561.sink, ptr %height17, align 4
  %14 = ptrtoint ptr %field3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %field.0, ptr %field3, align 4
  %15 = ptrtoint ptr %fmt2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %w.0, ptr %fmt2, align 4
  %depth = getelementptr %struct.cx25821_fmt, ptr @formats, i32 %i.07.lcssa.i, i32 1
  %16 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %depth, align 4
  %mul = mul i32 %17, %w.0
  %shr = lshr exact i32 %mul, 3
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %18 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr, ptr %bytesperline, align 4
  %height31 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %height31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height31, align 4
  %mul34 = mul i32 %20, %shr
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %21 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul34, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %22 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %colorspace, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %cx25821_format_by_fourcc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %cx25821_format_by_fourcc.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_create_bufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx25821_vidioc_enum_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %type, align 4
  %std = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 5
  %3 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 47103, ptr %std, align 8
  %name = getelementptr inbounds %struct.v4l2_input, ptr %i, i32 0, i32 1
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.9, i32 noundef 32) #9
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @cx25821_vidioc_g_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %i) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cx25821_vidioc_s_input(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, i32 noundef %i) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool.not = icmp eq i32 %i, 0
  %cond = select i1 %tobool.not, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx25821_set_pixel_format(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @medusa_set_resolution(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !26, !27, !28, !30, !31, !33, !34, !36, !38, !39, !40, !41, !43, !44, !46, !48, !50, !52, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !71, !72, !74, !76, !78}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @__UNIQUE_ID_description300, !1, !"__UNIQUE_ID_description300", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_author301, !3, !"__UNIQUE_ID_author301", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 17, i32 1}
!4 = !{ptr @__UNIQUE_ID_file302, !5, !"__UNIQUE_ID_file302", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 18, i32 1}
!6 = !{ptr @__UNIQUE_ID_license303, !5, !"__UNIQUE_ID_license303", i1 false, i1 false}
!7 = !{ptr @__param_video_nr, !8, !"__param_video_nr", i1 false, i1 false}
!8 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 22, i32 1}
!9 = !{ptr @__UNIQUE_ID_video_nrtype304, !8, !"__UNIQUE_ID_video_nrtype304", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_video_nr305, !11, !"__UNIQUE_ID_video_nr305", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 24, i32 1}
!12 = !{ptr @__param_video_debug, !13, !"__param_video_debug", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 27, i32 1}
!14 = !{ptr @__UNIQUE_ID_video_debugtype306, !13, !"__UNIQUE_ID_video_debugtype306", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_video_debug307, !16, !"__UNIQUE_ID_video_debug307", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 28, i32 1}
!17 = !{ptr @__param_irq_debug, !18, !"__param_irq_debug", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 31, i32 1}
!19 = !{ptr @__UNIQUE_ID_irq_debugtype308, !18, !"__UNIQUE_ID_irq_debugtype308", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_irq_debug309, !21, !"__UNIQUE_ID_irq_debug309", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 32, i32 1}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 99, i32 3}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @cx25821_video_irq._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @cx25821_video_irq._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @cx25821_video_register.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 675, i32 2}
!30 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @cx25821_video_register._key, !32, !"_key", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 688, i32 4}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 757, i32 44}
!36 = !{ptr @irq_debug, !37, !"irq_debug", i1 false, i1 false}
!37 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 30, i32 21}
!38 = !{ptr @__param_str_video_nr, !8, !"__param_str_video_nr", i1 false, i1 false}
!39 = !{ptr @__param_arr_video_nr, !8, !"__param_arr_video_nr", i1 false, i1 false}
!40 = !{ptr @__param_str_video_debug, !13, !"__param_str_video_debug", i1 false, i1 false}
!41 = !{ptr @video_debug, !42, !"video_debug", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 26, i32 21}
!43 = !{ptr @__param_str_irq_debug, !18, !"__param_str_irq_debug", i1 false, i1 false}
!44 = !{ptr @cx25821_ctrl_ops, !45, !"cx25821_ctrl_ops", i1 false, i1 false}
!45 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 574, i32 35}
!46 = !{ptr @formats, !47, !"formats", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 36, i32 33}
!48 = !{ptr @cx25821_video_qops, !49, !"cx25821_video_qops", i1 false, i1 false}
!49 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 293, i32 29}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!52 = !{ptr @.str.6, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"cx25821_video_out_device", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 647, i32 34}
!55 = distinct !{null, !56, !"video_out_fops", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 623, i32 42}
!57 = distinct !{null, !58, !"video_out_ioctl_ops", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 633, i32 36}
!59 = !{ptr @.str.7, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 427, i32 23}
!61 = !{ptr @.str.8, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 429, i32 25}
!63 = !{ptr @.str.9, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 518, i32 19}
!65 = !{ptr @.str.10, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 415, i32 2}
!67 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @vidioc_log_status._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @vidioc_log_status._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.12, !66, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.13, !66, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @cx25821_video_device, !73, !"cx25821_video_device", i1 false, i1 false}
!73 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 612, i32 34}
!74 = !{ptr @video_fops, !75, !"video_fops", i1 false, i1 false}
!75 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 578, i32 42}
!76 = !{ptr @video_ioctl_ops, !77, !"video_ioctl_ops", i1 false, i1 false}
!77 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 588, i32 36}
!78 = !{ptr @video_nr, !79, !"video_nr", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/cx25821/cx25821-video.c", i32 20, i32 21}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2156851812}
!90 = !{i64 5041718}
!91 = !{i64 2156856104}
!92 = !{i64 5042136}
!93 = !{i64 2156858823}
!94 = !{i64 2156859091}
!95 = !{i64 2156859386}
!96 = !{i64 2156859677}
!97 = !{i64 2156861070}
!98 = !{i64 2156862165}
!99 = !{i64 2156862531}
!100 = !{i64 2156863329}
!101 = !{i64 2156863649}
!102 = !{i64 2156864506}
!103 = !{i64 2156864815}
!104 = !{i64 2156868173}
!105 = !{i64 2156869254}
!106 = !{i64 2156901254}
!107 = !{i64 2156902291}
!108 = !{i64 2156904707}
!109 = !{i64 2156906301}
!110 = !{i64 2156907364}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{i64 2156887287}
!113 = !{!"branch_weights", i32 1, i32 2000}
!114 = !{i64 2156891591}
