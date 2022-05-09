; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7134/saa7134-empress.c_pt.bc'
source_filename = "../drivers/media/pci/saa7134/saa7134-empress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.saa7134_mpeg_ops = type { i32, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.128 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.125], %struct.media_entity_enum, i32 }
%struct.anon.125 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.saa7134_board = type { ptr, i32, i32, [8 x %struct.saa7134_input], %struct.saa7134_input, %struct.saa7134_input, i32, i32, i8, i8, i8, i8, i32, %struct.tda829x_config, i32, i32, i32, i32, i8 }
%struct.saa7134_input = type { i32, i32, i32, i32 }
%struct.tda829x_config = type { i32, i8, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_mem_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.saa7134_dev = type { %struct.list_head, %struct.mutex, %struct.spinlock, %struct.v4l2_device, %struct.work_struct, i32, i32, ptr, ptr, ptr, %struct.saa7134_dmasound, i32, ptr, [32 x i8], i32, ptr, i8, i8, ptr, ptr, i32, i32, i32, i8, i8, i32, i32, %struct.i2c_adapter, %struct.i2c_client, [256 x i8], i32, %struct.v4l2_framebuffer, ptr, i32, i32, %struct.v4l2_window, [8 x %struct.v4l2_clip], i32, ptr, %struct.saa7134_dmaqueue, %struct.vb2_queue, %struct.saa7134_dmaqueue, %struct.vb2_queue, i32, ptr, i32, i32, i32, i32, %struct.pm_qos_request, %struct.saa7134_ts, %struct.saa7134_dmaqueue, i32, i32, ptr, ptr, ptr, %struct.vb2_queue, %struct.work_struct, i32, %struct.v4l2_ctrl_handler, ptr, ptr, %struct.v4l2_ctrl_handler, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, %struct.saa7134_thread, ptr, ptr, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, %struct.IR_i2c_init_data, ptr, [9 x %struct.media_entity], [9 x %struct.media_pad], %struct.media_entity, [2 x %struct.media_pad], %struct.media_pad, %struct.media_pad, ptr, %struct.vb2_dvb_frontends, ptr, ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.saa7134_dmasound = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.saa7134_pgtable, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr }
%struct.saa7134_pgtable = type { i32, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.143 }
%struct.anon.143 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.saa7134_ts = type { i32, i32 }
%struct.saa7134_dmaqueue = type { ptr, ptr, %struct.list_head, %struct.timer_list, i32, i32, %struct.saa7134_pgtable }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.saa7134_thread = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.162, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.162 = type { ptr }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.131, %union.anon.132, i32, ptr, i32, %struct.anon.133, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.131 = type { i64 }
%union.anon.132 = type { ptr }
%struct.anon.133 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.158, i16, i16, i16, [10 x i16] }
%union.anon.158 = type { i16 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_format = type { i32, %union.anon.137 }
%union.anon.137 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.139, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.139 = type { i8 }
%struct.v4l2_subdev_pad_config = type { %struct.v4l2_mbus_framefmt, %struct.v4l2_rect, %struct.v4l2_rect }
%struct.v4l2_subdev_state = type { ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_author387 = internal constant [67 x i8] c"saa7134_empress.author=Gerd Knorr <kraxel@bytesex.org> [SuSE Labs]\00", section ".modinfo", align 1
@__UNIQUE_ID_file388 = internal constant [63 x i8] c"saa7134_empress.file=drivers/media/pci/saa7134/saa7134-empress\00", section ".modinfo", align 1
@__UNIQUE_ID_license389 = internal constant [28 x i8] c"saa7134_empress.license=GPL\00", section ".modinfo", align 1
@__param_str_empress_nr = internal constant [27 x i8] c"saa7134_empress.empress_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_empress_nr = internal constant %struct.kparam_array { i32 32, i32 4, ptr null, ptr @param_ops_int, ptr @empress_nr }, align 4
@__param_empress_nr = internal constant %struct.kernel_param { ptr @__param_str_empress_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_empress_nr } }, section "__param", align 4
@__UNIQUE_ID_empress_nrtype390 = internal constant [49 x i8] c"saa7134_empress.parmtype=empress_nr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_empress_nr391 = internal constant [49 x i8] c"saa7134_empress.parm=empress_nr:ts device number\00", section ".modinfo", align 1
@empress_ops = internal global { %struct.saa7134_mpeg_ops, [36 x i8] } { %struct.saa7134_mpeg_ops { i32 1, %struct.list_head zeroinitializer, ptr @empress_init, ptr @empress_fini, ptr @empress_signal_change, ptr null }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_saa7134_empress__396_346_empress_register6 = internal global ptr @empress_register, section ".initcall6.init", align 4
@__exitcall_empress_unregister = internal global ptr @empress_unregister, section ".exitcall.exit", align 4
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@empress_nr = internal global { [32 x i32], [32 x i8] } { [32 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@empress_init.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa7134_empress\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"empress_init\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/pci/saa7134/saa7134-empress.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"saa7134_empress: %s: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@saa7134_empress_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @ts_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"saa7134-empress\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 16760831, ptr null, ptr @ts_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s empress (%s)\00", [16 x i8] zeroinitializer }, align 32
@saa7134_boards = external dso_local local_unnamed_addr global [0 x %struct.saa7134_board], align 4
@empress_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"saa7134_empress:259:(hdl)->_lock\00", [63 x i8] zeroinitializer }, align 32
@empress_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&dev->empress_workqueue)\00", [53 x i8] zeroinitializer }, align 32
@saa7134_empress_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @saa7134_ts_queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @saa7134_ts_buffer_init, ptr @saa7134_ts_buffer_prepare, ptr null, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @saa7134_vb2_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@empress_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016saa7134_empress: %s: can't register video device\0A\00", [44 x i8] zeroinitializer }, align 32
@empress_init._entry_ptr = internal global ptr @empress_init._entry, section ".printk_index", align 4
@empress_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016saa7134_empress: %s: registered device %s [mpeg]\0A\00", [44 x i8] zeroinitializer }, align 32
@empress_init._entry_ptr.11 = internal global ptr @empress_init._entry.9, section ".printk_index", align 4
@ts_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@ts_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @saa7134_querycap, ptr @empress_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @empress_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @empress_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @empress_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr @vb2_ioctl_expbuf, ptr @vb2_ioctl_dqbuf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @saa7134_g_std, ptr @saa7134_s_std, ptr @saa7134_querystd, ptr @saa7134_enum_input, ptr @saa7134_g_input, ptr @saa7134_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @saa7134_g_tuner, ptr @saa7134_s_tuner, ptr @saa7134_g_frequency, ptr @saa7134_s_frequency, ptr null, ptr null, ptr @v4l2_ctrl_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @v4l2_ctrl_subscribe_event, ptr @v4l2_event_unsubscribe, ptr null }, [120 x i8] zeroinitializer }, align 32
@empress_signal_update.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"empress_signal_update\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no video signal\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"saa7134_empress: no video signal\0A\00", [62 x i8] zeroinitializer }, align 32
@empress_signal_update.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"video signal acquired\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"saa7134_empress: video signal acquired\0A\00", [56 x i8] zeroinitializer }, align 32
@empress_fini.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.2, ptr @.str.3, i8 0, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"empress_fini\00", [19 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 4294967295]
@__sancov_gen_cov_switch_values.18 = internal global [10 x i64] [i64 8, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963781, i64 9963785, i64 9967968, i64 9967971]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 130, i64 143, i64 144]
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"empress_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 329, i32 32 }
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"empress_nr\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 24, i32 21 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 248, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [25 x i8] c"saa7134_empress_template\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 200, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 257, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 259, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 269, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"saa7134_empress_qops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 75, i32 29 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 303, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 309, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [8 x i8] c"ts_fops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 159, i32 42 }
@___asan_gen_.77 = private unnamed_addr constant [13 x i8] c"ts_ioctl_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 170, i32 36 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 214, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 216, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [47 x i8] c"../drivers/media/pci/saa7134/saa7134-empress.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 318, i32 2 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author387, ptr @__UNIQUE_ID_empress_nr391, ptr @__UNIQUE_ID_empress_nrtype390, ptr @__UNIQUE_ID_file388, ptr @__UNIQUE_ID_license389, ptr @__exitcall_empress_unregister, ptr @__initcall__kmod_saa7134_empress__396_346_empress_register6, ptr @__param_empress_nr, ptr @empress_init._entry, ptr @empress_init._entry.9, ptr @empress_init._entry_ptr, ptr @empress_init._entry_ptr.11, ptr @empress_unregister, ptr @empress_ops, ptr @empress_nr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @saa7134_empress_template, ptr @.str.5, ptr @empress_init._key, ptr @.str.6, ptr @empress_init.__key, ptr @.str.7, ptr @saa7134_empress_qops, ptr @.str.8, ptr @.str.10, ptr @ts_fops, ptr @ts_ioctl_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @empress_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @empress_nr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_empress_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @empress_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @empress_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_empress_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @empress_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @empress_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ts_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @empress_unregister() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @saa7134_ts_unregister(ptr noundef nonnull @empress_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_ts_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @empress_register() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @saa7134_ts_register(ptr noundef nonnull @empress_ops) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @empress_init(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %empress_ctrl_handler = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @empress_init.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@empress_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @empress_init.__UNIQUE_ID_ddebug394, ptr noundef nonnull @.str.4, ptr noundef %name, ptr noundef nonnull @.str.1) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call3 = tail call ptr @video_device_alloc() #8
  %empress_dev = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 55
  %0 = ptrtoint ptr %empress_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %empress_dev, align 4
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %1 = call ptr @memcpy(ptr %call3, ptr @saa7134_empress_template, i32 1352)
  %v4l2_dev = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %empress_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %empress_dev, align 4
  %v4l2_dev9 = getelementptr inbounds %struct.video_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %v4l2_dev9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %v4l2_dev, ptr %v4l2_dev9, align 4
  %5 = load ptr, ptr %empress_dev, align 4
  %release = getelementptr inbounds %struct.video_device, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @video_device_release, ptr %release, align 8
  %lock = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 1
  %7 = load ptr, ptr %empress_dev, align 4
  %lock12 = getelementptr inbounds %struct.video_device, ptr %7, i32 0, i32 26
  %8 = ptrtoint ptr %lock12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %lock, ptr %lock12, align 8
  %9 = load ptr, ptr %empress_dev, align 4
  %name14 = getelementptr inbounds %struct.video_device, ptr %9, i32 0, i32 12
  %name16 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  %board = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 20
  %10 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %board, align 4
  %arrayidx = getelementptr [0 x %struct.saa7134_board], ptr @saa7134_boards, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name14, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %name16, ptr noundef %13)
  %call21 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %empress_ctrl_handler, i32 noundef 21, ptr noundef nonnull @empress_init._key, ptr noundef nonnull @.str.6) #8
  %ctrl_handler = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 63
  %call22 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %empress_ctrl_handler, ptr noundef %ctrl_handler, ptr noundef nonnull @empress_ctrl_filter, i1 noundef zeroext false) #8
  %empress_sd = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 56
  %14 = ptrtoint ptr %empress_sd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %empress_sd, align 8
  %tobool23.not = icmp eq ptr %15, null
  br i1 %tobool23.not, label %if.end6.if.end28_crit_edge, label %if.then24

