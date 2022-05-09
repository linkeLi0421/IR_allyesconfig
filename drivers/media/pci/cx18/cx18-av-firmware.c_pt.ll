; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-av-firmware.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-av-firmware.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cx18 = type { i32, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.cx18_av_state, %struct.cx2341x_handler, i32, i32, i32, i32, i32, %struct.mutex, %struct.cx18_options, [7 x i32], [7 x i32], [7 x %struct.cx18_stream], ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, ptr, ptr, %struct.vbi_info, i64, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, [11 x i8], [70 x %struct.cx18_in_work_order], [256 x i8], [2 x %struct.i2c_adapter], [2 x %struct.i2c_algo_bit_data], [2 x %struct.cx18_i2c_algo_callback_data], %struct.IR_i2c_init_data, i32, i32, %struct.mutex, %struct.v4l2_subdev, %struct.v4l2_subdev, i32, i32, i64, i64, %struct.work_struct }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx18_av_state = type { %struct.v4l2_subdev, %struct.v4l2_ctrl_handler, ptr, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.140, %struct.anon.141, %struct.anon.142, %struct.anon.143, %struct.anon.144, %struct.anon.145, %struct.anon.146, %struct.anon.147 }
%struct.anon.140 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.141 = type { ptr, ptr }
%struct.anon.142 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.143 = type { ptr, ptr }
%struct.anon.144 = type { ptr, ptr, ptr }
%struct.anon.145 = type { ptr, ptr }
%struct.anon.146 = type { ptr, ptr }
%struct.anon.147 = type { ptr, ptr, ptr, ptr }
%struct.cx18_options = type { [7 x i32], i32, i32, i32 }
%struct.cx18_stream = type { %struct.video_device, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.list_head, i32, i32, i32, i32, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue, %struct.work_struct, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, %struct.videobuf_queue, %struct.spinlock, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.107 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.104], %struct.media_entity_enum, i32 }
%struct.anon.104 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cx18_queue = type { %struct.list_head, %struct.atomic_t, i32, %struct.spinlock }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.videobuf_queue = type { %struct.mutex, ptr, ptr, ptr, %struct.wait_queue_head, i32, i32, i32, i32, [32 x ptr], ptr, ptr, i8, %struct.list_head, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.vbi_info = type { %struct.v4l2_format, ptr, i32, [2 x i32], i32, i32, [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], i32, %struct.cx18_mdl, %struct.cx18_buffer }
%struct.v4l2_format = type { i32, %union.anon.116 }
%union.anon.116 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.118, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.118 = type { i8 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.cx18_mdl = type { %struct.list_head, i32, i32, i32, %struct.list_head, ptr, i32, i32 }
%struct.cx18_buffer = type { %struct.list_head, i32, ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cx18_in_work_order = type { %struct.work_struct, %struct.atomic_t, ptr, i32, i32, %struct.cx18_mailbox, [2 x %struct.cx18_mdl_ack], ptr }
%struct.cx18_mailbox = type { i32, i32, [6 x i32], i32, [6 x i32], i32 }
%struct.cx18_mdl_ack = type { i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.cx18_i2c_algo_callback_data = type { ptr, i32 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.103, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.103 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }

@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"v4l-cx23418-dig.fw\00", [45 x i8] zeroinitializer }, align 32
@cx18_av_loadfw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: unable to open firmware %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx18_av_loadfw\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/pci/cx18/cx18-av-firmware.c\00", [54 x i8] zeroinitializer }, align 32
@cx18_av_loadfw._entry_ptr = internal global ptr @cx18_av_loadfw._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cx18_av_loadfw._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: unable to load firmware %s\0A\00", [62 x i8] zeroinitializer }, align 32
@cx18_av_loadfw._entry_ptr.6 = internal global ptr @cx18_av_loadfw._entry.4, section ".printk_index", align 4
@cx18_av_loadfw._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: loaded %s firmware (%d bytes)\0A\00", [59 x i8] zeroinitializer }, align 32
@cx18_av_loadfw._entry_ptr.9 = internal global ptr @cx18_av_loadfw._entry.7, section ".printk_index", align 4
@__UNIQUE_ID_firmware385 = internal constant [33 x i8] c"cx18.firmware=v4l-cx23418-dig.fw\00", section ".modinfo", align 1
@cx18_av_verifyfw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013%s: verification of %s firmware load failed: expected %#010x got %#010x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx18_av_verifyfw\00", [47 x i8] zeroinitializer }, align 32
@cx18_av_verifyfw._entry_ptr = internal global ptr @cx18_av_verifyfw._entry, section ".printk_index", align 4
@cx18_av_verifyfw._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: verified load of %s firmware (%d bytes)\0A\00", [49 x i8] zeroinitializer }, align 32
@cx18_av_verifyfw._entry_ptr.14 = internal global ptr @cx18_av_verifyfw._entry.12, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 48]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 73, i32 28 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 74, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 125, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 133, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 50, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [45 x i8] c"../drivers/media/pci/cx18/cx18-av-firmware.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 58, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_firmware385, ptr @cx18_av_loadfw._entry, ptr @cx18_av_loadfw._entry.4, ptr @cx18_av_loadfw._entry.7, ptr @cx18_av_loadfw._entry_ptr, ptr @cx18_av_loadfw._entry_ptr.6, ptr @cx18_av_loadfw._entry_ptr.9, ptr @cx18_av_verifyfw._entry, ptr @cx18_av_verifyfw._entry.12, ptr @cx18_av_verifyfw._entry_ptr, ptr @cx18_av_verifyfw._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_loadfw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_loadfw._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_loadfw._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_verifyfw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_av_verifyfw._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_av_loadfw(ptr noundef %cx) local_unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #5
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %fw, align 4
  %pci_dev = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 1
  %1 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %2, i32 0, i32 44
  %call = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str, ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.while.body_crit_edge, label %do.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 0, i32 9
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %name, ptr noundef nonnull @.str) #8
  br label %cleanup106

while.body:                                       ; preds = %if.end39.while.body_crit_edge, %entry.while.body_crit_edge
  %retries1.0236 = phi i32 [ %inc40, %if.end39.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %call4 = call i32 @cx18_av_write4_expect(ptr noundef %cx, i16 noundef zeroext 256, i32 noundef 65536, i32 noundef 33840, i32 noundef -1) #5
  %call5 = call i32 @cx18_av_write_expect(ptr noundef %cx, i16 noundef zeroext 2056, i8 noundef zeroext -10, i8 noundef zeroext -10, i8 noundef zeroext -1) #5
  %call6 = call i32 @cx18_av_write4_expect(ptr noundef %cx, i16 noundef zeroext -32512, i32 noundef 65536, i32 noundef 33840, i32 noundef -1) #5
  %call7 = call i32 @cx18_av_write4_noretry(ptr noundef %cx, i16 noundef zeroext 2048, i32 noundef 251658240) #5
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9234.not = icmp eq i32 %8, 0
  br i1 %cmp9234.not, label %while.body.for.end35_crit_edge, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

while.body.for.end35_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end35

for.body:                                         ; preds = %for.inc33.for.body_crit_edge, %while.body.for.body_crit_edge
  %i.0235 = phi i32 [ %inc34, %for.inc33.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %6, i32 %i.0235
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %shl = shl nuw nsw i32 %conv, 16
  %or = or i32 %i.0235, %shl
  %or10 = or i32 %or, 251658240
  br label %for.body14

for.body14:                                       ; preds = %if.end20.for.body14_crit_edge, %for.body
  %retries2.0233 = phi i32 [ 0, %for.body ], [ %inc, %if.end20.for.body14_crit_edge ]
  %call15 = call i32 @cx18_av_write4_noretry(ptr noundef %cx, i16 noundef zeroext 2048, i32 noundef %or10) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 2147480) #5
  %call16 = call i32 @cx18_av_read4(ptr noundef %cx, i16 noundef zeroext 2048) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call16, i32 %or10)
  %cmp17 = icmp eq i32 %call16, %or10
  br i1 %cmp17, label %for.inc33, label %if.end20

if.end20:                                         ; preds = %for.body14
  %12 = xor i32 %call16, %i.0235
  %13 = and i32 %12, 16128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp22.not = icmp eq i32 %13, 0
  %inc = add nuw nsw i32 %retries2.0233, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %retries2.0233)
  %cmp12 = icmp ult i32 %retries2.0233, 9
  %or.cond = select i1 %cmp22.not, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.end20.for.body14_crit_edge, label %if.end20.for.end35_crit_edge

