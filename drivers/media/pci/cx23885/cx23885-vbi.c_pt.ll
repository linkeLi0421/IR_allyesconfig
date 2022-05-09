; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx23885/cx23885-vbi.c_pt.bc'
source_filename = "../drivers/media/pci/cx23885/cx23885-vbi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.130 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.127], %struct.media_entity_enum, i32 }
%struct.anon.127 = type { ptr, ptr }
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
%struct.v4l2_format = type { i32, %union.anon.124 }
%union.anon.124 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.126, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.126 = type { i8 }
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
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.145], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.145 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.146 }>
%union.anon.146 = type { i64 }
%struct.cx23885_dmaqueue = type { %struct.list_head, i32 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.148, %struct.anon.149, %struct.anon.150, %struct.anon.151, %struct.anon.152, %struct.anon.153, %struct.anon.154, %struct.anon.155 }
%struct.anon.148 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.149 = type { ptr, ptr }
%struct.anon.150 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.151 = type { ptr, ptr }
%struct.anon.152 = type { ptr, ptr, ptr }
%struct.anon.153 = type { ptr, ptr }
%struct.anon.154 = type { ptr, ptr }
%struct.anon.155 = type { ptr, ptr, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx23885_tvnorm = type { ptr, i64, i32, i32 }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.138, i32 }
%union.anon.138 = type { i32 }
%struct.cx23885_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, %struct.cx23885_riscmem, ptr, i32 }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.cx23885_riscmem = type { i32, ptr, ptr, i32 }
%struct.sram_channel = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__param_str_vbibufs = internal constant [16 x i8] c"cx23885.vbibufs\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@vbibufs = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_vbibufs = internal constant %struct.kernel_param { ptr @__param_str_vbibufs, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @vbibufs } }, section "__param", align 4
@__UNIQUE_ID_vbibufstype385 = internal constant [29 x i8] c"cx23885.parmtype=vbibufs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vbibufs386 = internal constant [55 x i8] c"cx23885.parm=vbibufs:number of vbi buffers, range 2-32\00", section ".modinfo", align 1
@__param_str_vbi_debug = internal constant [18 x i8] c"cx23885.vbi_debug\00", align 1
@vbi_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vbi_debug = internal constant %struct.kernel_param { ptr @__param_str_vbi_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @vbi_debug } }, section "__param", align 4
@__UNIQUE_ID_vbi_debugtype387 = internal constant [31 x i8] c"cx23885.parmtype=vbi_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vbi_debug388 = internal constant [51 x i8] c"cx23885.parm=vbi_debug:enable debug messages [vbi]\00", section ".modinfo", align 1
@cx23885_vbi_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\017cx23885: %s: vbi:%s() VID_BC_MSK_VBI_RISCI1\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx23885_vbi_irq\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/cx23885/cx23885-vbi.c\00", [56 x i8] zeroinitializer }, align 32
@cx23885_vbi_irq._entry_ptr = internal global ptr @cx23885_vbi_irq._entry, section ".printk_index", align 4
@cx23885_vbi_qops = dso_local constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr @buffer_finish, ptr null, ptr @cx23885_start_streaming, ptr @cx23885_stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@cx23885_start_vbi_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017cx23885: %s: vbi:%s()\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx23885_start_vbi_dma\00", [42 x i8] zeroinitializer }, align 32
@cx23885_start_vbi_dma._entry_ptr = internal global ptr @cx23885_start_vbi_dma._entry, section ".printk_index", align 4
@buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017cx23885: %s: vbi:[%p/%d] vbi_queue - first active\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buffer_queue\00", [19 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr = internal global ptr @buffer_queue._entry, section ".printk_index", align 4
@buffer_queue._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017cx23885: %s: vbi:[%p/%d] buffer_queue - append to active\0A\00", [36 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr.10 = internal global ptr @buffer_queue._entry.8, section ".printk_index", align 4
@___asan_gen_.11 = private unnamed_addr constant [8 x i8] c"vbibufs\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 15, i32 21 }
@___asan_gen_.14 = private unnamed_addr constant [10 x i8] c"vbi_debug\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 19, i32 21 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 75, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"cx23885_vbi_qops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 247, i32 22 }
@___asan_gen_.33 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 1163, i32 7 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 90, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 201, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [43 x i8] c"../drivers/media/pci/cx23885/cx23885-vbi.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 212, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_vbi_debug388, ptr @__UNIQUE_ID_vbi_debugtype387, ptr @__UNIQUE_ID_vbibufs386, ptr @__UNIQUE_ID_vbibufstype385, ptr @__param_vbi_debug, ptr @__param_vbibufs, ptr @buffer_queue._entry, ptr @buffer_queue._entry.8, ptr @buffer_queue._entry_ptr, ptr @buffer_queue._entry_ptr.10, ptr @cx23885_start_vbi_dma._entry, ptr @cx23885_start_vbi_dma._entry_ptr, ptr @cx23885_vbi_irq._entry, ptr @cx23885_vbi_irq._entry_ptr, ptr @vbibufs, ptr @vbi_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cx23885_vbi_qops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbibufs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_vbi_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_vbi_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx23885_start_vbi_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_vbi_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #5
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 27000000, ptr %fmt, align 4
  %samples_per_line = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %3 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1440, ptr %samples_per_line, align 4
  %sample_format = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %sample_format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1497715271, ptr %sample_format, align 4
  %offset = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %offset, align 4
  %flags = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flags, align 4
  %tvnorm = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 27
  %7 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tvnorm, align 8
  %and = and i64 %8, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end30.sink.split_crit_edge

