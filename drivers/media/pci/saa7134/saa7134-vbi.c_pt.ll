; ModuleID = '/llk/IR_all_yes/drivers/media/pci/saa7134/saa7134-vbi.c_pt.bc'
source_filename = "../drivers/media/pci/saa7134/saa7134-vbi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.saa7134_dev = type { %struct.list_head, %struct.mutex, %struct.spinlock, %struct.v4l2_device, %struct.work_struct, i32, i32, ptr, ptr, ptr, %struct.saa7134_dmasound, i32, ptr, [32 x i8], i32, ptr, i8, i8, ptr, ptr, i32, i32, i32, i8, i8, i32, i32, %struct.i2c_adapter, %struct.i2c_client, [256 x i8], i32, %struct.v4l2_framebuffer, ptr, i32, i32, %struct.v4l2_window, [8 x %struct.v4l2_clip], i32, ptr, %struct.saa7134_dmaqueue, %struct.vb2_queue, %struct.saa7134_dmaqueue, %struct.vb2_queue, i32, ptr, i32, i32, i32, i32, %struct.pm_qos_request, %struct.saa7134_ts, %struct.saa7134_dmaqueue, i32, i32, ptr, ptr, ptr, %struct.vb2_queue, %struct.work_struct, i32, %struct.v4l2_ctrl_handler, ptr, ptr, %struct.v4l2_ctrl_handler, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_rect, i32, %struct.saa7134_thread, ptr, ptr, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, %struct.IR_i2c_init_data, ptr, [9 x %struct.media_entity], [9 x %struct.media_pad], %struct.media_entity, [2 x %struct.media_pad], %struct.media_pad, %struct.media_pad, ptr, %struct.vb2_dvb_frontends, ptr, ptr, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.saa7134_dmasound = type { %struct.mutex, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.saa7134_pgtable, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr }
%struct.saa7134_pgtable = type { i32, ptr, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_framebuffer = type { i32, i32, ptr, %struct.anon.143 }
%struct.anon.143 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_window = type { %struct.v4l2_rect, i32, i32, ptr, i32, ptr, i8 }
%struct.v4l2_clip = type { %struct.v4l2_rect, ptr }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.saa7134_ts = type { i32, i32 }
%struct.saa7134_dmaqueue = type { ptr, ptr, %struct.list_head, %struct.timer_list, i32, i32, %struct.saa7134_pgtable }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.saa7134_thread = type { ptr, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.128 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.vb2_dvb_frontends = type { %struct.list_head, %struct.mutex, %struct.dvb_adapter, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.saa7134_tvnorm = type { ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.saa7134_buf = type { %struct.vb2_v4l2_buffer, i32, ptr, %struct.list_head }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.132, i32 }
%union.anon.132 = type { i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sg_table = type { ptr, i32, i32 }

@__param_str_vbi_debug = internal constant [18 x i8] c"saa7134.vbi_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@vbi_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vbi_debug = internal constant %struct.kernel_param { ptr @__param_str_vbi_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @vbi_debug } }, section "__param", align 4
@__UNIQUE_ID_vbi_debugtype387 = internal constant [31 x i8] c"saa7134.parmtype=vbi_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vbi_debug388 = internal constant [51 x i8] c"saa7134.parm=vbi_debug:enable debug messages [vbi]\00", section ".modinfo", align 1
@__param_str_vbibufs = internal constant [16 x i8] c"saa7134.vbibufs\00", align 1
@vbibufs = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_vbibufs = internal constant %struct.kernel_param { ptr @__param_str_vbibufs, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @vbibufs } }, section "__param", align 4
@__UNIQUE_ID_vbibufstype389 = internal constant [29 x i8] c"saa7134.parmtype=vbibufs:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vbibufs390 = internal constant [55 x i8] c"saa7134.parm=vbibufs:number of vbi buffers, range 2-32\00", section ".modinfo", align 1
@saa7134_vbi_qops = dso_local constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr @buffer_init, ptr @buffer_prepare, ptr null, ptr null, ptr @saa7134_vb2_start_streaming, ptr @saa7134_vb2_stop_streaming, ptr @saa7134_vb2_buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@saa7134_vbi_init1.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(&dev->vbi_q.timeout)\00", [42 x i8] zeroinitializer }, align 32
@buffer_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017saa7134: vbi: buffer_activate [%p]\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"buffer_activate\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/pci/saa7134/saa7134-vbi.c\00", [56 x i8] zeroinitializer }, align 32
@buffer_activate._entry_ptr = internal global ptr @buffer_activate._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@buffer_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013saa7134: The buffer is not page-aligned\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"buffer_prepare\00", [17 x i8] zeroinitializer }, align 32
@buffer_prepare._entry_ptr = internal global ptr @buffer_prepare._entry, section ".printk_index", align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [10 x i8] c"vbi_debug\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 20, i32 21 }
@___asan_gen_.10 = private unnamed_addr constant [8 x i8] c"vbibufs\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 24, i32 21 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"saa7134_vbi_qops\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 159, i32 22 }
@___asan_gen_.16 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 175, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 76, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private constant [43 x i8] c"../drivers/media/pci/saa7134/saa7134-vbi.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 115, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 1163, i32 7 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_vbi_debug388, ptr @__UNIQUE_ID_vbi_debugtype387, ptr @__UNIQUE_ID_vbibufs390, ptr @__UNIQUE_ID_vbibufstype389, ptr @__param_vbi_debug, ptr @__param_vbibufs, ptr @buffer_activate._entry, ptr @buffer_activate._entry_ptr, ptr @buffer_prepare._entry, ptr @buffer_prepare._entry_ptr, ptr @vbi_debug, ptr @vbibufs, ptr @saa7134_vbi_qops, ptr @saa7134_vbi_init1.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbibufs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_vbi_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7134_vbi_init1.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef %nbuffers, ptr nocapture noundef writeonly %nplanes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tvnorm = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 61
  %4 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tvnorm, align 4
  %vbi_v_stop_0 = getelementptr inbounds %struct.saa7134_tvnorm, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %vbi_v_stop_0 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vbi_v_stop_0, align 4
  %vbi_v_start_0 = getelementptr inbounds %struct.saa7134_tvnorm, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %vbi_v_start_0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vbi_v_start_0, align 8
  %sub = add i32 %7, 1
  %add = sub i32 %sub, %9
  %10 = tail call i32 @llvm.umin.i32(i32 %add, i32 17)
  %vbi_vlen = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 48
  %11 = ptrtoint ptr %vbi_vlen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %vbi_vlen, align 8
  %vbi_hlen = getelementptr inbounds %struct.saa7134_dev, ptr %3, i32 0, i32 47
  %12 = ptrtoint ptr %vbi_hlen to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2048, ptr %vbi_hlen, align 4
  %mul7 = shl nuw nsw i32 %10, 12
  %13 = ptrtoint ptr %nbuffers to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nbuffers, align 4
  %call = tail call i32 @saa7134_buffer_count(i32 noundef %mul7, i32 noundef %14) #6
  %15 = ptrtoint ptr %nbuffers to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call, ptr %nbuffers, align 4
  %16 = ptrtoint ptr %nplanes to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %nplanes, align 4
  %17 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %mul7, ptr %sizes, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @buffer_init(ptr nocapture noundef %vb2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb2, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %curr = getelementptr inbounds %struct.saa7134_dmaqueue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %curr, align 4
  %activate = getelementptr inbounds %struct.saa7134_buf, ptr %vb2, i32 0, i32 2
  %5 = ptrtoint ptr %activate to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @buffer_activate, ptr %activate, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_prepare(ptr noundef %vb2) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vb2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb2, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call ptr @vb2_plane_cookie(ptr noundef %vb2, i32 noundef 0) #6
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %vbi_hlen = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 47
  %10 = ptrtoint ptr %vbi_hlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vbi_hlen, align 4
  %vbi_vlen = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 48
  %12 = ptrtoint ptr %vbi_vlen to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vbi_vlen, align 8
  %mul = shl i32 %11, 1
  %mul7 = mul i32 %mul, %13
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb2, i32 0, i32 4
  %14 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  br i1 %cmp.not.i, label %vb2_plane_size.exit, label %vb2_plane_size.exit.thread

vb2_plane_size.exit:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul7)
  %cmp.not = icmp eq i32 %mul7, 0
  br i1 %cmp.not, label %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge, label %vb2_plane_size.exit.cleanup_crit_edge

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge: ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %vb2_set_plane_payload.exit

