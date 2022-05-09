; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx88/cx88-vbi.c_pt.bc'
source_filename = "../drivers/media/pci/cx88/cx88-vbi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vb2_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sram_channel = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.cx88_core = type { %struct.list_head, %struct.refcount_struct, i32, [32 x i8], i32, i32, i32, ptr, ptr, [3 x i32], i32, %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.v4l2_ctrl_handler, ptr, ptr, i32, %struct.cx88_board, i32, ptr, ptr, ptr, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.IR_i2c_init_data, %struct.wm8775_platform_data, %struct.mutex, i32, ptr, ptr, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx88_board = type { ptr, i32, i32, i8, i8, i32, [8 x %struct.cx88_input], %struct.cx88_input, i32, i32, i32, i32 }
%struct.cx88_input = type { i32, i32, i32, i32, i32, i8 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.wm8775_platform_data = type { i8 }
%struct.cx88_buffer = type { %struct.vb2_v4l2_buffer, %struct.list_head, i32, %struct.cx88_riscmem }
%struct.vb2_v4l2_buffer = type { %struct.vb2_buffer, i32, i32, %struct.v4l2_timecode, i32, i32, i8, [8 x %struct.vb2_plane] }
%struct.vb2_buffer = type { ptr, i32, i32, i32, i32, i64, ptr, %struct.media_request_object, i32, i8, [8 x %struct.vb2_plane], %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_timecode = type { i32, i32, i8, i8, i8, i8, [4 x i8] }
%struct.vb2_plane = type { ptr, ptr, i32, i32, i32, i32, %union.anon.138, i32 }
%union.anon.138 = type { i32 }
%struct.cx88_riscmem = type { i32, ptr, ptr, i32 }
%struct.cx88_dmaqueue = type { %struct.list_head, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.cx8800_dev = type { ptr, %struct.spinlock, i32, %struct.video_device, %struct.video_device, %struct.video_device, ptr, i8, i8, ptr, %struct.cx88_dmaqueue, %struct.vb2_queue, %struct.cx88_dmaqueue, %struct.vb2_queue, %struct.cx8800_suspend_state }
%struct.cx8800_suspend_state = type { i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.147, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.147 = type { ptr }

@__param_str_vbi_debug = internal constant [17 x i8] c"cx8800.vbi_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@vbi_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_vbi_debug = internal constant %struct.kernel_param { ptr @__param_str_vbi_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @vbi_debug } }, section "__param", align 4
@__UNIQUE_ID_vbi_debugtype385 = internal constant [30 x i8] c"cx8800.parmtype=vbi_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vbi_debug386 = internal constant [50 x i8] c"cx8800.parm=vbi_debug:enable debug messages [vbi]\00", section ".modinfo", align 1
@cx8800_restart_vbi_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017cx8800: %s: vbi:restart_queue [%p/%d]: restart dma\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cx8800_restart_vbi_queue\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/pci/cx88/cx88-vbi.c\00", [62 x i8] zeroinitializer }, align 32
@cx8800_restart_vbi_queue._entry_ptr = internal global ptr @cx8800_restart_vbi_queue._entry, section ".printk_index", align 4
@cx8800_vbi_qops = dso_local constant { %struct.vb2_ops, [48 x i8] } { %struct.vb2_ops { ptr @queue_setup, ptr @vb2_ops_wait_prepare, ptr @vb2_ops_wait_finish, ptr null, ptr null, ptr @buffer_prepare, ptr @buffer_finish, ptr null, ptr @start_streaming, ptr @stop_streaming, ptr @buffer_queue, ptr null }, [48 x i8] zeroinitializer }, align 32
@cx88_sram_channels = external dso_local constant [0 x %struct.sram_channel], align 4
@vb2_set_plane_payload.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"include/media/videobuf2-core.h\00", [33 x i8] zeroinitializer }, align 32
@buffer_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\017cx8800: %s: vbi:[%p/%d] vbi_queue - first active\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"buffer_queue\00", [19 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr = internal global ptr @buffer_queue._entry, section ".printk_index", align 4
@buffer_queue._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\017cx8800: %s: vbi:[%p/%d] buffer_queue - append to active\0A\00", [37 x i8] zeroinitializer }, align 32
@buffer_queue._entry_ptr.8 = internal global ptr @buffer_queue._entry.6, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [10 x i8] c"vbi_debug\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 11, i32 21 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 107, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"cx8800_vbi_qops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 227, i32 22 }
@___asan_gen_.28 = private unnamed_addr constant [34 x i8] c"../include/media/videobuf2-core.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 1163, i32 7 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 182, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.43 = private constant [37 x i8] c"../drivers/media/pci/cx88/cx88-vbi.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 190, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_vbi_debug386, ptr @__UNIQUE_ID_vbi_debugtype385, ptr @__param_vbi_debug, ptr @buffer_queue._entry, ptr @buffer_queue._entry.6, ptr @buffer_queue._entry_ptr, ptr @buffer_queue._entry_ptr.8, ptr @cx8800_restart_vbi_queue._entry, ptr @cx8800_restart_vbi_queue._entry_ptr, ptr @vbi_debug, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cx8800_vbi_qops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbi_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_restart_vbi_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx8800_vbi_qops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer_queue._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx8800_vbi_fmt(ptr noundef %file, ptr nocapture noundef readnone %priv, ptr nocapture noundef writeonly %f) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @video_devdata(ptr noundef %file) #5
  %driver_data.i.i.i = getelementptr inbounds %struct.video_device, ptr %call.i, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %fmt = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1
  %samples_per_line = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 2
  %2 = ptrtoint ptr %samples_per_line to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2048, ptr %samples_per_line, align 4
  %sample_format = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 3
  %3 = ptrtoint ptr %sample_format to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1497715271, ptr %sample_format, align 4
  %offset = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 244, ptr %offset, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %tvnorm = getelementptr inbounds %struct.cx88_core, ptr %6, i32 0, i32 28
  %7 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %tvnorm, align 8
  %and = and i64 %8, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end32.sink.split_crit_edge

entry.if.end32.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.sink.split

if.else:                                          ; preds = %entry
  %and15 = and i64 %8, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and15)
  %tobool16.not = icmp eq i64 %and15, 0
  br i1 %tobool16.not, label %if.else.if.end32_crit_edge, label %if.else.if.end32.sink.split_crit_edge

if.else.if.end32.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.sink.split

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

if.end32.sink.split:                              ; preds = %if.else.if.end32.sink.split_crit_edge, %entry.if.end32.sink.split_crit_edge
  %.sink49 = phi i32 [ 28636363, %entry.if.end32.sink.split_crit_edge ], [ 35468950, %if.else.if.end32.sink.split_crit_edge ]
  %.sink48 = phi i32 [ 10, %entry.if.end32.sink.split_crit_edge ], [ 6, %if.else.if.end32.sink.split_crit_edge ]
  %.sink47 = phi i32 [ 273, %entry.if.end32.sink.split_crit_edge ], [ 319, %if.else.if.end32.sink.split_crit_edge ]
  %.sink46 = phi i32 [ 12, %entry.if.end32.sink.split_crit_edge ], [ 18, %if.else.if.end32.sink.split_crit_edge ]
  %9 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink49, ptr %fmt, align 4
  %start21 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 4
  %10 = ptrtoint ptr %start21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink48, ptr %start21, align 4
  %arrayidx25 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5
  %11 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink47, ptr %arrayidx25, align 4
  %count27 = getelementptr inbounds %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %count27 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink46, ptr %count27, align 4
  %arrayidx31 = getelementptr %struct.v4l2_format, ptr %f, i32 0, i32 1, i32 0, i32 5, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink46, ptr %arrayidx31, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end32.sink.split, %if.else.if.end32_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx8800_stop_vbi_dma(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 815120
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %5 = and i32 %4, 2013265919
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr4 = getelementptr i32, ptr %7, i32 815120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %5) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %9, i32 802912
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %11 = and i32 %10, -402653185
  %12 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lmmio, align 4
  %add.ptr18 = getelementptr i32, ptr %13, i32 802912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %11) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %add.ptr25 = getelementptr i32, ptr %15, i32 524304
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %17 = and i32 %16, -16777217
  %18 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio, align 4
  %add.ptr32 = getelementptr i32, ptr %19, i32 524304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %17) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lmmio, align 4
  %add.ptr39 = getelementptr i32, ptr %21, i32 524308
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %23 = and i32 %22, 2013262079
  %24 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio, align 4
  %add.ptr46 = getelementptr i32, ptr %25, i32 524308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %23) #5, !srcloc !40
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx8800_restart_vbi_queue(ptr nocapture noundef readonly %dev, ptr noundef %q) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %q to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %q, align 4
  %cmp.i.not = icmp eq ptr %1, %q
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -736
  %2 = load i32, ptr @vbi_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp ugt i32 %2, 1
  br i1 %cmp, label %do.end, label %if.end.do.end8_crit_edge