if.end6.if.end28_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then24:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl_handler26 = getelementptr inbounds %struct.v4l2_subdev, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %ctrl_handler26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_handler26, align 4
  %call27 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %empress_ctrl_handler, ptr noundef %17, ptr noundef null, i1 noundef zeroext true) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end6.if.end28_crit_edge
  %error = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 60, i32 9
  %18 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool29.not = icmp eq i32 %19, 0
  %20 = ptrtoint ptr %empress_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %empress_dev, align 4
  br i1 %tobool29.not, label %if.end33, label %if.then30

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @video_device_release(ptr noundef %21) #8
  %22 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %ctrl_handler35 = getelementptr inbounds %struct.video_device, ptr %21, i32 0, i32 9
  %24 = ptrtoint ptr %ctrl_handler35 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %empress_ctrl_handler, ptr %ctrl_handler35, align 4
  %empress_workqueue = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 58
  tail call void @__init_work(ptr noundef %empress_workqueue, i32 noundef 0) #8
  %25 = ptrtoint ptr %empress_workqueue to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %empress_workqueue, align 4
  %lockdep_map = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 58, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @empress_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry40 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 58, i32 1
  %26 = ptrtoint ptr %entry40 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry40, ptr %entry40, align 4
  %prev.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 58, i32 1, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry40, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 58, i32 2
  %28 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @empress_signal_update, ptr %func, align 4
  %empress_vbq = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 57
  %29 = ptrtoint ptr %empress_vbq to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %empress_vbq, align 4
  %io_modes = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 57, i32 1
  %30 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 21, ptr %io_modes, align 4
  %ts_q = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 51
  %drv_priv = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 57, i32 10
  %31 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %ts_q, ptr %drv_priv, align 4
  %ops = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 57, i32 7
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @saa7134_empress_qops, ptr %ops, align 4
  %gfp_flags = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 57, i32 14
  %33 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %gfp_flags, align 4
  %mem_ops = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 57, i32 8
  %34 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops, align 4
  %buf_struct_size = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 57, i32 12
  %35 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 752, ptr %buf_struct_size, align 4
  %timestamp_flags = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 57, i32 13
  %36 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 8192, ptr %timestamp_flags, align 4
  %lock45 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 57, i32 5
  %37 = ptrtoint ptr %lock45 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %lock, ptr %lock45, align 4
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 15
  %38 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pci, align 4
  %dev46 = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 44
  %dev47 = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 57, i32 2
  %40 = ptrtoint ptr %dev47 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev46, ptr %dev47, align 4
  %call48 = tail call i32 @vb2_queue_init(ptr noundef %empress_vbq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  %41 = ptrtoint ptr %empress_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %empress_dev, align 4
  br i1 %tobool49.not, label %if.end53, label %if.then50

if.then50:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @video_device_release(ptr noundef %42) #8
  %43 = ptrtoint ptr %empress_dev to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %empress_dev, align 4
  br label %cleanup

if.end53:                                         ; preds = %if.end33
  %queue = getelementptr inbounds %struct.video_device, ptr %42, i32 0, i32 10
  %44 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %empress_vbq, ptr %queue, align 8
  %45 = ptrtoint ptr %empress_dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %empress_dev, align 4
  %device_caps = getelementptr inbounds %struct.video_device, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 83886081, ptr %device_caps, align 8
  %tuner_type = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 21
  %48 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tuner_type, align 8
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values)
  switch i32 %49, label %if.then59 [
    i32 4, label %if.end53.if.end62_crit_edge
    i32 -1, label %if.end53.if.end62_crit_edge155
  ]

