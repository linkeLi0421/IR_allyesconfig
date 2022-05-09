; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx23885/cx23885-417.c_pt.bc'
source_filename = "../drivers/media/pci/cx23885/cx23885-417.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cx23885_board = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, [8 x %struct.cx23885_input], i32, i32 }
%struct.cx23885_input = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cx23885_tvnorm = type { ptr, i64, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.127 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.124], %struct.media_entity_enum, i32 }
%struct.anon.124 = type { ptr, ptr }
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
%struct.v4l2_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ioctl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cx23885_dev = type { %struct.atomic_t, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, i8, i8, i32, i32, ptr, ptr, i32, %struct.spinlock, i32, i32, [3 x %struct.cx23885_i2c], i32, %struct.mutex, %struct.mutex, i32, [32 x i8], %struct.cx23885_tsport, %struct.cx23885_tsport, ptr, i32, i32, i32, i32, i64, i32, i8, i32, i32, i8, ptr, %struct.work_struct, ptr, %struct.work_struct, i32, %struct.work_struct, i32, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, i32, i32, i32, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.spinlock, i32, %struct.cx2341x_handler, ptr, %struct.vb2_queue, %struct.cx23885_tvnorm, ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx23885_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.cx23885_tsport = type { ptr, i32, i32, %struct.vb2_dvb_frontends, %struct.cx23885_dmaqueue, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.dvb_frontend, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.161], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.161 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.162 }>
%union.anon.162 = type { i64 }
%struct.cx23885_dmaqueue = type { %struct.list_head, i32 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.164, %struct.anon.165, %struct.anon.166, %struct.anon.167, %struct.anon.168, %struct.anon.169, %struct.anon.170, %struct.anon.171 }
%struct.anon.164 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.165 = type { ptr, ptr }
%struct.anon.166 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.167 = type { ptr, ptr }
%struct.anon.168 = type { ptr, ptr, ptr }
%struct.anon.169 = type { ptr, ptr }
%struct.anon.170 = type { ptr, ptr }
%struct.anon.171 = type { ptr, ptr, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.__va_list = type { ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.160, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.160 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.v4l2_capability = type { [16 x i8], [32 x i8], [32 x i8], i32, i32, i32, [3 x i32] }
%struct.v4l2_fmtdesc = type { i32, i32, i32, [32 x i8], i32, i32, [3 x i32] }
%struct.v4l2_format = type { i32, %union.anon.136 }
%union.anon.136 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.138, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.138 = type { i8 }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }

@__param_str_mpegbufs = internal constant [17 x i8] c"cx23885.mpegbufs\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mpegbufs = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_mpegbufs = internal constant %struct.kernel_param { ptr @__param_str_mpegbufs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @mpegbufs } }, section "__param", align 4
@__UNIQUE_ID_mpegbufstype385 = internal constant [30 x i8] c"cx23885.parmtype=mpegbufs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mpegbufs386 = internal constant [57 x i8] c"cx23885.parm=mpegbufs:number of mpeg buffers, range 2-32\00", section ".modinfo", align 1
@__param_str_mpeglines = internal constant [18 x i8] c"cx23885.mpeglines\00", align 1
@mpeglines = internal global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@__param_mpeglines = internal constant %struct.kernel_param { ptr @__param_str_mpeglines, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @mpeglines } }, section "__param", align 4
@__UNIQUE_ID_mpeglinestype387 = internal constant [31 x i8] c"cx23885.parmtype=mpeglines:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mpeglines388 = internal constant [69 x i8] c"cx23885.parm=mpeglines:number of lines in an MPEG buffer, range 2-32\00", section ".modinfo", align 1
@__param_str_mpeglinesize = internal constant [21 x i8] c"cx23885.mpeglinesize\00", align 1
@mpeglinesize = internal global { i32, [28 x i8] } { i32 512, [28 x i8] zeroinitializer }, align 32
@__param_mpeglinesize = internal constant %struct.kernel_param { ptr @__param_str_mpeglinesize, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @mpeglinesize } }, section "__param", align 4
@__UNIQUE_ID_mpeglinesizetype389 = internal constant [34 x i8] c"cx23885.parmtype=mpeglinesize:int\00", section ".modinfo", align 1
@__UNIQUE_ID_mpeglinesize390 = internal constant [89 x i8] c"cx23885.parm=mpeglinesize:number of bytes in each line of an MPEG buffer, range 512-1024\00", section ".modinfo", align 1
@__param_str_v4l_debug = internal constant [18 x i8] c"cx23885.v4l_debug\00", align 1
@v4l_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_v4l_debug = internal constant %struct.kernel_param { ptr @__param_str_v4l_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @v4l_debug } }, section "__param", align 4
@__UNIQUE_ID_v4l_debugtype391 = internal constant [31 x i8] c"cx23885.parmtype=v4l_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_v4l_debug392 = internal constant [49 x i8] c"cx23885.parm=v4l_debug:enable V4L debug messages\00", section ".modinfo", align 1
@cx23885_mc417_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017cx23885: %s: 417:%s()\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx23885_mc417_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/cx23885/cx23885-417.c\00", [56 x i8] zeroinitializer }, align 32
@cx23885_mc417_init._entry_ptr = internal global ptr @cx23885_mc417_init._entry, section ".printk_index", align 4
@cx23885_417_check_encoder._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 1004, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017cx23885: %s: 417:%s() status = %d, seq = %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cx23885_417_check_encoder\00", [38 x i8] zeroinitializer }, align 32
@cx23885_417_check_encoder._entry_ptr = internal global ptr @cx23885_417_check_encoder._entry, section ".printk_index", align 4
@cx23885_417_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.5, ptr @.str.2, i32 1457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx23885_417_unregister\00", [41 x i8] zeroinitializer }, align 32
@cx23885_417_unregister._entry_ptr = internal global ptr @cx23885_417_unregister._entry, section ".printk_index", align 4
@cx23885_417_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.6, ptr @.str.2, i32 1498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx23885_417_register\00", [43 x i8] zeroinitializer }, align 32
@cx23885_417_register._entry_ptr = internal global ptr @cx23885_417_register._entry, section ".printk_index", align 4
@cx23885_boards = external dso_local local_unnamed_addr global [0 x %struct.cx23885_board], align 4
@cx23885_tvnorms = internal constant { [11 x %struct.cx23885_tvnorm], [88 x i8] } { [11 x %struct.cx23885_tvnorm] [%struct.cx23885_tvnorm { ptr @.str.77, i64 4096, i32 0, i32 0 }, %struct.cx23885_tvnorm { ptr @.str.78, i64 8192, i32 0, i32 0 }, %struct.cx23885_tvnorm { ptr @.str.79, i64 7, i32 0, i32 0 }, %struct.cx23885_tvnorm { ptr @.str.80, i64 224, i32 0, i32 0 }, %struct.cx23885_tvnorm { ptr @.str.81, i64 16, i32 0, i32 0 }, %struct.cx23885_tvnorm { ptr @.str.82, i64 256, i32 0, i32 0 }, %struct.cx23885_tvnorm { ptr @.str.83, i64 512, i32 0, i32 0 }, %struct.cx23885_tvnorm { ptr @.str.84, i64 1024, i32 0, i32 0 }, %struct.cx23885_tvnorm { ptr @.str.85, i64 2048, i32 0, i32 0 }, %struct.cx23885_tvnorm { ptr @.str.86, i64 4194304, i32 0, i32 0 }, %struct.cx23885_tvnorm { ptr @.str.87, i64 3276800, i32 0, i32 0 }], [88 x i8] zeroinitializer }, align 32
@cx23885_mpeg_template = internal constant { %struct.video_device, [344 x i8] } { %struct.video_device { %struct.media_entity zeroinitializer, ptr null, %struct.media_pipeline zeroinitializer, ptr @mpeg_fops, i32 0, %struct.device zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, [32 x i8] c"cx23885\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i16 0, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, i32 0, i64 7503863, ptr null, ptr @mpeg_ioctl_ops, [6 x i32] zeroinitializer, ptr null }, [344 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpeg\00", [27 x i8] zeroinitializer }, align 32
@cx23885_qops = internal constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr @buffer_finish, ptr null, ptr @cx23885_start_streaming, ptr @cx23885_stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_dma_sg_memops = external dso_local constant %struct.vb2_mem_ops, align 4
@cx23885_417_register._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.2, i32 1550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cx23885: %s: can't register mpeg device\0A\00", [53 x i8] zeroinitializer }, align 32
@cx23885_417_register._entry_ptr.10 = internal global ptr @cx23885_417_register._entry.8, section ".printk_index", align 4
@cx23885_417_register._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.2, i32 1555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016cx23885: %s: registered device %s [mpeg]\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_417_register._entry_ptr.13 = internal global ptr @cx23885_417_register._entry.11, section ".printk_index", align 4
@__UNIQUE_ID_firmware393 = internal constant [36 x i8] c"cx23885.firmware=v4l-cx23885-enc.fw\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cx23885_api_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017cx23885: %s: 417:%s() cmds = 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx23885_api_cmd\00", [16 x i8] zeroinitializer }, align 32
@cx23885_api_cmd._entry_ptr = internal global ptr @cx23885_api_cmd._entry, section ".printk_index", align 4
@cx23885_mbox_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017cx23885: %s: 417:%s: command(0x%X) = %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx23885_mbox_func\00", [46 x i8] zeroinitializer }, align 32
@cx23885_mbox_func._entry_ptr = internal global ptr @cx23885_mbox_func._entry, section ".printk_index", align 4
@cx23885_mbox_func._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\013cx23885: Firmware and/or mailbox pointer not initialized or corrupted, signature = 0x%x, cmd = %s\0A\00", [59 x i8] zeroinitializer }, align 32
@cx23885_mbox_func._entry_ptr.20 = internal global ptr @cx23885_mbox_func._entry.18, section ".printk_index", align 4
@cx23885_mbox_func._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 774, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013cx23885: ERROR: Mailbox appears to be in use (%x), cmd = %s\0A\00", [33 x i8] zeroinitializer }, align 32
@cx23885_mbox_func._entry_ptr.23 = internal global ptr @cx23885_mbox_func._entry.21, section ".printk_index", align 4
@cx23885_mbox_func._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.2, i32 788, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017cx23885: %s: 417:API Input %d = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cx23885_mbox_func._entry_ptr.26 = internal global ptr @cx23885_mbox_func._entry.24, section ".printk_index", align 4
@cx23885_mbox_func._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013cx23885: ERROR: API Mailbox timeout\0A\00", [57 x i8] zeroinitializer }, align 32
@cx23885_mbox_func._entry_ptr.29 = internal global ptr @cx23885_mbox_func._entry.27, section ".printk_index", align 4
@cx23885_mbox_func._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.17, ptr @.str.2, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017cx23885: %s: 417:API Output %d = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@cx23885_mbox_func._entry_ptr.32 = internal global ptr @cx23885_mbox_func._entry.30, section ".printk_index", align 4
@cx23885_mbox_func._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.17, ptr @.str.2, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017cx23885: %s: 417:API result = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cx23885_mbox_func._entry_ptr.35 = internal global ptr @cx23885_mbox_func._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PING_FW\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"START_CAPTURE\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"STOP_CAPTURE\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SET_AUDIO_ID\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SET_VIDEO_ID\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"SET_PCR_ID\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SET_FRAME_RATE\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SET_FRAME_SIZE\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SET_BIT_RATE\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SET_GOP_PROPERTIES\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SET_ASPECT_RATIO\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SET_DNR_FILTER_MODE\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SET_DNR_FILTER_PROPS\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SET_CORING_LEVELS\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SET_SPATIAL_FILTER_TYPE\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SET_VBI_LINE\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SET_STREAM_TYPE\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SET_OUTPUT_PORT\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SET_AUDIO_PROPERTIES\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HALT_FW\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GET_VERSION\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SET_GOP_CLOSURE\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GET_SEQ_END\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SET_PGM_INDEX_INFO\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SET_VBI_CONFIG\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"SET_DMA_BLOCK_SIZE\00", [45 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"GET_PREV_DMA_INFO_MB_10\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GET_PREV_DMA_INFO_MB_9\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SCHED_DMA_TO_HOST\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"INITIALIZE_INPUT\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SET_FRAME_DROP_RATE\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PAUSE_ENCODER\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"REFRESH_INPUT\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SET_COPYRIGHT\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SET_EVENT_NOTIFICATION\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SET_NUM_VSYNC_LINES\00", [44 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SET_PLACEHOLDER\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MUTE_VIDEO\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"MUTE_AUDIO\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MISC\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"NTSC-M\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NTSC-JP\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-BG\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-DK\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-I\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-M\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PAL-N\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-Nc\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PAL-60\00", [25 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SECAM-L\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SECAM-DK\00", [23 x i8] zeroinitializer }, align 32
@cx23885_video_dev_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.88, ptr @.str.2, i32 1478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cx23885_video_dev_alloc\00", [40 x i8] zeroinitializer }, align 32
@cx23885_video_dev_alloc._entry_ptr = internal global ptr @cx23885_video_dev_alloc._entry, section ".printk_index", align 4
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s (%s)\00", [24 x i8] zeroinitializer }, align 32
@mpeg_fops = internal constant { %struct.v4l2_file_operations, [60 x i8] } { %struct.v4l2_file_operations { ptr null, ptr @vb2_fop_read, ptr null, ptr @vb2_fop_poll, ptr @video_ioctl2, ptr null, ptr @vb2_fop_mmap, ptr @v4l2_fh_open, ptr @vb2_fop_release }, [60 x i8] zeroinitializer }, align 32
@mpeg_ioctl_ops = internal constant { %struct.v4l2_ioctl_ops, [120 x i8] } { %struct.v4l2_ioctl_ops { ptr @vidioc_querycap, ptr @vidioc_enum_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_s_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_try_fmt_vid_cap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vb2_ioctl_reqbufs, ptr @vb2_ioctl_querybuf, ptr @vb2_ioctl_qbuf, ptr null, ptr @vb2_ioctl_dqbuf, ptr null, ptr @vb2_ioctl_prepare_buf, ptr null, ptr null, ptr null, ptr @vb2_ioctl_streamon, ptr @vb2_ioctl_streamoff, ptr @vidioc_g_std, ptr @vidioc_s_std, ptr null, ptr @vidioc_enum_input, ptr @vidioc_g_input, ptr @vidioc_s_input, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vidioc_g_tuner, ptr @vidioc_s_tuner, ptr @vidioc_g_frequency, ptr @vidioc_s_frequency, ptr null, ptr null, ptr @vidioc_log_status, ptr null, ptr @cx23885_g_register, ptr @cx23885_s_register, ptr @cx23885_g_chip_info, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [120 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PCIe:%s\00", [24 x i8] zeroinitializer }, align 32
@vidioc_g_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.2, i32 1361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017cx23885: %s: 417:VIDIOC_G_FMT: w: %d, h: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vidioc_g_fmt_vid_cap\00", [43 x i8] zeroinitializer }, align 32
@vidioc_g_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_g_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_s_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.2, i32 1393, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017cx23885: %s: 417:VIDIOC_S_FMT: w: %d, h: %d, f: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vidioc_s_fmt_vid_cap\00", [43 x i8] zeroinitializer }, align 32
@vidioc_s_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_s_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_try_fmt_vid_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 1377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017cx23885: %s: 417:VIDIOC_TRY_FMT: w: %d, h: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vidioc_try_fmt_vid_cap\00", [41 x i8] zeroinitializer }, align 32
@vidioc_try_fmt_vid_cap._entry_ptr = internal global ptr @vidioc_try_fmt_vid_cap._entry, section ".printk_index", align 4
@vidioc_enum_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.97, ptr @.str.2, i32 1251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vidioc_enum_input\00", [46 x i8] zeroinitializer }, align 32
@vidioc_enum_input._entry_ptr = internal global ptr @vidioc_enum_input._entry, section ".printk_index", align 4
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Television\00", [21 x i8] zeroinitializer }, align 32
@vidioc_g_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.100, ptr @.str.2, i32 1277, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017cx23885: %s: 417:VIDIOC_G_TUNER: tuner type %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vidioc_g_tuner\00", [17 x i8] zeroinitializer }, align 32
@vidioc_g_tuner._entry_ptr = internal global ptr @vidioc_g_tuner._entry, section ".printk_index", align 4
@.str.101 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s/2\00", [27 x i8] zeroinitializer }, align 32
@cx23885_initialize_codec._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.102, ptr @.str.2, i32 1038, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cx23885_initialize_codec\00", [39 x i8] zeroinitializer }, align 32
@cx23885_initialize_codec._entry_ptr = internal global ptr @cx23885_initialize_codec._entry, section ".printk_index", align 4
@cx23885_initialize_codec._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.102, ptr @.str.2, i32 1042, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017cx23885: %s: 417:%s() PING OK\0A\00", [63 x i8] zeroinitializer }, align 32
@cx23885_initialize_codec._entry_ptr.105 = internal global ptr @cx23885_initialize_codec._entry.103, section ".printk_index", align 4
@cx23885_initialize_codec._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.102, ptr @.str.2, i32 1045, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013cx23885: %s() f/w load failed\0A\00", [63 x i8] zeroinitializer }, align 32
@cx23885_initialize_codec._entry_ptr.108 = internal global ptr @cx23885_initialize_codec._entry.106, section ".printk_index", align 4
@cx23885_initialize_codec._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.102, ptr @.str.2, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013cx23885: %s() mailbox < 0, error\0A\00", [60 x i8] zeroinitializer }, align 32
@cx23885_initialize_codec._entry_ptr.111 = internal global ptr @cx23885_initialize_codec._entry.109, section ".printk_index", align 4
@cx23885_initialize_codec._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.102, ptr @.str.2, i32 1057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013cx23885: ERROR: cx23417 firmware ping failed!\0A\00", [47 x i8] zeroinitializer }, align 32
@cx23885_initialize_codec._entry_ptr.114 = internal global ptr @cx23885_initialize_codec._entry.112, section ".printk_index", align 4
@cx23885_initialize_codec._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.102, ptr @.str.2, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013cx23885: ERROR: cx23417 firmware get encoder :version failed!\0A\00", [63 x i8] zeroinitializer }, align 32
@cx23885_initialize_codec._entry_ptr.117 = internal global ptr @cx23885_initialize_codec._entry.115, section ".printk_index", align 4
@cx23885_initialize_codec._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.102, ptr @.str.2, i32 1066, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017cx23885: %s: 417:cx23417 firmware version is 0x%08x\0A\00", [41 x i8] zeroinitializer }, align 32
@cx23885_initialize_codec._entry_ptr.120 = internal global ptr @cx23885_initialize_codec._entry.118, section ".printk_index", align 4
@cx23885_load_firmware.magic = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\A7\0D\00\00f\BBU\AA", [24 x i8] zeroinitializer }, align 32
@cx23885_load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.121, ptr @.str.2, i32 897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx23885_load_firmware\00", [42 x i8] zeroinitializer }, align 32
@cx23885_load_firmware._entry_ptr = internal global ptr @cx23885_load_firmware._entry, section ".printk_index", align 4
@cx23885_load_firmware._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013cx23885: %s: Error with mc417_register_write\0A\00", [48 x i8] zeroinitializer }, align 32
@cx23885_load_firmware._entry_ptr.124 = internal global ptr @cx23885_load_firmware._entry.122, section ".printk_index", align 4
@.str.125 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"v4l-cx23885-enc.fw\00", [45 x i8] zeroinitializer }, align 32
@cx23885_load_firmware._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.121, ptr @.str.2, i32 925, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013cx23885: ERROR: Hotplug firmware request failed (%s).\0A\00", [39 x i8] zeroinitializer }, align 32
@cx23885_load_firmware._entry_ptr.128 = internal global ptr @cx23885_load_firmware._entry.126, section ".printk_index", align 4
@cx23885_load_firmware._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.121, ptr @.str.2, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013cx23885: Please fix your hotplug setup, the board will not work without firmware loaded!\0A\00", [36 x i8] zeroinitializer }, align 32
@cx23885_load_firmware._entry_ptr.131 = internal global ptr @cx23885_load_firmware._entry.129, section ".printk_index", align 4
@cx23885_load_firmware._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.121, ptr @.str.2, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013cx23885: ERROR: Firmware size mismatch (have %zu, expected %d)\0A\00", [62 x i8] zeroinitializer }, align 32
@cx23885_load_firmware._entry_ptr.134 = internal global ptr @cx23885_load_firmware._entry.132, section ".printk_index", align 4
@cx23885_load_firmware._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.121, ptr @.str.2, i32 938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013cx23885: ERROR: Firmware magic mismatch, wrong file?\0A\00", [40 x i8] zeroinitializer }, align 32
@cx23885_load_firmware._entry_ptr.137 = internal global ptr @cx23885_load_firmware._entry.135, section ".printk_index", align 4
@cx23885_load_firmware._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.121, ptr @.str.2, i32 944, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017cx23885: %s: 417:Loading firmware ...\0A\00", [55 x i8] zeroinitializer }, align 32
@cx23885_load_firmware._entry_ptr.140 = internal global ptr @cx23885_load_firmware._entry.138, section ".printk_index", align 4
@cx23885_load_firmware._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.121, ptr @.str.2, i32 950, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013cx23885: ERROR: Loading firmware failed!\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_load_firmware._entry_ptr.143 = internal global ptr @cx23885_load_firmware._entry.141, section ".printk_index", align 4
@cx23885_load_firmware._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.121, ptr @.str.2, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017cx23885: %s: 417:Verifying firmware ...\0A\00", [53 x i8] zeroinitializer }, align 32
@cx23885_load_firmware._entry_ptr.146 = internal global ptr @cx23885_load_firmware._entry.144, section ".printk_index", align 4
@cx23885_load_firmware._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.121, ptr @.str.2, i32 961, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013cx23885: ERROR: Reading firmware failed!\0A\00", [52 x i8] zeroinitializer }, align 32
@cx23885_load_firmware._entry_ptr.149 = internal global ptr @cx23885_load_firmware._entry.147, section ".printk_index", align 4
@cx23885_load_firmware._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.121, ptr @.str.2, i32 968, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013cx23885: ERROR: Firmware load failed (checksum mismatch).\0A\00", [35 x i8] zeroinitializer }, align 32
@cx23885_load_firmware._entry_ptr.152 = internal global ptr @cx23885_load_firmware._entry.150, section ".printk_index", align 4
@cx23885_load_firmware._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.121, ptr @.str.2, i32 973, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017cx23885: %s: 417:Firmware upload successful.\0A\00", [48 x i8] zeroinitializer }, align 32
@cx23885_load_firmware._entry_ptr.155 = internal global ptr @cx23885_load_firmware._entry.153, section ".printk_index", align 4
@cx23885_load_firmware._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.2, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx23885_load_firmware._entry_ptr.157 = internal global ptr @cx23885_load_firmware._entry.156, section ".printk_index", align 4
@__const.cx23885_find_mailbox.signature = private unnamed_addr constant [4 x i32] [i32 305419896, i32 878082066, i32 1450709556, i32 2014458966], align 4
@cx23885_find_mailbox._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.158, ptr @.str.2, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx23885_find_mailbox\00", [43 x i8] zeroinitializer }, align 32
@cx23885_find_mailbox._entry_ptr = internal global ptr @cx23885_find_mailbox._entry, section ".printk_index", align 4
@cx23885_find_mailbox._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.158, ptr @.str.2, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017cx23885: %s: 417:Mailbox signature found at 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@cx23885_find_mailbox._entry_ptr.161 = internal global ptr @cx23885_find_mailbox._entry.159, section ".printk_index", align 4
@cx23885_find_mailbox._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.158, ptr @.str.2, i32 880, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013cx23885: Mailbox signature values not found!\0A\00", [48 x i8] zeroinitializer }, align 32
@cx23885_find_mailbox._entry_ptr.164 = internal global ptr @cx23885_find_mailbox._entry.162, section ".printk_index", align 4
@cx23885_codec_settings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.165, ptr @.str.2, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx23885_codec_settings\00", [41 x i8] zeroinitializer }, align 32
@cx23885_codec_settings._entry_ptr = internal global ptr @cx23885_codec_settings._entry, section ".printk_index", align 4
@switch.table.cmd_to_str = internal constant { [93 x ptr], [76 x i8] } { [93 x ptr] [ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.39, ptr @.str.76, ptr @.str.40, ptr @.str.76, ptr @.str.41, ptr @.str.76, ptr @.str.42, ptr @.str.76, ptr @.str.43, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.44, ptr @.str.76, ptr @.str.45, ptr @.str.76, ptr @.str.46, ptr @.str.76, ptr @.str.47, ptr @.str.76, ptr @.str.48, ptr @.str.76, ptr @.str.49, ptr @.str.76, ptr @.str.50, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.51, ptr @.str.76, ptr @.str.52, ptr @.str.76, ptr @.str.53, ptr @.str.76, ptr @.str.54, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.76, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.76, ptr @.str.76, ptr @.str.66, ptr @.str.76, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.76, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.75], [76 x i8] zeroinitializer }, align 32
@___asan_gen_.166 = private unnamed_addr constant [9 x i8] c"mpegbufs\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 32, i32 21 }
@___asan_gen_.169 = private unnamed_addr constant [10 x i8] c"mpeglines\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 35, i32 21 }
@___asan_gen_.172 = private unnamed_addr constant [13 x i8] c"mpeglinesize\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 38, i32 21 }
@___asan_gen_.175 = private unnamed_addr constant [10 x i8] c"v4l_debug\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 43, i32 21 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 277, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1004, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1457, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1498, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [16 x i8] c"cx23885_tvnorms\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 53, i32 30 }
@___asan_gen_.214 = private unnamed_addr constant [22 x i8] c"cx23885_mpeg_template\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1448, i32 28 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1523, i32 37 }
@___asan_gen_.220 = private unnamed_addr constant [13 x i8] c"cx23885_qops\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1208, i32 29 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1550, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1554, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 837, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 756, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 763, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 773, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 788, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 803, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 812, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 816, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 661, i32 11 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 663, i32 11 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 665, i32 11 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 667, i32 11 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 669, i32 11 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 671, i32 11 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 673, i32 11 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 675, i32 11 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 677, i32 11 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 679, i32 11 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 681, i32 11 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 683, i32 11 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 685, i32 11 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 687, i32 11 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 689, i32 11 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 691, i32 11 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 693, i32 11 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 695, i32 11 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 697, i32 11 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 699, i32 11 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 701, i32 11 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 703, i32 11 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 705, i32 11 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 707, i32 11 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 709, i32 11 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 711, i32 11 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 713, i32 11 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 715, i32 11 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 717, i32 11 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 719, i32 11 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 721, i32 11 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 723, i32 11 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 725, i32 11 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 727, i32 11 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 729, i32 11 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 731, i32 11 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 733, i32 11 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 735, i32 11 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 737, i32 11 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 739, i32 11 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 741, i32 10 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 55, i32 16 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 58, i32 16 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 61, i32 16 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 64, i32 16 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 67, i32 16 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 70, i32 16 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 73, i32 16 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 76, i32 16 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 79, i32 16 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 82, i32 16 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 85, i32 16 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1478, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1484, i32 41 }
@___asan_gen_.454 = private unnamed_addr constant [10 x i8] c"mpeg_fops\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1408, i32 42 }
@___asan_gen_.457 = private unnamed_addr constant [15 x i8] c"mpeg_ioctl_ops\00", align 1
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1418, i32 36 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1326, i32 25 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1360, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1392, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1376, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1251, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1274, i32 19 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1277, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1402, i32 31 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1038, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1042, i32 3 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1045, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1050, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1057, i32 4 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1063, i32 4 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1066, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 886, i32 29 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 897, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 915, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 920, i32 39 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 924, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 926, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 931, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 938, i32 3 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 944, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 950, i32 4 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 958, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 961, i32 4 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 968, i32 3 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 973, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 993, i32 3 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 867, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 876, i32 4 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 880, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.655 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.656 = private constant [43 x i8] c"../drivers/media/pci/cx23885/cx23885-417.c\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.656, i32 1009, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant [24 x i8] c"switch.table.cmd_to_str\00", align 1
@llvm.compiler.used = appending global [222 x ptr] [ptr @__UNIQUE_ID_firmware393, ptr @__UNIQUE_ID_mpegbufs386, ptr @__UNIQUE_ID_mpegbufstype385, ptr @__UNIQUE_ID_mpeglines388, ptr @__UNIQUE_ID_mpeglinesize390, ptr @__UNIQUE_ID_mpeglinesizetype389, ptr @__UNIQUE_ID_mpeglinestype387, ptr @__UNIQUE_ID_v4l_debug392, ptr @__UNIQUE_ID_v4l_debugtype391, ptr @__param_mpegbufs, ptr @__param_mpeglines, ptr @__param_mpeglinesize, ptr @__param_v4l_debug, ptr @cx23885_417_check_encoder._entry, ptr @cx23885_417_check_encoder._entry_ptr, ptr @cx23885_417_register._entry, ptr @cx23885_417_register._entry.11, ptr @cx23885_417_register._entry.8, ptr @cx23885_417_register._entry_ptr, ptr @cx23885_417_register._entry_ptr.10, ptr @cx23885_417_register._entry_ptr.13, ptr @cx23885_417_unregister._entry, ptr @cx23885_417_unregister._entry_ptr, ptr @cx23885_api_cmd._entry, ptr @cx23885_api_cmd._entry_ptr, ptr @cx23885_codec_settings._entry, ptr @cx23885_codec_settings._entry_ptr, ptr @cx23885_find_mailbox._entry, ptr @cx23885_find_mailbox._entry.159, ptr @cx23885_find_mailbox._entry.162, ptr @cx23885_find_mailbox._entry_ptr, ptr @cx23885_find_mailbox._entry_ptr.161, ptr @cx23885_find_mailbox._entry_ptr.164, ptr @cx23885_initialize_codec._entry, ptr @cx23885_initialize_codec._entry.103, ptr @cx23885_initialize_codec._entry.106, ptr @cx23885_initialize_codec._entry.109, ptr @cx23885_initialize_codec._entry.112, ptr @cx23885_initialize_codec._entry.115, ptr @cx23885_initialize_codec._entry.118, ptr @cx23885_initialize_codec._entry_ptr, ptr @cx23885_initialize_codec._entry_ptr.105, ptr @cx23885_initialize_codec._entry_ptr.108, ptr @cx23885_initialize_codec._entry_ptr.111, ptr @cx23885_initialize_codec._entry_ptr.114, ptr @cx23885_initialize_codec._entry_ptr.117, ptr @cx23885_initialize_codec._entry_ptr.120, ptr @cx23885_load_firmware._entry, ptr @cx23885_load_firmware._entry.122, ptr @cx23885_load_firmware._entry.126, ptr @cx23885_load_firmware._entry.129, ptr @cx23885_load_firmware._entry.132, ptr @cx23885_load_firmware._entry.135, ptr @cx23885_load_firmware._entry.138, ptr @cx23885_load_firmware._entry.141, ptr @cx23885_load_firmware._entry.144, ptr @cx23885_load_firmware._entry.147, ptr @cx23885_load_firmware._entry.150, ptr @cx23885_load_firmware._entry.153, ptr @cx23885_load_firmware._entry.156, ptr @cx23885_load_firmware._entry_ptr, ptr @cx23885_load_firmware._entry_ptr.124, ptr @cx23885_load_firmware._entry_ptr.128, ptr @cx23885_load_firmware._entry_ptr.131, ptr @cx23885_load_firmware._entry_ptr.134, ptr @cx23885_load_firmware._entry_ptr.137, ptr @cx23885_load_firmware._entry_ptr.140, ptr @cx23885_load_firmware._entry_ptr.143, ptr @cx23885_load_firmware._entry_ptr.146, ptr @cx23885_load_firmware._entry_ptr.149, ptr @cx23885_load_firmware._entry_ptr.152, ptr @cx23885_load_firmware._entry_ptr.155, ptr @cx23885_load_firmware._entry_ptr.157, ptr @cx23885_mbox_func._entry, ptr @cx23885_mbox_func._entry.18, ptr @cx23885_mbox_func._entry.21, ptr @cx23885_mbox_func._entry.24, ptr @cx23885_mbox_func._entry.27, ptr @cx23885_mbox_func._entry.30, ptr @cx23885_mbox_func._entry.33, ptr @cx23885_mbox_func._entry_ptr, ptr @cx23885_mbox_func._entry_ptr.20, ptr @cx23885_mbox_func._entry_ptr.23, ptr @cx23885_mbox_func._entry_ptr.26, ptr @cx23885_mbox_func._entry_ptr.29, ptr @cx23885_mbox_func._entry_ptr.32, ptr @cx23885_mbox_func._entry_ptr.35, ptr @cx23885_mc417_init._entry, ptr @cx23885_mc417_init._entry_ptr, ptr @cx23885_video_dev_alloc._entry, ptr @cx23885_video_dev_alloc._entry_ptr, ptr @vidioc_enum_input._entry, ptr @vidioc_enum_input._entry_ptr, ptr @vidioc_g_fmt_vid_cap._entry, ptr @vidioc_g_fmt_vid_cap._entry_ptr, ptr @vidioc_g_tuner._entry, ptr @vidioc_g_tuner._entry_ptr, ptr @vidioc_s_fmt_vid_cap._entry, ptr @vidioc_s_fmt_vid_cap._entry_ptr, ptr @vidioc_try_fmt_vid_cap._entry, ptr @vidioc_try_fmt_vid_cap._entry_ptr, ptr @mpegbufs, ptr @mpeglines, ptr @mpeglinesize, ptr @v4l_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @cx23885_tvnorms, ptr @cx23885_mpeg_template, ptr @.str.7, ptr @cx23885_qops, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @mpeg_fops, ptr @mpeg_ioctl_ops, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @cx23885_load_firmware.magic, ptr @.str.121, ptr @.str.123, ptr @.str.125, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.158, ptr @.str.160, ptr @.str.163, ptr @.str.165, ptr @switch.table.cmd_to_str], section "llvm.metadata"
@0 = internal global [165 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpegbufs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpeglines to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpeglinesize to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_mc417_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_417_check_encoder._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_417_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_417_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_tvnorms to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_mpeg_template to i32), i32 1352, i32 1696, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_417_register._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_417_register._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_api_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_mbox_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_mbox_func._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_mbox_func._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_mbox_func._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_mbox_func._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_mbox_func._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_mbox_func._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_video_dev_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpeg_fops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpeg_ioctl_ops to i32), i32 488, i32 608, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_s_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_try_fmt_vid_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_enum_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vidioc_g_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_initialize_codec._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_initialize_codec._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_initialize_codec._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_initialize_codec._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_initialize_codec._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_initialize_codec._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_initialize_codec._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_load_firmware.magic to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_load_firmware._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_load_firmware._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_load_firmware._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_load_firmware._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_load_firmware._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_load_firmware._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_load_firmware._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_load_firmware._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_load_firmware._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_load_firmware._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_load_firmware._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_load_firmware._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_find_mailbox._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_find_mailbox._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_find_mailbox._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_codec_settings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cmd_to_str to i32), i32 372, i32 448, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_mc417_init(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp ugt i32 %0, 1
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1) #14
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !355
  tail call void @arm_heavy_mb() #11
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %2, i32 278538
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 922746880) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !357
  tail call void @arm_heavy_mb() #11
  %3 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %4, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 1048576) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !358
  tail call void @arm_heavy_mb() #11
  %5 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lmmio, align 4
  %add.ptr16 = getelementptr i32, ptr %6, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 14680064) #11, !srcloc !356
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc417_register_write(ptr nocapture noundef readonly %dev, i16 noundef zeroext %address, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !359
  tail call void @arm_heavy_mb() #11
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1048576) #11, !srcloc !356
  %and = and i32 %value, 255
  %or = or i32 %and, 22528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !360
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %3 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lmmio, align 4
  %add.ptr5 = getelementptr i32, ptr %4, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %2) #11, !srcloc !356
  %or6 = or i32 %and, 63488
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !361
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %7, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %5) #11, !srcloc !356
  %shr = lshr i32 %value, 8
  %and12 = and i32 %shr, 255
  %or13 = or i32 %and12, 22784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !362
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %or13)
  %9 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio, align 4
  %add.ptr18 = getelementptr i32, ptr %10, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %8) #11, !srcloc !356
  %or19 = or i32 %and12, 63744
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !363
  tail call void @arm_heavy_mb() #11
  %11 = tail call i32 @llvm.bswap.i32(i32 %or19)
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %add.ptr24 = getelementptr i32, ptr %13, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %11) #11, !srcloc !356
  %shr25 = lshr i32 %value, 16
  %and26 = and i32 %shr25, 255
  %or27 = or i32 %and26, 23040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !364
  tail call void @arm_heavy_mb() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %or27)
  %15 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio, align 4
  %add.ptr32 = getelementptr i32, ptr %16, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %14) #11, !srcloc !356
  %or33 = or i32 %and26, 64000
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !365
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %or33)
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  %add.ptr38 = getelementptr i32, ptr %19, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %17) #11, !srcloc !356
  %shr39 = lshr i32 %value, 24
  %or41 = or i32 %shr39, 23296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !366
  tail call void @arm_heavy_mb() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %or41)
  %21 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio, align 4
  %add.ptr46 = getelementptr i32, ptr %22, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %20) #11, !srcloc !356
  %or47 = or i32 %shr39, 64256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !367
  tail call void @arm_heavy_mb() #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %or47)
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr52 = getelementptr i32, ptr %25, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %23) #11, !srcloc !356
  %conv = zext i16 %address to i32
  %and53 = and i32 %conv, 255
  %or54 = or i32 %and53, 23552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !368
  tail call void @arm_heavy_mb() #11
  %26 = tail call i32 @llvm.bswap.i32(i32 %or54)
  %27 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lmmio, align 4
  %add.ptr59 = getelementptr i32, ptr %28, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr59, i32 %26) #11, !srcloc !356
  %or60 = or i32 %and53, 64512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !369
  tail call void @arm_heavy_mb() #11
  %29 = tail call i32 @llvm.bswap.i32(i32 %or60)
  %30 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio, align 4
  %add.ptr65 = getelementptr i32, ptr %31, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %29) #11, !srcloc !356
  %32 = lshr i32 %conv, 8
  %or69 = or i32 %32, 23808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !370
  tail call void @arm_heavy_mb() #11
  %33 = tail call i32 @llvm.bswap.i32(i32 %or69)
  %34 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lmmio, align 4
  %add.ptr74 = getelementptr i32, ptr %35, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %33) #11, !srcloc !356
  %or75 = or i32 %32, 64768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !371
  tail call void @arm_heavy_mb() #11
  %36 = tail call i32 @llvm.bswap.i32(i32 %or75)
  %37 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lmmio, align 4
  %add.ptr80 = getelementptr i32, ptr %38, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %36) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !372
  tail call void @arm_heavy_mb() #11
  %39 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lmmio, align 4
  %add.ptr85 = getelementptr i32, ptr %40, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 22937600) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !373
  tail call void @arm_heavy_mb() #11
  %41 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lmmio, align 4
  %add.ptr91 = getelementptr i32, ptr %42, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 33423360) #11, !srcloc !356
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %43, 1
  %44 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lmmio, align 4
  %add.ptr7.i = getelementptr i32, ptr %45, i32 278536
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #11, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !375
  %47 = and i32 %46, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.not8.i = icmp eq i32 %47, 0
  br i1 %cmp.not8.i, label %entry.if.end.i_crit_edge, label %entry.mc417_wait_ready.exit_crit_edge

