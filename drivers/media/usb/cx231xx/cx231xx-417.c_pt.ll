; ModuleID = '/llk/IR_all_yes/drivers/media/usb/cx231xx/cx231xx-417.c_pt.bc'
source_filename = "../drivers/media/usb/cx231xx/cx231xx-417.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cx231xx_tvnorm = type { ptr, i64, i32, i32 }
%struct.cx2341x_handler_ops = type { ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
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
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cx231xx_board = type { ptr, i32, i32, i32, i64, i32, i32, i8, ptr, ptr, ptr, i8, i8, i8, i32, i8, i32, i8, i8, i8, ptr, i8, i8, i8, i32, i32, [4 x %struct.cx231xx_input], %struct.cx231xx_input, ptr }
%struct.cx231xx_input = type { i32, i32, i32, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cx231xx = type { [30 x i8], i32, i32, ptr, %struct.cx231xx_board, %struct.IR_i2c_init_data, ptr, i8, ptr, %struct.v4l2_device, ptr, ptr, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.cx2341x_handler, %struct.work_struct, %struct.atomic_t, %struct.list_head, i32, i32, [3 x %struct.cx231xx_i2c], ptr, [2 x ptr], i8, %struct.mutex, %struct.mutex, i32, %struct.video_device, i64, i32, i32, i32, i32, i32, i32, %struct.cx231xx_audio, i32, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.video_device, %struct.video_device, ptr, %struct.media_pad, %struct.media_pad, [4 x %struct.media_entity], [4 x %struct.media_pad], %struct.vb2_queue, %struct.vb2_queue, [256 x i8], %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.atomic_t, ptr, [80 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.pcb_config, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, %struct.cx231xx_tvnorm, %struct.cx231xx_tsport, %struct.cx231xx_tsport, %struct.vb2_queue, %struct.video_device, %struct.atomic_t, i32, i32, i32, ptr, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.121, %struct.anon.122, %struct.anon.123, %struct.anon.124, %struct.anon.125, %struct.anon.126, %struct.anon.127, %struct.anon.128 }
%struct.anon.121 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.122 = type { ptr, ptr }
%struct.anon.123 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.124 = type { ptr, ptr }
%struct.anon.125 = type { ptr, ptr, ptr }
%struct.anon.126 = type { ptr, ptr }
%struct.anon.127 = type { ptr, ptr }
%struct.anon.128 = type { ptr, ptr, ptr, ptr }
%struct.cx231xx_i2c = type { ptr, i32, %struct.i2c_adapter, i32, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.cx231xx_audio = type { [50 x i8], [5 x ptr], [5 x ptr], ptr, i32, ptr, i32, ptr, i32, i32, %struct.spinlock, i32, i32, i32, ptr, i16 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.cx231xx_video_mode = type { %struct.cx231xx_dmaqueue, %struct.cx231xx_isoc_ctl, %struct.cx231xx_bulk_ctl, %struct.spinlock, i32, i32, i32, ptr, i16 }
%struct.cx231xx_dmaqueue = type { %struct.list_head, %struct.wait_queue_head, i32, i8, [8 x i8], i8, i32, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i32, [10 x i8] }
%struct.cx231xx_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.cx231xx_bulk_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.pcb_config = type { i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, [3 x %struct.CONFIG_INFO], [3 x %struct.CONFIG_INFO] }
%struct.CONFIG_INFO = type { i8, %struct.INTERFACE_INFO }
%struct.INTERFACE_INFO = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cx231xx_tsport = type { ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.118, i16, i16, i16, [10 x i16] }
%union.anon.118 = type { i16 }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.97 }
%union.anon.97 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.99, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.99 = type { i8 }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_fract = type { i32, i32 }
%struct.v4l2_selection = type { i32, i32, i32, %struct.v4l2_rect, [9 x i32] }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.cx231xx_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, %struct.list_head, i32, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.96, i32 }
%union.anon.96 = type { i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.__va_list = type { ptr }

@__param_str_mpeglines = internal constant [18 x i8] c"cx231xx.mpeglines\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mpeglines = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_mpeglines = internal constant %struct.kernel_param { ptr @__param_str_mpeglines, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @mpeglines } }, section "__param", align 4
@__UNIQUE_ID_mpeglinestype303 = internal constant [31 x i8] c"cx231xx.parmtype=mpeglines:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mpeglines304 = internal constant [69 x i8] c"cx231xx.parm=mpeglines:number of lines in an MPEG buffer, range 2-32\00", section ".modinfo", align 1
@__param_str_mpeglinesize = internal constant [21 x i8] c"cx231xx.mpeglinesize\00", align 1
@mpeglinesize = internal global { i32, [28 x i8] } { i32 512, [28 x i8] zeroinitializer }, align 32
@__param_mpeglinesize = internal constant %struct.kernel_param { ptr @__param_str_mpeglinesize, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @mpeglinesize } }, section "__param", align 4
@__UNIQUE_ID_mpeglinesizetype305 = internal constant [34 x i8] c"cx231xx.parmtype=mpeglinesize:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mpeglinesize306 = internal constant [89 x i8] c"cx231xx.parm=mpeglinesize:number of bytes in each line of an MPEG buffer, range 512-1024\00", section ".modinfo", align 1
@__param_str_v4l_debug = internal constant [18 x i8] c"cx231xx.v4l_debug\00", align 1
@v4l_debug = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_v4l_debug = internal constant %struct.kernel_param { ptr @__param_str_v4l_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @v4l_debug } }, section "__param", align 4
@__UNIQUE_ID_v4l_debugtype307 = internal constant [31 x i8] c"cx231xx.parmtype=v4l_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_v4l_debug308 = internal constant [49 x i8] c"cx231xx.parm=v4l_debug:enable V4L debug messages\00", section ".modinfo", align 1
@cx231xx_417_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\017%s()\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx231xx_417_unregister\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/cx231xx/cx231xx-417.c\00", [56 x i8] zeroinitializer }, align 32
@cx231xx_417_unregister._entry_ptr = internal global ptr @cx231xx_417_unregister._entry, section ".printk_index", align 4
@cx231xx_417_unregister._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx231xx_417_unregister._entry_ptr.4 = internal global ptr @cx231xx_417_unregister._entry.3, section ".printk_index", align 4
@cx231xx_417_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 1741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx231xx_417_register\00", [43 x i8] zeroinitializer }, align 32
@cx231xx_417_register._entry_ptr = internal global ptr @cx231xx_417_register._entry, section ".printk_index", align 4
@cx231xx_tvnorms = internal constant { [11 x %struct.cx231xx_tvnorm], [88 x i8] } { [11 x %struct.cx231xx_tvnorm] [%struct.cx231xx_tvnorm { ptr @.str.19, i64 4096, i32 0, i32 0 }, %struct.cx231xx_tvnorm { ptr @.str.20, i64 8192, i32 0, i32 0 }, %struct.cx231xx_tvnorm { ptr @.str.21, i64 7, i32 0, i32 0 }, %struct.cx231xx_tvnorm { ptr @.str.22, i64 224, i32 0, i32 0 }, %struct.cx231xx_tvnorm { ptr @.str.23, i64 16, i32 0, i32 0 }, %struct.cx231xx_tvnorm { ptr @.str.24, i64 256, i32 0, i32 0 }, %struct.cx231xx_tvnorm { ptr @.str.25, i64 512, i32 0, i32 0 }, %struct.cx231xx_tvnorm { ptr @.str.26, i64 1024, i32 0, i32 0 }, %struct.cx231xx_tvnorm { ptr @.str.27, i64 2048, i32 0, i32 0 }, %struct.cx231xx_tvnorm { ptr @.str.28, i64 4194304, i32 0, i32 0 }, %struct.cx231xx_tvnorm { ptr @.str.29, i64 3276800, i32 0, i32 0 }], [88 x i8] zeroinitializer }, align 32
@cx231xx_417_register._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 1754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: can't init cx2341x controls\0A\00", [61 x i8] zeroinitializer }, align 32
@cx231xx_417_register._entry_ptr.8 = internal global ptr @cx231xx_417_register._entry.6, section ".printk_index", align 4
@cx231xx_ops = internal constant { %struct.cx2341x_handler_ops, [16 x i8] } { %struct.cx2341x_handler_ops { ptr @cx231xx_s_audio_sampling_freq, ptr null, ptr @cx231xx_s_video_encoding, ptr null }, [16 x i8] zeroinitializer }, align 32
@cx231xx_417_register._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 1765, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: can't add cx25840 controls\0A\00", [62 x i8] zeroinitializer }, align 32
@cx231xx_417_register._entry_ptr.11 = internal global ptr @cx231xx_417_register._entry.9, section ".printk_index", align 4
@cx231xx_mpeg_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @mpeg_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"cx231xx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 -1, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 16777215, ptr null, ptr @mpeg_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpeg\00", [27 x i8] zeroinitializer }, align 32
@cx231xx_video_qops = internal global { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_vmalloc_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@cx231xx_417_register._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.2, i32 1795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: can't register mpeg device\0A\00", [62 x i8] zeroinitializer }, align 32
@cx231xx_417_register._entry_ptr.15 = internal global ptr @cx231xx_417_register._entry.13, section ".printk_index", align 4
@cx231xx_417_register._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.2, i32 1801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: registered device video%d [mpeg]\0A\00", [56 x i8] zeroinitializer }, align 32
@cx231xx_417_register._entry_ptr.18 = internal global ptr @cx231xx_417_register._entry.16, section ".printk_index", align 4
@__UNIQUE_ID_firmware309 = internal constant [36 x i8] c"cx231xx.firmware=v4l-cx23885-enc.fw\00", section ".modinfo", align 1
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NTSC-M\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NTSC-JP\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-BG\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-DK\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-I\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-M\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-N\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-Nc\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-60\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SECAM-L\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SECAM-DK\00", [23 x i8] zeroinitializer }, align 32
@cx231xx_mbox_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017%s: command(0x%X) = %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx231xx_mbox_func\00", [46 x i8] zeroinitializer }, align 32
@cx231xx_mbox_func._entry_ptr = internal global ptr @cx231xx_mbox_func._entry, section ".printk_index", align 4
@cx231xx_mbox_func._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 730, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\017Firmware and/or mailbox pointer not initialized or corrupted, signature = 0x%x, cmd = %s\0A\00", [36 x i8] zeroinitializer }, align 32
@cx231xx_mbox_func._entry_ptr.34 = internal global ptr @cx231xx_mbox_func._entry.32, section ".printk_index", align 4
@cx231xx_mbox_func._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.31, ptr @.str.2, i32 740, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017ERROR: Mailbox appears to be in use (%x), cmd = %s\0A\00", [42 x i8] zeroinitializer }, align 32
@cx231xx_mbox_func._entry_ptr.37 = internal global ptr @cx231xx_mbox_func._entry.35, section ".printk_index", align 4
@cx231xx_mbox_func._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.31, ptr @.str.2, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017API Input %d = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cx231xx_mbox_func._entry_ptr.40 = internal global ptr @cx231xx_mbox_func._entry.38, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cx231xx_mbox_func._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.31, ptr @.str.2, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017ERROR: API Mailbox timeout\0A\00", [34 x i8] zeroinitializer }, align 32
@cx231xx_mbox_func._entry_ptr.43 = internal global ptr @cx231xx_mbox_func._entry.41, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cx231xx_mbox_func._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.31, ptr @.str.2, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017API Output %d = %d\0A\00", [42 x i8] zeroinitializer }, align 32
@cx231xx_mbox_func._entry_ptr.46 = internal global ptr @cx231xx_mbox_func._entry.44, section ".printk_index", align 4
@cx231xx_mbox_func._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.31, ptr @.str.2, i32 782, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\017API result = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@cx231xx_mbox_func._entry_ptr.49 = internal global ptr @cx231xx_mbox_func._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PING_FW\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"START_CAPTURE\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STOP_CAPTURE\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SET_AUDIO_ID\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SET_VIDEO_ID\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SET_PCR_PID\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SET_FRAME_RATE\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SET_FRAME_SIZE\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SET_BIT_RATE\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SET_GOP_PROPERTIES\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SET_ASPECT_RATIO\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SET_DNR_FILTER_PROPS\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SET_CORING_LEVELS\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SET_SPATIAL_FILTER_TYPE\00", [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SET_VBI_LINE\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SET_STREAM_TYPE\00", [16 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SET_OUTPUT_PORT\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SET_AUDIO_PROPERTIES\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HALT_FW\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GET_VERSION\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SET_GOP_CLOSURE\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GET_SEQ_END\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SET_PGM_INDEX_INFO\00", [45 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SET_VBI_CONFIG\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SET_DMA_BLOCK_SIZE\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GET_PREV_DMA_INFO_MB_10\00", [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GET_PREV_DMA_INFO_MB_9\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SCHED_DMA_TO_HOST\00", [46 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INITIALIZE_INPUT\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SET_FRAME_DROP_RATE\00", [44 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PAUSE_ENCODER\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"REFRESH_INPUT\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SET_COPYRIGHT\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SET_EVENT_NOTIFICATION\00", [41 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SET_NUM_VSYNC_LINES\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SET_PLACEHOLDER\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MUTE_VIDEO\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MUTE_AUDIO\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MISC\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@wait_for_mci_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017ERROR: Timeout - gpio=%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wait_for_mci_complete\00", [42 x i8] zeroinitializer }, align 32
@wait_for_mci_complete._entry_ptr = internal global ptr @wait_for_mci_complete._entry, section ".printk_index", align 4
@cx231xx_s_audio_sampling_freq.freqs = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 44100, i32 48000, i32 32000], [20 x i8] zeroinitializer }, align 32
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@cx231xx_video_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.92, ptr @.str.2, i32 1716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx231xx_video_dev_init\00", [41 x i8] zeroinitializer }, align 32
@cx231xx_video_dev_init._entry_ptr = internal global ptr @cx231xx_video_dev_init._entry, section ".printk_index", align 4
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s %s (%s)\00", [21 x i8] zeroinitializer }, align 32
@cx231xx_boards = external dso_local local_unnamed_addr global [0 x %struct.cx231xx_board], align 8
@mpeg_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@mpeg_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @cx231xx_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr null, ptr @cx231xx_enum_input, ptr @cx231xx_g_input, ptr @cx231xx_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_ctrl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_pixelaspect, ptr @vidioc_g_selection, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx231xx_g_tuner, ptr @cx231xx_s_tuner, ptr @cx231xx_g_frequency, ptr @cx231xx_s_frequency, ptr null, ptr null, ptr @vidioc_log_status, ptr null, ptr @cx231xx_g_register, ptr @cx231xx_s_register, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@vidioc_g_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 1573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017enter vidioc_g_fmt_vid_cap()\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vidioc_g_fmt_vid_cap\00", [43 x i8] zeroinitializer }, align 32
@vidioc_g_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_g_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_g_fmt_vid_cap._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 1582, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017VIDIOC_G_FMT: w: %d, h: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@vidioc_g_fmt_vid_cap._entry_ptr.98 = internal global ptr @vidioc_g_fmt_vid_cap._entry.96, section ".printk_index", align 4
@vidioc_g_fmt_vid_cap._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.2, i32 1583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017exit vidioc_g_fmt_vid_cap()\0A\00", [33 x i8] zeroinitializer }, align 32
@vidioc_g_fmt_vid_cap._entry_ptr.101 = internal global ptr @vidioc_g_fmt_vid_cap._entry.99, section ".printk_index", align 4
@vidioc_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 1592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017enter vidioc_try_fmt_vid_cap()\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vidioc_try_fmt_vid_cap\00", [41 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_try_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_try_fmt_vid_cap._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.2, i32 1599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017VIDIOC_TRY_FMT: w: %d, h: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry_ptr.106 = internal global ptr @vidioc_try_fmt_vid_cap._entry.104, section ".printk_index", align 4
@vidioc_try_fmt_vid_cap._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.103, ptr @.str.2, i32 1600, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017exit vidioc_try_fmt_vid_cap()\0A\00", [63 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry_ptr.109 = internal global ptr @vidioc_try_fmt_vid_cap._entry.107, section ".printk_index", align 4
@vidioc_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.2, i32 1525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017encodernorm set to NTSC\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vidioc_s_std\00", [19 x i8] zeroinitializer }, align 32
@vidioc_s_std._entry_ptr = internal global ptr @vidioc_s_std._entry, section ".printk_index", align 4
@vidioc_s_std._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.2, i32 1530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017encodernorm set to PAL\0A\00", [38 x i8] zeroinitializer }, align 32
@vidioc_s_std._entry_ptr.114 = internal global ptr @vidioc_s_std._entry.112, section ".printk_index", align 4
@vidioc_s_std._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.111, ptr @.str.2, i32 1539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017exit vidioc_s_std() i=0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@vidioc_s_std._entry_ptr.117 = internal global ptr @vidioc_s_std._entry.115, section ".printk_index", align 4
@vidioc_s_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.2, i32 1549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017enter vidioc_s_ctrl()\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vidioc_s_ctrl\00", [18 x i8] zeroinitializer }, align 32
@vidioc_s_ctrl._entry_ptr = internal global ptr @vidioc_s_ctrl._entry, section ".printk_index", align 4
@vidioc_s_ctrl._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.119, ptr @.str.2, i32 1553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017exit vidioc_s_ctrl()\0A\00", [40 x i8] zeroinitializer }, align 32
@vidioc_s_ctrl._entry_ptr.122 = internal global ptr @vidioc_s_ctrl._entry.120, section ".printk_index", align 4
@cx231xx_initialize_codec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.123, ptr @.str.2, i32 1103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cx231xx_initialize_codec\00", [39 x i8] zeroinitializer }, align 32
@cx231xx_initialize_codec._entry_ptr = internal global ptr @cx231xx_initialize_codec._entry, section ".printk_index", align 4
@cx231xx_initialize_codec._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.123, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017%s: PING OK\0A\00", [17 x i8] zeroinitializer }, align 32
@cx231xx_initialize_codec._entry_ptr.126 = internal global ptr @cx231xx_initialize_codec._entry.124, section ".printk_index", align 4
@cx231xx_initialize_codec._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.123, ptr @.str.2, i32 1111, ptr @.str.129, ptr @.str.130 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: f/w load failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cx231xx_initialize_codec._entry_ptr.131 = internal global ptr @cx231xx_initialize_codec._entry.127, section ".printk_index", align 4
@cx231xx_initialize_codec._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.123, ptr @.str.2, i32 1117, ptr @.str.129, ptr @.str.130 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: mailbox < 0, error\0A\00", [40 x i8] zeroinitializer }, align 32
@cx231xx_initialize_codec._entry_ptr.134 = internal global ptr @cx231xx_initialize_codec._entry.132, section ".printk_index", align 4
@cx231xx_initialize_codec._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.123, ptr @.str.2, i32 1124, ptr @.str.129, ptr @.str.130 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ERROR: cx23417 firmware ping failed!\0A\00", [58 x i8] zeroinitializer }, align 32
@cx231xx_initialize_codec._entry_ptr.137 = internal global ptr @cx231xx_initialize_codec._entry.135, section ".printk_index", align 4
@cx231xx_initialize_codec._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.123, ptr @.str.2, i32 1131, ptr @.str.129, ptr @.str.130 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ERROR: cx23417 firmware get encoder: version failed!\0A\00", [42 x i8] zeroinitializer }, align 32
@cx231xx_initialize_codec._entry_ptr.140 = internal global ptr @cx231xx_initialize_codec._entry.138, section ".printk_index", align 4
@cx231xx_initialize_codec._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.123, ptr @.str.2, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017cx23417 firmware version is 0x%08x\0A\00", [58 x i8] zeroinitializer }, align 32
@cx231xx_initialize_codec._entry_ptr.143 = internal global ptr @cx231xx_initialize_codec._entry.141, section ".printk_index", align 4
@cx231xx_initialize_codec._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.123, ptr @.str.2, i32 1141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017***before enable656() VIM Capture Lines = %d ***\0A\00", [44 x i8] zeroinitializer }, align 32
@cx231xx_initialize_codec._entry_ptr.146 = internal global ptr @cx231xx_initialize_codec._entry.144, section ".printk_index", align 4
@cx231xx_initialize_codec._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.123, ptr @.str.2, i32 1208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017***VIM Capture Lines =%d ***\0A\00", [32 x i8] zeroinitializer }, align 32
@cx231xx_initialize_codec._entry_ptr.149 = internal global ptr @cx231xx_initialize_codec._entry.147, section ".printk_index", align 4
@cx231xx_api_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.2, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s() cmds = 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx231xx_api_cmd\00", [16 x i8] zeroinitializer }, align 32
@cx231xx_api_cmd._entry_ptr = internal global ptr @cx231xx_api_cmd._entry, section ".printk_index", align 4
@cx231xx_load_firmware.magic = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\A7\0D\00\00f\BBU\AA", [24 x i8] zeroinitializer }, align 32
@cx231xx_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\017FAIL!!!\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx231xx_load_firmware\00", [42 x i8] zeroinitializer }, align 32
@cx231xx_load_firmware._entry_ptr = internal global ptr @cx231xx_load_firmware._entry, section ".printk_index", align 4
@cx231xx_load_firmware._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.153, ptr @.str.2, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx231xx_load_firmware._entry_ptr.155 = internal global ptr @cx231xx_load_firmware._entry.154, section ".printk_index", align 4
@cx231xx_load_firmware._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.153, ptr @.str.2, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx231xx_load_firmware._entry_ptr.157 = internal global ptr @cx231xx_load_firmware._entry.156, section ".printk_index", align 4
@cx231xx_load_firmware._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.153, ptr @.str.2, i32 976, ptr @.str.129, ptr @.str.130 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Error with mc417_register_write\0A\00", [59 x i8] zeroinitializer }, align 32
@cx231xx_load_firmware._entry_ptr.160 = internal global ptr @cx231xx_load_firmware._entry.158, section ".printk_index", align 4
@.str.161 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"v4l-cx23885-enc.fw\00", [45 x i8] zeroinitializer }, align 32
@cx231xx_load_firmware._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.153, ptr @.str.2, i32 988, ptr @.str.129, ptr @.str.130 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"ERROR: Hotplug firmware request failed (%s).\0A\00", [50 x i8] zeroinitializer }, align 32
@cx231xx_load_firmware._entry_ptr.164 = internal global ptr @cx231xx_load_firmware._entry.162, section ".printk_index", align 4
@cx231xx_load_firmware._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.153, ptr @.str.2, i32 990, ptr @.str.129, ptr @.str.130 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Please fix your hotplug setup, the board will not work without firmware loaded!\0A\00", [47 x i8] zeroinitializer }, align 32
@cx231xx_load_firmware._entry_ptr.167 = internal global ptr @cx231xx_load_firmware._entry.165, section ".printk_index", align 4
@cx231xx_load_firmware._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.153, ptr @.str.2, i32 999, ptr @.str.129, ptr @.str.130 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"ERROR: Firmware size mismatch (have %zd, expected %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@cx231xx_load_firmware._entry_ptr.170 = internal global ptr @cx231xx_load_firmware._entry.168, section ".printk_index", align 4
@cx231xx_load_firmware._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.153, ptr @.str.2, i32 1008, ptr @.str.129, ptr @.str.130 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ERROR: Firmware magic mismatch, wrong file?\0A\00", [51 x i8] zeroinitializer }, align 32
@cx231xx_load_firmware._entry_ptr.173 = internal global ptr @cx231xx_load_firmware._entry.171, section ".printk_index", align 4
@cx231xx_load_firmware._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.153, ptr @.str.2, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017Loading firmware to GPIO...\0A\00", [33 x i8] zeroinitializer }, align 32
@cx231xx_load_firmware._entry_ptr.176 = internal global ptr @cx231xx_load_firmware._entry.174, section ".printk_index", align 4
@cx231xx_load_firmware._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.153, ptr @.str.2, i32 1020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017firmware->size=%zd\0A\00", [42 x i8] zeroinitializer }, align 32
@cx231xx_load_firmware._entry_ptr.179 = internal global ptr @cx231xx_load_firmware._entry.177, section ".printk_index", align 4
@cx231xx_load_firmware._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.153, ptr @.str.2, i32 1053, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017Firmware upload successful.\0A\00", [33 x i8] zeroinitializer }, align 32
@cx231xx_load_firmware._entry_ptr.182 = internal global ptr @cx231xx_load_firmware._entry.180, section ".printk_index", align 4
@cx231xx_load_firmware._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.153, ptr @.str.2, i32 1060, ptr @.str.129, ptr @.str.130 }, [40 x i8] zeroinitializer }, align 32
@cx231xx_load_firmware._entry_ptr.184 = internal global ptr @cx231xx_load_firmware._entry.183, section ".printk_index", align 4
@cx231xx_load_firmware._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.153, ptr @.str.2, i32 1073, ptr @.str.129, ptr @.str.130 }, [40 x i8] zeroinitializer }, align 32
@cx231xx_load_firmware._entry_ptr.186 = internal global ptr @cx231xx_load_firmware._entry.185, section ".printk_index", align 4
@__const.cx231xx_find_mailbox.signature = private unnamed_addr constant [4 x i32] [i32 305419896, i32 878082066, i32 1450709556, i32 2014458966], align 4
@cx231xx_find_mailbox._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.187, ptr @.str.2, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx231xx_find_mailbox\00", [43 x i8] zeroinitializer }, align 32
@cx231xx_find_mailbox._entry_ptr = internal global ptr @cx231xx_find_mailbox._entry, section ".printk_index", align 4
@cx231xx_find_mailbox._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.187, ptr @.str.2, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017Mailbox signature found at 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@cx231xx_find_mailbox._entry_ptr.190 = internal global ptr @cx231xx_find_mailbox._entry.188, section ".printk_index", align 4
@cx231xx_find_mailbox._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.187, ptr @.str.2, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017Mailbox signature values not found!\0A\00", [57 x i8] zeroinitializer }, align 32
@cx231xx_find_mailbox._entry_ptr.193 = internal global ptr @cx231xx_find_mailbox._entry.191, section ".printk_index", align 4
@cx231xx_codec_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.194, ptr @.str.2, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx231xx_codec_settings\00", [41 x i8] zeroinitializer }, align 32
@cx231xx_codec_settings._entry_ptr = internal global ptr @cx231xx_codec_settings._entry, section ".printk_index", align 4
@switch.table.cmd_to_str = internal constant { [93 x ptr], [76 x i8] } { [93 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.53, ptr @.str.89, ptr @.str.54, ptr @.str.89, ptr @.str.55, ptr @.str.89, ptr @.str.56, ptr @.str.89, ptr @.str.57, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.58, ptr @.str.89, ptr @.str.59, ptr @.str.89, ptr @.str.60, ptr @.str.89, ptr @.str.61, ptr @.str.89, ptr @.str.61, ptr @.str.89, ptr @.str.62, ptr @.str.89, ptr @.str.63, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.64, ptr @.str.89, ptr @.str.65, ptr @.str.89, ptr @.str.66, ptr @.str.89, ptr @.str.67, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.89, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.89, ptr @.str.89, ptr @.str.79, ptr @.str.89, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.89, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.88], [76 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.195 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@___asan_gen_.199 = private unnamed_addr constant [10 x i8] c"mpeglines\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 63, i32 21 }
@___asan_gen_.202 = private unnamed_addr constant [13 x i8] c"mpeglinesize\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 67, i32 21 }
@___asan_gen_.205 = private unnamed_addr constant [10 x i8] c"v4l_debug\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 72, i32 21 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1665, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1666, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1741, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [16 x i8] c"cx231xx_tvnorms\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 82, i32 30 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1754, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant [12 x i8] c"cx231xx_ops\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1702, i32 41 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1765, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [22 x i8] c"cx231xx_mpeg_template\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1655, i32 28 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1776, i32 46 }
@___asan_gen_.253 = private unnamed_addr constant [19 x i8] c"cx231xx_video_qops\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1456, i32 23 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1795, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1800, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 84, i32 16 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 87, i32 16 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 90, i32 16 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 93, i32 16 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 96, i32 16 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 99, i32 16 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 102, i32 16 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 105, i32 16 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 108, i32 16 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 111, i32 16 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 114, i32 16 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 722, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 729, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 739, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 754, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 769, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 778, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 782, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 630, i32 10 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 632, i32 10 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 634, i32 10 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 636, i32 10 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 638, i32 10 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 640, i32 10 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 642, i32 10 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 644, i32 10 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 646, i32 10 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 648, i32 10 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 650, i32 10 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 652, i32 10 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 656, i32 10 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 658, i32 10 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 660, i32 10 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 662, i32 10 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 664, i32 10 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 666, i32 10 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 668, i32 10 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 670, i32 10 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 672, i32 10 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 674, i32 10 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 676, i32 10 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 678, i32 10 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 680, i32 10 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 682, i32 10 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 684, i32 10 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 686, i32 10 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 688, i32 10 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 690, i32 10 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 692, i32 10 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 694, i32 10 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 696, i32 10 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 698, i32 10 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 700, i32 10 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 702, i32 10 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 704, i32 10 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 706, i32 10 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 708, i32 10 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 710, i32 10 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 346, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant [6 x i8] c"freqs\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1692, i32 19 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1716, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1718, i32 41 }
@___asan_gen_.487 = private unnamed_addr constant [10 x i8] c"mpeg_fops\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1612, i32 42 }
@___asan_gen_.490 = private unnamed_addr constant [15 x i8] c"mpeg_ioctl_ops\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1622, i32 36 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1573, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1581, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1583, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1592, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1598, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1600, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1525, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1530, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1539, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1549, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1553, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1103, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1107, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1110, i32 4 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1116, i32 4 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1123, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1130, i32 4 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1134, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1140, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1208, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 800, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 924, i32 29 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 946, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 952, i32 3 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 957, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 975, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 982, i32 39 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 986, i32 3 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 989, i32 3 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 997, i32 3 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1007, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1018, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1020, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1053, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1058, i32 3 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1071, i32 3 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 827, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 838, i32 4 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 842, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.736 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.737 = private constant [43 x i8] c"../drivers/media/usb/cx231xx/cx231xx-417.c\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.737, i32 1081, i32 2 }
@___asan_gen_.739 = private unnamed_addr constant [24 x i8] c"switch.table.cmd_to_str\00", align 1
@llvm.compiler.used = appending global [245 x ptr] [ptr @__UNIQUE_ID_firmware309, ptr @__UNIQUE_ID_mpeglines304, ptr @__UNIQUE_ID_mpeglinesize306, ptr @__UNIQUE_ID_mpeglinesizetype305, ptr @__UNIQUE_ID_mpeglinestype303, ptr @__UNIQUE_ID_v4l_debug308, ptr @__UNIQUE_ID_v4l_debugtype307, ptr @__param_mpeglines, ptr @__param_mpeglinesize, ptr @__param_v4l_debug, ptr @cx231xx_417_register._entry, ptr @cx231xx_417_register._entry.13, ptr @cx231xx_417_register._entry.16, ptr @cx231xx_417_register._entry.6, ptr @cx231xx_417_register._entry.9, ptr @cx231xx_417_register._entry_ptr, ptr @cx231xx_417_register._entry_ptr.11, ptr @cx231xx_417_register._entry_ptr.15, ptr @cx231xx_417_register._entry_ptr.18, ptr @cx231xx_417_register._entry_ptr.8, ptr @cx231xx_417_unregister._entry, ptr @cx231xx_417_unregister._entry.3, ptr @cx231xx_417_unregister._entry_ptr, ptr @cx231xx_417_unregister._entry_ptr.4, ptr @cx231xx_api_cmd._entry, ptr @cx231xx_api_cmd._entry_ptr, ptr @cx231xx_codec_settings._entry, ptr @cx231xx_codec_settings._entry_ptr, ptr @cx231xx_find_mailbox._entry, ptr @cx231xx_find_mailbox._entry.188, ptr @cx231xx_find_mailbox._entry.191, ptr @cx231xx_find_mailbox._entry_ptr, ptr @cx231xx_find_mailbox._entry_ptr.190, ptr @cx231xx_find_mailbox._entry_ptr.193, ptr @cx231xx_initialize_codec._entry, ptr @cx231xx_initialize_codec._entry.124, ptr @cx231xx_initialize_codec._entry.127, ptr @cx231xx_initialize_codec._entry.132, ptr @cx231xx_initialize_codec._entry.135, ptr @cx231xx_initialize_codec._entry.138, ptr @cx231xx_initialize_codec._entry.141, ptr @cx231xx_initialize_codec._entry.144, ptr @cx231xx_initialize_codec._entry.147, ptr @cx231xx_initialize_codec._entry_ptr, ptr @cx231xx_initialize_codec._entry_ptr.126, ptr @cx231xx_initialize_codec._entry_ptr.131, ptr @cx231xx_initialize_codec._entry_ptr.134, ptr @cx231xx_initialize_codec._entry_ptr.137, ptr @cx231xx_initialize_codec._entry_ptr.140, ptr @cx231xx_initialize_codec._entry_ptr.143, ptr @cx231xx_initialize_codec._entry_ptr.146, ptr @cx231xx_initialize_codec._entry_ptr.149, ptr @cx231xx_load_firmware._entry, ptr @cx231xx_load_firmware._entry.154, ptr @cx231xx_load_firmware._entry.156, ptr @cx231xx_load_firmware._entry.158, ptr @cx231xx_load_firmware._entry.162, ptr @cx231xx_load_firmware._entry.165, ptr @cx231xx_load_firmware._entry.168, ptr @cx231xx_load_firmware._entry.171, ptr @cx231xx_load_firmware._entry.174, ptr @cx231xx_load_firmware._entry.177, ptr @cx231xx_load_firmware._entry.180, ptr @cx231xx_load_firmware._entry.183, ptr @cx231xx_load_firmware._entry.185, ptr @cx231xx_load_firmware._entry_ptr, ptr @cx231xx_load_firmware._entry_ptr.155, ptr @cx231xx_load_firmware._entry_ptr.157, ptr @cx231xx_load_firmware._entry_ptr.160, ptr @cx231xx_load_firmware._entry_ptr.164, ptr @cx231xx_load_firmware._entry_ptr.167, ptr @cx231xx_load_firmware._entry_ptr.170, ptr @cx231xx_load_firmware._entry_ptr.173, ptr @cx231xx_load_firmware._entry_ptr.176, ptr @cx231xx_load_firmware._entry_ptr.179, ptr @cx231xx_load_firmware._entry_ptr.182, ptr @cx231xx_load_firmware._entry_ptr.184, ptr @cx231xx_load_firmware._entry_ptr.186, ptr @cx231xx_mbox_func._entry, ptr @cx231xx_mbox_func._entry.32, ptr @cx231xx_mbox_func._entry.35, ptr @cx231xx_mbox_func._entry.38, ptr @cx231xx_mbox_func._entry.41, ptr @cx231xx_mbox_func._entry.44, ptr @cx231xx_mbox_func._entry.47, ptr @cx231xx_mbox_func._entry_ptr, ptr @cx231xx_mbox_func._entry_ptr.34, ptr @cx231xx_mbox_func._entry_ptr.37, ptr @cx231xx_mbox_func._entry_ptr.40, ptr @cx231xx_mbox_func._entry_ptr.43, ptr @cx231xx_mbox_func._entry_ptr.46, ptr @cx231xx_mbox_func._entry_ptr.49, ptr @cx231xx_video_dev_init._entry, ptr @cx231xx_video_dev_init._entry_ptr, ptr @vidioc_g_fmt_vid_cap._entry, ptr @vidioc_g_fmt_vid_cap._entry.96, ptr @vidioc_g_fmt_vid_cap._entry.99, ptr @vidioc_g_fmt_vid_cap._entry_ptr, ptr @vidioc_g_fmt_vid_cap._entry_ptr.101, ptr @vidioc_g_fmt_vid_cap._entry_ptr.98, ptr @vidioc_s_ctrl._entry, ptr @vidioc_s_ctrl._entry.120, ptr @vidioc_s_ctrl._entry_ptr, ptr @vidioc_s_ctrl._entry_ptr.122, ptr @vidioc_s_std._entry, ptr @vidioc_s_std._entry.112, ptr @vidioc_s_std._entry.115, ptr @vidioc_s_std._entry_ptr, ptr @vidioc_s_std._entry_ptr.114, ptr @vidioc_s_std._entry_ptr.117, ptr @vidioc_try_fmt_vid_cap._entry, ptr @vidioc_try_fmt_vid_cap._entry.104, ptr @vidioc_try_fmt_vid_cap._entry.107, ptr @vidioc_try_fmt_vid_cap._entry_ptr, ptr @vidioc_try_fmt_vid_cap._entry_ptr.106, ptr @vidioc_try_fmt_vid_cap._entry_ptr.109, ptr @wait_for_mci_complete._entry, ptr @wait_for_mci_complete._entry_ptr, ptr @mpeglines, ptr @mpeglinesize, ptr @v4l_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, ptr @cx231xx_tvnorms, ptr @.str.7, ptr @cx231xx_ops, ptr @.str.10, ptr @cx231xx_mpeg_template, ptr @.str.12, ptr @cx231xx_video_qops, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @cx231xx_s_audio_sampling_freq.freqs, ptr @.str.92, ptr @.str.93, ptr @mpeg_fops, ptr @mpeg_ioctl_ops, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @cx231xx_load_firmware.magic, ptr @.str.152, ptr @.str.153, ptr @.str.159, ptr @.str.161, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.187, ptr @.str.189, ptr @.str.192, ptr @.str.194, ptr @switch.table.cmd_to_str], section "llvm.metadata"
@0 = internal global [181 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpeglines to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpeglinesize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_417_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_417_unregister._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_417_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_tvnorms to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_417_register._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_417_register._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_mpeg_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_video_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_417_register._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_417_register._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_mbox_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_mbox_func._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_mbox_func._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_mbox_func._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_mbox_func._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_mbox_func._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_mbox_func._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_for_mci_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_s_audio_sampling_freq.freqs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_video_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpeg_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpeg_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_fmt_vid_cap._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_fmt_vid_cap._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_cap._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_cap._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_std._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_std._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_ctrl._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_initialize_codec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_initialize_codec._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_initialize_codec._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_initialize_codec._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_initialize_codec._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_initialize_codec._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_initialize_codec._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_initialize_codec._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_initialize_codec._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_api_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_load_firmware.magic to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_load_firmware._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_load_firmware._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_load_firmware._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_load_firmware._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_load_firmware._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_load_firmware._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_load_firmware._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_load_firmware._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_load_firmware._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_load_firmware._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_load_firmware._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_load_firmware._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_find_mailbox._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_find_mailbox._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_find_mailbox._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_codec_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cmd_to_str to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_417_unregister(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end11_crit_edge, label %do.body3

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.body3:                                         ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  %.pr = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp4 = icmp ugt i32 %.pr, 2
  br i1 %cmp4, label %do.end7, label %do.body3.do.end11_crit_edge

do.body3.do.end11_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.end7:                                          ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #14
  br label %do.end11

do.end11:                                         ; preds = %do.end7, %do.body3.do.end11_crit_edge, %entry.do.end11_crit_edge
  %flags.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 90, i32 17
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %do.end11.if.end15_crit_edge, label %if.then13

do.end11.if.end15_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

if.then13:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #13
  %v4l_device = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 90
  tail call void @video_unregister_device(ptr noundef %v4l_device) #11
  %hdl = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 14, i32 6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #11
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %do.end11.if.end15_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_417_register(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %do.end

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #14
  br label %if.end7

if.end7:                                          ; preds = %do.end, %entry.if.end7_crit_edge
  %encodernorm = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 86
  %1 = call ptr @memcpy(ptr %encodernorm, ptr @cx231xx_tvnorms, i32 24)
  %2 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 87, i32 6
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 480, ptr %2, align 4
  %width = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 87, i32 5
  %4 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 720, ptr %width, align 4
  %mpeg_ctrl_handler = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 14
  %call8 = tail call i32 @cx2341x_handler_init(ptr noundef %mpeg_ctrl_handler, i32 noundef 50) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end22, label %do.body11

do.body11:                                        ; preds = %if.end7
  %5 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp12 = icmp ugt i32 %5, 2
  br i1 %cmp12, label %do.end16, label %do.body11.cleanup_crit_edge

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end16:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %dev) #14
  br label %cleanup

if.end22:                                         ; preds = %if.end7
  %func = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 14, i32 8
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cx231xx_mbox_func, ptr %func, align 4
  %priv = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 14, i32 7
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %priv, align 4
  %ops = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 14, i32 9
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cx231xx_ops, ptr %ops, align 4
  %sd_cx25840 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 10
  %9 = ptrtoint ptr %sd_cx25840 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sd_cx25840, align 4
  %tobool26.not = icmp eq ptr %10, null
  br i1 %tobool26.not, label %if.end22.if.end31_crit_edge, label %if.then27

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then27:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  %hdl = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 14, i32 6
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl_handler, align 4
  %call30 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %hdl, ptr noundef %12, ptr noundef null, i1 noundef zeroext false) #11
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end22.if.end31_crit_edge
  %hdl33 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 14, i32 6
  %error = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 14, i32 6, i32 9
  %13 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool34.not = icmp eq i32 %14, 0
  br i1 %tobool34.not, label %if.end54, label %if.then35

if.then35:                                        ; preds = %if.end31
  %15 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp40 = icmp ugt i32 %15, 2
  br i1 %cmp40, label %do.end44, label %if.then35.do.end51_crit_edge

if.then35.do.end51_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end51

do.end44:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %dev) #14
  br label %do.end51

