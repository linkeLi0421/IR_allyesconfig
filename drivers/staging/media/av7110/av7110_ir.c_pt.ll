; ModuleID = '/llk/IR_all_yes/drivers/staging/media/av7110/av7110_ir.c_pt.bc'
source_filename = "../drivers/staging/media/av7110/av7110_ir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.av7110 = type { %struct.dvb_device, %struct.dvb_net, %struct.video_device, %struct.video_device, ptr, %struct.i2c_adapter, ptr, i32, i32, i32, %struct.tasklet_struct, %struct.tasklet_struct, i32, ptr, %struct.dvb_ringbuffer, %struct.dvb_ringbuffer, ptr, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, [8 x i16], %struct.mutex, [2 x %struct.ca_slot_info], i32, %struct.dmxdev, %struct.dvb_demux, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, %struct.spinlock, i32, i32, ptr, %struct.saa7146_pgtable, %struct.tasklet_struct, i8, i32, %struct.mutex, i32, %struct.video_status, i16, i32, i32, %struct.audio_status, [32 x ptr], [32 x %struct.av7110_p2t], [2 x %struct.dvb_filter_pes2ts], [2 x %struct.ipack], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.wait_queue_head, i16, ptr, i32, [20 x i16], %struct.dvb_ringbuffer, %struct.dvb_ringbuffer, %struct.audio_mixer, %struct.dvb_adapter, ptr, ptr, ptr, ptr, %struct.dvb_video_events, %struct.video_size_t, i16, i16, %struct.infrared, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.mutex, ptr, i32, i32, %struct.dvb_diseqc_master_cmd, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_device = type { %struct.list_head, ptr, ptr, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.112 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.109], %struct.media_entity_enum, i32 }
%struct.anon.109 = type { ptr, ptr }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.ca_slot_info = type { i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.saa7146_pgtable = type { i32, ptr, i32, i32, ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.161, i32 }
%union.anon.161 = type { ptr }
%struct.video_status = type { i32, i32, i32, i32, i32 }
%struct.audio_status = type { i32, i32, i32, i32, i32, i32, %struct.audio_mixer }
%struct.av7110_p2t = type { [188 x i8], i8, i32, i32, ptr }
%struct.dvb_filter_pes2ts = type { [188 x i8], i8, ptr, ptr }
%struct.ipack = type { i32, i32, ptr, i8, i32, [2 x i8], i8, i8, i8, [5 x i8], ptr, i32, i8, i32, i32, ptr, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.audio_mixer = type { i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_video_events = type { [8 x %struct.video_event], i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.video_event = type { i32, i32, %union.anon.167 }
%union.anon.167 = type { %struct.video_size_t }
%struct.video_size_t = type { i32, i32, i32 }
%struct.infrared = type { ptr, [32 x i8], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.saa7146_dev = type { ptr, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.spinlock, %struct.mutex, ptr, i32, [32 x i8], ptr, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, %struct.saa7146_dma, %struct.wait_queue_head, i32, %struct.saa7146_dma, %struct.saa7146_dma }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.saa7146_dma = type { i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.160, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.160 = type { ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }

@av7110_debug = external dso_local local_unnamed_addr global i32, align 4
@av7110_ir_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 28, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017dvb_ttpci: %s(): ir command = %08x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"av7110_ir_handler\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/media/av7110/av7110_ir.c\00", [55 x i8] zeroinitializer }, align 32
@av7110_ir_handler._entry_ptr = internal global ptr @av7110_ir_handler._entry, section ".printk_index", align 4
@av7110_ir_handler._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017dvb_ttpci: %s(): unknown ir config %d\0A\00", [55 x i8] zeroinitializer }, align 32
@av7110_ir_handler._entry_ptr.5 = internal global ptr @av7110_ir_handler._entry.3, section ".printk_index", align 4
@av7110_set_ir_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017dvb_ttpci: %s(): ir config = %08x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"av7110_set_ir_config\00", [43 x i8] zeroinitializer }, align 32
@av7110_set_ir_config._entry_ptr = internal global ptr @av7110_set_ir_config._entry, section ".printk_index", align 4
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pci-%s/ir0\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dvb_ttpci\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 28, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 62, i32 4 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 73, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 118, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 121, i32 23 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [44 x i8] c"../drivers/staging/media/av7110/av7110_ir.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 136, i32 20 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @av7110_ir_handler._entry, ptr @av7110_ir_handler._entry.3, ptr @av7110_ir_handler._entry_ptr, ptr @av7110_ir_handler._entry_ptr.5, ptr @av7110_set_ir_config._entry, ptr @av7110_set_ir_config._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_ir_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_ir_handler._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @av7110_set_ir_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @av7110_ir_handler(ptr nocapture noundef readonly %av7110, i32 noundef %ircom) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ir = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 87
  %0 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %2 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %ircom) #7
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end4.cleanup_crit_edge, label %if.then6

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then6:                                         ; preds = %do.end4
  %ir_config = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 87, i32 2
  %3 = ptrtoint ptr %ir_config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ir_config, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %do.body26 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb14
  ]

sw.bb:                                            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %and8 = and i32 %ircom, 63
  %6 = shl i32 %ircom, 2
  %shl = and i32 %6, 7936
  %or = or i32 %shl, %and8
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %and12 = and i32 %ircom, -32769
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  %and15 = and i32 %ircom, 63
  %and18 = lshr i32 %ircom, 6
  %7 = and i32 %and18, 64
  %8 = or i32 %7, %and15
  %9 = shl i32 %ircom, 2
  %shl23 = and i32 %9, 7936
  %10 = or i32 %8, %shl23
  %or24 = xor i32 %10, 64
  br label %sw.epilog

do.body26:                                        ; preds = %if.then6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %11 = load i32, ptr @av7110_debug, align 4
  %and27 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.cleanup_crit_edge, label %do.end32

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #6
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef %4) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb11, %sw.bb
  %.sink = phi i32 [ 2048, %sw.bb14 ], [ 32768, %sw.bb11 ], [ 2048, %sw.bb ]
  %scancode.0 = phi i32 [ %or24, %sw.bb14 ], [ %and12, %sw.bb11 ], [ %or, %sw.bb ]
  %proto.0 = phi i32 [ 2, %sw.bb14 ], [ 26, %sw.bb11 ], [ 2, %sw.bb ]
  %and25 = and i32 %.sink, %ircom
  %conv = zext i32 %scancode.0 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %cmp = icmp ne i32 %and25, 0
  %conv41 = zext i1 %cmp to i8
  tail call void @rc_keydown(ptr noundef nonnull %1, i32 noundef %proto.0, i64 noundef %conv, i8 noundef zeroext %conv41) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end32, %do.body26.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_set_ir_config(ptr noundef %av7110) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %0 = load i32, ptr @av7110_debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %ir_config = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 87, i32 2
  %1 = ptrtoint ptr %ir_config to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ir_config, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %2) #7
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %ir_config4 = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 87, i32 2
  %3 = ptrtoint ptr %ir_config4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ir_config4, align 4
  %call5 = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 1, i32 noundef 11, i32 noundef 1, i32 noundef %4) #4
  ret i32 %call5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @av7110_fw_cmd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @av7110_ir_init(ptr noundef %av7110) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rc_allocate_device(i32 noundef 0) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %pci1 = getelementptr inbounds %struct.saa7146_dev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %pci1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci1, align 4
  %ir = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 87
  %input_phys = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 87, i32 1
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.pci_name.exit_crit_edge

