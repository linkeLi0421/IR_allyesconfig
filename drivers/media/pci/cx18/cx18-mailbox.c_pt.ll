; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-mailbox.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-mailbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cx18_api_info = type { i32, i8, i8, ptr }
%struct.cx18_in_work_order = type { %struct.work_struct, %struct.atomic_t, ptr, i32, i32, %struct.cx18_mailbox, [2 x %struct.cx18_mdl_ack], ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.cx18_mailbox = type { i32, i32, [6 x i32], i32, [6 x i32], i32 }
%struct.cx18_mdl_ack = type { i32, i32 }
%struct.cx18 = type { i32, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.cx18_av_state, %struct.cx2341x_handler, i32, i32, i32, i32, i32, %struct.mutex, %struct.cx18_options, [7 x i32], [7 x i32], [7 x %struct.cx18_stream], ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, ptr, ptr, %struct.vbi_info, i64, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, [11 x i8], [70 x %struct.cx18_in_work_order], [256 x i8], [2 x %struct.i2c_adapter], [2 x %struct.i2c_algo_bit_data], [2 x %struct.cx18_i2c_algo_callback_data], %struct.IR_i2c_init_data, i32, i32, %struct.mutex, %struct.v4l2_subdev, %struct.v4l2_subdev, i32, i32, i64, i64, %struct.work_struct }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.cx18_dvb = type { ptr, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dmxdev, %struct.dvb_adapter, %struct.dvb_demux, ptr, %struct.dvb_net, i32, i32, %struct.mutex }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.cx18_scb = type { i32, [7 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, [3 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], i32, [7 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], i32, i32, i32, [13 x i32], [8 x i32], [8 x i32], [32 x i32], %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, %struct.cx18_mailbox, [7 x [2 x %struct.cx18_mdl_ack]], [1 x %struct.cx18_mdl_ent] }
%struct.cx18_mdl_ent = type { i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.__va_list = type { ptr }

@cx18_api_epu_cmd_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\014%s: Unable to find blank work order form to schedule incoming mailbox command processing\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cx18_api_epu_cmd_irq\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/cx18/cx18-mailbox.c\00", [58 x i8] zeroinitializer }, align 32
@cx18_api_epu_cmd_irq._entry_ptr = internal global ptr @cx18_api_epu_cmd_irq._entry, section ".printk_index", align 4
@cx18_debug = external dso_local local_unnamed_addr global i32, align 4
@cx18_api_epu_cmd_irq._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\016%s:  warning: Possibly falling behind: %s self-ack'ed our incoming %s to EPU mailbox (sequence no. %u)\0A\00", [54 x i8] zeroinitializer }, align 32
@cx18_api_epu_cmd_irq._entry_ptr.5 = internal global ptr @cx18_api_epu_cmd_irq._entry.3, section ".printk_index", align 4
@rpu_str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"incoming\00", [23 x i8] zeroinitializer }, align 32
@cx18_api_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014%s: Unknown cmd %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cx18_api_func\00", [18 x i8] zeroinitializer }, align 32
@cx18_api_func._entry_ptr = internal global ptr @cx18_api_func._entry, section ".printk_index", align 4
@cx18_vapi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013%s: cx == NULL (cmd=%x)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cx18_vapi\00", [22 x i8] zeroinitializer }, align 32
@cx18_vapi._entry_ptr = internal global ptr @cx18_vapi._entry, section ".printk_index", align 4
@cx18_vapi._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: args too big (cmd=%x)\0A\00", [35 x i8] zeroinitializer }, align 32
@cx18_vapi._entry_ptr.13 = internal global ptr @cx18_vapi._entry.11, section ".printk_index", align 4
@epu_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: Unknown CPU to EPU mailbox command %#0x\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"epu_cmd\00", [24 x i8] zeroinitializer }, align 32
@epu_cmd._entry_ptr = internal global ptr @epu_cmd._entry, section ".printk_index", align 4
@epu_cmd._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 355, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: Unknown APU to EPU mailbox command %#0x\0A\00", [49 x i8] zeroinitializer }, align 32
@epu_cmd._entry_ptr.18 = internal global ptr @epu_cmd._entry.16, section ".printk_index", align 4
@epu_dma_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014%s: Got DMA done notification for unknown/inactive handle %d, %s mailbox seq no %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"epu_dma_done\00", [19 x i8] zeroinitializer }, align 32
@epu_dma_done._entry_ptr = internal global ptr @epu_dma_done._entry, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stale\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"good\00", [27 x i8] zeroinitializer }, align 32
@epu_dma_done._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\014%s: Fell behind! Ignoring stale mailbox with  inconsistent data. Lost MDL for mailbox seq no %d\0A\00", [61 x i8] zeroinitializer }, align 32
@epu_dma_done._entry_ptr.25 = internal global ptr @epu_dma_done._entry.23, section ".printk_index", align 4
@epu_dma_done._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s:  dma: DMA DONE for %s (MDL %d)\0A\00", [58 x i8] zeroinitializer }, align 32
@epu_dma_done._entry_ptr.28 = internal global ptr @epu_dma_done._entry.26, section ".printk_index", align 4
@epu_dma_done._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.20, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: Could not find MDL %d for stream %s\0A\00", [53 x i8] zeroinitializer }, align 32
@epu_dma_done._entry_ptr.31 = internal global ptr @epu_dma_done._entry.29, section ".printk_index", align 4
@epu_dma_done._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.20, ptr @.str.2, i32 293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:  dma: %s recv bytesused = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@epu_dma_done._entry_ptr.34 = internal global ptr @epu_dma_done._entry.32, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@epu_debug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016%s:  info: %x %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"epu_debug\00", [22 x i8] zeroinitializer }, align 32
@epu_debug._entry_ptr = internal global ptr @epu_debug._entry, section ".printk_index", align 4
@epu_debug._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s: FW version: %s\0A\00", [42 x i8] zeroinitializer }, align 32
@epu_debug._entry_ptr.39 = internal global ptr @epu_debug._entry.37, section ".printk_index", align 4
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"APU\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CPU\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EPU\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPU\00", [28 x i8] zeroinitializer }, align 32
@dump_mb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016%s:  api: %s: req %#010x ack %#010x cmd %#010x err %#010x args%s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dump_mb\00", [24 x i8] zeroinitializer }, align 32
@dump_mb._entry_ptr = internal global ptr @dump_mb._entry, section ".printk_index", align 4
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" %#010x\00", [24 x i8] zeroinitializer }, align 32
@epu_cmd_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.47, ptr @.str.2, i32 481, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"epu_cmd_irq\00", [20 x i8] zeroinitializer }, align 32
@epu_cmd_irq._entry_ptr = internal global ptr @epu_cmd_irq._entry, section ".printk_index", align 4
@epu_cmd_irq._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.47, ptr @.str.2, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@epu_cmd_irq._entry_ptr.49 = internal global ptr @epu_cmd_irq._entry.48, section ".printk_index", align 4
@mb_ack_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014%s: Unhandled RPU (%d) for command %x ack\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mb_ack_irq\00", [21 x i8] zeroinitializer }, align 32
@mb_ack_irq._entry_ptr = internal global ptr @mb_ack_irq._entry, section ".printk_index", align 4
@mb_ack_irq._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 407, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [123 x i8], [37 x i8] } { [123 x i8] c"\016%s:  warning: Possibly falling behind: %s self-ack'ed our incoming %s to EPU mailbox (sequence no. %u) while processing\0A\00", [37 x i8] zeroinitializer }, align 32
@mb_ack_irq._entry_ptr.54 = internal global ptr @mb_ack_irq._entry.52, section ".printk_index", align 4
@cx18_api_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014%s: unknown cmd %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cx18_api_call\00", [18 x i8] zeroinitializer }, align 32
@cx18_api_call._entry_ptr = internal global ptr @cx18_api_call._entry, section ".printk_index", align 4
@cx18_api_call._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  api: %s\09cmd %#010x args%s\0A\00", [62 x i8] zeroinitializer }, align 32
@cx18_api_call._entry_ptr.59 = internal global ptr @cx18_api_call._entry.57, section ".printk_index", align 4
@cx18_api_call._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@cx18_api_call._entry_ptr.61 = internal global ptr @cx18_api_call._entry.60, section ".printk_index", align 4
@cx18_api_call._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.56, ptr @.str.2, i32 623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014%s: Unknown RPU (%d) for API call\0A\00", [59 x i8] zeroinitializer }, align 32
@cx18_api_call._entry_ptr.64 = internal global ptr @cx18_api_call._entry.62, section ".printk_index", align 4
@cx18_api_call._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.56, ptr @.str.2, i32 647, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\013%s: mbox was found stuck busy when setting up for %s; clearing busy and trying to proceed\0A\00", [35 x i8] zeroinitializer }, align 32
@cx18_api_call._entry_ptr.67 = internal global ptr @cx18_api_call._entry.65, section ".printk_index", align 4
@cx18_api_call._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.56, ptr @.str.2, i32 650, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016%s:  api: waited %u msecs for busy mbox to be acked\0A\00", [41 x i8] zeroinitializer }, align 32
@cx18_api_call._entry_ptr.70 = internal global ptr @cx18_api_call._entry.68, section ".printk_index", align 4
@cx18_api_call._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.56, ptr @.str.2, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s:  irq: sending interrupt SW1: %x to send %s\0A\00", [46 x i8] zeroinitializer }, align 32
@cx18_api_call._entry_ptr.73 = internal global ptr @cx18_api_call._entry.71, section ".printk_index", align 4
@cx18_api_call._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.56, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\016%s:  warning: sending %s timed out waiting %d msecs for RPU acknowledgment\0A\00", [50 x i8] zeroinitializer }, align 32
@cx18_api_call._entry_ptr.76 = internal global ptr @cx18_api_call._entry.74, section ".printk_index", align 4
@cx18_api_call._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.56, ptr @.str.2, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [150 x i8], [42 x i8] } { [150 x i8] c"\016%s:  warning: woken up before mailbox ack was ready after submitting %s to RPU.  only waited %d msecs on req %u but awakened with unmatched ack %u\0A\00", [42 x i8] zeroinitializer }, align 32
@cx18_api_call._entry_ptr.79 = internal global ptr @cx18_api_call._entry.77, section ".printk_index", align 4
@cx18_api_call._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.56, ptr @.str.2, i32 703, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [102 x i8], [58 x i8] } { [102 x i8] c"\016%s:  warning: failed to be awakened upon RPU acknowledgment sending %s; timed out waiting %d msecs\0A\00", [58 x i8] zeroinitializer }, align 32
@cx18_api_call._entry_ptr.82 = internal global ptr @cx18_api_call._entry.80, section ".printk_index", align 4
@cx18_api_call._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.56, ptr @.str.2, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016%s:  api: waited %u msecs for %s to be acked\0A\00", [48 x i8] zeroinitializer }, align 32
@cx18_api_call._entry_ptr.85 = internal global ptr @cx18_api_call._entry.83, section ".printk_index", align 4
@cx18_api_call._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.56, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s:  api: mailbox error %08x for command %s\0A\00", [49 x i8] zeroinitializer }, align 32
@cx18_api_call._entry_ptr.88 = internal global ptr @cx18_api_call._entry.86, section ".printk_index", align 4
@api_info = internal constant { [43 x %struct.cx18_api_info], [156 x i8] } { [43 x %struct.cx18_api_info] [%struct.cx18_api_info { i32 537001985, i8 0, i8 1, ptr @.str.89 }, %struct.cx18_api_info { i32 33554435, i8 0, i8 1, ptr @.str.90 }, %struct.cx18_api_info { i32 1073741825, i8 0, i8 1, ptr @.str.91 }, %struct.cx18_api_info { i32 1073741826, i8 0, i8 1, ptr @.str.92 }, %struct.cx18_api_info { i32 537001986, i8 8, i8 1, ptr @.str.93 }, %struct.cx18_api_info { i32 537001987, i8 8, i8 1, ptr @.str.94 }, %struct.cx18_api_info { i32 537001991, i8 0, i8 1, ptr @.str.95 }, %struct.cx18_api_info { i32 537001992, i8 0, i8 1, ptr @.str.96 }, %struct.cx18_api_info { i32 537001985, i8 0, i8 1, ptr @.str.89 }, %struct.cx18_api_info { i32 537002002, i8 0, i8 1, ptr @.str.97 }, %struct.cx18_api_info { i32 537001988, i8 0, i8 1, ptr @.str.98 }, %struct.cx18_api_info { i32 537001989, i8 0, i8 1, ptr @.str.99 }, %struct.cx18_api_info { i32 537001990, i8 0, i8 1, ptr @.str.100 }, %struct.cx18_api_info { i32 537001993, i8 0, i8 1, ptr @.str.101 }, %struct.cx18_api_info { i32 537001996, i8 0, i8 1, ptr @.str.102 }, %struct.cx18_api_info { i32 537001998, i8 0, i8 1, ptr @.str.103 }, %struct.cx18_api_info { i32 537002000, i8 0, i8 1, ptr @.str.104 }, %struct.cx18_api_info { i32 537002001, i8 0, i8 1, ptr @.str.105 }, %struct.cx18_api_info { i32 537002003, i8 0, i8 1, ptr @.str.106 }, %struct.cx18_api_info { i32 537002004, i8 0, i8 1, ptr @.str.107 }, %struct.cx18_api_info { i32 537002005, i8 0, i8 1, ptr @.str.108 }, %struct.cx18_api_info { i32 537002006, i8 8, i8 1, ptr @.str.109 }, %struct.cx18_api_info { i32 537002007, i8 0, i8 1, ptr @.str.110 }, %struct.cx18_api_info { i32 537002008, i8 0, i8 1, ptr @.str.111 }, %struct.cx18_api_info { i32 537002009, i8 0, i8 1, ptr @.str.112 }, %struct.cx18_api_info { i32 537002010, i8 0, i8 1, ptr @.str.113 }, %struct.cx18_api_info { i32 537002011, i8 0, i8 1, ptr @.str.114 }, %struct.cx18_api_info { i32 537002012, i8 0, i8 1, ptr @.str.115 }, %struct.cx18_api_info { i32 537002013, i8 0, i8 1, ptr @.str.116 }, %struct.cx18_api_info { i32 537002014, i8 0, i8 1, ptr @.str.117 }, %struct.cx18_api_info { i32 537002015, i8 0, i8 1, ptr @.str.118 }, %struct.cx18_api_info { i32 537002016, i8 0, i8 1, ptr @.str.119 }, %struct.cx18_api_info { i32 537002017, i8 0, i8 1, ptr @.str.120 }, %struct.cx18_api_info { i32 537002018, i8 0, i8 1, ptr @.str.121 }, %struct.cx18_api_info { i32 537002019, i8 0, i8 1, ptr @.str.122 }, %struct.cx18_api_info { i32 537133058, i8 0, i8 1, ptr @.str.123 }, %struct.cx18_api_info { i32 537133061, i8 4, i8 1, ptr @.str.124 }, %struct.cx18_api_info { i32 537133062, i8 8, i8 1, ptr @.str.125 }, %struct.cx18_api_info { i32 268435457, i8 0, i8 0, ptr @.str.126 }, %struct.cx18_api_info { i32 268435458, i8 0, i8 0, ptr @.str.127 }, %struct.cx18_api_info { i32 268435461, i8 0, i8 0, ptr @.str.128 }, %struct.cx18_api_info { i32 536870915, i8 0, i8 1, ptr @.str.129 }, %struct.cx18_api_info { i32 0, i8 0, i8 0, ptr @.str.130 }], [156 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CX18_CPU_SET_CHANNEL_TYPE\00", [38 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CX18_EPU_DEBUG\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CX18_CREATE_TASK\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"CX18_DESTROY_TASK\00", [46 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CX18_CPU_CAPTURE_START\00", [41 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CX18_CPU_CAPTURE_STOP\00", [42 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CX18_CPU_CAPTURE_PAUSE\00", [41 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CX18_CPU_CAPTURE_RESUME\00", [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CX18_CPU_SET_STREAM_OUTPUT_TYPE\00", [32 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CX18_CPU_SET_VIDEO_IN\00", [42 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CX18_CPU_SET_VIDEO_RATE\00", [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CX18_CPU_SET_VIDEO_RESOLUTION\00", [34 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CX18_CPU_SET_FILTER_PARAM\00", [38 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CX18_CPU_SET_SPATIAL_FILTER_TYPE\00", [63 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CX18_CPU_SET_MEDIAN_CORING\00", [37 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CX18_CPU_SET_INDEXTABLE\00", [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CX18_CPU_SET_AUDIO_PARAMETERS\00", [34 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CX18_CPU_SET_VIDEO_MUTE\00", [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CX18_CPU_SET_AUDIO_MUTE\00", [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CX18_CPU_SET_MISC_PARAMETERS\00", [35 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CX18_CPU_SET_RAW_VBI_PARAM\00", [37 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CX18_CPU_SET_CAPTURE_LINE_NO\00", [35 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CX18_CPU_SET_COPYRIGHT\00", [41 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CX18_CPU_SET_AUDIO_PID\00", [41 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CX18_CPU_SET_VIDEO_PID\00", [41 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CX18_CPU_SET_VER_CROP_LINE\00", [37 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CX18_CPU_SET_GOP_STRUCTURE\00", [37 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CX18_CPU_SET_SCENE_CHANGE_DETECTION\00", [60 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CX18_CPU_SET_ASPECT_RATIO\00", [38 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CX18_CPU_SET_SKIP_INPUT_FRAME\00", [34 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CX18_CPU_SET_SLICED_VBI_PARAM\00", [34 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CX18_CPU_SET_USERDATA_PLACE_HOLDER\00", [61 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CX18_CPU_GET_ENC_PTS\00", [43 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CX18_CPU_SET_VFC_PARAM\00", [41 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CX18_CPU_DE_SET_MDL_ACK\00", [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CX18_CPU_DE_SET_MDL\00", [44 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CX18_CPU_DE_RELEASE_MDL\00", [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CX18_APU_START\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CX18_APU_STOP\00", [18 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CX18_APU_RESETAI\00", [47 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CX18_CPU_DEBUG_PEEK32\00", [42 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.131 = internal global [4 x i64] [i64 2, i64 32, i64 33554435, i64 33816577]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 33554435, i64 33816577]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.137 = internal global [19 x i64] [i64 17, i64 32, i64 143, i64 145, i64 149, i64 151, i64 153, i64 155, i64 157, i64 159, i64 161, i64 185, i64 187, i64 189, i64 197, i64 208, i64 217, i64 218, i64 220]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 541, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 558, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [8 x i8] c"rpu_str\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 20, i32 20 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 561, i32 26 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 809, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 833, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 837, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 347, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 354, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 244, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 279, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 285, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 287, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 292, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 328, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 331, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 20, i32 34 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 20, i32 41 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 20, i32 48 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 20, i32 55 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 112, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 99, i32 19 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 480, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 487, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 397, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 406, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 593, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 600, i32 5 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 604, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 623, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 646, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 649, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 667, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 690, i32 4 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 693, i32 4 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 702, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 705, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 723, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant [9 x i8] c"api_info\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 34, i32 35 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 36, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 37, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 38, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 39, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 40, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 41, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 42, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 43, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 45, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 46, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 47, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 48, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 49, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 50, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 51, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 52, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 53, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 54, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 55, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 56, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 57, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 58, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 59, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 60, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 61, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 62, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 63, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 64, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 65, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 66, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 67, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 68, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 69, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 70, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 71, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 72, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 73, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 74, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 75, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 76, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 77, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.503 = private constant [41 x i8] c"../drivers/media/pci/cx18/cx18-mailbox.c\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.503, i32 78, i32 2 }
@llvm.compiler.used = appending global [153 x ptr] [ptr @cx18_api_call._entry, ptr @cx18_api_call._entry.57, ptr @cx18_api_call._entry.60, ptr @cx18_api_call._entry.62, ptr @cx18_api_call._entry.65, ptr @cx18_api_call._entry.68, ptr @cx18_api_call._entry.71, ptr @cx18_api_call._entry.74, ptr @cx18_api_call._entry.77, ptr @cx18_api_call._entry.80, ptr @cx18_api_call._entry.83, ptr @cx18_api_call._entry.86, ptr @cx18_api_call._entry_ptr, ptr @cx18_api_call._entry_ptr.59, ptr @cx18_api_call._entry_ptr.61, ptr @cx18_api_call._entry_ptr.64, ptr @cx18_api_call._entry_ptr.67, ptr @cx18_api_call._entry_ptr.70, ptr @cx18_api_call._entry_ptr.73, ptr @cx18_api_call._entry_ptr.76, ptr @cx18_api_call._entry_ptr.79, ptr @cx18_api_call._entry_ptr.82, ptr @cx18_api_call._entry_ptr.85, ptr @cx18_api_call._entry_ptr.88, ptr @cx18_api_epu_cmd_irq._entry, ptr @cx18_api_epu_cmd_irq._entry.3, ptr @cx18_api_epu_cmd_irq._entry_ptr, ptr @cx18_api_epu_cmd_irq._entry_ptr.5, ptr @cx18_api_func._entry, ptr @cx18_api_func._entry_ptr, ptr @cx18_vapi._entry, ptr @cx18_vapi._entry.11, ptr @cx18_vapi._entry_ptr, ptr @cx18_vapi._entry_ptr.13, ptr @dump_mb._entry, ptr @dump_mb._entry_ptr, ptr @epu_cmd._entry, ptr @epu_cmd._entry.16, ptr @epu_cmd._entry_ptr, ptr @epu_cmd._entry_ptr.18, ptr @epu_cmd_irq._entry, ptr @epu_cmd_irq._entry.48, ptr @epu_cmd_irq._entry_ptr, ptr @epu_cmd_irq._entry_ptr.49, ptr @epu_debug._entry, ptr @epu_debug._entry.37, ptr @epu_debug._entry_ptr, ptr @epu_debug._entry_ptr.39, ptr @epu_dma_done._entry, ptr @epu_dma_done._entry.23, ptr @epu_dma_done._entry.26, ptr @epu_dma_done._entry.29, ptr @epu_dma_done._entry.32, ptr @epu_dma_done._entry_ptr, ptr @epu_dma_done._entry_ptr.25, ptr @epu_dma_done._entry_ptr.28, ptr @epu_dma_done._entry_ptr.31, ptr @epu_dma_done._entry_ptr.34, ptr @mb_ack_irq._entry, ptr @mb_ack_irq._entry.52, ptr @mb_ack_irq._entry_ptr, ptr @mb_ack_irq._entry_ptr.54, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @rpu_str, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @api_info, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_api_epu_cmd_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_api_epu_cmd_irq._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpu_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_api_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_vapi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_vapi._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epu_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epu_cmd._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epu_dma_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epu_dma_done._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epu_dma_done._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epu_dma_done._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epu_dma_done._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epu_debug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epu_debug._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_mb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epu_cmd_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @epu_cmd_irq._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb_ack_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mb_ack_irq._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_api_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_api_call._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_api_call._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_api_call._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_api_call._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_api_call._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_api_call._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_api_call._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_api_call._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 150, i32 192, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_api_call._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 102, i32 160, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_api_call._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_api_call._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @api_info to i32), i32 516, i32 672, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_in_work_handler(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_in_work_order, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %rpu.i = getelementptr inbounds %struct.cx18_in_work_order, ptr %work, i32 0, i32 4
  %2 = ptrtoint ptr %rpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rpu.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.epu_cmd.exit_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %do.end7.i
  ]

entry.epu_cmd.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %epu_cmd.exit

sw.bb.i:                                          ; preds = %entry
  %cmd.i = getelementptr inbounds %struct.cx18_in_work_order, ptr %work, i32 0, i32 5, i32 3
  %5 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cmd.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %6, label %do.end.i [
    i32 33816577, label %sw.bb1.i
    i32 33554435, label %sw.bb2.i
  ]

sw.bb1.i:                                         ; preds = %sw.bb.i
  %mb1.i.i = getelementptr inbounds %struct.cx18_in_work_order, ptr %work, i32 0, i32 5
  %args.i.i = getelementptr inbounds %struct.cx18_in_work_order, ptr %work, i32 0, i32 5, i32 4
  %8 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %args.i.i, align 4
  %call.i.i = tail call ptr @cx18_handle_to_stream(ptr noundef %1, i32 noundef %9) #10
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %flags.i.i = getelementptr inbounds %struct.cx18_in_work_order, ptr %work, i32 0, i32 3
  %10 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, ptr @.str.22, ptr @.str.21
  %12 = ptrtoint ptr %mb1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mb1.i.i, align 4
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i.i, i32 noundef %9, ptr noundef nonnull %cond.i.i, i32 noundef %13) #13
  br label %epu_cmd.exit

if.end.i.i:                                       ; preds = %sw.bb1.i
  %arrayidx4.i.i = getelementptr %struct.cx18_in_work_order, ptr %work, i32 0, i32 5, i32 4, i32 2
  %14 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp7208.not.i.i = icmp eq i32 %15, 0
  br i1 %cmp7208.not.i.i, label %if.end.i.i.for.end.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %mdl_ack5.i.i = getelementptr inbounds %struct.cx18_in_work_order, ptr %work, i32 0, i32 6
  %flags9.i.i = getelementptr inbounds %struct.cx18_in_work_order, ptr %work, i32 0, i32 3
  %mdl_base_idx.i.i = getelementptr inbounds %struct.cx18_stream, ptr %call.i.i, i32 0, i32 7
  %buffers.i.i = getelementptr inbounds %struct.cx18_stream, ptr %call.i.i, i32 0, i32 13
  %name40.i.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %name42.i.i = getelementptr inbounds %struct.cx18_stream, ptr %call.i.i, i32 0, i32 3
  %type.i.i = getelementptr inbounds %struct.cx18_stream, ptr %call.i.i, i32 0, i32 4
  %vb_lock.i.i.i = getelementptr inbounds %struct.cx18_stream, ptr %call.i.i, i32 0, i32 26
  %vb_capture.i.i.i = getelementptr inbounds %struct.cx18_stream, ptr %call.i.i, i32 0, i32 25
  %vb_bytes_per_frame.i.i.i = getelementptr inbounds %struct.cx18_stream, ptr %call.i.i, i32 0, i32 23
  %vb_timeout.i.i.i = getelementptr inbounds %struct.cx18_stream, ptr %call.i.i, i32 0, i32 27
  %q_free95.i.i = getelementptr inbounds %struct.cx18_stream, ptr %call.i.i, i32 0, i32 17
  %pcm_announce_callback.i.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 31
  %alsa22.i.i.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 30
  %q_full.i.i = getelementptr inbounds %struct.cx18_stream, ptr %call.i.i, i32 0, i32 19
  %dvb.i.i.i = getelementptr inbounds %struct.cx18_stream, ptr %call.i.i, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %mdl_ack.0210.i.i = phi ptr [ %mdl_ack5.i.i, %for.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.0209.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %16 = ptrtoint ptr %mdl_ack.0210.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mdl_ack.0210.i.i, align 4
  %18 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags9.i.i, align 4
  %and10.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  br i1 %tobool11.not.i.i, label %for.body.i.i.if.end26.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.if.end26.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %20 = ptrtoint ptr %mdl_base_idx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mdl_base_idx.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp12.not.i.i = icmp ult i32 %17, %21
  br i1 %cmp12.not.i.i, label %land.lhs.true.i.i.do.end19.i.i_crit_edge, label %land.lhs.true13.i.i

land.lhs.true.i.i.do.end19.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i.i

land.lhs.true13.i.i:                              ; preds = %land.lhs.true.i.i
  %22 = ptrtoint ptr %buffers.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %buffers.i.i, align 4
  %add.i.i = add i32 %23, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %add.i.i)
  %cmp15.i.i = icmp ult i32 %17, %add.i.i
  br i1 %cmp15.i.i, label %land.lhs.true13.i.i.if.end26.i.i_crit_edge, label %land.lhs.true13.i.i.do.end19.i.i_crit_edge

land.lhs.true13.i.i.do.end19.i.i_crit_edge:       ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end19.i.i

land.lhs.true13.i.i.if.end26.i.i_crit_edge:       ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i

do.end19.i.i:                                     ; preds = %land.lhs.true13.i.i.do.end19.i.i_crit_edge, %land.lhs.true.i.i.do.end19.i.i_crit_edge
  %24 = ptrtoint ptr %mb1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mb1.i.i, align 4
  %call25.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name40.i.i, i32 noundef %25) #13
  br label %for.end.i.i

if.end26.i.i:                                     ; preds = %land.lhs.true13.i.i.if.end26.i.i_crit_edge, %for.body.i.i.if.end26.i.i_crit_edge
  %data_used.i.i = getelementptr inbounds %struct.cx18_mdl_ack, ptr %mdl_ack.0210.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %data_used.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_used.i.i, align 4
  %call27.i.i = tail call ptr @cx18_queue_get_mdl(ptr noundef %call.i.i, i32 noundef %17, i32 noundef %27) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %28 = load i32, ptr @cx18_debug, align 4
  %29 = and i32 %28, 264
  call void @__sanitizer_cov_trace_const_cmp4(i32 264, i32 %29)
  %.not.i.i = icmp eq i32 %29, 264
  br i1 %.not.i.i, label %do.end37.i.i, label %if.end26.i.i.do.end46.i.i_crit_edge

if.end26.i.i.do.end46.i.i_crit_edge:              ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46.i.i

do.end37.i.i:                                     ; preds = %if.end26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %name42.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name42.i.i, align 8
  %call43.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name40.i.i, ptr noundef %31, i32 noundef %17) #13
  br label %do.end46.i.i

do.end46.i.i:                                     ; preds = %do.end37.i.i, %if.end26.i.i.do.end46.i.i_crit_edge
  %cmp47.i.i = icmp eq ptr %call27.i.i, null
  br i1 %cmp47.i.i, label %do.end51.i.i, label %do.body59.i.i

do.end51.i.i:                                     ; preds = %do.end46.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %name42.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name42.i.i, align 8
  %call57.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name40.i.i, i32 noundef %17, ptr noundef %33) #13
  br label %for.inc.i.i

do.body59.i.i:                                    ; preds = %do.end46.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %34 = load i32, ptr @cx18_debug, align 4
  %35 = and i32 %34, 264
  call void @__sanitizer_cov_trace_const_cmp4(i32 264, i32 %35)
  %.not207.i.i = icmp eq i32 %35, 264
  br i1 %.not207.i.i, label %do.end68.i.i, label %do.body59.i.i.do.end77.i.i_crit_edge

do.body59.i.i.do.end77.i.i_crit_edge:             ; preds = %do.body59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end77.i.i

do.end68.i.i:                                     ; preds = %do.body59.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %name42.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name42.i.i, align 8
  %bytesused.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %call27.i.i, i32 0, i32 6
  %38 = ptrtoint ptr %bytesused.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %bytesused.i.i, align 4
  %call74.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name40.i.i, ptr noundef %37, i32 noundef %39) #13
  br label %do.end77.i.i

do.end77.i.i:                                     ; preds = %do.end68.i.i, %do.body59.i.i.do.end77.i.i_crit_edge
  %40 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %type.i.i, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %41, label %if.else97.i.i [
    i32 1, label %if.then79.i.i
    i32 4, label %if.then83.i.i
    i32 2, label %if.then94.i.i
  ]

if.then79.i.i:                                    ; preds = %do.end77.i.i
  %43 = ptrtoint ptr %dvb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dvb.i.i.i, align 8
  %cmp.i.i.i = icmp eq ptr %44, null
  br i1 %cmp.i.i.i, label %if.then79.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.then79.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge: ; preds = %if.then79.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_mdl_send_to_dvb.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.then79.i.i
  %enabled.i.i.i = getelementptr inbounds %struct.cx18_dvb, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %enabled.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %enabled.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i.i.i = icmp eq i32 %46, 0
  br i1 %tobool.not.i.i.i, label %lor.lhs.false.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge, label %lor.lhs.false2.i.i.i

lor.lhs.false.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_mdl_send_to_dvb.exit.i.i

lor.lhs.false2.i.i.i:                             ; preds = %lor.lhs.false.i.i.i
  %bytesused.i.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %call27.i.i, i32 0, i32 6
  %47 = ptrtoint ptr %bytesused.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bytesused.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp3.i.i.i = icmp eq i32 %48, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false2.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge, label %if.end.i.i.i

lor.lhs.false2.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge: ; preds = %lor.lhs.false2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_mdl_send_to_dvb.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false2.i.i.i
  %buf_list.i.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %call27.i.i, i32 0, i32 4
  %49 = ptrtoint ptr %buf_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile ptr, ptr %buf_list.i.i.i, align 4
  %cmp.i.not.i.i.i.i = icmp eq ptr %50, %buf_list.i.i.i
  br i1 %cmp.i.not.i.i.i.i, label %if.end.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge, label %land.rhs.i.i.i.i

if.end.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_mdl_send_to_dvb.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i.i.i
  %prev.i.i.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %call27.i.i, i32 0, i32 4, i32 1
  %51 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %50, %52
  br i1 %cmp.i.not.i.i.i, label %if.then5.i.i.i, label %land.rhs.i.i.i.i.for.body.i.i.i_crit_edge

land.rhs.i.i.i.i.for.body.i.i.i_crit_edge:        ; preds = %land.rhs.i.i.i.i
  br label %for.body.i.i.i

if.then5.i.i.i:                                   ; preds = %land.rhs.i.i.i.i
  %bytesused7.i.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %50, i32 0, i32 3
  %53 = ptrtoint ptr %bytesused7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bytesused7.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool8.not.i.i.i = icmp eq i32 %54, 0
  br i1 %tobool8.not.i.i.i, label %if.then5.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge, label %if.then9.i.i.i

if.then5.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge: ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_mdl_send_to_dvb.exit.i.i

if.then9.i.i.i:                                   ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %demux.i.i.i = getelementptr inbounds %struct.cx18_dvb, ptr %44, i32 0, i32 5
  %buf11.i.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %50, i32 0, i32 2
  %55 = ptrtoint ptr %buf11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buf11.i.i.i, align 4
  tail call void @dvb_dmx_swfilter(ptr noundef %demux.i.i.i, ptr noundef %56, i32 noundef %54) #10
  br label %cx18_mdl_send_to_dvb.exit.i.i

for.body.i.i.i:                                   ; preds = %if.end25.i.i.i.for.body.i.i.i_crit_edge, %land.rhs.i.i.i.i.for.body.i.i.i_crit_edge
  %buf.053.i.i.i = phi ptr [ %buf.0.i.i.i, %if.end25.i.i.i.for.body.i.i.i_crit_edge ], [ %50, %land.rhs.i.i.i.i.for.body.i.i.i_crit_edge ]
  %bytesused22.i.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %buf.053.i.i.i, i32 0, i32 3
  %57 = ptrtoint ptr %bytesused22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bytesused22.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp23.i.i.i = icmp eq i32 %58, 0
  br i1 %cmp23.i.i.i, label %for.body.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge, label %if.end25.i.i.i

for.body.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_mdl_send_to_dvb.exit.i.i

if.end25.i.i.i:                                   ; preds = %for.body.i.i.i
  %59 = ptrtoint ptr %dvb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dvb.i.i.i, align 8
  %demux27.i.i.i = getelementptr inbounds %struct.cx18_dvb, ptr %60, i32 0, i32 5
  %buf28.i.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %buf.053.i.i.i, i32 0, i32 2
  %61 = ptrtoint ptr %buf28.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %buf28.i.i.i, align 4
  tail call void @dvb_dmx_swfilter(ptr noundef %demux27.i.i.i, ptr noundef %62, i32 noundef %58) #10
  %63 = ptrtoint ptr %buf.053.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %buf.0.i.i.i = load ptr, ptr %buf.053.i.i.i, align 4
  %cmp21.not.i.i.i = icmp eq ptr %buf.0.i.i.i, %buf_list.i.i.i
  br i1 %cmp21.not.i.i.i, label %if.end25.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge, label %if.end25.i.i.i.for.body.i.i.i_crit_edge

if.end25.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i.i

if.end25.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge: ; preds = %if.end25.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_mdl_send_to_dvb.exit.i.i

cx18_mdl_send_to_dvb.exit.i.i:                    ; preds = %if.end25.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge, %for.body.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge, %if.then9.i.i.i, %if.then5.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge, %if.end.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge, %lor.lhs.false2.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge, %if.then79.i.i.cx18_mdl_send_to_dvb.exit.i.i_crit_edge
  %call.i.i.i = tail call ptr @_cx18_enqueue(ptr noundef %call.i.i, ptr noundef nonnull %call27.i.i, ptr noundef %q_free95.i.i, i32 noundef 0) #10
  br label %for.inc.i.i

if.then83.i.i:                                    ; preds = %do.end77.i.i
  %64 = ptrtoint ptr %pcm_announce_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pcm_announce_callback.i.i, align 4
  %cmp84.not.i.i = icmp eq ptr %65, null
  br i1 %cmp84.not.i.i, label %if.else88.i.i, label %if.then85.i.i

if.then85.i.i:                                    ; preds = %if.then83.i.i
  %bytesused.i180.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %call27.i.i, i32 0, i32 6
  %66 = ptrtoint ptr %bytesused.i180.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %bytesused.i180.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp.i181.i.i = icmp eq i32 %67, 0
  br i1 %cmp.i181.i.i, label %if.then85.i.i.cx18_mdl_send_to_alsa.exit.i.i_crit_edge, label %if.end.i184.i.i

if.then85.i.i.cx18_mdl_send_to_alsa.exit.i.i_crit_edge: ; preds = %if.then85.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_mdl_send_to_alsa.exit.i.i

if.end.i184.i.i:                                  ; preds = %if.then85.i.i
  %buf_list.i182.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %call27.i.i, i32 0, i32 4
  %68 = ptrtoint ptr %buf_list.i182.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %buf_list.i182.i.i, align 4
  %cmp.i.not.i.i183.i.i = icmp eq ptr %69, %buf_list.i182.i.i
  br i1 %cmp.i.not.i.i183.i.i, label %if.end.i184.i.i.cx18_mdl_send_to_alsa.exit.i.i_crit_edge, label %land.rhs.i.i188.i.i

if.end.i184.i.i.cx18_mdl_send_to_alsa.exit.i.i_crit_edge: ; preds = %if.end.i184.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_mdl_send_to_alsa.exit.i.i

land.rhs.i.i188.i.i:                              ; preds = %if.end.i184.i.i
  %prev.i.i186.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %call27.i.i, i32 0, i32 4, i32 1
  %70 = ptrtoint ptr %prev.i.i186.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i.i186.i.i, align 4
  %cmp.i.not.i187.i.i = icmp eq ptr %69, %71
  br i1 %cmp.i.not.i187.i.i, label %if.then1.i.i.i, label %land.rhs.i.i188.i.i.for.body.i190.i.i_crit_edge

land.rhs.i.i188.i.i.for.body.i190.i.i_crit_edge:  ; preds = %land.rhs.i.i188.i.i
  br label %for.body.i190.i.i

if.then1.i.i.i:                                   ; preds = %land.rhs.i.i188.i.i
  %bytesused3.i.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %69, i32 0, i32 3
  %72 = ptrtoint ptr %bytesused3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %bytesused3.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool4.not.i.i.i = icmp eq i32 %73, 0
  br i1 %tobool4.not.i.i.i, label %if.then1.i.i.i.cx18_mdl_send_to_alsa.exit.i.i_crit_edge, label %if.then5.i189.i.i

if.then1.i.i.i.cx18_mdl_send_to_alsa.exit.i.i_crit_edge: ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_mdl_send_to_alsa.exit.i.i

if.then5.i189.i.i:                                ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %alsa22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %alsa22.i.i.i, align 8
  %buf6.i.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %69, i32 0, i32 2
  %76 = ptrtoint ptr %buf6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %buf6.i.i.i, align 4
  tail call void %65(ptr noundef %75, ptr noundef %77, i32 noundef %73) #10
  br label %cx18_mdl_send_to_alsa.exit.i.i

for.body.i190.i.i:                                ; preds = %if.end20.i.i.i.for.body.i190.i.i_crit_edge, %land.rhs.i.i188.i.i.for.body.i190.i.i_crit_edge
  %buf.03.i.i.i = phi ptr [ %buf.0.i191.i.i, %if.end20.i.i.i.for.body.i190.i.i_crit_edge ], [ %69, %land.rhs.i.i188.i.i.for.body.i190.i.i_crit_edge ]
  %bytesused17.i.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %buf.03.i.i.i, i32 0, i32 3
  %78 = ptrtoint ptr %bytesused17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %bytesused17.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp18.i.i.i = icmp eq i32 %79, 0
  br i1 %cmp18.i.i.i, label %for.body.i190.i.i.cx18_mdl_send_to_alsa.exit.i.i_crit_edge, label %if.end20.i.i.i

for.body.i190.i.i.cx18_mdl_send_to_alsa.exit.i.i_crit_edge: ; preds = %for.body.i190.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_mdl_send_to_alsa.exit.i.i

if.end20.i.i.i:                                   ; preds = %for.body.i190.i.i
  %80 = ptrtoint ptr %pcm_announce_callback.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pcm_announce_callback.i.i, align 4
  %82 = ptrtoint ptr %alsa22.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %alsa22.i.i.i, align 8
  %buf23.i.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %buf.03.i.i.i, i32 0, i32 2
  %84 = ptrtoint ptr %buf23.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %buf23.i.i.i, align 4
  tail call void %81(ptr noundef %83, ptr noundef %85, i32 noundef %79) #10
  %86 = ptrtoint ptr %buf.03.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %buf.0.i191.i.i = load ptr, ptr %buf.03.i.i.i, align 4
  %cmp16.not.i.i.i = icmp eq ptr %buf.0.i191.i.i, %buf_list.i182.i.i
  br i1 %cmp16.not.i.i.i, label %if.end20.i.i.i.cx18_mdl_send_to_alsa.exit.i.i_crit_edge, label %if.end20.i.i.i.for.body.i190.i.i_crit_edge

if.end20.i.i.i.for.body.i190.i.i_crit_edge:       ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i190.i.i

if.end20.i.i.i.cx18_mdl_send_to_alsa.exit.i.i_crit_edge: ; preds = %if.end20.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_mdl_send_to_alsa.exit.i.i

cx18_mdl_send_to_alsa.exit.i.i:                   ; preds = %if.end20.i.i.i.cx18_mdl_send_to_alsa.exit.i.i_crit_edge, %for.body.i190.i.i.cx18_mdl_send_to_alsa.exit.i.i_crit_edge, %if.then5.i189.i.i, %if.then1.i.i.i.cx18_mdl_send_to_alsa.exit.i.i_crit_edge, %if.end.i184.i.i.cx18_mdl_send_to_alsa.exit.i.i_crit_edge, %if.then85.i.i.cx18_mdl_send_to_alsa.exit.i.i_crit_edge
  %call.i192.i.i = tail call ptr @_cx18_enqueue(ptr noundef %call.i.i, ptr noundef nonnull %call27.i.i, ptr noundef %q_free95.i.i, i32 noundef 0) #10
  br label %for.inc.i.i

if.else88.i.i:                                    ; preds = %if.then83.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i193.i.i = tail call ptr @_cx18_enqueue(ptr noundef %call.i.i, ptr noundef nonnull %call27.i.i, ptr noundef %q_full.i.i, i32 noundef 0) #10
  br label %for.inc.i.i

if.then94.i.i:                                    ; preds = %do.end77.i.i
  %bytesused.i194.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %call27.i.i, i32 0, i32 6
  %87 = ptrtoint ptr %bytesused.i194.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bytesused.i194.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp.i195.i.i = icmp eq i32 %88, 0
  br i1 %cmp.i195.i.i, label %if.then94.i.i.cx18_mdl_send_to_videobuf.exit.i.i_crit_edge, label %if.end.i197.i.i

if.then94.i.i.cx18_mdl_send_to_videobuf.exit.i.i_crit_edge: ; preds = %if.then94.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_mdl_send_to_videobuf.exit.i.i

if.end.i197.i.i:                                  ; preds = %if.then94.i.i
  tail call void @_raw_spin_lock(ptr noundef %vb_lock.i.i.i) #10
  %89 = ptrtoint ptr %vb_capture.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile ptr, ptr %vb_capture.i.i.i, align 4
  %cmp.i.not.i196.i.i = icmp eq ptr %90, %vb_capture.i.i.i
  br i1 %cmp.i.not.i196.i.i, label %if.end.i197.i.i.out.i.i.i_crit_edge, label %if.end2.i.i.i

if.end.i197.i.i.out.i.i.i_crit_edge:              ; preds = %if.end.i197.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

if.end2.i.i.i:                                    ; preds = %if.end.i197.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %90, i32 -40
  %call4.i.i.i = tail call ptr @videobuf_to_vmalloc(ptr noundef %add.ptr.i.i.i) #10
  %tobool5.not.i.i.i = icmp eq ptr %call4.i.i.i, null
  br i1 %tobool5.not.i.i.i, label %if.end2.i.i.i.out.i.i.i_crit_edge, label %if.end7.i.i.i

if.end2.i.i.i.out.i.i.i_crit_edge:                ; preds = %if.end2.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end2.i.i.i
  %bytes_used.i.i.i = getelementptr i8, ptr %90, i32 112
  %buf_list.i198.i.i = getelementptr inbounds %struct.cx18_mdl, ptr %call27.i.i, i32 0, i32 4
  %91 = ptrtoint ptr %buf_list.i198.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %buf.083.i.i.i = load ptr, ptr %buf_list.i198.i.i, align 4
  %cmp13.not84.i.i.i = icmp eq ptr %buf.083.i.i.i, %buf_list.i198.i.i
  br i1 %cmp13.not84.i.i.i, label %if.end7.i.i.i.for.end.i.i.i_crit_edge, label %for.body.lr.ph.i199.i.i

if.end7.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

for.body.lr.ph.i199.i.i:                          ; preds = %if.end7.i.i.i
  %92 = ptrtoint ptr %bytes_used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %bytes_used.i.i.i, align 8
  %bsize.i.i.i = getelementptr i8, ptr %90, i32 76
  br label %for.body.i200.i.i

for.body.i200.i.i:                                ; preds = %for.inc.i.i.i.for.body.i200.i.i_crit_edge, %for.body.lr.ph.i199.i.i
  %buf.086.i.i.i = phi ptr [ %buf.083.i.i.i, %for.body.lr.ph.i199.i.i ], [ %buf.0.i202.i.i, %for.inc.i.i.i.for.body.i200.i.i_crit_edge ]
  %offset.085.i.i.i = phi i32 [ %93, %for.body.lr.ph.i199.i.i ], [ %offset.1.i.i.i, %for.inc.i.i.i.for.body.i200.i.i_crit_edge ]
  %bytesused14.i.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %buf.086.i.i.i, i32 0, i32 3
  %94 = ptrtoint ptr %bytesused14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %bytesused14.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp15.i.i.i = icmp eq i32 %95, 0
  br i1 %cmp15.i.i.i, label %for.body.i200.i.i.for.end.i.i.i_crit_edge, label %if.end17.i.i.i

for.body.i200.i.i.for.end.i.i.i_crit_edge:        ; preds = %for.body.i200.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

if.end17.i.i.i:                                   ; preds = %for.body.i200.i.i
  %add.i.i.i = add i32 %95, %offset.085.i.i.i
  %96 = ptrtoint ptr %bsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bsize.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %97)
  %cmp20.not.i.i.i = icmp ugt i32 %add.i.i.i, %97
  br i1 %cmp20.not.i.i.i, label %if.end17.i.i.i.for.inc.i.i.i_crit_edge, label %if.then21.i.i.i

if.end17.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i.i

if.then21.i.i.i:                                  ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr22.i.i.i = getelementptr i8, ptr %call4.i.i.i, i32 %offset.085.i.i.i
  %buf23.i201.i.i = getelementptr inbounds %struct.cx18_buffer, ptr %buf.086.i.i.i, i32 0, i32 2
  %98 = ptrtoint ptr %buf23.i201.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %buf23.i201.i.i, align 4
  %100 = call ptr @memcpy(ptr %add.ptr22.i.i.i, ptr %99, i32 %95)
  %101 = ptrtoint ptr %bytesused14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %bytesused14.i.i.i, align 4
  %add26.i.i.i = add i32 %102, %offset.085.i.i.i
  %103 = ptrtoint ptr %bytes_used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %bytes_used.i.i.i, align 8
  %add29.i.i.i = add i32 %104, %102
  store i32 %add29.i.i.i, ptr %bytes_used.i.i.i, align 8
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then21.i.i.i, %if.end17.i.i.i.for.inc.i.i.i_crit_edge
  %offset.1.i.i.i = phi i32 [ %add26.i.i.i, %if.then21.i.i.i ], [ %offset.085.i.i.i, %if.end17.i.i.i.for.inc.i.i.i_crit_edge ]
  %105 = ptrtoint ptr %buf.086.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %buf.0.i202.i.i = load ptr, ptr %buf.086.i.i.i, align 4
  %cmp13.not.i.i.i = icmp eq ptr %buf.0.i202.i.i, %buf_list.i198.i.i
  br i1 %cmp13.not.i.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i200.i.i_crit_edge

for.inc.i.i.i.for.body.i200.i.i_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i200.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %for.body.i200.i.i.for.end.i.i.i_crit_edge, %if.end7.i.i.i.for.end.i.i.i_crit_edge
  %106 = ptrtoint ptr %bytes_used.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %bytes_used.i.i.i, align 8
  %108 = ptrtoint ptr %vb_bytes_per_frame.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %vb_bytes_per_frame.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %109)
  %cmp37.not.i.i.i = icmp ult i32 %107, %109
  br i1 %cmp37.not.i.i.i, label %for.end.i.i.i.if.end48.i.i.i_crit_edge, label %if.then38.i.i.i

for.end.i.i.i.if.end48.i.i.i_crit_edge:           ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48.i.i.i

if.then38.i.i.i:                                  ; preds = %for.end.i.i.i
  %110 = ptrtoint ptr %bytes_used.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %bytes_used.i.i.i, align 8
  %call.i.i.i.i = tail call i64 @ktime_get() #10
  %ts.i.i.i = getelementptr i8, ptr %90, i32 64
  %111 = ptrtoint ptr %ts.i.i.i to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %call.i.i.i.i, ptr %ts.i.i.i, align 8
  %call.i.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %90) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then38.i.i.i.list_del.exit.i.i.i_crit_edge

if.then38.i.i.i.list_del.exit.i.i.i_crit_edge:    ; preds = %if.then38.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then38.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %112 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %114 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %90, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %113, ptr %prev1.i.i.i.i.i.i, align 4
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %117)
  store volatile ptr %115, ptr %113, align 4
  br label %list_del.exit.i.i.i

list_del.exit.i.i.i:                              ; preds = %if.end.i.i.i.i.i, %if.then38.i.i.i.list_del.exit.i.i.i_crit_edge
  %118 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 256 to ptr), ptr %90, align 4
  %prev.i.i203.i.i = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %119 = ptrtoint ptr %prev.i.i203.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i203.i.i, align 4
  %state.i.i.i = getelementptr i8, ptr %90, i32 -12
  %120 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 4, ptr %state.i.i.i, align 4
  %done.i.i.i = getelementptr i8, ptr %90, i32 8
  tail call void @__wake_up(ptr noundef %done.i.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %if.end48.i.i.i

if.end48.i.i.i:                                   ; preds = %list_del.exit.i.i.i, %for.end.i.i.i.if.end48.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %121 = load volatile i32, ptr @jiffies, align 128
  %add50.i.i.i = add i32 %121, 200
  %call51.i.i.i = tail call i32 @mod_timer(ptr noundef %vb_timeout.i.i.i, i32 noundef %add50.i.i.i) #10
  br label %out.i.i.i

out.i.i.i:                                        ; preds = %if.end48.i.i.i, %if.end2.i.i.i.out.i.i.i_crit_edge, %if.end.i197.i.i.out.i.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %vb_lock.i.i.i) #10
  br label %cx18_mdl_send_to_videobuf.exit.i.i

cx18_mdl_send_to_videobuf.exit.i.i:               ; preds = %out.i.i.i, %if.then94.i.i.cx18_mdl_send_to_videobuf.exit.i.i_crit_edge
  %call.i204.i.i = tail call ptr @_cx18_enqueue(ptr noundef %call.i.i, ptr noundef nonnull %call27.i.i, ptr noundef %q_free95.i.i, i32 noundef 0) #10
  br label %for.inc.i.i

if.else97.i.i:                                    ; preds = %do.end77.i.i
  %call.i205.i.i = tail call ptr @_cx18_enqueue(ptr noundef %call.i.i, ptr noundef nonnull %call27.i.i, ptr noundef %q_full.i.i, i32 noundef 0) #10
  %122 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %123)
  %cmp101.i.i = icmp eq i32 %123, 5
  br i1 %cmp101.i.i, label %if.then102.i.i, label %if.else97.i.i.for.inc.i.i_crit_edge

if.else97.i.i.for.inc.i.i_crit_edge:              ; preds = %if.else97.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

if.then102.i.i:                                   ; preds = %if.else97.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cx18_stream_rotate_idx_mdls(ptr noundef %1) #10
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then102.i.i, %if.else97.i.i.for.inc.i.i_crit_edge, %cx18_mdl_send_to_videobuf.exit.i.i, %if.else88.i.i, %cx18_mdl_send_to_alsa.exit.i.i, %cx18_mdl_send_to_dvb.exit.i.i, %do.end51.i.i
  %inc.i.i = add nuw i32 %i.0209.i.i, 1
  %incdec.ptr.i.i = getelementptr %struct.cx18_mdl_ack, ptr %mdl_ack.0210.i.i, i32 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %15
  br i1 %exitcond.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %do.end19.i.i, %if.end.i.i.for.end.i.i_crit_edge
  %out_work_order.i.i.i = getelementptr inbounds %struct.cx18_stream, ptr %call.i.i, i32 0, i32 21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %124 = load ptr, ptr @system_wq, align 4
  %call.i.i.i206.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %124, ptr noundef %out_work_order.i.i.i) #10
  %dma_waitq.i.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 47
  tail call void @__wake_up(ptr noundef %dma_waitq.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  %id107.i.i = getelementptr inbounds %struct.cx18_stream, ptr %call.i.i, i32 0, i32 8
  %125 = ptrtoint ptr %id107.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %id107.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %126)
  %cmp108.not.i.i = icmp eq i32 %126, -1
  br i1 %cmp108.not.i.i, label %for.end.i.i.epu_cmd.exit_crit_edge, label %if.then109.i.i

for.end.i.i.epu_cmd.exit_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %epu_cmd.exit

if.then109.i.i:                                   ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %waitq.i.i = getelementptr inbounds %struct.cx18_stream, ptr %call.i.i, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %waitq.i.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #10
  br label %epu_cmd.exit

sw.bb2.i:                                         ; preds = %sw.bb.i
  %str1.i.i = getelementptr inbounds %struct.cx18_in_work_order, ptr %work, i32 0, i32 7
  %127 = ptrtoint ptr %str1.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %str1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %129 = load i32, ptr @cx18_debug, align 4
  %and.i25.i = and i32 %129, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25.i)
  %tobool.not.i26.i = icmp eq i32 %and.i25.i, 0
  br i1 %tobool.not.i26.i, label %sw.bb2.i.do.end4.i.i_crit_edge, label %do.end.i30.i

sw.bb2.i.do.end4.i.i_crit_edge:                   ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4.i.i

do.end.i30.i:                                     ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i27.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %args.i28.i = getelementptr inbounds %struct.cx18_in_work_order, ptr %work, i32 0, i32 5, i32 4
  %130 = ptrtoint ptr %args.i28.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %args.i28.i, align 4
  %call.i29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name.i27.i, i32 noundef %131, ptr noundef %128) #13
  br label %do.end4.i.i

do.end4.i.i:                                      ; preds = %do.end.i30.i, %sw.bb2.i.do.end4.i.i_crit_edge
  %call5.i.i = tail call ptr @strchr(ptr noundef %128, i32 noundef 46) #10
  %i_flags.i.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 32
  %132 = ptrtoint ptr %i_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %i_flags.i.i, align 4
  %and1.i.i.i = and i32 %133, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool7.not.i.i = icmp eq i32 %and1.i.i.i, 0
  %tobool8.not.i.i = icmp ne ptr %call5.i.i, null
  %or.cond.i.i = select i1 %tobool7.not.i.i, i1 %tobool8.not.i.i, i1 false
  %cmp.i31.i = icmp ugt ptr %call5.i.i, %128
  %or.cond27.i.i = select i1 %or.cond.i.i, i1 %cmp.i31.i, i1 false
  br i1 %or.cond27.i.i, label %do.end13.i.i, label %do.end4.i.i.epu_cmd.exit_crit_edge

do.end4.i.i.epu_cmd.exit_crit_edge:               ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %epu_cmd.exit

do.end13.i.i:                                     ; preds = %do.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %name16.i.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %add.ptr.i.i = getelementptr i8, ptr %call5.i.i, i32 -1
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef %name16.i.i, ptr noundef %add.ptr.i.i) #13
  br label %epu_cmd.exit

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i, i32 noundef %6) #13
  br label %epu_cmd.exit

do.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name10.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %cmd13.i = getelementptr inbounds %struct.cx18_in_work_order, ptr %work, i32 0, i32 5, i32 3
  %134 = ptrtoint ptr %cmd13.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %cmd13.i, align 4
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name10.i, i32 noundef %135) #13
  br label %epu_cmd.exit

epu_cmd.exit:                                     ; preds = %do.end7.i, %do.end.i, %do.end13.i.i, %do.end4.i.i.epu_cmd.exit_crit_edge, %if.then109.i.i, %for.end.i.i.epu_cmd.exit_crit_edge, %do.end.i.i, %entry.epu_cmd.exit_crit_edge
  %pending.i = getelementptr inbounds %struct.cx18_in_work_order, ptr %work, i32 0, i32 1
  %call.i.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending.i, i32 noundef 4) #10
  %136 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile i32 0, ptr %pending.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_api_epu_cmd_irq(ptr noundef %cx, i32 noundef %rpu) local_unnamed_addr #0 align 64 {
entry:
  %argstr.i = alloca [67 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %rpu to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %rpu, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %scb = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 15
  %1 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %scb, align 4
  %cpu2epu_mb = getelementptr inbounds %struct.cx18_scb, ptr %2, i32 0, i32 123
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %scb2 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 15
  %3 = ptrtoint ptr %scb2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %scb2, align 4
  %apu2epu_mb = getelementptr inbounds %struct.cx18_scb, ptr %4, i32 0, i32 124
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %mb.0 = phi ptr [ %apu2epu_mb, %sw.bb1 ], [ %cpu2epu_mb, %sw.bb ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.epilog
  %i.012.i = phi i32 [ 0, %sw.epilog ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %pending.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pending.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1.i = icmp eq i32 %6, 0
  br i1 %cmp1.i, label %alloc_in_work_order_irq.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 70
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

alloc_in_work_order_irq.exit:                     ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i
  %call.i.i10.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pending.i, i32 noundef 4) #10
  %7 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 1, ptr %pending.i, align 4
  %cmp = icmp eq ptr %arrayidx.i, null
  br i1 %cmp, label %alloc_in_work_order_irq.exit.do.end_crit_edge, label %if.end

alloc_in_work_order_irq.exit.do.end_crit_edge:    ; preds = %alloc_in_work_order_irq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %alloc_in_work_order_irq.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #13
  br label %cleanup

if.end:                                           ; preds = %alloc_in_work_order_irq.exit
  %flags = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flags, align 4
  %rpu4 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 4
  %9 = ptrtoint ptr %rpu4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %rpu, ptr %rpu4, align 4
  %cmd = getelementptr inbounds %struct.cx18_mailbox, ptr %mb.0, i32 0, i32 3
  %cmd8 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 5, i32 3
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmd) #10, !srcloc !244
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %12 = ptrtoint ptr %cmd8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cmd8, align 4
  %add.ptr.1 = getelementptr %struct.cx18_mailbox, ptr %mb.0, i32 0, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #10, !srcloc !244
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %arrayidx.1 = getelementptr i32, ptr %cmd8, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx.1, align 4
  %add.ptr.2 = getelementptr %struct.cx18_mailbox, ptr %mb.0, i32 0, i32 4, i32 1
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #10, !srcloc !244
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %arrayidx.2 = getelementptr i32, ptr %cmd8, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx.2, align 4
  %add.ptr.3 = getelementptr %struct.cx18_mailbox, ptr %mb.0, i32 0, i32 4, i32 2
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.3) #10, !srcloc !244
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %arrayidx.3 = getelementptr i32, ptr %cmd8, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx.3, align 4
  %mb5 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 5
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mb.0) #10, !srcloc !244
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %24 = ptrtoint ptr %mb5 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %mb5, align 4
  %add.ptr12.1 = getelementptr i32, ptr %mb.0, i32 1
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.1) #10, !srcloc !244
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %arrayidx15.1 = getelementptr i32, ptr %mb5, i32 1
  %27 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx15.1, align 4
  %28 = ptrtoint ptr %mb5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mb5, align 4
  %ack = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 5, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %26)
  %cmp20 = icmp eq i32 %29, %26
  br i1 %cmp20, label %do.body22, label %if.end.if.end43_crit_edge

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