entry.mc417_wait_ready.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mc417_wait_ready.exit

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.end.i.mc417_wait_ready.exit_crit_edge, label %if.end5.i

if.end.i.mc417_wait_ready.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mc417_wait_ready.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #11
  %50 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lmmio, align 4
  %add.ptr.i = getelementptr i32, ptr %51, i32 278536
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !375
  %53 = and i32 %52, 1048576
  %cmp.not.i = icmp eq i32 %53, 0
  br i1 %cmp.not.i, label %if.end5.i.if.end.i_crit_edge, label %if.end5.i.mc417_wait_ready.exit_crit_edge

if.end5.i.mc417_wait_ready.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mc417_wait_ready.exit

if.end5.i.if.end.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

mc417_wait_ready.exit:                            ; preds = %if.end5.i.mc417_wait_ready.exit_crit_edge, %if.end.i.mc417_wait_ready.exit_crit_edge, %entry.mc417_wait_ready.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.mc417_wait_ready.exit_crit_edge ], [ 0, %if.end5.i.mc417_wait_ready.exit_crit_edge ], [ -1, %if.end.i.mc417_wait_ready.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc417_register_read(ptr noundef readonly %dev, i16 noundef zeroext %address, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !376
  tail call void @arm_heavy_mb() #11
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1048576) #11, !srcloc !356
  %conv = zext i16 %address to i32
  %and = and i32 %conv, 255
  %or = or i32 %and, 23552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !377
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %3 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lmmio, align 4
  %add.ptr6 = getelementptr i32, ptr %4, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %2) #11, !srcloc !356
  %or7 = or i32 %and, 64512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !378
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr12 = getelementptr i32, ptr %7, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %5) #11, !srcloc !356
  %8 = lshr i32 %conv, 8
  %or15 = or i32 %8, 23808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !379
  tail call void @arm_heavy_mb() #11
  %9 = tail call i32 @llvm.bswap.i32(i32 %or15)
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  %add.ptr20 = getelementptr i32, ptr %11, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %9) #11, !srcloc !356
  %or21 = or i32 %8, 64768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !380
  tail call void @arm_heavy_mb() #11
  %12 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %add.ptr26 = getelementptr i32, ptr %14, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %12) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !381
  tail call void @arm_heavy_mb() #11
  %15 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio, align 4
  %add.ptr31 = getelementptr i32, ptr %16, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 6160384) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !382
  tail call void @arm_heavy_mb() #11
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %add.ptr37 = getelementptr i32, ptr %18, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 16646144) #11, !srcloc !356
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %19, 1
  %20 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio, align 4
  %add.ptr7.i = getelementptr i32, ptr %21, i32 278536
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #11, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !375
  %23 = and i32 %22, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.not8.i = icmp eq i32 %23, 0
  br i1 %cmp.not8.i, label %entry.if.end.i_crit_edge, label %entry.mc417_wait_ready.exit_crit_edge

