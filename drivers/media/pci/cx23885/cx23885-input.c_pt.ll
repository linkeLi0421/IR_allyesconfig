; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx23885/cx23885-input.c_pt.bc'
source_filename = "../drivers/media/pci/cx23885/cx23885-input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cx23885_board = type { ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i32, i32, [8 x %struct.cx23885_input], i32, i32 }
%struct.cx23885_input = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ir_raw_event = type { %union.anon.153, i8, i8 }
%union.anon.153 = type { i32 }
%struct.v4l2_subdev_ir_parameters = type { i32, i32, i8, i8, i8, i8, i32, i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.cx23885_dev = type { %struct.atomic_t, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, i8, i8, i32, i32, ptr, ptr, i32, %struct.spinlock, i32, i32, [3 x %struct.cx23885_i2c], i32, %struct.mutex, %struct.mutex, i32, [32 x i8], %struct.cx23885_tsport, %struct.cx23885_tsport, ptr, i32, i32, i32, i32, i64, i32, i8, i32, i32, i8, ptr, %struct.work_struct, ptr, %struct.work_struct, i32, %struct.work_struct, i32, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, i32, i32, i32, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.cx23885_dmaqueue, %struct.vb2_queue, %struct.spinlock, i32, %struct.cx2341x_handler, ptr, %struct.vb2_queue, %struct.cx23885_tvnorm, ptr, i8 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx23885_i2c = type { ptr, i32, %struct.i2c_adapter, %struct.i2c_client, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.121], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.121 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.122 }>
%union.anon.122 = type { i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.cx23885_dmaqueue = type { %struct.list_head, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.124, %struct.anon.125, %struct.anon.126, %struct.anon.127, %struct.anon.128, %struct.anon.129, %struct.anon.130, %struct.anon.131 }
%struct.anon.124 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.125 = type { ptr, ptr }
%struct.anon.126 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.127 = type { ptr, ptr }
%struct.anon.128 = type { ptr, ptr, ptr }
%struct.anon.129 = type { ptr, ptr }
%struct.anon.130 = type { ptr, ptr }
%struct.anon.131 = type { ptr, ptr, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx23885_tvnorm = type { ptr, i64, i32, i32 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.106 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { i32, i32 }
%struct.v4l2_subdev_ir_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cx23885_kernel_ir = type { ptr, ptr, ptr, ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.120, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.120 = type { ptr }

@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rc-nec-terratec-cinergy-xs\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-tevii-nec\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rc-total-media-in-hand-02\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-tbs-nec\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rc-dvbsky\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-tt-1500\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cx23885 IR (%s)\00", [16 x i8] zeroinitializer }, align 32
@cx23885_boards = external dso_local local_unnamed_addr global [0 x %struct.cx23885_board], align 4
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci-%s/ir0\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx23885\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [19 x i64] [i64 17, i64 32, i64 3, i64 15, i64 18, i64 24, i64 26, i64 33, i64 34, i64 40, i64 41, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 58]
@__sancov_gen_cov_switch_values.10 = internal global [19 x i64] [i64 17, i64 32, i64 3, i64 15, i64 18, i64 24, i64 26, i64 33, i64 34, i64 40, i64 41, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 58]
@__sancov_gen_cov_switch_values.11 = internal global [19 x i64] [i64 17, i64 32, i64 3, i64 15, i64 18, i64 24, i64 26, i64 33, i64 34, i64 40, i64 41, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 58]
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 283, i32 12 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 289, i32 12 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 295, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 301, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 308, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 318, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 323, i32 12 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 335, i32 42 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 342, i32 42 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private constant [45 x i8] c"../drivers/media/pci/cx23885/cx23885-input.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 374, i32 20 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_input_rx_work_handler(ptr noundef %dev, i32 noundef %events) local_unnamed_addr #0 align 64 {
entry:
  %.compoundliteral.i.i = alloca %struct.ir_raw_event, align 4
  %num.i = alloca i32, align 4
  %ir_core_event.i = alloca [64 x %struct.ir_raw_event], align 4
  %params = alloca %struct.v4l2_subdev_ir_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %params) #4
  %0 = call ptr @memset(ptr %params, i32 255, i32 44)
  %sd_ir = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 35
  %1 = ptrtoint ptr %sd_ir to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sd_ir, align 4
  %cmp = icmp eq ptr %2, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %events)
  %cmp1 = icmp eq i32 %events, 0
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %3 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %board, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 18, label %if.end.sw.epilog_crit_edge
    i32 24, label %if.end.sw.epilog_crit_edge149
    i32 26, label %if.end.sw.epilog_crit_edge150
    i32 34, label %if.end.sw.epilog_crit_edge151
    i32 15, label %if.end.sw.epilog_crit_edge152
    i32 3, label %if.end.sw.epilog_crit_edge153
    i32 33, label %if.end.sw.epilog_crit_edge154
    i32 41, label %if.end.sw.epilog_crit_edge155
    i32 40, label %if.end.sw.epilog_crit_edge156
    i32 45, label %if.end.sw.epilog_crit_edge157
    i32 46, label %if.end.sw.epilog_crit_edge158
    i32 47, label %if.end.sw.epilog_crit_edge159
    i32 48, label %if.end.sw.epilog_crit_edge160
    i32 49, label %if.end.sw.epilog_crit_edge161
    i32 50, label %if.end.sw.epilog_crit_edge162
    i32 51, label %if.end.sw.epilog_crit_edge163
    i32 58, label %if.end.sw.epilog_crit_edge164
  ]

if.end.sw.epilog_crit_edge164:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge163:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge162:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge161:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge160:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge159:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge158:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge157:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge156:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge155:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge154:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge153:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge152:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge151:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge150:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge149:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge149, %if.end.sw.epilog_crit_edge150, %if.end.sw.epilog_crit_edge151, %if.end.sw.epilog_crit_edge152, %if.end.sw.epilog_crit_edge153, %if.end.sw.epilog_crit_edge154, %if.end.sw.epilog_crit_edge155, %if.end.sw.epilog_crit_edge156, %if.end.sw.epilog_crit_edge157, %if.end.sw.epilog_crit_edge158, %if.end.sw.epilog_crit_edge159, %if.end.sw.epilog_crit_edge160, %if.end.sw.epilog_crit_edge161, %if.end.sw.epilog_crit_edge162, %if.end.sw.epilog_crit_edge163, %if.end.sw.epilog_crit_edge164
  %and = and i32 %events, 12
  %and2 = and i32 %events, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.epilog.if.end60_crit_edge, label %if.else

sw.epilog.if.end60_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.else:                                          ; preds = %sw.epilog
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %2, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %ir = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ir, align 4
  %tobool7.not = icmp eq ptr %9, null
  br i1 %tobool7.not, label %if.else.if.end26_crit_edge, label %land.lhs.true

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

land.lhs.true:                                    ; preds = %if.else
  %rx_g_parameters = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %rx_g_parameters to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_g_parameters, align 4
  %tobool10.not = icmp eq ptr %11, null
  br i1 %tobool10.not, label %land.lhs.true.if.end26_crit_edge, label %if.else12

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.else12:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5), align 4
  %tobool13.not = icmp eq ptr %12, null
  br i1 %tobool13.not, label %if.else12.if.else19_crit_edge, label %land.lhs.true14

if.else12.if.else19_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else19

land.lhs.true14:                                  ; preds = %if.else12
  %rx_g_parameters15 = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %rx_g_parameters15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_g_parameters15, align 4
  %tobool16.not = icmp eq ptr %14, null
  br i1 %tobool16.not, label %land.lhs.true14.if.else19_crit_edge, label %land.lhs.true14.if.end26.sink.split_crit_edge

land.lhs.true14.if.end26.sink.split_crit_edge:    ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26.sink.split

land.lhs.true14.if.else19_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else19

if.else19:                                        ; preds = %land.lhs.true14.if.else19_crit_edge, %if.else12.if.else19_crit_edge
  br label %if.end26.sink.split

if.end26.sink.split:                              ; preds = %if.else19, %land.lhs.true14.if.end26.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else19 ], [ %14, %land.lhs.true14.if.end26.sink.split_crit_edge ]
  %call23 = call i32 %.sink(ptr noundef nonnull %2, ptr noundef nonnull %params) #4
  br label %if.end26