if.end53.if.end62_crit_edge155:                   ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %empress_dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %empress_dev, align 4
  %device_caps61 = getelementptr inbounds %struct.video_device, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %device_caps61 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %device_caps61, align 8
  %or = or i32 %54, 65536
  store i32 %or, ptr %device_caps61, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end53.if.end62_crit_edge, %if.end53.if.end62_crit_edge155
  %55 = ptrtoint ptr %empress_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %empress_dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %56, i32 0, i32 5, i32 8
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %58 = load ptr, ptr %empress_dev, align 4
  %nr = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 14
  %59 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr, align 8
  %arrayidx65 = getelementptr [32 x i32], ptr @empress_nr, i32 0, i32 %60
  %61 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx65, align 4
  %fops.i = getelementptr inbounds %struct.video_device, ptr %58, i32 0, i32 3
  %63 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fops.i, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %call.i = tail call i32 @__video_register_device(ptr noundef %58, i32 noundef 0, i32 noundef %62, i32 noundef 1, ptr noundef %66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp67 = icmp slt i32 %call.i, 0
  br i1 %cmp67, label %do.end71, label %do.end81

do.end71:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name16) #11
  %67 = ptrtoint ptr %empress_dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %empress_dev, align 4
  tail call void @video_device_release(ptr noundef %68) #8
  %69 = ptrtoint ptr %empress_dev to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %empress_dev, align 4
  br label %cleanup