entry.mc417_wait_ready.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mc417_wait_ready.exit

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.end.i.mc417_wait_ready.exit_crit_edge, label %if.end5.i

if.end.i.mc417_wait_ready.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mc417_wait_ready.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #11
  %26 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio, align 4
  %add.ptr.i = getelementptr i32, ptr %27, i32 278536
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !375
  %29 = and i32 %28, 1048576
  %cmp.not.i = icmp eq i32 %29, 0
  br i1 %cmp.not.i, label %if.end5.i.if.end.i_crit_edge, label %if.end5.i.mc417_wait_ready.exit_crit_edge

if.end5.i.mc417_wait_ready.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mc417_wait_ready.exit

if.end5.i.if.end.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

mc417_wait_ready.exit:                            ; preds = %if.end5.i.mc417_wait_ready.exit_crit_edge, %if.end.i.mc417_wait_ready.exit_crit_edge, %entry.mc417_wait_ready.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.mc417_wait_ready.exit_crit_edge ], [ 0, %if.end5.i.mc417_wait_ready.exit_crit_edge ], [ -1, %if.end.i.mc417_wait_ready.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !383
  tail call void @arm_heavy_mb() #11
  %30 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio, align 4
  %add.ptr42 = getelementptr i32, ptr %31, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 -15728640) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !384
  tail call void @arm_heavy_mb() #11
  %32 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lmmio, align 4
  %add.ptr47 = getelementptr i32, ptr %33, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47, i32 5767168) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !385
  tail call void @arm_heavy_mb() #11
  %34 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lmmio, align 4
  %add.ptr52 = getelementptr i32, ptr %35, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 9961472) #11, !srcloc !356
  %36 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lmmio, align 4
  %add.ptr54 = getelementptr i32, ptr %37, i32 278536
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #11, !srcloc !374
  %39 = lshr i32 %38, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !387
  tail call void @arm_heavy_mb() #11
  %40 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lmmio, align 4
  %add.ptr62 = getelementptr i32, ptr %41, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 15728640) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !388
  tail call void @arm_heavy_mb() #11
  %42 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lmmio, align 4
  %add.ptr67 = getelementptr i32, ptr %43, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 5832704) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !389
  tail call void @arm_heavy_mb() #11
  %44 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lmmio, align 4
  %add.ptr72 = getelementptr i32, ptr %45, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72, i32 10027008) #11, !srcloc !356
  %46 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %lmmio, align 4
  %add.ptr76 = getelementptr i32, ptr %47, i32 278536
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #11, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !390
  %49 = lshr i32 %48, 16
  %shl = and i32 %49, 65280
  %or81 = or i32 %shl, %39
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !391
  tail call void @arm_heavy_mb() #11
  %50 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lmmio, align 4
  %add.ptr86 = getelementptr i32, ptr %51, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 15728640) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !392
  tail call void @arm_heavy_mb() #11
  %52 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %lmmio, align 4
  %add.ptr91 = getelementptr i32, ptr %53, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91, i32 5898240) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !393
  tail call void @arm_heavy_mb() #11
  %54 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lmmio, align 4
  %add.ptr96 = getelementptr i32, ptr %55, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 10092544) #11, !srcloc !356
  %56 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lmmio, align 4
  %add.ptr100 = getelementptr i32, ptr %57, i32 278536
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100) #11, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !394
  %59 = lshr i32 %58, 8
  %shl105 = and i32 %59, 16711680
  %or106 = or i32 %or81, %shl105
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !395
  tail call void @arm_heavy_mb() #11
  %60 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %lmmio, align 4
  %add.ptr111 = getelementptr i32, ptr %61, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr111, i32 15728640) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !396
  tail call void @arm_heavy_mb() #11
  %62 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %lmmio, align 4
  %add.ptr116 = getelementptr i32, ptr %63, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr116, i32 5963776) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !397
  tail call void @arm_heavy_mb() #11
  %64 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lmmio, align 4
  %add.ptr121 = getelementptr i32, ptr %65, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 10158080) #11, !srcloc !356
  %66 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %lmmio, align 4
  %add.ptr125 = getelementptr i32, ptr %67, i32 278536
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125) #11, !srcloc !374
  %69 = and i32 %68, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !398
  %or131 = or i32 %or106, %69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !399
  tail call void @arm_heavy_mb() #11
  %70 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %lmmio, align 4
  %add.ptr136 = getelementptr i32, ptr %71, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr136, i32 15728640) #11, !srcloc !356
  %72 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %or131, ptr %value, align 4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc417_memory_write(ptr nocapture noundef readonly %dev, i32 noundef %address, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !400
  tail call void @arm_heavy_mb() #11
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1048576) #11, !srcloc !356
  %and = and i32 %value, 255
  %or = or i32 %and, 20480
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !401
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %3 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lmmio, align 4
  %add.ptr5 = getelementptr i32, ptr %4, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %2) #11, !srcloc !356
  %or6 = or i32 %and, 61440
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !402
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or6)
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %7, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %5) #11, !srcloc !356
  %shr = lshr i32 %value, 8
  %and12 = and i32 %shr, 255
  %or13 = or i32 %and12, 20736
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !403
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %or13)
  %9 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio, align 4
  %add.ptr18 = getelementptr i32, ptr %10, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %8) #11, !srcloc !356
  %or19 = or i32 %and12, 61696
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !404
  tail call void @arm_heavy_mb() #11
  %11 = tail call i32 @llvm.bswap.i32(i32 %or19)
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %add.ptr24 = getelementptr i32, ptr %13, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %11) #11, !srcloc !356
  %shr25 = lshr i32 %value, 16
  %and26 = and i32 %shr25, 255
  %or27 = or i32 %and26, 20992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !405
  tail call void @arm_heavy_mb() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %or27)
  %15 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio, align 4
  %add.ptr32 = getelementptr i32, ptr %16, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %14) #11, !srcloc !356
  %or33 = or i32 %and26, 61952
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !406
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %or33)
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  %add.ptr38 = getelementptr i32, ptr %19, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %17) #11, !srcloc !356
  %shr39 = lshr i32 %value, 24
  %or41 = or i32 %shr39, 21248
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !407
  tail call void @arm_heavy_mb() #11
  %20 = tail call i32 @llvm.bswap.i32(i32 %or41)
  %21 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio, align 4
  %add.ptr46 = getelementptr i32, ptr %22, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %20) #11, !srcloc !356
  %or47 = or i32 %shr39, 62208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !408
  tail call void @arm_heavy_mb() #11
  %23 = tail call i32 @llvm.bswap.i32(i32 %or47)
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr52 = getelementptr i32, ptr %25, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %23) #11, !srcloc !356
  %shr53 = lshr i32 %address, 16
  %and54 = and i32 %shr53, 63
  %or55 = or i32 %and54, 21568
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !409
  tail call void @arm_heavy_mb() #11
  %26 = tail call i32 @llvm.bswap.i32(i32 %or55)
  %27 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lmmio, align 4
  %add.ptr60 = getelementptr i32, ptr %28, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %26) #11, !srcloc !356
  %or61 = or i32 %and54, 62528
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !410
  tail call void @arm_heavy_mb() #11
  %29 = tail call i32 @llvm.bswap.i32(i32 %or61)
  %30 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio, align 4
  %add.ptr66 = getelementptr i32, ptr %31, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %29) #11, !srcloc !356
  %shr67 = lshr i32 %address, 8
  %and68 = and i32 %shr67, 255
  %or69 = or i32 %and68, 21760
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !411
  tail call void @arm_heavy_mb() #11
  %32 = tail call i32 @llvm.bswap.i32(i32 %or69)
  %33 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lmmio, align 4
  %add.ptr74 = getelementptr i32, ptr %34, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 %32) #11, !srcloc !356
  %or75 = or i32 %and68, 62720
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !412
  tail call void @arm_heavy_mb() #11
  %35 = tail call i32 @llvm.bswap.i32(i32 %or75)
  %36 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lmmio, align 4
  %add.ptr80 = getelementptr i32, ptr %37, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %35) #11, !srcloc !356
  %and81 = and i32 %address, 255
  %or82 = or i32 %and81, 22016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !413
  tail call void @arm_heavy_mb() #11
  %38 = tail call i32 @llvm.bswap.i32(i32 %or82)
  %39 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %lmmio, align 4
  %add.ptr87 = getelementptr i32, ptr %40, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %38) #11, !srcloc !356
  %or88 = or i32 %and81, 62976
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !414
  tail call void @arm_heavy_mb() #11
  %41 = tail call i32 @llvm.bswap.i32(i32 %or88)
  %42 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lmmio, align 4
  %add.ptr93 = getelementptr i32, ptr %43, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr93, i32 %41) #11, !srcloc !356
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %44, 1
  %45 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lmmio, align 4
  %add.ptr7.i = getelementptr i32, ptr %46, i32 278536
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #11, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !375
  %48 = and i32 %47, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.not8.i = icmp eq i32 %48, 0
  br i1 %cmp.not8.i, label %entry.if.end.i_crit_edge, label %entry.mc417_wait_ready.exit_crit_edge