do.end51:                                         ; preds = %do.end44, %if.then35.do.end51_crit_edge
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl33) #11
  br label %cleanup

if.end54:                                         ; preds = %if.end31
  %norm = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 28
  %16 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 45056, ptr %norm, align 8
  %port = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 14, i32 1
  %17 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %port, align 4
  tail call void @cx2341x_handler_set_50hz(ptr noundef %mpeg_ctrl_handler, i32 noundef 0) #11
  %v4l_device = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 90
  %18 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 0
  br i1 %cmp.not.i, label %if.end54.do.end2.i_crit_edge, label %do.end.i

if.end54.do.end2.i_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end2.i

do.end.i:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.92) #14
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %if.end54.do.end2.i_crit_edge
  %19 = call ptr @memcpy(ptr %v4l_device, ptr @cx231xx_mpeg_template, i32 1352)
  %name.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 90, i32 12
  %model.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 1
  %20 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %model.i, align 8
  %arrayidx.i = getelementptr [0 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 8
  %call6.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.93, ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %23) #11
  %v4l2_dev.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 9
  %v4l2_dev7.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 90, i32 7
  %24 = ptrtoint ptr %v4l2_dev7.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %v4l2_dev.i, ptr %v4l2_dev7.i, align 4
  %lock.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 38
  %lock8.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 90, i32 26
  %25 = ptrtoint ptr %lock8.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %lock.i, ptr %lock8.i, align 8
  %release.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 90, i32 23
  %26 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @video_device_release_empty, ptr %release.i, align 8
  %ctrl_handler.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 90, i32 9
  %27 = ptrtoint ptr %ctrl_handler.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %hdl33, ptr %ctrl_handler.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 90, i32 5, i32 8
  %28 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %dev, ptr %driver_data.i.i.i, align 4
  %tuner_type.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 18
  %29 = ptrtoint ptr %tuner_type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tuner_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp9.i = icmp eq i32 %30, 4
  br i1 %cmp9.i, label %if.then10.i, label %do.end2.i.cx231xx_video_dev_init.exit_crit_edge