if.end26:                                         ; preds = %if.end26.sink.split, %land.lhs.true.if.end26_crit_edge, %if.else.if.end26_crit_edge
  %enable = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params, i32 0, i32 2
  %15 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %enable, align 4
  %ir_input_stopping = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 41
  %call.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %ir_input_stopping, i32 noundef 4) #4
  %16 = ptrtoint ptr %ir_input_stopping to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %ir_input_stopping, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool28 = icmp ne i32 %17, 0
  %shutdown = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params, i32 0, i32 4
  %frombool = zext i1 %tobool28 to i8
  %18 = ptrtoint ptr %shutdown to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %shutdown, align 2
  %19 = ptrtoint ptr %sd_ir to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sd_ir, align 4
  %tobool32.not = icmp eq ptr %20, null
  br i1 %tobool32.not, label %if.end26.if.end60_crit_edge, label %if.else34

if.end26.if.end60_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.else34:                                        ; preds = %if.end26
  %ops35 = getelementptr inbounds %struct.v4l2_subdev, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %ops35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops35, align 4
  %ir36 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %ir36 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ir36, align 4
  %tobool37.not = icmp eq ptr %24, null
  br i1 %tobool37.not, label %if.else34.if.end60_crit_edge, label %land.lhs.true38

if.else34.if.end60_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

land.lhs.true38:                                  ; preds = %if.else34
  %rx_s_parameters = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %rx_s_parameters to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_s_parameters, align 4
  %tobool41.not = icmp eq ptr %26, null
  br i1 %tobool41.not, label %land.lhs.true38.if.end60_crit_edge, label %if.else43

land.lhs.true38.if.end60_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60

if.else43:                                        ; preds = %land.lhs.true38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5), align 4
  %tobool44.not = icmp eq ptr %27, null
  br i1 %tobool44.not, label %if.else43.if.else51_crit_edge, label %land.lhs.true45

if.else43.if.else51_crit_edge:                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else51

land.lhs.true45:                                  ; preds = %if.else43
  %rx_s_parameters46 = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %rx_s_parameters46 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_s_parameters46, align 4
  %tobool47.not = icmp eq ptr %29, null
  br i1 %tobool47.not, label %land.lhs.true45.if.else51_crit_edge, label %land.lhs.true45.if.end60.sink.split_crit_edge

land.lhs.true45.if.end60.sink.split_crit_edge:    ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end60.sink.split

land.lhs.true45.if.else51_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else51

if.else51:                                        ; preds = %land.lhs.true45.if.else51_crit_edge, %if.else43.if.else51_crit_edge
  br label %if.end60.sink.split

if.end60.sink.split:                              ; preds = %if.else51, %land.lhs.true45.if.end60.sink.split_crit_edge
  %.sink147 = phi ptr [ %26, %if.else51 ], [ %29, %land.lhs.true45.if.end60.sink.split_crit_edge ]
  %call50 = call i32 %.sink147(ptr noundef nonnull %20, ptr noundef nonnull %params) #4
  br label %if.end60

if.end60:                                         ; preds = %if.end60.sink.split, %land.lhs.true38.if.end60_crit_edge, %if.else34.if.end60_crit_edge, %if.end26.if.end60_crit_edge, %sw.epilog.if.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool61.not = icmp eq i32 %and2, 0
  br i1 %tobool61.not, label %if.end60.if.end64_crit_edge, label %if.then62

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end64

if.then62:                                        ; preds = %if.end60
  %kernel_ir1.i = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 40
  %30 = ptrtoint ptr %kernel_ir1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %kernel_ir1.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num.i) #4
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %ir_core_event.i) #4
  %32 = call ptr @memset(ptr %ir_core_event.i, i32 255, i32 512)
  %rc.i = getelementptr inbounds %struct.cx23885_kernel_ir, ptr %31, i32 0, i32 3
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.then62
  %handle.0.off0.i = phi i1 [ false, %if.then62 ], [ %handle.1.off0.lcssa.i, %do.cond.i.do.body.i_crit_edge ]
  %33 = ptrtoint ptr %num.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %num.i, align 4
  %34 = ptrtoint ptr %sd_ir to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sd_ir, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %do.body.i.do.end.i_crit_edge, label %if.else.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

if.else.i:                                        ; preds = %do.body.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i, align 4
  %ir.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %ir.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ir.i, align 4
  %tobool2.not.i = icmp eq ptr %39, null
  br i1 %tobool2.not.i, label %if.else.i.if.end21.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end21.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %tobool5.not.i = icmp eq ptr %41, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end21.i_crit_edge, label %if.else7.i

land.lhs.true.i.if.end21.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.i

if.else7.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5), align 4
  %tobool8.not.i = icmp eq ptr %42, null
  br i1 %tobool8.not.i, label %if.else7.i.if.else14.i_crit_edge, label %land.lhs.true9.i

if.else7.i.if.else14.i_crit_edge:                 ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else14.i