do.body22:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %30 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body22.do.end37_crit_edge, label %do.end26

do.body22.do.end37_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end37

do.end26:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #12
  %name29 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %arrayidx31 = getelementptr [4 x ptr], ptr @rpu_str, i32 0, i32 %rpu
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx31, align 4
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name29, ptr noundef %32, ptr noundef %32, i32 noundef %26) #13
  br label %do.end37

do.end37:                                         ; preds = %do.end26, %do.body22.do.end37_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %33 = load i32, ptr @cx18_debug, align 4
  %and38 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %do.end37.if.end41_crit_edge, label %if.then40

do.end37.if.end41_crit_edge:                      ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then40:                                        ; preds = %do.end37
  call void @llvm.lifetime.start.p0(i64 67, ptr nonnull %argstr.i) #10
  %34 = call ptr @memset(ptr %argstr.i, i32 255, i32 66)
  %and.i = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then40.dump_mb.exit_crit_edge, label %do.end.i

if.then40.dump_mb.exit_crit_edge:                 ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %dump_mb.exit

do.end.i:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %mb5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mb5, align 4
  %37 = ptrtoint ptr %ack to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ack, align 4
  %39 = ptrtoint ptr %cmd8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cmd8, align 4
  %error.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 5, i32 5
  %41 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %error.i, align 4
  %args.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 5, i32 4
  %43 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %args.i, align 4
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %argstr.i, i32 noundef 12, ptr noundef nonnull @.str.46, i32 noundef %44) #10
  %add.ptr.i.i = getelementptr inbounds i8, ptr %argstr.i, i32 11
  %arrayidx.i.1.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 5, i32 4, i32 1
  %45 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.1.i, align 4
  %call.i.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i.i, i32 noundef 12, ptr noundef nonnull @.str.46, i32 noundef %46) #10
  %add.ptr.i.1.i = getelementptr inbounds i8, ptr %argstr.i, i32 22
  %arrayidx.i.2.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 5, i32 4, i32 2
  %47 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.2.i, align 4
  %call.i.2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i.1.i, i32 noundef 12, ptr noundef nonnull @.str.46, i32 noundef %48) #10
  %add.ptr.i.2.i = getelementptr inbounds i8, ptr %argstr.i, i32 33
  %arrayidx.i.3.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 5, i32 4, i32 3
  %49 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i.3.i, align 4
  %call.i.3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i.2.i, i32 noundef 12, ptr noundef nonnull @.str.46, i32 noundef %50) #10
  %add.ptr.i.3.i = getelementptr inbounds i8, ptr %argstr.i, i32 44
  %arrayidx.i.4.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 5, i32 4, i32 4
  %51 = ptrtoint ptr %arrayidx.i.4.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i.4.i, align 4
  %call.i.4.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i.3.i, i32 noundef 12, ptr noundef nonnull @.str.46, i32 noundef %52) #10
  %add.ptr.i.4.i = getelementptr inbounds i8, ptr %argstr.i, i32 55
  %arrayidx.i.5.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 5, i32 4, i32 5
  %53 = ptrtoint ptr %arrayidx.i.5.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.5.i, align 4
  %call.i.5.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %add.ptr.i.4.i, i32 noundef 12, ptr noundef nonnull @.str.46, i32 noundef %54) #10
  %add.ptr.i.5.i = getelementptr inbounds i8, ptr %argstr.i, i32 66
  %name5.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %55 = ptrtoint ptr %add.ptr.i.5.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %add.ptr.i.5.i, align 1
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %name5.i, ptr noundef nonnull @.str.6, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, ptr noundef nonnull %argstr.i) #13
  br label %dump_mb.exit