if.end.pci_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.end.pci_name.exit_crit_edge ]
  %call3 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %input_phys, i32 noundef 32, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i.i)
  %card_name = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 6
  %8 = ptrtoint ptr %card_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card_name, align 8
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %device_name, align 8
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.9, ptr %driver_name, align 8
  %input_phys7 = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 4
  %12 = ptrtoint ptr %input_phys7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %input_phys, ptr %input_phys7, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %input_id, align 8
  %version = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %version, align 2
  %subsystem_vendor = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 9
  %15 = ptrtoint ptr %subsystem_vendor to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %subsystem_vendor, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool9.not = icmp eq i16 %16, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  %vendor = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %vendor, align 2
  %subsystem_device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 10
  br label %if.end19

if.else:                                          ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  %vendor14 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %vendor14 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vendor14, align 8
  %vendor16 = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %vendor16 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %vendor16, align 2
  %device = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 8
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then10
  %.sink.in = phi ptr [ %device, %if.else ], [ %subsystem_device, %if.then10 ]
  %21 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load2_noabort(i32 %21)
  %.sink = load i16, ptr %.sink.in, align 2
  %22 = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 5, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %.sink, ptr %22, align 4
  %dev20 = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %24 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev20, ptr %parent, align 8
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 16
  %25 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 67108868, ptr %allowed_protocols, align 8
  %change_protocol = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 47
  %26 = ptrtoint ptr %change_protocol to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @change_protocol, ptr %change_protocol, align 4
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 7
  %27 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.10, ptr %map_name, align 4
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call, i32 0, i32 24
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %av7110, ptr %priv, align 4
  %29 = ptrtoint ptr %ir to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call, ptr %ir, align 8
  %ir_config = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 87, i32 2
  %30 = ptrtoint ptr %ir_config to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %ir_config, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %31 = load i32, ptr @av7110_debug, align 4
  %and.i = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end19.av7110_set_ir_config.exit_crit_edge, label %do.end.i