if.end.do.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %index = getelementptr i8, ptr %1, i32 -732
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %add.ptr, i32 noundef %4) #8
  br label %do.end8

do.end8:                                          ; preds = %do.end, %if.end.do.end8_crit_edge
  tail call fastcc void @cx8800_start_vbi_dma(ptr noundef %dev, ptr noundef %q, ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx8800_start_vbi_dma(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %q, ptr nocapture noundef readonly %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %dma = getelementptr inbounds %struct.cx88_buffer, ptr %buf, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma, align 4
  %call = tail call i32 @cx88_sram_channel_setup(ptr noundef %1, ptr noundef getelementptr inbounds ([0 x %struct.sram_channel], ptr @cx88_sram_channels, i32 0, i32 3), i32 noundef 2048, i32 noundef %3) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %5, i32 802922
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 8913920) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lmmio, align 4
  %add.ptr7 = getelementptr i32, ptr %7, i32 815119
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 50331648) #5, !srcloc !40
  %count = getelementptr inbounds %struct.cx88_dmaqueue, ptr %q, i32 0, i32 1
  %8 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %count, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lmmio, align 4
  %add.ptr12 = getelementptr i32, ptr %10, i32 524304
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  %pci_irqmask = getelementptr inbounds %struct.cx88_core, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %pci_irqmask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pci_irqmask, align 8
  %14 = or i32 %11, 16777216
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %or20 = or i32 %15, %13
  %16 = tail call i32 @llvm.bswap.i32(i32 %or20)
  %17 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lmmio, align 4
  %add.ptr22 = getelementptr i32, ptr %18, i32 524304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %16) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lmmio, align 4
  %add.ptr29 = getelementptr i32, ptr %20, i32 524308
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  %22 = or i32 %21, -2013262080
  %23 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lmmio, align 4
  %add.ptr36 = getelementptr i32, ptr %24, i32 524308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %22) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %25 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lmmio, align 4
  %add.ptr43 = getelementptr i32, ptr %26, i32 802912
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  %28 = or i32 %27, 402653184
  %29 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lmmio, align 4
  %add.ptr50 = getelementptr i32, ptr %30, i32 802912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %28) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lmmio, align 4
  %add.ptr57 = getelementptr i32, ptr %32, i32 524301
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr57) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  %34 = or i32 %33, 536870912
  %35 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lmmio, align 4
  %add.ptr64 = getelementptr i32, ptr %36, i32 524301
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 %34) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %lmmio, align 4
  %add.ptr71 = getelementptr i32, ptr %38, i32 815120
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr71) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  %40 = or i32 %39, -2013265920
  %41 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lmmio, align 4
  %add.ptr78 = getelementptr i32, ptr %42, i32 815120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 %40) #5, !srcloc !40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @queue_setup(ptr nocapture noundef readonly %q, ptr nocapture noundef readnone %num_buffers, ptr nocapture noundef writeonly %num_planes, ptr nocapture noundef writeonly %sizes, ptr nocapture noundef readnone %alloc_devs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %2 = ptrtoint ptr %num_planes to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %num_planes, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %tvnorm = getelementptr inbounds %struct.cx88_core, ptr %4, i32 0, i32 28
  %5 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tvnorm, align 8
  %and = and i64 %6, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %. = select i1 %tobool.not, i32 73728, i32 49152
  %7 = ptrtoint ptr %sizes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %., ptr %sizes, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_prepare(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_ops_wait_finish(ptr noundef) #1

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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %tvnorm = getelementptr inbounds %struct.cx88_core, ptr %5, i32 0, i32 28
  %6 = ptrtoint ptr %tvnorm to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %tvnorm, align 8
  %and = and i64 %7, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %. = select i1 %tobool.not, i32 18, i32 12
  %mul4 = shl nuw nsw i32 %., 12
  %num_planes.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 4
  %8 = ptrtoint ptr %num_planes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_planes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 0
  br i1 %cmp.not.i, label %entry.cleanup_crit_edge, label %vb2_plane_size.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

vb2_plane_size.exit:                              ; preds = %entry
  %length.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 4
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %mul4)
  %cmp = icmp ult i32 %11, %mul4
  br i1 %cmp, label %vb2_plane_size.exit.cleanup_crit_edge, label %if.then.i26