land.lhs.true9.i:                                 ; preds = %if.else7.i
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %tobool11.not.i = icmp eq ptr %44, null
  br i1 %tobool11.not.i, label %land.lhs.true9.i.if.else14.i_crit_edge, label %land.lhs.true9.i.if.end21.sink.split.i_crit_edge

land.lhs.true9.i.if.end21.sink.split.i_crit_edge: ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.sink.split.i

land.lhs.true9.i.if.else14.i_crit_edge:           ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else14.i

if.else14.i:                                      ; preds = %land.lhs.true9.i.if.else14.i_crit_edge, %if.else7.i.if.else14.i_crit_edge
  br label %if.end21.sink.split.i

if.end21.sink.split.i:                            ; preds = %if.else14.i, %land.lhs.true9.i.if.end21.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %41, %if.else14.i ], [ %44, %land.lhs.true9.i.if.end21.sink.split.i_crit_edge ]
  %call19.i = call i32 %.sink.i(ptr noundef nonnull %35, ptr noundef nonnull %ir_core_event.i, i32 noundef 512, ptr noundef nonnull %num.i) #4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.end21.sink.split.i, %land.lhs.true.i.if.end21.i_crit_edge, %if.else.i.if.end21.i_crit_edge
  %45 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr.i = load i32, ptr %num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr.i)
  %cmp48.not.i = icmp ult i32 %.pr.i, 8
  br i1 %cmp48.not.i, label %if.end21.i.do.cond.i_crit_edge, label %for.body.preheader.i

if.end21.i.do.cond.i_crit_edge:                   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.cond.i

for.body.preheader.i:                             ; preds = %if.end21.i
  %div47.i = lshr i32 %.pr.i, 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.049.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %46 = ptrtoint ptr %rc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rc.i, align 4
  %arrayidx.i = getelementptr [64 x %struct.ir_raw_event], ptr %ir_core_event.i, i32 0, i32 %i.049.i
  %call22.i = call i32 @ir_raw_event_store(ptr noundef %47, ptr noundef %arrayidx.i) #4
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div47.i
  br i1 %exitcond.not.i, label %do.condthread-pre-split.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

do.condthread-pre-split.i:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr51.i = load i32, ptr %num.i, align 4
  br label %do.cond.i

do.cond.i:                                        ; preds = %do.condthread-pre-split.i, %if.end21.i.do.cond.i_crit_edge
  %49 = phi i32 [ %.pr51.i, %do.condthread-pre-split.i ], [ %.pr.i, %if.end21.i.do.cond.i_crit_edge ]
  %handle.1.off0.lcssa.i = phi i1 [ true, %do.condthread-pre-split.i ], [ %handle.0.off0.i, %if.end21.i.do.cond.i_crit_edge ]
  %cmp23.not.i = icmp eq i32 %49, 0
  br i1 %cmp23.not.i, label %do.cond.i.do.end.i_crit_edge, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body.i

do.cond.i.do.end.i_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i:                                         ; preds = %do.cond.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %handle.1.off0.lcssa54.i = phi i1 [ %handle.1.off0.lcssa.i, %do.cond.i.do.end.i_crit_edge ], [ %handle.0.off0.i, %do.body.i.do.end.i_crit_edge ]
  br i1 %tobool.not, label %if.else27.i, label %if.then25.i

if.then25.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %50 = ptrtoint ptr %rc.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rc.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.compoundliteral.i.i) #4
  %52 = ptrtoint ptr %.compoundliteral.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %.compoundliteral.i.i, align 4
  %duty_cycle.i.i = getelementptr inbounds %struct.ir_raw_event, ptr %.compoundliteral.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %duty_cycle.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %duty_cycle.i.i, align 4
  %pulse.i.i = getelementptr inbounds %struct.ir_raw_event, ptr %.compoundliteral.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %pulse.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 64, ptr %pulse.i.i, align 1
  %call.i.i146 = call i32 @ir_raw_event_store(ptr noundef %51, ptr noundef nonnull %.compoundliteral.i.i) #4
  %idle.i.i = getelementptr inbounds %struct.rc_dev, ptr %51, i32 0, i32 14
  %55 = ptrtoint ptr %idle.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %idle.i.i, align 8
  call void @ir_raw_event_handle(ptr noundef %51) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral.i.i) #4
  br label %cx23885_input_process_measurements.exit

if.else27.i:                                      ; preds = %do.end.i
  br i1 %handle.1.off0.lcssa54.i, label %if.then29.i, label %if.else27.i.cx23885_input_process_measurements.exit_crit_edge

if.else27.i.cx23885_input_process_measurements.exit_crit_edge: ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cx23885_input_process_measurements.exit

if.then29.i:                                      ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #6
  %56 = ptrtoint ptr %rc.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rc.i, align 4
  call void @ir_raw_event_handle(ptr noundef %57) #4
  br label %cx23885_input_process_measurements.exit

cx23885_input_process_measurements.exit:          ; preds = %if.then29.i, %if.else27.i.cx23885_input_process_measurements.exit_crit_edge, %if.then25.i
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %ir_core_event.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num.i) #4
  br label %if.end64

if.end64:                                         ; preds = %cx23885_input_process_measurements.exit, %if.end60.if.end64_crit_edge
  br i1 %tobool.not, label %if.end64.cleanup_crit_edge, label %if.then66

if.end64.cleanup_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then66:                                        ; preds = %if.end64
  %enable67 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params, i32 0, i32 2
  %58 = ptrtoint ptr %enable67 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %enable67, align 4
  %ir_input_stopping68 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 41
  %call.i.i145 = call zeroext i1 @__kasan_check_read(ptr noundef %ir_input_stopping68, i32 noundef 4) #4
  %59 = ptrtoint ptr %ir_input_stopping68 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %ir_input_stopping68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool70 = icmp ne i32 %60, 0
  %shutdown71 = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params, i32 0, i32 4
  %frombool72 = zext i1 %tobool70 to i8
  %61 = ptrtoint ptr %shutdown71 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %frombool72, ptr %shutdown71, align 2
  %62 = ptrtoint ptr %sd_ir to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sd_ir, align 4
  %tobool76.not = icmp eq ptr %63, null
  br i1 %tobool76.not, label %if.then66.cleanup_crit_edge, label %if.else78

if.then66.cleanup_crit_edge:                      ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else78:                                        ; preds = %if.then66
  %ops79 = getelementptr inbounds %struct.v4l2_subdev, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %ops79 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ops79, align 4
  %ir80 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %65, i32 0, i32 5
  %66 = ptrtoint ptr %ir80 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ir80, align 4
  %tobool81.not = icmp eq ptr %67, null
  br i1 %tobool81.not, label %if.else78.cleanup_crit_edge, label %land.lhs.true82