if.end20.for.end35_crit_edge:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end35

if.end20.for.body14_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body14

for.inc33:                                        ; preds = %for.body14
  %inc34 = add nuw i32 %i.0235, 1
  %exitcond.not = icmp eq i32 %inc34, %8
  br i1 %exitcond.not, label %for.inc33.while.end_crit_edge, label %for.inc33.for.body_crit_edge

for.inc33.for.body_crit_edge:                     ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc33.while.end_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

for.end35:                                        ; preds = %if.end20.for.end35_crit_edge, %while.body.for.end35_crit_edge
  %i.0231 = phi i32 [ 0, %while.body.for.end35_crit_edge ], [ %i.0235, %if.end20.for.end35_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0231, i32 %8)
  %cmp36 = icmp eq i32 %i.0231, %8
  br i1 %cmp36, label %for.end35.while.end_crit_edge, label %if.end39

for.end35.while.end_crit_edge:                    ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

if.end39:                                         ; preds = %for.end35
  %inc40 = add nuw nsw i32 %retries1.0236, 1
  %exitcond243.not = icmp eq i32 %inc40, 5
  br i1 %exitcond243.not, label %if.end39.do.end46_crit_edge, label %if.end39.while.body_crit_edge

if.end39.while.body_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end39.do.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

while.end:                                        ; preds = %for.end35.while.end_crit_edge, %for.inc33.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %retries1.0236)
  %cmp41 = icmp ugt i32 %retries1.0236, 4
  br i1 %cmp41, label %while.end.do.end46_crit_edge, label %if.end51