dump_mb.exit:                                     ; preds = %do.end.i, %if.then40.dump_mb.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 67, ptr nonnull %argstr.i) #10
  br label %if.end41

if.end41:                                         ; preds = %dump_mb.exit, %do.end37.if.end41_crit_edge
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 1, ptr %flags, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.end41, %if.end.if.end43_crit_edge
  %57 = ptrtoint ptr %rpu4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rpu4, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %58, label %if.end43.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %do.end10.i
  ]

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end43
  %60 = ptrtoint ptr %cmd8 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cmd8, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %61, label %do.end.i86 [
    i32 33816577, label %sw.bb1.i
    i32 33554435, label %sw.bb2.i
  ]

sw.bb1.i:                                         ; preds = %sw.bb.i
  %args.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 5, i32 4
  %63 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %args.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 5, i32 4, i32 1
  %65 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx3.i.i, align 4
  %arrayidx5.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 5, i32 4, i32 2
  %67 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %64)
  %cmp.i.i = icmp eq i32 %64, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp6.i.i = icmp eq i32 %68, 0
  %or.cond.i.i = select i1 %cmp.i.i, i1 true, i1 %cmp6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp8.i.i = icmp ugt i32 %68, 2
  %or.cond40.i.i = select i1 %or.cond.i.i, i1 true, i1 %cmp8.i.i
  br i1 %or.cond40.i.i, label %if.then.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %sw.bb1.i
  %mul.i.i = shl nuw nsw i32 %68, 3
  %enc_mem.i.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 39
  %mdl_ack.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 6
  br label %for.body.i.i