entry.mc417_wait_ready.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mc417_wait_ready.exit

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %49 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.end.i.mc417_wait_ready.exit_crit_edge, label %if.end5.i

if.end.i.mc417_wait_ready.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mc417_wait_ready.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748) #11
  %51 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lmmio, align 4
  %add.ptr.i = getelementptr i32, ptr %52, i32 278536
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !375
  %54 = and i32 %53, 1048576
  %cmp.not.i = icmp eq i32 %54, 0
  br i1 %cmp.not.i, label %if.end5.i.if.end.i_crit_edge, label %if.end5.i.mc417_wait_ready.exit_crit_edge

if.end5.i.mc417_wait_ready.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mc417_wait_ready.exit

if.end5.i.if.end.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

mc417_wait_ready.exit:                            ; preds = %if.end5.i.mc417_wait_ready.exit_crit_edge, %if.end.i.mc417_wait_ready.exit_crit_edge, %entry.mc417_wait_ready.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.mc417_wait_ready.exit_crit_edge ], [ 0, %if.end5.i.mc417_wait_ready.exit_crit_edge ], [ -1, %if.end.i.mc417_wait_ready.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mc417_memory_read(ptr noundef readonly %dev, i32 noundef %address, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !415
  tail call void @arm_heavy_mb() #11
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1048576) #11, !srcloc !356
  %shr = lshr i32 %address, 16
  %and = and i32 %shr, 63
  %or = or i32 %and, 21504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !416
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %or)
  %3 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %lmmio, align 4
  %add.ptr6 = getelementptr i32, ptr %4, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %2) #11, !srcloc !356
  %or7 = or i32 %and, 62464
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !417
  tail call void @arm_heavy_mb() #11
  %5 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr12 = getelementptr i32, ptr %7, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %5) #11, !srcloc !356
  %shr13 = lshr i32 %address, 8
  %and14 = and i32 %shr13, 255
  %or15 = or i32 %and14, 21760
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !418
  tail call void @arm_heavy_mb() #11
  %8 = tail call i32 @llvm.bswap.i32(i32 %or15)
  %9 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio, align 4
  %add.ptr20 = getelementptr i32, ptr %10, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %8) #11, !srcloc !356
  %or21 = or i32 %and14, 62720
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !419
  tail call void @arm_heavy_mb() #11
  %11 = tail call i32 @llvm.bswap.i32(i32 %or21)
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %add.ptr26 = getelementptr i32, ptr %13, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %11) #11, !srcloc !356
  %and27 = and i32 %address, 255
  %or28 = or i32 %and27, 22016
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !420
  tail call void @arm_heavy_mb() #11
  %14 = tail call i32 @llvm.bswap.i32(i32 %or28)
  %15 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %lmmio, align 4
  %add.ptr33 = getelementptr i32, ptr %16, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %14) #11, !srcloc !356
  %or34 = or i32 %and27, 62976
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !421
  tail call void @arm_heavy_mb() #11
  %17 = tail call i32 @llvm.bswap.i32(i32 %or34)
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  %add.ptr39 = getelementptr i32, ptr %19, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %17) #11, !srcloc !356
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %20, 1
  %21 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lmmio, align 4
  %add.ptr7.i = getelementptr i32, ptr %22, i32 278536
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #11, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !375
  %24 = and i32 %23, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.not8.i = icmp eq i32 %24, 0
  br i1 %cmp.not8.i, label %entry.if.end.i_crit_edge, label %entry.mc417_wait_ready.exit_crit_edge

entry.mc417_wait_ready.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %mc417_wait_ready.exit

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

if.end.i:                                         ; preds = %if.end5.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %if.end.i.mc417_wait_ready.exit_crit_edge, label %if.end5.i

if.end.i.mc417_wait_ready.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mc417_wait_ready.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748) #11
  %27 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lmmio, align 4
  %add.ptr.i = getelementptr i32, ptr %28, i32 278536
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !375
  %30 = and i32 %29, 1048576
  %cmp.not.i = icmp eq i32 %30, 0
  br i1 %cmp.not.i, label %if.end5.i.if.end.i_crit_edge, label %if.end5.i.mc417_wait_ready.exit_crit_edge

if.end5.i.mc417_wait_ready.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %mc417_wait_ready.exit

if.end5.i.if.end.i_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

mc417_wait_ready.exit:                            ; preds = %if.end5.i.mc417_wait_ready.exit_crit_edge, %if.end.i.mc417_wait_ready.exit_crit_edge, %entry.mc417_wait_ready.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.mc417_wait_ready.exit_crit_edge ], [ 0, %if.end5.i.mc417_wait_ready.exit_crit_edge ], [ -1, %if.end.i.mc417_wait_ready.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !422
  tail call void @arm_heavy_mb() #11
  %31 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lmmio, align 4
  %add.ptr44 = getelementptr i32, ptr %32, i32 278537
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 -15728640) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !423
  tail call void @arm_heavy_mb() #11
  %33 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lmmio, align 4
  %add.ptr49 = getelementptr i32, ptr %34, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 5439488) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !424
  tail call void @arm_heavy_mb() #11
  %35 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio, align 4
  %add.ptr54 = getelementptr i32, ptr %36, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54, i32 9633792) #11, !srcloc !356
  %37 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lmmio, align 4
  %add.ptr56 = getelementptr i32, ptr %38, i32 278536
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #11, !srcloc !374
  %40 = and i32 %39, -16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !425
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !426
  tail call void @arm_heavy_mb() #11
  %41 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lmmio, align 4
  %add.ptr64 = getelementptr i32, ptr %42, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 15728640) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !427
  tail call void @arm_heavy_mb() #11
  %43 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lmmio, align 4
  %add.ptr69 = getelementptr i32, ptr %44, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 5373952) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !428
  tail call void @arm_heavy_mb() #11
  %45 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %lmmio, align 4
  %add.ptr74 = getelementptr i32, ptr %46, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr74, i32 9568256) #11, !srcloc !356
  %47 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lmmio, align 4
  %add.ptr78 = getelementptr i32, ptr %48, i32 278536
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr78) #11, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !429
  %50 = lshr i32 %49, 8
  %shl83 = and i32 %50, 16711680
  %or84 = or i32 %shl83, %40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !430
  tail call void @arm_heavy_mb() #11
  %51 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lmmio, align 4
  %add.ptr89 = getelementptr i32, ptr %52, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr89, i32 15728640) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !431
  tail call void @arm_heavy_mb() #11
  %53 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %lmmio, align 4
  %add.ptr94 = getelementptr i32, ptr %54, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 5308416) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !432
  tail call void @arm_heavy_mb() #11
  %55 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lmmio, align 4
  %add.ptr99 = getelementptr i32, ptr %56, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 9502720) #11, !srcloc !356
  %57 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %lmmio, align 4
  %add.ptr103 = getelementptr i32, ptr %58, i32 278536
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr103) #11, !srcloc !374
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !433
  %60 = lshr i32 %59, 16
  %shl108 = and i32 %60, 65280
  %or109 = or i32 %or84, %shl108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !434
  tail call void @arm_heavy_mb() #11
  %61 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lmmio, align 4
  %add.ptr114 = getelementptr i32, ptr %62, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr114, i32 15728640) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !435
  tail call void @arm_heavy_mb() #11
  %63 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %lmmio, align 4
  %add.ptr119 = getelementptr i32, ptr %64, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 5242880) #11, !srcloc !356
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !436
  tail call void @arm_heavy_mb() #11
  %65 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lmmio, align 4
  %add.ptr124 = getelementptr i32, ptr %66, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 9437184) #11, !srcloc !356
  %67 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %lmmio, align 4
  %add.ptr128 = getelementptr i32, ptr %68, i32 278536
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr128) #11, !srcloc !374
  %70 = lshr i32 %69, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !437
  %or133 = or i32 %or109, %70
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !438
  tail call void @arm_heavy_mb() #11
  %71 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %lmmio, align 4
  %add.ptr138 = getelementptr i32, ptr %72, i32 278536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr138, i32 15728640) #11, !srcloc !356
  %73 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %or133, ptr %value, align 4
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mc417_gpio_set(ptr noundef %dev, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !439
  %call = call i32 @mc417_register_read(ptr noundef %dev, i16 noundef zeroext -28660, ptr noundef nonnull %val)
  %and = and i32 %mask, 65535
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %or = or i32 %2, %and
  %call1 = tail call i32 @mc417_register_write(ptr noundef %dev, i16 noundef zeroext -28660, i32 noundef %or)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mc417_gpio_clear(ptr noundef %dev, i32 noundef %mask) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !439
  %call = call i32 @mc417_register_read(ptr noundef %dev, i16 noundef zeroext -28660, ptr noundef nonnull %val)
  %and = and i32 %mask, 65535
  %neg = xor i32 %and, -1
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %and1 = and i32 %2, %neg
  %call2 = tail call i32 @mc417_register_write(ptr noundef %dev, i16 noundef zeroext -28660, i32 noundef %and1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mc417_gpio_enable(ptr noundef %dev, i32 noundef %mask, i32 noundef %asoutput) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !439
  %call = call i32 @mc417_register_read(ptr noundef %dev, i16 noundef zeroext -28640, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asoutput)
  %tobool.not = icmp eq i32 %asoutput, 0
  %and1 = and i32 %mask, 65535
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %or = or i32 %2, %and1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %neg = xor i32 %and1, -1
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and2 = and i32 %4, %neg
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %and2, %if.else ], [ %or, %if.then ]
  %call3 = tail call i32 @mc417_register_write(ptr noundef %dev, i16 noundef zeroext -28640, i32 noundef %storemerge)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_417_check_encoder(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %status = alloca i32, align 4
  %seq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seq) #11
  %0 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %seq, align 4
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %status, align 4
  %call = call i32 (ptr, i32, i32, i32, ...) @cx23885_api_cmd(ptr noundef %dev, i32 noundef 198, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %status, ptr noundef nonnull %seq)
  %2 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  %5 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %seq, align 4
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, i32 noundef %4, i32 noundef %6) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23885_api_cmd(ptr noundef %dev, i32 noundef %command, i32 noundef %inputcnt, i32 noundef %outputcnt, ...) unnamed_addr #0 align 64 {
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
  store ptr inttoptr (i32 -1 to ptr), ptr %vargs, align 4, !annotation !439
  %2 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp ugt i32 %2, 2
  br i1 %cmp, label %do.end, label %entry.do.end3_crit_edge

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15, i32 noundef %command) #14
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
  %call5 = call fastcc i32 @cx23885_mbox_func(ptr noundef %dev, i32 noundef %command, i32 noundef %inputcnt, i32 noundef %outputcnt, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %outputcnt)
  %cmp725.not = icmp eq i32 %outputcnt, 0
  br i1 %cmp725.not, label %for.end.for.end14_crit_edge, label %for.end.for.body8_crit_edge

for.end.for.body8_crit_edge:                      ; preds = %for.end
  br label %for.body8

for.end.for.end14_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end14

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.end.for.body8_crit_edge
  %i.126 = phi i32 [ %inc13, %for.body8.for.body8_crit_edge ], [ 0, %for.end.for.body8_crit_edge ]
  %7 = ptrtoint ptr %vargs to i32
  call void @__asan_load4_noabort(i32 %7)
  %argp.cur9 = load ptr, ptr %vargs, align 4
  %argp.next10 = getelementptr inbounds i8, ptr %argp.cur9, i32 4
  store ptr %argp.next10, ptr %vargs, align 4
  %8 = ptrtoint ptr %argp.cur9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %argp.cur9, align 4
  %arrayidx11 = getelementptr [16 x i32], ptr %data, i32 0, i32 %i.126
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx11, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %9, align 4
  %inc13 = add nuw i32 %i.126, 1
  %exitcond27.not = icmp eq i32 %inc13, %outputcnt
  br i1 %exitcond27.not, label %for.body8.for.end14_crit_edge, label %for.body8.for.body8_crit_edge

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_417_unregister(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5) #14
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %v4l_device = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 56
  %1 = ptrtoint ptr %v4l_device to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %v4l_device, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %do.end2.if.end12_crit_edge, label %if.then3

do.end2.if.end12_crit_edge:                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then3:                                         ; preds = %do.end2
  %flags.i = getelementptr inbounds %struct.video_device, ptr %2, i32 0, i32 17
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool6.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @video_unregister_device(ptr noundef nonnull %2) #11
  br label %if.end10

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @video_device_release(ptr noundef nonnull %2) #11
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then7
  %hdl = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 55, i32 6
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #11
  %5 = ptrtoint ptr %v4l_device to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %v4l_device, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %do.end2.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_device_release(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_417_register(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ts1 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20
  %0 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.6) #14
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %1 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %board, align 4
  %portb = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %2, i32 2
  %3 = ptrtoint ptr %portb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %portb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp4.not = icmp eq i32 %4, 3
  br i1 %cmp4.not, label %if.end10, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %do.end3
  %encodernorm = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 58
  %5 = call ptr @memcpy(ptr %encodernorm, ptr @cx23885_tvnorms, i32 24)
  %6 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 480, ptr %6, align 4
  %width = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 7
  %8 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 720, ptr %width, align 4
  %cxhdl = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 55
  %port = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 55, i32 1
  %9 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %port, align 4
  %call12 = tail call i32 @cx2341x_handler_init(ptr noundef %cxhdl, i32 noundef 50) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %priv = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 55, i32 7
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %priv, align 4
  %func = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 55, i32 8
  %11 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cx23885_api_func, ptr %func, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 576, i32 %13)
  %cmp20 = icmp eq i32 %13, 576
  %conv = zext i1 %cmp20 to i32
  tail call void @cx2341x_handler_set_50hz(ptr noundef %cxhdl, i32 noundef %conv) #11
  %ctrl_handler = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 2
  %hdl = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 55, i32 6
  %call22 = tail call i32 @v4l2_ctrl_add_handler(ptr noundef %ctrl_handler, ptr noundef %hdl, ptr noundef null, i1 noundef zeroext false) #11
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 3
  %14 = ptrtoint ptr %ts1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ts1, align 4
  %16 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 0
  br i1 %cmp.not.i, label %if.end15.do.end4.i_crit_edge, label %do.end.i

if.end15.do.end4.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4.i

do.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.88) #14
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %if.end15.do.end4.i_crit_edge
  %call5.i = tail call ptr @video_device_alloc() #11
  %cmp6.i = icmp eq ptr %call5.i, null
  br i1 %cmp6.i, label %do.end4.i.cx23885_video_dev_alloc.exit_crit_edge, label %if.end8.i

do.end4.i.cx23885_video_dev_alloc.exit_crit_edge: ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx23885_video_dev_alloc.exit

if.end8.i:                                        ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = call ptr @memcpy(ptr %call5.i, ptr @cx23885_mpeg_template, i32 1352)
  %name.i = getelementptr inbounds %struct.video_device, ptr %call5.i, i32 0, i32 12
  %18 = ptrtoint ptr %ts1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ts1, align 4
  %board.i = getelementptr inbounds %struct.cx23885_dev, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %board.i, align 4
  %arrayidx.i = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %call11.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 32, ptr noundef nonnull @.str.89, ptr noundef %23, ptr noundef nonnull @.str.7) #11
  %v4l2_dev.i = getelementptr inbounds %struct.cx23885_dev, ptr %15, i32 0, i32 1
  %v4l2_dev12.i = getelementptr inbounds %struct.video_device, ptr %call5.i, i32 0, i32 7
  %24 = ptrtoint ptr %v4l2_dev12.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %v4l2_dev.i, ptr %v4l2_dev12.i, align 4
  %release.i = getelementptr inbounds %struct.video_device, ptr %call5.i, i32 0, i32 23
  %25 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @video_device_release, ptr %release.i, align 8
  br label %cx23885_video_dev_alloc.exit