while.end.do.end46_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end46

do.end46:                                         ; preds = %while.end.do.end46_crit_edge, %if.end39.do.end46_crit_edge
  %name48 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 0, i32 9
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %name48, ptr noundef nonnull @.str) #8
  %14 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %15) #5
  br label %cleanup106

if.end51:                                         ; preds = %while.end
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %or53 = or i32 %19, 50331648
  %call54 = call i32 @cx18_av_write4_expect(ptr noundef %cx, i16 noundef zeroext 2048, i32 noundef %or53, i32 noundef 50331648, i32 noundef 318767104) #5
  %name59 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 18, i32 0, i32 9
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name59, ptr noundef nonnull @.str, i32 noundef %8) #8
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fw, align 4
  %call.i = call i32 @cx18_av_read4(ptr noundef %cx, i16 noundef zeroext 2048) #5
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end51
  %dl_control.0.i = phi i32 [ %call.i, %if.end51 ], [ %call3.i, %do.body.i.do.body.i_crit_edge ]
  %and.i = and i32 %dl_control.0.i, 16777215
  %or.i = or i32 %and.i, 251658240
  %call2.i = call i32 @cx18_av_write4_noretry(ptr noundef %cx, i16 noundef zeroext 2048, i32 noundef %or.i) #5
  %call3.i = call i32 @cx18_av_read4(ptr noundef %cx, i16 noundef zeroext 2048) #5
  %and4.i = and i32 %call3.i, -16777216
  %cmp.not.i = icmp eq i32 %and4.i, 251658240
  br i1 %cmp.not.i, label %while.cond.preheader.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body.i

while.cond.preheader.i:                           ; preds = %do.body.i
  %and553.i = and i32 %call3.i, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and553.i)
  %tobool.not54.i = icmp eq i32 %and553.i, 0
  br i1 %tobool.not54.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %call6.i = call i32 @cx18_av_read4(ptr noundef %cx, i16 noundef zeroext 2048) #5
  %and5.i = and i32 %call6.i, 16383
  %tobool.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %dl_control.1.lcssa.i = phi i32 [ %call3.i, %while.cond.preheader.i.while.end.i_crit_edge ], [ %call6.i, %while.body.i.while.end.i_crit_edge ]
  %data7.i = getelementptr inbounds %struct.firmware, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %data7.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data7.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp955.not.i = icmp eq i32 %25, 0
  br i1 %cmp955.not.i, label %while.end.i.if.then65_crit_edge, label %while.end.i.for.body.i_crit_edge