if.then.i.i:                                      ; preds = %sw.bb1.i
  %69 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags, align 4
  %and.i.i = and i32 %70, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp9.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp9.i.i, label %if.then.i.i.cleanup.sink.split.i.i_crit_edge, label %if.then.i.i.cleanup_crit_edge

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i
  %i.042.i.i = phi i32 [ 0, %for.cond.preheader.i.i ], [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %71 = ptrtoint ptr %enc_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %enc_mem.i.i, align 4
  %add.ptr.i.i85 = getelementptr i8, ptr %72, i32 %66
  %add.ptr13.i.i = getelementptr i8, ptr %add.ptr.i.i85, i32 %i.042.i.i
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i.i) #10, !srcloc !244
  %74 = call i32 @llvm.bswap.i32(i32 %73) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %div39.i.i = lshr exact i32 %i.042.i.i, 2
  %arrayidx14.i.i = getelementptr i32, ptr %mdl_ack.i.i, i32 %div39.i.i
  %75 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx14.i.i, align 4
  %add.i.i = add nuw i32 %i.042.i.i, 4
  %cmp12.i.i = icmp ult i32 %add.i.i, %mul.i.i
  br i1 %cmp12.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.end.i.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.body.i.i
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags, align 4
  %and16.i.i = and i32 %77, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %cmp17.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %cmp17.i.i, label %for.end.i.i.cleanup.sink.split.i.i_crit_edge, label %for.end.i.i.if.then46_crit_edge