do.end2.i.cx231xx_video_dev_init.exit_crit_edge:  ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_video_dev_init.exit

if.then10.i:                                      ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #13
  %valid_ioctls.i.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 90, i32 25
  tail call void @_set_bit(i32 noundef 56, ptr noundef %valid_ioctls.i.i) #11
  tail call void @_set_bit(i32 noundef 57, ptr noundef %valid_ioctls.i.i) #11
  tail call void @_set_bit(i32 noundef 29, ptr noundef %valid_ioctls.i.i) #11
  tail call void @_set_bit(i32 noundef 30, ptr noundef %valid_ioctls.i.i) #11
  br label %cx231xx_video_dev_init.exit

cx231xx_video_dev_init.exit:                      ; preds = %if.then10.i, %do.end2.i.cx231xx_video_dev_init.exit_crit_edge
  %mpegq = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 89
  %31 = ptrtoint ptr %mpegq to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %mpegq, align 4
  %io_modes = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 89, i32 1
  %32 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 23, ptr %io_modes, align 4
  %drv_priv = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 89, i32 10
  %33 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 89, i32 12
  %34 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 760, ptr %buf_struct_size, align 4
  %ops57 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 89, i32 7
  %35 = ptrtoint ptr %ops57 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @cx231xx_video_qops, ptr %ops57, align 4
  %mem_ops = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 89, i32 8
  %36 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @vb2_vmalloc_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 89, i32 13
  %37 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 8192, ptr %timestamp_flags, align 4
  %min_buffers_needed = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 89, i32 15
  %38 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %min_buffers_needed, align 4
  %lock58 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 89, i32 5
  %39 = ptrtoint ptr %lock58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %lock.i, ptr %lock58, align 4
  %call59 = tail call i32 @vb2_queue_init(ptr noundef %mpegq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %cx231xx_video_dev_init.exit.cleanup_crit_edge

cx231xx_video_dev_init.exit.cleanup_crit_edge:    ; preds = %cx231xx_video_dev_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end62:                                         ; preds = %cx231xx_video_dev_init.exit
  %queue = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 90, i32 10
  %40 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %mpegq, ptr %queue, align 8
  %fops.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 90, i32 3
  %41 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fops.i, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %call.i149 = tail call i32 @__video_register_device(ptr noundef %v4l_device, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %44) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %cmp66 = icmp slt i32 %call.i149, 0
  %45 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp69 = icmp ugt i32 %45, 2
  br i1 %cmp66, label %do.body68, label %do.body84

do.body68:                                        ; preds = %if.end62
  br i1 %cmp69, label %do.end73, label %do.body68.do.end80_crit_edge

do.body68.do.end80_crit_edge:                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end80

do.end73:                                         ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #13
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %dev) #14
  br label %do.end80

do.end80:                                         ; preds = %do.end73, %do.body68.do.end80_crit_edge
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl33) #11
  br label %cleanup

do.body84:                                        ; preds = %if.end62
  br i1 %cmp69, label %do.end89, label %do.body84.cleanup_crit_edge

do.body84.cleanup_crit_edge:                      ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end89:                                         ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #13
  %num = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 90, i32 16
  %46 = ptrtoint ptr %num to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %num, align 4
  %conv = zext i16 %47 to i32
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %dev, i32 noundef %conv) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end89, %do.body84.cleanup_crit_edge, %do.end80, %cx231xx_video_dev_init.exit.cleanup_crit_edge, %do.end51, %do.end16, %do.body11.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %do.end51 ], [ %call.i149, %do.end80 ], [ %call8, %do.end16 ], [ %call8, %do.body11.cleanup_crit_edge ], [ %call59, %cx231xx_video_dev_init.exit.cleanup_crit_edge ], [ 0, %do.end89 ], [ 0, %do.body84.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx2341x_handler_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_mbox_func(ptr noundef %priv, i32 noundef %command, i32 noundef %in, i32 noundef %out, ptr nocapture noundef %data) #0 align 64 {
entry:
  %value = alloca i32, align 4
  %flag = alloca i32, align 4
  %retval1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !382
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flag) #11
  %1 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %flag, align 4, !annotation !382
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %retval1) #11
  %2 = ptrtoint ptr %retval1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %retval1, align 4
  %3 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ugt i32 %3, 2
  br i1 %cmp, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call fastcc ptr @cmd_to_str(i32 noundef %command)
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef %command, ptr noundef nonnull %call) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %cx23417_mailbox = getelementptr inbounds %struct.cx231xx, ptr %priv, i32 0, i32 94
  %4 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cx23417_mailbox, align 4
  %sub = add i32 %5, -4
  %call6 = call fastcc i32 @mc417_memory_read(ptr noundef %priv, i32 noundef %sub, ptr noundef nonnull %value)
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 305419896, i32 %7)
  %cmp7.not = icmp eq i32 %7, 305419896
  br i1 %cmp7.not, label %if.end21, label %do.body9

do.body9:                                         ; preds = %do.end5
  %8 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp10 = icmp ugt i32 %8, 2
  br i1 %cmp10, label %do.end14, label %do.body9.cleanup_crit_edge

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end14:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call fastcc ptr @cmd_to_str(i32 noundef %command)
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %7, ptr noundef nonnull %call16) #14
  br label %cleanup

if.end21:                                         ; preds = %do.end5
  %9 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cx23417_mailbox, align 4
  %call23 = call fastcc i32 @mc417_memory_read(ptr noundef %priv, i32 noundef %10, ptr noundef nonnull %flag)
  %11 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end37, label %do.body25

do.body25:                                        ; preds = %if.end21
  %13 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp26 = icmp ugt i32 %13, 2
  br i1 %cmp26, label %do.end30, label %do.body25.cleanup_crit_edge

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end30:                                         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #13
  %call32 = tail call fastcc ptr @cmd_to_str(i32 noundef %command)
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %12, ptr noundef nonnull %call32) #14
  br label %cleanup

if.end37:                                         ; preds = %if.end21
  %14 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cx23417_mailbox, align 4
  tail call fastcc void @mc417_memory_write(ptr noundef %priv, i32 noundef %15, i32 noundef 1)
  %16 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cx23417_mailbox, align 4
  %add = add i32 %17, 1
  tail call fastcc void @mc417_memory_write(ptr noundef %priv, i32 noundef %add, i32 noundef %command)
  %18 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cx23417_mailbox, align 4
  %add43 = add i32 %19, 3
  tail call fastcc void @mc417_memory_write(ptr noundef %priv, i32 noundef %add43, i32 noundef 500)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in)
  %cmp45187 = icmp sgt i32 %in, 0
  br i1 %cmp45187, label %if.end37.for.body_crit_edge, label %if.end37.for.body64.preheader_crit_edge

if.end37.for.body64.preheader_crit_edge:          ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body64.preheader

if.end37.for.body_crit_edge:                      ; preds = %if.end37
  br label %for.body

for.cond62.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %in)
  %cmp63190 = icmp ult i32 %in, 16
  br i1 %cmp63190, label %for.cond62.preheader.for.body64.preheader_crit_edge, label %for.cond62.preheader.for.end71_crit_edge

for.cond62.preheader.for.end71_crit_edge:         ; preds = %for.cond62.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end71

for.cond62.preheader.for.body64.preheader_crit_edge: ; preds = %for.cond62.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body64.preheader

for.body64.preheader:                             ; preds = %for.cond62.preheader.for.body64.preheader_crit_edge, %if.end37.for.body64.preheader_crit_edge
  %i.1191.ph = phi i32 [ 0, %if.end37.for.body64.preheader_crit_edge ], [ %in, %for.cond62.preheader.for.body64.preheader_crit_edge ]
  br label %for.body64

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end37.for.body_crit_edge
  %i.0188 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end37.for.body_crit_edge ]
  %20 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cx23417_mailbox, align 4
  %add47 = add nuw i32 %i.0188, 4
  %add48 = add i32 %add47, %21
  %arrayidx = getelementptr i32, ptr %data, i32 %i.0188
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  tail call fastcc void @mc417_memory_write(ptr noundef %priv, i32 noundef %add48, i32 noundef %23)
  %24 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp51 = icmp ugt i32 %24, 2
  br i1 %cmp51, label %do.end55, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end55:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %i.0188, i32 noundef %26) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end55, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0188, 1
  %exitcond.not = icmp eq i32 %inc, %in
  br i1 %exitcond.not, label %for.cond62.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %for.body64.preheader
  %i.1191 = phi i32 [ %inc70, %for.body64.for.body64_crit_edge ], [ %i.1191.ph, %for.body64.preheader ]
  %27 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cx23417_mailbox, align 4
  %add66 = add nuw i32 %i.1191, 4
  %add67 = add i32 %add66, %28
  tail call fastcc void @mc417_memory_write(ptr noundef %priv, i32 noundef %add67, i32 noundef 0)
  %inc70 = add nuw i32 %i.1191, 1
  %exitcond198.not = icmp eq i32 %inc70, 16
  br i1 %exitcond198.not, label %for.body64.for.end71_crit_edge, label %for.body64.for.body64_crit_edge

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body64

for.body64.for.end71_crit_edge:                   ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end71

for.end71:                                        ; preds = %for.body64.for.end71_crit_edge, %for.cond62.preheader.for.end71_crit_edge
  %29 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %flag, align 4
  %30 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cx23417_mailbox, align 4
  tail call fastcc void @mc417_memory_write(ptr noundef %priv, i32 noundef %31, i32 noundef 3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %add76 = add i32 %32, 1
  %33 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cx23417_mailbox, align 4
  %call79192 = call fastcc i32 @mc417_memory_read(ptr noundef %priv, i32 noundef %34, ptr noundef nonnull %flag)
  %35 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flag, align 4
  %and193 = and i32 %36, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %cmp80.not194 = icmp eq i32 %and193, 0
  br i1 %cmp80.not194, label %for.end71.if.end82_crit_edge, label %for.end71.for.cond99.preheader_crit_edge

for.end71.for.cond99.preheader_crit_edge:         ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond99.preheader

for.end71.if.end82_crit_edge:                     ; preds = %for.end71
  br label %if.end82

for.cond99.preheader:                             ; preds = %if.end97.for.cond99.preheader_crit_edge, %for.end71.for.cond99.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out)
  %cmp100195 = icmp sgt i32 %out, 0
  br i1 %cmp100195, label %for.cond99.preheader.for.body101_crit_edge, label %for.cond99.preheader.for.end120_crit_edge

for.cond99.preheader.for.end120_crit_edge:        ; preds = %for.cond99.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end120

for.cond99.preheader.for.body101_crit_edge:       ; preds = %for.cond99.preheader
  br label %for.body101

if.end82:                                         ; preds = %if.end97.if.end82_crit_edge, %for.end71.if.end82_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %sub83 = sub i32 %add76, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub83)
  %cmp84 = icmp slt i32 %sub83, 0
  br i1 %cmp84, label %do.body86, label %if.end97

do.body86:                                        ; preds = %if.end82
  %38 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp87 = icmp ugt i32 %38, 2
  br i1 %cmp87, label %do.end91, label %do.body86.cleanup_crit_edge

do.body86.cleanup_crit_edge:                      ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end91:                                         ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #13
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #14
  br label %cleanup

if.end97:                                         ; preds = %if.end82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 2147480) #11
  %40 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cx23417_mailbox, align 4
  %call79 = call fastcc i32 @mc417_memory_read(ptr noundef %priv, i32 noundef %41, ptr noundef nonnull %flag)
  %42 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flag, align 4
  %and = and i32 %43, 4
  %cmp80.not = icmp eq i32 %and, 0
  br i1 %cmp80.not, label %if.end97.if.end82_crit_edge, label %if.end97.for.cond99.preheader_crit_edge

if.end97.for.cond99.preheader_crit_edge:          ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond99.preheader

if.end97.if.end82_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

for.body101:                                      ; preds = %for.inc118.for.body101_crit_edge, %for.cond99.preheader.for.body101_crit_edge
  %i.2196 = phi i32 [ %inc119, %for.inc118.for.body101_crit_edge ], [ 0, %for.cond99.preheader.for.body101_crit_edge ]
  %44 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cx23417_mailbox, align 4
  %add103 = add nuw i32 %i.2196, 4
  %add104 = add i32 %add103, %45
  %add.ptr = getelementptr i32, ptr %data, i32 %i.2196
  %call105 = tail call fastcc i32 @mc417_memory_read(ptr noundef %priv, i32 noundef %add104, ptr noundef %add.ptr)
  %46 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp107 = icmp ugt i32 %46, 2
  br i1 %cmp107, label %do.end111, label %for.body101.for.inc118_crit_edge

for.body101.for.inc118_crit_edge:                 ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc118

do.end111:                                        ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr, align 4
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %i.2196, i32 noundef %48) #14
  br label %for.inc118

for.inc118:                                       ; preds = %do.end111, %for.body101.for.inc118_crit_edge
  %inc119 = add nuw nsw i32 %i.2196, 1
  %exitcond199.not = icmp eq i32 %inc119, %out
  br i1 %exitcond199.not, label %for.inc118.for.end120_crit_edge, label %for.inc118.for.body101_crit_edge

for.inc118.for.body101_crit_edge:                 ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body101

for.inc118.for.end120_crit_edge:                  ; preds = %for.inc118
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end120

for.end120:                                       ; preds = %for.inc118.for.end120_crit_edge, %for.cond99.preheader.for.end120_crit_edge
  %49 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cx23417_mailbox, align 4
  %add122 = add i32 %50, 2
  %call123 = call fastcc i32 @mc417_memory_read(ptr noundef %priv, i32 noundef %add122, ptr noundef nonnull %retval1)
  %51 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %51)
  %cmp125 = icmp ugt i32 %51, 2
  br i1 %cmp125, label %do.end129, label %for.end120.do.end134_crit_edge

for.end120.do.end134_crit_edge:                   ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end134

do.end129:                                        ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #13
  %52 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %retval1, align 4
  %call131 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %53) #14
  br label %do.end134

do.end134:                                        ; preds = %do.end129, %for.end120.do.end134_crit_edge
  %54 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cx23417_mailbox, align 4
  tail call fastcc void @mc417_memory_write(ptr noundef %priv, i32 noundef %55, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end134, %do.end91, %do.body86.cleanup_crit_edge, %do.end30, %do.body25.cleanup_crit_edge, %do.end14, %do.body9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end134 ], [ -5, %do.end14 ], [ -5, %do.body9.cleanup_crit_edge ], [ -16, %do.end30 ], [ -16, %do.body25.cleanup_crit_edge ], [ -5, %do.end91 ], [ -5, %do.body86.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flag) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx2341x_handler_set_50hz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @cmd_to_str(i32 noundef %cmd) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %cmd, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 93, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 93
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [93 x ptr], ptr @switch.table.cmd_to_str, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.89, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mc417_memory_read(ptr noundef %dev, i32 noundef %address, ptr nocapture noundef writeonly %value) unnamed_addr #0 align 64 {
entry:
  %value.addr.i113 = alloca i32, align 4
  %value.addr.i110 = alloca i32, align 4
  %value.addr.i108 = alloca i32, align 4
  %value.addr.i106 = alloca i32, align 4
  %value.addr.i103 = alloca i32, align 4
  %value.addr.i101 = alloca i32, align 4
  %value.addr.i99 = alloca i32, align 4
  %value.addr.i96 = alloca i32, align 4
  %value.addr.i94 = alloca i32, align 4
  %value.addr.i92 = alloca i32, align 4
  %value.addr.i89 = alloca i32, align 4
  %value.addr.i87 = alloca i32, align 4
  %value.addr.i85 = alloca i32, align 4
  %value.addr.i83 = alloca i32, align 4
  %value.addr.i81 = alloca i32, align 4
  %value.addr.i79 = alloca i32, align 4
  %value.addr.i77 = alloca i32, align 4
  %value.addr.i = alloca i32, align 4
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #11
  %0 = shl i32 %address, 2
  %or = and i32 %0, 16515072
  %shl = or i32 %or, 165888
  %1 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %shl, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i)
  %2 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shl, ptr %value.addr.i, align 4
  %call.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  %or1 = or i32 %4, 5120
  store i32 %or1, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i77)
  %5 = ptrtoint ptr %value.addr.i77 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or1, ptr %value.addr.i77, align 4
  %call.i78 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i77, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i77)
  %and3 = shl i32 %address, 10
  %or4 = and i32 %and3, 66846720
  %shl5 = or i32 %or4, 174080
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl5, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i79)
  %7 = ptrtoint ptr %value.addr.i79 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl5, ptr %value.addr.i79, align 4
  %call.i80 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i79, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i79)
  %8 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %temp, align 4
  %or7 = or i32 %9, 5120
  store i32 %or7, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i81)
  %10 = ptrtoint ptr %value.addr.i81 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or7, ptr %value.addr.i81, align 4
  %call.i82 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i81, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i81)
  %and9 = shl i32 %address, 18
  %shl10 = and i32 %and9, 66846720
  %or11 = or i32 %shl10, 182272
  %11 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or11, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i83)
  %12 = ptrtoint ptr %value.addr.i83 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or11, ptr %value.addr.i83, align 4
  %call.i84 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i83, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i83)
  %13 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp, align 4
  %or14 = or i32 %14, 5120
  store i32 %or14, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i85)
  %15 = ptrtoint ptr %value.addr.i85 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or14, ptr %value.addr.i85, align 4
  %call.i86 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i85, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i85)
  %call16 = call fastcc i32 @wait_for_mci_complete(ptr noundef %dev)
  %16 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 157696, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i87)
  %17 = ptrtoint ptr %value.addr.i87 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 157696, ptr %value.addr.i87, align 4
  %call.i88 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i87, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i87)
  %18 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 156672, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i89)
  %19 = ptrtoint ptr %value.addr.i89 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 156672, ptr %value.addr.i89, align 4
  %call.i90 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i89, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i89)
  %call.i91 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %temp, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  %20 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %temp, align 4
  %and20 = shl i32 %21, 6
  %shl21 = and i32 %and20, -16777216
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i92)
  %22 = ptrtoint ptr %value.addr.i92 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 138240, ptr %value.addr.i92, align 4
  %call.i93 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i92, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i92)
  %23 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 149504, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i94)
  %24 = ptrtoint ptr %value.addr.i94 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 149504, ptr %value.addr.i94, align 4
  %call.i95 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i94, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i94)
  %25 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 148480, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i96)
  %26 = ptrtoint ptr %value.addr.i96 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 148480, ptr %value.addr.i96, align 4
  %call.i97 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i96, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i96)
  %call.i98 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %temp, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  %27 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %temp, align 4
  %and27 = lshr i32 %28, 2
  %shr28 = and i32 %and27, 16711680
  %or29 = or i32 %shr28, %shl21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i99)
  %29 = ptrtoint ptr %value.addr.i99 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 138240, ptr %value.addr.i99, align 4
  %call.i100 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i99, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i99)
  %30 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 141312, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i101)
  %31 = ptrtoint ptr %value.addr.i101 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 141312, ptr %value.addr.i101, align 4
  %call.i102 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i101, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i101)
  %32 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 140288, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i103)
  %33 = ptrtoint ptr %value.addr.i103 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 140288, ptr %value.addr.i103, align 4
  %call.i104 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i103, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i103)
  %call.i105 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %temp, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  %34 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %temp, align 4
  %and34 = lshr i32 %35, 10
  %shr35 = and i32 %and34, 65280
  %or36 = or i32 %or29, %shr35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i106)
  %36 = ptrtoint ptr %value.addr.i106 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 138240, ptr %value.addr.i106, align 4
  %call.i107 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i106, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i106)
  %37 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 133120, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i108)
  %38 = ptrtoint ptr %value.addr.i108 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 133120, ptr %value.addr.i108, align 4
  %call.i109 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i108, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i108)
  %39 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 132096, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i110)
  %40 = ptrtoint ptr %value.addr.i110 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 132096, ptr %value.addr.i110, align 4
  %call.i111 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i110, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i110)
  %call.i112 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %temp, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  %41 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %temp, align 4
  %and41 = lshr i32 %42, 18
  %shr42 = and i32 %and41, 255
  %or43 = or i32 %or36, %shr42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i113)
  %43 = ptrtoint ptr %value.addr.i113 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 138240, ptr %value.addr.i113, align 4
  %call.i114 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i113, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i113)
  %44 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or43, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mc417_memory_write(ptr noundef %dev, i32 noundef %address, i32 noundef %value) unnamed_addr #0 align 64 {