cx23885_video_dev_alloc.exit:                     ; preds = %if.end8.i, %do.end4.i.cx23885_video_dev_alloc.exit_crit_edge
  %v4l_device = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 56
  %26 = ptrtoint ptr %v4l_device to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i, ptr %v4l_device, align 8
  %vb2_mpegq = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 57
  %27 = ptrtoint ptr %vb2_mpegq to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %vb2_mpegq, align 4
  %io_modes = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 57, i32 1
  %28 = ptrtoint ptr %io_modes to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 23, ptr %io_modes, align 4
  %gfp_flags = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 57, i32 14
  %29 = ptrtoint ptr %gfp_flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 4, ptr %gfp_flags, align 4
  %min_buffers_needed = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 57, i32 15
  %30 = ptrtoint ptr %min_buffers_needed to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %min_buffers_needed, align 4
  %drv_priv = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 57, i32 10
  %31 = ptrtoint ptr %drv_priv to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev, ptr %drv_priv, align 4
  %buf_struct_size = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 57, i32 12
  %32 = ptrtoint ptr %buf_struct_size to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 776, ptr %buf_struct_size, align 4
  %ops = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 57, i32 7
  %33 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @cx23885_qops, ptr %ops, align 4
  %mem_ops = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 57, i32 8
  %34 = ptrtoint ptr %mem_ops to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @vb2_dma_sg_memops, ptr %mem_ops, align 4
  %timestamp_flags = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 57, i32 13
  %35 = ptrtoint ptr %timestamp_flags to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8192, ptr %timestamp_flags, align 4
  %lock = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 16
  %lock24 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 57, i32 5
  %36 = ptrtoint ptr %lock24 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %lock, ptr %lock24, align 4
  %37 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci, align 4
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %dev27 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 57, i32 2
  %39 = ptrtoint ptr %dev27 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev26, ptr %dev27, align 4
  %call28 = tail call i32 @vb2_queue_init(ptr noundef %vb2_mpegq) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %cx23885_video_dev_alloc.exit.cleanup_crit_edge, label %if.end32

cx23885_video_dev_alloc.exit.cleanup_crit_edge:   ; preds = %cx23885_video_dev_alloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %cx23885_video_dev_alloc.exit
  %40 = ptrtoint ptr %v4l_device to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %v4l_device, align 8
  %driver_data.i.i = getelementptr inbounds %struct.video_device, ptr %41, i32 0, i32 5, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %dev, ptr %driver_data.i.i, align 4
  %43 = load ptr, ptr %v4l_device, align 8
  %lock36 = getelementptr inbounds %struct.video_device, ptr %43, i32 0, i32 26
  %44 = ptrtoint ptr %lock36 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %lock, ptr %lock36, align 8
  %45 = load ptr, ptr %v4l_device, align 8
  %queue = getelementptr inbounds %struct.video_device, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %vb2_mpegq, ptr %queue, align 8
  %47 = load ptr, ptr %v4l_device, align 8
  %device_caps = getelementptr inbounds %struct.video_device, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %device_caps to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 83886081, ptr %device_caps, align 8
  %tuner_type = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 28
  %49 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %cmp39.not = icmp eq i32 %50, 4
  br i1 %cmp39.not, label %if.end32.if.end44_crit_edge, label %if.then41

if.end32.if.end44_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then41:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %v4l_device to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %v4l_device, align 8
  %device_caps43 = getelementptr inbounds %struct.video_device, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %device_caps43 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %device_caps43, align 8
  %or = or i32 %54, 65536
  store i32 %or, ptr %device_caps43, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end32.if.end44_crit_edge
  %55 = ptrtoint ptr %v4l_device to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %v4l_device, align 8
  %fops.i = getelementptr inbounds %struct.video_device, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %fops.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %fops.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %call.i120 = tail call i32 @__video_register_device(ptr noundef %56, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef %60) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %cmp47 = icmp slt i32 %call.i120, 0
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 19
  br i1 %cmp47, label %do.end52, label %do.end58

do.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name) #14
  br label %cleanup

do.end58:                                         ; preds = %if.end44
  %61 = ptrtoint ptr %v4l_device to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %v4l_device, align 8
  %init_name.i.i = getelementptr inbounds %struct.video_device, ptr %62, i32 0, i32 5, i32 3
  %63 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end58.video_device_node_name.exit_crit_edge

do.end58.video_device_node_name.exit_crit_edge:   ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.video_device, ptr %62, i32 0, i32 5
  %65 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end58.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %66, %if.end.i.i ], [ %64, %do.end58.video_device_node_name.exit_crit_edge ]
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name, ptr noundef %retval.0.i.i) #14
  %call65 = tail call fastcc i32 @cx23885_initialize_codec(ptr noundef %dev, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %video_device_node_name.exit, %do.end52, %cx23885_video_dev_alloc.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i120, %do.end52 ], [ 0, %video_device_node_name.exit ], [ -19, %do.end3.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ %call28, %cx23885_video_dev_alloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx2341x_handler_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23885_api_func(ptr noundef %priv, i32 noundef %cmd, i32 noundef %in, i32 noundef %out, ptr nocapture noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @cx23885_mbox_func(ptr noundef %priv, i32 noundef %cmd, i32 noundef %in, i32 noundef %out, ptr noundef %data)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx2341x_handler_set_50hz(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_add_handler(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_queue_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx23885_initialize_codec(ptr noundef %dev, i32 noundef %startencoder) unnamed_addr #0 align 64 {
entry:
  %value.i124 = alloca i32, align 4
  %firmware.i = alloca ptr, align 4
  %value.i = alloca i32, align 4
  %gpio_output.i = alloca i32, align 4
  %gpio_value.i = alloca i32, align 4
  %version = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version) #11
  %0 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %version, align 4, !annotation !439
  %1 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.102) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call i32 (ptr, i32, i32, i32, ...) @cx23885_api_cmd(ptr noundef %dev, i32 noundef 128, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.body8, label %do.end4.if.end66_crit_edge

do.end4.if.end66_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

do.body8:                                         ; preds = %do.end4
  %2 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp9 = icmp ugt i32 %2, 1
  br i1 %cmp9, label %do.end13, label %do.body8.do.end18_crit_edge

do.body8.do.end18_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end18

do.end13:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.102) #14
  br label %do.end18

do.end18:                                         ; preds = %do.end13, %do.body8.do.end18_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware.i) #11
  %3 = ptrtoint ptr %firmware.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %firmware.i, align 4, !annotation !439
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #11
  %4 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_output.i) #11
  %5 = ptrtoint ptr %gpio_output.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %gpio_output.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_value.i) #11
  %6 = ptrtoint ptr %gpio_value.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %gpio_value.i, align 4, !annotation !439
  %7 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.i = icmp ugt i32 %7, 1
  br i1 %cmp.i, label %do.end.i, label %do.end18.do.end4.i_crit_edge

do.end18.do.end4.i_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4.i

do.end.i:                                         ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.121) #14
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i, %do.end18.do.end4.i_crit_edge
  %call5.i = call i32 @mc417_memory_read(ptr noundef %dev, i32 noundef 36896, ptr noundef nonnull %gpio_output.i) #11
  %call6.i = call i32 @mc417_memory_read(ptr noundef %dev, i32 noundef 36876, ptr noundef nonnull %gpio_value.i) #11
  %call8.i = tail call i32 @mc417_register_write(ptr noundef %dev, i16 noundef zeroext -28584, i32 noundef -19) #11
  %call9.i = tail call i32 @mc417_register_write(ptr noundef %dev, i16 noundef zeroext -28588, i32 noundef -1) #11
  %or10.i = or i32 %call9.i, %call8.i
  %call11.i = tail call i32 @mc417_register_write(ptr noundef %dev, i16 noundef zeroext 2040, i32 noundef -2147481600) #11
  %or12.i = or i32 %or10.i, %call11.i
  %call13.i = tail call i32 @mc417_register_write(ptr noundef %dev, i16 noundef zeroext 2044, i32 noundef 26) #11
  %or14.i = or i32 %or12.i, %call13.i
  %call15.i = tail call i32 @mc417_register_write(ptr noundef %dev, i16 noundef zeroext -24476, i32 noundef 0) #11
  %or16.i = or i32 %or14.i, %call15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or16.i)
  %cmp17.not.i = icmp eq i32 %or16.i, 0
  br i1 %cmp17.not.i, label %if.end24.i, label %do.end21.i

do.end21.i:                                       ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.121) #14
  br label %do.end24

if.end24.i:                                       ; preds = %do.end4.i
  %pci.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 3
  %8 = ptrtoint ptr %pci.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci.i, align 4
  %dev25.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %call26.i = call i32 @request_firmware(ptr noundef nonnull %firmware.i, ptr noundef nonnull @.str.125, ptr noundef %dev25.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.not.i = icmp eq i32 %call26.i, 0
  br i1 %cmp27.not.i, label %if.end39.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.125) #14
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130) #14
  br label %do.end24

if.end39.i:                                       ; preds = %if.end24.i
  %10 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %firmware.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 376836, i32 %13)
  %cmp40.not.i = icmp eq i32 %13, 376836
  br i1 %cmp40.not.i, label %if.end48.i, label %do.end44.i

do.end44.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #13
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, i32 noundef %13, i32 noundef 376836) #14
  %14 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %firmware.i, align 4
  call void @release_firmware(ptr noundef %15) #11
  br label %do.end24

if.end48.i:                                       ; preds = %if.end39.i
  %data.i = getelementptr inbounds %struct.firmware, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(8) %17, ptr noundef nonnull dereferenceable(8) @cx23885_load_firmware.magic, i32 8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp50.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp50.not.i, label %do.body58.i, label %do.end54.i

do.end54.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #13
  %call56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #14
  %18 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %firmware.i, align 4
  call void @release_firmware(ptr noundef %19) #11
  br label %do.end24

do.body58.i:                                      ; preds = %if.end48.i
  %20 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp59.i = icmp ugt i32 %20, 1
  br i1 %cmp59.i, label %do.end63.i, label %do.body58.i.do.end68.i_crit_edge

do.body58.i.do.end68.i_crit_edge:                 ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68.i

do.end63.i:                                       ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #13
  %call65.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull @.str.121) #14
  br label %do.end68.i

do.end68.i:                                       ; preds = %do.end63.i, %do.body58.i.do.end68.i_crit_edge
  %21 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %firmware.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp71204.not.i = icmp ult i32 %24, 4
  br i1 %cmp71204.not.i, label %do.end68.i.do.body81.i_crit_edge, label %for.body.preheader.i

do.end68.i.do.body81.i_crit_edge:                 ; preds = %do.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body81.i

for.body.preheader.i:                             ; preds = %do.end68.i
  %data69.i = getelementptr inbounds %struct.firmware, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %data69.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data69.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end80.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0207.i = phi i32 [ %inc.i, %if.end80.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %checksum.0206.i = phi i32 [ %add.i, %if.end80.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %dataptr.0205.i = phi ptr [ %incdec.ptr.i, %if.end80.i.for.body.i_crit_edge ], [ %26, %for.body.preheader.i ]
  %27 = ptrtoint ptr %dataptr.0205.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dataptr.0205.i, align 4
  %call72.i = call i32 @mc417_memory_write(ptr noundef %dev, i32 noundef %i.0207.i, i32 noundef %28) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %cmp73.not.i = icmp eq i32 %call72.i, 0
  br i1 %cmp73.not.i, label %if.end80.i, label %do.end77.i

do.end77.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %call79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142) #14
  %29 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %firmware.i, align 4
  call void @release_firmware(ptr noundef %30) #11
  br label %do.end24

if.end80.i:                                       ; preds = %for.body.i
  %neg.i = xor i32 %28, -1
  %add.i = add i32 %checksum.0206.i, %neg.i
  %incdec.ptr.i = getelementptr i32, ptr %dataptr.0205.i, i32 1
  %inc.i = add nuw nsw i32 %i.0207.i, 1
  %31 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %firmware.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %shr.i = lshr i32 %34, 2
  %cmp71.i = icmp ult i32 %inc.i, %shr.i
  br i1 %cmp71.i, label %if.end80.i.for.body.i_crit_edge, label %if.end80.i.do.body81.i_crit_edge

if.end80.i.do.body81.i_crit_edge:                 ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body81.i

if.end80.i.for.body.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

do.body81.i:                                      ; preds = %if.end80.i.do.body81.i_crit_edge, %do.end68.i.do.body81.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %do.end68.i.do.body81.i_crit_edge ], [ %28, %if.end80.i.do.body81.i_crit_edge ]
  %checksum.0.lcssa.i = phi i32 [ 0, %do.end68.i.do.body81.i_crit_edge ], [ %add.i, %if.end80.i.do.body81.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ -1, %do.end68.i.do.body81.i_crit_edge ], [ %i.0207.i, %if.end80.i.do.body81.i_crit_edge ]
  %35 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.lcssa.i, ptr %value.i, align 4
  %36 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp82.not.i = icmp eq i32 %36, 0
  br i1 %cmp82.not.i, label %do.body81.i.do.end91.i_crit_edge, label %do.end86.i

do.body81.i.do.end91.i_crit_edge:                 ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end91.i

do.end86.i:                                       ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #13
  %call88.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.121) #14
  br label %do.end91.i

do.end91.i:                                       ; preds = %do.end86.i, %do.body81.i.do.end91.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.lcssa.i)
  %cmp93211.i = icmp sgt i32 %i.0.lcssa.i, -1
  br i1 %cmp93211.i, label %do.end91.i.for.body94.i_crit_edge, label %do.end91.i.for.end107.i_crit_edge

do.end91.i.for.end107.i_crit_edge:                ; preds = %do.end91.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end107.i

do.end91.i.for.body94.i_crit_edge:                ; preds = %do.end91.i
  br label %for.body94.i

for.body94.i:                                     ; preds = %if.end103.i.for.body94.i_crit_edge, %do.end91.i.for.body94.i_crit_edge
  %i.1213.i = phi i32 [ %i.1.i, %if.end103.i.for.body94.i_crit_edge ], [ %i.0.lcssa.i, %do.end91.i.for.body94.i_crit_edge ]
  %checksum.1212.i = phi i32 [ %sub.i, %if.end103.i.for.body94.i_crit_edge ], [ %checksum.0.lcssa.i, %do.end91.i.for.body94.i_crit_edge ]
  %call95.i = call i32 @mc417_memory_read(ptr noundef %dev, i32 noundef %i.1213.i, ptr noundef nonnull %value.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %cmp96.not.i = icmp eq i32 %call95.i, 0
  br i1 %cmp96.not.i, label %if.end103.i, label %do.end100.i

do.end100.i:                                      ; preds = %for.body94.i
  call void @__sanitizer_cov_trace_pc() #13
  %call102.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148) #14
  %37 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %firmware.i, align 4
  call void @release_firmware(ptr noundef %38) #11
  br label %do.end24

if.end103.i:                                      ; preds = %for.body94.i
  %39 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %value.i, align 4
  %neg104.neg.i = add i32 %checksum.1212.i, 1
  %sub.i = add i32 %neg104.neg.i, %40
  %i.1.i = add nsw i32 %i.1213.i, -1
  %cmp93.i = icmp sgt i32 %i.1213.i, 0
  br i1 %cmp93.i, label %if.end103.i.for.body94.i_crit_edge, label %if.end103.i.for.end107.i_crit_edge

if.end103.i.for.end107.i_crit_edge:               ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end107.i

if.end103.i.for.body94.i_crit_edge:               ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body94.i

for.end107.i:                                     ; preds = %if.end103.i.for.end107.i_crit_edge, %do.end91.i.for.end107.i_crit_edge
  %checksum.1.lcssa.i = phi i32 [ %checksum.0.lcssa.i, %do.end91.i.for.end107.i_crit_edge ], [ %sub.i, %if.end103.i.for.end107.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %checksum.1.lcssa.i)
  %tobool.not.i = icmp eq i32 %checksum.1.lcssa.i, 0
  br i1 %tobool.not.i, label %if.end114.i, label %do.end111.i

do.end111.i:                                      ; preds = %for.end107.i
  call void @__sanitizer_cov_trace_pc() #13
  %call113.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151) #14
  %41 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %firmware.i, align 4
  call void @release_firmware(ptr noundef %42) #11
  br label %do.end24

if.end114.i:                                      ; preds = %for.end107.i
  %43 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %firmware.i, align 4
  call void @release_firmware(ptr noundef %44) #11
  %45 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp116.not.i = icmp eq i32 %45, 0
  br i1 %cmp116.not.i, label %if.end114.i.do.end125.i_crit_edge, label %do.end120.i

if.end114.i.do.end125.i_crit_edge:                ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end125.i

do.end120.i:                                      ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #13
  %call122.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154, ptr noundef nonnull @.str.121) #14
  br label %do.end125.i

do.end125.i:                                      ; preds = %do.end120.i, %if.end114.i.do.end125.i_crit_edge
  %call126.i = call i32 @mc417_register_write(ptr noundef %dev, i16 noundef zeroext -28588, i32 noundef -1) #11
  %46 = ptrtoint ptr %gpio_output.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %gpio_output.i, align 4
  %call128.i = call i32 @mc417_register_write(ptr noundef %dev, i16 noundef zeroext -28640, i32 noundef %47) #11
  %or129.i = or i32 %call128.i, %call126.i
  %48 = ptrtoint ptr %gpio_value.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %gpio_value.i, align 4
  %call130.i = call i32 @mc417_register_write(ptr noundef %dev, i16 noundef zeroext -28660, i32 noundef %49) #11
  %or131.i = or i32 %or129.i, %call130.i
  %call132.i = call i32 @mc417_register_read(ptr noundef %dev, i16 noundef zeroext -28584, ptr noundef nonnull %value.i) #11
  %or133.i = or i32 %or131.i, %call132.i
  %50 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %value.i, align 4
  %and.i = and i32 %51, -24
  %call134.i = call i32 @mc417_register_write(ptr noundef %dev, i16 noundef zeroext -28584, i32 noundef %and.i) #11
  %or135.i = or i32 %or133.i, %call134.i
  %call136.i = call i32 @mc417_register_write(ptr noundef %dev, i16 noundef zeroext -28640, i32 noundef 16384) #11
  %or137.i = or i32 %or135.i, %call136.i
  %call138.i = call i32 @mc417_register_write(ptr noundef %dev, i16 noundef zeroext -28660, i32 noundef 16384) #11
  %or139.i = or i32 %or137.i, %call138.i
  %call140.i = call i32 @mc417_register_read(ptr noundef %dev, i16 noundef zeroext -28640, ptr noundef nonnull %gpio_output.i) #11
  %call141.i = call i32 @mc417_register_read(ptr noundef %dev, i16 noundef zeroext -28660, ptr noundef nonnull %gpio_value.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or139.i)
  %cmp142.i = icmp slt i32 %or139.i, 0
  br i1 %cmp142.i, label %do.end146.i, label %do.end125.i.if.end27_crit_edge