for.end.i.i.if.then46_crit_edge:                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

for.end.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %for.end.i.i.cleanup.sink.split.i.i_crit_edge, %if.then.i.i.cleanup.sink.split.i.i_crit_edge
  %retval.0.ph.i.i = phi i32 [ -1, %if.then.i.i.cleanup.sink.split.i.i_crit_edge ], [ 1, %for.end.i.i.cleanup.sink.split.i.i_crit_edge ]
  call fastcc void @mb_ack_irq(ptr noundef %cx, ptr noundef nonnull %arrayidx.i) #10
  br label %epu_cmd_irq.exit

sw.bb2.i:                                         ; preds = %sw.bb.i
  %str1.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 7
  %78 = ptrtoint ptr %str1.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %str1.i.i, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %79, align 1
  %arrayidx2.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 53, i32 %i.012.i, i32 5, i32 4, i32 1
  %81 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i.i = icmp eq i32 %82, 0
  br i1 %tobool.not.i.i, label %sw.bb2.i.if.end.i.i_crit_edge, label %if.then.i31.i

sw.bb2.i.if.end.i.i_crit_edge:                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i31.i:                                    ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @cx18_setup_page(ptr noundef %cx, i32 noundef %82) #10
  %enc_mem.i28.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 39
  %83 = ptrtoint ptr %enc_mem.i28.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %enc_mem.i28.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %84, i32 %82
  call void @mmiocpy(ptr noundef %79, ptr noundef %add.ptr.i29.i, i32 noundef 252) #10
  %arrayidx3.i30.i = getelementptr i8, ptr %79, i32 252
  %85 = ptrtoint ptr %arrayidx3.i30.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %arrayidx3.i30.i, align 1
  call void @cx18_setup_page(ptr noundef %cx, i32 noundef 14417920) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i31.i, %sw.bb2.i.if.end.i.i_crit_edge
  %86 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags, align 4
  %and.i33.i = and i32 %87, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i33.i)
  %cmp.i34.i = icmp eq i32 %and.i33.i, 0
  br i1 %cmp.i34.i, label %if.then4.i.i, label %if.end.i.i.epu_debug_irq.exit.i_crit_edge

if.end.i.i.epu_debug_irq.exit.i_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %epu_debug_irq.exit.i

if.then4.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @mb_ack_irq(ptr noundef %cx, ptr noundef nonnull %arrayidx.i) #10
  br label %epu_debug_irq.exit.i

epu_debug_irq.exit.i:                             ; preds = %if.then4.i.i, %if.end.i.i.epu_debug_irq.exit.i_crit_edge
  %not.tobool.not.i.i = xor i1 %tobool.not.i.i, true
  %cond.i.i = zext i1 %not.tobool.not.i.i to i32
  br label %epu_cmd_irq.exit

do.end.i86:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i, i32 noundef %61) #13
  br label %cleanup

do.end10.i:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %name13.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %88 = ptrtoint ptr %cmd8 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %cmd8, align 4
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %name13.i, i32 noundef %89) #13
  br label %cleanup

epu_cmd_irq.exit:                                 ; preds = %epu_debug_irq.exit.i, %cleanup.sink.split.i.i
  %ret.0.i = phi i32 [ %cond.i.i, %epu_debug_irq.exit.i ], [ %retval.0.ph.i.i, %cleanup.sink.split.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp45 = icmp sgt i32 %ret.0.i, 0
  br i1 %cmp45, label %epu_cmd_irq.exit.if.then46_crit_edge, label %epu_cmd_irq.exit.cleanup_crit_edge

epu_cmd_irq.exit.cleanup_crit_edge:               ; preds = %epu_cmd_irq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

epu_cmd_irq.exit.if.then46_crit_edge:             ; preds = %epu_cmd_irq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then46

if.then46:                                        ; preds = %epu_cmd_irq.exit.if.then46_crit_edge, %for.end.i.i.if.then46_crit_edge
  %in_work_queue = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 51
  %90 = ptrtoint ptr %in_work_queue to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %in_work_queue, align 4
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %91, ptr noundef nonnull %arrayidx.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %epu_cmd_irq.exit.cleanup_crit_edge, %do.end10.i, %do.end.i86, %if.then.i.i.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_api(ptr noundef %cx, i32 noundef %cmd, i32 noundef %args, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %argstr.i = alloca [67 x i8], align 1
  %w.i = alloca %struct.wait_queue_entry, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 537001985, i32 %cmd)
  %cmp.i491.i = icmp eq i32 %cmd, 537001985
  br i1 %cmp.i491.i, label %entry.find_api_info.exit.i_crit_edge, label %entry.for.cond.i.i_crit_edge

entry.for.cond.i.i_crit_edge:                     ; preds = %entry
  br label %for.cond.i.i

entry.find_api_info.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_api_info.exit.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %entry.for.cond.i.i_crit_edge
  %i.08.i492.i = phi i32 [ %inc.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ 0, %entry.for.cond.i.i_crit_edge ]
  %inc.i.i = add nuw nsw i32 %i.08.i492.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %inc.i.i)
  %exitcond.i.i = icmp eq i32 %inc.i.i, 42
  br i1 %exitcond.i.i, label %for.cond.i.i.find_api_info.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.find_api_info.exit.i_crit_edge:      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_api_info.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr [43 x %struct.cx18_api_info], ptr @api_info, i32 0, i32 %inc.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %cmp.i.i = icmp eq i32 %1, %cmd
  br i1 %cmp.i.i, label %for.body.i.i.find_api_info.exit.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

for.body.i.i.find_api_info.exit.i_crit_edge:      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %find_api_info.exit.i

find_api_info.exit.i:                             ; preds = %for.body.i.i.find_api_info.exit.i_crit_edge, %for.cond.i.i.find_api_info.exit.i_crit_edge, %entry.find_api_info.exit.i_crit_edge
  %retval.0.i462.i = phi ptr [ @api_info, %entry.find_api_info.exit.i_crit_edge ], [ %arrayidx.i.i, %for.body.i.i.find_api_info.exit.i_crit_edge ], [ null, %for.cond.i.i.find_api_info.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 67, ptr nonnull %argstr.i) #10
  %2 = call ptr @memset(ptr %argstr.i, i32 255, i32 67)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %w.i) #10
  %3 = getelementptr inbounds %struct.wait_queue_entry, ptr %w.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.wait_queue_entry, ptr %w.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.wait_queue_entry, ptr %w.i, i32 0, i32 3
  %6 = getelementptr inbounds %struct.wait_queue_entry, ptr %w.i, i32 0, i32 3, i32 1
  %7 = call ptr @memset(ptr %3, i32 255, i32 16)
  %8 = ptrtoint ptr %w.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %w.i, align 4
  %9 = tail call i32 @llvm.read_register.i32(metadata !234) #10
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task.i, align 8
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %3, align 4
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @autoremove_wake_function, ptr %4, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %5, ptr %5, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %5, ptr %6, align 4
  %cmp.i = icmp eq ptr %retval.0.i462.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %find_api_info.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %name.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name.i, i32 noundef %cmd) #13
  br label %cx18_api_call.exit

if.end.i:                                         ; preds = %find_api_info.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %17 = load i32, ptr @cx18_debug, align 4
  %and.i = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end52.i_crit_edge, label %if.then6.i

if.end.i.if.end52.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 537133061, i32 %cmd)
  %cmp7.i = icmp eq i32 %cmd, 537133061
  br i1 %cmp7.i, label %if.then8.i, label %do.end39.i

if.then8.i:                                       ; preds = %if.then6.i
  %and9.i = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.then8.i.if.end52.i_crit_edge, label %do.end20.i

if.then8.i.if.end52.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52.i

do.end20.i:                                       ; preds = %if.then8.i
  %name23.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %name25.i = getelementptr inbounds %struct.cx18_api_info, ptr %retval.0.i462.i, i32 0, i32 3
  %18 = ptrtoint ptr %name25.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %name25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %args)
  %cmp6.i.i = icmp sgt i32 %args, 0
  br i1 %cmp6.i.i, label %do.end20.i.for.body.i466.i_crit_edge, label %do.end20.i.u32arr2hex.exit.i_crit_edge

do.end20.i.u32arr2hex.exit.i_crit_edge:           ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u32arr2hex.exit.i

do.end20.i.for.body.i466.i_crit_edge:             ; preds = %do.end20.i
  br label %for.body.i466.i

for.body.i466.i:                                  ; preds = %for.body.i466.i.for.body.i466.i_crit_edge, %do.end20.i.for.body.i466.i_crit_edge
  %i.08.i463.i = phi i32 [ %inc.i465.i, %for.body.i466.i.for.body.i466.i_crit_edge ], [ 0, %do.end20.i.for.body.i466.i_crit_edge ]
  %p.07.i.i = phi ptr [ %add.ptr.i.i, %for.body.i466.i.for.body.i466.i_crit_edge ], [ %argstr.i, %do.end20.i.for.body.i466.i_crit_edge ]
  %arrayidx.i464.i = getelementptr i32, ptr %data, i32 %i.08.i463.i
  %20 = ptrtoint ptr %arrayidx.i464.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i464.i, align 4
  %call.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %p.07.i.i, i32 noundef 12, ptr noundef nonnull @.str.46, i32 noundef %21) #10
  %inc.i465.i = add nuw nsw i32 %i.08.i463.i, 1
  %add.ptr.i.i = getelementptr i8, ptr %p.07.i.i, i32 11
  %exitcond.not.i.i = icmp eq i32 %inc.i465.i, %args
  br i1 %exitcond.not.i.i, label %for.body.i466.i.u32arr2hex.exit.i_crit_edge, label %for.body.i466.i.for.body.i466.i_crit_edge

for.body.i466.i.for.body.i466.i_crit_edge:        ; preds = %for.body.i466.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i466.i

for.body.i466.i.u32arr2hex.exit.i_crit_edge:      ; preds = %for.body.i466.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u32arr2hex.exit.i

u32arr2hex.exit.i:                                ; preds = %for.body.i466.i.u32arr2hex.exit.i_crit_edge, %do.end20.i.u32arr2hex.exit.i_crit_edge
  %p.0.lcssa.i.i = phi ptr [ %argstr.i, %do.end20.i.u32arr2hex.exit.i_crit_edge ], [ %add.ptr.i.i, %for.body.i466.i.u32arr2hex.exit.i_crit_edge ]
  %22 = ptrtoint ptr %p.0.lcssa.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %p.0.lcssa.i.i, align 1
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name23.i, ptr noundef %19, i32 noundef 537133061, ptr noundef nonnull %argstr.i) #13
  br label %if.end52.i

do.end39.i:                                       ; preds = %if.then6.i
  %name42.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %name44.i = getelementptr inbounds %struct.cx18_api_info, ptr %retval.0.i462.i, i32 0, i32 3
  %23 = ptrtoint ptr %name44.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %args)
  %cmp6.i467.i = icmp sgt i32 %args, 0
  br i1 %cmp6.i467.i, label %do.end39.i.for.body.i475.i_crit_edge, label %do.end39.i.u32arr2hex.exit477.i_crit_edge

do.end39.i.u32arr2hex.exit477.i_crit_edge:        ; preds = %do.end39.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u32arr2hex.exit477.i

do.end39.i.for.body.i475.i_crit_edge:             ; preds = %do.end39.i
  br label %for.body.i475.i

for.body.i475.i:                                  ; preds = %for.body.i475.i.for.body.i475.i_crit_edge, %do.end39.i.for.body.i475.i_crit_edge
  %i.08.i468.i = phi i32 [ %inc.i472.i, %for.body.i475.i.for.body.i475.i_crit_edge ], [ 0, %do.end39.i.for.body.i475.i_crit_edge ]
  %p.07.i469.i = phi ptr [ %add.ptr.i473.i, %for.body.i475.i.for.body.i475.i_crit_edge ], [ %argstr.i, %do.end39.i.for.body.i475.i_crit_edge ]
  %arrayidx.i470.i = getelementptr i32, ptr %data, i32 %i.08.i468.i
  %25 = ptrtoint ptr %arrayidx.i470.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i470.i, align 4
  %call.i471.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %p.07.i469.i, i32 noundef 12, ptr noundef nonnull @.str.46, i32 noundef %26) #10
  %inc.i472.i = add nuw nsw i32 %i.08.i468.i, 1
  %add.ptr.i473.i = getelementptr i8, ptr %p.07.i469.i, i32 11
  %exitcond.not.i474.i = icmp eq i32 %inc.i472.i, %args
  br i1 %exitcond.not.i474.i, label %for.body.i475.i.u32arr2hex.exit477.i_crit_edge, label %for.body.i475.i.for.body.i475.i_crit_edge

for.body.i475.i.for.body.i475.i_crit_edge:        ; preds = %for.body.i475.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i475.i

for.body.i475.i.u32arr2hex.exit477.i_crit_edge:   ; preds = %for.body.i475.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u32arr2hex.exit477.i

u32arr2hex.exit477.i:                             ; preds = %for.body.i475.i.u32arr2hex.exit477.i_crit_edge, %do.end39.i.u32arr2hex.exit477.i_crit_edge
  %p.0.lcssa.i476.i = phi ptr [ %argstr.i, %do.end39.i.u32arr2hex.exit477.i_crit_edge ], [ %add.ptr.i473.i, %for.body.i475.i.u32arr2hex.exit477.i_crit_edge ]
  %27 = ptrtoint ptr %p.0.lcssa.i476.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %p.0.lcssa.i476.i, align 1
  %call47.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name42.i, ptr noundef %24, i32 noundef %cmd, ptr noundef nonnull %argstr.i) #13
  br label %if.end52.i

if.end52.i:                                       ; preds = %u32arr2hex.exit477.i, %u32arr2hex.exit.i, %if.then8.i.if.end52.i_crit_edge, %if.end.i.if.end52.i_crit_edge
  %rpu.i = getelementptr inbounds %struct.cx18_api_info, ptr %retval.0.i462.i, i32 0, i32 2
  %28 = ptrtoint ptr %rpu.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %rpu.i, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %29, label %do.end57.i [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb53.i
  ]

sw.bb.i:                                          ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  %mb_apu_waitq.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 44
  %epu2apu_mb_lock.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 16
  %scb.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 15
  %31 = ptrtoint ptr %scb.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %scb.i, align 4
  %epu2apu_mb.i = getelementptr inbounds %struct.cx18_scb, ptr %32, i32 0, i32 114
  br label %sw.epilog.i