entry.if.end30.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.sink.split

if.else:                                          ; preds = %entry
  %and15 = and i64 %8, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %if.else.if.end30_crit_edge, label %if.else.if.end30.sink.split_crit_edge

if.else.if.end30.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30.sink.split

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.end30.sink.split:                              ; preds = %if.else.if.end30.sink.split_crit_edge, %entry.if.end30.sink.split_crit_edge
  %.sink46 = phi i32 [ 10, %entry.if.end30.sink.split_crit_edge ], [ 6, %if.else.if.end30.sink.split_crit_edge ]
  %.sink45 = phi i32 [ 273, %entry.if.end30.sink.split_crit_edge ], [ 319, %if.else.if.end30.sink.split_crit_edge ]
  %.sink44 = phi i32 [ 12, %entry.if.end30.sink.split_crit_edge ], [ 18, %if.else.if.end30.sink.split_crit_edge ]
  %start19 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %start19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink46, ptr %start19, align 4
  %arrayidx23 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %10 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink45, ptr %arrayidx23, align 4
  %count25 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %11 = ptrtoint ptr %count25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink44, ptr %count25, align 4
  %arrayidx29 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink44, ptr %arrayidx29, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else.if.end30_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_vbi_irq(ptr noundef %dev, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %status, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.body

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @vbi_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %do.body.do.end4_crit_edge, label %do.end

do.body.do.end4_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.1) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %do.body.do.end4_crit_edge
  %slock = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 53
  tail call void @_raw_spin_lock(ptr noundef %slock) #5
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %2, i32 311305
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !50
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  %vbiq = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 51
  tail call void @cx23885_video_wakeup(ptr noundef %dev, ptr noundef %vbiq, i32 noundef %4) #5
  tail call void @_raw_spin_unlock(ptr noundef %slock) #5
  br label %if.end9

if.end9:                                          ; preds = %do.end4, %entry.if.end9_crit_edge
  %handled.0 = phi i32 [ 1, %do.end4 ], [ 0, %entry.if.end9_crit_edge ]
  ret i32 %handled.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_video_wakeup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %tvnorm = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %tvnorm, align 8
  %and = and i64 %3, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %4 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %num_planes, align 4
  %mul1 = select i1 %tobool.not, i32 51840, i32 34560
  %5 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul1, ptr %sizes, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb, i32 noundef 0) #5
  %tvnorm = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tvnorm, align 8
  %and = and i64 %5, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %spec.store.select = select i1 %tobool.not, i32 18, i32 12
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %6 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 0
  br i1 %cmp.not.i, label %entry.cleanup_crit_edge, label %vb2_plane_size.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