if.else78.cleanup_crit_edge:                      ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true82:                                  ; preds = %if.else78
  %rx_s_parameters85 = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %67, i32 0, i32 2
  %68 = ptrtoint ptr %rx_s_parameters85 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %rx_s_parameters85, align 4
  %tobool86.not = icmp eq ptr %69, null
  br i1 %tobool86.not, label %land.lhs.true82.cleanup_crit_edge, label %if.else88

land.lhs.true82.cleanup_crit_edge:                ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else88:                                        ; preds = %land.lhs.true82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5), align 4
  %tobool89.not = icmp eq ptr %70, null
  br i1 %tobool89.not, label %if.else88.if.else96_crit_edge, label %land.lhs.true90

if.else88.if.else96_crit_edge:                    ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else96

land.lhs.true90:                                  ; preds = %if.else88
  %rx_s_parameters91 = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %70, i32 0, i32 2
  %71 = ptrtoint ptr %rx_s_parameters91 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rx_s_parameters91, align 4
  %tobool92.not = icmp eq ptr %72, null
  br i1 %tobool92.not, label %land.lhs.true90.if.else96_crit_edge, label %land.lhs.true90.cleanup.sink.split_crit_edge

land.lhs.true90.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

land.lhs.true90.if.else96_crit_edge:              ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else96

if.else96:                                        ; preds = %land.lhs.true90.if.else96_crit_edge, %if.else88.if.else96_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else96, %land.lhs.true90.cleanup.sink.split_crit_edge
  %.sink148 = phi ptr [ %69, %if.else96 ], [ %72, %land.lhs.true90.cleanup.sink.split_crit_edge ]
  %call100 = call i32 %.sink148(ptr noundef nonnull %63, ptr noundef nonnull %params) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true82.cleanup_crit_edge, %if.else78.cleanup_crit_edge, %if.then66.cleanup_crit_edge, %if.end64.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %params) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx23885_input_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sd_ir = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 35
  %0 = ptrtoint ptr %sd_ir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sd_ir, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %board = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %board, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %3, label %if.end.cleanup_crit_edge [
    i32 18, label %if.end.sw.epilog_crit_edge
    i32 24, label %if.end.sw.epilog_crit_edge106
    i32 26, label %if.end.sw.epilog_crit_edge107
    i32 3, label %if.end.sw.epilog_crit_edge108
    i32 58, label %if.end.sw.epilog_crit_edge109
    i32 34, label %sw.bb1
    i32 15, label %sw.bb2
    i32 33, label %sw.bb3
    i32 41, label %if.end.sw.bb4_crit_edge
    i32 40, label %if.end.sw.bb4_crit_edge110
    i32 45, label %if.end.sw.bb5_crit_edge
    i32 46, label %if.end.sw.bb5_crit_edge111
    i32 47, label %if.end.sw.bb5_crit_edge112
    i32 49, label %if.end.sw.bb5_crit_edge113
    i32 50, label %if.end.sw.bb5_crit_edge114
    i32 51, label %if.end.sw.bb5_crit_edge115
    i32 48, label %sw.bb6
  ]

if.end.sw.bb5_crit_edge115:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

if.end.sw.bb5_crit_edge114:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

if.end.sw.bb5_crit_edge113:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

if.end.sw.bb5_crit_edge112:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

if.end.sw.bb5_crit_edge111:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

if.end.sw.bb4_crit_edge110:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb4

if.end.sw.epilog_crit_edge109:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge108:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge107:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge106:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge110
  br label %sw.epilog

sw.bb5:                                           ; preds = %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge111, %if.end.sw.bb5_crit_edge112, %if.end.sw.bb5_crit_edge113, %if.end.sw.bb5_crit_edge114, %if.end.sw.bb5_crit_edge115
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge106, %if.end.sw.epilog_crit_edge107, %if.end.sw.epilog_crit_edge108, %if.end.sw.epilog_crit_edge109
  %rc_map.0 = phi ptr [ @.str.6, %sw.bb6 ], [ @.str.5, %sw.bb5 ], [ @.str.4, %sw.bb4 ], [ @.str.3, %sw.bb3 ], [ @.str.2, %sw.bb2 ], [ @.str.1, %sw.bb1 ], [ @.str, %if.end.sw.epilog_crit_edge ], [ @.str, %if.end.sw.epilog_crit_edge106 ], [ @.str, %if.end.sw.epilog_crit_edge107 ], [ @.str, %if.end.sw.epilog_crit_edge108 ], [ @.str, %if.end.sw.epilog_crit_edge109 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 16) #7
  %cmp7 = icmp eq ptr %call7.i.i, null
  br i1 %cmp7, label %sw.epilog.cleanup_crit_edge, label %if.end9

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %sw.epilog
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call7.i.i, align 8
  %7 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %board, align 4
  %arrayidx = getelementptr [0 x %struct.cx23885_board], ptr @cx23885_boards, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %call11 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.7, ptr noundef %10) #4
  %name12 = getelementptr inbounds %struct.cx23885_kernel_ir, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %name12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call11, ptr %name12, align 4
  %tobool.not = icmp eq ptr %call11, null
  br i1 %tobool.not, label %if.end9.err_out_free_crit_edge, label %if.end15

if.end9.err_out_free_crit_edge:                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_out_free

if.end15:                                         ; preds = %if.end9
  %pci = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 3
  %12 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pci, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end15.pci_name.exit_crit_edge

if.end15.pci_name.exit_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end15.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ %15, %if.end15.pci_name.exit_crit_edge ]
  %call17 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i.i) #4
  %phys = getelementptr inbounds %struct.cx23885_kernel_ir, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call17, ptr %phys, align 8
  %tobool19.not = icmp eq ptr %call17, null
  br i1 %tobool19.not, label %pci_name.exit.err_out_free_name_crit_edge, label %if.end21

pci_name.exit.err_out_free_name_crit_edge:        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_out_free_name

if.end21:                                         ; preds = %pci_name.exit
  %call22 = tail call ptr @rc_allocate_device(i32 noundef 1) #4
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.err_out_free_phys_crit_edge, label %if.end25

if.end21.err_out_free_phys_crit_edge:             ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_out_free_phys

if.end25:                                         ; preds = %if.end21
  %rc26 = getelementptr inbounds %struct.cx23885_kernel_ir, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %rc26 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call22, ptr %rc26, align 4
  %20 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name12, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call22, i32 0, i32 3
  %22 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %device_name, align 8
  %23 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phys, align 8
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call22, i32 0, i32 4
  %25 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %input_phys, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call22, i32 0, i32 5
  %26 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %input_id, align 8
  %version = getelementptr inbounds %struct.rc_dev, ptr %call22, i32 0, i32 5, i32 3
  %27 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %version, align 2
  %28 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pci, align 4
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool31.not = icmp eq i16 %31, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %vendor = getelementptr inbounds %struct.rc_dev, ptr %call22, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %vendor, align 2
  %33 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pci, align 4
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 10
  br label %if.end45