if.end19.av7110_set_ir_config.exit_crit_edge:     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %av7110_set_ir_config.exit

do.end.i:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 0) #7
  br label %av7110_set_ir_config.exit

av7110_set_ir_config.exit:                        ; preds = %do.end.i, %if.end19.av7110_set_ir_config.exit_crit_edge
  %32 = ptrtoint ptr %ir_config to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ir_config, align 4
  %call5.i = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %av7110, i32 noundef 1, i32 noundef 11, i32 noundef 1, i32 noundef %33) #4
  %call26 = tail call i32 @rc_register_device(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %av7110_set_ir_config.exit.cleanup_crit_edge, label %if.then28

av7110_set_ir_config.exit.cleanup_crit_edge:      ; preds = %av7110_set_ir_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then28:                                        ; preds = %av7110_set_ir_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %ir to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %ir, align 8
  tail call void @rc_free_device(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %av7110_set_ir_config.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call26, %if.then28 ], [ 0, %av7110_set_ir_config.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @change_protocol(ptr nocapture noundef readonly %rcdev, ptr nocapture noundef %rc_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rcdev, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %rc_type to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %rc_type, align 8
  %and = and i64 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.else:                                          ; preds = %entry
  %and1 = and i64 %3, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1)
  %tobool2.not = icmp eq i64 %and1, 0
  br i1 %tobool2.not, label %if.else.cleanup_crit_edge, label %if.then3

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %arm_app = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 66
  %4 = ptrtoint ptr %arm_app to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arm_app, align 4
  %and4 = and i32 %5, 65504
  call void @__sanitizer_cov_trace_const_cmp4(i32 9759, i32 %and4)
  %cmp = icmp ugt i32 %and4, 9759
  %. = select i1 %cmp, i32 2, i32 0
  br label %if.end9

if.end9:                                          ; preds = %if.then3, %entry.if.end9_crit_edge
  %storemerge = phi i64 [ 4, %if.then3 ], [ 67108864, %entry.if.end9_crit_edge ]
  %ir_config.1 = phi i32 [ %., %if.then3 ], [ 1, %entry.if.end9_crit_edge ]
  %6 = ptrtoint ptr %rc_type to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %storemerge, ptr %rc_type, align 8
  %ir_config10 = getelementptr inbounds %struct.av7110, ptr %1, i32 0, i32 87, i32 2
  %7 = ptrtoint ptr %ir_config10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ir_config10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ir_config.1, i32 %8)
  %cmp11 = icmp eq i32 %ir_config.1, %8
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %ir_config10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ir_config.1, ptr %ir_config10, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @av7110_debug to i32))
  %10 = load i32, ptr @av7110_debug, align 4
  %and.i = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end13.av7110_set_ir_config.exit_crit_edge, label %do.end.i

if.end13.av7110_set_ir_config.exit_crit_edge:     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %av7110_set_ir_config.exit

do.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef %ir_config.1) #7
  br label %av7110_set_ir_config.exit

av7110_set_ir_config.exit:                        ; preds = %do.end.i, %if.end13.av7110_set_ir_config.exit_crit_edge
  %11 = ptrtoint ptr %ir_config10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ir_config10, align 4
  %call5.i = tail call i32 (ptr, i32, i32, i32, ...) @av7110_fw_cmd(ptr noundef %1, i32 noundef 1, i32 noundef 11, i32 noundef 1, i32 noundef %12) #4
  br label %cleanup

cleanup:                                          ; preds = %av7110_set_ir_config.exit, %if.end9.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5.i, %av7110_set_ir_config.exit ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @av7110_ir_exit(ptr nocapture noundef readonly %av7110) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ir = getelementptr inbounds %struct.av7110, ptr %av7110, i32 0, i32 87
  %0 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir, align 8
  tail call void @rc_unregister_device(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/media/av7110/av7110_ir.c", i32 28, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @av7110_ir_handler._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @av7110_ir_handler._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/staging/media/av7110/av7110_ir.c", i32 62, i32 4}
!8 = !{ptr @av7110_ir_handler._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @av7110_ir_handler._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/staging/media/av7110/av7110_ir.c", i32 73, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @av7110_set_ir_config._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @av7110_set_ir_config._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/media/av7110/av7110_ir.c", i32 118, i32 4}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/media/av7110/av7110_ir.c", i32 121, i32 23}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/media/av7110/av7110_ir.c", i32 136, i32 20}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