do.end81:                                         ; preds = %if.end62
  %70 = ptrtoint ptr %empress_dev to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %empress_dev, align 4
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %71, i32 0, i32 5, i32 3
  %72 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end81.video_device_node_name.exit_crit_edge

do.end81.video_device_node_name.exit_crit_edge:   ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.video_device, ptr %71, i32 0, i32 5
  %74 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end81.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %75, %if.end.i.i ], [ %73, %do.end81.video_device_node_name.exit_crit_edge ]
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name16, ptr noundef %retval.0.i.i) #11
  tail call void @empress_signal_update(ptr noundef %empress_workqueue)
  br label %cleanup

cleanup:                                          ; preds = %video_device_node_name.exit, %do.end71, %if.then50, %if.then30, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %23, %if.then30 ], [ %call48, %if.then50 ], [ %call.i, %do.end71 ], [ 0, %video_device_node_name.exit ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @empress_fini(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @empress_fini.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@empress_fini, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !72

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @empress_fini.__UNIQUE_ID_ddebug395, ptr noundef nonnull @.str.4, ptr noundef %name, ptr noundef nonnull @.str.17) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %empress_dev = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 55
  %0 = ptrtoint ptr %empress_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %empress_dev, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end.return_crit_edge, label %if.end4

do.end.return_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %empress_workqueue = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 58
  %call5 = tail call zeroext i1 @flush_work(ptr noundef %empress_workqueue) #8
  %2 = ptrtoint ptr %empress_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %empress_dev, align 4
  tail call void @vb2_video_unregister_device(ptr noundef %3) #8
  %empress_ctrl_handler = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 60
  tail call void @v4l2_ctrl_handler_free(ptr noundef %empress_ctrl_handler) #8
  %4 = ptrtoint ptr %empress_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %empress_dev, align 4
  br label %return

return:                                           ; preds = %if.end4, %do.end.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @empress_signal_change(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %empress_workqueue = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 58
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %empress_workqueue) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @empress_ctrl_filter(ptr nocapture noundef readonly %ctrl) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %1, label %sw.default [
    i32 9963776, label %entry.return_crit_edge
    i32 9963779, label %entry.return_crit_edge1
    i32 9963777, label %entry.return_crit_edge2
    i32 9963778, label %entry.return_crit_edge3
    i32 9963785, label %entry.return_crit_edge4
    i32 9963781, label %entry.return_crit_edge5
    i32 9967968, label %entry.return_crit_edge6
    i32 9967971, label %entry.return_crit_edge7
  ]

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @empress_signal_update(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nosignal = getelementptr i8, ptr %work, i32 560
  %0 = ptrtoint ptr %nosignal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nosignal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.body6, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @empress_signal_update.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@empress_signal_update, %if.then5)) #8
          to label %if.end22 [label %if.then5], !srcloc !72

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @empress_signal_update.__UNIQUE_ID_ddebug392, ptr noundef nonnull @.str.14) #8
  br label %if.end22

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @empress_signal_update.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@empress_signal_update, %if.then18)) #8
          to label %if.end22 [label %if.then18], !srcloc !72