entry:
  %value.addr.i25 = alloca i32, align 4
  %value.addr.i23 = alloca i32, align 4
  %value.addr.i21 = alloca i32, align 4
  %value.addr.i19 = alloca i32, align 4
  %value.addr.i17 = alloca i32, align 4
  %value.addr.i15 = alloca i32, align 4
  %value.addr.i13 = alloca i32, align 4
  %value.addr.i11 = alloca i32, align 4
  %value.addr.i9 = alloca i32, align 4
  %value.addr.i7 = alloca i32, align 4
  %value.addr.i5 = alloca i32, align 4
  %value.addr.i3 = alloca i32, align 4
  %value.addr.i1 = alloca i32, align 4
  %value.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %value, 18
  %shl = and i32 %and, 66846720
  %or = or i32 %shl, 133120
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i)
  %0 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or, ptr %value.addr.i, align 4
  %call.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or2 = or i32 %shl, 138240
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i1)
  %1 = ptrtoint ptr %value.addr.i1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or2, ptr %value.addr.i1, align 4
  %call.i2 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i1, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i1)
  %and4 = shl i32 %value, 10
  %or5 = and i32 %and4, 66846720
  %shl6 = or i32 %or5, 141312
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i3)
  %2 = ptrtoint ptr %value.addr.i3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shl6, ptr %value.addr.i3, align 4
  %call.i4 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i3, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i3)
  %or8 = or i32 %or5, 146432
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i5)
  %3 = ptrtoint ptr %value.addr.i5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or8, ptr %value.addr.i5, align 4
  %call.i6 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i5, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i5)
  %4 = shl i32 %value, 2
  %or11 = and i32 %4, 66846720
  %shl12 = or i32 %or11, 149504
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i7)
  %5 = ptrtoint ptr %value.addr.i7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl12, ptr %value.addr.i7, align 4
  %call.i8 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i7, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i7)
  %or14 = or i32 %or11, 154624
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i9)
  %6 = ptrtoint ptr %value.addr.i9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or14, ptr %value.addr.i9, align 4
  %call.i10 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i9, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i9)
  %7 = lshr i32 %value, 6
  %or18 = and i32 %7, 66846720
  %shl19 = or i32 %or18, 157696
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i11)
  %8 = ptrtoint ptr %value.addr.i11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl19, ptr %value.addr.i11, align 4
  %call.i12 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i11, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i11)
  %or21 = or i32 %or18, 162816
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i13)
  %9 = ptrtoint ptr %value.addr.i13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or21, ptr %value.addr.i13, align 4
  %call.i14 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i13, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i13)
  %10 = shl i32 %address, 2
  %or25 = and i32 %10, 16515072
  %shl26 = or i32 %or25, 16943104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i15)
  %11 = ptrtoint ptr %value.addr.i15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl26, ptr %value.addr.i15, align 4
  %call.i16 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i15, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i15)
  %or28 = or i32 %or25, 16948224
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i17)
  %12 = ptrtoint ptr %value.addr.i17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or28, ptr %value.addr.i17, align 4
  %call.i18 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i17, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i17)
  %and30 = shl i32 %address, 10
  %or31 = and i32 %and30, 66846720
  %shl32 = or i32 %or31, 174080
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i19)
  %13 = ptrtoint ptr %value.addr.i19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shl32, ptr %value.addr.i19, align 4
  %call.i20 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i19, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i19)
  %or34 = or i32 %or31, 179200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i21)
  %14 = ptrtoint ptr %value.addr.i21 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or34, ptr %value.addr.i21, align 4
  %call.i22 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i21, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i21)
  %and36 = shl i32 %address, 18
  %shl37 = and i32 %and36, 66846720
  %or38 = or i32 %shl37, 182272
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i23)
  %15 = ptrtoint ptr %value.addr.i23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or38, ptr %value.addr.i23, align 4
  %call.i24 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i23, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i23)
  %or41 = or i32 %shl37, 187392
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i25)
  %16 = ptrtoint ptr %value.addr.i25 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or41, ptr %value.addr.i25, align 4
  %call.i26 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i25, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i25)
  %call43 = call fastcc i32 @wait_for_mci_complete(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_for_mci_complete(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %gpio = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio) #11
  %0 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %gpio, align 4, !annotation !382
  %call.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %gpio, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %count.0 = phi i8 [ 0, %entry ], [ %inc, %while.body.while.cond_crit_edge ]
  %1 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %gpio, align 4
  %and = and i32 %2, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.body, label %while.cond.cleanup_crit_edge

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %while.cond
  call void @msleep(i32 noundef 10) #11
  %call.i15 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %gpio, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  %inc = add nuw nsw i8 %count.0, 1
  %cmp = icmp ugt i8 %count.0, 100
  br i1 %cmp, label %do.body, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

do.body:                                          ; preds = %while.body
  %3 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp3 = icmp ugt i32 %3, 2
  br i1 %cmp3, label %do.end, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio, align 4
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %5) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.body.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_send_gpio_cmd(ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_s_audio_sampling_freq(ptr noundef readonly %cxhdl, i32 noundef %idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %idx)
  %cmp = icmp ult i32 %idx, 3
  br i1 %cmp, label %if.then, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.then:                                          ; preds = %entry
  %subdevs = getelementptr i8, ptr %cxhdl, i32 -496
  %0 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn39 = load ptr, ptr %subdevs, align 4
  %cmp7.not41 = icmp eq ptr %.pn39, %subdevs
  br i1 %cmp7.not41, label %if.then.if.end27_crit_edge, label %for.body.lr.ph

if.then.if.end27_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

for.body.lr.ph:                                   ; preds = %if.then
  %arrayidx = getelementptr [3 x i32], ptr @cx231xx_s_audio_sampling_freq.freqs, i32 0, i32 %idx
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn43 = phi ptr [ %.pn39, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %__err.042 = phi i32 [ 0, %for.body.lr.ph ], [ %__err.1, %for.inc.for.body_crit_edge ]
  %__sd.044 = getelementptr i8, ptr %.pn43, i32 -80
  %ops = getelementptr i8, ptr %.pn43, i32 24
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %audio = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %audio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %audio, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool10.not = icmp eq ptr %6, null
  br i1 %tobool10.not, label %land.lhs.true.if.end_crit_edge, label %if.then11

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %call = tail call i32 %6(ptr noundef %__sd.044, i32 noundef %8) #11
  br label %if.end

if.end:                                           ; preds = %if.then11, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %__err.1 = phi i32 [ %call, %if.then11 ], [ %__err.042, %land.lhs.true.if.end_crit_edge ], [ %__err.042, %for.body.if.end_crit_edge ]
  %9 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__err.1, label %if.end.if.end27_crit_edge [
    i32 0, label %if.end.for.inc_crit_edge
    i32 -515, label %if.end.for.inc_crit_edge45
  ]

if.end.for.inc_crit_edge45:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %if.end.for.inc_crit_edge45
  %10 = ptrtoint ptr %.pn43 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn43, align 4
  %cmp7.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp7.not, label %for.inc.if.end27_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.if.end27_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.end27:                                         ; preds = %for.inc.if.end27_crit_edge, %if.end.if.end27_crit_edge, %if.then.if.end27_crit_edge, %entry.if.end27_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_s_video_encoding(ptr nocapture noundef readonly %cxhdl, i32 noundef %val) #0 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp = icmp eq i32 %val, 0
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #11
  %0 = getelementptr inbounds i8, ptr %format, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %2 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %format, align 4
  %width = getelementptr inbounds %struct.cx2341x_handler, ptr %cxhdl, i32 0, i32 2
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %width, align 4
  %conv1 = zext i16 %4 to i32
  %5 = zext i1 %cmp to i32
  %div39 = lshr i32 %conv1, %5
  %format2 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %6 = ptrtoint ptr %format2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div39, ptr %format2, align 4
  %height = getelementptr inbounds %struct.cx2341x_handler, ptr %cxhdl, i32 0, i32 3
  %7 = ptrtoint ptr %height to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %height, align 2
  %conv4 = zext i16 %8 to i32
  %height6 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv4, ptr %height6, align 4
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %code, align 4
  %sd_cx25840 = getelementptr i8, ptr %cxhdl, i32 -376
  %11 = ptrtoint ptr %sd_cx25840 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sd_cx25840, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %entry.if.end27_crit_edge, label %if.else

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.else:                                          ; preds = %entry
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pad, align 4
  %tobool9.not = icmp eq ptr %16, null
  br i1 %tobool9.not, label %if.else.if.end27_crit_edge, label %land.lhs.true

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

land.lhs.true:                                    ; preds = %if.else
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set_fmt, align 4
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %land.lhs.true.if.end27_crit_edge, label %if.else14

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.else14:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 7), align 4
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %if.else14.if.else21_crit_edge, label %land.lhs.true16

if.else14.if.else21_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

land.lhs.true16:                                  ; preds = %if.else14
  %set_fmt17 = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %set_fmt17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_fmt17, align 4
  %tobool18.not = icmp eq ptr %21, null
  br i1 %tobool18.not, label %land.lhs.true16.if.else21_crit_edge, label %land.lhs.true16.if.end27.sink.split_crit_edge

land.lhs.true16.if.end27.sink.split_crit_edge:    ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27.sink.split

land.lhs.true16.if.else21_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else21

if.else21:                                        ; preds = %land.lhs.true16.if.else21_crit_edge, %if.else14.if.else21_crit_edge
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.else21, %land.lhs.true16.if.end27.sink.split_crit_edge
  %.sink = phi ptr [ %18, %if.else21 ], [ %21, %land.lhs.true16.if.end27.sink.split_crit_edge ]
  %call25 = call i32 %.sink(ptr noundef nonnull %12, ptr noundef null, ptr noundef nonnull %format) #11
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %land.lhs.true.if.end27_crit_edge, %if.else.if.end27_crit_edge, %entry.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #11
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release_empty(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_querycap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pixelformat = getelementptr inbounds %struct.v4l2_fmtdesc, ptr %f, i32 0, i32 4
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1195724877, ptr %pixelformat, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp ugt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1195724877, ptr %pixelformat, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bytesperline, align 4
  %5 = load i32, ptr @mpeglines, align 4
  %6 = load i32, ptr @mpeglinesize, align 4
  %mul = mul i32 %6, %5
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %7 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %8 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %colorspace, align 4
  %width = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 87, i32 5
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %11 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 87, i32 6
  %12 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %height, align 8
  %height12 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %height12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %height12, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %15 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %field, align 4
  %16 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp15.not = icmp eq i32 %16, 0
  br i1 %cmp15.not, label %do.end4.do.end39_crit_edge, label %do.body29

do.end4.do.end39_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39

do.body29:                                        ; preds = %do.end4
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width, align 4
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 8
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %18, i32 noundef %20) #14
  %.pr = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp30 = icmp ugt i32 %.pr, 2
  br i1 %cmp30, label %do.end34, label %do.body29.do.end39_crit_edge

do.body29.do.end39_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end39

do.end34:                                         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #14
  br label %do.end39

do.end39:                                         ; preds = %do.end34, %do.body29.do.end39_crit_edge, %do.end4.do.end39_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp ugt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1195724877, ptr %pixelformat, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %4 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %bytesperline, align 4
  %5 = load i32, ptr @mpeglines, align 4
  %6 = load i32, ptr @mpeglinesize, align 4
  %mul = mul i32 %6, %5
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %7 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %sizeimage, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %colorspace, align 4
  %10 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp10.not = icmp eq i32 %10, 0
  br i1 %cmp10.not, label %do.end4.do.end31_crit_edge, label %do.body21

do.end4.do.end31_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

do.body21:                                        ; preds = %do.end4
  %width = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 87, i32 5
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 87, i32 6
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %12, i32 noundef %14) #14
  %.pr = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp22 = icmp ugt i32 %.pr, 2
  br i1 %cmp22, label %do.end26, label %do.body21.do.end31_crit_edge

do.body21.do.end31_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end31

do.end26:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #13
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #14
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %do.body21.do.end31_crit_edge, %do.end4.do.end31_crit_edge
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
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_std(ptr noundef %file, ptr nocapture noundef readnone %fh0, ptr nocapture noundef writeonly %norm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %id = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 86, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %id, align 8
  %4 = ptrtoint ptr %norm to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %norm, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_std(ptr noundef %file, ptr nocapture noundef readnone %priv, i64 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %and = and i64 %id, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %for.inc, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc:                                          ; preds = %entry
  %and.1 = and i64 %id, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.1)
  %tobool.not.1 = icmp eq i64 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.1, label %for.inc.if.end4_crit_edge

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.1:                                        ; preds = %for.inc
  %and.2 = and i64 %id, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.2)
  %tobool.not.2 = icmp eq i64 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.2, label %for.inc.1.if.end4_crit_edge

for.inc.1.if.end4_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.2:                                        ; preds = %for.inc.1
  %and.3 = and i64 %id, 224
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.3)
  %tobool.not.3 = icmp eq i64 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.3, label %for.inc.2.if.end4_crit_edge

for.inc.2.if.end4_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.3:                                        ; preds = %for.inc.2
  %and.4 = and i64 %id, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.4)
  %tobool.not.4 = icmp eq i64 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.4, label %for.inc.3.if.end4_crit_edge

for.inc.3.if.end4_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.4:                                        ; preds = %for.inc.3
  %and.5 = and i64 %id, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.5)
  %tobool.not.5 = icmp eq i64 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.5, label %for.inc.4.if.end4_crit_edge

for.inc.4.if.end4_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.5:                                        ; preds = %for.inc.4
  %and.6 = and i64 %id, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.6)
  %tobool.not.6 = icmp eq i64 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.6, label %for.inc.5.if.end4_crit_edge

for.inc.5.if.end4_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.6:                                        ; preds = %for.inc.5
  %and.7 = and i64 %id, 1024
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.7)
  %tobool.not.7 = icmp eq i64 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.7, label %for.inc.6.if.end4_crit_edge

for.inc.6.if.end4_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.7:                                        ; preds = %for.inc.6
  %and.8 = and i64 %id, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.8)
  %tobool.not.8 = icmp eq i64 %and.8, 0
  br i1 %tobool.not.8, label %for.inc.8, label %for.inc.7.if.end4_crit_edge

for.inc.7.if.end4_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.8:                                        ; preds = %for.inc.7
  %and.9 = and i64 %id, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.9)
  %tobool.not.9 = icmp eq i64 %and.9, 0
  br i1 %tobool.not.9, label %for.inc.9, label %for.inc.8.if.end4_crit_edge

for.inc.8.if.end4_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.9:                                        ; preds = %for.inc.8
  %and.10 = and i64 %id, 3276800
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.10)
  %tobool.not.10 = icmp eq i64 %and.10, 0
  br i1 %tobool.not.10, label %for.inc.9.cleanup_crit_edge, label %for.inc.9.if.end4_crit_edge

for.inc.9.if.end4_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.inc.9.cleanup_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %for.inc.9.if.end4_crit_edge, %for.inc.8.if.end4_crit_edge, %for.inc.7.if.end4_crit_edge, %for.inc.6.if.end4_crit_edge, %for.inc.5.if.end4_crit_edge, %for.inc.4.if.end4_crit_edge, %for.inc.3.if.end4_crit_edge, %for.inc.2.if.end4_crit_edge, %for.inc.1.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  %i.0107.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 1, %for.inc.if.end4_crit_edge ], [ 2, %for.inc.1.if.end4_crit_edge ], [ 3, %for.inc.2.if.end4_crit_edge ], [ 4, %for.inc.3.if.end4_crit_edge ], [ 5, %for.inc.4.if.end4_crit_edge ], [ 6, %for.inc.5.if.end4_crit_edge ], [ 7, %for.inc.6.if.end4_crit_edge ], [ 8, %for.inc.7.if.end4_crit_edge ], [ 9, %for.inc.8.if.end4_crit_edge ], [ 10, %for.inc.9.if.end4_crit_edge ]
  %encodernorm = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 86
  %arrayidx5 = getelementptr [11 x %struct.cx231xx_tvnorm], ptr @cx231xx_tvnorms, i32 0, i32 %i.0107.lcssa
  %2 = call ptr @memcpy(ptr %encodernorm, ptr %arrayidx5, i32 24)
  %id7 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 86, i32 1
  %3 = ptrtoint ptr %id7 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %id7, align 8
  %and8 = and i64 %4, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool9.not = icmp eq i64 %and8, 0
  %5 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp19 = icmp ugt i32 %5, 2
  %. = select i1 %tobool9.not, i64 1, i64 45056
  %.117 = select i1 %tobool9.not, i32 576, i32 480
  %.118 = zext i1 %tobool9.not to i32
  br i1 %cmp19, label %if.end33.sink.split, label %if.end4.if.end33_crit_edge

if.end4.if.end33_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.end33.sink.split:                              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %.str.113..str.110 = select i1 %tobool9.not, ptr @.str.113, ptr @.str.110
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.113..str.110) #14
  br label %if.end33

if.end33:                                         ; preds = %if.end33.sink.split, %if.end4.if.end33_crit_edge
  %norm29 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %norm29 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %., ptr %norm29, align 8
  %height31 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 87, i32 6
  %7 = ptrtoint ptr %height31 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.117, ptr %height31, align 8
  %mpeg_ctrl_handler32 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 14
  tail call void @cx2341x_handler_set_50hz(ptr noundef %mpeg_ctrl_handler32, i32 noundef %.118) #11
  %subdevs = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 9, i32 2
  %8 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn108 = load ptr, ptr %subdevs, align 4
  %cmp39.not110 = icmp eq ptr %.pn108, %subdevs
  br i1 %cmp39.not110, label %if.end33.for.end63_crit_edge, label %for.body40.lr.ph

if.end33.for.end63_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end63

for.body40.lr.ph:                                 ; preds = %if.end33
  %norm49 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 28
  br label %for.body40

for.body40:                                       ; preds = %for.inc57.for.body40_crit_edge, %for.body40.lr.ph
  %.pn112 = phi ptr [ %.pn108, %for.body40.lr.ph ], [ %.pn, %for.inc57.for.body40_crit_edge ]
  %__err.0111 = phi i32 [ 0, %for.body40.lr.ph ], [ %__err.1, %for.inc57.for.body40_crit_edge ]
  %__sd.0113 = getelementptr i8, ptr %.pn112, i32 -80
  %ops = getelementptr i8, ptr %.pn112, i32 24
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %video, align 4
  %tobool41.not = icmp eq ptr %12, null
  br i1 %tobool41.not, label %for.body40.if.end51_crit_edge, label %land.lhs.true

for.body40.if.end51_crit_edge:                    ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

land.lhs.true:                                    ; preds = %for.body40
  %s_std = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %s_std to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %s_std, align 4
  %tobool44.not = icmp eq ptr %14, null
  br i1 %tobool44.not, label %land.lhs.true.if.end51_crit_edge, label %if.then45

land.lhs.true.if.end51_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then45:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %norm49 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %norm49, align 8
  %call50 = tail call i32 %14(ptr noundef %__sd.0113, i64 noundef %16) #11
  br label %if.end51

if.end51:                                         ; preds = %if.then45, %land.lhs.true.if.end51_crit_edge, %for.body40.if.end51_crit_edge
  %__err.1 = phi i32 [ %call50, %if.then45 ], [ %__err.0111, %land.lhs.true.if.end51_crit_edge ], [ %__err.0111, %for.body40.if.end51_crit_edge ]
  %17 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %__err.1, label %if.end51.for.end63_crit_edge [
    i32 0, label %if.end51.for.inc57_crit_edge
    i32 -515, label %if.end51.for.inc57_crit_edge119
  ]

if.end51.for.inc57_crit_edge119:                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc57

if.end51.for.inc57_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc57

if.end51.for.end63_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end63

for.inc57:                                        ; preds = %if.end51.for.inc57_crit_edge, %if.end51.for.inc57_crit_edge119
  %18 = ptrtoint ptr %.pn112 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load ptr, ptr %.pn112, align 4
  %cmp39.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp39.not, label %for.inc57.for.end63_crit_edge, label %for.inc57.for.body40_crit_edge

for.inc57.for.body40_crit_edge:                   ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body40

for.inc57.for.end63_crit_edge:                    ; preds = %for.inc57
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end63

for.end63:                                        ; preds = %for.inc57.for.end63_crit_edge, %if.end51.for.end63_crit_edge, %if.end33.for.end63_crit_edge
  %call66 = tail call i32 @cx231xx_do_mode_ctrl_overrides(ptr noundef %1) #11
  %19 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp68 = icmp ugt i32 %19, 2
  br i1 %cmp68, label %do.end72, label %for.end63.cleanup_crit_edge