while.end.i.for.body.i_crit_edge:                 ; preds = %while.end.i
  br label %for.body.i

while.end.i.if.then65_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then65

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %while.end.i.for.body.i_crit_edge
  %dl_control.257.i = phi i32 [ %call19.i, %if.end.i.for.body.i_crit_edge ], [ %dl_control.1.lcssa.i, %while.end.i.for.body.i_crit_edge ]
  %addr.056.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %while.end.i.for.body.i_crit_edge ]
  %and10.i = and i32 %dl_control.257.i, -49153
  %arrayidx.i = getelementptr i8, ptr %23, i32 %addr.056.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %27 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %or11.i = or i32 %addr.056.i, %shl.i
  %or12.i = or i32 %or11.i, 251658240
  call void @__sanitizer_cov_trace_cmp4(i32 %or12.i, i32 %and10.i)
  %cmp13.not.i = icmp eq i32 %or12.i, %and10.i
  br i1 %cmp13.not.i, label %if.end.i, label %cx18_av_verifyfw.exit

if.end.i:                                         ; preds = %for.body.i
  %call19.i = call i32 @cx18_av_read4(ptr noundef %cx, i16 noundef zeroext 2048) #5
  %inc.i = add nuw i32 %addr.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %25
  br i1 %exitcond.not.i, label %if.end.i.if.then65_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end.i.if.then65_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then65

cx18_av_verifyfw.exit:                            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name59, ptr noundef nonnull @.str, i32 noundef %or12.i, i32 noundef %and10.i) #8
  br label %if.end69

if.then65:                                        ; preds = %if.end.i.if.then65_crit_edge, %while.end.i.if.then65_crit_edge
  %call29.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %name59, ptr noundef nonnull @.str, i32 noundef %25) #8
  %28 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fw, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %or67 = or i32 %31, 318767104
  %call68 = call i32 @cx18_av_write4_expect(ptr noundef %cx, i16 noundef zeroext 2048, i32 noundef %or67, i32 noundef 318767104, i32 noundef 318767104) #5
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %cx18_av_verifyfw.exit
  %call70 = call i32 @cx18_av_and_or4(ptr noundef %cx, i16 noundef zeroext 276, i32 noundef -1, i32 noundef 491520) #5
  %call71 = call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 2324, i32 noundef 160) #5
  %call72 = call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 2328, i32 noundef 416) #5
  %call73 = call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 292, i32 noundef 1442887303) #5
  %call74 = call i32 @cx18_av_write4_expect(ptr noundef %cx, i16 noundef zeroext 2056, i32 noundef 246, i32 noundef 246, i32 noundef 1057030143) #5
  %call75 = call i32 @cx18_av_write4(ptr noundef %cx, i16 noundef zeroext 2508, i32 noundef 1) #5
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %32 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %33, i32 13049876
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !36
  %35 = call i32 @llvm.bswap.i32(i32 %34) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  %and77 = and i32 %35, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77)
  %tobool78.not = icmp eq i32 %and77, 0
  br i1 %tobool78.not, label %if.end69.if.end81_crit_edge, label %if.then79

if.end69.if.end81_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.then79:                                        ; preds = %if.end69
  %and80 = and i32 %35, -1025
  %36 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i175 = getelementptr i8, ptr %37, i32 13049876
  %38 = call i32 @llvm.bswap.i32(i32 %and80) #5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.backedge.i.i, %if.then79
  %i.01.i.i = phi i32 [ 0, %if.then79 ], [ %i.01.be.i.i, %for.body.backedge.i.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i175, i32 %38) #5, !srcloc !39
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i175) #5, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %39)
  %cmp1.i.i = icmp eq i32 %39, -1
  br i1 %cmp1.i.i, label %for.inc.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %40 = and i32 %39, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp4.i.i = icmp ne i32 %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.i.i = icmp ult i32 %i.01.i.i, 9
  %or.cond.i.i = select i1 %cmp4.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.for.body.backedge.i.i_crit_edge, label %if.end.i.i.if.end81_crit_edge