if.then18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @empress_signal_update.__UNIQUE_ID_ddebug393, ptr noundef nonnull @.str.16) #8
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %do.body6, %if.then5, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_querycap(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @empress_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
define internal i32 @empress_g_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) #2 align 64 {
entry:
  %fmt = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fmt) #8
  %2 = getelementptr inbounds i8, ptr %fmt, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %4 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %fmt, align 4
  %gate_ctrl = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 101
  %5 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gate_ctrl, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.do.body2_crit_edge, label %if.then

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %6(ptr noundef %1, i32 noundef 1) #8
  br label %do.body2

do.body2:                                         ; preds = %if.then, %entry.do.body2_crit_edge
  %subdevs = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn53 = load ptr, ptr %subdevs, align 4
  %cmp.not55 = icmp eq ptr %.pn53, %subdevs
  br i1 %cmp.not55, label %do.body2.do.end_crit_edge, label %do.body2.for.body_crit_edge

do.body2.for.body_crit_edge:                      ; preds = %do.body2
  br label %for.body

do.body2.do.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body2.for.body_crit_edge
  %.pn56 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn53, %do.body2.for.body_crit_edge ]
  %__sd.057 = getelementptr i8, ptr %.pn56, i32 -80
  %ops = getelementptr i8, ptr %.pn56, i32 24
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pad, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %get_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %get_fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %get_fmt, align 4
  %tobool9.not = icmp eq ptr %13, null
  br i1 %tobool9.not, label %land.lhs.true.for.inc_crit_edge, label %if.then10

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = call i32 %13(ptr noundef %__sd.057, ptr noundef null, ptr noundef nonnull %fmt) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn56 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn56, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body2.do.end_crit_edge
  %15 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %gate_ctrl, align 8
  %tobool24.not = icmp eq ptr %16, null
  br i1 %tobool24.not, label %do.end.do.end29_crit_edge, label %if.then25

do.end.do.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end29

if.then25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void %16(ptr noundef %1, i32 noundef 0) #8
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.end.do.end29_crit_edge
  %format = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2
  %fmt30 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %17 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %format, align 4
  %19 = ptrtoint ptr %fmt30 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %fmt30, align 4
  %height.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 4
  %26 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %28 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %colorspace4.i, align 4
  %29 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 5
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %29, align 4
  %conv.i = zext i16 %31 to i32
  %32 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv.i, ptr %32, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 6
  %34 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %quantization.i, align 2
  %conv5.i = zext i16 %35 to i32
  %quantization6.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %36 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %conv5.i, ptr %quantization6.i, align 4
  %xfer_func.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %fmt, i32 0, i32 2, i32 7
  %37 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %xfer_func.i, align 4
  %conv7.i = zext i16 %38 to i32
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %39 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv7.i, ptr %xfer_func8.i, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %40 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1195724877, ptr %pixelformat, align 4
  %ts = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 50
  %41 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ts, align 4
  %mul = mul i32 %42, 188
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %43 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %mul, ptr %sizeimage, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %44 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %bytesperline, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fmt) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @empress_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #8
  %2 = getelementptr inbounds i8, ptr %format, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 84)
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %format, align 4
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fmt, align 4
  %7 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %format1, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %14 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %colorspace4.i, align 4
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %conv.i = trunc i32 %19 to i16
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %20, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %23 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %25 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %26 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %27 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %code9.i, align 4
  %gate_ctrl = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 101
  %29 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gate_ctrl, align 8
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %if.then

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %30(ptr noundef %1, i32 noundef 1) #8
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry.do.body3_crit_edge
  %subdevs = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn69 = load ptr, ptr %subdevs, align 4
  %cmp.not71 = icmp eq ptr %.pn69, %subdevs
  br i1 %cmp.not71, label %do.body3.do.end_crit_edge, label %do.body3.for.body_crit_edge

do.body3.for.body_crit_edge:                      ; preds = %do.body3
  br label %for.body