sw.bb53.i:                                        ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  %mb_cpu_waitq.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 45
  %epu2cpu_mb_lock.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 17
  %scb54.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 15
  %33 = ptrtoint ptr %scb54.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %scb54.i, align 4
  %epu2cpu_mb.i = getelementptr inbounds %struct.cx18_scb, ptr %34, i32 0, i32 110
  br label %sw.epilog.i

do.end57.i:                                       ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i = zext i8 %29 to i32
  %name60.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name60.i, i32 noundef %conv.i) #13
  br label %cx18_api_call.exit

sw.epilog.i:                                      ; preds = %sw.bb53.i, %sw.bb.i
  %mb_lock.0.i = phi ptr [ %epu2cpu_mb_lock.i, %sw.bb53.i ], [ %epu2apu_mb_lock.i, %sw.bb.i ]
  %waitq.0.i = phi ptr [ %mb_cpu_waitq.i, %sw.bb53.i ], [ %mb_apu_waitq.i, %sw.bb.i ]
  %mb.0.i = phi ptr [ %epu2cpu_mb.i, %sw.bb53.i ], [ %epu2apu_mb.i, %sw.bb.i ]
  %irq.0.i = phi i32 [ 8, %sw.bb53.i ], [ 128, %sw.bb.i ]
  call void @mutex_lock_nested(ptr noundef %mb_lock.0.i, i32 noundef 0) #10
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mb.0.i) #10, !srcloc !244
  %36 = call i32 @llvm.bswap.i32(i32 %35) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 642) #10
  %ack73.i = getelementptr inbounds %struct.cx18_mailbox, ptr %mb.0.i, i32 0, i32 1
  %37 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ack73.i) #10, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %35)
  %cmp75.i = icmp eq i32 %37, %35
  br i1 %cmp75.i, label %sw.epilog.i.if.end152.i_crit_edge, label %if.then88.i

sw.epilog.i.if.end152.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i

if.then88.i:                                      ; preds = %sw.epilog.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  %38 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #10
  %call90494.i = call i32 @prepare_to_wait_event(ptr noundef %waitq.0.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #10
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ack73.i) #10, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %35)
  %cmp94495.i = icmp eq i32 %39, %35
  br i1 %cmp94495.i, label %if.else131.thread.i, label %if.then88.i.cleanup.i_crit_edge

if.then88.i.cleanup.i_crit_edge:                  ; preds = %if.then88.i
  br label %cleanup.i

if.else131.thread.i:                              ; preds = %if.then88.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @finish_wait(ptr noundef %waitq.0.i, ptr noundef nonnull %__wq_entry.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  br label %if.end152.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then88.i.cleanup.i_crit_edge
  %__ret89.1496.i = phi i32 [ %__ret89.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 1, %if.then88.i.cleanup.i_crit_edge ]
  %call114.i = call i32 @schedule_timeout(i32 noundef %__ret89.1496.i) #10
  %call90.i = call i32 @prepare_to_wait_event(ptr noundef %waitq.0.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #10
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ack73.i) #10, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %35)
  %cmp94.i = icmp eq i32 %40, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114.i)
  %tobool100.not.i = icmp eq i32 %call114.i, 0
  %41 = select i1 %cmp94.i, i1 %tobool100.not.i, i1 false
  %__ret89.1.i = select i1 %41, i32 1, i32 %call114.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret89.1.i)
  %tobool107.not.i = icmp eq i32 %__ret89.1.i, 0
  %42 = select i1 %cmp94.i, i1 true, i1 %tobool107.not.i
  br i1 %42, label %if.end116.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end116.i:                                      ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %waitq.0.i, ptr noundef nonnull %__wq_entry.i) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #10
  br i1 %cmp94.i, label %if.else131.i, label %if.then120.i

if.then120.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @cx18_writel(i32 noundef %36, ptr noundef %ack73.i) #10
  %name127.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %name129.i = getelementptr inbounds %struct.cx18_api_info, ptr %retval.0.i462.i, i32 0, i32 3
  %43 = ptrtoint ptr %name129.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name129.i, align 4
  %call130.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name127.i, ptr noundef %44) #13
  br label %if.end152.i

if.else131.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret89.1.i)
  %cmp132.not.i = icmp eq i32 %__ret89.1.i, 1
  br i1 %cmp132.not.i, label %if.else131.i.if.end152.i_crit_edge, label %do.body135.i

if.else131.i.if.end152.i_crit_edge:               ; preds = %if.else131.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i

do.body135.i:                                     ; preds = %if.else131.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %45 = load i32, ptr @cx18_debug, align 4
  %and136.i = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136.i)
  %tobool137.not.i = icmp eq i32 %and136.i, 0
  br i1 %tobool137.not.i, label %do.body135.i.if.end152.i_crit_edge, label %do.end141.i

do.body135.i.if.end152.i_crit_edge:               ; preds = %do.body135.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152.i

do.end141.i:                                      ; preds = %do.body135.i
  call void @__sanitizer_cov_trace_pc() #12
  %name144.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %sub.i = sub i32 1, %__ret89.1.i
  %call146.i = call i32 @jiffies_to_msecs(i32 noundef %sub.i) #10
  %call147.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name144.i, i32 noundef %call146.i) #13
  br label %if.end152.i

if.end152.i:                                      ; preds = %do.end141.i, %do.body135.i.if.end152.i_crit_edge, %if.else131.i.if.end152.i_crit_edge, %if.then120.i, %if.else131.thread.i, %sw.epilog.i.if.end152.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %36)
  %cmp154.i = icmp ugt i32 %36, -3
  %add.i = add i32 %36, 1
  %spec.select.i = select i1 %cmp154.i, i32 1, i32 %add.i
  %cmd156.i = getelementptr inbounds %struct.cx18_mailbox, ptr %mb.0.i, i32 0, i32 3
  call fastcc void @cx18_writel(i32 noundef %cmd, ptr noundef %cmd156.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %args)
  %cmp158499.i = icmp sgt i32 %args, 0
  br i1 %cmp158499.i, label %if.end152.i.for.body.i_crit_edge, label %if.end152.i.for.end162.i_crit_edge

if.end152.i.for.end162.i_crit_edge:               ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end162.i

if.end152.i.for.body.i_crit_edge:                 ; preds = %if.end152.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end152.i.for.body.i_crit_edge
  %i.0500.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end152.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %data, i32 %i.0500.i
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i, align 4
  %arrayidx161.i = getelementptr %struct.cx18_mailbox, ptr %mb.0.i, i32 0, i32 4, i32 %i.0500.i
  call fastcc void @cx18_writel(i32 noundef %47, ptr noundef %arrayidx161.i) #10
  %inc.i = add nuw nsw i32 %i.0500.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %args
  br i1 %exitcond.not.i, label %for.body.i.for.end162.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.for.end162.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end162.i

for.end162.i:                                     ; preds = %for.body.i.for.end162.i_crit_edge, %if.end152.i.for.end162.i_crit_edge
  %error.i = getelementptr inbounds %struct.cx18_mailbox, ptr %mb.0.i, i32 0, i32 5
  call fastcc void @cx18_writel(i32 noundef 0, ptr noundef %error.i) #10
  call fastcc void @cx18_writel(i32 noundef %spec.select.i, ptr noundef %mb.0.i) #10
  %sub164.i = add i32 %spec.select.i, -1
  call fastcc void @cx18_writel(i32 noundef %sub164.i, ptr noundef %ack73.i) #10
  %flags166.i = getelementptr inbounds %struct.cx18_api_info, ptr %retval.0.i462.i, i32 0, i32 1
  %48 = ptrtoint ptr %flags166.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %flags166.i, align 4
  %50 = and i8 %49, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool169.not.i = icmp eq i8 %50, 0
  %cond170.i = select i1 %tobool169.not.i, i32 20, i32 10
  %call2.i.i = call i32 @__msecs_to_jiffies(i32 noundef %cond170.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %51 = load i32, ptr @cx18_debug, align 4
  %52 = and i32 %51, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %52)
  %.not.i = icmp eq i32 %52, 384
  br i1 %.not.i, label %do.end181.i, label %for.end162.i.do.end190.i_crit_edge

for.end162.i.do.end190.i_crit_edge:               ; preds = %for.end162.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end190.i

do.end181.i:                                      ; preds = %for.end162.i
  call void @__sanitizer_cov_trace_pc() #12
  %name184.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %name186.i = getelementptr inbounds %struct.cx18_api_info, ptr %retval.0.i462.i, i32 0, i32 3
  %53 = ptrtoint ptr %name186.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name186.i, align 4
  %call187.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %name184.i, i32 noundef %irq.0.i, ptr noundef %54) #13
  br label %do.end190.i

do.end190.i:                                      ; preds = %do.end181.i, %for.end162.i.do.end190.i_crit_edge
  call void @prepare_to_wait(ptr noundef %waitq.0.i, ptr noundef nonnull %w.i, i32 noundef 2) #10
  %reg_mem.i.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %55 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i478.i = getelementptr i8, ptr %56, i32 13054208
  %57 = shl nuw i32 %irq.0.i, 24
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.backedge.i.i.i, %do.end190.i
  %i.01.i.i.i = phi i32 [ 0, %do.end190.i ], [ %i.01.be.i.i.i, %for.body.backedge.i.i.i ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  call void @arm_heavy_mb() #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i478.i, i32 %57) #10, !srcloc !247
  %58 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i478.i) #10, !srcloc !244
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp1.i.i.i = icmp eq i32 %58, -1
  br i1 %cmp1.i.i.i, label %for.inc.i.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  %59 = lshr i32 %58, 24
  %60 = xor i32 %59, -1
  %61 = and i32 %irq.0.i, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp4.i.i.i = icmp ne i32 %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i.i)
  %cmp.i.i.i = icmp ult i32 %i.01.i.i.i, 9
  %or.cond.i.i.i = select i1 %cmp4.i.i.i, i1 %cmp.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %if.end.i.i.i.for.body.backedge.i.i.i_crit_edge, label %if.end.i.i.i.cx18_write_reg_expect.exit.i_crit_edge

if.end.i.i.i.cx18_write_reg_expect.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_write_reg_expect.exit.i

if.end.i.i.i.for.body.backedge.i.i.i_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i.i)
  %cmp.old.i.i.i = icmp ult i32 %i.01.i.i.i, 9
  br i1 %cmp.old.i.i.i, label %for.inc.i.i.i.for.body.backedge.i.i.i_crit_edge, label %for.inc.i.i.i.cx18_write_reg_expect.exit.i_crit_edge

for.inc.i.i.i.cx18_write_reg_expect.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_write_reg_expect.exit.i

for.inc.i.i.i.for.body.backedge.i.i.i_crit_edge:  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge.i.i.i

for.body.backedge.i.i.i:                          ; preds = %for.inc.i.i.i.for.body.backedge.i.i.i_crit_edge, %if.end.i.i.i.for.body.backedge.i.i.i_crit_edge
  %i.01.be.i.i.i = add nuw nsw i32 %i.01.i.i.i, 1
  br label %for.body.i.i.i

cx18_write_reg_expect.exit.i:                     ; preds = %for.inc.i.i.i.cx18_write_reg_expect.exit.i_crit_edge, %if.end.i.i.i.cx18_write_reg_expect.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ack73.i) #10, !srcloc !244
  %64 = call i32 @llvm.bswap.i32(i32 %63) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %spec.select.i)
  %cmp193.not.i = icmp eq i32 %64, %spec.select.i
  br i1 %cmp193.not.i, label %if.end202.thread.i, label %if.end202.i

if.end202.thread.i:                               ; preds = %cx18_write_reg_expect.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %ret.0513.i = sub i32 %65, %62
  call void @finish_wait(ptr noundef %waitq.0.i, ptr noundef nonnull %w.i) #10
  br label %if.end245.i

if.end202.i:                                      ; preds = %cx18_write_reg_expect.exit.i
  %call196.i = call i32 @schedule_timeout(i32 noundef %call2.i.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %67 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ack73.i) #10, !srcloc !244
  %68 = call i32 @llvm.bswap.i32(i32 %67) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %ret.0.i = sub i32 %66, %62
  call void @finish_wait(ptr noundef %waitq.0.i, ptr noundef nonnull %w.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i, i32 %68)
  %cmp203.not.i = icmp eq i32 %spec.select.i, %68
  br i1 %cmp203.not.i, label %if.end202.i.if.end245.i_crit_edge, label %if.then205.i

if.end202.i.if.end245.i_crit_edge:                ; preds = %if.end202.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end245.i

if.then205.i:                                     ; preds = %if.end202.i
  call void @mutex_unlock(ptr noundef %mb_lock.0.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0.i, i32 %call2.i.i)
  %cmp206.not.i = icmp ult i32 %ret.0.i, %call2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %69 = load i32, ptr @cx18_debug, align 4
  %and228.i = and i32 %69, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228.i)
  %tobool229.not.i = icmp eq i32 %and228.i, 0
  br i1 %cmp206.not.i, label %do.body227.i, label %do.body209.i

do.body209.i:                                     ; preds = %if.then205.i
  br i1 %tobool229.not.i, label %do.body209.i.cx18_api_call.exit_crit_edge, label %do.end215.i

do.body209.i.cx18_api_call.exit_crit_edge:        ; preds = %do.body209.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_api_call.exit

do.end215.i:                                      ; preds = %do.body209.i
  call void @__sanitizer_cov_trace_pc() #12
  %name218.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %name220.i = getelementptr inbounds %struct.cx18_api_info, ptr %retval.0.i462.i, i32 0, i32 3
  %70 = ptrtoint ptr %name220.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name220.i, align 4
  %call221.i = call i32 @jiffies_to_msecs(i32 noundef %ret.0.i) #10
  %call222.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name218.i, ptr noundef %71, i32 noundef %call221.i) #13
  br label %cx18_api_call.exit

do.body227.i:                                     ; preds = %if.then205.i
  br i1 %tobool229.not.i, label %do.body227.i.cx18_api_call.exit_crit_edge, label %do.end233.i

do.body227.i.cx18_api_call.exit_crit_edge:        ; preds = %do.body227.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_api_call.exit

do.end233.i:                                      ; preds = %do.body227.i
  call void @__sanitizer_cov_trace_pc() #12
  %name236.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %name238.i = getelementptr inbounds %struct.cx18_api_info, ptr %retval.0.i462.i, i32 0, i32 3
  %72 = ptrtoint ptr %name238.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %name238.i, align 4
  %call239.i = call i32 @jiffies_to_msecs(i32 noundef %ret.0.i) #10
  %call240.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %name236.i, ptr noundef %73, i32 noundef %call239.i, i32 noundef %spec.select.i, i32 noundef %68) #13
  br label %cx18_api_call.exit

if.end245.i:                                      ; preds = %if.end202.i.if.end245.i_crit_edge, %if.end202.thread.i
  %ret.0515.i = phi i32 [ %ret.0513.i, %if.end202.thread.i ], [ %ret.0.i, %if.end202.i.if.end245.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0515.i, i32 %call2.i.i)
  %cmp246.not.i = icmp ult i32 %ret.0515.i, %call2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %74 = load i32, ptr @cx18_debug, align 4
  br i1 %cmp246.not.i, label %do.body267.i, label %do.body249.i

do.body249.i:                                     ; preds = %if.end245.i
  %and250.i = and i32 %74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250.i)
  %tobool251.not.i = icmp eq i32 %and250.i, 0
  br i1 %tobool251.not.i, label %do.body249.i.if.end287.i_crit_edge, label %do.end255.i

do.body249.i.if.end287.i_crit_edge:               ; preds = %do.body249.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end287.i

do.end255.i:                                      ; preds = %do.body249.i
  call void @__sanitizer_cov_trace_pc() #12
  %name258.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %name260.i = getelementptr inbounds %struct.cx18_api_info, ptr %retval.0.i462.i, i32 0, i32 3
  %75 = ptrtoint ptr %name260.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name260.i, align 4
  %call261.i = call i32 @jiffies_to_msecs(i32 noundef %ret.0515.i) #10
  %call262.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef %name258.i, ptr noundef %76, i32 noundef %call261.i) #13
  br label %if.end287.i

do.body267.i:                                     ; preds = %if.end245.i
  %77 = and i32 %74, 260
  call void @__sanitizer_cov_trace_const_cmp4(i32 260, i32 %77)
  %.not490.i = icmp eq i32 %77, 260
  br i1 %.not490.i, label %do.end276.i, label %do.body267.i.if.end287.i_crit_edge

do.body267.i.if.end287.i_crit_edge:               ; preds = %do.body267.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end287.i