if.else:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %vendor39 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 7
  %35 = ptrtoint ptr %vendor39 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vendor39, align 8
  %vendor41 = getelementptr inbounds %struct.rc_dev, ptr %call22, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %vendor41 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %vendor41, align 2
  %38 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pci, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %39, i32 0, i32 8
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then32
  %.sink.in = phi ptr [ %device, %if.else ], [ %subsystem_device, %if.then32 ]
  %40 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %40)
  %.sink = load i16, ptr %.sink.in, align 2
  %41 = getelementptr inbounds %struct.rc_dev, ptr %call22, i32 0, i32 5, i32 2
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %.sink, ptr %41, align 4
  %43 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pci, align 4
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  %parent = getelementptr inbounds %struct.device, ptr %call22, i32 0, i32 1
  %45 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev47, ptr %parent, align 8
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call22, i32 0, i32 16
  %46 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 130023420, ptr %allowed_protocols, align 8
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call22, i32 0, i32 24
  %47 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call7.i.i, ptr %priv, align 4
  %open = getelementptr inbounds %struct.rc_dev, ptr %call22, i32 0, i32 48
  %48 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @cx23885_input_ir_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.rc_dev, ptr %call22, i32 0, i32 49
  %49 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @cx23885_input_ir_close, ptr %close, align 4
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call22, i32 0, i32 7
  %50 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %rc_map.0, ptr %map_name, align 4
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call22, i32 0, i32 6
  %51 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.9, ptr %driver_name, align 8
  %kernel_ir49 = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 40
  %52 = ptrtoint ptr %kernel_ir49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %kernel_ir49, align 8
  %call50 = tail call i32 @rc_register_device(ptr noundef nonnull %call22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end45.cleanup_crit_edge, label %err_out_stop

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err_out_stop:                                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @cx23885_input_ir_stop(ptr noundef %dev)
  %53 = ptrtoint ptr %kernel_ir49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %kernel_ir49, align 8
  tail call void @rc_free_device(ptr noundef nonnull %call22) #4
  br label %err_out_free_phys

err_out_free_phys:                                ; preds = %err_out_stop, %if.end21.err_out_free_phys_crit_edge
  %ret.0 = phi i32 [ %call50, %err_out_stop ], [ -12, %if.end21.err_out_free_phys_crit_edge ]
  %54 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %phys, align 8
  tail call void @kfree(ptr noundef %55) #4
  br label %err_out_free_name

err_out_free_name:                                ; preds = %err_out_free_phys, %pci_name.exit.err_out_free_name_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_out_free_phys ], [ -12, %pci_name.exit.err_out_free_name_crit_edge ]
  %56 = ptrtoint ptr %name12 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %name12, align 4
  tail call void @kfree(ptr noundef %57) #4
  br label %err_out_free

err_out_free:                                     ; preds = %err_out_free_name, %if.end9.err_out_free_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_out_free_name ], [ -12, %if.end9.err_out_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #4
  br label %cleanup

cleanup:                                          ; preds = %err_out_free, %if.end45.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_out_free ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx23885_input_ir_open(ptr nocapture noundef readonly %rc) #0 align 64 {
entry:
  %params.i = alloca %struct.v4l2_subdev_ir_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %params.i) #4
  %4 = call ptr @memset(ptr %params.i, i32 255, i32 44)
  %sd_ir.i = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 35
  %5 = ptrtoint ptr %sd_ir.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sd_ir.i, align 4
  %cmp.i = icmp eq ptr %6, null
  br i1 %cmp.i, label %if.end.cx23885_input_ir_start.exit_crit_edge, label %if.end.i

if.end.cx23885_input_ir_start.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cx23885_input_ir_start.exit

if.end.i:                                         ; preds = %if.end
  %ir_input_stopping.i = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 41
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ir_input_stopping.i, i32 noundef 4) #4
  %7 = ptrtoint ptr %ir_input_stopping.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %ir_input_stopping.i, align 4
  %8 = ptrtoint ptr %sd_ir.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sd_ir.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i.if.end22.i_crit_edge, label %if.else.i

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22.i

if.else.i:                                        ; preds = %if.end.i
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops.i, align 4
  %ir.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %ir.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ir.i, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %if.else.i.if.end22.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end22.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %rx_g_parameters.i = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %rx_g_parameters.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_g_parameters.i, align 4
  %tobool6.not.i = icmp eq ptr %15, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end22.i_crit_edge, label %if.else8.i

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22.i

if.else8.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5), align 4
  %tobool9.not.i = icmp eq ptr %16, null
  br i1 %tobool9.not.i, label %if.else8.i.if.else15.i_crit_edge, label %land.lhs.true10.i

if.else8.i.if.else15.i_crit_edge:                 ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else15.i

land.lhs.true10.i:                                ; preds = %if.else8.i
  %rx_g_parameters11.i = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %rx_g_parameters11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rx_g_parameters11.i, align 4
  %tobool12.not.i = icmp eq ptr %18, null
  br i1 %tobool12.not.i, label %land.lhs.true10.i.if.else15.i_crit_edge, label %land.lhs.true10.i.if.end22.sink.split.i_crit_edge

land.lhs.true10.i.if.end22.sink.split.i_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22.sink.split.i

land.lhs.true10.i.if.else15.i_crit_edge:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else15.i

if.else15.i:                                      ; preds = %land.lhs.true10.i.if.else15.i_crit_edge, %if.else8.i.if.else15.i_crit_edge
  br label %if.end22.sink.split.i