do.body3.do.end_crit_edge:                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body3.for.body_crit_edge
  %.pn72 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn69, %do.body3.for.body_crit_edge ]
  %__sd.073 = getelementptr i8, ptr %.pn72, i32 -80
  %ops = getelementptr i8, ptr %.pn72, i32 24
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pad, align 4
  %tobool7.not = icmp eq ptr %35, null
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_fmt, align 4
  %tobool10.not = icmp eq ptr %37, null
  br i1 %tobool10.not, label %land.lhs.true.for.inc_crit_edge, label %if.then11

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = call i32 %37(ptr noundef %__sd.073, ptr noundef null, ptr noundef nonnull %format) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %38 = ptrtoint ptr %.pn72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn = load ptr, ptr %.pn72, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body3.do.end_crit_edge
  %39 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gate_ctrl, align 8
  %tobool25.not = icmp eq ptr %40, null
  br i1 %tobool25.not, label %do.end.do.end30_crit_edge, label %if.then26

do.end.do.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.then26:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void %40(ptr noundef %1, i32 noundef 0) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.end.do.end30_crit_edge
  %41 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %format1, align 4
  %43 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %fmt, align 4
  %44 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height2.i, align 4
  %46 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %height.i, align 4
  %47 = ptrtoint ptr %field3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %field3.i, align 4
  %49 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %field.i, align 4
  %50 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %colorspace4.i, align 4
  %52 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %colorspace.i, align 4
  %53 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %20, align 4
  %conv.i62 = zext i16 %54 to i32
  %55 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv.i62, ptr %17, align 4
  %56 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %quantization6.i, align 2
  %conv5.i64 = zext i16 %57 to i32
  %58 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv5.i64, ptr %quantization.i, align 4
  %59 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %xfer_func8.i, align 4
  %conv7.i67 = zext i16 %60 to i32
  %61 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv7.i67, ptr %xfer_func.i, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %62 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1195724877, ptr %pixelformat, align 4
  %ts = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 50
  %63 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ts, align 4
  %mul = mul i32 %64, 188
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %65 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %mul, ptr %sizeimage, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %66 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %bytesperline, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @empress_try_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #2 align 64 {
entry:
  %pad_cfg = alloca %struct.v4l2_subdev_pad_config, align 4
  %pad_state = alloca %struct.v4l2_subdev_state, align 4
  %format = alloca %struct.v4l2_subdev_format, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #8
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %pad_cfg) #8
  %2 = call ptr @memset(ptr %pad_cfg, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pad_state) #8
  %3 = ptrtoint ptr %pad_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pad_cfg, ptr %pad_state, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %format) #8
  %4 = call ptr @memset(ptr %format, i32 0, i32 88)
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %5 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fmt, align 4
  %7 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %format1, align 4
  %height.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height.i, align 4
  %height2.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %height2.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %height2.i, align 4
  %field.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %11 = ptrtoint ptr %field.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %field.i, align 4
  %field3.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %field3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %field3.i, align 4
  %colorspace.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %14 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %colorspace.i, align 4
  %colorspace4.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %colorspace4.i, align 4
  %17 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %conv.i = trunc i32 %19 to i16
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 5
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %20, align 4
  %quantization.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %quantization.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %quantization.i, align 4
  %conv5.i = trunc i32 %23 to i16
  %quantization6.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 6
  %24 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv5.i, ptr %quantization6.i, align 2
  %xfer_func.i = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 1, i32 1
  %25 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xfer_func.i, align 4
  %conv7.i = trunc i32 %26 to i16
  %xfer_func8.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 7
  %27 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv7.i, ptr %xfer_func8.i, align 4
  %code9.i = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %28 = ptrtoint ptr %code9.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %code9.i, align 4
  %gate_ctrl = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 101
  %29 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gate_ctrl, align 8
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %entry.do.body3_crit_edge, label %if.then

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void %30(ptr noundef %1, i32 noundef 1) #8
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry.do.body3_crit_edge
  %subdevs = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 3, i32 2
  %31 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn69 = load ptr, ptr %subdevs, align 4
  %cmp.not71 = icmp eq ptr %.pn69, %subdevs
  br i1 %cmp.not71, label %do.body3.do.end_crit_edge, label %do.body3.for.body_crit_edge

do.body3.for.body_crit_edge:                      ; preds = %do.body3
  br label %for.body

do.body3.do.end_crit_edge:                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body3.for.body_crit_edge
  %.pn72 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn69, %do.body3.for.body_crit_edge ]
  %__sd.073 = getelementptr i8, ptr %.pn72, i32 -80
  %ops = getelementptr i8, ptr %.pn72, i32 24
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops, align 4
  %pad = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pad, align 4
  %tobool7.not = icmp eq ptr %35, null
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %set_fmt = getelementptr inbounds %struct.v4l2_subdev_pad_ops, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %set_fmt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %set_fmt, align 4
  %tobool10.not = icmp eq ptr %37, null
  br i1 %tobool10.not, label %land.lhs.true.for.inc_crit_edge, label %if.then11

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = call i32 %37(ptr noundef %__sd.073, ptr noundef nonnull %pad_state, ptr noundef nonnull %format) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %38 = ptrtoint ptr %.pn72 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn = load ptr, ptr %.pn72, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body3.do.end_crit_edge
  %39 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gate_ctrl, align 8
  %tobool25.not = icmp eq ptr %40, null
  br i1 %tobool25.not, label %do.end.do.end30_crit_edge, label %if.then26