if.end.i.i.if.end81_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.end.i.i.for.body.backedge.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.old.i.i = icmp ult i32 %i.01.i.i, 9
  br i1 %cmp.old.i.i, label %for.inc.i.i.for.body.backedge.i.i_crit_edge, label %for.inc.i.i.if.end81_crit_edge

for.inc.i.i.if.end81_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

for.inc.i.i.for.body.backedge.i.i_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge.i.i

for.body.backedge.i.i:                            ; preds = %for.inc.i.i.for.body.backedge.i.i_crit_edge, %if.end.i.i.for.body.backedge.i.i_crit_edge
  %i.01.be.i.i = add nuw nsw i32 %i.01.i.i, 1
  br label %for.body.i.i

if.end81:                                         ; preds = %for.inc.i.i.if.end81_crit_edge, %if.end.i.i.if.end81_crit_edge, %if.end69.if.end81_crit_edge
  %41 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i177 = getelementptr i8, ptr %42, i32 13049876
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177) #5, !srcloc !36
  %44 = call i32 @llvm.bswap.i32(i32 %43) #5
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  %and83 = and i32 %44, 48
  %and84 = and i32 %44, -49
  %45 = zext i32 %and83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and83, label %if.else [
    i32 32, label %if.end81.if.then90_crit_edge
    i32 48, label %if.end81.if.then90_crit_edge281
  ]

if.end81.if.then90_crit_edge281:                  ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then90

if.end81.if.then90_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then90

if.then90:                                        ; preds = %if.end81.if.then90_crit_edge, %if.end81.if.then90_crit_edge281
  %or92 = or i32 %and84, 2816
  %46 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i179 = getelementptr i8, ptr %47, i32 13049876
  %48 = call i32 @llvm.bswap.i32(i32 %or92) #5
  br label %for.body.i.i182

for.body.i.i182:                                  ; preds = %for.body.backedge.i.i190, %if.then90
  %i.01.i.i180 = phi i32 [ 0, %if.then90 ], [ %i.01.be.i.i189, %for.body.backedge.i.i190 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i179, i32 %48) #5, !srcloc !39
  %49 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i179) #5, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp1.i.i181 = icmp eq i32 %49, -1
  br i1 %cmp1.i.i181, label %for.inc.i.i188, label %if.end.i.i186

if.end.i.i186:                                    ; preds = %for.body.i.i182
  %50 = and i32 %49, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp4.i.i183 = icmp ne i32 %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i180)
  %cmp.i.i184 = icmp ult i32 %i.01.i.i180, 9
  %or.cond.i.i185 = select i1 %cmp4.i.i183, i1 %cmp.i.i184, i1 false
  br i1 %or.cond.i.i185, label %if.end.i.i186.for.body.backedge.i.i190_crit_edge, label %if.end.i.i186.cx18_write_reg_expect.exit191_crit_edge

if.end.i.i186.cx18_write_reg_expect.exit191_crit_edge: ; preds = %if.end.i.i186
  call void @__sanitizer_cov_trace_pc() #7
  br label %cx18_write_reg_expect.exit191

if.end.i.i186.for.body.backedge.i.i190_crit_edge: ; preds = %if.end.i.i186
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge.i.i190

for.inc.i.i188:                                   ; preds = %for.body.i.i182
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i180)
  %cmp.old.i.i187 = icmp ult i32 %i.01.i.i180, 9
  br i1 %cmp.old.i.i187, label %for.inc.i.i188.for.body.backedge.i.i190_crit_edge, label %for.inc.i.i188.cx18_write_reg_expect.exit191_crit_edge

for.inc.i.i188.cx18_write_reg_expect.exit191_crit_edge: ; preds = %for.inc.i.i188
  call void @__sanitizer_cov_trace_pc() #7
  br label %cx18_write_reg_expect.exit191

for.inc.i.i188.for.body.backedge.i.i190_crit_edge: ; preds = %for.inc.i.i188
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge.i.i190