do.end125.i.if.end27_crit_edge:                   ; preds = %do.end125.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

do.end146.i:                                      ; preds = %do.end125.i
  call void @__sanitizer_cov_trace_pc() #13
  %call148.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.121) #14
  br label %if.end27

do.end24:                                         ; preds = %do.end111.i, %do.end100.i, %do.end77.i, %do.end54.i, %do.end44.i, %do.end31.i, %do.end21.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_value.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_output.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i) #11
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.102) #14
  br label %cleanup

if.end27:                                         ; preds = %do.end146.i, %do.end125.i.if.end27_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_value.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_output.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i124) #11
  %52 = ptrtoint ptr %value.i124 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %value.i124, align 4, !annotation !439
  %53 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i125 = icmp ugt i32 %53, 1
  br i1 %cmp.i125, label %do.end.i127, label %if.end27.for.body.i130.preheader_crit_edge

if.end27.for.body.i130.preheader_crit_edge:       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i130.preheader

do.end.i127:                                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %call.i126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.158) #14
  br label %for.body.i130.preheader

for.body.i130.preheader:                          ; preds = %do.end.i127, %if.end27.for.body.i130.preheader_crit_edge
  br label %for.body.i130

for.body.i130:                                    ; preds = %for.inc.i.for.body.i130_crit_edge, %for.body.i130.preheader
  %signaturecnt.042.i = phi i32 [ %signaturecnt.1.i, %for.inc.i.for.body.i130_crit_edge ], [ 0, %for.body.i130.preheader ]
  %i.041.i = phi i32 [ %inc24.i, %for.inc.i.for.body.i130_crit_edge ], [ 0, %for.body.i130.preheader ]
  %call5.i128 = call i32 @mc417_memory_read(ptr noundef %dev, i32 noundef %i.041.i, ptr noundef nonnull %value.i124) #11
  %54 = ptrtoint ptr %value.i124 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %value.i124, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__const.cx23885_find_mailbox.signature, i32 0, i32 %signaturecnt.042.i
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp6.i = icmp eq i32 %55, %57
  %inc.i129 = add i32 %signaturecnt.042.i, 1
  %signaturecnt.1.i = select i1 %cmp6.i, i32 %inc.i129, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %signaturecnt.1.i)
  %cmp9.i = icmp eq i32 %signaturecnt.1.i, 4
  br i1 %cmp9.i, label %do.body11.i, label %for.inc.i

do.body11.i:                                      ; preds = %for.body.i130
  %58 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp12.not.i = icmp eq i32 %58, 0
  %.pre.i = add nuw nsw i32 %i.041.i, 1
  br i1 %cmp12.not.i, label %do.body11.i.if.end36_crit_edge, label %do.end16.i

do.body11.i.if.end36_crit_edge:                   ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

do.end16.i:                                       ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #13
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, ptr noundef nonnull @.str.158, i32 noundef %.pre.i) #14
  br label %if.end36

for.inc.i:                                        ; preds = %for.body.i130
  %inc24.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc24.i, 376836
  br i1 %exitcond.not.i, label %do.end33, label %for.inc.i.for.body.i130_crit_edge

for.inc.i.for.body.i130_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i130

do.end33:                                         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i124) #11
  %call35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.102) #14
  br label %cleanup

if.end36:                                         ; preds = %do.end16.i, %do.body11.i.if.end36_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i124) #11
  %cx23417_mailbox = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 54
  %59 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.pre.i, ptr %cx23417_mailbox, align 8
  %call37 = call i32 (ptr, i32, i32, i32, ...) @cx23885_api_cmd(ptr noundef %dev, i32 noundef 128, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %do.end42, label %if.end45

do.end42:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113) #14
  br label %cleanup

if.end45:                                         ; preds = %if.end36
  %call46 = call i32 (ptr, i32, i32, i32, ...) @cx23885_api_cmd(ptr noundef %dev, i32 noundef 196, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %version)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %do.end51, label %do.body55

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #14
  br label %cleanup

do.body55:                                        ; preds = %if.end45
  %60 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp56.not = icmp eq i32 %60, 0
  br i1 %cmp56.not, label %do.body55.do.end65_crit_edge, label %do.end60

do.body55.do.end65_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end65

do.end60:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %version, align 4
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.102, i32 noundef %62) #14
  br label %do.end65

do.end65:                                         ; preds = %do.end60, %do.body55.do.end65_crit_edge
  call void @msleep(i32 noundef 200) #11
  br label %if.end66

if.end66:                                         ; preds = %do.end65, %do.end4.if.end66_crit_edge
  %63 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp.not.i = icmp eq i32 %63, 0
  br i1 %cmp.not.i, label %if.end66.cx23885_codec_settings.exit_crit_edge, label %do.end.i133

if.end66.cx23885_codec_settings.exit_crit_edge:   ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx23885_codec_settings.exit

do.end.i133:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %call.i132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.165) #14
  br label %cx23885_codec_settings.exit

cx23885_codec_settings.exit:                      ; preds = %do.end.i133, %if.end66.cx23885_codec_settings.exit_crit_edge
  %id.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 58, i32 1
  %64 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %id.i, align 8
  %and.i134 = and i64 %65, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i134)
  %tobool.not.i135 = icmp eq i64 %and.i134, 0
  %spec.select.i = select i1 %tobool.not.i135, i32 576, i32 480
  %66 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %spec.select.i, ptr %66, align 8
  %width.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 20, i32 7
  %68 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %width.i, align 4
  %call10.i = call i32 (ptr, i32, i32, i32, ...) @cx23885_api_cmd(ptr noundef %dev, i32 noundef 145, i32 noundef 2, i32 noundef 0, i32 noundef %spec.select.i, i32 noundef %69) #11
  %70 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %width.i, align 4
  %conv.i = trunc i32 %71 to i16
  %cxhdl.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 55
  %width13.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 55, i32 2
  %72 = ptrtoint ptr %width13.i to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv.i, ptr %width13.i, align 4
  %73 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %66, align 8
  %conv16.i = trunc i32 %74 to i16
  %height18.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 55, i32 3
  %75 = ptrtoint ptr %height18.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %conv16.i, ptr %height18.i, align 2
  %76 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %id.i, align 8
  %and21.i = and i64 %77, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and21.i)
  %cmp22.i = icmp ne i64 %and21.i, 0
  %conv24.i = zext i1 %cmp22.i to i16
  %is_50hz.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 55, i32 4
  %78 = ptrtoint ptr %is_50hz.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %conv24.i, ptr %is_50hz.i, align 4
  %call27.i = call i32 @cx2341x_handler_setup(ptr noundef %cxhdl.i) #11
  %call28.i = call i32 (ptr, i32, i32, i32, ...) @cx23885_api_cmd(ptr noundef %dev, i32 noundef 220, i32 noundef 2, i32 noundef 0, i32 noundef 3, i32 noundef 1) #11
  %call29.i136 = call i32 (ptr, i32, i32, i32, ...) @cx23885_api_cmd(ptr noundef %dev, i32 noundef 220, i32 noundef 2, i32 noundef 0, i32 noundef 4, i32 noundef 1) #11
  call void @msleep(i32 noundef 60) #11
  %call67 = call i32 (ptr, i32, i32, i32, ...) @cx23885_api_cmd(ptr noundef %dev, i32 noundef 214, i32 noundef 2, i32 noundef 0, i32 noundef 240, i32 noundef 240)
  %call68 = call i32 (ptr, i32, i32, i32, ...) @cx23885_api_cmd(ptr noundef %dev, i32 noundef 215, i32 noundef 12, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %call82 = call i32 (ptr, i32, i32, i32, ...) @cx23885_api_cmd(ptr noundef %dev, i32 noundef 200, i32 noundef 7, i32 noundef 0, i32 noundef 113920, i32 noundef 1, i32 noundef 4, i32 noundef -1856663211, i32 noundef 543195328, i32 noundef 6, i32 noundef 64)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %cx23885_codec_settings.exit
  %i.0146 = phi i32 [ 2, %cx23885_codec_settings.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %79 = add nsw i32 %i.0146, -19
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %79)
  %80 = icmp ult i32 %79, 3
  %land.ext = zext i1 %80 to i32
  %call86 = call i32 (ptr, i32, i32, i32, ...) @cx23885_api_cmd(ptr noundef %dev, i32 noundef 183, i32 noundef 5, i32 noundef 0, i32 noundef %i.0146, i32 noundef %land.ext, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %or = or i32 %i.0146, -2147483648
  %call87 = call i32 (ptr, i32, i32, i32, ...) @cx23885_api_cmd(ptr noundef %dev, i32 noundef 183, i32 noundef 5, i32 noundef 0, i32 noundef %or, i32 noundef %land.ext, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  %inc = add nuw nsw i32 %i.0146, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  %call88 = call i32 (ptr, i32, i32, i32, ...) @cx23885_api_cmd(ptr noundef %dev, i32 noundef 218, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  call void @msleep(i32 noundef 60) #11
  %call89 = call i32 (ptr, i32, i32, i32, ...) @cx23885_api_cmd(ptr noundef %dev, i32 noundef 205, i32 noundef 0, i32 noundef 0)
  call void @msleep(i32 noundef 60) #11
  %call90 = call i32 @mc417_memory_write(ptr noundef %dev, i32 noundef 2120, i32 noundef 128)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %startencoder)
  %tobool.not = icmp eq i32 %startencoder, 0
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.then91

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then91:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %call92 = call i32 (ptr, i32, i32, i32, ...) @cx23885_api_cmd(ptr noundef %dev, i32 noundef 129, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  call void @msleep(i32 noundef 10) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then91, %for.end.cleanup_crit_edge, %do.end51, %do.end42, %do.end33, %do.end24
  %retval.0 = phi i32 [ -1, %do.end24 ], [ -1, %do.end33 ], [ -1, %do.end42 ], [ -1, %do.end51 ], [ 0, %if.then91 ], [ 0, %for.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version) #11
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx23885_mbox_func(ptr noundef %priv, i32 noundef %command, i32 noundef %in, i32 noundef %out, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  %flag = alloca i32, align 4
  %retval1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #11
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !439
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flag) #11
  %1 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %flag, align 4, !annotation !439
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
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.17, i32 noundef %command, ptr noundef nonnull %call) #14
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %cx23417_mailbox = getelementptr inbounds %struct.cx23885_dev, ptr %priv, i32 0, i32 54
  %4 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cx23417_mailbox, align 8
  %sub = add i32 %5, -4
  %call6 = call i32 @mc417_memory_read(ptr noundef %priv, i32 noundef %sub, ptr noundef nonnull %value)
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 305419896, i32 %7)
  %cmp7.not = icmp eq i32 %7, 305419896
  br i1 %cmp7.not, label %if.end15, label %do.end11

do.end11:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call fastcc ptr @cmd_to_str(i32 noundef %command)
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %7, ptr noundef nonnull %call13) #14
  br label %cleanup

if.end15:                                         ; preds = %do.end5
  %8 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cx23417_mailbox, align 8
  %call17 = call i32 @mc417_memory_read(ptr noundef %priv, i32 noundef %9, ptr noundef nonnull %flag)
  %10 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end25, label %do.end21

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %call23 = tail call fastcc ptr @cmd_to_str(i32 noundef %command)
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %11, ptr noundef nonnull %call23) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %12 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cx23417_mailbox, align 8
  %call27 = tail call i32 @mc417_memory_write(ptr noundef %priv, i32 noundef %13, i32 noundef 1)
  %14 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cx23417_mailbox, align 8
  %add = add i32 %15, 1
  %call29 = tail call i32 @mc417_memory_write(ptr noundef %priv, i32 noundef %add, i32 noundef %command)
  %16 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cx23417_mailbox, align 8
  %add31 = add i32 %17, 3
  %call32 = tail call i32 @mc417_memory_write(ptr noundef %priv, i32 noundef %add31, i32 noundef 500)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %in)
  %cmp33169 = icmp sgt i32 %in, 0
  br i1 %cmp33169, label %if.end25.for.body_crit_edge, label %if.end25.for.body52.preheader_crit_edge

if.end25.for.body52.preheader_crit_edge:          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body52.preheader

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

for.cond50.preheader:                             ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %in)
  %cmp51172 = icmp ult i32 %in, 16
  br i1 %cmp51172, label %for.cond50.preheader.for.body52.preheader_crit_edge, label %for.cond50.preheader.for.end59_crit_edge

for.cond50.preheader.for.end59_crit_edge:         ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end59

for.cond50.preheader.for.body52.preheader_crit_edge: ; preds = %for.cond50.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body52.preheader

for.body52.preheader:                             ; preds = %for.cond50.preheader.for.body52.preheader_crit_edge, %if.end25.for.body52.preheader_crit_edge
  %i.1173.ph = phi i32 [ 0, %if.end25.for.body52.preheader_crit_edge ], [ %in, %for.cond50.preheader.for.body52.preheader_crit_edge ]
  br label %for.body52

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end25.for.body_crit_edge
  %i.0170 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end25.for.body_crit_edge ]
  %18 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cx23417_mailbox, align 8
  %add35 = add nuw i32 %i.0170, 4
  %add36 = add i32 %add35, %19
  %arrayidx = getelementptr i32, ptr %data, i32 %i.0170
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %call37 = tail call i32 @mc417_memory_write(ptr noundef %priv, i32 noundef %add36, i32 noundef %21)
  %22 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp39 = icmp ugt i32 %22, 2
  br i1 %cmp39, label %do.end43, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end43:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.17, i32 noundef %i.0170, i32 noundef %24) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end43, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0170, 1
  %exitcond.not = icmp eq i32 %inc, %in
  br i1 %exitcond.not, label %for.cond50.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body52:                                       ; preds = %for.body52.for.body52_crit_edge, %for.body52.preheader
  %i.1173 = phi i32 [ %inc58, %for.body52.for.body52_crit_edge ], [ %i.1173.ph, %for.body52.preheader ]
  %25 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cx23417_mailbox, align 8
  %add54 = add nuw i32 %i.1173, 4
  %add55 = add i32 %add54, %26
  %call56 = tail call i32 @mc417_memory_write(ptr noundef %priv, i32 noundef %add55, i32 noundef 0)
  %inc58 = add nuw i32 %i.1173, 1
  %exitcond180.not = icmp eq i32 %inc58, 16
  br i1 %exitcond180.not, label %for.body52.for.end59_crit_edge, label %for.body52.for.body52_crit_edge

for.body52.for.body52_crit_edge:                  ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body52

for.body52.for.end59_crit_edge:                   ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end59

for.end59:                                        ; preds = %for.body52.for.end59_crit_edge, %for.cond50.preheader.for.end59_crit_edge
  %27 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %flag, align 4
  %28 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cx23417_mailbox, align 8
  %call62 = tail call i32 @mc417_memory_write(ptr noundef %priv, i32 noundef %29, i32 noundef 3)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add64 = add i32 %30, 1
  %31 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cx23417_mailbox, align 8
  %call67174 = call i32 @mc417_memory_read(ptr noundef %priv, i32 noundef %32, ptr noundef nonnull %flag)
  %33 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flag, align 4
  %and175 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175)
  %cmp68.not176 = icmp eq i32 %and175, 0
  br i1 %cmp68.not176, label %for.end59.if.end70_crit_edge, label %for.end59.for.cond81.preheader_crit_edge

for.end59.for.cond81.preheader_crit_edge:         ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond81.preheader

for.end59.if.end70_crit_edge:                     ; preds = %for.end59
  br label %if.end70

for.cond81.preheader:                             ; preds = %if.end79.for.cond81.preheader_crit_edge, %for.end59.for.cond81.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %out)
  %cmp82177 = icmp sgt i32 %out, 0
  br i1 %cmp82177, label %for.cond81.preheader.for.body83_crit_edge, label %for.cond81.preheader.for.end102_crit_edge

for.cond81.preheader.for.end102_crit_edge:        ; preds = %for.cond81.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end102

for.cond81.preheader.for.body83_crit_edge:        ; preds = %for.cond81.preheader
  br label %for.body83