do.end.do.end30_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.then26:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  call void %40(ptr noundef %1, i32 noundef 0) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %do.end.do.end30_crit_edge
  %41 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %format1, align 4
  %43 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %fmt, align 4
  %44 = ptrtoint ptr %height2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %height2.i, align 4
  %46 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %height.i, align 4
  %47 = ptrtoint ptr %field3.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %field3.i, align 4
  %49 = ptrtoint ptr %field.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %field.i, align 4
  %50 = ptrtoint ptr %colorspace4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %colorspace4.i, align 4
  %52 = ptrtoint ptr %colorspace.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %colorspace.i, align 4
  %53 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %20, align 4
  %conv.i62 = zext i16 %54 to i32
  %55 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv.i62, ptr %17, align 4
  %56 = ptrtoint ptr %quantization6.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %quantization6.i, align 2
  %conv5.i64 = zext i16 %57 to i32
  %58 = ptrtoint ptr %quantization.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv5.i64, ptr %quantization.i, align 4
  %59 = ptrtoint ptr %xfer_func8.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %xfer_func8.i, align 4
  %conv7.i67 = zext i16 %60 to i32
  %61 = ptrtoint ptr %xfer_func.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv7.i67, ptr %xfer_func.i, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %62 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1195724877, ptr %pixelformat, align 4
  %ts = getelementptr inbounds %struct.saa7134_dev, ptr %1, i32 0, i32 50
  %63 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ts, align 4
  %mul = mul i32 %64, 188
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %65 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %mul, ptr %sizeimage, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %66 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %bytesperline, align 4
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %format) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pad_state) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %pad_cfg) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_expbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_g_std(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_s_std(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_querystd(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_enum_input(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_g_input(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_s_input(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_g_tuner(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_s_tuner(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_g_frequency(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_s_frequency(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_log_status(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subscribe_event(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_event_unsubscribe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_ts_queue_setup(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_ts_buffer_init(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_ts_buffer_prepare(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr noundef %vq, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call = tail call i32 @saa7134_ts_start_streaming(ptr noundef %vq, i32 noundef %count) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %board = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %board, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %5, label %if.end.do.body_crit_edge [
    i32 130, label %if.end.sw.bb_crit_edge
    i32 143, label %if.end.sw.bb_crit_edge73
    i32 144, label %if.end.sw.bb_crit_edge74
  ]

if.end.sw.bb_crit_edge74:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge73:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge73, %if.end.sw.bb_crit_edge74
  br label %do.body

do.body:                                          ; preds = %sw.bb, %if.end.do.body_crit_edge
  %leading_null_bytes.0 = phi i32 [ 0, %if.end.do.body_crit_edge ], [ 1, %sw.bb ]
  %gate_ctrl = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 101
  %7 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gate_ctrl, align 8
  %tobool2.not = icmp eq ptr %8, null
  br i1 %tobool2.not, label %do.body.do.body6_crit_edge, label %if.then3

do.body.do.body6_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %8(ptr noundef %3, i32 noundef 1) #8
  br label %do.body6

do.body6:                                         ; preds = %if.then3, %do.body.do.body6_crit_edge
  %subdevs = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 3, i32 2
  %9 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn68 = load ptr, ptr %subdevs, align 4
  %cmp.not70 = icmp eq ptr %.pn68, %subdevs
  br i1 %cmp.not70, label %do.body6.do.end_crit_edge, label %do.body6.for.body_crit_edge

do.body6.for.body_crit_edge:                      ; preds = %do.body6
  br label %for.body

do.body6.do.end_crit_edge:                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body6.for.body_crit_edge
  %.pn71 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn68, %do.body6.for.body_crit_edge ]
  %__sd.072 = getelementptr i8, ptr %.pn71, i32 -80
  %ops = getelementptr i8, ptr %.pn71, i32 24
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %init = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %land.lhs.true.for.inc_crit_edge, label %if.then14

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = tail call i32 %15(ptr noundef %__sd.072, i32 noundef %leading_null_bytes.0) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn71 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn71, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body6.do.end_crit_edge
  %17 = ptrtoint ptr %gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %gate_ctrl, align 8
  %tobool28.not = icmp eq ptr %18, null
  br i1 %tobool28.not, label %do.end.do.body34_crit_edge, label %if.then29

do.end.do.body34_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body34

if.then29:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %18(ptr noundef %3, i32 noundef 0) #8
  br label %do.body34

do.body34:                                        ; preds = %if.then29, %do.end.do.body34_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !73
  tail call void @arm_heavy_mb() #8
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 19
  %19 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bmmio, align 8
  %add.ptr37 = getelementptr i8, ptr %20, i32 364
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr37) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !75
  %22 = and i8 %21, -65
  %23 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bmmio, align 8
  %add.ptr43 = getelementptr i8, ptr %24, i32 364
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr43, i8 %22) #8, !srcloc !76
  %empress_started = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 59
  %25 = ptrtoint ptr %empress_started to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %empress_started, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.body34, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body34 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr noundef %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %vq, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @saa7134_ts_stop_streaming(ptr noundef %vq) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !77
  tail call void @arm_heavy_mb() #8
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 464
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #8, !srcloc !76
  tail call void @msleep(i32 noundef 20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !78
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmmio, align 8
  %add.ptr6 = getelementptr i8, ptr %7, i32 464
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 1) #8, !srcloc !76
  tail call void @msleep(i32 noundef 100) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !79
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmmio, align 8
  %add.ptr11 = getelementptr i8, ptr %9, i32 364
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11) #8, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !80
  %11 = or i8 %10, 64
  %12 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmmio, align 8
  %add.ptr15 = getelementptr i8, ptr %13, i32 364
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 %11) #8, !srcloc !76
  %empress_started = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 59
  %14 = ptrtoint ptr %empress_started to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %empress_started, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_vb2_buffer_queue(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_ts_start_streaming(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_ts_stop_streaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_ts_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !15, !16, !18, !20, !22, !23, !24, !25, !26, !27, !29, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__UNIQUE_ID_author387, !1, !"__UNIQUE_ID_author387", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_file388, !3, !"__UNIQUE_ID_file388", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_license389, !3, !"__UNIQUE_ID_license389", i1 false, i1 false}
!5 = !{ptr @__param_empress_nr, !6, !"__param_empress_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 26, i32 1}
!7 = !{ptr @__UNIQUE_ID_empress_nrtype390, !6, !"__UNIQUE_ID_empress_nrtype390", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_empress_nr391, !9, !"__UNIQUE_ID_empress_nr391", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 27, i32 1}
!10 = !{ptr @__initcall__kmod_saa7134_empress__396_346_empress_register6, !11, !"__initcall__kmod_saa7134_empress__396_346_empress_register6", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 346, i32 1}
!12 = !{ptr @__exitcall_empress_unregister, !13, !"__exitcall_empress_unregister", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 347, i32 1}
!14 = !{ptr @__param_str_empress_nr, !6, !"__param_str_empress_nr", i1 false, i1 false}
!15 = !{ptr @__param_arr_empress_nr, !6, !"__param_arr_empress_nr", i1 false, i1 false}
!16 = !{ptr @empress_nr, !17, !"empress_nr", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 24, i32 21}
!18 = !{ptr @empress_ops, !19, !"empress_ops", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 329, i32 32}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 248, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @empress_init.__UNIQUE_ID_ddebug394, !21, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!26 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 257, i32 4}
!29 = !{ptr @empress_init._key, !30, !"_key", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 259, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @empress_init.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 269, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 303, i32 3}
!37 = !{ptr @empress_init._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @empress_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 309, i32 2}
!41 = !{ptr @empress_init._entry.9, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @empress_init._entry_ptr.11, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @saa7134_empress_template, !44, !"saa7134_empress_template", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 200, i32 34}
!45 = !{ptr @ts_fops, !46, !"ts_fops", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 159, i32 42}
!47 = !{ptr @ts_ioctl_ops, !48, !"ts_ioctl_ops", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 170, i32 36}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 214, i32 3}
!51 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @empress_signal_update.__UNIQUE_ID_ddebug392, !50, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!53 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 216, i32 3}
!56 = !{ptr @empress_signal_update.__UNIQUE_ID_ddebug393, !55, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!57 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @saa7134_empress_qops, !59, !"saa7134_empress_qops", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 75, i32 29}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/saa7134/saa7134-empress.c", i32 318, i32 2}
!62 = !{ptr @empress_fini.__UNIQUE_ID_ddebug395, !61, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2148524753, i64 2148524758, i64 2148524771, i64 2148524815, i64 2148524849, i64 2148524870}
!73 = !{i64 2158811646}
!74 = !{i64 5019724}
!75 = !{i64 2158811827}
!76 = !{i64 5019329}
!77 = !{i64 2158812165}
!78 = !{i64 2158812506}
!79 = !{i64 2158813481}
!80 = !{i64 2158813662}