vb2_plane_size.exit.cleanup_crit_edge:            ; preds = %vb2_plane_size.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.i26:                                      ; preds = %vb2_plane_size.exit
  %mul = shl nuw nsw i32 %., 11
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %mul4)
  %cmp1.i = icmp ult i32 %13, %mul4
  br i1 %cmp1.i, label %land.rhs.i, label %if.then.i26.vb2_set_plane_payload.exit_crit_edge

if.then.i26.vb2_set_plane_payload.exit_crit_edge: ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #7
  br label %vb2_set_plane_payload.exit

land.rhs.i:                                       ; preds = %if.then.i26
  %.b1.i = load i1, ptr @vb2_set_plane_payload.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.if.then38.i_crit_edge, label %if.then8.i, !prof !59

land.rhs.i.if.then38.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

if.then8.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @vb2_set_plane_payload.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1163, i32 noundef 9, ptr noundef null) #5
  br label %if.then38.i

if.then38.i:                                      ; preds = %if.then8.i, %land.rhs.i.if.then38.i_crit_edge
  %14 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length.i, align 8
  br label %vb2_set_plane_payload.exit

vb2_set_plane_payload.exit:                       ; preds = %if.then38.i, %if.then.i26.vb2_set_plane_payload.exit_crit_edge
  %size.addr.0.i = phi i32 [ %15, %if.then38.i ], [ %mul4, %if.then.i26.vb2_set_plane_payload.exit_crit_edge ]
  %bytesused.i = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 10, i32 0, i32 3
  %16 = ptrtoint ptr %bytesused.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %size.addr.0.i, ptr %bytesused.i, align 4
  %pci = getelementptr inbounds %struct.cx8800_dev, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pci, align 8
  %risc = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %call9 = tail call i32 @cx88_risc_buffer(ptr noundef %18, ptr noundef %risc, ptr noundef %20, i32 noundef 0, i32 noundef %mul, i32 noundef 2048, i32 noundef 0, i32 noundef %.) #5
  br label %cleanup