if.end70:                                         ; preds = %if.end79.if.end70_crit_edge, %for.end59.if.end70_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %sub71 = sub i32 %add64, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub71)
  %cmp72 = icmp slt i32 %sub71, 0
  br i1 %cmp72, label %do.end76, label %if.end79

do.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #14
  br label %cleanup

if.end79:                                         ; preds = %if.end70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 2147480) #11
  %37 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cx23417_mailbox, align 8
  %call67 = call i32 @mc417_memory_read(ptr noundef %priv, i32 noundef %38, ptr noundef nonnull %flag)
  %39 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flag, align 4
  %and = and i32 %40, 4
  %cmp68.not = icmp eq i32 %and, 0
  br i1 %cmp68.not, label %if.end79.if.end70_crit_edge, label %if.end79.for.cond81.preheader_crit_edge

if.end79.for.cond81.preheader_crit_edge:          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond81.preheader

if.end79.if.end70_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

for.body83:                                       ; preds = %for.inc100.for.body83_crit_edge, %for.cond81.preheader.for.body83_crit_edge
  %i.2178 = phi i32 [ %inc101, %for.inc100.for.body83_crit_edge ], [ 0, %for.cond81.preheader.for.body83_crit_edge ]
  %41 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cx23417_mailbox, align 8
  %add85 = add nuw i32 %i.2178, 4
  %add86 = add i32 %add85, %42
  %add.ptr = getelementptr i32, ptr %data, i32 %i.2178
  %call87 = tail call i32 @mc417_memory_read(ptr noundef %priv, i32 noundef %add86, ptr noundef %add.ptr)
  %43 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp89 = icmp ugt i32 %43, 2
  br i1 %cmp89, label %do.end93, label %for.body83.for.inc100_crit_edge

for.body83.for.inc100_crit_edge:                  ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc100

do.end93:                                         ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #13
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr, align 4
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.17, i32 noundef %i.2178, i32 noundef %45) #14
  br label %for.inc100

for.inc100:                                       ; preds = %do.end93, %for.body83.for.inc100_crit_edge
  %inc101 = add nuw nsw i32 %i.2178, 1
  %exitcond181.not = icmp eq i32 %inc101, %out
  br i1 %exitcond181.not, label %for.inc100.for.end102_crit_edge, label %for.inc100.for.body83_crit_edge

for.inc100.for.body83_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body83

for.inc100.for.end102_crit_edge:                  ; preds = %for.inc100
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end102

for.end102:                                       ; preds = %for.inc100.for.end102_crit_edge, %for.cond81.preheader.for.end102_crit_edge
  %46 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cx23417_mailbox, align 8
  %add104 = add i32 %47, 2
  %call105 = call i32 @mc417_memory_read(ptr noundef %priv, i32 noundef %add104, ptr noundef nonnull %retval1)
  %48 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %48)
  %cmp107 = icmp ugt i32 %48, 2
  br i1 %cmp107, label %do.end111, label %for.end102.do.end116_crit_edge

for.end102.do.end116_crit_edge:                   ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end116

do.end111:                                        ; preds = %for.end102
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %retval1, align 4
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.17, i32 noundef %50) #14
  br label %do.end116