do.end276.i:                                      ; preds = %do.body267.i
  call void @__sanitizer_cov_trace_pc() #12
  %name279.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call281.i = call i32 @jiffies_to_msecs(i32 noundef %ret.0515.i) #10
  %name282.i = getelementptr inbounds %struct.cx18_api_info, ptr %retval.0.i462.i, i32 0, i32 3
  %78 = ptrtoint ptr %name282.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name282.i, align 4
  %call283.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef %name279.i, i32 noundef %call281.i, ptr noundef %79) #13
  br label %if.end287.i

if.end287.i:                                      ; preds = %do.end276.i, %do.body267.i.if.end287.i_crit_edge, %do.end255.i, %do.body249.i.if.end287.i_crit_edge
  %arrayidx293.i = getelementptr %struct.cx18_mailbox, ptr %mb.0.i, i32 0, i32 4, i32 0
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx293.i) #10, !srcloc !244
  %81 = call i32 @llvm.bswap.i32(i32 %80) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %82 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %data, align 4
  %arrayidx293.1.i = getelementptr %struct.cx18_mailbox, ptr %mb.0.i, i32 0, i32 4, i32 1
  %83 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx293.1.i) #10, !srcloc !244
  %84 = call i32 @llvm.bswap.i32(i32 %83) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %arrayidx295.1.i = getelementptr i32, ptr %data, i32 1
  %85 = ptrtoint ptr %arrayidx295.1.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx295.1.i, align 4
  %arrayidx293.2.i = getelementptr %struct.cx18_mailbox, ptr %mb.0.i, i32 0, i32 4, i32 2
  %86 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx293.2.i) #10, !srcloc !244
  %87 = call i32 @llvm.bswap.i32(i32 %86) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %arrayidx295.2.i = getelementptr i32, ptr %data, i32 2
  %88 = ptrtoint ptr %arrayidx295.2.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %arrayidx295.2.i, align 4
  %arrayidx293.3.i = getelementptr %struct.cx18_mailbox, ptr %mb.0.i, i32 0, i32 4, i32 3
  %89 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx293.3.i) #10, !srcloc !244
  %90 = call i32 @llvm.bswap.i32(i32 %89) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %arrayidx295.3.i = getelementptr i32, ptr %data, i32 3
  %91 = ptrtoint ptr %arrayidx295.3.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %arrayidx295.3.i, align 4
  %arrayidx293.4.i = getelementptr %struct.cx18_mailbox, ptr %mb.0.i, i32 0, i32 4, i32 4
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx293.4.i) #10, !srcloc !244
  %93 = call i32 @llvm.bswap.i32(i32 %92) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %arrayidx295.4.i = getelementptr i32, ptr %data, i32 4
  %94 = ptrtoint ptr %arrayidx295.4.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx295.4.i, align 4
  %arrayidx293.5.i = getelementptr %struct.cx18_mailbox, ptr %mb.0.i, i32 0, i32 4, i32 5
  %95 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx293.5.i) #10, !srcloc !244
  %96 = call i32 @llvm.bswap.i32(i32 %95) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  %arrayidx295.5.i = getelementptr i32, ptr %data, i32 5
  %97 = ptrtoint ptr %arrayidx295.5.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %arrayidx295.5.i, align 4
  %98 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %error.i) #10, !srcloc !244
  %99 = call i32 @llvm.bswap.i32(i32 %98) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @mutex_unlock(ptr noundef %mb_lock.0.i) #10
  %100 = ptrtoint ptr %flags166.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %flags166.i, align 4
  %102 = and i8 %101, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool304.not.i = icmp eq i8 %102, 0
  br i1 %tobool304.not.i, label %if.end287.i.if.end307.i_crit_edge, label %if.then305.i

if.end287.i.if.end307.i_crit_edge:                ; preds = %if.end287.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end307.i

if.then305.i:                                     ; preds = %if.end287.i
  call void @__sanitizer_cov_trace_pc() #12
  %call306.i = call i32 @cx18_msleep_timeout(i32 noundef 300, i32 noundef 0) #10
  br label %if.end307.i

if.end307.i:                                      ; preds = %if.then305.i, %if.end287.i.if.end307.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool308.not.i = icmp eq i32 %98, 0
  br i1 %tobool308.not.i, label %if.end307.i.cx18_api_call.exit_crit_edge, label %do.body310.i

if.end307.i.cx18_api_call.exit_crit_edge:         ; preds = %if.end307.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_api_call.exit

do.body310.i:                                     ; preds = %if.end307.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %103 = load i32, ptr @cx18_debug, align 4
  %and311.i = and i32 %103, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and311.i)
  %tobool312.not.i = icmp eq i32 %and311.i, 0
  br i1 %tobool312.not.i, label %do.body310.i.cx18_api_call.exit_crit_edge, label %do.end316.i

do.body310.i.cx18_api_call.exit_crit_edge:        ; preds = %do.body310.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cx18_api_call.exit

do.end316.i:                                      ; preds = %do.body310.i
  call void @__sanitizer_cov_trace_pc() #12
  %name319.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %name321.i = getelementptr inbounds %struct.cx18_api_info, ptr %retval.0.i462.i, i32 0, i32 3
  %104 = ptrtoint ptr %name321.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %name321.i, align 4
  %call322.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %name319.i, i32 noundef %99, ptr noundef %105) #13
  br label %cx18_api_call.exit

cx18_api_call.exit:                               ; preds = %do.end316.i, %do.body310.i.cx18_api_call.exit_crit_edge, %if.end307.i.cx18_api_call.exit_crit_edge, %do.end233.i, %do.body227.i.cx18_api_call.exit_crit_edge, %do.end215.i, %do.body209.i.cx18_api_call.exit_crit_edge, %do.end57.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end.i ], [ -22, %do.end57.i ], [ -22, %do.body227.i.cx18_api_call.exit_crit_edge ], [ -22, %do.end233.i ], [ -22, %do.body209.i.cx18_api_call.exit_crit_edge ], [ -22, %do.end215.i ], [ -5, %do.body310.i.cx18_api_call.exit_crit_edge ], [ -5, %do.end316.i ], [ 0, %if.end307.i.cx18_api_call.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %w.i) #10
  call void @llvm.lifetime.end.p0(i64 67, ptr nonnull %argstr.i) #10
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_api_func(ptr nocapture noundef readonly %priv, i32 noundef %cmd, i32 noundef %in, i32 noundef %out, ptr noundef readonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_stream, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %cmd, label %do.end [
    i32 187, label %entry.cleanup_crit_edge
    i32 143, label %sw.bb2
    i32 145, label %sw.bb3
    i32 185, label %sw.bb8
    i32 153, label %sw.bb12
    i32 151, label %sw.bb16
    i32 197, label %entry.cleanup_crit_edge132
    i32 189, label %sw.bb22
    i32 218, label %sw.bb26
    i32 149, label %sw.bb30
    i32 217, label %sw.bb37
    i32 208, label %sw.bb41
    i32 220, label %sw.bb45
    i32 155, label %sw.bb51
    i32 157, label %sw.bb55
    i32 161, label %sw.bb59
    i32 159, label %sw.bb64
  ]

entry.cleanup_crit_edge132:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %handle = getelementptr inbounds %struct.cx18_stream, ptr %priv, i32 0, i32 5
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %handle, align 8
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data, align 4
  %call = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537001988, i32 noundef 6, i32 noundef %4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef %6)
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %handle4 = getelementptr inbounds %struct.cx18_stream, ptr %priv, i32 0, i32 5
  %7 = ptrtoint ptr %handle4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle4, align 8
  %arrayidx5 = getelementptr i32, ptr %data, i32 1
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx5, align 4
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  %call7 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537001990, i32 noundef 3, i32 noundef %8, i32 noundef %10, i32 noundef %12)
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %handle9 = getelementptr inbounds %struct.cx18_stream, ptr %priv, i32 0, i32 5
  %13 = ptrtoint ptr %handle9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %handle9, align 8
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 4
  %call11 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537002002, i32 noundef 2, i32 noundef %14, i32 noundef %16)
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %handle13 = getelementptr inbounds %struct.cx18_stream, ptr %priv, i32 0, i32 5
  %17 = ptrtoint ptr %handle13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %handle13, align 8
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data, align 4
  %call15 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537002014, i32 noundef 2, i32 noundef %18, i32 noundef %20)
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %handle17 = getelementptr inbounds %struct.cx18_stream, ptr %priv, i32 0, i32 5
  %21 = ptrtoint ptr %handle17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %handle17, align 8
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data, align 4
  %arrayidx19 = getelementptr i32, ptr %data, i32 1
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx19, align 4
  %call20 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537002012, i32 noundef 3, i32 noundef %22, i32 noundef %24, i32 noundef %26)
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %handle23 = getelementptr inbounds %struct.cx18_stream, ptr %priv, i32 0, i32 5
  %27 = ptrtoint ptr %handle23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %handle23, align 8
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data, align 4
  %call25 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537002001, i32 noundef 2, i32 noundef %28, i32 noundef %30)
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %handle27 = getelementptr inbounds %struct.cx18_stream, ptr %priv, i32 0, i32 5
  %31 = ptrtoint ptr %handle27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %handle27, align 8
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data, align 4
  %call29 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537002004, i32 noundef 2, i32 noundef %32, i32 noundef %34)
  br label %cleanup

sw.bb30:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %handle31 = getelementptr inbounds %struct.cx18_stream, ptr %priv, i32 0, i32 5
  %35 = ptrtoint ptr %handle31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %handle31, align 8
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data, align 4
  %arrayidx33 = getelementptr i32, ptr %data, i32 1
  %39 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx33, align 4
  %arrayidx34 = getelementptr i32, ptr %data, i32 2
  %41 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx34, align 4
  %arrayidx35 = getelementptr i32, ptr %data, i32 3
  %43 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx35, align 4
  %call36 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537001989, i32 noundef 5, i32 noundef %36, i32 noundef %38, i32 noundef %40, i32 noundef %42, i32 noundef %44)
  br label %cleanup

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %handle38 = getelementptr inbounds %struct.cx18_stream, ptr %priv, i32 0, i32 5
  %45 = ptrtoint ptr %handle38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %handle38, align 8
  %47 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data, align 4
  %call40 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537002003, i32 noundef 2, i32 noundef %46, i32 noundef %48)
  br label %cleanup

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %handle42 = getelementptr inbounds %struct.cx18_stream, ptr %priv, i32 0, i32 5
  %49 = ptrtoint ptr %handle42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %handle42, align 8
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data, align 4
  %call44 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537002015, i32 noundef 2, i32 noundef %50, i32 noundef %52)
  br label %cleanup

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %handle46 = getelementptr inbounds %struct.cx18_stream, ptr %priv, i32 0, i32 5
  %53 = ptrtoint ptr %handle46 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %handle46, align 8
  %55 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %data, align 4
  %arrayidx48 = getelementptr i32, ptr %data, i32 1
  %57 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx48, align 4
  %arrayidx49 = getelementptr i32, ptr %data, i32 2
  %59 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx49, align 4
  %call50 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537002005, i32 noundef 4, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60)
  br label %cleanup

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %data, align 4
  %and = and i32 %62, 3
  %arrayidx53 = getelementptr i32, ptr %data, i32 1
  %63 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx53, align 4
  %shl = shl i32 %64, 2
  %or = or i32 %shl, %and
  %filter_mode = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 20
  %65 = ptrtoint ptr %filter_mode to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or, ptr %filter_mode, align 4
  %call54 = tail call fastcc i32 @cx18_set_filter_param(ptr noundef %priv)
  br label %cleanup

sw.bb55:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %data, align 4
  %spatial_strength = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 22
  %68 = ptrtoint ptr %spatial_strength to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %spatial_strength, align 4
  %arrayidx57 = getelementptr i32, ptr %data, i32 1
  %69 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx57, align 4
  %temporal_strength = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 21
  %71 = ptrtoint ptr %temporal_strength to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %temporal_strength, align 8
  %call58 = tail call fastcc i32 @cx18_set_filter_param(ptr noundef %priv)
  br label %cleanup

sw.bb59:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %handle60 = getelementptr inbounds %struct.cx18_stream, ptr %priv, i32 0, i32 5
  %72 = ptrtoint ptr %handle60 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %handle60, align 8
  %74 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %data, align 4
  %arrayidx62 = getelementptr i32, ptr %data, i32 1
  %76 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx62, align 4
  %call63 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537001996, i32 noundef 3, i32 noundef %73, i32 noundef %75, i32 noundef %77)
  br label %cleanup

sw.bb64:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %handle65 = getelementptr inbounds %struct.cx18_stream, ptr %priv, i32 0, i32 5
  %78 = ptrtoint ptr %handle65 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %handle65, align 8
  %80 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %data, align 4
  %arrayidx67 = getelementptr i32, ptr %data, i32 1
  %82 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx67, align 4
  %arrayidx68 = getelementptr i32, ptr %data, i32 2
  %84 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx68, align 4
  %arrayidx69 = getelementptr i32, ptr %data, i32 3
  %86 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx69, align 4
  %call70 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537001998, i32 noundef 5, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %85, i32 noundef %87)
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 2, i32 4
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name, i32 noundef %cmd) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb64, %sw.bb59, %sw.bb55, %sw.bb51, %sw.bb45, %sw.bb41, %sw.bb37, %sw.bb30, %sw.bb26, %sw.bb22, %sw.bb16, %sw.bb12, %sw.bb8, %sw.bb3, %sw.bb2, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge132
  %retval.0 = phi i32 [ 0, %do.end ], [ %call70, %sw.bb64 ], [ %call63, %sw.bb59 ], [ %call58, %sw.bb55 ], [ %call54, %sw.bb51 ], [ %call50, %sw.bb45 ], [ %call44, %sw.bb41 ], [ %call40, %sw.bb37 ], [ %call36, %sw.bb30 ], [ %call29, %sw.bb26 ], [ %call25, %sw.bb22 ], [ %call20, %sw.bb16 ], [ %call15, %sw.bb12 ], [ %call11, %sw.bb8 ], [ %call7, %sw.bb3 ], [ %call, %sw.bb2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge132 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_vapi(ptr noundef %cx, i32 noundef %cmd, i32 noundef %args, ...) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [6 x i32], align 4
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %data) #10
  %0 = call ptr @memset(ptr %data, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #10
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !248
  %cmp = icmp eq ptr %cx, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull inttoptr (i32 68 to ptr), i32 noundef %cmd) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %args)
  %cmp1 = icmp sgt i32 %args, 6
  br i1 %cmp1, label %if.end11.thread, label %if.end11

if.end11.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %name8 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name8, i32 noundef %cmd) #13
  call void @llvm.va_start(ptr nonnull %ap)
  br label %for.body.preheader

if.end11:                                         ; preds = %if.end
  call void @llvm.va_start(ptr nonnull %ap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %args)
  %cmp1226 = icmp sgt i32 %args, 0
  br i1 %cmp1226, label %if.end11.for.body.preheader_crit_edge, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end11.for.body.preheader_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end11.for.body.preheader_crit_edge, %if.end11.thread
  %args.addr.031 = phi i32 [ 6, %if.end11.thread ], [ %args, %if.end11.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.027 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %2 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %2)
  %argp.cur = load ptr, ptr %ap, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %ap, align 4
  %3 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %argp.cur, align 4
  %arrayidx = getelementptr [6 x i32], ptr %data, i32 0, i32 %i.027
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %args.addr.031
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end11.for.end_crit_edge
  %args.addr.030 = phi i32 [ %args, %if.end11.for.end_crit_edge ], [ %args.addr.031, %for.body.for.end_crit_edge ]
  call void @llvm.va_end(ptr nonnull %ap)
  %call14 = call i32 @cx18_api(ptr noundef nonnull %cx, i32 noundef %cmd, i32 noundef %args.addr.030, ptr noundef nonnull %data)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call14, %for.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx18_set_filter_param(ptr nocapture noundef readonly %s) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cx1 = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 2
  %0 = ptrtoint ptr %cx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cx1, align 4
  %filter_mode = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %filter_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %filter_mode, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spatial_strength = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %spatial_strength to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spatial_strength, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp ne i32 %5, 0
  %cond = zext i1 %tobool2.not to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond3 = phi i32 [ %cond, %cond.false ], [ 2, %entry.cond.end_crit_edge ]
  %handle = getelementptr inbounds %struct.cx18_stream, ptr %s, i32 0, i32 5
  %6 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %handle, align 8
  %spatial_strength4 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 22
  %8 = ptrtoint ptr %spatial_strength4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %spatial_strength4, align 4
  %call = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537001993, i32 noundef 4, i32 noundef %7, i32 noundef 1, i32 noundef %cond3, i32 noundef %9)
  %10 = ptrtoint ptr %filter_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %filter_mode, align 4
  %and6 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %cond.false9, label %cond.end.cond.end12_crit_edge