vb2_plane_size.exit.thread:                       ; preds = %if.end
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb2, i32 0, i32 10, i32 0, i32 4
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %mul7)
  %cmp34 = icmp ult i32 %17, %mul7
  br i1 %cmp34, label %vb2_plane_size.exit.thread.cleanup_crit_edge, label %if.then.i32

vb2_plane_size.exit.thread.cleanup_crit_edge:     ; preds = %vb2_plane_size.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i32:                                      ; preds = %vb2_plane_size.exit.thread
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %mul7)
  %cmp1.i = icmp ult i32 %19, %mul7
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i32.if.end42.i_crit_edge

if.then.i32.if.end42.i_crit_edge:                 ; preds = %if.then.i32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

land.rhs.i:                                       ; preds = %if.then.i32
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !44

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 1163, i32 noundef 9, ptr noundef null) #6
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length.i, align 8
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.then.i32.if.end42.i_crit_edge
  %size.addr.0.i = phi i32 [ %21, %if.then38.i ], [ %mul7, %if.then.i32.if.end42.i_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb2, i32 0, i32 10, i32 0, i32 3
  %22 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.end42.i, %vb2_plane_size.exit.vb2_set_plane_payload.exit_crit_edge
  %pci = getelementptr inbounds %struct.saa7134_dev, ptr %5, i32 0, i32 15
  %23 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pci, align 4
  %pt = getelementptr inbounds %struct.saa7134_dmaqueue, ptr %3, i32 0, i32 6
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %nents = getelementptr inbounds %struct.sg_table, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nents, align 4
  %call12 = tail call i32 @saa7134_buffer_startpage(ptr noundef %vb2) #6
  %call13 = tail call i32 @saa7134_pgtable_build(ptr noundef %24, ptr noundef %pt, ptr noundef %26, i32 noundef %28, i32 noundef %call12) #6
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %vb2_plane_size.exit.thread.cleanup_crit_edge, %vb2_plane_size.exit.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call13, %vb2_set_plane_payload.exit ], [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ -22, %vb2_plane_size.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_vb2_start_streaming(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_vb2_stop_streaming(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_vb2_buffer_queue(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @saa7134_vbi_init1(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vbi_q = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 41
  %queue = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 41, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 41, i32 2, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %queue, ptr %prev.i, align 4
  %timeout = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 41, i32 3
  tail call void @init_timer_key(ptr noundef %timeout, ptr noundef nonnull @saa7134_buffer_timeout, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @saa7134_vbi_init1.__key) #6
  %2 = ptrtoint ptr %vbi_q to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %vbi_q, align 8
  %3 = load i32, ptr @vbibufs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp ult i32 %3, 2
  br i1 %cmp, label %entry.if.end6.sink.split_crit_edge, label %if.end

entry.if.end6.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.sink.split

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp4 = icmp ugt i32 %3, 32
  br i1 %cmp4, label %if.end.if.end6.sink.split_crit_edge, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end.if.end6.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.end.if.end6.sink.split_crit_edge, %entry.if.end6.sink.split_crit_edge
  %.sink = phi i32 [ 2, %entry.if.end6.sink.split_crit_edge ], [ 32, %if.end.if.end6.sink.split_crit_edge ]
  store i32 %.sink, ptr @vbibufs, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.end.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_buffer_timeout(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @saa7134_vbi_fini(ptr nocapture noundef readnone %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @saa7134_irq_vbi_done(ptr noundef %dev, i32 noundef %status) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %slock = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %slock) #6
  %vbi_q = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 41
  %curr = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 41, i32 1
  %0 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %curr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %entry
  %and = and i32 %status, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %top_seen = getelementptr inbounds %struct.saa7134_buf, ptr %1, i32 0, i32 1
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %top_seen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %top_seen, align 8
  br label %done

if.end:                                           ; preds = %if.then
  %3 = ptrtoint ptr %top_seen to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %top_seen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.end.done_crit_edge, label %if.end9

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @saa7134_buffer_finish(ptr noundef %dev, ptr noundef %vbi_q, i32 noundef 5) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end9, %entry.if.end11_crit_edge
  tail call void @saa7134_buffer_next(ptr noundef %dev, ptr noundef %vbi_q) #6
  br label %done

done:                                             ; preds = %if.end11, %if.end.done_crit_edge, %if.then1
  tail call void @_raw_spin_unlock(ptr noundef %slock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_buffer_finish(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @saa7134_buffer_next(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_buffer_count(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @buffer_activate(ptr noundef %dev, ptr noundef %buf, ptr nocapture noundef readnone %next) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_priv, align 4
  %4 = load i32, ptr @vbi_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %buf) #9
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %top_seen = getelementptr inbounds %struct.saa7134_buf, ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %top_seen to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %top_seen, align 8
  tail call fastcc void @task_init(ptr noundef %dev, i32 noundef 64)
  tail call fastcc void @task_init(ptr noundef %dev, i32 noundef 128)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !45
  tail call void @arm_heavy_mb() #6
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %6 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bmmio, align 8
  %add.ptr = getelementptr i8, ptr %7, i32 769
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 6) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmmio, align 8
  %add.ptr11 = getelementptr i8, ptr %9, i32 771
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 6) #6, !srcloc !46
  %call12 = tail call i32 @saa7134_buffer_base(ptr noundef %buf) #6
  %dma = getelementptr inbounds %struct.saa7134_dmaqueue, ptr %3, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 4
  %shr = lshr i32 %11, 12
  %or = or i32 %shr, 9437184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %call12)
  %lmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 18
  %13 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lmmio, align 4
  %add.ptr16 = getelementptr i32, ptr %14, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %12) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !50
  tail call void @arm_heavy_mb() #6
  %vbi_hlen = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 47
  %15 = ptrtoint ptr %vbi_hlen to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vbi_hlen, align 4
  %vbi_vlen = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 48
  %17 = ptrtoint ptr %vbi_vlen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vbi_vlen, align 8
  %mul = mul i32 %18, %16
  %add = add i32 %mul, %call12
  %19 = tail call i32 @llvm.bswap.i32(i32 %add)
  %20 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio, align 4
  %add.ptr21 = getelementptr i32, ptr %21, i32 137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %19) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %vbi_hlen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vbi_hlen, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio, align 4
  %add.ptr27 = getelementptr i32, ptr %26, i32 138
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %24) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %or)
  %28 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio, align 4
  %add.ptr32 = getelementptr i32, ptr %29, i32 139
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %27) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio, align 4
  %add.ptr37 = getelementptr i32, ptr %31, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37, i32 %12) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %vbi_hlen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vbi_hlen, align 4
  %34 = ptrtoint ptr %vbi_vlen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vbi_vlen, align 8
  %mul43 = mul i32 %35, %33
  %add44 = add i32 %mul43, %call12
  %36 = tail call i32 @llvm.bswap.i32(i32 %add44)
  %37 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lmmio, align 4
  %add.ptr46 = getelementptr i32, ptr %38, i32 141
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %36) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %vbi_hlen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vbi_hlen, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %lmmio, align 4
  %add.ptr52 = getelementptr i32, ptr %43, i32 142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 %41) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %lmmio, align 4
  %add.ptr57 = getelementptr i32, ptr %45, i32 143
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 %27) #6, !srcloc !49
  %call58 = tail call i32 @saa7134_set_dmabits(ptr noundef %dev) #6
  %timeout = getelementptr inbounds %struct.saa7134_dmaqueue, ptr %3, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %add60 = add i32 %46, 50
  %call61 = tail call i32 @mod_timer(ptr noundef %timeout, i32 noundef %add60) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @task_init(ptr nocapture noundef readonly %dev, i32 noundef %task) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tvnorm = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 61
  %0 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tvnorm, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %h_start = getelementptr inbounds %struct.saa7134_tvnorm, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %h_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %h_start, align 8
  %conv = trunc i32 %3 to i8
  %bmmio = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 19
  %4 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bmmio, align 8
  %add = add i32 %task, 4
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %h_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %h_start, align 8
  %shr = lshr i32 %7, 8
  %conv5 = trunc i32 %shr to i8
  %8 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bmmio, align 8
  %add7 = add i32 %task, 5
  %add.ptr8 = getelementptr i8, ptr %9, i32 %add7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr8, i8 %conv5) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %h_stop = getelementptr inbounds %struct.saa7134_tvnorm, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %h_stop to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %h_stop, align 4
  %conv13 = trunc i32 %11 to i8
  %12 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bmmio, align 8
  %add15 = add i32 %task, 6
  %add.ptr16 = getelementptr i8, ptr %13, i32 %add15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr16, i8 %conv13) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %h_stop to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %h_stop, align 4
  %shr21 = lshr i32 %15, 8
  %conv22 = trunc i32 %shr21 to i8
  %16 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bmmio, align 8
  %add24 = add i32 %task, 7
  %add.ptr25 = getelementptr i8, ptr %17, i32 %add24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25, i8 %conv22) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %vbi_v_start_0 = getelementptr inbounds %struct.saa7134_tvnorm, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %vbi_v_start_0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vbi_v_start_0, align 8
  %conv30 = trunc i32 %19 to i8
  %20 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bmmio, align 8
  %add32 = add i32 %task, 8
  %add.ptr33 = getelementptr i8, ptr %21, i32 %add32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33, i8 %conv30) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %vbi_v_start_0 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vbi_v_start_0, align 8
  %shr38 = lshr i32 %23, 8
  %conv39 = trunc i32 %shr38 to i8
  %24 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bmmio, align 8
  %add41 = add i32 %task, 9
  %add.ptr42 = getelementptr i8, ptr %25, i32 %add41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42, i8 %conv39) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %vbi_v_stop_0 = getelementptr inbounds %struct.saa7134_tvnorm, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %vbi_v_stop_0 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %vbi_v_stop_0, align 4
  %conv47 = trunc i32 %27 to i8
  %28 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bmmio, align 8
  %add49 = add i32 %task, 10
  %add.ptr50 = getelementptr i8, ptr %29, i32 %add49
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr50, i8 %conv47) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %vbi_v_stop_0 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vbi_v_stop_0, align 4
  %shr55 = lshr i32 %31, 8
  %conv56 = trunc i32 %shr55 to i8
  %32 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bmmio, align 8
  %add58 = add i32 %task, 11
  %add.ptr59 = getelementptr i8, ptr %33, i32 %add58
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr59, i8 %conv56) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bmmio, align 8
  %add64 = add i32 %task, 40
  %add.ptr65 = getelementptr i8, ptr %35, i32 %add64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr65, i8 0) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %36 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bmmio, align 8
  %add70 = add i32 %task, 41
  %add.ptr71 = getelementptr i8, ptr %37, i32 %add70
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr71, i8 2) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %38 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bmmio, align 8
  %add76 = add i32 %task, 42
  %add.ptr77 = getelementptr i8, ptr %39, i32 %add76
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr77, i8 0) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bmmio, align 8
  %add82 = add i32 %task, 43
  %add.ptr83 = getelementptr i8, ptr %41, i32 %add82
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr83, i8 0) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %vbi_hlen = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 47
  %42 = ptrtoint ptr %vbi_hlen to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vbi_hlen, align 4
  %conv88 = trunc i32 %43 to i8
  %44 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bmmio, align 8
  %add90 = add i32 %task, 12
  %add.ptr91 = getelementptr i8, ptr %45, i32 %add90
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr91, i8 %conv88) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %vbi_hlen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vbi_hlen, align 4
  %shr96 = lshr i32 %47, 8
  %conv97 = trunc i32 %shr96 to i8
  %48 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bmmio, align 8
  %add99 = add i32 %task, 13
  %add.ptr100 = getelementptr i8, ptr %49, i32 %add99
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr100, i8 %conv97) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %vbi_vlen = getelementptr inbounds %struct.saa7134_dev, ptr %dev, i32 0, i32 48
  %50 = ptrtoint ptr %vbi_vlen to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vbi_vlen, align 8
  %conv105 = trunc i32 %51 to i8
  %52 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %bmmio, align 8
  %add107 = add i32 %task, 14
  %add.ptr108 = getelementptr i8, ptr %53, i32 %add107
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr108, i8 %conv105) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %54 = ptrtoint ptr %vbi_vlen to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vbi_vlen, align 8
  %shr113 = lshr i32 %55, 8
  %conv114 = trunc i32 %shr113 to i8
  %56 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bmmio, align 8
  %add116 = add i32 %task, 15
  %add.ptr117 = getelementptr i8, ptr %57, i32 %add116
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr117, i8 %conv114) #6, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bmmio, align 8
  %add122 = add i32 %task, 2
  %add.ptr123 = getelementptr i8, ptr %59, i32 %add122
  %60 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr123) #6, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %61 = and i8 %60, 63
  %62 = ptrtoint ptr %bmmio to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bmmio, align 8
  %add.ptr130 = getelementptr i8, ptr %63, i32 %add122
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr130, i8 %61) #6, !srcloc !46
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_buffer_base(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_set_dmabits(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_pgtable_build(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @saa7134_buffer_startpage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !21, !23, !24, !25, !26, !27, !29, !30, !31, !32, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__param_vbi_debug, !1, !"__param_vbi_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/saa7134/saa7134-vbi.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_vbi_debugtype387, !1, !"__UNIQUE_ID_vbi_debugtype387", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_vbi_debug388, !4, !"__UNIQUE_ID_vbi_debug388", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/saa7134/saa7134-vbi.c", i32 22, i32 1}
!5 = !{ptr @__param_vbibufs, !6, !"__param_vbibufs", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/saa7134/saa7134-vbi.c", i32 25, i32 1}
!7 = !{ptr @__UNIQUE_ID_vbibufstype389, !6, !"__UNIQUE_ID_vbibufstype389", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_vbibufs390, !9, !"__UNIQUE_ID_vbibufs390", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/saa7134/saa7134-vbi.c", i32 26, i32 1}
!10 = !{ptr @saa7134_vbi_qops, !11, !"saa7134_vbi_qops", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/saa7134/saa7134-vbi.c", i32 159, i32 22}
!12 = !{ptr @saa7134_vbi_init1.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/saa7134/saa7134-vbi.c", i32 175, i32 2}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @vbi_debug, !16, !"vbi_debug", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/saa7134/saa7134-vbi.c", i32 20, i32 21}
!17 = !{ptr @__param_str_vbi_debug, !1, !"__param_str_vbi_debug", i1 false, i1 false}
!18 = !{ptr @__param_str_vbibufs, !6, !"__param_str_vbibufs", i1 false, i1 false}
!19 = !{ptr @vbibufs, !20, !"vbibufs", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/saa7134/saa7134-vbi.c", i32 24, i32 21}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/saa7134/saa7134-vbi.c", i32 76, i32 2}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @buffer_activate._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @buffer_activate._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/saa7134/saa7134-vbi.c", i32 115, i32 3}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @buffer_prepare._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @buffer_prepare._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2158807085}
!46 = !{i64 5015665}
!47 = !{i64 2158807426}
!48 = !{i64 2158807844}
!49 = !{i64 5015862}
!50 = !{i64 2158808449}
!51 = !{i64 2158809104}
!52 = !{i64 2158809678}
!53 = !{i64 2158810228}
!54 = !{i64 2158810833}
!55 = !{i64 2158811488}
!56 = !{i64 2158812062}
!57 = !{i64 2158797446}
!58 = !{i64 2158797884}
!59 = !{i64 2158798325}
!60 = !{i64 2158798763}
!61 = !{i64 2158799208}
!62 = !{i64 2158799652}
!63 = !{i64 2158800099}
!64 = !{i64 2158800543}
!65 = !{i64 2158800966}
!66 = !{i64 2158801373}
!67 = !{i64 2158801760}
!68 = !{i64 2158802141}
!69 = !{i64 2158802554}
!70 = !{i64 2158802979}
!71 = !{i64 2158803406}
!72 = !{i64 2158803831}
!73 = !{i64 2158804769}
!74 = !{i64 5016060}
!75 = !{i64 2158804958}