cleanup:                                          ; preds = %vb2_set_plane_payload.exit, %vb2_plane_size.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vb2_set_plane_payload.exit ], [ -22, %vb2_plane_size.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @buffer_finish(ptr nocapture noundef %vb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %risc4 = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3
  %cpu = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpu, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vb, align 8
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_priv, align 4
  %pci = getelementptr inbounds %struct.cx8800_dev, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %pci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci, align 8
  %dev5 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %8 = ptrtoint ptr %risc4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %risc4, align 4
  %dma = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma, align 4
  tail call void @dma_free_attrs(ptr noundef %dev5, i32 noundef %9, ptr noundef nonnull %1, i32 noundef %11, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = call ptr @memset(ptr %risc4, i32 0, i32 16)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @start_streaming(ptr nocapture noundef readonly %q, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %vbiq = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %vbiq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbiq, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 -736
  tail call fastcc void @cx8800_start_vbi_dma(ptr noundef %1, ptr noundef %vbiq, ptr noundef %add.ptr)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stop_streaming(ptr nocapture noundef readonly %q) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %drv_priv = getelementptr inbounds %struct.vb2_queue, ptr %q, i32 0, i32 10
  %0 = ptrtoint ptr %drv_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drv_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %vbiq = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %lmmio = getelementptr inbounds %struct.cx88_core, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lmmio, align 4
  %add.ptr = getelementptr i32, ptr %5, i32 815120
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  %7 = and i32 %6, -285212673
  %8 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lmmio, align 4
  %add.ptr4 = getelementptr i32, ptr %9, i32 815120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %7) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lmmio, align 4
  %add.ptr11 = getelementptr i32, ptr %11, i32 802912
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %13 = and i32 %12, -100663297
  %14 = ptrtoint ptr %lmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lmmio, align 4
  %add.ptr18 = getelementptr i32, ptr %15, i32 802912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %13) #5, !srcloc !40
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %lmmio.i = getelementptr inbounds %struct.cx88_core, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lmmio.i, align 4
  %add.ptr.i = getelementptr i32, ptr %19, i32 815120
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  %21 = and i32 %20, 2013265919
  %22 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lmmio.i, align 4
  %add.ptr4.i = getelementptr i32, ptr %23, i32 815120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %21) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lmmio.i, align 4
  %add.ptr11.i = getelementptr i32, ptr %25, i32 802912
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  %27 = and i32 %26, -402653185
  %28 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lmmio.i, align 4
  %add.ptr18.i = getelementptr i32, ptr %29, i32 802912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %27) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %lmmio.i, align 4
  %add.ptr25.i = getelementptr i32, ptr %31, i32 524304
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %33 = and i32 %32, -16777217
  %34 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %lmmio.i, align 4
  %add.ptr32.i = getelementptr i32, ptr %35, i32 524304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 %33) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %lmmio.i, align 4
  %add.ptr39.i = getelementptr i32, ptr %37, i32 524308
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39.i) #5, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %39 = and i32 %38, 2013262079
  %40 = ptrtoint ptr %lmmio.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %lmmio.i, align 4
  %add.ptr46.i = getelementptr i32, ptr %41, i32 524308
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46.i, i32 %39) #5, !srcloc !40
  %slock = getelementptr inbounds %struct.cx8800_dev, ptr %1, i32 0, i32 1
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #5
  %42 = ptrtoint ptr %vbiq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %vbiq, align 4
  %cmp.i.not42 = icmp eq ptr %43, %vbiq
  br i1 %cmp.i.not42, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %44 = phi ptr [ %54, %list_del.exit.while.body_crit_edge ], [ %43, %entry.while.body_crit_edge ]
  %add.ptr31 = getelementptr i8, ptr %44, i32 -736
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %44) #5
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
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
  tail call void @vb2_buffer_done(ptr noundef %add.ptr31, i32 noundef 6) #5
  %53 = ptrtoint ptr %vbiq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %vbiq, align 4
  %cmp.i.not = icmp eq ptr %54, %vbiq
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call23) #5
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
  %vbiq = getelementptr inbounds %struct.cx8800_dev, ptr %3, i32 0, i32 12
  %dma = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma, align 4
  %add = add i32 %5, 8
  %6 = tail call i32 @llvm.bswap.i32(i32 %add)
  %cpu = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpu, align 4
  %arrayidx = getelementptr i32, ptr %8, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %6, ptr %arrayidx, align 4
  %jmp = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jmp, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 368, ptr %11, align 4
  %13 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma, align 4
  %add9 = add i32 %14, 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %add9)
  %16 = ptrtoint ptr %jmp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %jmp, align 4
  %arrayidx12 = getelementptr i32, ptr %17, i32 1
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %arrayidx12, align 4
  %19 = ptrtoint ptr %vbiq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %vbiq, align 4
  %cmp.i.not = icmp eq ptr %20, %vbiq
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %list = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.cx8800_dev, ptr %3, i32 0, i32 12, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %22, ptr noundef %vbiq) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add_tail.exit_crit_edge