for.body.backedge.i.i190:                         ; preds = %for.inc.i.i188.for.body.backedge.i.i190_crit_edge, %if.end.i.i186.for.body.backedge.i.i190_crit_edge
  %i.01.be.i.i189 = add nuw nsw i32 %i.01.i.i180, 1
  br label %for.body.i.i182

cx18_write_reg_expect.exit191:                    ; preds = %for.inc.i.i188.cx18_write_reg_expect.exit191_crit_edge, %if.end.i.i186.cx18_write_reg_expect.exit191_crit_edge
  %or94 = or i32 %and84, 32
  br label %if.end99

if.else:                                          ; preds = %if.end81
  %or96 = or i32 %and84, 2848
  %51 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i193 = getelementptr i8, ptr %52, i32 13049876
  %53 = call i32 @llvm.bswap.i32(i32 %or96) #5
  br label %for.body.i.i196

for.body.i.i196:                                  ; preds = %for.body.backedge.i.i204, %if.else
  %i.01.i.i194 = phi i32 [ 0, %if.else ], [ %i.01.be.i.i203, %for.body.backedge.i.i204 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i193, i32 %53) #5, !srcloc !39
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193) #5, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %54)
  %cmp1.i.i195 = icmp eq i32 %54, -1
  br i1 %cmp1.i.i195, label %for.inc.i.i202, label %if.end.i.i200

if.end.i.i200:                                    ; preds = %for.body.i.i196
  %55 = and i32 %54, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %55)
  %cmp4.i.i197 = icmp ne i32 %55, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i194)
  %cmp.i.i198 = icmp ult i32 %i.01.i.i194, 9
  %or.cond.i.i199 = select i1 %cmp4.i.i197, i1 %cmp.i.i198, i1 false
  br i1 %or.cond.i.i199, label %if.end.i.i200.for.body.backedge.i.i204_crit_edge, label %if.end.i.i200.if.end99_crit_edge

if.end.i.i200.if.end99_crit_edge:                 ; preds = %if.end.i.i200
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

if.end.i.i200.for.body.backedge.i.i204_crit_edge: ; preds = %if.end.i.i200
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge.i.i204

for.inc.i.i202:                                   ; preds = %for.body.i.i196
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i194)
  %cmp.old.i.i201 = icmp ult i32 %i.01.i.i194, 9
  br i1 %cmp.old.i.i201, label %for.inc.i.i202.for.body.backedge.i.i204_crit_edge, label %for.inc.i.i202.if.end99_crit_edge

for.inc.i.i202.if.end99_crit_edge:                ; preds = %for.inc.i.i202
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end99

for.inc.i.i202.for.body.backedge.i.i204_crit_edge: ; preds = %for.inc.i.i202
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge.i.i204

for.body.backedge.i.i204:                         ; preds = %for.inc.i.i202.for.body.backedge.i.i204_crit_edge, %if.end.i.i200.for.body.backedge.i.i204_crit_edge
  %i.01.be.i.i203 = add nuw nsw i32 %i.01.i.i194, 1
  br label %for.body.i.i196

if.end99:                                         ; preds = %for.inc.i.i202.if.end99_crit_edge, %if.end.i.i200.if.end99_crit_edge, %cx18_write_reg_expect.exit191
  %v.0 = phi i32 [ %or94, %cx18_write_reg_expect.exit191 ], [ %44, %if.end.i.i200.if.end99_crit_edge ], [ %44, %for.inc.i.i202.if.end99_crit_edge ]
  %or100 = or i32 %v.0, 2816
  %56 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i207 = getelementptr i8, ptr %57, i32 13049876
  %58 = call i32 @llvm.bswap.i32(i32 %or100) #5
  br label %for.body.i.i210

for.body.i.i210:                                  ; preds = %for.body.backedge.i.i218, %if.end99
  %i.01.i.i208 = phi i32 [ 0, %if.end99 ], [ %i.01.be.i.i217, %for.body.backedge.i.i218 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  call void @arm_heavy_mb() #5
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i207, i32 %58) #5, !srcloc !39
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i207) #5, !srcloc !36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %59)
  %cmp1.i.i209 = icmp eq i32 %59, -1
  br i1 %cmp1.i.i209, label %for.inc.i.i216, label %if.end.i.i214