if.end22.sink.split.i:                            ; preds = %if.else15.i, %land.lhs.true10.i.if.end22.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %15, %if.else15.i ], [ %18, %land.lhs.true10.i.if.end22.sink.split.i_crit_edge ]
  %call19.i = call i32 %.sink.i(ptr noundef nonnull %9, ptr noundef nonnull %params.i) #4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end22.sink.split.i, %land.lhs.true.i.if.end22.i_crit_edge, %if.else.i.if.end22.i_crit_edge, %if.end.i.if.end22.i_crit_edge
  %board.i = getelementptr inbounds %struct.cx23885_dev, ptr %3, i32 0, i32 18
  %19 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %board.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %20, label %if.end22.i.sw.epilog.i_crit_edge [
    i32 18, label %if.end22.i.sw.bb.i_crit_edge
    i32 24, label %if.end22.i.sw.bb.i_crit_edge3
    i32 26, label %if.end22.i.sw.bb.i_crit_edge4
    i32 3, label %if.end22.i.sw.bb.i_crit_edge5
    i32 33, label %if.end22.i.sw.bb.i_crit_edge6
    i32 45, label %if.end22.i.sw.bb.i_crit_edge7
    i32 46, label %if.end22.i.sw.bb.i_crit_edge8
    i32 47, label %if.end22.i.sw.bb.i_crit_edge9
    i32 48, label %if.end22.i.sw.bb.i_crit_edge10
    i32 49, label %if.end22.i.sw.bb.i_crit_edge11
    i32 50, label %if.end22.i.sw.bb.i_crit_edge12
    i32 51, label %if.end22.i.sw.bb.i_crit_edge13
    i32 58, label %if.end22.i.sw.bb.i_crit_edge14
    i32 34, label %if.end22.i.sw.bb23.i_crit_edge
    i32 15, label %if.end22.i.sw.bb23.i_crit_edge15
    i32 41, label %if.end22.i.sw.bb23.i_crit_edge16
    i32 40, label %if.end22.i.sw.bb23.i_crit_edge17
  ]

if.end22.i.sw.bb23.i_crit_edge17:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb23.i

if.end22.i.sw.bb23.i_crit_edge16:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb23.i

if.end22.i.sw.bb23.i_crit_edge15:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb23.i

if.end22.i.sw.bb23.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb23.i

if.end22.i.sw.bb.i_crit_edge14:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end22.i.sw.bb.i_crit_edge13:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end22.i.sw.bb.i_crit_edge12:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end22.i.sw.bb.i_crit_edge11:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end22.i.sw.bb.i_crit_edge10:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end22.i.sw.bb.i_crit_edge9:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end22.i.sw.bb.i_crit_edge8:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end22.i.sw.bb.i_crit_edge7:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end22.i.sw.bb.i_crit_edge6:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end22.i.sw.bb.i_crit_edge5:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end22.i.sw.bb.i_crit_edge4:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end22.i.sw.bb.i_crit_edge3:                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end22.i.sw.bb.i_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end22.i.sw.epilog.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end22.i.sw.bb.i_crit_edge, %if.end22.i.sw.bb.i_crit_edge3, %if.end22.i.sw.bb.i_crit_edge4, %if.end22.i.sw.bb.i_crit_edge5, %if.end22.i.sw.bb.i_crit_edge6, %if.end22.i.sw.bb.i_crit_edge7, %if.end22.i.sw.bb.i_crit_edge8, %if.end22.i.sw.bb.i_crit_edge9, %if.end22.i.sw.bb.i_crit_edge10, %if.end22.i.sw.bb.i_crit_edge11, %if.end22.i.sw.bb.i_crit_edge12, %if.end22.i.sw.bb.i_crit_edge13, %if.end22.i.sw.bb.i_crit_edge14
  %mode.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 1
  %22 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %mode.i, align 4
  %enable.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 2
  %23 = ptrtoint ptr %enable.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %enable.i, align 4
  %interrupt_enable.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 3
  %24 = ptrtoint ptr %interrupt_enable.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %interrupt_enable.i, align 1
  %shutdown.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 4
  %25 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %shutdown.i, align 2
  %modulation.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 5
  %26 = ptrtoint ptr %modulation.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %modulation.i, align 1
  %max_pulse_width.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 6
  %27 = ptrtoint ptr %max_pulse_width.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3333333, ptr %max_pulse_width.i, align 4
  %noise_filter_min_width.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 11
  %28 = ptrtoint ptr %noise_filter_min_width.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 333333, ptr %noise_filter_min_width.i, align 4
  br label %sw.epilog.sink.split.i

sw.bb23.i:                                        ; preds = %if.end22.i.sw.bb23.i_crit_edge, %if.end22.i.sw.bb23.i_crit_edge15, %if.end22.i.sw.bb23.i_crit_edge16, %if.end22.i.sw.bb23.i_crit_edge17
  %mode24.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 1
  %29 = ptrtoint ptr %mode24.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %mode24.i, align 4
  %enable25.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 2
  %30 = ptrtoint ptr %enable25.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %enable25.i, align 4
  %interrupt_enable26.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 3
  %31 = ptrtoint ptr %interrupt_enable26.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %interrupt_enable26.i, align 1
  %shutdown27.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 4
  %32 = ptrtoint ptr %shutdown27.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %shutdown27.i, align 2
  %carrier_freq.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 7
  %33 = ptrtoint ptr %carrier_freq.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 37917, ptr %carrier_freq.i, align 4
  %carrier_range_lower.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 12
  %34 = ptrtoint ptr %carrier_range_lower.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 33000, ptr %carrier_range_lower.i, align 4
  %carrier_range_upper.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 13
  %35 = ptrtoint ptr %carrier_range_upper.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 43000, ptr %carrier_range_upper.i, align 4
  %duty_cycle.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 8
  %36 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 33, ptr %duty_cycle.i, align 4
  %max_pulse_width28.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 6
  %37 = ptrtoint ptr %max_pulse_width28.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 12378022, ptr %max_pulse_width28.i, align 4
  %noise_filter_min_width29.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 11
  %38 = ptrtoint ptr %noise_filter_min_width29.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 351648, ptr %noise_filter_min_width29.i, align 4
  %modulation30.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 5
  %39 = ptrtoint ptr %modulation30.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %modulation30.i, align 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb23.i, %sw.bb.i
  %invert_level31.i = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params.i, i32 0, i32 9
  %40 = ptrtoint ptr %invert_level31.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %invert_level31.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.epilog.sink.split.i, %if.end22.i.sw.epilog.i_crit_edge
  %41 = ptrtoint ptr %sd_ir.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sd_ir.i, align 4
  %tobool35.not.i = icmp eq ptr %42, null
  br i1 %tobool35.not.i, label %sw.epilog.i.cx23885_input_ir_start.exit_crit_edge, label %if.else37.i

sw.epilog.i.cx23885_input_ir_start.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cx23885_input_ir_start.exit

if.else37.i:                                      ; preds = %sw.epilog.i
  %ops38.i = getelementptr inbounds %struct.v4l2_subdev, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %ops38.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops38.i, align 4
  %ir39.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %ir39.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ir39.i, align 4
  %tobool40.not.i = icmp eq ptr %46, null
  br i1 %tobool40.not.i, label %if.else37.i.cx23885_input_ir_start.exit_crit_edge, label %land.lhs.true41.i

if.else37.i.cx23885_input_ir_start.exit_crit_edge: ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cx23885_input_ir_start.exit