vb2_plane_size.exit:                              ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %8 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length.i, align 8
  %mul5 = mul nuw nsw i32 %spec.store.select, 2880
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mul5)
  %cmp = icmp ult i32 %9, %mul5
  br i1 %cmp, label %vb2_plane_size.exit.cleanup_crit_edge, label %if.then.i27

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i27:                                      ; preds = %vb2_plane_size.exit
  %mul = mul nuw nsw i32 %spec.store.select, 1440
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mul5)
  %cmp1.i = icmp ult i32 %11, %mul5
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i27.vb2_set_plane_payload.exit_crit_edge

if.then.i27.vb2_set_plane_payload.exit_crit_edge: ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_set_plane_payload.exit

land.rhs.i:                                       ; preds = %if.then.i27
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !52

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1163, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 8
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then38.i, %if.then.i27.vb2_set_plane_payload.exit_crit_edge
  %size.addr.0.i = phi i32 [ %13, %if.then38.i ], [ %mul5, %if.then.i27.vb2_set_plane_payload.exit_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %14 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 3
  %15 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pci, align 4
  %risc = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 3
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %call11 = tail call i32 @cx23885_risc_vbibuffer(ptr noundef %16, ptr noundef %risc, ptr noundef %18, i32 noundef 0, i32 noundef %mul, i32 noundef 1440, i32 noundef 0, i32 noundef %spec.store.select) #5
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %vb2_plane_size.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vb2_set_plane_payload.exit ], [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_finish(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  tail call void @cx23885_free_buffer(ptr noundef %3, ptr noundef %vb) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23885_start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %vbiq = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 51
  %2 = ptrtoint ptr %vbiq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbiq, align 4
  %4 = load i32, ptr @vbi_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %entry.cx23885_start_vbi_dma.exit_crit_edge, label %do.end.i

entry.cx23885_start_vbi_dma.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cx23885_start_vbi_dma.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.5) #8
  br label %cx23885_start_vbi_dma.exit

cx23885_start_vbi_dma.exit:                       ; preds = %do.end.i, %entry.cx23885_start_vbi_dma.exit_crit_edge
  %sram_channels.i = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 22
  %5 = ptrtoint ptr %sram_channels.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sram_channels.i, align 8
  %arrayidx.i = getelementptr %struct.sram_channel, ptr %6, i32 1
  %dma.i = getelementptr i8, ptr %3, i32 24
  %7 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma.i, align 4
  %call3.i = tail call i32 @cx23885_sram_channel_setup(ptr noundef %1, ptr noundef %arrayidx.i, i32 noundef 1440, i32 noundef %8) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %lmmio.i = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %10, i32 311330
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 50331648) #5, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lmmio.i, align 4
  %add.ptr9.i = getelementptr i32, ptr %12, i32 311309
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 50331648) #5, !srcloc !54
  %count.i = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 51, i32 1
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %count.i, align 4
  tail call void @cx23885_irq_add_enable(ptr noundef %1, i32 noundef 1) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio.i, align 4
  %add.ptr13.i = getelementptr i32, ptr %15, i32 65544
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %17 = or i32 %16, 570425344
  %18 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio.i, align 4
  %add.ptr18.i = getelementptr i32, ptr %19, i32 65544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %17) #5, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio.i, align 4
  %add.ptr24.i = getelementptr i32, ptr %21, i32 65536
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  %23 = or i32 %22, 536870912
  %24 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio.i, align 4
  %add.ptr31.i = getelementptr i32, ptr %25, i32 65536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31.i, i32 %23) #5, !srcloc !54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lmmio.i, align 4
  %add.ptr37.i = getelementptr i32, ptr %27, i32 311312
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %29 = or i32 %28, 570425344
  %30 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio.i, align 4
  %add.ptr44.i = getelementptr i32, ptr %31, i32 311312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 %29) #5, !srcloc !54
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx23885_stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %vbiq = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %lmmio = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 311312
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %5 = and i32 %4, -570425345
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr3 = getelementptr i32, ptr %7, i32 311312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %5) #5, !srcloc !54
  %slock = getelementptr inbounds %struct.cx23885_dev, ptr %1, i32 0, i32 53
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #5
  %8 = ptrtoint ptr %vbiq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %vbiq, align 4
  %cmp.i.not24 = icmp eq ptr %9, %vbiq
  br i1 %cmp.i.not24, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %10 = phi ptr [ %20, %list_del.exit.while.body_crit_edge ], [ %9, %entry.while.body_crit_edge ]
  %add.ptr16 = getelementptr i8, ptr %10, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #5
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @vb2_buffer_done(ptr noundef %add.ptr16, i32 noundef 6) #5
  %19 = ptrtoint ptr %vbiq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %vbiq, align 4
  %cmp.i.not = icmp eq ptr %20, %vbiq
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call8) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_queue(ptr noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %vbiq = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 51
  %dma = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  %add = add i32 %5, 12
  %6 = tail call i32 @llvm.bswap.i32(i32 %add)
  %cpu = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpu, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %arrayidx, align 4
  %jmp = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jmp, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 368, ptr %11, align 4
  %13 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma, align 4
  %add9 = add i32 %14, 12
  %15 = tail call i32 @llvm.bswap.i32(i32 %add9)
  %16 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %jmp, align 4
  %arrayidx12 = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %arrayidx12, align 4
  %19 = load ptr, ptr %jmp, align 4
  %arrayidx15 = getelementptr i32, ptr %19, i32 2
  %20 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx15, align 4
  %21 = ptrtoint ptr %vbiq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %vbiq, align 4
  %cmp.i.not = icmp eq ptr %22, %vbiq
  br i1 %cmp.i.not, label %do.body16, label %if.else

do.body16:                                        ; preds = %entry
  %slock = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 53
  %call19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #5
  %queue = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 51, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %queue, ptr noundef %24, ptr noundef %vbiq) #5
  br i1 %call.i.i, label %if.end.i.i, label %do.body16.list_add_tail.exit_crit_edge