if.then.list_add_tail.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list, ptr %prev.i, align 4
  %24 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %vbiq, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 1, i32 1
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %list, ptr %22, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then.list_add_tail.exit_crit_edge
  %27 = load i32, ptr @vbi_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp = icmp ugt i32 %27, 1
  br i1 %cmp, label %list_add_tail.exit.if.end50.sink.split_crit_edge, label %list_add_tail.exit.if.end50_crit_edge

list_add_tail.exit.if.end50_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

list_add_tail.exit.if.end50.sink.split_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.sink.split

if.else:                                          ; preds = %entry
  %28 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cpu, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %or = or i32 %31, 1
  store i32 %or, ptr %29, align 4
  %prev26 = getelementptr inbounds %struct.cx8800_dev, ptr %3, i32 0, i32 12, i32 0, i32 1
  %32 = ptrtoint ptr %prev26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev26, align 4
  %list29 = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 1
  %call.i.i68 = tail call zeroext i1 @__list_add_valid(ptr noundef %list29, ptr noundef %33, ptr noundef %vbiq) #5
  br i1 %call.i.i68, label %if.end.i.i70, label %if.else.list_add_tail.exit71_crit_edge

if.else.list_add_tail.exit71_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit71

if.end.i.i70:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %prev26 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %list29, ptr %prev26, align 4
  %35 = ptrtoint ptr %list29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %vbiq, ptr %list29, align 4
  %prev3.i.i69 = getelementptr inbounds %struct.cx88_buffer, ptr %vb, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %prev3.i.i69 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i69, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %list29, ptr %33, align 4
  br label %list_add_tail.exit71