land.lhs.true41.i:                                ; preds = %if.else37.i
  %rx_s_parameters.i = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %rx_s_parameters.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_s_parameters.i, align 4
  %tobool44.not.i = icmp eq ptr %48, null
  br i1 %tobool44.not.i, label %land.lhs.true41.i.cx23885_input_ir_start.exit_crit_edge, label %if.else46.i

land.lhs.true41.i.cx23885_input_ir_start.exit_crit_edge: ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cx23885_input_ir_start.exit

if.else46.i:                                      ; preds = %land.lhs.true41.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5), align 4
  %tobool47.not.i = icmp eq ptr %49, null
  br i1 %tobool47.not.i, label %if.else46.i.if.else54.i_crit_edge, label %land.lhs.true48.i

if.else46.i.if.else54.i_crit_edge:                ; preds = %if.else46.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else54.i

land.lhs.true48.i:                                ; preds = %if.else46.i
  %rx_s_parameters49.i = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %rx_s_parameters49.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_s_parameters49.i, align 4
  %tobool50.not.i = icmp eq ptr %51, null
  br i1 %tobool50.not.i, label %land.lhs.true48.i.if.else54.i_crit_edge, label %land.lhs.true48.i.cleanup.sink.split.i_crit_edge

land.lhs.true48.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

land.lhs.true48.i.if.else54.i_crit_edge:          ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else54.i

if.else54.i:                                      ; preds = %land.lhs.true48.i.if.else54.i_crit_edge, %if.else46.i.if.else54.i_crit_edge
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else54.i, %land.lhs.true48.i.cleanup.sink.split.i_crit_edge
  %.sink84.i = phi ptr [ %48, %if.else54.i ], [ %51, %land.lhs.true48.i.cleanup.sink.split.i_crit_edge ]
  %call53.i = call i32 %.sink84.i(ptr noundef nonnull %42, ptr noundef nonnull %params.i) #4
  br label %cx23885_input_ir_start.exit

cx23885_input_ir_start.exit:                      ; preds = %cleanup.sink.split.i, %land.lhs.true41.i.cx23885_input_ir_start.exit_crit_edge, %if.else37.i.cx23885_input_ir_start.exit_crit_edge, %sw.epilog.i.cx23885_input_ir_start.exit_crit_edge, %if.end.cx23885_input_ir_start.exit_crit_edge
  %retval.0.i = phi i32 [ -19, %if.end.cx23885_input_ir_start.exit_crit_edge ], [ 0, %if.else37.i.cx23885_input_ir_start.exit_crit_edge ], [ 0, %land.lhs.true41.i.cx23885_input_ir_start.exit_crit_edge ], [ 0, %sw.epilog.i.cx23885_input_ir_start.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %params.i) #4
  br label %cleanup

cleanup:                                          ; preds = %cx23885_input_ir_start.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %cx23885_input_ir_start.exit ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx23885_input_ir_close(ptr nocapture noundef readonly %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call fastcc void @cx23885_input_ir_stop(ptr noundef nonnull %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx23885_input_ir_stop(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  %params = alloca %struct.v4l2_subdev_ir_parameters, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %params) #4
  %0 = call ptr @memset(ptr %params, i32 255, i32 44)
  %sd_ir = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 35
  %1 = ptrtoint ptr %sd_ir to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sd_ir, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ir_input_stopping = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 41
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ir_input_stopping, i32 noundef 4) #4
  %3 = ptrtoint ptr %ir_input_stopping to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %ir_input_stopping, align 4
  %4 = ptrtoint ptr %sd_ir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sd_ir, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end22_crit_edge, label %if.else

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.else:                                          ; preds = %if.end
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %ir = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ir, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.else.if.end22_crit_edge, label %land.lhs.true

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

land.lhs.true:                                    ; preds = %if.else
  %rx_g_parameters = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %rx_g_parameters to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_g_parameters, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %land.lhs.true.if.end22_crit_edge, label %if.else8

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.else8:                                         ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5), align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.else8.if.else15_crit_edge, label %land.lhs.true10

if.else8.if.else15_crit_edge:                     ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else15

land.lhs.true10:                                  ; preds = %if.else8
  %rx_g_parameters11 = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %rx_g_parameters11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_g_parameters11, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %land.lhs.true10.if.else15_crit_edge, label %land.lhs.true10.if.end22.sink.split_crit_edge

land.lhs.true10.if.end22.sink.split_crit_edge:    ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22.sink.split

land.lhs.true10.if.else15_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else15

if.else15:                                        ; preds = %land.lhs.true10.if.else15_crit_edge, %if.else8.if.else15_crit_edge
  br label %if.end22.sink.split

if.end22.sink.split:                              ; preds = %if.else15, %land.lhs.true10.if.end22.sink.split_crit_edge
  %.sink = phi ptr [ %11, %if.else15 ], [ %14, %land.lhs.true10.if.end22.sink.split_crit_edge ]
  %call19 = call i32 %.sink(ptr noundef nonnull %5, ptr noundef nonnull %params) #4
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %land.lhs.true.if.end22_crit_edge, %if.else.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %shutdown = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params, i32 0, i32 4
  %15 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %shutdown, align 2, !range !29
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp24127 = icmp eq i8 %16, 0
  br i1 %cmp24127, label %while.body.lr.ph, label %if.end22.while.end_crit_edge

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end22
  %enable = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params, i32 0, i32 2
  %interrupt_enable = getelementptr inbounds %struct.v4l2_subdev_ir_parameters, ptr %params, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end88.while.body_crit_edge, %while.body.lr.ph
  %17 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %enable, align 4
  %18 = ptrtoint ptr %interrupt_enable to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %interrupt_enable, align 1
  %19 = ptrtoint ptr %shutdown to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %shutdown, align 2
  %20 = ptrtoint ptr %sd_ir to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sd_ir, align 4
  %tobool30.not = icmp eq ptr %21, null
  br i1 %tobool30.not, label %while.body.while.end_crit_edge, label %if.else32

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.else32:                                        ; preds = %while.body
  %ops33 = getelementptr inbounds %struct.v4l2_subdev, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %ops33 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops33, align 4
  %ir34 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %ir34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ir34, align 4
  %tobool35.not = icmp eq ptr %25, null
  br i1 %tobool35.not, label %if.else32.if.end56_crit_edge, label %land.lhs.true36

if.else32.if.end56_crit_edge:                     ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

land.lhs.true36:                                  ; preds = %if.else32
  %rx_s_parameters = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %rx_s_parameters to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rx_s_parameters, align 4
  %tobool39.not = icmp eq ptr %27, null
  br i1 %tobool39.not, label %land.lhs.true36.if.end56_crit_edge, label %if.else41

land.lhs.true36.if.end56_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

if.else41:                                        ; preds = %land.lhs.true36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5), align 4
  %tobool42.not = icmp eq ptr %28, null
  br i1 %tobool42.not, label %if.else41.if.else49_crit_edge, label %land.lhs.true43