do.body16.list_add_tail.exit_crit_edge:           ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %queue, ptr %prev.i, align 4
  %26 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %vbiq, ptr %queue, align 4
  %prev3.i.i = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %queue, ptr %24, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body16.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call19) #5
  %29 = load i32, ptr @vbi_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp25 = icmp ugt i32 %29, 1
  br i1 %cmp25, label %list_add_tail.exit.if.end81.sink.split_crit_edge, label %list_add_tail.exit.if.end81_crit_edge

list_add_tail.exit.if.end81_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

list_add_tail.exit.if.end81.sink.split_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81.sink.split

if.else:                                          ; preds = %entry
  %30 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cpu, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %or = or i32 %33, 1
  store i32 %or, ptr %31, align 4
  %prev41 = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 51, i32 0, i32 1
  %34 = ptrtoint ptr %prev41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev41, align 4
  %slock51 = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 53
  %call53 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock51) #5
  %queue58 = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 1
  %36 = ptrtoint ptr %prev41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev41, align 4
  %call.i.i105 = tail call zeroext i1 @__list_add_valid(ptr noundef %queue58, ptr noundef %37, ptr noundef %vbiq) #5
  br i1 %call.i.i105, label %if.end.i.i107, label %if.else.list_add_tail.exit108_crit_edge

if.else.list_add_tail.exit108_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit108

if.end.i.i107:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %prev41 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %queue58, ptr %prev41, align 4
  %39 = ptrtoint ptr %queue58 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %vbiq, ptr %queue58, align 4
  %prev3.i.i106 = getelementptr inbounds %struct.cx23885_buffer, ptr %vb, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev3.i.i106 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i106, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %queue58, ptr %37, align 4
  br label %list_add_tail.exit108