for.end63.cleanup_crit_edge:                      ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end72:                                         ; preds = %for.end63
  call void @__sanitizer_cov_trace_pc() #13
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116, i32 noundef %i.0107.lcssa) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end72, %for.end63.cleanup_crit_edge, %for.inc.9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end72 ], [ 0, %for.end63.cleanup_crit_edge ], [ -22, %for.inc.9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_enum_input(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_g_input(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_s_input(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_ctrl(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %ctl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp ugt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.end4_crit_edge

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %subdevs = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn29 = load ptr, ptr %subdevs, align 4
  %cmp8.not30 = icmp eq ptr %.pn29, %subdevs
  br i1 %cmp8.not30, label %do.end4.do.body15_crit_edge, label %do.end4.for.body_crit_edge

do.end4.for.body_crit_edge:                       ; preds = %do.end4
  br label %for.body

do.end4.do.body15_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end4.for.body_crit_edge
  %.pn31 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn29, %do.end4.for.body_crit_edge ]
  %ctrl_handler = getelementptr i8, ptr %.pn31, i32 32
  %4 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl_handler, align 4
  %call9 = tail call i32 @v4l2_s_ctrl(ptr noundef null, ptr noundef %5, ptr noundef %ctl) #11
  %6 = ptrtoint ptr %.pn31 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn31, align 4
  %cmp8.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp8.not, label %for.body.do.body15_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.do.body15_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body15

do.body15:                                        ; preds = %for.body.do.body15_crit_edge, %do.end4.do.body15_crit_edge
  %7 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp16 = icmp ugt i32 %7, 2
  br i1 %cmp16, label %do.end20, label %do.body15.do.end25_crit_edge

do.body15.do.end25_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

do.end20:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #13
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #14
  br label %do.end25

do.end25:                                         ; preds = %do.end20, %do.body15.do.end25_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_pixelaspect(ptr noundef %file, ptr nocapture noundef readnone %priv, i32 noundef %type, ptr nocapture noundef writeonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp.not = icmp eq i32 %type, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %id = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 86, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %id, align 8
  %and = and i64 %3, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool.not, i32 11, i32 54
  %4 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %f, align 4
  %cond3 = select i1 %tobool.not, i32 10, i32 59
  %denominator = getelementptr inbounds %struct.v4l2_fract, ptr %f, i32 0, i32 1
  %5 = ptrtoint ptr %denominator to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond3, ptr %denominator, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_selection(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %s, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %target = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 1
  %4 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target, align 4
  %.off = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %r = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3
  %6 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %r, align 4
  %top = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %top to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %top, align 4
  %width = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 87, i32 5
  %8 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %width, align 4
  %width3 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %width3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %width3, align 4
  %height = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 87, i32 6
  %11 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %height, align 8
  %height6 = getelementptr inbounds %struct.v4l2_selection, ptr %s, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %height6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %height6, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_g_tuner(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_s_tuner(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_g_frequency(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_s_frequency(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_log_status(ptr noundef %file, ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %subdevs = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn35 = load ptr, ptr %subdevs, align 4
  %cmp.not37 = icmp eq ptr %.pn35, %subdevs
  br i1 %cmp.not37, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn39 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn35, %entry.for.body_crit_edge ]
  %__err.038 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %__sd.040 = getelementptr i8, ptr %.pn39, i32 -80
  %ops = getelementptr i8, ptr %.pn39, i32 24
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 %8(ptr noundef %__sd.040) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %__err.1 = phi i32 [ %call10, %if.then ], [ %__err.038, %land.lhs.true.if.end_crit_edge ], [ %__err.038, %for.body.if.end_crit_edge ]
  %9 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %__err.1, label %if.end.for.end_crit_edge [
    i32 0, label %if.end.for.inc_crit_edge
    i32 -515, label %if.end.for.inc_crit_edge41
  ]

if.end.for.inc_crit_edge41:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %if.end.for.inc_crit_edge41
  %10 = ptrtoint ptr %.pn39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn39, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %call23 = tail call i32 @v4l2_ctrl_log_status(ptr noundef %file, ptr noundef %priv) #11
  ret i32 %call23
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_g_register(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_s_register(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_do_mode_ctrl_overrides(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_s_ctrl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %vq, ptr nocapture noundef %nbuffers, ptr nocapture noundef %nplanes, ptr nocapture noundef %sizes, ptr nocapture noundef readnone %alloc_devs) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %2 = load i32, ptr @mpeglinesize, align 4
  %3 = load i32, ptr @mpeglines, align 4
  %mul = mul i32 %3, %2
  %ts_packet_size = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 87, i32 3
  %4 = ptrtoint ptr %ts_packet_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %2, ptr %ts_packet_size, align 4
  %ts_packet_count = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 87, i32 4
  %5 = ptrtoint ptr %ts_packet_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %ts_packet_count, align 8
  %num_buffers = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 21
  %6 = ptrtoint ptr %num_buffers to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_buffers, align 4
  %8 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbuffers, align 4
  %add = add i32 %9, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add)
  %cmp = icmp ult i32 %add, 4
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %sub = sub i32 4, %7
  %10 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %nbuffers, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %11 = ptrtoint ptr %nplanes to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nplanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %sizes to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sizes, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %mul)
  %cmp4 = icmp ult i32 %14, %mul
  %cond = select i1 %cmp4, i32 -22, i32 0
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %nplanes, align 4
  %16 = load i32, ptr @mpeglinesize, align 4
  %17 = load i32, ptr @mpeglines, align 4
  %mul6 = mul i32 %17, %16
  %18 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul6, ptr %sizes, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3
  %retval.0 = phi i32 [ %cond, %if.then3 ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %vq, i32 noundef %count) #0 align 64 {
entry:
  %value.i1.i = alloca i32, align 4
  %firmware.i.i = alloca ptr, align 4
  %value.i.i = alloca i32, align 4
  %gpio_output.i.i = alloca i32, align 4
  %version.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %sequence = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 55, i32 0, i32 11
  %2 = ptrtoint ptr %sequence to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %sequence, align 4
  %mode_tv = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 84
  %3 = ptrtoint ptr %mode_tv to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %mode_tv, align 4
  %call2 = tail call i32 @cx231xx_set_alt_setting(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext 1) #11
  %call3 = tail call i32 @cx231xx_set_gpio_value(ptr noundef %1, i32 noundef 2, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version.i) #11
  %4 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %version.i, align 4, !annotation !382
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %val.i, align 4
  %6 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %entry.do.end4.i_crit_edge, label %do.end.i

entry.do.end4.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.123) #14
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %entry.do.end4.i_crit_edge
  tail call void @cx231xx_disable656(ptr noundef %1) #11
  %call5.i = tail call i32 (ptr, i32, i32, i32, ...) @cx231xx_api_cmd(ptr noundef %1, i32 noundef 128, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.body8.i, label %do.end4.i.if.end62.i_crit_edge

do.end4.i.if.end62.i_crit_edge:                   ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62.i

do.body8.i:                                       ; preds = %do.end4.i
  %7 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp9.i = icmp ugt i32 %7, 1
  br i1 %cmp9.i, label %do.end13.i, label %do.body8.i.do.end18.i_crit_edge

do.body8.i.do.end18.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18.i

do.end13.i:                                       ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.123) #14
  br label %do.end18.i

do.end18.i:                                       ; preds = %do.end13.i, %do.body8.i.do.end18.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware.i.i) #11
  %8 = ptrtoint ptr %firmware.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %firmware.i.i, align 4, !annotation !382
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #11
  %9 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %value.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_output.i.i) #11
  %10 = ptrtoint ptr %gpio_output.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %gpio_output.i.i, align 4
  %call.i.i = tail call noalias ptr @vmalloc(i32 noundef 7536720) #15
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %do.body.i.i, label %if.end8.i.i

do.body.i.i:                                      ; preds = %do.end18.i
  %11 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp2.i.i = icmp ugt i32 %11, 1
  br i1 %cmp2.i.i, label %do.end.i.i, label %do.body.i.i.cx231xx_load_firmware.exit.thread.i_crit_edge

do.body.i.i.cx231xx_load_firmware.exit.thread.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_load_firmware.exit.thread.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call5.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #14
  br label %cx231xx_load_firmware.exit.thread.i

if.end8.i.i:                                      ; preds = %do.end18.i
  %call9.i.i = tail call noalias ptr @vmalloc(i32 noundef 4096) #15
  %cmp10.i.i = icmp eq ptr %call9.i.i, null
  %12 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp13.i.i = icmp ugt i32 %12, 1
  br i1 %cmp10.i.i, label %do.body12.i.i, label %do.body24.i.i

do.body12.i.i:                                    ; preds = %if.end8.i.i
  br i1 %cmp13.i.i, label %do.end17.i.i, label %do.body12.i.i.do.end22.i.i_crit_edge

do.body12.i.i.do.end22.i.i_crit_edge:             ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end22.i.i

do.end17.i.i:                                     ; preds = %do.body12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call19.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152) #14
  br label %do.end22.i.i

do.end22.i.i:                                     ; preds = %do.end17.i.i, %do.body12.i.i.do.end22.i.i_crit_edge
  tail call void @vfree(ptr noundef nonnull %call.i.i) #11
  br label %cx231xx_load_firmware.exit.thread.i

do.body24.i.i:                                    ; preds = %if.end8.i.i
  br i1 %cmp13.i.i, label %do.end29.i.i, label %do.body24.i.i.do.end34.i.i_crit_edge

do.body24.i.i.do.end34.i.i_crit_edge:             ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34.i.i

do.end29.i.i:                                     ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call31.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.153) #14
  br label %do.end34.i.i

do.end34.i.i:                                     ; preds = %do.end29.i.i, %do.body24.i.i.do.end34.i.i_crit_edge
  %call35.i.i = call fastcc i32 @mc417_memory_read(ptr noundef %1, i32 noundef 36896, ptr noundef nonnull %gpio_output.i.i) #11
  %call36.i.i = call fastcc i32 @mc417_memory_read(ptr noundef %1, i32 noundef 36876, ptr noundef nonnull %value.i.i) #11
  %call38.i.i = tail call fastcc i32 @mc417_register_write(ptr noundef %1, i16 noundef zeroext -28584, i32 noundef -19) #11
  %call39.i.i = tail call fastcc i32 @mc417_register_write(ptr noundef %1, i16 noundef zeroext -28588, i32 noundef -1) #11
  %or40.i.i = or i32 %call39.i.i, %call38.i.i
  %call41.i.i = tail call fastcc i32 @mc417_register_write(ptr noundef %1, i16 noundef zeroext 2040, i32 noundef -2147481600) #11
  %or42.i.i = or i32 %or40.i.i, %call41.i.i
  %call43.i.i = tail call fastcc i32 @mc417_register_write(ptr noundef %1, i16 noundef zeroext 2044, i32 noundef 26) #11
  %or44.i.i = or i32 %or42.i.i, %call43.i.i
  %call45.i.i = tail call fastcc i32 @mc417_register_write(ptr noundef %1, i16 noundef zeroext -24476, i32 noundef 0) #11
  %or46.i.i = or i32 %or44.i.i, %call45.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or46.i.i)
  %cmp47.not.i.i = icmp eq i32 %or46.i.i, 0
  %dev54.i.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %dev54.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev54.i.i, align 8
  br i1 %cmp47.not.i.i, label %if.end53.i.i, label %do.end51.i.i

do.end51.i.i:                                     ; preds = %do.end34.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.153) #14
  tail call void @vfree(ptr noundef nonnull %call.i.i) #11
  tail call void @vfree(ptr noundef nonnull %call9.i.i) #11
  br label %cx231xx_load_firmware.exit.i

if.end53.i.i:                                     ; preds = %do.end34.i.i
  %call55.i.i = call i32 @request_firmware(ptr noundef nonnull %firmware.i.i, ptr noundef nonnull @.str.161, ptr noundef %14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %cmp56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %cmp56.not.i.i, label %if.end66.i.i, label %do.end60.i.i

do.end60.i.i:                                     ; preds = %if.end53.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %dev54.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev54.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.161) #14
  %17 = ptrtoint ptr %dev54.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev54.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.166) #14
  call void @vfree(ptr noundef nonnull %call.i.i) #11
  call void @vfree(ptr noundef nonnull %call9.i.i) #11
  br label %cx231xx_load_firmware.exit.i

if.end66.i.i:                                     ; preds = %if.end53.i.i
  %19 = ptrtoint ptr %firmware.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %firmware.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 376836, i32 %22)
  %cmp67.not.i.i = icmp eq i32 %22, 376836
  br i1 %cmp67.not.i.i, label %if.end74.i.i, label %do.end71.i.i

do.end71.i.i:                                     ; preds = %if.end66.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %dev54.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev54.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.169, i32 noundef %22, i32 noundef 376836) #14
  %25 = ptrtoint ptr %firmware.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %firmware.i.i, align 4
  call void @release_firmware(ptr noundef %26) #11
  call void @vfree(ptr noundef nonnull %call.i.i) #11
  call void @vfree(ptr noundef nonnull %call9.i.i) #11
  br label %cx231xx_load_firmware.exit.thread.i

if.end74.i.i:                                     ; preds = %if.end66.i.i
  %data.i.i = getelementptr inbounds %struct.firmware, ptr %20, i32 0, i32 1
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %bcmp.i.i = call i32 @bcmp(ptr noundef dereferenceable(8) %28, ptr noundef nonnull dereferenceable(8) @cx231xx_load_firmware.magic, i32 8) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %cmp76.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %cmp76.not.i.i, label %if.end82.i.i, label %do.end80.i.i

do.end80.i.i:                                     ; preds = %if.end74.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %dev54.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev54.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.172) #14
  %31 = ptrtoint ptr %firmware.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %firmware.i.i, align 4
  call void @release_firmware(ptr noundef %32) #11
  call void @vfree(ptr noundef nonnull %call.i.i) #11
  call void @vfree(ptr noundef nonnull %call9.i.i) #11
  br label %cx231xx_load_firmware.exit.thread.i

if.end82.i.i:                                     ; preds = %if.end74.i.i
  call void @initGPIO(ptr noundef %1) #11
  %33 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp84.i.i = icmp ugt i32 %33, 1
  br i1 %cmp84.i.i, label %do.end93.i.i, label %do.end93.thread.i.i

do.end93.thread.i.i:                              ; preds = %if.end82.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %firmware.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %firmware.i.i, align 4
  %data94299.i.i = getelementptr inbounds %struct.firmware, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %data94299.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data94299.i.i, align 4
  br label %do.end106.i.i

do.end93.i.i:                                     ; preds = %if.end82.i.i
  %call90.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #14
  %.pr.i.i = load i32, ptr @v4l_debug, align 4
  %38 = ptrtoint ptr %firmware.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %firmware.i.i, align 4
  %data94.i.i = getelementptr inbounds %struct.firmware, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %data94.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data94.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i.i)
  %cmp96.i.i = icmp ugt i32 %.pr.i.i, 1
  br i1 %cmp96.i.i, label %do.end100.i.i, label %do.end93.i.i.do.end106.i.i_crit_edge

do.end93.i.i.do.end106.i.i_crit_edge:             ; preds = %do.end93.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end106.i.i

do.end100.i.i:                                    ; preds = %do.end93.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %39, align 4
  %call103.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, i32 noundef %43) #14
  br label %do.end106.i.i

do.end106.i.i:                                    ; preds = %do.end100.i.i, %do.end93.i.i.do.end106.i.i_crit_edge, %do.end93.thread.i.i
  %44 = phi ptr [ %37, %do.end93.thread.i.i ], [ %41, %do.end100.i.i ], [ %41, %do.end93.i.i.do.end106.i.i_crit_edge ]
  %45 = ptrtoint ptr %firmware.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %firmware.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp108305.not.i.i = icmp eq i32 %48, 0
  br i1 %cmp108305.not.i.i, label %do.end106.i.i.for.cond115.preheader.i.i.preheader_crit_edge, label %do.end106.i.i.for.body.i.i_crit_edge

do.end106.i.i.for.body.i.i_crit_edge:             ; preds = %do.end106.i.i
  br label %for.body.i.i

do.end106.i.i.for.cond115.preheader.i.i.preheader_crit_edge: ; preds = %do.end106.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond115.preheader.i.i.preheader

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.end106.i.i.for.body.i.i_crit_edge
  %transfer_size.0309.i.i = phi i32 [ %add110.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %do.end106.i.i.for.body.i.i_crit_edge ]
  %address.0308.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %do.end106.i.i.for.body.i.i_crit_edge ]
  %p_fw_data.0307.i.i = phi ptr [ %add.ptr109.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %44, %do.end106.i.i.for.body.i.i_crit_edge ]
  %p_current_fw.0306.i.i = phi ptr [ %add.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %do.end106.i.i.for.body.i.i_crit_edge ]
  %49 = ptrtoint ptr %p_fw_data.0307.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %p_fw_data.0307.i.i, align 4
  %and.i.i.i = shl i32 %50, 18
  %shl.i.i.i = and i32 %and.i.i.i, 66846720
  %or.i.i.i = or i32 %shl.i.i.i, 133120
  %51 = ptrtoint ptr %p_current_fw.0306.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or.i.i.i, ptr %p_current_fw.0306.i.i, align 4
  %incdec.ptr.i.i.i = getelementptr i32, ptr %p_current_fw.0306.i.i, i32 1
  %or2.i.i.i = or i32 %shl.i.i.i, 138240
  %52 = ptrtoint ptr %incdec.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %or2.i.i.i, ptr %incdec.ptr.i.i.i, align 4
  %incdec.ptr3.i.i.i = getelementptr i32, ptr %p_current_fw.0306.i.i, i32 2
  %and4.i.i.i = shl i32 %50, 10
  %or5.i.i.i = and i32 %and4.i.i.i, 66846720
  %shl6.i.i.i = or i32 %or5.i.i.i, 141312
  %53 = ptrtoint ptr %incdec.ptr3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %shl6.i.i.i, ptr %incdec.ptr3.i.i.i, align 4
  %incdec.ptr7.i.i.i = getelementptr i32, ptr %p_current_fw.0306.i.i, i32 3
  %or8.i.i.i = or i32 %or5.i.i.i, 146432
  %54 = ptrtoint ptr %incdec.ptr7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %or8.i.i.i, ptr %incdec.ptr7.i.i.i, align 4
  %incdec.ptr9.i.i.i = getelementptr i32, ptr %p_current_fw.0306.i.i, i32 4
  %55 = shl i32 %50, 2
  %or11.i.i.i = and i32 %55, 66846720
  %shl12.i.i.i = or i32 %or11.i.i.i, 149504
  %56 = ptrtoint ptr %incdec.ptr9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shl12.i.i.i, ptr %incdec.ptr9.i.i.i, align 4
  %incdec.ptr13.i.i.i = getelementptr i32, ptr %p_current_fw.0306.i.i, i32 5
  %or14.i.i.i = or i32 %or11.i.i.i, 154624
  %57 = ptrtoint ptr %incdec.ptr13.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or14.i.i.i, ptr %incdec.ptr13.i.i.i, align 4
  %incdec.ptr15.i.i.i = getelementptr i32, ptr %p_current_fw.0306.i.i, i32 6
  %58 = lshr i32 %50, 6
  %or18.i.i.i = and i32 %58, 66846720
  %shl19.i.i.i = or i32 %or18.i.i.i, 157696
  %59 = ptrtoint ptr %incdec.ptr15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %shl19.i.i.i, ptr %incdec.ptr15.i.i.i, align 4
  %incdec.ptr20.i.i.i = getelementptr i32, ptr %p_current_fw.0306.i.i, i32 7
  %or21.i.i.i = or i32 %or18.i.i.i, 162816
  %60 = ptrtoint ptr %incdec.ptr20.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or21.i.i.i, ptr %incdec.ptr20.i.i.i, align 4
  %incdec.ptr22.i.i.i = getelementptr i32, ptr %p_current_fw.0306.i.i, i32 8
  %61 = shl i32 %address.0308.i.i, 2
  %or25.i.i.i = and i32 %61, 16515072
  %shl26.i.i.i = or i32 %or25.i.i.i, 16943104
  %62 = ptrtoint ptr %incdec.ptr22.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %shl26.i.i.i, ptr %incdec.ptr22.i.i.i, align 4
  %incdec.ptr27.i.i.i = getelementptr i32, ptr %p_current_fw.0306.i.i, i32 9
  %or28.i.i.i = or i32 %or25.i.i.i, 16948224
  %63 = ptrtoint ptr %incdec.ptr27.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or28.i.i.i, ptr %incdec.ptr27.i.i.i, align 4
  %incdec.ptr29.i.i.i = getelementptr i32, ptr %p_current_fw.0306.i.i, i32 10
  %and30.i.i.i = shl i32 %address.0308.i.i, 10
  %or31.i.i.i = and i32 %and30.i.i.i, 66846720
  %shl32.i.i.i = or i32 %or31.i.i.i, 174080
  %64 = ptrtoint ptr %incdec.ptr29.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %shl32.i.i.i, ptr %incdec.ptr29.i.i.i, align 4
  %incdec.ptr33.i.i.i = getelementptr i32, ptr %p_current_fw.0306.i.i, i32 11
  %or34.i.i.i = or i32 %or31.i.i.i, 179200
  %65 = ptrtoint ptr %incdec.ptr33.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or34.i.i.i, ptr %incdec.ptr33.i.i.i, align 4
  %incdec.ptr35.i.i.i = getelementptr i32, ptr %p_current_fw.0306.i.i, i32 12
  %and36.i.i.i = shl i32 %address.0308.i.i, 18
  %shl37.i.i.i = and i32 %and36.i.i.i, 66846720
  %or38.i.i.i = or i32 %shl37.i.i.i, 182272
  %66 = ptrtoint ptr %incdec.ptr35.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or38.i.i.i, ptr %incdec.ptr35.i.i.i, align 4
  %incdec.ptr40.i.i.i = getelementptr i32, ptr %p_current_fw.0306.i.i, i32 13
  %or41.i.i.i = or i32 %shl37.i.i.i, 187392
  %67 = ptrtoint ptr %incdec.ptr40.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or41.i.i.i, ptr %incdec.ptr40.i.i.i, align 4
  %incdec.ptr42.i.i.i = getelementptr i32, ptr %p_current_fw.0306.i.i, i32 14
  %68 = call ptr @memset(ptr %incdec.ptr42.i.i.i, i32 255, i32 24)
  %add.i.i = add i32 %address.0308.i.i, 1
  %add.ptr.i.i = getelementptr i32, ptr %p_current_fw.0306.i.i, i32 20
  %add.ptr109.i.i = getelementptr i32, ptr %p_fw_data.0307.i.i, i32 1
  %add110.i.i = add i32 %transfer_size.0309.i.i, 4
  %69 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %46, align 4
  %cmp108.i.i = icmp ult i32 %add110.i.i, %70
  br i1 %cmp108.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.for.cond115.preheader.i.i.preheader_crit_edge