list_add_tail.exit71:                             ; preds = %if.end.i.i70, %if.else.list_add_tail.exit71_crit_edge
  %38 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma, align 4
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %jmp34 = getelementptr i8, ptr %33, i32 20
  %41 = ptrtoint ptr %jmp34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %jmp34, align 4
  %arrayidx35 = getelementptr i32, ptr %42, i32 1
  %43 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %arrayidx35, align 4
  %44 = load i32, ptr @vbi_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp37 = icmp ugt i32 %44, 1
  br i1 %cmp37, label %list_add_tail.exit71.if.end50.sink.split_crit_edge, label %list_add_tail.exit71.if.end50_crit_edge

list_add_tail.exit71.if.end50_crit_edge:          ; preds = %list_add_tail.exit71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

list_add_tail.exit71.if.end50.sink.split_crit_edge: ; preds = %list_add_tail.exit71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50.sink.split

if.end50.sink.split:                              ; preds = %list_add_tail.exit71.if.end50.sink.split_crit_edge, %list_add_tail.exit.if.end50.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str.4, %list_add_tail.exit.if.end50.sink.split_crit_edge ], [ @.str.7, %list_add_tail.exit71.if.end50.sink.split_crit_edge ]
  %index45 = getelementptr inbounds %struct.vb2_buffer, ptr %vb, i32 0, i32 1
  %45 = ptrtoint ptr %index45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index45, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.7.sink, ptr noundef nonnull @.str.5, ptr noundef %vb, i32 noundef %46) #8
  br label %if.end50

if.end50:                                         ; preds = %if.end50.sink.split, %list_add_tail.exit71.if.end50_crit_edge, %list_add_tail.exit.if.end50_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @video_devdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_sram_channel_setup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx88_risc_buffer(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vb2_plane_cookie(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vb2_buffer_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !16, !18, !19, !21, !22, !23, !24, !26, !27}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @__param_vbi_debug, !1, !"__param_vbi_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx88/cx88-vbi.c", i32 12, i32 1}
!2 = !{ptr @__UNIQUE_ID_vbi_debugtype385, !1, !"__UNIQUE_ID_vbi_debugtype385", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_vbi_debug386, !4, !"__UNIQUE_ID_vbi_debug386", i1 false, i1 false}
!4 = !{!"../drivers/media/pci/cx88/cx88-vbi.c", i32 13, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/pci/cx88/cx88-vbi.c", i32 107, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @cx8800_restart_vbi_queue._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @cx8800_restart_vbi_queue._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @cx8800_vbi_qops, !12, !"cx8800_vbi_qops", i1 false, i1 false}
!12 = !{!"../drivers/media/pci/cx88/cx88-vbi.c", i32 227, i32 22}
!13 = !{ptr @vbi_debug, !14, !"vbi_debug", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/cx88/cx88-vbi.c", i32 11, i32 21}
!15 = !{ptr @__param_str_vbi_debug, !1, !"__param_str_vbi_debug", i1 false, i1 false}
!16 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!17 = !{!"../include/media/videobuf2-core.h", i32 1163, i32 7}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/cx88/cx88-vbi.c", i32 182, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @buffer_queue._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @buffer_queue._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/cx88/cx88-vbi.c", i32 190, i32 3}
!26 = !{ptr @buffer_queue._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @buffer_queue._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{i64 2158623486}
!38 = !{i64 5007288}
!39 = !{i64 2158624555}
!40 = !{i64 5006870}
!41 = !{i64 2158625921}
!42 = !{i64 2158626990}
!43 = !{i64 2158628391}
!44 = !{i64 2158629480}
!45 = !{i64 2158630876}
!46 = !{i64 2158631961}
!47 = !{i64 2158608203}
!48 = !{i64 2158609007}
!49 = !{i64 2158610753}
!50 = !{i64 2158611986}
!51 = !{i64 2158613489}
!52 = !{i64 2158614596}
!53 = !{i64 2158616004}
!54 = !{i64 2158617087}
!55 = !{i64 2158618515}
!56 = !{i64 2158619622}
!57 = !{i64 2158621030}
!58 = !{i64 2158622113}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2158656006}
!61 = !{i64 2158657075}
!62 = !{i64 2158658441}
!63 = !{i64 2158659510}