if.else41.if.else49_crit_edge:                    ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else49

land.lhs.true43:                                  ; preds = %if.else41
  %rx_s_parameters44 = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %rx_s_parameters44 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rx_s_parameters44, align 4
  %tobool45.not = icmp eq ptr %30, null
  br i1 %tobool45.not, label %land.lhs.true43.if.else49_crit_edge, label %land.lhs.true43.if.end56.sink.split_crit_edge

land.lhs.true43.if.end56.sink.split_crit_edge:    ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56.sink.split

land.lhs.true43.if.else49_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else49

if.else49:                                        ; preds = %land.lhs.true43.if.else49_crit_edge, %if.else41.if.else49_crit_edge
  br label %if.end56.sink.split

if.end56.sink.split:                              ; preds = %if.else49, %land.lhs.true43.if.end56.sink.split_crit_edge
  %.sink130 = phi ptr [ %27, %if.else49 ], [ %30, %land.lhs.true43.if.end56.sink.split_crit_edge ]
  %call53 = call i32 %.sink130(ptr noundef nonnull %21, ptr noundef nonnull %params) #4
  br label %if.end56

if.end56:                                         ; preds = %if.end56.sink.split, %land.lhs.true36.if.end56_crit_edge, %if.else32.if.end56_crit_edge
  %31 = ptrtoint ptr %sd_ir to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pr = load ptr, ptr %sd_ir, align 4
  %tobool61.not = icmp eq ptr %.pr, null
  br i1 %tobool61.not, label %if.end56.if.end88_crit_edge, label %if.else63

if.end56.if.end88_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88

if.else63:                                        ; preds = %if.end56
  %ops64 = getelementptr inbounds %struct.v4l2_subdev, ptr %.pr, i32 0, i32 6
  %32 = ptrtoint ptr %ops64 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops64, align 4
  %ir65 = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %ir65 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ir65, align 4
  %tobool66.not = icmp eq ptr %35, null
  br i1 %tobool66.not, label %if.else63.if.end88_crit_edge, label %land.lhs.true67

if.else63.if.end88_crit_edge:                     ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88

land.lhs.true67:                                  ; preds = %if.else63
  %rx_g_parameters70 = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %rx_g_parameters70 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_g_parameters70, align 4
  %tobool71.not = icmp eq ptr %37, null
  br i1 %tobool71.not, label %land.lhs.true67.if.end88_crit_edge, label %if.else73

land.lhs.true67.if.end88_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88

if.else73:                                        ; preds = %land.lhs.true67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 5), align 4
  %tobool74.not = icmp eq ptr %38, null
  br i1 %tobool74.not, label %if.else73.if.else81_crit_edge, label %land.lhs.true75

if.else73.if.else81_crit_edge:                    ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else81

land.lhs.true75:                                  ; preds = %if.else73
  %rx_g_parameters76 = getelementptr inbounds %struct.v4l2_subdev_ir_ops, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %rx_g_parameters76 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rx_g_parameters76, align 4
  %tobool77.not = icmp eq ptr %40, null
  br i1 %tobool77.not, label %land.lhs.true75.if.else81_crit_edge, label %land.lhs.true75.if.end88.sink.split_crit_edge

land.lhs.true75.if.end88.sink.split_crit_edge:    ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end88.sink.split

land.lhs.true75.if.else81_crit_edge:              ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else81

if.else81:                                        ; preds = %land.lhs.true75.if.else81_crit_edge, %if.else73.if.else81_crit_edge
  br label %if.end88.sink.split

if.end88.sink.split:                              ; preds = %if.else81, %land.lhs.true75.if.end88.sink.split_crit_edge
  %.sink131 = phi ptr [ %37, %if.else81 ], [ %40, %land.lhs.true75.if.end88.sink.split_crit_edge ]
  %call85 = call i32 %.sink131(ptr noundef nonnull %.pr, ptr noundef nonnull %params) #4
  br label %if.end88

if.end88:                                         ; preds = %if.end88.sink.split, %land.lhs.true67.if.end88_crit_edge, %if.else63.if.end88_crit_edge, %if.end56.if.end88_crit_edge
  %41 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %41)
  %.pr128 = load i8, ptr %shutdown, align 2
  %cmp24 = icmp eq i8 %.pr128, 0
  br i1 %cmp24, label %if.end88.while.body_crit_edge, label %if.end88.while.end_crit_edge

if.end88.while.end_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end88.while.body_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end88.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end22.while.end_crit_edge
  %cx25840_work = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 34
  %call90 = call zeroext i1 @flush_work(ptr noundef %cx25840_work) #4
  %ir_rx_work = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 36
  %call91 = call zeroext i1 @flush_work(ptr noundef %ir_rx_work) #4
  %ir_tx_work = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 38
  %call92 = call zeroext i1 @flush_work(ptr noundef %ir_tx_work) #4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %params) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx23885_input_fini(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @cx23885_input_ir_stop(ptr noundef %dev)
  %kernel_ir = getelementptr inbounds %struct.cx23885_dev, ptr %dev, i32 0, i32 40
  %0 = ptrtoint ptr %kernel_ir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kernel_ir, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %rc = getelementptr inbounds %struct.cx23885_kernel_ir, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rc, align 4
  tail call void @rc_unregister_device(ptr noundef %3) #4
  %4 = ptrtoint ptr %kernel_ir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %kernel_ir, align 8
  %phys = getelementptr inbounds %struct.cx23885_kernel_ir, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phys, align 4
  tail call void @kfree(ptr noundef %7) #4
  %8 = ptrtoint ptr %kernel_ir to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kernel_ir, align 8
  %name = getelementptr inbounds %struct.cx23885_kernel_ir, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name, align 4
  tail call void @kfree(ptr noundef %11) #4
  %12 = ptrtoint ptr %kernel_ir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kernel_ir, align 8
  tail call void @kfree(ptr noundef %13) #4
  %14 = ptrtoint ptr %kernel_ir to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %kernel_ir, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx23885/cx23885-input.c", i32 283, i32 12}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/cx23885/cx23885-input.c", i32 289, i32 12}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/cx23885/cx23885-input.c", i32 295, i32 12}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cx23885/cx23885-input.c", i32 301, i32 12}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx23885/cx23885-input.c", i32 308, i32 12}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx23885/cx23885-input.c", i32 318, i32 12}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/cx23885/cx23885-input.c", i32 323, i32 12}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/cx23885/cx23885-input.c", i32 335, i32 42}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cx23885/cx23885-input.c", i32 342, i32 42}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/cx23885/cx23885-input.c", i32 374, i32 20}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i8 0, i8 2}