list_add_tail.exit108:                            ; preds = %if.end.i.i107, %if.else.list_add_tail.exit108_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock51, i32 noundef %call53) #5
  %42 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %jmp64 = getelementptr i8, ptr %35, i32 20
  %45 = ptrtoint ptr %jmp64 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %jmp64, align 4
  %arrayidx65 = getelementptr i32, ptr %46, i32 1
  %47 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %44, ptr %arrayidx65, align 4
  %48 = load i32, ptr @vbi_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp67 = icmp ugt i32 %48, 1
  br i1 %cmp67, label %list_add_tail.exit108.if.end81.sink.split_crit_edge, label %list_add_tail.exit108.if.end81_crit_edge

list_add_tail.exit108.if.end81_crit_edge:         ; preds = %list_add_tail.exit108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

list_add_tail.exit108.if.end81.sink.split_crit_edge: ; preds = %list_add_tail.exit108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81.sink.split

if.end81.sink.split:                              ; preds = %list_add_tail.exit108.if.end81.sink.split_crit_edge, %list_add_tail.exit.if.end81.sink.split_crit_edge
  %.str.9.sink = phi ptr [ @.str.6, %list_add_tail.exit.if.end81.sink.split_crit_edge ], [ @.str.9, %list_add_tail.exit108.if.end81.sink.split_crit_edge ]
  %index76 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %49 = ptrtoint ptr %index76 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index76, align 4
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.9.sink, ptr noundef nonnull @.str.7, ptr noundef %vb, i32 noundef %50) #8
  br label %if.end81

if.end81:                                         ; preds = %if.end81.sink.split, %list_add_tail.exit108.if.end81_crit_edge, %list_add_tail.exit.if.end81_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_risc_vbibuffer(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_free_buffer(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx23885_sram_channel_setup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx23885_irq_add_enable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !20, !21, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @__param_vbibufs, !1, !"__param_vbibufs", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx23885/cx23885-vbi.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_vbibufstype385, !1, !"__UNIQUE_ID_vbibufstype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_vbibufs386, !4, !"__UNIQUE_ID_vbibufs386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx23885/cx23885-vbi.c", i32 17, i32 1}
!5 = !{ptr @__param_vbi_debug, !6, !"__param_vbi_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx23885/cx23885-vbi.c", i32 20, i32 1}
!7 = !{ptr @__UNIQUE_ID_vbi_debugtype387, !6, !"__UNIQUE_ID_vbi_debugtype387", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_vbi_debug388, !9, !"__UNIQUE_ID_vbi_debug388", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx23885/cx23885-vbi.c", i32 21, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx23885/cx23885-vbi.c", i32 75, i32 3}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @cx23885_vbi_irq._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @cx23885_vbi_irq._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @cx23885_vbi_qops, !17, !"cx23885_vbi_qops", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cx23885/cx23885-vbi.c", i32 247, i32 22}
!18 = !{ptr @vbi_debug, !19, !"vbi_debug", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/cx23885/cx23885-vbi.c", i32 19, i32 21}
!20 = !{ptr @__param_str_vbibufs, !1, !"__param_str_vbibufs", i1 false, i1 false}
!21 = !{ptr @vbibufs, !22, !"vbibufs", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/cx23885/cx23885-vbi.c", i32 15, i32 21}
!23 = !{ptr @__param_str_vbi_debug, !6, !"__param_str_vbi_debug", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!26 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/cx23885/cx23885-vbi.c", i32 90, i32 2}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @cx23885_start_vbi_dma._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @cx23885_start_vbi_dma._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/pci/cx23885/cx23885-vbi.c", i32 201, i32 3}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @buffer_queue._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @buffer_queue._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/cx23885/cx23885-vbi.c", i32 212, i32 3}
!39 = !{ptr @buffer_queue._entry.8, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @buffer_queue._entry_ptr.10, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 5006803}
!51 = !{i64 2158585935}
!52 = !{!"branch_weights", i32 2000, i32 1}
!53 = !{i64 2158587933}
!54 = !{i64 5006385}
!55 = !{i64 2158588425}
!56 = !{i64 2158589968}
!57 = !{i64 2158591065}
!58 = !{i64 2158592472}
!59 = !{i64 2158593557}
!60 = !{i64 2158594942}
!61 = !{i64 2158596015}
!62 = !{i64 2158617673}
!63 = !{i64 2158618732}