cond.end.cond.end12_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end12

cond.false9:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %temporal_strength = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 21
  %12 = ptrtoint ptr %temporal_strength to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %temporal_strength, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool10.not = icmp ne i32 %13, 0
  %cond11 = zext i1 %tobool10.not to i32
  br label %cond.end12

cond.end12:                                       ; preds = %cond.false9, %cond.end.cond.end12_crit_edge
  %cond13 = phi i32 [ %cond11, %cond.false9 ], [ 2, %cond.end.cond.end12_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool14.not = icmp eq i32 %call, 0
  br i1 %tobool14.not, label %cond.end20, label %cond.end12.cond.end28_crit_edge

cond.end12.cond.end28_crit_edge:                  ; preds = %cond.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end28

cond.end20:                                       ; preds = %cond.end12
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle, align 8
  %temporal_strength18 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 21
  %16 = ptrtoint ptr %temporal_strength18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %temporal_strength18, align 8
  %call19 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537001993, i32 noundef 4, i32 noundef %15, i32 noundef 0, i32 noundef %cond13, i32 noundef %17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool22.not = icmp eq i32 %call19, 0
  br i1 %tobool22.not, label %cond.false24, label %cond.end20.cond.end28_crit_edge

cond.end20.cond.end28_crit_edge:                  ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end28

cond.false24:                                     ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %handle, align 8
  %20 = ptrtoint ptr %filter_mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %filter_mode, align 4
  %shr = lshr i32 %21, 2
  %call27 = tail call i32 (ptr, i32, i32, ...) @cx18_vapi(ptr noundef %1, i32 noundef 537001993, i32 noundef 4, i32 noundef %19, i32 noundef 2, i32 noundef %shr, i32 noundef 0)
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false24, %cond.end20.cond.end28_crit_edge, %cond.end12.cond.end28_crit_edge
  %cond29 = phi i32 [ %call27, %cond.false24 ], [ %call19, %cond.end20.cond.end28_crit_edge ], [ %call, %cond.end12.cond.end28_crit_edge ]
  ret i32 %cond29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_vapi_result(ptr noundef %cx, ptr nocapture noundef %data, i32 noundef %cmd, i32 noundef %args, ...) local_unnamed_addr #0 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #10
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !248
  call void @llvm.va_start(ptr nonnull %ap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %args)
  %cmp5 = icmp sgt i32 %args, 0
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %1)
  %argp.cur = load ptr, ptr %ap, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %ap, align 4
  %2 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %argp.cur, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 %i.06
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %args
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.va_end(ptr nonnull %ap)
  %call = call i32 @cx18_api(ptr noundef %cx, i32 noundef %cmd, i32 noundef %args, ptr noundef %data)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #10
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cx18_handle_to_stream(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cx18_queue_get_mdl(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_stream_rotate_idx_mdls(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_cx18_enqueue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @videobuf_to_vmalloc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mb_ack_irq(ptr noundef %cx, ptr nocapture noundef %order) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rpu = getelementptr inbounds %struct.cx18_in_work_order, ptr %order, i32 0, i32 4
  %0 = ptrtoint ptr %rpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rpu, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %1, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %scb = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 15
  %3 = ptrtoint ptr %scb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %scb, align 4
  %apu2epu_mb = getelementptr inbounds %struct.cx18_scb, ptr %4, i32 0, i32 124
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %scb2 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 15
  %5 = ptrtoint ptr %scb2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %scb2, align 4
  %cpu2epu_mb = getelementptr inbounds %struct.cx18_scb, ptr %6, i32 0, i32 123
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %cmd = getelementptr inbounds %struct.cx18_in_work_order, ptr %order, i32 0, i32 5, i32 3
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cmd, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name, i32 noundef %1, i32 noundef %8) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %ack_irq.0 = phi i32 [ 65536, %sw.bb1 ], [ 131072, %sw.bb ]
  %ack_mb.0 = phi ptr [ %cpu2epu_mb, %sw.bb1 ], [ %apu2epu_mb, %sw.bb ]
  %mb4 = getelementptr inbounds %struct.cx18_in_work_order, ptr %order, i32 0, i32 5
  %9 = ptrtoint ptr %mb4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mb4, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ack_mb.0) #10, !srcloc !244
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp eq i32 %10, %12
  br i1 %cmp.not, label %lor.lhs.false, label %sw.epilog.do.body9_crit_edge

sw.epilog.do.body9_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9

lor.lhs.false:                                    ; preds = %sw.epilog
  %ack = getelementptr inbounds %struct.cx18_mailbox, ptr %ack_mb.0, i32 0, i32 1
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ack) #10, !srcloc !244
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp8 = icmp eq i32 %10, %14
  br i1 %cmp8, label %lor.lhs.false.do.body9_crit_edge, label %if.end24

lor.lhs.false.do.body9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9

do.body9:                                         ; preds = %lor.lhs.false.do.body9_crit_edge, %sw.epilog.do.body9_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %15 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body9.do.end23_crit_edge, label %do.end13

do.body9.do.end23_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end23

do.end13:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %name16 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %rpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rpu, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @rpu_str, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef %name16, ptr noundef %19, ptr noundef %19, i32 noundef %10) #13
  br label %do.end23

do.end23:                                         ; preds = %do.end13, %do.body9.do.end23_crit_edge
  %flags = getelementptr inbounds %struct.cx18_in_work_order, ptr %order, i32 0, i32 3
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %or = or i32 %21, 2
  store i32 %or, ptr %flags, align 4
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false
  tail call fastcc void @cx18_writel(i32 noundef %10, ptr noundef %ack)
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %22 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %23, i32 13054272
  %24 = lshr exact i32 %ack_irq.0, 8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.backedge.i.i, %if.end24
  %i.01.i.i = phi i32 [ 0, %if.end24 ], [ %i.01.be.i.i, %for.body.backedge.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #10, !srcloc !247
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %25)
  %cmp1.i.i = icmp eq i32 %25, -1
  br i1 %cmp1.i.i, label %for.inc.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %26 = shl i32 %25, 8
  %27 = xor i32 %26, -1
  %28 = and i32 %ack_irq.0, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp4.i.i = icmp ne i32 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.i.i = icmp ult i32 %i.01.i.i, 9
  %or.cond.i.i = select i1 %cmp4.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.for.body.backedge.i.i_crit_edge, label %if.end.i.i.cleanup_crit_edge

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i.for.body.backedge.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.old.i.i = icmp ult i32 %i.01.i.i, 9
  br i1 %cmp.old.i.i, label %for.inc.i.i.for.body.backedge.i.i_crit_edge, label %for.inc.i.i.cleanup_crit_edge

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.i.i.for.body.backedge.i.i_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.backedge.i.i

for.body.backedge.i.i:                            ; preds = %for.inc.i.i.for.body.backedge.i.i_crit_edge, %if.end.i.i.for.body.backedge.i.i_crit_edge
  %i.01.be.i.i = add nuw nsw i32 %i.01.i.i, 1
  br label %for.body.i.i

cleanup:                                          ; preds = %for.inc.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %do.end23, %do.end
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx18_writel(i32 noundef %val, ptr noundef %addr) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.bswap.i32(i32 %val) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !247
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !244
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %val)
  %cmp1 = icmp eq i32 %2, %val
  br i1 %cmp1, label %entry.for.end_crit_edge, label %for.cond

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond:                                         ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !247
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !244
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %val)
  %cmp1.1 = icmp eq i32 %4, %val
  br i1 %cmp1.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !247
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !244
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %val)
  %cmp1.2 = icmp eq i32 %6, %val
  br i1 %cmp1.2, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !247
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !244
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %val)
  %cmp1.3 = icmp eq i32 %8, %val
  br i1 %cmp1.3, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !247
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !244
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val)
  %cmp1.4 = icmp eq i32 %10, %val
  br i1 %cmp1.4, label %for.cond.3.for.end_crit_edge, label %for.cond.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !247
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !244
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val)
  %cmp1.5 = icmp eq i32 %12, %val
  br i1 %cmp1.5, label %for.cond.4.for.end_crit_edge, label %for.cond.5

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !247
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !244
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %val)
  %cmp1.6 = icmp eq i32 %14, %val
  br i1 %cmp1.6, label %for.cond.5.for.end_crit_edge, label %for.cond.6

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !247
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !244
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %val)
  %cmp1.7 = icmp eq i32 %16, %val
  br i1 %cmp1.7, label %for.cond.6.for.end_crit_edge, label %for.cond.7

for.cond.6.for.end_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.7:                                       ; preds = %for.cond.6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !247
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !244
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %val)
  %cmp1.8 = icmp eq i32 %18, %val
  br i1 %cmp1.8, label %for.cond.7.for.end_crit_edge, label %for.cond.8

for.cond.7.for.end_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !246
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %addr, i32 %0) #10, !srcloc !247
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %addr) #10, !srcloc !244
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !245
  br label %for.end

for.end:                                          ; preds = %for.cond.8, %for.cond.7.for.end_crit_edge, %for.cond.6.for.end_crit_edge, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx18_setup_page(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @autoremove_wake_function(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @prepare_to_wait(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx18_msleep_timeout(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !86, !87, !88, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232}
!llvm.named.register.sp = !{!234}
!llvm.module.flags = !{!235, !236, !237, !238, !239, !240, !241, !242}
!llvm.ident = !{!243}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 541, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cx18_api_epu_cmd_irq._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cx18_api_epu_cmd_irq._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 558, i32 3}
!8 = !{ptr @cx18_api_epu_cmd_irq._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @cx18_api_epu_cmd_irq._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 561, i32 26}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 809, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cx18_api_func._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @cx18_api_func._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 833, i32 3}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cx18_vapi._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @cx18_vapi._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 837, i32 3}
!24 = !{ptr @cx18_vapi._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @cx18_vapi._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 347, i32 4}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @epu_cmd._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @epu_cmd._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 354, i32 3}
!33 = !{ptr @epu_cmd._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @epu_cmd._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 244, i32 3}
!37 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @epu_dma_done._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @epu_dma_done._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.21, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 279, i32 4}
!44 = !{ptr @epu_dma_done._entry.23, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @epu_dma_done._entry_ptr.25, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 285, i32 3}
!48 = !{ptr @epu_dma_done._entry.26, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @epu_dma_done._entry_ptr.28, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.30, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 287, i32 4}
!52 = !{ptr @epu_dma_done._entry.29, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @epu_dma_done._entry_ptr.31, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 292, i32 3}
!56 = !{ptr @epu_dma_done._entry.32, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @epu_dma_done._entry_ptr.34, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.35, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 328, i32 2}
!60 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @epu_debug._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @epu_debug._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 331, i32 3}
!65 = !{ptr @epu_debug._entry.37, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @epu_debug._entry_ptr.39, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 20, i32 34}
!69 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 20, i32 41}
!71 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 20, i32 48}
!73 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 20, i32 55}
!75 = !{ptr @rpu_str, !76, !"rpu_str", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 20, i32 20}
!77 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 112, i32 2}
!79 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @dump_mb._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @dump_mb._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 99, i32 19}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 480, i32 4}
!86 = !{ptr @epu_cmd_irq._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @epu_cmd_irq._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @epu_cmd_irq._entry.48, !89, !"_entry", i1 false, i1 false}
!89 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 487, i32 3}
!90 = !{ptr @epu_cmd_irq._entry_ptr.49, !89, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.50, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 397, i32 3}
!93 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @mb_ack_irq._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @mb_ack_irq._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 406, i32 3}
!98 = !{ptr @mb_ack_irq._entry.52, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @mb_ack_irq._entry_ptr.54, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.55, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 593, i32 3}
!102 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @cx18_api_call._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @cx18_api_call._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 600, i32 5}
!107 = !{ptr @cx18_api_call._entry.57, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @cx18_api_call._entry_ptr.59, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @cx18_api_call._entry.60, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 604, i32 4}
!111 = !{ptr @cx18_api_call._entry_ptr.61, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.63, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 623, i32 3}
!114 = !{ptr @cx18_api_call._entry.62, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @cx18_api_call._entry_ptr.64, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.66, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 646, i32 3}
!118 = !{ptr @cx18_api_call._entry.65, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @cx18_api_call._entry_ptr.67, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.69, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 649, i32 3}
!122 = !{ptr @cx18_api_call._entry.68, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @cx18_api_call._entry_ptr.70, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.72, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 667, i32 2}
!126 = !{ptr @cx18_api_call._entry.71, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @cx18_api_call._entry_ptr.73, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.75, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 690, i32 4}
!130 = !{ptr @cx18_api_call._entry.74, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @cx18_api_call._entry_ptr.76, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.78, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 693, i32 4}
!134 = !{ptr @cx18_api_call._entry.77, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @cx18_api_call._entry_ptr.79, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.81, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 702, i32 3}
!138 = !{ptr @cx18_api_call._entry.80, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @cx18_api_call._entry_ptr.82, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.84, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 705, i32 3}
!142 = !{ptr @cx18_api_call._entry.83, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @cx18_api_call._entry_ptr.85, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.87, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 723, i32 3}
!146 = !{ptr @cx18_api_call._entry.86, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @cx18_api_call._entry_ptr.88, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.89, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 36, i32 2}
!150 = !{ptr @.str.90, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 37, i32 2}
!152 = !{ptr @.str.91, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 38, i32 2}
!154 = !{ptr @.str.92, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 39, i32 2}
!156 = !{ptr @.str.93, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 40, i32 2}
!158 = !{ptr @.str.94, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 41, i32 2}
!160 = !{ptr @.str.95, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 42, i32 2}
!162 = !{ptr @.str.96, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 43, i32 2}
!164 = !{ptr @.str.97, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 45, i32 2}
!166 = !{ptr @.str.98, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 46, i32 2}
!168 = !{ptr @.str.99, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 47, i32 2}
!170 = !{ptr @.str.100, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 48, i32 2}
!172 = !{ptr @.str.101, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 49, i32 2}
!174 = !{ptr @.str.102, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 50, i32 2}
!176 = !{ptr @.str.103, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 51, i32 2}
!178 = !{ptr @.str.104, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 52, i32 2}
!180 = !{ptr @.str.105, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 53, i32 2}
!182 = !{ptr @.str.106, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 54, i32 2}
!184 = !{ptr @.str.107, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 55, i32 2}
!186 = !{ptr @.str.108, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 56, i32 2}
!188 = !{ptr @.str.109, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 57, i32 2}
!190 = !{ptr @.str.110, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 58, i32 2}
!192 = !{ptr @.str.111, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 59, i32 2}
!194 = !{ptr @.str.112, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 60, i32 2}
!196 = !{ptr @.str.113, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 61, i32 2}
!198 = !{ptr @.str.114, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 62, i32 2}
!200 = !{ptr @.str.115, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 63, i32 2}
!202 = !{ptr @.str.116, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 64, i32 2}
!204 = !{ptr @.str.117, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 65, i32 2}
!206 = !{ptr @.str.118, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 66, i32 2}
!208 = !{ptr @.str.119, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 67, i32 2}
!210 = !{ptr @.str.120, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 68, i32 2}
!212 = !{ptr @.str.121, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 69, i32 2}
!214 = !{ptr @.str.122, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 70, i32 2}
!216 = !{ptr @.str.123, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 71, i32 2}
!218 = !{ptr @.str.124, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 72, i32 2}
!220 = !{ptr @.str.125, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 73, i32 2}
!222 = !{ptr @.str.126, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 74, i32 2}
!224 = !{ptr @.str.127, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 75, i32 2}
!226 = !{ptr @.str.128, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 76, i32 2}
!228 = !{ptr @.str.129, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 77, i32 2}
!230 = !{ptr @.str.130, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 78, i32 2}
!232 = !{ptr @api_info, !233, !"api_info", i1 false, i1 false}
!233 = !{!"../drivers/media/pci/cx18/cx18-mailbox.c", i32 34, i32 35}
!234 = !{!"sp"}
!235 = !{i32 1, !"wchar_size", i32 2}
!236 = !{i32 1, !"min_enum_size", i32 4}
!237 = !{i32 8, !"branch-target-enforcement", i32 0}
!238 = !{i32 8, !"sign-return-address", i32 0}
!239 = !{i32 8, !"sign-return-address-all", i32 0}
!240 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!241 = !{i32 7, !"uwtable", i32 1}
!242 = !{i32 7, !"frame-pointer", i32 2}
!243 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!244 = !{i64 5764455}
!245 = !{i64 2158664048}
!246 = !{i64 2158664418}
!247 = !{i64 5764037}
!248 = !{!"auto-init"}