if.end.i.i214:                                    ; preds = %for.body.i.i210
  %60 = lshr i32 %59, 24
  %61 = xor i32 %60, %v.0
  %62 = and i32 %61, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp4.i.i211 = icmp ne i32 %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i208)
  %cmp.i.i212 = icmp ult i32 %i.01.i.i208, 9
  %or.cond.i.i213 = select i1 %cmp4.i.i211, i1 %cmp.i.i212, i1 false
  br i1 %or.cond.i.i213, label %if.end.i.i214.for.body.backedge.i.i218_crit_edge, label %if.end.i.i214.cx18_write_reg_expect.exit219_crit_edge

if.end.i.i214.cx18_write_reg_expect.exit219_crit_edge: ; preds = %if.end.i.i214
  call void @__sanitizer_cov_trace_pc() #7
  br label %cx18_write_reg_expect.exit219

if.end.i.i214.for.body.backedge.i.i218_crit_edge: ; preds = %if.end.i.i214
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge.i.i218

for.inc.i.i216:                                   ; preds = %for.body.i.i210
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i208)
  %cmp.old.i.i215 = icmp ult i32 %i.01.i.i208, 9
  br i1 %cmp.old.i.i215, label %for.inc.i.i216.for.body.backedge.i.i218_crit_edge, label %for.inc.i.i216.cx18_write_reg_expect.exit219_crit_edge

for.inc.i.i216.cx18_write_reg_expect.exit219_crit_edge: ; preds = %for.inc.i.i216
  call void @__sanitizer_cov_trace_pc() #7
  br label %cx18_write_reg_expect.exit219

for.inc.i.i216.for.body.backedge.i.i218_crit_edge: ; preds = %for.inc.i.i216
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge.i.i218

for.body.backedge.i.i218:                         ; preds = %for.inc.i.i216.for.body.backedge.i.i218_crit_edge, %if.end.i.i214.for.body.backedge.i.i218_crit_edge
  %i.01.be.i.i217 = add nuw nsw i32 %i.01.i.i208, 1
  br label %for.body.i.i210

cx18_write_reg_expect.exit219:                    ; preds = %for.inc.i.i216.cx18_write_reg_expect.exit219_crit_edge, %if.end.i.i214.cx18_write_reg_expect.exit219_crit_edge
  %call101 = call i32 @cx18_av_read4(ptr noundef %cx, i16 noundef zeroext 2056) #5
  %or104 = or i32 %call101, 335545599
  %call105 = call i32 @cx18_av_write4_expect(ptr noundef %cx, i16 noundef zeroext 2056, i32 noundef %or104, i32 noundef %or104, i32 noundef 1057030143) #5
  %63 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %64) #5
  br label %cleanup106

cleanup106:                                       ; preds = %cx18_write_reg_expect.exit219, %do.end46, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -5, %do.end46 ], [ 0, %cx18_write_reg_expect.exit219 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_write4_expect(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_write_expect(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_write4_noretry(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_read4(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_and_or4(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_av_write4(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !23, !25, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-av-firmware.c", i32 73, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/cx18/cx18-av-firmware.c", i32 74, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cx18_av_loadfw._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @cx18_av_loadfw._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx18/cx18-av-firmware.c", i32 125, i32 3}
!10 = !{ptr @cx18_av_loadfw._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @cx18_av_loadfw._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/cx18/cx18-av-firmware.c", i32 133, i32 2}
!14 = !{ptr @cx18_av_loadfw._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @cx18_av_loadfw._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_firmware385, !17, !"__UNIQUE_ID_firmware385", i1 false, i1 false}
!17 = !{!"../drivers/media/pci/cx18/cx18-av-firmware.c", i32 210, i32 1}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/cx18/cx18-av-firmware.c", i32 50, i32 4}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cx18_av_verifyfw._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @cx18_av_verifyfw._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/cx18/cx18-av-firmware.c", i32 58, i32 3}
!25 = !{ptr @cx18_av_verifyfw._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @cx18_av_verifyfw._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{i64 5747219}
!37 = !{i64 2158646812}
!38 = !{i64 2158647182}
!39 = !{i64 5746801}