do.end116:                                        ; preds = %do.end111, %for.end102.do.end116_crit_edge
  %51 = ptrtoint ptr %cx23417_mailbox to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cx23417_mailbox, align 8
  %call118 = tail call i32 @mc417_memory_write(ptr noundef %priv, i32 noundef %52, i32 noundef 0)
  %53 = ptrtoint ptr %retval1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %retval1, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end116, %do.end76, %do.end21, %do.end11
  %retval.0 = phi i32 [ -1, %do.end11 ], [ -1, %do.end21 ], [ %54, %do.end116 ], [ -1, %do.end76 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %retval1) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flag) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #11
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @cmd_to_str(i32 noundef %cmd) unnamed_addr #6 align 64 {
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
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.76, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_device_alloc() local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_poll(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @video_ioctl2(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_mmap(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fh_open(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_fop_release(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_querycap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %cap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %ts1 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 20
  %name = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 19
  %call2 = tail call i32 @strscpy(ptr noundef %cap, ptr noundef %name, i32 noundef 16) #11
  %card = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 1
  %2 = ptrtoint ptr %ts1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ts1, align 4
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %board, align 4
  %arrayidx = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call6 = tail call i32 @strscpy(ptr noundef %card, ptr noundef %7, i32 noundef 32) #11
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pci, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.pci_name.exit_crit_edge

entry.pci_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %entry.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %entry.pci_name.exit_crit_edge ]
  %bus_info = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 2
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %bus_info, ptr noundef nonnull @.str.90, ptr noundef %retval.0.i.i)
  %capabilities = getelementptr inbounds %struct.v4l2_capability, ptr %cap, i32 0, i32 4
  %14 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -2063466479, ptr %capabilities, align 4
  %tuner_type = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 28
  %15 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp.not = icmp eq i32 %16, 4
  %spec.store.select = select i1 %cmp.not, i32 -2063466479, i32 -2063400943
  %17 = ptrtoint ptr %capabilities to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.store.select, ptr %capabilities, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vidioc_enum_fmt_vid_cap(ptr nocapture noundef readnone %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #8 align 64 {
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
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1195724877, ptr %pixelformat, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %3 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bytesperline, align 4
  %ts_packet_size = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 20, i32 5
  %4 = ptrtoint ptr %ts_packet_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ts_packet_size, align 4
  %ts_packet_count = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 20, i32 6
  %6 = ptrtoint ptr %ts_packet_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ts_packet_count, align 8
  %mul = mul i32 %7, %5
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %8 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %colorspace, align 4
  %width = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 20, i32 7
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %width, align 4
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 20, i32 8
  %13 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %height, align 8
  %height10 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %height10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %height10, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %16 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %field, align 4
  %17 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not = icmp eq i32 %17, 0
  br i1 %cmp.not, label %entry.do.end19_crit_edge, label %do.end

entry.do.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 4
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef %19, i32 noundef %21) #14
  br label %do.end19

do.end19:                                         ; preds = %do.end, %entry.do.end19_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_fmt_vid_cap(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1195724877, ptr %pixelformat, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %3 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bytesperline, align 4
  %ts_packet_size = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 20, i32 5
  %4 = ptrtoint ptr %ts_packet_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ts_packet_size, align 4
  %ts_packet_count = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 20, i32 6
  %6 = ptrtoint ptr %ts_packet_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ts_packet_count, align 8
  %mul = mul i32 %7, %5
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %8 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %field, align 4
  %11 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %entry.do.end13_crit_edge, label %do.end

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %12 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fmt, align 4
  %height = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.94, i32 noundef %13, i32 noundef %15, i32 noundef 4) #14
  br label %do.end13

do.end13:                                         ; preds = %do.end, %entry.do.end13_crit_edge
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
  %pixelformat = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %pixelformat to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1195724877, ptr %pixelformat, align 4
  %bytesperline = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %3 = ptrtoint ptr %bytesperline to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bytesperline, align 4
  %ts_packet_size = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 20, i32 5
  %4 = ptrtoint ptr %ts_packet_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ts_packet_size, align 4
  %ts_packet_count = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 20, i32 6
  %6 = ptrtoint ptr %ts_packet_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ts_packet_count, align 8
  %mul = mul i32 %7, %5
  %sizeimage = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %8 = ptrtoint ptr %sizeimage to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul, ptr %sizeimage, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %9 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %colorspace, align 4
  %field = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %field, align 4
  %11 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %entry.do.end11_crit_edge, label %do.end

entry.do.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %width = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 20, i32 7
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %width, align 4
  %height = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 20, i32 8
  %14 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %height, align 8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i32 noundef %13, i32 noundef %15) #14
  br label %do.end11

do.end11:                                         ; preds = %do.end, %entry.do.end11_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_reqbufs(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_querybuf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_qbuf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_dqbuf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_prepare_buf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamon(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_ioctl_streamoff(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_std(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tvnorm = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tvnorm, align 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %id, align 8
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
  %i.022.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 1, %for.inc.if.end4_crit_edge ], [ 2, %for.inc.1.if.end4_crit_edge ], [ 3, %for.inc.2.if.end4_crit_edge ], [ 4, %for.inc.3.if.end4_crit_edge ], [ 5, %for.inc.4.if.end4_crit_edge ], [ 6, %for.inc.5.if.end4_crit_edge ], [ 7, %for.inc.6.if.end4_crit_edge ], [ 8, %for.inc.7.if.end4_crit_edge ], [ 9, %for.inc.8.if.end4_crit_edge ], [ 10, %for.inc.9.if.end4_crit_edge ]
  %call5 = tail call i32 @cx23885_set_tvnorm(ptr noundef %1, i64 noundef %id) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %encodernorm = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 58
  %arrayidx8 = getelementptr [11 x %struct.cx23885_tvnorm], ptr @cx23885_tvnorms, i32 0, i32 %i.022.lcssa
  %2 = call ptr @memcpy(ptr %encodernorm, ptr %arrayidx8, i32 24)
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end4.cleanup_crit_edge, %for.inc.9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then7 ], [ %call5, %if.end4.cleanup_crit_edge ], [ -22, %for.inc.9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_enum_input(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %2 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.97) #14
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call i32 @cx23885_enum_input(ptr noundef %1, ptr noundef %i) #11
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_input(ptr noundef %file, ptr noundef %priv, ptr noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cx23885_get_input(ptr noundef %file, ptr noundef %priv, ptr noundef %i) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_input(ptr noundef %file, ptr noundef %priv, i32 noundef %i) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cx23885_set_input(ptr noundef %file, ptr noundef %priv, i32 noundef %i) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tuner_type = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1.not = icmp eq i32 %5, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 1
  %call4 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.98, i32 noundef 32) #11
  %subdevs = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn47 = load ptr, ptr %subdevs, align 4
  %cmp8.not49 = icmp eq ptr %.pn47, %subdevs
  br i1 %cmp8.not49, label %if.end3.do.end_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.do.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3.for.body_crit_edge
  %.pn50 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn47, %if.end3.for.body_crit_edge ]
  %__sd.051 = getelementptr i8, ptr %.pn50, i32 -80
  %ops = getelementptr i8, ptr %.pn50, i32 24
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %g_tuner to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %g_tuner, align 4
  %tobool11.not = icmp eq ptr %12, null
  br i1 %tobool11.not, label %land.lhs.true.for.inc_crit_edge, label %if.then12

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call16 = tail call i32 %12(ptr noundef %__sd.051, ptr noundef %t) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then12, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn50, align 4
  %cmp8.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp8.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %if.end3.do.end_crit_edge
  %14 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp26.not = icmp eq i32 %14, 0
  br i1 %cmp26.not, label %do.end.cleanup_crit_edge, label %do.end30

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end30:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %t, i32 0, i32 2
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.100, i32 noundef %16) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %do.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end30 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_tuner(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tuner_type = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  %subdevs = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn29 = load ptr, ptr %subdevs, align 4
  %cmp4.not31 = icmp eq ptr %.pn29, %subdevs
  br i1 %cmp4.not31, label %do.body.cleanup_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn32 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn29, %do.body.for.body_crit_edge ]
  %__sd.033 = getelementptr i8, ptr %.pn32, i32 -80
  %ops = getelementptr i8, ptr %.pn32, i32 24
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %s_tuner = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %s_tuner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %s_tuner, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %land.lhs.true.for.inc_crit_edge, label %if.then8

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 %10(ptr noundef %__sd.033, ptr noundef %t) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn32 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn32, align 4
  %cmp4.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp4.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_g_frequency(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %tuner_type = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp = icmp eq i32 %3, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %type, align 4
  %freq = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 42
  %5 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %freq, align 8
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %7 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %frequency, align 4
  %subdevs = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn32 = load ptr, ptr %subdevs, align 4
  %cmp4.not34 = icmp eq ptr %.pn32, %subdevs
  br i1 %cmp4.not34, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn35 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn32, %if.end.for.body_crit_edge ]
  %__sd.036 = getelementptr i8, ptr %.pn35, i32 -80
  %ops = getelementptr i8, ptr %.pn35, i32 24
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tuner, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %g_frequency = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %g_frequency to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %g_frequency, align 4
  %tobool7.not = icmp eq ptr %14, null
  br i1 %tobool7.not, label %land.lhs.true.for.inc_crit_edge, label %if.then8

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call12 = tail call i32 %14(ptr noundef %__sd.036, ptr noundef %f) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn35 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn35, align 4
  %cmp4.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp4.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_s_frequency(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cx23885_set_frequency(ptr noundef %file, ptr noundef %priv, ptr noundef %f) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vidioc_log_status(ptr noundef %file, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  %name = alloca [34 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #11
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %name) #11
  %2 = call ptr @memset(ptr %name, i32 255, i32 34)
  %name1 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 19
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 34, ptr noundef nonnull @.str.101, ptr noundef %name1)
  %subdevs = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn31 = load ptr, ptr %subdevs, align 4
  %cmp.not33 = icmp eq ptr %.pn31, %subdevs
  br i1 %cmp.not33, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn34 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn31, %entry.for.body_crit_edge ]
  %__sd.035 = getelementptr i8, ptr %.pn34, i32 -80
  %ops = getelementptr i8, ptr %.pn34, i32 24
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = tail call i32 %9(ptr noundef %__sd.035) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %10 = ptrtoint ptr %.pn34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn34, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %entry.do.end_crit_edge
  %hdl = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 55, i32 6
  call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl, ptr noundef nonnull %name) #11
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %name) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_g_register(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_s_register(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_g_chip_info(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_set_tvnorm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_enum_input(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_get_input(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_set_input(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_set_frequency(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef writeonly %num_buffers, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %2 = load i32, ptr @mpeglinesize, align 4
  %ts_packet_size = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 20, i32 5
  %3 = ptrtoint ptr %ts_packet_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %ts_packet_size, align 4
  %4 = load i32, ptr @mpeglines, align 4
  %ts_packet_count = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 20, i32 6
  %5 = ptrtoint ptr %ts_packet_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ts_packet_count, align 8
  %6 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %num_planes, align 4
  %7 = load i32, ptr @mpeglinesize, align 4
  %8 = load i32, ptr @mpeglines, align 4
  %mul = mul i32 %8, %7
  %9 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %sizes, align 4
  %10 = load i32, ptr @mpegbufs, align 4
  %11 = ptrtoint ptr %num_buffers to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %num_buffers, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %ts1 = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 20
  %call = tail call i32 @cx23885_buf_prepare(ptr noundef %vb, ptr noundef %ts1) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_finish(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  tail call void @cx23885_free_buffer(ptr noundef %3, ptr noundef %vb) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23885_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %mpegq = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 20, i32 4
  %call = tail call fastcc i32 @cx23885_initialize_codec(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %do.body3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ts1 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %mpegq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mpegq, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -736
  %call2 = tail call i32 @cx23885_start_dma(ptr noundef %ts1, ptr noundef %mpegq, ptr noundef %add.ptr) #11
  br label %cleanup

do.body3:                                         ; preds = %entry
  %slock = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 53
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #11
  %4 = ptrtoint ptr %mpegq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mpegq, align 4
  %cmp.i.not31 = icmp eq ptr %5, %mpegq
  br i1 %cmp.i.not31, label %do.body3.while.end_crit_edge, label %do.body3.while.body_crit_edge

do.body3.while.body_crit_edge:                    ; preds = %do.body3
  br label %while.body

do.body3.while.end_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %do.body3.while.body_crit_edge
  %6 = phi ptr [ %16, %list_del.exit.while.body_crit_edge ], [ %5, %do.body3.while.body_crit_edge ]
  %add.ptr17 = getelementptr i8, ptr %6, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr17, i32 noundef 3) #11
  %15 = ptrtoint ptr %mpegq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %mpegq, align 4
  %cmp.i.not = icmp eq ptr %16, %mpegq
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %do.body3.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call7) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx23885_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  %status.i = alloca i32, align 4
  %seq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %call = tail call i32 (ptr, i32, i32, i32, ...) @cx23885_api_cmd(ptr noundef %1, i32 noundef 130, i32 noundef 3, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0)
  tail call void @msleep(i32 noundef 500) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seq.i) #11
  %2 = ptrtoint ptr %seq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %seq.i, align 4
  %3 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %status.i, align 4
  %call.i = call i32 (ptr, i32, i32, i32, ...) @cx23885_api_cmd(ptr noundef %1, i32 noundef 198, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %status.i, ptr noundef nonnull %seq.i) #11
  %4 = load i32, ptr @v4l_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %entry.cx23885_417_check_encoder.exit_crit_edge, label %do.end.i

entry.cx23885_417_check_encoder.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cx23885_417_check_encoder.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status.i, align 4
  %7 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %seq.i, align 4
  %call2.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.4, i32 noundef %6, i32 noundef %8) #14
  br label %cx23885_417_check_encoder.exit

cx23885_417_check_encoder.exit:                   ; preds = %do.end.i, %entry.cx23885_417_check_encoder.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status.i) #11
  %ts1 = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 20
  call void @cx23885_cancel_buffers(ptr noundef %ts1) #11
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
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %ts1 = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 20
  tail call void @cx23885_buf_queue(ptr noundef %ts1, ptr noundef %vb) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_buf_prepare(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_start_dma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_cancel_buffers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_buf_queue(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__video_register_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx2341x_handler_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 165)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !206, !207, !209, !211, !213, !215, !217, !219, !220, !221, !222, !224, !225, !226, !227, !229, !230, !231, !232, !234, !235, !236, !238, !240, !241, !242, !243, !245, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !279, !280, !281, !283, !284, !285, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !332, !333, !334, !336, !337, !338, !340, !341, !342, !344, !345}
!llvm.module.flags = !{!346, !347, !348, !349, !350, !351, !352, !353}
!llvm.ident = !{!354}

!0 = !{ptr @__param_mpegbufs, !1, !"__param_mpegbufs", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_mpegbufstype385, !1, !"__UNIQUE_ID_mpegbufstype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_mpegbufs386, !4, !"__UNIQUE_ID_mpegbufs386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 34, i32 1}
!5 = !{ptr @__param_mpeglines, !6, !"__param_mpeglines", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 36, i32 1}
!7 = !{ptr @__UNIQUE_ID_mpeglinestype387, !6, !"__UNIQUE_ID_mpeglinestype387", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_mpeglines388, !9, !"__UNIQUE_ID_mpeglines388", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 37, i32 1}
!10 = !{ptr @__param_mpeglinesize, !11, !"__param_mpeglinesize", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 39, i32 1}
!12 = !{ptr @__UNIQUE_ID_mpeglinesizetype389, !11, !"__UNIQUE_ID_mpeglinesizetype389", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_mpeglinesize390, !14, !"__UNIQUE_ID_mpeglinesize390", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 40, i32 1}
!15 = !{ptr @__param_v4l_debug, !16, !"__param_v4l_debug", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 44, i32 1}
!17 = !{ptr @__UNIQUE_ID_v4l_debugtype391, !16, !"__UNIQUE_ID_v4l_debugtype391", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_v4l_debug392, !19, !"__UNIQUE_ID_v4l_debug392", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 45, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 277, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cx23885_mc417_init._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @cx23885_mc417_init._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1004, i32 2}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @cx23885_417_check_encoder._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @cx23885_417_check_encoder._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1457, i32 2}
!33 = !{ptr @cx23885_417_unregister._entry, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cx23885_417_unregister._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1498, i32 2}
!37 = !{ptr @cx23885_417_register._entry, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @cx23885_417_register._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1523, i32 37}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1550, i32 3}
!43 = !{ptr @cx23885_417_register._entry.8, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @cx23885_417_register._entry_ptr.10, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1554, i32 2}
!47 = !{ptr @cx23885_417_register._entry.11, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @cx23885_417_register._entry_ptr.13, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @__UNIQUE_ID_firmware393, !50, !"__UNIQUE_ID_firmware393", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1566, i32 1}
!51 = !{ptr @v4l_debug, !52, !"v4l_debug", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 43, i32 21}
!53 = !{ptr @__param_str_mpegbufs, !1, !"__param_str_mpegbufs", i1 false, i1 false}
!54 = !{ptr @mpegbufs, !55, !"mpegbufs", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 32, i32 21}
!56 = !{ptr @__param_str_mpeglines, !6, !"__param_str_mpeglines", i1 false, i1 false}
!57 = !{ptr @mpeglines, !58, !"mpeglines", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 35, i32 21}
!59 = !{ptr @__param_str_mpeglinesize, !11, !"__param_str_mpeglinesize", i1 false, i1 false}
!60 = !{ptr @mpeglinesize, !61, !"mpeglinesize", i1 false, i1 false}
!61 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 38, i32 21}
!62 = !{ptr @__param_str_v4l_debug, !16, !"__param_str_v4l_debug", i1 false, i1 false}
!63 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 837, i32 2}
!65 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @cx23885_api_cmd._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @cx23885_api_cmd._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 756, i32 2}
!70 = !{ptr @.str.17, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @cx23885_mbox_func._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @cx23885_mbox_func._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.19, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 763, i32 3}
!75 = !{ptr @cx23885_mbox_func._entry.18, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @cx23885_mbox_func._entry_ptr.20, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 773, i32 3}
!79 = !{ptr @cx23885_mbox_func._entry.21, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @cx23885_mbox_func._entry_ptr.23, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.25, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 788, i32 3}
!83 = !{ptr @cx23885_mbox_func._entry.24, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @cx23885_mbox_func._entry_ptr.26, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 803, i32 4}
!87 = !{ptr @cx23885_mbox_func._entry.27, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @cx23885_mbox_func._entry_ptr.29, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 812, i32 3}
!91 = !{ptr @cx23885_mbox_func._entry.30, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @cx23885_mbox_func._entry_ptr.32, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 816, i32 2}
!95 = !{ptr @cx23885_mbox_func._entry.33, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @cx23885_mbox_func._entry_ptr.35, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 661, i32 11}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 663, i32 11}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 665, i32 11}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 667, i32 11}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 669, i32 11}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 671, i32 11}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 673, i32 11}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 675, i32 11}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 677, i32 11}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 679, i32 11}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 681, i32 11}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 683, i32 11}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 685, i32 11}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 687, i32 11}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 689, i32 11}
!127 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 691, i32 11}
!129 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 693, i32 11}
!131 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 695, i32 11}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 697, i32 11}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 699, i32 11}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 701, i32 11}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 703, i32 11}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 705, i32 11}
!143 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 707, i32 11}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 709, i32 11}
!147 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 711, i32 11}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 713, i32 11}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 715, i32 11}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 717, i32 11}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 719, i32 11}
!157 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 721, i32 11}
!159 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 723, i32 11}
!161 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 725, i32 11}
!163 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 727, i32 11}
!165 = !{ptr @.str.70, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 729, i32 11}
!167 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 731, i32 11}
!169 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 733, i32 11}
!171 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 735, i32 11}
!173 = !{ptr @.str.74, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 737, i32 11}
!175 = !{ptr @.str.75, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 739, i32 11}
!177 = !{ptr @.str.76, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 741, i32 10}
!179 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 55, i32 16}
!181 = !{ptr @.str.78, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 58, i32 16}
!183 = !{ptr @.str.79, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 61, i32 16}
!185 = !{ptr @.str.80, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 64, i32 16}
!187 = !{ptr @.str.81, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 67, i32 16}
!189 = !{ptr @.str.82, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 70, i32 16}
!191 = !{ptr @.str.83, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 73, i32 16}
!193 = !{ptr @.str.84, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 76, i32 16}
!195 = !{ptr @.str.85, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 79, i32 16}
!197 = !{ptr @.str.86, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 82, i32 16}
!199 = !{ptr @.str.87, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 85, i32 16}
!201 = !{ptr @cx23885_tvnorms, !202, !"cx23885_tvnorms", i1 false, i1 false}
!202 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 53, i32 30}
!203 = !{ptr @.str.88, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1478, i32 2}
!205 = !{ptr @cx23885_video_dev_alloc._entry, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @cx23885_video_dev_alloc._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.89, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1484, i32 41}
!209 = !{ptr @cx23885_mpeg_template, !210, !"cx23885_mpeg_template", i1 false, i1 false}
!210 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1448, i32 28}
!211 = !{ptr @mpeg_fops, !212, !"mpeg_fops", i1 false, i1 false}
!212 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1408, i32 42}
!213 = !{ptr @mpeg_ioctl_ops, !214, !"mpeg_ioctl_ops", i1 false, i1 false}
!214 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1418, i32 36}
!215 = !{ptr @.str.90, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1326, i32 25}
!217 = !{ptr @.str.91, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1360, i32 2}
!219 = !{ptr @.str.92, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @vidioc_g_fmt_vid_cap._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @vidioc_g_fmt_vid_cap._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.93, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1392, i32 2}
!224 = !{ptr @.str.94, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @vidioc_s_fmt_vid_cap._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @vidioc_s_fmt_vid_cap._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.95, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1376, i32 2}
!229 = !{ptr @.str.96, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @vidioc_try_fmt_vid_cap._entry, !228, !"_entry", i1 false, i1 false}
!231 = !{ptr @vidioc_try_fmt_vid_cap._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.97, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1251, i32 2}
!234 = !{ptr @vidioc_enum_input._entry, !233, !"_entry", i1 false, i1 false}
!235 = !{ptr @vidioc_enum_input._entry_ptr, !233, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.98, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1274, i32 19}
!238 = !{ptr @.str.99, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1277, i32 2}
!240 = !{ptr @.str.100, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @vidioc_g_tuner._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @vidioc_g_tuner._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.101, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1402, i32 31}
!245 = !{ptr @cx23885_qops, !246, !"cx23885_qops", i1 false, i1 false}
!246 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1208, i32 29}
!247 = !{ptr @.str.102, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1038, i32 2}
!249 = !{ptr @cx23885_initialize_codec._entry, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @cx23885_initialize_codec._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.104, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1042, i32 3}
!253 = !{ptr @cx23885_initialize_codec._entry.103, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @cx23885_initialize_codec._entry_ptr.105, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.107, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1045, i32 4}
!257 = !{ptr @cx23885_initialize_codec._entry.106, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @cx23885_initialize_codec._entry_ptr.108, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.110, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1050, i32 4}
!261 = !{ptr @cx23885_initialize_codec._entry.109, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @cx23885_initialize_codec._entry_ptr.111, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.113, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1057, i32 4}
!265 = !{ptr @cx23885_initialize_codec._entry.112, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @cx23885_initialize_codec._entry_ptr.114, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.116, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1063, i32 4}
!269 = !{ptr @cx23885_initialize_codec._entry.115, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @cx23885_initialize_codec._entry_ptr.117, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.119, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1066, i32 3}
!273 = !{ptr @cx23885_initialize_codec._entry.118, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @cx23885_initialize_codec._entry_ptr.120, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @cx23885_load_firmware.magic, !276, !"magic", i1 false, i1 false}
!276 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 886, i32 29}
!277 = !{ptr @.str.121, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 897, i32 2}
!279 = !{ptr @cx23885_load_firmware._entry, !278, !"_entry", i1 false, i1 false}
!280 = !{ptr @cx23885_load_firmware._entry_ptr, !278, !"_entry_ptr", i1 false, i1 false}
!281 = !{ptr @.str.123, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 915, i32 3}
!283 = !{ptr @cx23885_load_firmware._entry.122, !282, !"_entry", i1 false, i1 false}
!284 = !{ptr @cx23885_load_firmware._entry_ptr.124, !282, !"_entry_ptr", i1 false, i1 false}
!285 = !{ptr @.str.125, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 920, i32 39}
!287 = !{ptr @.str.127, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 924, i32 3}
!289 = !{ptr @cx23885_load_firmware._entry.126, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @cx23885_load_firmware._entry_ptr.128, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.130, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 926, i32 3}
!293 = !{ptr @cx23885_load_firmware._entry.129, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @cx23885_load_firmware._entry_ptr.131, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.133, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 931, i32 3}
!297 = !{ptr @cx23885_load_firmware._entry.132, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @cx23885_load_firmware._entry_ptr.134, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.136, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 938, i32 3}
!301 = !{ptr @cx23885_load_firmware._entry.135, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @cx23885_load_firmware._entry_ptr.137, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.139, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 944, i32 2}
!305 = !{ptr @cx23885_load_firmware._entry.138, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @cx23885_load_firmware._entry_ptr.140, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.142, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 950, i32 4}
!309 = !{ptr @cx23885_load_firmware._entry.141, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @cx23885_load_firmware._entry_ptr.143, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.145, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 958, i32 2}
!313 = !{ptr @cx23885_load_firmware._entry.144, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @cx23885_load_firmware._entry_ptr.146, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.148, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 961, i32 4}
!317 = !{ptr @cx23885_load_firmware._entry.147, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @cx23885_load_firmware._entry_ptr.149, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.151, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 968, i32 3}
!321 = !{ptr @cx23885_load_firmware._entry.150, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @cx23885_load_firmware._entry_ptr.152, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.154, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 973, i32 2}
!325 = !{ptr @cx23885_load_firmware._entry.153, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @cx23885_load_firmware._entry_ptr.155, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @cx23885_load_firmware._entry.156, !328, !"_entry", i1 false, i1 false}
!328 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 993, i32 3}
!329 = !{ptr @cx23885_load_firmware._entry_ptr.157, !328, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.158, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 867, i32 2}
!332 = !{ptr @cx23885_find_mailbox._entry, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @cx23885_find_mailbox._entry_ptr, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.160, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 876, i32 4}
!336 = !{ptr @cx23885_find_mailbox._entry.159, !335, !"_entry", i1 false, i1 false}
!337 = !{ptr @cx23885_find_mailbox._entry_ptr.161, !335, !"_entry_ptr", i1 false, i1 false}
!338 = !{ptr @.str.163, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 880, i32 2}
!340 = !{ptr @cx23885_find_mailbox._entry.162, !339, !"_entry", i1 false, i1 false}
!341 = !{ptr @cx23885_find_mailbox._entry_ptr.164, !339, !"_entry_ptr", i1 false, i1 false}
!342 = !{ptr @.str.165, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/media/pci/cx23885/cx23885-417.c", i32 1009, i32 2}
!344 = !{ptr @cx23885_codec_settings._entry, !343, !"_entry", i1 false, i1 false}
!345 = !{ptr @cx23885_codec_settings._entry_ptr, !343, !"_entry_ptr", i1 false, i1 false}
!346 = !{i32 1, !"wchar_size", i32 2}
!347 = !{i32 1, !"min_enum_size", i32 4}
!348 = !{i32 8, !"branch-target-enforcement", i32 0}
!349 = !{i32 8, !"sign-return-address", i32 0}
!350 = !{i32 8, !"sign-return-address-all", i32 0}
!351 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!352 = !{i32 7, !"uwtable", i32 1}
!353 = !{i32 7, !"frame-pointer", i32 2}
!354 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!355 = !{i64 2158671160}
!356 = !{i64 5042892}
!357 = !{i64 2158671684}
!358 = !{i64 2158672222}
!359 = !{i64 2158674234}
!360 = !{i64 2158674771}
!361 = !{i64 2158675302}
!362 = !{i64 2158675839}
!363 = !{i64 2158676370}
!364 = !{i64 2158676907}
!365 = !{i64 2158677438}
!366 = !{i64 2158677975}
!367 = !{i64 2158678506}
!368 = !{i64 2158679043}
!369 = !{i64 2158679574}
!370 = !{i64 2158680111}
!371 = !{i64 2158680642}
!372 = !{i64 2158681181}
!373 = !{i64 2158681712}
!374 = !{i64 5043310}
!375 = !{i64 2158673032}
!376 = !{i64 2158682236}
!377 = !{i64 2158682773}
!378 = !{i64 2158683304}
!379 = !{i64 2158683841}
!380 = !{i64 2158684372}
!381 = !{i64 2158684911}
!382 = !{i64 2158685442}
!383 = !{i64 2158685991}
!384 = !{i64 2158686555}
!385 = !{i64 2158687092}
!386 = !{i64 2158687902}
!387 = !{i64 2158688236}
!388 = !{i64 2158688773}
!389 = !{i64 2158689310}
!390 = !{i64 2158690120}
!391 = !{i64 2158690454}
!392 = !{i64 2158690991}
!393 = !{i64 2158691528}
!394 = !{i64 2158692338}
!395 = !{i64 2158692672}
!396 = !{i64 2158693209}
!397 = !{i64 2158693746}
!398 = !{i64 2158694556}
!399 = !{i64 2158694890}
!400 = !{i64 2158695414}
!401 = !{i64 2158695951}
!402 = !{i64 2158696482}
!403 = !{i64 2158697019}
!404 = !{i64 2158697550}
!405 = !{i64 2158698087}
!406 = !{i64 2158698618}
!407 = !{i64 2158699155}
!408 = !{i64 2158699686}
!409 = !{i64 2158700228}
!410 = !{i64 2158700759}
!411 = !{i64 2158701296}
!412 = !{i64 2158701827}
!413 = !{i64 2158702364}
!414 = !{i64 2158702895}
!415 = !{i64 2158703419}
!416 = !{i64 2158703958}
!417 = !{i64 2158704489}
!418 = !{i64 2158705026}
!419 = !{i64 2158705557}
!420 = !{i64 2158706094}
!421 = !{i64 2158706625}
!422 = !{i64 2158707174}
!423 = !{i64 2158707738}
!424 = !{i64 2158708275}
!425 = !{i64 2158709085}
!426 = !{i64 2158709419}
!427 = !{i64 2158709956}
!428 = !{i64 2158710493}
!429 = !{i64 2158711303}
!430 = !{i64 2158711637}
!431 = !{i64 2158712174}
!432 = !{i64 2158712711}
!433 = !{i64 2158713521}
!434 = !{i64 2158713855}
!435 = !{i64 2158714392}
!436 = !{i64 2158714929}
!437 = !{i64 2158715739}
!438 = !{i64 2158716073}
!439 = !{!"auto-init"}