for.body.i.i.for.cond115.preheader.i.i.preheader_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond115.preheader.i.i.preheader

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.cond115.preheader.i.i.preheader:              ; preds = %for.body.i.i.for.cond115.preheader.i.i.preheader_crit_edge, %do.end106.i.i.for.cond115.preheader.i.i.preheader_crit_edge
  br label %for.cond115.preheader.i.i

for.cond115.preheader.i.i:                        ; preds = %for.end156.i.i.for.cond115.preheader.i.i_crit_edge, %for.cond115.preheader.i.i.preheader
  %frame.0311.i.i = phi i32 [ %inc159.i.i, %for.end156.i.i.for.cond115.preheader.i.i_crit_edge ], [ 0, %for.cond115.preheader.i.i.preheader ]
  %mul120.i.i = shl i32 %frame.0311.i.i, 10
  br label %for.body119.i.i

for.body119.i.i:                                  ; preds = %for.body119.i.i.for.body119.i.i_crit_edge, %for.cond115.preheader.i.i
  %i.0310.i.i = phi i32 [ 0, %for.cond115.preheader.i.i ], [ %inc155.i.i, %for.body119.i.i.for.body119.i.i_crit_edge ]
  %div121301.i.i = lshr exact i32 %i.0310.i.i, 2
  %add122.i.i = add nuw nsw i32 %div121301.i.i, %mul120.i.i
  %add.ptr123.i.i = getelementptr i32, ptr %call.i.i, i32 %add122.i.i
  %71 = ptrtoint ptr %add.ptr123.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %add.ptr123.i.i, align 4
  %conv124.i.i = trunc i32 %72 to i8
  %add.ptr125.i.i = getelementptr i8, ptr %call9.i.i, i32 %i.0310.i.i
  %73 = ptrtoint ptr %add.ptr125.i.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv124.i.i, ptr %add.ptr125.i.i, align 1
  %inc.i.i = or i32 %i.0310.i.i, 1
  %and131.i.i = lshr i32 %72, 8
  %conv132.i.i = trunc i32 %and131.i.i to i8
  %add.ptr133.i.i = getelementptr i8, ptr %call9.i.i, i32 %inc.i.i
  %74 = ptrtoint ptr %add.ptr133.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv132.i.i, ptr %add.ptr133.i.i, align 1
  %inc134.i.i = or i32 %i.0310.i.i, 2
  %and140.i.i = lshr i32 %72, 16
  %conv142.i.i = trunc i32 %and140.i.i to i8
  %add.ptr143.i.i = getelementptr i8, ptr %call9.i.i, i32 %inc134.i.i
  %75 = ptrtoint ptr %add.ptr143.i.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv142.i.i, ptr %add.ptr143.i.i, align 1
  %inc144.i.i = or i32 %i.0310.i.i, 3
  %shr151.i.i = lshr i32 %72, 24
  %conv152.i.i = trunc i32 %shr151.i.i to i8
  %add.ptr153.i.i = getelementptr i8, ptr %call9.i.i, i32 %inc144.i.i
  %76 = ptrtoint ptr %add.ptr153.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv152.i.i, ptr %add.ptr153.i.i, align 1
  %inc155.i.i = add nuw nsw i32 %i.0310.i.i, 4
  %cmp117.i.i = icmp ult i32 %i.0310.i.i, 4092
  br i1 %cmp117.i.i, label %for.body119.i.i.for.body119.i.i_crit_edge, label %for.end156.i.i

for.body119.i.i.for.body119.i.i_crit_edge:        ; preds = %for.body119.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body119.i.i

for.end156.i.i:                                   ; preds = %for.body119.i.i
  %call157.i.i = call i32 @cx231xx_ep5_bulkout(ptr noundef %1, ptr noundef nonnull %call9.i.i, i16 noundef zeroext 4096) #11
  %inc159.i.i = add nuw nsw i32 %frame.0311.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc159.i.i, 1840
  br i1 %exitcond.not.i.i, label %for.end160.i.i, label %for.end156.i.i.for.cond115.preheader.i.i_crit_edge

for.end156.i.i.for.cond115.preheader.i.i_crit_edge: ; preds = %for.end156.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond115.preheader.i.i

for.end160.i.i:                                   ; preds = %for.end156.i.i
  call void @vfree(ptr noundef nonnull %call.i.i) #11
  call void @vfree(ptr noundef nonnull %call9.i.i) #11
  call void @uninitGPIO(ptr noundef %1) #11
  %77 = ptrtoint ptr %firmware.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %firmware.i.i, align 4
  call void @release_firmware(ptr noundef %78) #11
  %79 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp162.not.i.i = icmp eq i32 %79, 0
  br i1 %cmp162.not.i.i, label %for.end160.i.i.do.end172.i.i_crit_edge, label %do.end167.i.i

for.end160.i.i.do.end172.i.i_crit_edge:           ; preds = %for.end160.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end172.i.i

do.end167.i.i:                                    ; preds = %for.end160.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call169.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #14
  br label %do.end172.i.i

do.end172.i.i:                                    ; preds = %do.end167.i.i, %for.end160.i.i.do.end172.i.i_crit_edge
  %call173.i.i = call fastcc i32 @mc417_register_write(ptr noundef %1, i16 noundef zeroext -28588, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call173.i.i)
  %cmp175.i.i = icmp slt i32 %call173.i.i, 0
  br i1 %cmp175.i.i, label %do.end180.i.i, label %if.end182.i.i

do.end180.i.i:                                    ; preds = %do.end172.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %dev54.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev54.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.153) #14
  br label %cx231xx_load_firmware.exit.thread.i

if.end182.i.i:                                    ; preds = %do.end172.i.i
  %82 = ptrtoint ptr %gpio_output.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %gpio_output.i.i, align 4
  %call183.i.i = call fastcc i32 @mc417_register_write(ptr noundef %1, i16 noundef zeroext -28640, i32 noundef %83) #11
  %or184.i.i = or i32 %call183.i.i, %call173.i.i
  %84 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %value.i.i, align 4
  %call185.i.i = call fastcc i32 @mc417_register_write(ptr noundef %1, i16 noundef zeroext -28660, i32 noundef %85) #11
  %or186.i.i = or i32 %or184.i.i, %call185.i.i
  %call187.i.i = call fastcc i32 @mc417_register_read(ptr noundef %1, i16 noundef zeroext -28584, ptr noundef nonnull %value.i.i) #11
  %or188.i.i = or i32 %or186.i.i, %call187.i.i
  %86 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %value.i.i, align 4
  %and189.i.i = and i32 %87, -24
  %call190.i.i = call fastcc i32 @mc417_register_write(ptr noundef %1, i16 noundef zeroext -28584, i32 noundef %and189.i.i) #11
  %or191.i.i = or i32 %or188.i.i, %call190.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or191.i.i)
  %cmp192.i.i = icmp slt i32 %or191.i.i, 0
  br i1 %cmp192.i.i, label %do.end197.i.i, label %cx231xx_load_firmware.exit.thread16.i

cx231xx_load_firmware.exit.thread16.i:            ; preds = %if.end182.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_output.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i.i) #11
  br label %if.end26.i

do.end197.i.i:                                    ; preds = %if.end182.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %dev54.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev54.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.153) #14
  br label %cx231xx_load_firmware.exit.thread.i

cx231xx_load_firmware.exit.thread.i:              ; preds = %do.end197.i.i, %do.end180.i.i, %do.end80.i.i, %do.end71.i.i, %do.end22.i.i, %do.end.i.i, %do.body.i.i.cx231xx_load_firmware.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_output.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i.i) #11
  br label %do.end24.i

cx231xx_load_firmware.exit.i:                     ; preds = %do.end60.i.i, %do.end51.i.i
  %retval.0.i.i = phi i32 [ %or46.i.i, %do.end51.i.i ], [ %call55.i.i, %do.end60.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_output.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp20.i = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp20.i, label %cx231xx_load_firmware.exit.i.do.end24.i_crit_edge, label %cx231xx_load_firmware.exit.i.if.end26.i_crit_edge

cx231xx_load_firmware.exit.i.if.end26.i_crit_edge: ; preds = %cx231xx_load_firmware.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

cx231xx_load_firmware.exit.i.do.end24.i_crit_edge: ; preds = %cx231xx_load_firmware.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24.i

do.end24.i:                                       ; preds = %cx231xx_load_firmware.exit.i.do.end24.i_crit_edge, %cx231xx_load_firmware.exit.thread.i
  %dev25.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %90 = ptrtoint ptr %dev25.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev25.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.123) #14
  br label %cx231xx_initialize_codec.exit

if.end26.i:                                       ; preds = %cx231xx_load_firmware.exit.i.if.end26.i_crit_edge, %cx231xx_load_firmware.exit.thread16.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i1.i) #11
  %92 = ptrtoint ptr %value.i1.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %value.i1.i, align 4, !annotation !382
  %93 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %93)
  %cmp.i2.i = icmp ugt i32 %93, 1
  br i1 %cmp.i2.i, label %do.end.i4.i, label %if.end26.i.for.body.i6.i.preheader_crit_edge

if.end26.i.for.body.i6.i.preheader_crit_edge:     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i6.i.preheader

do.end.i4.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.187) #14
  br label %for.body.i6.i.preheader

for.body.i6.i.preheader:                          ; preds = %do.end.i4.i, %if.end26.i.for.body.i6.i.preheader_crit_edge
  br label %for.body.i6.i

for.body.i6.i:                                    ; preds = %for.inc.i.i.for.body.i6.i_crit_edge, %for.body.i6.i.preheader
  %signaturecnt.055.i.i = phi i32 [ %signaturecnt.1.i.i, %for.inc.i.i.for.body.i6.i_crit_edge ], [ 0, %for.body.i6.i.preheader ]
  %i.054.i.i = phi i32 [ %inc27.i.i, %for.inc.i.i.for.body.i6.i_crit_edge ], [ 0, %for.body.i6.i.preheader ]
  %call5.i5.i = call fastcc i32 @mc417_memory_read(ptr noundef %1, i32 noundef %i.054.i.i, ptr noundef nonnull %value.i1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i5.i)
  %cmp6.i.i = icmp slt i32 %call5.i5.i, 0
  br i1 %cmp6.i.i, label %for.body.i6.i.do.end32.i_crit_edge, label %if.end8.i8.i

for.body.i6.i.do.end32.i_crit_edge:               ; preds = %for.body.i6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32.i

if.end8.i8.i:                                     ; preds = %for.body.i6.i
  %94 = ptrtoint ptr %value.i1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %value.i1.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__const.cx231xx_find_mailbox.signature, i32 0, i32 %signaturecnt.055.i.i
  %96 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %95, i32 %97)
  %cmp9.i.i = icmp eq i32 %95, %97
  %inc.i7.i = add i32 %signaturecnt.055.i.i, 1
  %signaturecnt.1.i.i = select i1 %cmp9.i.i, i32 %inc.i7.i, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %signaturecnt.1.i.i)
  %cmp12.i.i = icmp eq i32 %signaturecnt.1.i.i, 4
  br i1 %cmp12.i.i, label %do.body14.i.i, label %for.inc.i.i

do.body14.i.i:                                    ; preds = %if.end8.i8.i
  %98 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp15.not.i.i = icmp eq i32 %98, 0
  %.pre.i.i = add nuw nsw i32 %i.054.i.i, 1
  br i1 %cmp15.not.i.i, label %do.body14.i.i.if.end34.i_crit_edge, label %do.end19.i.i

do.body14.i.i.if.end34.i_crit_edge:               ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

do.end19.i.i:                                     ; preds = %do.body14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call21.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189, i32 noundef %.pre.i.i) #14
  br label %if.end34.i

for.inc.i.i:                                      ; preds = %if.end8.i8.i
  %inc27.i.i = add nuw nsw i32 %i.054.i.i, 1
  %exitcond.not.i9.i = icmp eq i32 %inc27.i.i, 256
  br i1 %exitcond.not.i9.i, label %do.body28.i.i, label %for.inc.i.i.for.body.i6.i_crit_edge

for.inc.i.i.for.body.i6.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i6.i

do.body28.i.i:                                    ; preds = %for.inc.i.i
  %99 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %cmp29.i.i = icmp ugt i32 %99, 2
  br i1 %cmp29.i.i, label %do.end33.i.i, label %do.body28.i.i.do.end32.i_crit_edge

do.body28.i.i.do.end32.i_crit_edge:               ; preds = %do.body28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end32.i

do.end33.i.i:                                     ; preds = %do.body28.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call35.i10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192) #14
  br label %do.end32.i

do.end32.i:                                       ; preds = %do.end33.i.i, %do.body28.i.i.do.end32.i_crit_edge, %for.body.i6.i.do.end32.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i1.i) #11
  %100 = ptrtoint ptr %dev54.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev54.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.123) #14
  br label %cx231xx_initialize_codec.exit

if.end34.i:                                       ; preds = %do.end19.i.i, %do.body14.i.i.if.end34.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i1.i) #11
  %cx23417_mailbox.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 94
  %102 = ptrtoint ptr %cx23417_mailbox.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %.pre.i.i, ptr %cx23417_mailbox.i, align 4
  %call35.i = call i32 (ptr, i32, i32, i32, ...) @cx231xx_api_cmd(ptr noundef %1, i32 noundef 128, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %do.end40.i, label %if.end42.i

do.end40.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  %103 = ptrtoint ptr %dev54.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev54.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.136) #14
  br label %cx231xx_initialize_codec.exit

if.end42.i:                                       ; preds = %if.end34.i
  %call43.i = call i32 (ptr, i32, i32, i32, ...) @cx231xx_api_cmd(ptr noundef %1, i32 noundef 196, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %version.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp44.i = icmp slt i32 %call43.i, 0
  br i1 %cmp44.i, label %do.end48.i, label %do.body51.i

do.end48.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %dev54.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev54.i.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.139) #14
  br label %cx231xx_initialize_codec.exit

do.body51.i:                                      ; preds = %if.end42.i
  %107 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %107)
  %cmp52.not.i = icmp eq i32 %107, 0
  br i1 %cmp52.not.i, label %do.body51.i.do.end61.i_crit_edge, label %do.end56.i

do.body51.i.do.end61.i_crit_edge:                 ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end61.i

do.end56.i:                                       ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %version.i, align 4
  %call58.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, i32 noundef %109) #14
  br label %do.end61.i

do.end61.i:                                       ; preds = %do.end56.i, %do.body51.i.do.end61.i_crit_edge
  call void @msleep(i32 noundef 200) #11
  br label %if.end62.i

if.end62.i:                                       ; preds = %do.end61.i, %do.end4.i.if.end62.i_crit_edge
  %call64.i = call fastcc i32 @mc417_register_read(ptr noundef %1, i16 noundef zeroext 8440, ptr noundef nonnull %val.i) #11
  %110 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %110)
  %cmp66.i = icmp ugt i32 %110, 2
  br i1 %cmp66.i, label %do.end70.i, label %if.end62.i.do.end75.i_crit_edge

if.end62.i.do.end75.i_crit_edge:                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end75.i

do.end70.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #13
  %111 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %val.i, align 4
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, i32 noundef %112) #14
  br label %do.end75.i

do.end75.i:                                       ; preds = %do.end70.i, %if.end62.i.do.end75.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %cmp76.i = icmp slt i32 %call64.i, 0
  br i1 %cmp76.i, label %do.end75.i.cx231xx_initialize_codec.exit_crit_edge, label %for.end.i

do.end75.i.cx231xx_initialize_codec.exit_crit_edge: ; preds = %do.end75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_initialize_codec.exit

for.end.i:                                        ; preds = %do.end75.i
  call void @cx231xx_enable656(ptr noundef %1) #11
  %call79.i = call i32 (ptr, i32, i32, i32, ...) @cx231xx_api_cmd(ptr noundef %1, i32 noundef 130, i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 3, i32 noundef 4) #11
  %113 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %cmp.not.i.i = icmp eq i32 %113, 0
  br i1 %cmp.not.i.i, label %for.end.i.cx231xx_codec_settings.exit.i_crit_edge, label %do.end.i13.i

for.end.i.cx231xx_codec_settings.exit.i_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_codec_settings.exit.i

do.end.i13.i:                                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i12.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.194) #14
  br label %cx231xx_codec_settings.exit.i

cx231xx_codec_settings.exit.i:                    ; preds = %do.end.i13.i, %for.end.i.cx231xx_codec_settings.exit.i_crit_edge
  %height.i.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 87, i32 6
  %114 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %height.i.i, align 8
  %width.i.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 87, i32 5
  %116 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %width.i.i, align 4
  %call4.i.i = call i32 (ptr, i32, i32, i32, ...) @cx231xx_api_cmd(ptr noundef %1, i32 noundef 145, i32 noundef 2, i32 noundef 0, i32 noundef %115, i32 noundef %117) #11
  %118 = ptrtoint ptr %width.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %width.i.i, align 4
  %conv.i.i = trunc i32 %119 to i16
  %mpeg_ctrl_handler.i.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 14
  %width7.i.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 14, i32 2
  %120 = ptrtoint ptr %width7.i.i to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv.i.i, ptr %width7.i.i, align 4
  %121 = ptrtoint ptr %height.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %height.i.i, align 8
  %conv10.i.i = trunc i32 %122 to i16
  %height12.i.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 14, i32 3
  %123 = ptrtoint ptr %height12.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv10.i.i, ptr %height12.i.i, align 2
  %call14.i.i = call i32 @cx2341x_handler_setup(ptr noundef %mpeg_ctrl_handler.i.i) #11
  %call15.i.i = call i32 (ptr, i32, i32, i32, ...) @cx231xx_api_cmd(ptr noundef %1, i32 noundef 220, i32 noundef 2, i32 noundef 0, i32 noundef 3, i32 noundef 1) #11
  %call16.i.i = call i32 (ptr, i32, i32, i32, ...) @cx231xx_api_cmd(ptr noundef %1, i32 noundef 220, i32 noundef 2, i32 noundef 0, i32 noundef 4, i32 noundef 1) #11
  call void @msleep(i32 noundef 60) #11
  %call80.i = call i32 (ptr, i32, i32, i32, ...) @cx231xx_api_cmd(ptr noundef %1, i32 noundef 205, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %cmp81.i = icmp slt i32 %call80.i, 0
  br i1 %cmp81.i, label %cx231xx_codec_settings.exit.i.cx231xx_initialize_codec.exit_crit_edge, label %if.end83.i

cx231xx_codec_settings.exit.i.cx231xx_initialize_codec.exit_crit_edge: ; preds = %cx231xx_codec_settings.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_initialize_codec.exit

if.end83.i:                                       ; preds = %cx231xx_codec_settings.exit.i
  call void @msleep(i32 noundef 60) #11
  call fastcc void @mc417_memory_write(ptr noundef %1, i32 noundef 2120, i32 noundef 128) #11
  %call85.i = call i32 (ptr, i32, i32, i32, ...) @cx231xx_api_cmd(ptr noundef %1, i32 noundef 129, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %cmp86.i = icmp slt i32 %call85.i, 0
  br i1 %cmp86.i, label %if.end83.i.cx231xx_initialize_codec.exit_crit_edge, label %if.end88.i

if.end83.i.cx231xx_initialize_codec.exit_crit_edge: ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_initialize_codec.exit

if.end88.i:                                       ; preds = %if.end83.i
  call void @msleep(i32 noundef 10) #11
  %call92.i = call fastcc i32 @mc417_register_read(ptr noundef %1, i16 noundef zeroext 8440, ptr noundef nonnull %val.i) #11
  %124 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %124)
  %cmp94.i = icmp ugt i32 %124, 2
  br i1 %cmp94.i, label %do.end98.i, label %if.end88.i.cx231xx_initialize_codec.exit_crit_edge

if.end88.i.cx231xx_initialize_codec.exit_crit_edge: ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx231xx_initialize_codec.exit

do.end98.i:                                       ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #13
  %125 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %val.i, align 4
  %call100.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %126) #14
  br label %cx231xx_initialize_codec.exit

cx231xx_initialize_codec.exit:                    ; preds = %do.end98.i, %if.end88.i.cx231xx_initialize_codec.exit_crit_edge, %if.end83.i.cx231xx_initialize_codec.exit_crit_edge, %cx231xx_codec_settings.exit.i.cx231xx_initialize_codec.exit_crit_edge, %do.end75.i.cx231xx_initialize_codec.exit_crit_edge, %do.end48.i, %do.end40.i, %do.end32.i, %do.end24.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version.i) #11
  call void @cx231xx_start_TS1(ptr noundef %1) #11
  %call5 = call i32 @cx231xx_set_alt_setting(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 0) #11
  %call6 = call i32 @cx231xx_set_mode(ptr noundef %1, i32 noundef 2) #11
  %USE_ISO = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 85
  %127 = ptrtoint ptr %USE_ISO to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %USE_ISO, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool.not = icmp eq i8 %128, 0
  %max_pkt_size9 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 58, i32 5
  %129 = ptrtoint ptr %max_pkt_size9 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %max_pkt_size9, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %cx231xx_initialize_codec.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call7 = call i32 @cx231xx_init_isoc(ptr noundef %1, i32 noundef 40, i32 noundef 8, i32 noundef %130, ptr noundef nonnull @cx231xx_isoc_copy) #11
  br label %if.end

if.else:                                          ; preds = %cx231xx_initialize_codec.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = call i32 @cx231xx_init_bulk(ptr noundef %1, i32 noundef 320, i32 noundef 5, i32 noundef %130, ptr noundef nonnull @cx231xx_bulk_copy) #11
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call7, %if.then ], [ %call10, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool11.not = icmp eq i32 %ret.0, 0
  br i1 %tobool11.not, label %if.end.if.end13_crit_edge, label %if.then12

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then12:                                        ; preds = %if.end
  %video_mode.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 55
  %slock.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 55, i32 3
  %call4.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #11
  %131 = ptrtoint ptr %video_mode.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %video_mode.i, align 4
  %cmp14.not32.i = icmp eq ptr %132, %video_mode.i
  br i1 %cmp14.not32.i, label %if.then12.return_all_buffers.exit_crit_edge, label %if.then12.for.body.i_crit_edge

if.then12.for.body.i_crit_edge:                   ; preds = %if.then12
  br label %for.body.i

if.then12.return_all_buffers.exit_crit_edge:      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %return_all_buffers.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then12.for.body.i_crit_edge
  %.pn.in33.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %132, %if.then12.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn.in33.i, i32 -736
  %133 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %.pn.i = load ptr, ptr %.pn.in33.i, align 8
  call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 3) #11
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in33.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33.i, i32 0, i32 1
  %134 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %prev.i.i.i, align 4
  %136 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %.pn.in33.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %135, ptr %prev1.i.i.i.i, align 4
  %139 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %139)
  store volatile ptr %137, ptr %135, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %140 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in33.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33.i, i32 0, i32 1
  %141 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp14.not.i = icmp eq ptr %.pn.i, %video_mode.i
  br i1 %cmp14.not.i, label %list_del.exit.i.return_all_buffers.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_del.exit.i.return_all_buffers.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return_all_buffers.exit

return_all_buffers.exit:                          ; preds = %list_del.exit.i.return_all_buffers.exit_crit_edge, %if.then12.return_all_buffers.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call4.i) #11
  br label %if.end13

if.end13:                                         ; preds = %return_all_buffers.exit, %if.end.if.end13_crit_edge
  %subdevs = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 9, i32 2
  %142 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %142)
  %.pn67 = load ptr, ptr %subdevs, align 4
  %cmp.not69 = icmp eq ptr %.pn67, %subdevs
  br i1 %cmp.not69, label %if.end13.for.end_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  br label %for.body

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end13.for.body_crit_edge
  %.pn71 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn67, %if.end13.for.body_crit_edge ]
  %__err.070 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %if.end13.for.body_crit_edge ]
  %__sd.072 = getelementptr i8, ptr %.pn71, i32 -80
  %ops = getelementptr i8, ptr %.pn71, i32 24
  %143 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %video, align 4
  %tobool17.not = icmp eq ptr %146, null
  br i1 %tobool17.not, label %for.body.if.end26_crit_edge, label %land.lhs.true

for.body.if.end26_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true:                                    ; preds = %for.body
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %146, i32 0, i32 10
  %147 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %s_stream, align 4
  %tobool20.not = icmp eq ptr %148, null
  br i1 %tobool20.not, label %land.lhs.true.if.end26_crit_edge, label %if.then21

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call25 = call i32 %148(ptr noundef %__sd.072, i32 noundef 1) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %land.lhs.true.if.end26_crit_edge, %for.body.if.end26_crit_edge
  %__err.1 = phi i32 [ %call25, %if.then21 ], [ %__err.070, %land.lhs.true.if.end26_crit_edge ], [ %__err.070, %for.body.if.end26_crit_edge ]
  %149 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %149, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %__err.1, label %if.end26.for.end_crit_edge [
    i32 0, label %if.end26.for.inc_crit_edge
    i32 -515, label %if.end26.for.inc_crit_edge83
  ]

if.end26.for.inc_crit_edge83:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %if.end26.for.inc_crit_edge, %if.end26.for.inc_crit_edge83
  %150 = ptrtoint ptr %.pn71 to i32
  call void @__asan_load4_noabort(i32 %150)
  %.pn = load ptr, ptr %.pn71, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end26.for.end_crit_edge, %if.end13.for.end_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %vq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv.i, align 4
  %subdevs = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn67 = load ptr, ptr %subdevs, align 4
  %cmp.not69 = icmp eq ptr %.pn67, %subdevs
  br i1 %cmp.not69, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn71 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn67, %entry.for.body_crit_edge ]
  %__err.070 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %__sd.072 = getelementptr i8, ptr %.pn71, i32 -80
  %ops = getelementptr i8, ptr %.pn71, i32 24
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %s_stream, align 4
  %tobool6.not = icmp eq ptr %8, null
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call10 = tail call i32 %8(ptr noundef %__sd.072, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %__err.1 = phi i32 [ %call10, %if.then ], [ %__err.070, %land.lhs.true.if.end_crit_edge ], [ %__err.070, %for.body.if.end_crit_edge ]
  %9 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %__err.1, label %if.end.for.end_crit_edge [
    i32 0, label %if.end.for.inc_crit_edge
    i32 -515, label %if.end.for.inc_crit_edge73
  ]

if.end.for.inc_crit_edge73:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %if.end.for.inc_crit_edge73
  %10 = ptrtoint ptr %.pn71 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn71, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @cx231xx_stop_TS1(ptr noundef %1) #11
  %USE_ISO = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 85
  %11 = ptrtoint ptr %USE_ISO to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %USE_ISO, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool23.not = icmp eq i8 %12, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cx231xx_uninit_isoc(ptr noundef %1) #11
  br label %if.end25

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @cx231xx_uninit_bulk(ptr noundef %1) #11
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then24
  %call26 = tail call i32 @cx231xx_set_mode(ptr noundef %1, i32 noundef 0) #11
  %call27 = tail call i32 (ptr, i32, i32, i32, ...) @cx231xx_api_cmd(ptr noundef %1, i32 noundef 130, i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  %slock = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 55, i32 3
  %call32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #11
  %13 = ptrtoint ptr %USE_ISO to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %USE_ISO, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool36.not = icmp eq i8 %14, 0
  %buf41 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 55, i32 2, i32 11
  %buf = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 55, i32 1, i32 11
  %buf41.sink = select i1 %tobool36.not, ptr %buf41, ptr %buf
  %15 = ptrtoint ptr %buf41.sink to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %buf41.sink, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call32) #11
  %video_mode.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 55
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #11
  %16 = ptrtoint ptr %video_mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %video_mode.i, align 4
  %cmp14.not32.i = icmp eq ptr %17, %video_mode.i
  br i1 %cmp14.not32.i, label %if.end25.return_all_buffers.exit_crit_edge, label %if.end25.for.body.i_crit_edge

if.end25.for.body.i_crit_edge:                    ; preds = %if.end25
  br label %for.body.i

if.end25.return_all_buffers.exit_crit_edge:       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %return_all_buffers.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.end25.for.body.i_crit_edge
  %.pn.in33.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %17, %if.end25.for.body.i_crit_edge ]
  %buf.0.i = getelementptr i8, ptr %.pn.in33.i, i32 -736
  %18 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i = load ptr, ptr %.pn.in33.i, align 8
  tail call void @vb2_buffer_done(ptr noundef %buf.0.i, i32 noundef 6) #11
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in33.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i, align 4
  %21 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn.in33.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %25 = ptrtoint ptr %.pn.in33.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in33.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp14.not.i = icmp eq ptr %.pn.i, %video_mode.i
  br i1 %cmp14.not.i, label %list_del.exit.i.return_all_buffers.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_del.exit.i.return_all_buffers.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return_all_buffers.exit

return_all_buffers.exit:                          ; preds = %list_del.exit.i.return_all_buffers.exit_crit_edge, %if.end25.return_all_buffers.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call4.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv.i = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv.i, align 4
  %video_mode = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 55
  %slock = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 55, i32 3
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #11
  %list = getelementptr inbounds %struct.cx231xx_buffer, ptr %vb, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.cx231xx, ptr %3, i32 0, i32 55, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %video_mode) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %video_mode, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.cx231xx_buffer, ptr %vb, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call6) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_alt_setting(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_gpio_value(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_start_TS1(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_init_isoc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_isoc_copy(ptr nocapture noundef %dev, ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %2 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp29.not = icmp eq i32 %3, 0
  br i1 %cmp29.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %left_data_count = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 13
  %p_left_data = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 12
  %mpeg_buffer_completed = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 15
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %left_data_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %left_data_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not = icmp eq i32 %5, 0
  br i1 %cmp1.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %p_left_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_left_data, align 4
  tail call fastcc void @buffer_copy(ptr noundef %dev, ptr noundef %7, i32 noundef %5, ptr noundef %1)
  %8 = ptrtoint ptr %left_data_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %left_data_count, align 4
  %10 = ptrtoint ptr %mpeg_buffer_completed to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mpeg_buffer_completed, align 4
  store i32 0, ptr %left_data_count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %actual_length = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.030, i32 2
  %11 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp7.not = icmp eq i32 %12, 0
  br i1 %cmp7.not, label %if.end.for.inc_crit_edge, label %if.then8

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.030
  %13 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %transfer_buffer, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %16
  tail call fastcc void @buffer_copy(ptr noundef %dev, ptr noundef %add.ptr, i32 noundef %12, ptr noundef %1)
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.030, 1
  %17 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %number_of_packets, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_init_bulk(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_bulk_copy(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %urb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %2 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transfer_buffer, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %4 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %actual_length, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 2592) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ps_head = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 17
  %6 = call ptr @memcpy(ptr %call9.i, ptr %ps_head, i32 3)
  %add.ptr = getelementptr i8, ptr %call9.i, i32 3
  %sub = add i32 %5, -3
  %7 = call ptr @memcpy(ptr %add.ptr, ptr %3, i32 %sub)
  %add.ptr3 = getelementptr i8, ptr %3, i32 %5
  %add.ptr4 = getelementptr i8, ptr %add.ptr3, i32 -3
  %8 = call ptr @memcpy(ptr %ps_head, ptr %add.ptr4, i32 3)
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %1, align 4
  %cmp.i.not.i = icmp eq ptr %10, %1
  br i1 %cmp.i.not.i, label %if.end.buffer_filled.exit_crit_edge, label %if.end.i22

if.end.buffer_filled.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %buffer_filled.exit

if.end.i22:                                       ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %10, i32 -736
  %call2.i = tail call ptr @vb2_plane_vaddr(ptr noundef %add.ptr.i, i32 noundef 0) #11
  %11 = call ptr @memcpy(ptr %call2.i, ptr %call9.i, i32 %5)
  %sequence.i = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %sequence.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sequence.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %sequence.i, align 4
  %sequence4.i = getelementptr i8, ptr %10, i32 -272
  %14 = ptrtoint ptr %sequence4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %sequence4.i, align 8
  %call.i.i = tail call i64 @ktime_get() #11
  %timestamp.i = getelementptr i8, ptr %10, i32 -712
  %15 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call.i.i, ptr %timestamp.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i22.list_del.exit.i_crit_edge

if.end.i22.list_del.exit.i_crit_edge:             ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %10, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i22.list_del.exit.i_crit_edge
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr.i, i32 noundef 5) #11
  br label %buffer_filled.exit

buffer_filled.exit:                               ; preds = %list_del.exit.i, %if.end.buffer_filled.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i) #11
  br label %cleanup

cleanup:                                          ; preds = %buffer_filled.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %buffer_filled.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_disable656(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_api_cmd(ptr noundef %dev, i32 noundef %command, i32 noundef %inputcnt, i32 noundef %outputcnt, ...) unnamed_addr #0 align 64 {
entry:
  %data = alloca [16 x i32], align 4
  %vargs = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #11
  %0 = call ptr @memset(ptr %data, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vargs) #11
  %1 = ptrtoint ptr %vargs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %vargs, align 4, !annotation !382
  %2 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp ugt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.151, i32 noundef %command) #14
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  call void @llvm.va_start(ptr nonnull %vargs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inputcnt)
  %cmp423.not = icmp eq i32 %inputcnt, 0
  br i1 %cmp423.not, label %do.end3.for.end_crit_edge, label %do.end3.for.body_crit_edge

do.end3.for.body_crit_edge:                       ; preds = %do.end3
  br label %for.body

do.end3.for.end_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end3.for.body_crit_edge
  %i.024 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end3.for.body_crit_edge ]
  %3 = ptrtoint ptr %vargs to i32
  call void @__asan_load4_noabort(i32 %3)
  %argp.cur = load ptr, ptr %vargs, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %vargs, align 4
  %4 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %argp.cur, align 4
  %arrayidx = getelementptr [16 x i32], ptr %data, i32 0, i32 %i.024
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %inputcnt
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end3.for.end_crit_edge
  %call5 = call i32 @cx231xx_mbox_func(ptr noundef %dev, i32 noundef %command, i32 noundef %inputcnt, i32 noundef %outputcnt, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %outputcnt)
  %cmp725.not = icmp eq i32 %outputcnt, 0
  br i1 %cmp725.not, label %for.end.for.end14_crit_edge, label %for.body8.lr.ph

for.end.for.end14_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end14

for.body8.lr.ph:                                  ; preds = %for.end
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %cmp7.not = icmp eq i32 %outputcnt, 1
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.body8.lr.ph
  %9 = ptrtoint ptr %vargs to i32
  call void @__asan_load4_noabort(i32 %9)
  %argp.cur9 = load ptr, ptr %vargs, align 4
  %argp.next10 = getelementptr inbounds i8, ptr %argp.cur9, i32 4
  store ptr %argp.next10, ptr %vargs, align 4
  %10 = ptrtoint ptr %argp.cur9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %argp.cur9, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %8, ptr %11, align 4
  br i1 %cmp7.not, label %for.body8.for.end14_crit_edge, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8

for.body8.for.end14_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end14

for.end14:                                        ; preds = %for.body8.for.end14_crit_edge, %for.end.for.end14_crit_edge
  call void @llvm.va_end(ptr nonnull %vargs)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vargs) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #11
  ret i32 %call5
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mc417_register_read(ptr noundef %dev, i16 noundef zeroext %address, ptr nocapture noundef writeonly %value) unnamed_addr #0 align 64 {
entry:
  %value.addr.i106 = alloca i32, align 4
  %value.addr.i103 = alloca i32, align 4
  %value.addr.i101 = alloca i32, align 4
  %value.addr.i99 = alloca i32, align 4
  %value.addr.i96 = alloca i32, align 4
  %value.addr.i94 = alloca i32, align 4
  %value.addr.i92 = alloca i32, align 4
  %value.addr.i89 = alloca i32, align 4
  %value.addr.i87 = alloca i32, align 4
  %value.addr.i85 = alloca i32, align 4
  %value.addr.i82 = alloca i32, align 4
  %value.addr.i80 = alloca i32, align 4
  %value.addr.i78 = alloca i32, align 4
  %value.addr.i76 = alloca i32, align 4
  %value.addr.i74 = alloca i32, align 4
  %value.addr.i72 = alloca i32, align 4
  %value.addr.i70 = alloca i32, align 4
  %value.addr.i = alloca i32, align 4
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #11
  %conv = zext i16 %address to i32
  %and = shl i32 %conv, 18
  %shl = and i32 %and, 66846720
  %or = or i32 %shl, 231424
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i)
  %1 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or, ptr %value.addr.i, align 4
  %call.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i)
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %temp, align 4
  %or2 = or i32 %3, 5120
  store i32 %or2, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i70)
  %4 = ptrtoint ptr %value.addr.i70 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or2, ptr %value.addr.i70, align 4
  %call.i71 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i70, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i70)
  %and5 = shl nuw nsw i32 %conv, 10
  %or6 = and i32 %and5, 66846720
  %shl7 = or i32 %or6, 239616
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl7, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i72)
  %6 = ptrtoint ptr %value.addr.i72 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shl7, ptr %value.addr.i72, align 4
  %call.i73 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i72, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i72)
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp, align 4
  %or9 = or i32 %8, 5120
  store i32 %or9, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i74)
  %9 = ptrtoint ptr %value.addr.i74 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or9, ptr %value.addr.i74, align 4
  %call.i75 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i74, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i74)
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 247808, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i76)
  %11 = ptrtoint ptr %value.addr.i76 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 247808, ptr %value.addr.i76, align 4
  %call.i77 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i76, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i76)
  %12 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %temp, align 4
  %or13 = or i32 %13, 5120
  store i32 %or13, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i78)
  %14 = ptrtoint ptr %value.addr.i78 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or13, ptr %value.addr.i78, align 4
  %call.i79 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i78, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i78)
  %call15 = call fastcc i32 @wait_for_mci_complete(ptr noundef %dev)
  %15 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 198656, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i80)
  %16 = ptrtoint ptr %value.addr.i80 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 198656, ptr %value.addr.i80, align 4
  %call.i81 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i80, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i80)
  %17 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 197632, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i82)
  %18 = ptrtoint ptr %value.addr.i82 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 197632, ptr %value.addr.i82, align 4
  %call.i83 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i82, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i82)
  %call.i84 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %temp, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  %19 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %temp, align 4
  %and19 = lshr i32 %20, 18
  %shr = and i32 %and19, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i85)
  %21 = ptrtoint ptr %value.addr.i85 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 138240, ptr %value.addr.i85, align 4
  %call.i86 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i85, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i85)
  %22 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 206848, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i87)
  %23 = ptrtoint ptr %value.addr.i87 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 206848, ptr %value.addr.i87, align 4
  %call.i88 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i87, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i87)
  %24 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 205824, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i89)
  %25 = ptrtoint ptr %value.addr.i89 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 205824, ptr %value.addr.i89, align 4
  %call.i90 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i89, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i89)
  %call.i91 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %temp, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  %26 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %temp, align 4
  %and25 = lshr i32 %27, 10
  %shr26 = and i32 %and25, 65280
  %or27 = or i32 %shr26, %shr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i92)
  %28 = ptrtoint ptr %value.addr.i92 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 138240, ptr %value.addr.i92, align 4
  %call.i93 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i92, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i92)
  %29 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 215040, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i94)
  %30 = ptrtoint ptr %value.addr.i94 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 215040, ptr %value.addr.i94, align 4
  %call.i95 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i94, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i94)
  %31 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 214016, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i96)
  %32 = ptrtoint ptr %value.addr.i96 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 214016, ptr %value.addr.i96, align 4
  %call.i97 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i96, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i96)
  %call.i98 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %temp, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  %33 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %temp, align 4
  %and32 = lshr i32 %34, 2
  %shr33 = and i32 %and32, 16711680
  %or34 = or i32 %or27, %shr33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i99)
  %35 = ptrtoint ptr %value.addr.i99 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 138240, ptr %value.addr.i99, align 4
  %call.i100 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i99, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i99)
  %36 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 223232, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i101)
  %37 = ptrtoint ptr %value.addr.i101 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 223232, ptr %value.addr.i101, align 4
  %call.i102 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i101, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i101)
  %38 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 222208, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i103)
  %39 = ptrtoint ptr %value.addr.i103 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 222208, ptr %value.addr.i103, align 4
  %call.i104 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i103, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i103)
  %call.i105 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %temp, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 1) #11
  %40 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %temp, align 4
  %and39 = shl i32 %41, 6
  %shl40 = and i32 %and39, -16777216
  %or41 = or i32 %or34, %shl40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i106)
  %42 = ptrtoint ptr %value.addr.i106 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 138240, ptr %value.addr.i106, align 4
  %call.i107 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 130048, ptr noundef nonnull %value.addr.i106, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i106)
  %43 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or41, ptr %value, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #11
  ret i32 %call15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_enable656(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mc417_register_write(ptr noundef %dev, i16 noundef zeroext %address, i32 noundef %value) unnamed_addr #0 align 64 {
entry:
  %value.addr.i113 = alloca i32, align 4
  %value.addr.i111 = alloca i32, align 4
  %value.addr.i109 = alloca i32, align 4
  %value.addr.i107 = alloca i32, align 4
  %value.addr.i105 = alloca i32, align 4
  %value.addr.i103 = alloca i32, align 4
  %value.addr.i101 = alloca i32, align 4
  %value.addr.i99 = alloca i32, align 4
  %value.addr.i97 = alloca i32, align 4
  %value.addr.i95 = alloca i32, align 4
  %value.addr.i93 = alloca i32, align 4
  %value.addr.i91 = alloca i32, align 4
  %value.addr.i89 = alloca i32, align 4
  %value.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = shl i32 %value, 18
  %shl = and i32 %and, 66846720
  %or = or i32 %shl, 198656
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i)
  %0 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or, ptr %value.addr.i, align 4
  %call.i = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %or2 = or i32 %shl, 203776
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i89)
  %1 = ptrtoint ptr %value.addr.i89 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or2, ptr %value.addr.i89, align 4
  %call.i90 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i89, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i89)
  %and4 = shl i32 %value, 10
  %or5 = and i32 %and4, 66846720
  %shl6 = or i32 %or5, 206848
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i91)
  %2 = ptrtoint ptr %value.addr.i91 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %shl6, ptr %value.addr.i91, align 4
  %call.i92 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i91, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i91)
  %or8 = or i32 %or5, 211968
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i93)
  %3 = ptrtoint ptr %value.addr.i93 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %or8, ptr %value.addr.i93, align 4
  %call.i94 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i93, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i93)
  %4 = shl i32 %value, 2
  %or11 = and i32 %4, 66846720
  %shl12 = or i32 %or11, 215040
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i95)
  %5 = ptrtoint ptr %value.addr.i95 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shl12, ptr %value.addr.i95, align 4
  %call.i96 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i95, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i95)
  %or14 = or i32 %or11, 220160
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i97)
  %6 = ptrtoint ptr %value.addr.i97 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or14, ptr %value.addr.i97, align 4
  %call.i98 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i97, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i97)
  %7 = lshr i32 %value, 6
  %or18 = and i32 %7, 66846720
  %shl19 = or i32 %or18, 223232
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i99)
  %8 = ptrtoint ptr %value.addr.i99 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shl19, ptr %value.addr.i99, align 4
  %call.i100 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i99, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i99)
  %or21 = or i32 %or18, 228352
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i101)
  %9 = ptrtoint ptr %value.addr.i101 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or21, ptr %value.addr.i101, align 4
  %call.i102 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i101, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i101)
  %conv = zext i16 %address to i32
  %and23 = shl i32 %conv, 18
  %shl24 = and i32 %and23, 66846720
  %or25 = or i32 %shl24, 231424
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i103)
  %10 = ptrtoint ptr %value.addr.i103 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or25, ptr %value.addr.i103, align 4
  %call.i104 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i103, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i103)
  %or28 = or i32 %shl24, 236544
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i105)
  %11 = ptrtoint ptr %value.addr.i105 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or28, ptr %value.addr.i105, align 4
  %call.i106 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i105, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i105)
  %and31 = shl nuw nsw i32 %conv, 10
  %or32 = and i32 %and31, 66846720
  %shl33 = or i32 %or32, 239616
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i107)
  %12 = ptrtoint ptr %value.addr.i107 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shl33, ptr %value.addr.i107, align 4
  %call.i108 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i107, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i107)
  %or35 = or i32 %or32, 244736
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i109)
  %13 = ptrtoint ptr %value.addr.i109 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or35, ptr %value.addr.i109, align 4
  %call.i110 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i109, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i109)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i111)
  %14 = ptrtoint ptr %value.addr.i111 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 509952, ptr %value.addr.i111, align 4
  %call.i112 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i111, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i111)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.addr.i113)
  %15 = ptrtoint ptr %value.addr.i113 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 515072, ptr %value.addr.i113, align 4
  %call.i114 = call i32 @cx231xx_send_gpio_cmd(ptr noundef %dev, i32 noundef 66976768, ptr noundef nonnull %value.addr.i113, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.addr.i113)
  %call41 = call fastcc i32 @wait_for_mci_complete(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @initGPIO(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_ep5_bulkout(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uninitGPIO(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx2341x_handler_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @buffer_copy(ptr nocapture noundef %dev, ptr nocapture noundef readonly %data, i32 noundef %len, ptr noundef %dma_q) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mpeg_buffer_done = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 14
  %0 = ptrtoint ptr %mpeg_buffer_done to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mpeg_buffer_done, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %dma_q to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %dma_q, align 4
  %cmp.i.not = icmp eq ptr %3, %dma_q
  br i1 %cmp.i.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %3, i32 -736
  %buf4 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 55, i32 1, i32 11
  %4 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %buf4, align 4
  %5 = ptrtoint ptr %mpeg_buffer_done to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %mpeg_buffer_done, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %buf9 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 55, i32 1, i32 11
  %6 = ptrtoint ptr %buf9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %buf9, align 4
  %call10 = tail call ptr @vb2_plane_vaddr(ptr noundef %7, i32 noundef 0) #11
  %mpeg_buffer_completed = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 15
  %8 = ptrtoint ptr %mpeg_buffer_completed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mpeg_buffer_completed, align 4
  %add = add i32 %9, %len
  %10 = load i32, ptr @mpeglines, align 4
  %11 = load i32, ptr @mpeglinesize, align 4
  %mul = mul i32 %11, %10
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul)
  %cmp11 = icmp ult i32 %add, %mul
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end6
  %add_ps_package_head = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 16
  %12 = ptrtoint ptr %add_ps_package_head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add_ps_package_head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp14 = icmp eq i32 %13, 0
  br i1 %cmp14, label %if.then16, label %if.then13.if.end23_crit_edge

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr18 = getelementptr i8, ptr %call10, i32 %9
  %ps_head = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 17
  %14 = call ptr @memcpy(ptr %add.ptr18, ptr %ps_head, i32 3)
  %15 = ptrtoint ptr %mpeg_buffer_completed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mpeg_buffer_completed, align 4
  %add20 = add i32 %16, 3
  store i32 %add20, ptr %mpeg_buffer_completed, align 4
  %17 = ptrtoint ptr %add_ps_package_head to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %add_ps_package_head, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then16, %if.then13.if.end23_crit_edge
  %18 = ptrtoint ptr %mpeg_buffer_completed to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mpeg_buffer_completed, align 4
  %add.ptr25 = getelementptr i8, ptr %call10, i32 %19
  %20 = call ptr @memcpy(ptr %add.ptr25, ptr %data, i32 %len)
  %21 = load i32, ptr %mpeg_buffer_completed, align 4
  %add27 = add i32 %21, %len
  store i32 %add27, ptr %mpeg_buffer_completed, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end6
  %22 = ptrtoint ptr %mpeg_buffer_done to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %mpeg_buffer_done, align 4
  %sub = sub i32 %mul, %9
  %add.ptr33 = getelementptr i8, ptr %call10, i32 %9
  %23 = call ptr @memcpy(ptr %add.ptr33, ptr %data, i32 %sub)
  %call.i = tail call i64 @ktime_get() #11
  %timestamp = getelementptr inbounds %struct.vb2_buffer, ptr %7, i32 0, i32 5
  %24 = ptrtoint ptr %timestamp to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %call.i, ptr %timestamp, align 8
  %sequence = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 11
  %25 = ptrtoint ptr %sequence to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sequence, align 4
  %inc = add i32 %26, 1
  store i32 %inc, ptr %sequence, align 4
  %sequence38 = getelementptr inbounds %struct.vb2_v4l2_buffer, ptr %7, i32 0, i32 4
  %27 = ptrtoint ptr %sequence38 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %sequence38, align 8
  %list = getelementptr inbounds %struct.cx231xx_buffer, ptr %7, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.cx231xx_buffer, ptr %7, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %30 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %34 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.cx231xx_buffer, ptr %7, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %7, i32 noundef 5) #11
  %36 = ptrtoint ptr %mpeg_buffer_completed to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %mpeg_buffer_completed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %len)
  %cmp43.not = icmp eq i32 %sub, %len
  br i1 %cmp43.not, label %list_del.exit.cleanup_crit_edge, label %if.then45

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then45:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub42 = sub i32 %len, %sub
  %add.ptr46 = getelementptr i8, ptr %data, i32 %sub
  %left_data_count = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 13
  %37 = ptrtoint ptr %left_data_count to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub42, ptr %left_data_count, align 4
  %p_left_data = getelementptr inbounds %struct.cx231xx_dmaqueue, ptr %dma_q, i32 0, i32 12
  %38 = ptrtoint ptr %p_left_data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p_left_data, align 4
  %40 = call ptr @memcpy(ptr %39, ptr %add.ptr46, i32 %sub42)
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %list_del.exit.cleanup_crit_edge, %if.end23, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_vaddr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_stop_TS1(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_uninit_isoc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_uninit_bulk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 181)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 181)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !193, !194, !195, !197, !199, !201, !202, !203, !205, !207, !209, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !227, !228, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !255, !257, !258, !259, !261, !263, !264, !265, !267, !268, !269, !271, !272, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !304, !306, !308, !309, !310, !311, !313, !314, !316, !317, !319, !320, !321, !323, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !343, !345, !346, !347, !349, !350, !351, !353, !354, !356, !357, !359, !360, !361, !363, !364, !365, !367, !368, !369, !371, !372}
!llvm.module.flags = !{!373, !374, !375, !376, !377, !378, !379, !380}
!llvm.ident = !{!381}

!0 = !{ptr @__param_mpeglines, !1, !"__param_mpeglines", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 64, i32 1}
!2 = !{ptr @__UNIQUE_ID_mpeglinestype303, !1, !"__UNIQUE_ID_mpeglinestype303", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_mpeglines304, !4, !"__UNIQUE_ID_mpeglines304", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 65, i32 1}
!5 = !{ptr @__param_mpeglinesize, !6, !"__param_mpeglinesize", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 68, i32 1}
!7 = !{ptr @__UNIQUE_ID_mpeglinesizetype305, !6, !"__UNIQUE_ID_mpeglinesizetype305", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_mpeglinesize306, !9, !"__UNIQUE_ID_mpeglinesize306", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 69, i32 1}
!10 = !{ptr @__param_v4l_debug, !11, !"__param_v4l_debug", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 73, i32 1}
!12 = !{ptr @__UNIQUE_ID_v4l_debugtype307, !11, !"__UNIQUE_ID_v4l_debugtype307", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_v4l_debug308, !14, !"__UNIQUE_ID_v4l_debug308", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 74, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1665, i32 2}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cx231xx_417_unregister._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @cx231xx_417_unregister._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @cx231xx_417_unregister._entry.3, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1666, i32 2}
!23 = !{ptr @cx231xx_417_unregister._entry_ptr.4, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1741, i32 2}
!26 = !{ptr @cx231xx_417_register._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cx231xx_417_register._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1754, i32 3}
!30 = !{ptr @cx231xx_417_register._entry.6, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @cx231xx_417_register._entry_ptr.8, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1765, i32 3}
!34 = !{ptr @cx231xx_417_register._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @cx231xx_417_register._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1776, i32 46}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1795, i32 3}
!40 = !{ptr @cx231xx_417_register._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @cx231xx_417_register._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1800, i32 2}
!44 = !{ptr @cx231xx_417_register._entry.16, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @cx231xx_417_register._entry_ptr.18, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @__UNIQUE_ID_firmware309, !47, !"__UNIQUE_ID_firmware309", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1806, i32 1}
!48 = !{ptr @__param_str_mpeglines, !1, !"__param_str_mpeglines", i1 false, i1 false}
!49 = !{ptr @mpeglines, !50, !"mpeglines", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 63, i32 21}
!51 = !{ptr @__param_str_mpeglinesize, !6, !"__param_str_mpeglinesize", i1 false, i1 false}
!52 = !{ptr @mpeglinesize, !53, !"mpeglinesize", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 67, i32 21}
!54 = !{ptr @__param_str_v4l_debug, !11, !"__param_str_v4l_debug", i1 false, i1 false}
!55 = !{ptr @v4l_debug, !56, !"v4l_debug", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 72, i32 21}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 84, i32 16}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 87, i32 16}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 90, i32 16}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 93, i32 16}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 96, i32 16}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 99, i32 16}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 102, i32 16}
!71 = !{ptr @.str.26, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 105, i32 16}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 108, i32 16}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 111, i32 16}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 114, i32 16}
!79 = !{ptr @cx231xx_tvnorms, !80, !"cx231xx_tvnorms", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 82, i32 30}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 722, i32 2}
!83 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @cx231xx_mbox_func._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @cx231xx_mbox_func._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 729, i32 3}
!88 = !{ptr @cx231xx_mbox_func._entry.32, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @cx231xx_mbox_func._entry_ptr.34, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 739, i32 3}
!92 = !{ptr @cx231xx_mbox_func._entry.35, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @cx231xx_mbox_func._entry_ptr.37, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 754, i32 3}
!96 = !{ptr @cx231xx_mbox_func._entry.38, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @cx231xx_mbox_func._entry_ptr.40, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 769, i32 4}
!100 = !{ptr @cx231xx_mbox_func._entry.41, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @cx231xx_mbox_func._entry_ptr.43, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 778, i32 3}
!104 = !{ptr @cx231xx_mbox_func._entry.44, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @cx231xx_mbox_func._entry_ptr.46, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 782, i32 2}
!108 = !{ptr @cx231xx_mbox_func._entry.47, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @cx231xx_mbox_func._entry_ptr.49, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 630, i32 10}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 632, i32 10}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 634, i32 10}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 636, i32 10}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 638, i32 10}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 640, i32 10}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 642, i32 10}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 644, i32 10}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 646, i32 10}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 648, i32 10}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 650, i32 10}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 652, i32 10}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 656, i32 10}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 658, i32 10}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 660, i32 10}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 662, i32 10}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 664, i32 10}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 666, i32 10}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 668, i32 10}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 670, i32 10}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 672, i32 10}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 674, i32 10}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 676, i32 10}
!156 = !{ptr @.str.73, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 678, i32 10}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 680, i32 10}
!160 = !{ptr @.str.75, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 682, i32 10}
!162 = !{ptr @.str.76, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 684, i32 10}
!164 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 686, i32 10}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 688, i32 10}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 690, i32 10}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 692, i32 10}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 694, i32 10}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 696, i32 10}
!176 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 698, i32 10}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 700, i32 10}
!180 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 702, i32 10}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 704, i32 10}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 706, i32 10}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 708, i32 10}
!188 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 710, i32 10}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 346, i32 4}
!192 = !{ptr @.str.91, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @wait_for_mci_complete._entry, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @wait_for_mci_complete._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @cx231xx_ops, !196, !"cx231xx_ops", i1 false, i1 false}
!196 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1702, i32 41}
!197 = !{ptr @cx231xx_s_audio_sampling_freq.freqs, !198, !"freqs", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1692, i32 19}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1716, i32 2}
!201 = !{ptr @cx231xx_video_dev_init._entry, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @cx231xx_video_dev_init._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.93, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1718, i32 41}
!205 = !{ptr @cx231xx_mpeg_template, !206, !"cx231xx_mpeg_template", i1 false, i1 false}
!206 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1655, i32 28}
!207 = !{ptr @mpeg_fops, !208, !"mpeg_fops", i1 false, i1 false}
!208 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1612, i32 42}
!209 = !{ptr @mpeg_ioctl_ops, !210, !"mpeg_ioctl_ops", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1622, i32 36}
!211 = !{ptr @.str.94, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1573, i32 2}
!213 = !{ptr @.str.95, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @vidioc_g_fmt_vid_cap._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @vidioc_g_fmt_vid_cap._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.97, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1581, i32 2}
!218 = !{ptr @vidioc_g_fmt_vid_cap._entry.96, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @vidioc_g_fmt_vid_cap._entry_ptr.98, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.100, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1583, i32 2}
!222 = !{ptr @vidioc_g_fmt_vid_cap._entry.99, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @vidioc_g_fmt_vid_cap._entry_ptr.101, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.102, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1592, i32 2}
!226 = !{ptr @.str.103, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @vidioc_try_fmt_vid_cap._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @vidioc_try_fmt_vid_cap._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.105, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1598, i32 2}
!231 = !{ptr @vidioc_try_fmt_vid_cap._entry.104, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @vidioc_try_fmt_vid_cap._entry_ptr.106, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.108, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1600, i32 2}
!235 = !{ptr @vidioc_try_fmt_vid_cap._entry.107, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @vidioc_try_fmt_vid_cap._entry_ptr.109, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.110, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1525, i32 3}
!239 = !{ptr @.str.111, !238, !"<string literal>", i1 false, i1 false}
!240 = !{ptr @vidioc_s_std._entry, !238, !"_entry", i1 false, i1 false}
!241 = !{ptr @vidioc_s_std._entry_ptr, !238, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.113, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1530, i32 3}
!244 = !{ptr @vidioc_s_std._entry.112, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @vidioc_s_std._entry_ptr.114, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.116, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1539, i32 2}
!248 = !{ptr @vidioc_s_std._entry.115, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @vidioc_s_std._entry_ptr.117, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.118, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1549, i32 2}
!252 = !{ptr @.str.119, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @vidioc_s_ctrl._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @vidioc_s_ctrl._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.121, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1553, i32 2}
!257 = !{ptr @vidioc_s_ctrl._entry.120, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @vidioc_s_ctrl._entry_ptr.122, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @cx231xx_video_qops, !260, !"cx231xx_video_qops", i1 false, i1 false}
!260 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1456, i32 23}
!261 = !{ptr @.str.123, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1103, i32 2}
!263 = !{ptr @cx231xx_initialize_codec._entry, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @cx231xx_initialize_codec._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.125, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1107, i32 3}
!267 = !{ptr @cx231xx_initialize_codec._entry.124, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @cx231xx_initialize_codec._entry_ptr.126, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.128, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1110, i32 4}
!271 = !{ptr @.str.129, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.130, !270, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @cx231xx_initialize_codec._entry.127, !270, !"_entry", i1 false, i1 false}
!274 = !{ptr @cx231xx_initialize_codec._entry_ptr.131, !270, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.133, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1116, i32 4}
!277 = !{ptr @cx231xx_initialize_codec._entry.132, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @cx231xx_initialize_codec._entry_ptr.134, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.136, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1123, i32 4}
!281 = !{ptr @cx231xx_initialize_codec._entry.135, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @cx231xx_initialize_codec._entry_ptr.137, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.139, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1130, i32 4}
!285 = !{ptr @cx231xx_initialize_codec._entry.138, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @cx231xx_initialize_codec._entry_ptr.140, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.142, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1134, i32 3}
!289 = !{ptr @cx231xx_initialize_codec._entry.141, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @cx231xx_initialize_codec._entry_ptr.143, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.145, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1140, i32 3}
!293 = !{ptr @cx231xx_initialize_codec._entry.144, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @cx231xx_initialize_codec._entry_ptr.146, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.148, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1208, i32 3}
!297 = !{ptr @cx231xx_initialize_codec._entry.147, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @cx231xx_initialize_codec._entry_ptr.149, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.150, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 800, i32 2}
!301 = !{ptr @.str.151, !300, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @cx231xx_api_cmd._entry, !300, !"_entry", i1 false, i1 false}
!303 = !{ptr @cx231xx_api_cmd._entry_ptr, !300, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @cx231xx_load_firmware.magic, !305, !"magic", i1 false, i1 false}
!305 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 924, i32 29}
!306 = !{ptr @.str.152, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 946, i32 3}
!308 = !{ptr @.str.153, !307, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @cx231xx_load_firmware._entry, !307, !"_entry", i1 false, i1 false}
!310 = !{ptr @cx231xx_load_firmware._entry_ptr, !307, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @cx231xx_load_firmware._entry.154, !312, !"_entry", i1 false, i1 false}
!312 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 952, i32 3}
!313 = !{ptr @cx231xx_load_firmware._entry_ptr.155, !312, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @cx231xx_load_firmware._entry.156, !315, !"_entry", i1 false, i1 false}
!315 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 957, i32 2}
!316 = !{ptr @cx231xx_load_firmware._entry_ptr.157, !315, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @.str.159, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 975, i32 3}
!319 = !{ptr @cx231xx_load_firmware._entry.158, !318, !"_entry", i1 false, i1 false}
!320 = !{ptr @cx231xx_load_firmware._entry_ptr.160, !318, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.161, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 982, i32 39}
!323 = !{ptr @.str.163, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 986, i32 3}
!325 = !{ptr @cx231xx_load_firmware._entry.162, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @cx231xx_load_firmware._entry_ptr.164, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.166, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 989, i32 3}
!329 = !{ptr @cx231xx_load_firmware._entry.165, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @cx231xx_load_firmware._entry_ptr.167, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.169, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 997, i32 3}
!333 = !{ptr @cx231xx_load_firmware._entry.168, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @cx231xx_load_firmware._entry_ptr.170, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.172, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1007, i32 3}
!337 = !{ptr @cx231xx_load_firmware._entry.171, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @cx231xx_load_firmware._entry_ptr.173, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.175, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1018, i32 2}
!341 = !{ptr @cx231xx_load_firmware._entry.174, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @cx231xx_load_firmware._entry_ptr.176, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.178, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1020, i32 2}
!345 = !{ptr @cx231xx_load_firmware._entry.177, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @cx231xx_load_firmware._entry_ptr.179, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.181, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1053, i32 2}
!349 = !{ptr @cx231xx_load_firmware._entry.180, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @cx231xx_load_firmware._entry_ptr.182, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @cx231xx_load_firmware._entry.183, !352, !"_entry", i1 false, i1 false}
!352 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1058, i32 3}
!353 = !{ptr @cx231xx_load_firmware._entry_ptr.184, !352, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @cx231xx_load_firmware._entry.185, !355, !"_entry", i1 false, i1 false}
!355 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1071, i32 3}
!356 = !{ptr @cx231xx_load_firmware._entry_ptr.186, !355, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.187, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 827, i32 2}
!359 = !{ptr @cx231xx_find_mailbox._entry, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @cx231xx_find_mailbox._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.189, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 838, i32 4}
!363 = !{ptr @cx231xx_find_mailbox._entry.188, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @cx231xx_find_mailbox._entry_ptr.190, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @.str.192, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 842, i32 2}
!367 = !{ptr @cx231xx_find_mailbox._entry.191, !366, !"_entry", i1 false, i1 false}
!368 = !{ptr @cx231xx_find_mailbox._entry_ptr.193, !366, !"_entry_ptr", i1 false, i1 false}
!369 = !{ptr @.str.194, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/media/usb/cx231xx/cx231xx-417.c", i32 1081, i32 2}
!371 = !{ptr @cx231xx_codec_settings._entry, !370, !"_entry", i1 false, i1 false}
!372 = !{ptr @cx231xx_codec_settings._entry_ptr, !370, !"_entry_ptr", i1 false, i1 false}
!373 = !{i32 1, !"wchar_size", i32 2}
!374 = !{i32 1, !"min_enum_size", i32 4}
!375 = !{i32 8, !"branch-target-enforcement", i32 0}
!376 = !{i32 8, !"sign-return-address", i32 0}
!377 = !{i32 8, !"sign-return-address-all", i32 0}
!378 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!379 = !{i32 7, !"uwtable", i32 1}
!380 = !{i32 7, !"frame-pointer", i32 2}
!381 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!382 = !{!"auto-init"}
