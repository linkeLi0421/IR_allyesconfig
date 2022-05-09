; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ivtv/ivtv-mailbox.c_pt.bc'
source_filename = "../drivers/media/pci/ivtv/ivtv-mailbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.ivtv_api_info = type { i32, ptr }
%struct.ivtv = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i64, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ivtv_options, %struct.v4l2_device, %struct.cx2341x_handler, %struct.anon.120, %struct.anon.121, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i8, i8, %struct.spinlock, %struct.mutex, [9 x i32], [9 x %struct.ivtv_stream], %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.work_struct, i32, i32, %struct.kthread_worker, ptr, %struct.kthread_work, %struct.spinlock, i32, i32, i32, i32, i32, %struct.ivtv_user_dma, %struct.timer_list, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data, [256 x %struct.ivtv_api_cache], %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, %struct.mutex, %struct.IR_i2c_init_data, i32, i32, i32, i32, [400 x %struct.v4l2_enc_idx_entry], i32, i32, i32, i8, i64, i64, [3 x i32], i32, i32, %struct.vbi_info, %struct.yuv_playback_info, i32, i32, i32, i32, i8, i32, %struct.v4l2_rect, %struct.v4l2_rect, ptr, ptr }
%struct.ivtv_options = type { [9 x i32], i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.112, %struct.anon.113, %struct.anon.114, %struct.anon.115, %struct.anon.116, %struct.anon.117, %struct.anon.118, %struct.anon.119 }
%struct.anon.112 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.113 = type { ptr, ptr }
%struct.anon.114 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.115 = type { ptr, ptr }
%struct.anon.116 = type { ptr, ptr, ptr }
%struct.anon.117 = type { ptr, ptr }
%struct.anon.118 = type { ptr, ptr }
%struct.anon.119 = type { ptr, ptr, ptr, ptr }
%struct.anon.120 = type { ptr, ptr }
%struct.anon.121 = type { ptr, ptr }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.82 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { i32, i32 }
%struct.ivtv_stream = type { %struct.video_device, ptr, ptr, i32, i32, ptr, %struct.spinlock, i32, i32, i32, i32, i64, i32, i32, i64, i32, %struct.wait_queue_head, i32, i32, i32, i32, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, %struct.ivtv_queue, i16, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.79], %struct.media_entity_enum, i32 }
%struct.anon.79 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.ivtv_queue = type { %struct.list_head, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ivtv_user_dma = type { %struct.mutex, i32, [704 x ptr], [704 x ptr], [704 x %struct.ivtv_sg_element], i32, i32, [704 x %struct.scatterlist] }
%struct.ivtv_sg_element = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.ivtv_mailbox_data = type { ptr, i32, i8 }
%struct.ivtv_api_cache = type { i32, [16 x i32] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_enc_idx_entry = type { i64, i64, i32, i32, [2 x i32] }
%struct.vbi_info = type { i32, i8, i8, i32, i8, i8, [2 x i32], i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_format, ptr, i32, i32, [256 x %struct.vbi_cc], i32, i8, i32, i8, %struct.vbi_vps, [36 x %struct.v4l2_sliced_vbi_data], [36 x %struct.v4l2_sliced_vbi_data], [32 x ptr], [32 x i32], %struct.ivtv_buffer, i32 }
%struct.v4l2_format = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.v4l2_pix_format_mplane, [8 x i8] }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, i32, i32, [8 x %struct.v4l2_plane_pix_format], i8, i8, %union.anon.90, i8, i8, [7 x i8] }
%struct.v4l2_plane_pix_format = type { i32, i32, [6 x i16] }
%union.anon.90 = type { i8 }
%struct.vbi_cc = type { [2 x i8], [2 x i8] }
%struct.vbi_vps = type { [5 x i8] }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.ivtv_buffer = type { %struct.list_head, i32, i16, i16, ptr, i32, i32 }
%struct.yuv_playback_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i8, [8 x %struct.yuv_frame_info], %struct.yuv_frame_info, %struct.yuv_frame_info, ptr, i32, i32, i8, i8, %struct.v4l2_rect, i32, i32, i8 }
%struct.yuv_frame_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.ivtv_mailbox = type { i32, i32, i32, i32, [16 x i32] }
%struct.__va_list = type { ptr }

@ivtv_api_call._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 210, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: No mailbox allocated\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ivtv_api_call\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/pci/ivtv/ivtv-mailbox.c\00", [58 x i8] zeroinitializer }, align 32
@ivtv_api_call._entry_ptr = internal global ptr @ivtv_api_call._entry, section ".printk_index", align 4
@ivtv_api_call._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: Invalid MB call: cmd = 0x%02x, args = %d\0A\00", [48 x i8] zeroinitializer }, align 32
@ivtv_api_call._entry_ptr.5 = internal global ptr @ivtv_api_call._entry.3, section ".printk_index", align 4
@ivtv_debug = external dso_local local_unnamed_addr global i32, align 4
@ivtv_api_call._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016%s:  mb: MB Call: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@ivtv_api_call._entry_ptr.8 = internal global ptr @ivtv_api_call._entry.6, section ".printk_index", align 4
@ivtv_api_call._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ivtv_api_call._entry_ptr.10 = internal global ptr @ivtv_api_call._entry.9, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ivtv_api_call._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:  warn: %s: mailbox %d not free %08x\0A\00", [53 x i8] zeroinitializer }, align 32
@ivtv_api_call._entry_ptr.13 = internal global ptr @ivtv_api_call._entry.11, section ".printk_index", align 4
@ivtv_api_call._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s: Could not find free DMA mailbox for %s\0A\00", [50 x i8] zeroinitializer }, align 32
@ivtv_api_call._entry_ptr.16 = internal global ptr @ivtv_api_call._entry.14, section ".printk_index", align 4
@ivtv_api_call._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s:  warn: No free mailbox found (%s)\0A\00", [55 x i8] zeroinitializer }, align 32
@ivtv_api_call._entry_ptr.19 = internal global ptr @ivtv_api_call._entry.17, section ".printk_index", align 4
@ivtv_api_call._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016%s:  warn: Could not get result (%s)\0A\00", [56 x i8] zeroinitializer }, align 32
@ivtv_api_call._entry_ptr.22 = internal global ptr @ivtv_api_call._entry.20, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ivtv_api_call._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s:  warn: %s took %u jiffies\0A\00", [63 x i8] zeroinitializer }, align 32
@ivtv_api_call._entry_ptr.25 = internal global ptr @ivtv_api_call._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CX2341X_DEC_PING_FW\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CX2341X_DEC_START_PLAYBACK\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CX2341X_DEC_STOP_PLAYBACK\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CX2341X_DEC_SET_PLAYBACK_SPEED\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CX2341X_DEC_STEP_VIDEO\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CX2341X_DEC_SET_DMA_BLOCK_SIZE\00", [33 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CX2341X_DEC_GET_XFER_INFO\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CX2341X_DEC_GET_DMA_STATUS\00", [37 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CX2341X_DEC_SCHED_DMA_FROM_HOST\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CX2341X_DEC_PAUSE_PLAYBACK\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CX2341X_DEC_HALT_FW\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CX2341X_DEC_SET_STANDARD\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CX2341X_DEC_GET_VERSION\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CX2341X_DEC_SET_STREAM_INPUT\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CX2341X_DEC_GET_TIMING_INFO\00", [36 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CX2341X_DEC_SET_AUDIO_MODE\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CX2341X_DEC_SET_EVENT_NOTIFICATION\00", [61 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CX2341X_DEC_SET_DISPLAY_BUFFERS\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CX2341X_DEC_EXTRACT_VBI\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CX2341X_DEC_SET_DECODER_SOURCE\00", [33 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CX2341X_DEC_SET_PREBUFFERING\00", [35 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CX2341X_OSD_GET_FRAMEBUFFER\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CX2341X_OSD_GET_PIXEL_FORMAT\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CX2341X_OSD_SET_PIXEL_FORMAT\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CX2341X_OSD_GET_STATE\00", [42 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"CX2341X_OSD_SET_STATE\00", [42 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CX2341X_OSD_GET_OSD_COORDS\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CX2341X_OSD_SET_OSD_COORDS\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CX2341X_OSD_GET_SCREEN_COORDS\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CX2341X_OSD_SET_SCREEN_COORDS\00", [34 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CX2341X_OSD_GET_GLOBAL_ALPHA\00", [35 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CX2341X_OSD_SET_GLOBAL_ALPHA\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CX2341X_OSD_SET_BLEND_COORDS\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CX2341X_OSD_GET_FLICKER_STATE\00", [34 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CX2341X_OSD_SET_FLICKER_STATE\00", [34 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CX2341X_OSD_BLT_COPY\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CX2341X_OSD_BLT_FILL\00", [43 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CX2341X_OSD_BLT_TEXT\00", [43 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CX2341X_OSD_SET_FRAMEBUFFER_WINDOW\00", [61 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CX2341X_OSD_SET_CHROMA_KEY\00", [37 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CX2341X_OSD_GET_ALPHA_CONTENT_INDEX\00", [60 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CX2341X_OSD_SET_ALPHA_CONTENT_INDEX\00", [60 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CX2341X_ENC_PING_FW\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CX2341X_ENC_START_CAPTURE\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CX2341X_ENC_STOP_CAPTURE\00", [39 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CX2341X_ENC_SET_AUDIO_ID\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CX2341X_ENC_SET_VIDEO_ID\00", [39 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CX2341X_ENC_SET_PCR_ID\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CX2341X_ENC_SET_FRAME_RATE\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CX2341X_ENC_SET_FRAME_SIZE\00", [37 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CX2341X_ENC_SET_BIT_RATE\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CX2341X_ENC_SET_GOP_PROPERTIES\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CX2341X_ENC_SET_ASPECT_RATIO\00", [35 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CX2341X_ENC_SET_DNR_FILTER_MODE\00", [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CX2341X_ENC_SET_DNR_FILTER_PROPS\00", [63 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CX2341X_ENC_SET_CORING_LEVELS\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CX2341X_ENC_SET_SPATIAL_FILTER_TYPE\00", [60 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0xb1\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CX2341X_ENC_SET_VBI_LINE\00", [39 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CX2341X_ENC_SET_STREAM_TYPE\00", [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CX2341X_ENC_SET_OUTPUT_PORT\00", [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CX2341X_ENC_SET_AUDIO_PROPERTIES\00", [63 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"CX2341X_ENC_HALT_FW\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CX2341X_ENC_GET_VERSION\00", [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CX2341X_ENC_SET_GOP_CLOSURE\00", [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"CX2341X_ENC_GET_SEQ_END\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CX2341X_ENC_SET_PGM_INDEX_INFO\00", [33 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CX2341X_ENC_SET_VBI_CONFIG\00", [37 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CX2341X_ENC_SET_DMA_BLOCK_SIZE\00", [33 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"CX2341X_ENC_GET_PREV_DMA_INFO_MB_10\00", [60 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CX2341X_ENC_GET_PREV_DMA_INFO_MB_9\00", [61 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CX2341X_ENC_SCHED_DMA_TO_HOST\00", [34 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CX2341X_ENC_INITIALIZE_INPUT\00", [35 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CX2341X_ENC_SET_FRAME_DROP_RATE\00", [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CX2341X_ENC_PAUSE_ENCODER\00", [38 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CX2341X_ENC_REFRESH_INPUT\00", [38 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CX2341X_ENC_SET_COPYRIGHT\00", [38 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CX2341X_ENC_SET_EVENT_NOTIFICATION\00", [61 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CX2341X_ENC_SET_NUM_VSYNC_LINES\00", [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"CX2341X_ENC_SET_PLACEHOLDER\00", [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CX2341X_ENC_MUTE_VIDEO\00", [41 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CX2341X_ENC_MUTE_AUDIO\00", [41 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"CX2341X_ENC_SET_VERT_CROP_LINE\00", [33 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CX2341X_ENC_MISC\00", [47 x i8] zeroinitializer }, align 32
@api_info = internal constant { <{ [221 x %struct.ivtv_api_info], [35 x %struct.ivtv_api_info] }>, [512 x i8] } { <{ [221 x %struct.ivtv_api_info], [35 x %struct.ivtv_api_info] }> <{ [221 x %struct.ivtv_api_info] [%struct.ivtv_api_info { i32 6, ptr @.str.26 }, %struct.ivtv_api_info { i32 66, ptr @.str.27 }, %struct.ivtv_api_info { i32 2, ptr @.str.28 }, %struct.ivtv_api_info { i32 2, ptr @.str.29 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 2, ptr @.str.30 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.31 }, %struct.ivtv_api_info { i32 6, ptr @.str.32 }, %struct.ivtv_api_info { i32 6, ptr @.str.33 }, %struct.ivtv_api_info { i32 40, ptr @.str.34 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 2, ptr @.str.35 }, %struct.ivtv_api_info { i32 6, ptr @.str.36 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.37 }, %struct.ivtv_api_info { i32 6, ptr @.str.38 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.39 }, %struct.ivtv_api_info { i32 2, ptr @.str.40 }, %struct.ivtv_api_info { i32 1, ptr @.str.41 }, %struct.ivtv_api_info { i32 2, ptr @.str.42 }, %struct.ivtv_api_info { i32 1, ptr @.str.43 }, %struct.ivtv_api_info { i32 2, ptr @.str.44 }, %struct.ivtv_api_info { i32 6, ptr @.str.45 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.46 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 6, ptr @.str.47 }, %struct.ivtv_api_info { i32 6, ptr @.str.48 }, %struct.ivtv_api_info { i32 1, ptr @.str.49 }, %struct.ivtv_api_info { i32 6, ptr @.str.50 }, %struct.ivtv_api_info { i32 1, ptr @.str.51 }, %struct.ivtv_api_info { i32 6, ptr @.str.52 }, %struct.ivtv_api_info { i32 1, ptr @.str.53 }, %struct.ivtv_api_info { i32 6, ptr @.str.54 }, %struct.ivtv_api_info { i32 1, ptr @.str.55 }, %struct.ivtv_api_info { i32 6, ptr @.str.56 }, %struct.ivtv_api_info { i32 1, ptr @.str.57 }, %struct.ivtv_api_info { i32 1, ptr @.str.58 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 6, ptr @.str.59 }, %struct.ivtv_api_info { i32 1, ptr @.str.60 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 2, ptr @.str.61 }, %struct.ivtv_api_info { i32 2, ptr @.str.62 }, %struct.ivtv_api_info { i32 2, ptr @.str.63 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.64 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.65 }, %struct.ivtv_api_info { i32 6, ptr @.str.66 }, %struct.ivtv_api_info { i32 1, ptr @.str.67 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 6, ptr @.str.68 }, %struct.ivtv_api_info { i32 66, ptr @.str.69 }, %struct.ivtv_api_info { i32 2, ptr @.str.70 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.71 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.72 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.73 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.74 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.75 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.76 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.77 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.78 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.79 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.80 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.81 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.82 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.83 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 2, ptr @.str.84 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.85 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.86 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.87 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 6, ptr @.str.88 }, %struct.ivtv_api_info { i32 6, ptr @.str.89 }, %struct.ivtv_api_info { i32 1, ptr @.str.90 }, %struct.ivtv_api_info { i32 2, ptr @.str.91 }, %struct.ivtv_api_info { i32 6, ptr @.str.92 }, %struct.ivtv_api_info { i32 2, ptr @.str.93 }, %struct.ivtv_api_info { i32 1, ptr @.str.94 }, %struct.ivtv_api_info { i32 6, ptr @.str.95 }, %struct.ivtv_api_info { i32 6, ptr @.str.96 }, %struct.ivtv_api_info { i32 40, ptr @.str.97 }, %struct.ivtv_api_info { i32 2, ptr @.str.98 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 1, ptr @.str.99 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 2, ptr @.str.100 }, %struct.ivtv_api_info { i32 48, ptr @.str.101 }, %struct.ivtv_api_info { i32 1, ptr @.str.102 }, %struct.ivtv_api_info { i32 2, ptr @.str.103 }, %struct.ivtv_api_info { i32 1, ptr @.str.104 }, %struct.ivtv_api_info { i32 1, ptr @.str.105 }, %struct.ivtv_api_info zeroinitializer, %struct.ivtv_api_info { i32 2, ptr @.str.106 }, %struct.ivtv_api_info { i32 2, ptr @.str.107 }, %struct.ivtv_api_info { i32 6, ptr @.str.108 }, %struct.ivtv_api_info { i32 6, ptr @.str.109 }], [35 x %struct.ivtv_api_info] zeroinitializer }>, [512 x i8] zeroinitializer }, align 32
@clear_all_mailboxes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016%s:  warn: Clearing mailbox %d: cmd 0x%08x flags 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clear_all_mailboxes\00", [44 x i8] zeroinitializer }, align 32
@clear_all_mailboxes._entry_ptr = internal global ptr @clear_all_mailboxes._entry, section ".printk_index", align 4
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 210, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 215, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 220, i32 6 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 223, i32 6 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 252, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 255, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 265, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 292, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 304, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 85, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 86, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 87, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 88, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 89, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 90, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 91, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 92, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 93, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 94, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 95, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 96, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 97, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 98, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 99, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 100, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 101, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 102, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 103, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 104, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 105, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 108, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 109, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 110, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 111, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 112, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 113, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 114, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 115, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 116, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 117, i32 2 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 118, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 119, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 120, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 121, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 122, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 123, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 124, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 125, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 126, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 127, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 128, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 40, i32 2 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 41, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 42, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 43, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 44, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 45, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 46, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 47, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 48, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 49, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 50, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 51, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 52, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 53, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 54, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 82, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 55, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 56, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 57, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 58, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 59, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 60, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 61, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 62, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 63, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 64, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 65, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 66, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 67, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 68, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 69, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 70, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 71, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 72, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 73, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 74, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 75, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 76, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 77, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 78, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 79, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 80, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant [9 x i8] c"api_info\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 38, i32 35 }
@___asan_gen_.425 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.431 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.432 = private constant [41 x i8] c"../drivers/media/pci/ivtv/ivtv-mailbox.c\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.432, i32 193, i32 3 }
@llvm.compiler.used = appending global [117 x ptr] [ptr @clear_all_mailboxes._entry, ptr @clear_all_mailboxes._entry_ptr, ptr @ivtv_api_call._entry, ptr @ivtv_api_call._entry.11, ptr @ivtv_api_call._entry.14, ptr @ivtv_api_call._entry.17, ptr @ivtv_api_call._entry.20, ptr @ivtv_api_call._entry.23, ptr @ivtv_api_call._entry.3, ptr @ivtv_api_call._entry.6, ptr @ivtv_api_call._entry.9, ptr @ivtv_api_call._entry_ptr, ptr @ivtv_api_call._entry_ptr.10, ptr @ivtv_api_call._entry_ptr.13, ptr @ivtv_api_call._entry_ptr.16, ptr @ivtv_api_call._entry_ptr.19, ptr @ivtv_api_call._entry_ptr.22, ptr @ivtv_api_call._entry_ptr.25, ptr @ivtv_api_call._entry_ptr.5, ptr @ivtv_api_call._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @api_info, ptr @.str.111, ptr @.str.112], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_api_call._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_api_call._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_api_call._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_api_call._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_api_call._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_api_call._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_api_call._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_api_call._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_api_call._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @api_info to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clear_all_mailboxes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_api(ptr noundef %itv, i32 noundef %cmd, i32 noundef %args, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ivtv_api_call(ptr noundef %itv, i32 noundef %cmd, i32 noundef %args, ptr noundef %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call)
  %cmp = icmp eq i32 %call, -16
  br i1 %cmp, label %cond.true, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @ivtv_api_call(ptr noundef %itv, i32 noundef %cmd, i32 noundef %args, ptr noundef %data)
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call1, %cond.true ], [ %call, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ivtv_api_call(ptr noundef %itv, i32 noundef %cmd, i32 noundef %args, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %cmd)
  %cmp = icmp sgt i32 %cmd, 127
  %enc_mbox = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 66
  %dec_mbox = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 67
  %cond = select i1 %cmp, ptr %enc_mbox, ptr %dec_mbox
  %cmp1 = icmp eq ptr %cond, null
  br i1 %cmp1, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %args)
  %0 = icmp ugt i32 %args, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %cmd)
  %1 = icmp ugt i32 %cmd, 255
  %2 = or i1 %1, %0
  br i1 %2, label %if.end.do.end15_crit_edge, label %lor.lhs.false9

if.end.do.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

lor.lhs.false9:                                   ; preds = %if.end
  %name10 = getelementptr [256 x %struct.ivtv_api_info], ptr @api_info, i32 0, i32 %cmd, i32 1
  %3 = ptrtoint ptr %name10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name10, align 4
  %cmp11 = icmp eq ptr %4, null
  br i1 %cmp11, label %lor.lhs.false9.do.end15_crit_edge, label %if.end21

lor.lhs.false9.do.end15_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.end15:                                         ; preds = %lor.lhs.false9.do.end15_crit_edge, %if.end.do.end15_crit_edge
  %name18 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name18, i32 noundef %cmd, i32 noundef %args) #11
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false9
  %arrayidx = getelementptr [256 x %struct.ivtv_api_info], ptr @api_info, i32 0, i32 %cmd
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %and = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %7 = load i32, ptr @ivtv_debug, align 4
  br i1 %tobool.not, label %do.body44, label %do.body25

do.body25:                                        ; preds = %if.end21
  %8 = and i32 %7, 1028
  call void @__sanitizer_cov_trace_const_cmp4(i32 1028, i32 %8)
  %.not = icmp eq i32 %8, 1028
  br i1 %.not, label %do.body25.if.end61.sink.split_crit_edge, label %do.body25.if.end61_crit_edge

do.body25.if.end61_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

do.body25.if.end61.sink.split_crit_edge:          ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.sink.split

do.body44:                                        ; preds = %if.end21
  %and45 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body44.if.end61_crit_edge, label %do.body44.if.end61.sink.split_crit_edge

do.body44.if.end61.sink.split_crit_edge:          ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61.sink.split

do.body44.if.end61_crit_edge:                     ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.end61.sink.split:                              ; preds = %do.body44.if.end61.sink.split_crit_edge, %do.body25.if.end61.sink.split_crit_edge
  %name53 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name53, ptr noundef nonnull %4) #11
  br label %if.end61

if.end61:                                         ; preds = %if.end61.sink.split, %do.body44.if.end61_crit_edge, %do.body25.if.end61_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %args)
  %cmp62427 = icmp ult i32 %args, 16
  br i1 %cmp62427, label %for.body.preheader, label %if.end61.for.end_crit_edge

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  %9 = shl nuw nsw i32 %args, 2
  %uglygep = getelementptr i8, ptr %data, i32 %9
  %10 = sub nuw nsw i32 64, %9
  %11 = call ptr @memset(ptr %uglygep, i32 0, i32 %10)
  br label %for.end

for.end:                                          ; preds = %for.body.preheader, %if.end61.for.end_crit_edge
  %arrayidx64 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 68, i32 %cmd
  %12 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx64, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool65.not = icmp eq i32 %13, 0
  br i1 %tobool65.not, label %for.end.if.end83_crit_edge, label %land.lhs.true66

for.end.if.end83_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

land.lhs.true66:                                  ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -180000, %13
  %sub = add i32 %add.neg, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp71 = icmp slt i32 %sub, 0
  br i1 %cmp71, label %land.lhs.true72, label %land.lhs.true66.if.end83_crit_edge

land.lhs.true66.if.end83_crit_edge:               ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

land.lhs.true72:                                  ; preds = %land.lhs.true66
  %data75 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 68, i32 %cmd, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(64) %data, ptr noundef dereferenceable(64) %data75, i32 64) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool78.not = icmp eq i32 %bcmp, 0
  br i1 %tobool78.not, label %if.then79, label %land.lhs.true72.if.end83_crit_edge

land.lhs.true72.if.end83_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then79:                                        ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %16 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx64, align 4
  br label %cleanup

if.end83:                                         ; preds = %land.lhs.true72.if.end83_crit_edge, %land.lhs.true66.if.end83_crit_edge, %for.end.if.end83_crit_edge
  %and86 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end135, label %for.cond89.preheader

for.cond89.preheader:                             ; preds = %if.end83
  %max_mbox = getelementptr inbounds %struct.ivtv_mailbox_data, ptr %cond, i32 0, i32 2
  %busy.i = getelementptr inbounds %struct.ivtv_mailbox_data, ptr %cond, i32 0, i32 1
  %name108 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  br label %for.body91

for.body91:                                       ; preds = %for.inc122.for.body91_crit_edge, %for.cond89.preheader
  %i.1429 = phi i32 [ 0, %for.cond89.preheader ], [ %inc123, %for.inc122.for.body91_crit_edge ]
  %17 = ptrtoint ptr %max_mbox to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %max_mbox, align 4
  %conv = zext i8 %18 to i32
  %add92 = add nuw nsw i32 %conv, 1
  %rem = urem i32 %i.1429, %add92
  %19 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cond, align 4
  %arrayidx.i = getelementptr %struct.ivtv_mailbox, ptr %20, i32 %rem
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  %22 = and i32 %21, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i = icmp ne i32 %22, 0
  %23 = or i1 %cmp.i, %tobool.i
  br i1 %23, label %land.lhs.true.i, label %for.body91.do.body99_crit_edge

for.body91.do.body99_crit_edge:                   ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body99

land.lhs.true.i:                                  ; preds = %for.body91
  %call4.i = tail call i32 @_test_and_set_bit(i32 noundef %rem, ptr noundef %busy.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then95, label %land.lhs.true.i.do.body99_crit_edge

land.lhs.true.i.do.body99_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body99

if.then95:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cond, align 4
  %arrayidx8.i = getelementptr %struct.ivtv_mailbox, ptr %25, i32 %rem
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx8.i, i32 16777216) #8, !srcloc !224
  %26 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cond, align 4
  %arrayidx13.i = getelementptr %struct.ivtv_mailbox, ptr %27, i32 %rem
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx13.i) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  %29 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cond, align 4
  %arrayidx97 = getelementptr %struct.ivtv_mailbox, ptr %30, i32 %rem
  tail call fastcc void @write_mailbox(ptr noundef %arrayidx97, i32 noundef %cmd, ptr noundef %data)
  tail call void @_clear_bit(i32 noundef %rem, ptr noundef %busy.i) #8
  br label %cleanup

do.body99:                                        ; preds = %land.lhs.true.i.do.body99_crit_edge, %for.body91.do.body99_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %31 = load i32, ptr @ivtv_debug, align 4
  %and100 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %do.body99.for.inc122_crit_edge, label %do.end105

do.body99.for.inc122_crit_edge:                   ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc122

do.end105:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cond, align 4
  %arrayidx113 = getelementptr %struct.ivtv_mailbox, ptr %33, i32 %rem
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx113) #8, !srcloc !221
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !226
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name108, ptr noundef nonnull %4, i32 noundef %rem, i32 noundef %35) #11
  br label %for.inc122

for.inc122:                                       ; preds = %do.end105, %do.body99.for.inc122_crit_edge
  %inc123 = add nuw nsw i32 %i.1429, 1
  %exitcond.not = icmp eq i32 %inc123, 100
  br i1 %exitcond.not, label %do.end127, label %for.inc122.for.body91_crit_edge

for.inc122.for.body91_crit_edge:                  ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body91

do.end127:                                        ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #10
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %name108, ptr noundef nonnull %4) #11
  tail call fastcc void @clear_all_mailboxes(ptr noundef %itv, ptr noundef nonnull %cond)
  br label %cleanup

if.end135:                                        ; preds = %if.end83
  %and136 = and i32 %6, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and136)
  %cmp137 = icmp eq i32 %and136, 6
  %spec.select = select i1 %cmp137, i32 10, i32 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %max_mbox1.i = getelementptr inbounds %struct.ivtv_mailbox_data, ptr %cond, i32 0, i32 2
  %37 = ptrtoint ptr %max_mbox1.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %max_mbox1.i, align 4
  %conv.i = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and136)
  %cmp.i417 = icmp eq i32 %and136, 2
  %spec.select.i = select i1 %cmp.i417, i32 1, i32 %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %cmp6.not4.i = icmp eq i32 %spec.select.i, 0
  %busy.i.i = getelementptr inbounds %struct.ivtv_mailbox_data, ptr %cond, i32 0, i32 1
  %and11.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %add.i = add i32 %36, 100
  br label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.inc21.i.for.cond5.preheader.i_crit_edge, %if.end135
  %i.07.i = phi i32 [ 0, %if.end135 ], [ %inc22.i, %for.inc21.i.for.cond5.preheader.i_crit_edge ]
  br i1 %cmp6.not4.i, label %for.cond5.preheader.i.for.end.i_crit_edge, label %for.cond5.preheader.i.for.body8.i_crit_edge

for.cond5.preheader.i.for.body8.i_crit_edge:      ; preds = %for.cond5.preheader.i
  br label %for.body8.i

for.cond5.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body8.i:                                      ; preds = %for.inc.i.for.body8.i_crit_edge, %for.cond5.preheader.i.for.body8.i_crit_edge
  %mb.05.i = phi i32 [ %inc.i, %for.inc.i.for.body8.i_crit_edge ], [ 1, %for.cond5.preheader.i.for.body8.i_crit_edge ]
  %39 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cond, align 4
  %arrayidx.i.i = getelementptr %struct.ivtv_mailbox, ptr %40, i32 %mb.05.i
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx.i.i) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !222
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i.i = icmp eq i32 %41, 0
  %42 = and i32 %41, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.i.i = icmp ne i32 %42, 0
  %43 = or i1 %cmp.i.i, %tobool.i.i
  br i1 %43, label %land.lhs.true.i.i, label %for.body8.i.for.inc.i_crit_edge

for.body8.i.for.inc.i_crit_edge:                  ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %for.body8.i
  %call4.i.i = tail call i32 @_test_and_set_bit(i32 noundef %mb.05.i, ptr noundef %busy.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %get_mailbox.exit, label %land.lhs.true.i.i.for.inc.i_crit_edge

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.i.for.inc.i_crit_edge, %for.body8.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %mb.05.i, 1
  %exitcond.i = icmp eq i32 %mb.05.i, %spec.select.i
  br i1 %exitcond.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body8.i_crit_edge

for.inc.i.for.body8.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body8.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond5.preheader.i.for.end.i_crit_edge
  br i1 %tobool12.not.i, label %if.then13.i, label %for.end.i.for.inc21.i_crit_edge

for.end.i.for.inc21.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc21.i

if.then13.i:                                      ; preds = %for.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp15.i = icmp slt i32 %sub.i, 0
  br i1 %cmp15.i, label %if.then13.i.do.body146_crit_edge, label %if.end18.i

if.then13.i.do.body146_crit_edge:                 ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body146

if.end18.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #10
  %call19.i = tail call i32 @ivtv_msleep_timeout(i32 noundef 10, i32 noundef 0) #8
  br label %for.inc21.i

for.inc21.i:                                      ; preds = %if.end18.i, %for.end.i.for.inc21.i_crit_edge
  %inc22.i = add nuw nsw i32 %i.07.i, 1
  %exitcond9.not.i = icmp eq i32 %inc22.i, 100
  br i1 %exitcond9.not.i, label %for.inc21.i.do.body146_crit_edge, label %for.inc21.i.for.cond5.preheader.i_crit_edge

for.inc21.i.for.cond5.preheader.i_crit_edge:      ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond5.preheader.i

for.inc21.i.do.body146_crit_edge:                 ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body146

get_mailbox.exit:                                 ; preds = %land.lhs.true.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !223
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cond, align 4
  %arrayidx8.i.i = getelementptr %struct.ivtv_mailbox, ptr %46, i32 %mb.05.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx8.i.i, i32 16777216) #8, !srcloc !224
  %47 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cond, align 4
  %arrayidx13.i.i = getelementptr %struct.ivtv_mailbox, ptr %48, i32 %mb.05.i
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx13.i.i) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !225
  %50 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %cond, align 4
  %arrayidx165 = getelementptr %struct.ivtv_mailbox, ptr %51, i32 %mb.05.i
  tail call fastcc void @write_mailbox(ptr noundef %arrayidx165, i32 noundef %cmd, ptr noundef %data)
  %and166 = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %get_mailbox.exit.if.end176_crit_edge, label %if.then168

get_mailbox.exit.if.end176_crit_edge:             ; preds = %get_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end176

do.body146:                                       ; preds = %for.inc21.i.do.body146_crit_edge, %if.then13.i.do.body146_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %52 = load i32, ptr @ivtv_debug, align 4
  %and147 = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %do.body146.do.end162_crit_edge, label %do.end152

do.body146.do.end162_crit_edge:                   ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end162

do.end152:                                        ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  %name155 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %name155, ptr noundef nonnull %4) #11
  br label %do.end162

do.end162:                                        ; preds = %do.end152, %do.body146.do.end162_crit_edge
  tail call fastcc void @clear_all_mailboxes(ptr noundef %itv, ptr noundef nonnull %cond)
  br label %cleanup

if.then168:                                       ; preds = %get_mailbox.exit
  call void @__sanitizer_cov_trace_pc() #10
  %data171 = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 68, i32 %cmd, i32 1
  %53 = call ptr @memcpy(ptr %data171, ptr %data, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %55 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx64, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.then168, %get_mailbox.exit.if.end176_crit_edge
  %and177 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %cmp178 = icmp eq i32 %and177, 0
  br i1 %cmp178, label %if.then180, label %if.end182

if.then180:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef %mb.05.i, ptr noundef %busy.i.i) #8
  br label %cleanup

if.end182:                                        ; preds = %if.end176
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %and183 = and i32 %6, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183)
  %tobool184.not = icmp eq i32 %and183, 0
  br i1 %tobool184.not, label %if.end182.for.body189_crit_edge, label %if.end182.if.end203_crit_edge

if.end182.if.end203_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end203

if.end182.for.body189_crit_edge:                  ; preds = %if.end182
  br label %for.body189

for.body189:                                      ; preds = %for.body189.for.body189_crit_edge, %if.end182.for.body189_crit_edge
  %i.2430 = phi i32 [ %inc201, %for.body189.for.body189_crit_edge ], [ 0, %if.end182.for.body189_crit_edge ]
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx165) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !227
  %58 = and i32 %57, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool197.not = icmp ne i32 %58, 0
  %inc201 = add nuw nsw i32 %i.2430, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc201)
  %exitcond435.not = icmp eq i32 %inc201, 100
  %or.cond = select i1 %tobool197.not, i1 true, i1 %exitcond435.not
  br i1 %or.cond, label %for.body189.if.end203_crit_edge, label %for.body189.for.body189_crit_edge

for.body189.for.body189_crit_edge:                ; preds = %for.body189
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body189

for.body189.if.end203_crit_edge:                  ; preds = %for.body189
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end203

if.end203:                                        ; preds = %for.body189.if.end203_crit_edge, %if.end182.if.end203_crit_edge
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx165) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %60 = and i32 %59, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool211.not431 = icmp eq i32 %60, 0
  br i1 %tobool211.not431, label %while.body.lr.ph, label %if.end203.while.end_crit_edge

if.end203.while.end_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end203
  %add212 = add i32 %56, %spec.select
  br label %while.body

while.body:                                       ; preds = %if.end254.while.body_crit_edge, %while.body.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %sub213 = sub i32 %add212, %61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub213)
  %cmp214 = icmp slt i32 %sub213, 0
  br i1 %cmp214, label %do.body217, label %if.end248

do.body217:                                       ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %62 = load i32, ptr @ivtv_debug, align 4
  %and218 = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and218)
  %tobool219.not = icmp eq i32 %and218, 0
  br i1 %tobool219.not, label %do.body217.do.body235_crit_edge, label %do.end223

do.body217.do.body235_crit_edge:                  ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body235

do.end223:                                        ; preds = %do.body217
  call void @__sanitizer_cov_trace_pc() #10
  %name226 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %name226, ptr noundef nonnull %4) #11
  br label %do.body235

do.body235:                                       ; preds = %do.end223, %do.body217.do.body235_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !229
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx165, i32 0) #8, !srcloc !224
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx165) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !230
  tail call void @_clear_bit(i32 noundef %mb.05.i, ptr noundef %busy.i.i) #8
  br label %cleanup

if.end248:                                        ; preds = %while.body
  br i1 %tobool.not, label %if.else252, label %if.then251

if.then251:                                       ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #8
  br label %if.end254

if.else252:                                       ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #10
  %call253 = tail call i32 @ivtv_msleep_timeout(i32 noundef 1, i32 noundef 0) #8
  br label %if.end254

if.end254:                                        ; preds = %if.else252, %if.then251
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx165) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !228
  %66 = and i32 %65, 67108864
  %tobool211.not = icmp eq i32 %66, 0
  br i1 %tobool211.not, label %if.end254.while.body_crit_edge, label %if.end254.while.end_crit_edge

if.end254.while.end_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.end254.while.body_crit_edge:                   ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %if.end254.while.end_crit_edge, %if.end203.while.end_crit_edge
  %add256 = add i32 %56, 10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %sub257 = sub i32 %add256, %67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub257)
  %cmp258 = icmp slt i32 %sub257, 0
  br i1 %cmp258, label %do.body261, label %while.end.if.end280_crit_edge

while.end.if.end280_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end280

do.body261:                                       ; preds = %while.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %68 = load i32, ptr @ivtv_debug, align 4
  %and262 = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and262)
  %tobool263.not = icmp eq i32 %and262, 0
  br i1 %tobool263.not, label %do.body261.if.end280_crit_edge, label %do.end267

do.body261.if.end280_crit_edge:                   ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end280

do.end267:                                        ; preds = %do.body261
  call void @__sanitizer_cov_trace_pc() #10
  %name270 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %sub274 = sub i32 %69, %56
  %call275 = tail call i32 @jiffies_to_msecs(i32 noundef %sub274) #8
  %call276 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name270, ptr noundef nonnull %4, i32 noundef %call275) #11
  br label %if.end280

if.end280:                                        ; preds = %do.end267, %do.body261.if.end280_crit_edge, %while.end.if.end280_crit_edge
  %arrayidx288 = getelementptr %struct.ivtv_mailbox, ptr %51, i32 %mb.05.i, i32 4, i32 0
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx288) #8, !srcloc !221
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %72 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %data, align 4
  %arrayidx288.1 = getelementptr %struct.ivtv_mailbox, ptr %51, i32 %mb.05.i, i32 4, i32 1
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx288.1) #8, !srcloc !221
  %74 = tail call i32 @llvm.bswap.i32(i32 %73)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %arrayidx292.1 = getelementptr i32, ptr %data, i32 1
  %75 = ptrtoint ptr %arrayidx292.1 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %arrayidx292.1, align 4
  %arrayidx288.2 = getelementptr %struct.ivtv_mailbox, ptr %51, i32 %mb.05.i, i32 4, i32 2
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx288.2) #8, !srcloc !221
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %arrayidx292.2 = getelementptr i32, ptr %data, i32 2
  %78 = ptrtoint ptr %arrayidx292.2 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %arrayidx292.2, align 4
  %arrayidx288.3 = getelementptr %struct.ivtv_mailbox, ptr %51, i32 %mb.05.i, i32 4, i32 3
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx288.3) #8, !srcloc !221
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %arrayidx292.3 = getelementptr i32, ptr %data, i32 3
  %81 = ptrtoint ptr %arrayidx292.3 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx292.3, align 4
  %arrayidx288.4 = getelementptr %struct.ivtv_mailbox, ptr %51, i32 %mb.05.i, i32 4, i32 4
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx288.4) #8, !srcloc !221
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %arrayidx292.4 = getelementptr i32, ptr %data, i32 4
  %84 = ptrtoint ptr %arrayidx292.4 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %arrayidx292.4, align 4
  %arrayidx288.5 = getelementptr %struct.ivtv_mailbox, ptr %51, i32 %mb.05.i, i32 4, i32 5
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx288.5) #8, !srcloc !221
  %86 = tail call i32 @llvm.bswap.i32(i32 %85)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %arrayidx292.5 = getelementptr i32, ptr %data, i32 5
  %87 = ptrtoint ptr %arrayidx292.5 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx292.5, align 4
  %arrayidx288.6 = getelementptr %struct.ivtv_mailbox, ptr %51, i32 %mb.05.i, i32 4, i32 6
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx288.6) #8, !srcloc !221
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %arrayidx292.6 = getelementptr i32, ptr %data, i32 6
  %90 = ptrtoint ptr %arrayidx292.6 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %arrayidx292.6, align 4
  %arrayidx288.7 = getelementptr %struct.ivtv_mailbox, ptr %51, i32 %mb.05.i, i32 4, i32 7
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx288.7) #8, !srcloc !221
  %92 = tail call i32 @llvm.bswap.i32(i32 %91)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %arrayidx292.7 = getelementptr i32, ptr %data, i32 7
  %93 = ptrtoint ptr %arrayidx292.7 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %arrayidx292.7, align 4
  %arrayidx288.8 = getelementptr %struct.ivtv_mailbox, ptr %51, i32 %mb.05.i, i32 4, i32 8
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx288.8) #8, !srcloc !221
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %arrayidx292.8 = getelementptr i32, ptr %data, i32 8
  %96 = ptrtoint ptr %arrayidx292.8 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %arrayidx292.8, align 4
  %arrayidx288.9 = getelementptr %struct.ivtv_mailbox, ptr %51, i32 %mb.05.i, i32 4, i32 9
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx288.9) #8, !srcloc !221
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %arrayidx292.9 = getelementptr i32, ptr %data, i32 9
  %99 = ptrtoint ptr %arrayidx292.9 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %arrayidx292.9, align 4
  %arrayidx288.10 = getelementptr %struct.ivtv_mailbox, ptr %51, i32 %mb.05.i, i32 4, i32 10
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx288.10) #8, !srcloc !221
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %arrayidx292.10 = getelementptr i32, ptr %data, i32 10
  %102 = ptrtoint ptr %arrayidx292.10 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %arrayidx292.10, align 4
  %arrayidx288.11 = getelementptr %struct.ivtv_mailbox, ptr %51, i32 %mb.05.i, i32 4, i32 11
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx288.11) #8, !srcloc !221
  %104 = tail call i32 @llvm.bswap.i32(i32 %103)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %arrayidx292.11 = getelementptr i32, ptr %data, i32 11
  %105 = ptrtoint ptr %arrayidx292.11 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %arrayidx292.11, align 4
  %arrayidx288.12 = getelementptr %struct.ivtv_mailbox, ptr %51, i32 %mb.05.i, i32 4, i32 12
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx288.12) #8, !srcloc !221
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %arrayidx292.12 = getelementptr i32, ptr %data, i32 12
  %108 = ptrtoint ptr %arrayidx292.12 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %arrayidx292.12, align 4
  %arrayidx288.13 = getelementptr %struct.ivtv_mailbox, ptr %51, i32 %mb.05.i, i32 4, i32 13
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx288.13) #8, !srcloc !221
  %110 = tail call i32 @llvm.bswap.i32(i32 %109)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %arrayidx292.13 = getelementptr i32, ptr %data, i32 13
  %111 = ptrtoint ptr %arrayidx292.13 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %arrayidx292.13, align 4
  %arrayidx288.14 = getelementptr %struct.ivtv_mailbox, ptr %51, i32 %mb.05.i, i32 4, i32 14
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx288.14) #8, !srcloc !221
  %113 = tail call i32 @llvm.bswap.i32(i32 %112)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %arrayidx292.14 = getelementptr i32, ptr %data, i32 14
  %114 = ptrtoint ptr %arrayidx292.14 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %arrayidx292.14, align 4
  %arrayidx288.15 = getelementptr %struct.ivtv_mailbox, ptr %51, i32 %mb.05.i, i32 4, i32 15
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx288.15) #8, !srcloc !221
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !231
  %arrayidx292.15 = getelementptr i32, ptr %data, i32 15
  %117 = ptrtoint ptr %arrayidx292.15 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx292.15, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !232
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx165, i32 0) #8, !srcloc !224
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx165) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !233
  tail call void @_clear_bit(i32 noundef %mb.05.i, ptr noundef %busy.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end280, %do.body235, %if.then180, %do.end162, %do.end127, %if.then95, %if.then79, %do.end15, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -22, %do.end15 ], [ 0, %if.then95 ], [ -16, %do.end127 ], [ -16, %do.end162 ], [ 0, %if.then180 ], [ -5, %do.body235 ], [ 0, %if.end280 ], [ 0, %if.then79 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_api_func(ptr noundef %priv, i32 noundef %cmd, i32 noundef %in, i32 noundef %out, ptr nocapture noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @ivtv_api_call(ptr noundef %priv, i32 noundef %cmd, i32 noundef %in, ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -16
  br i1 %cmp.i, label %cond.true.i, label %entry.ivtv_api.exit_crit_edge

entry.ivtv_api.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_api.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call fastcc i32 @ivtv_api_call(ptr noundef %priv, i32 noundef %cmd, i32 noundef %in, ptr noundef %data) #8
  br label %ivtv_api.exit

ivtv_api.exit:                                    ; preds = %cond.true.i, %entry.ivtv_api.exit_crit_edge
  %cond.i = phi i32 [ %call1.i, %cond.true.i ], [ %call.i, %entry.ivtv_api.exit_crit_edge ]
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_vapi_result(ptr noundef %itv, ptr nocapture noundef %data, i32 noundef %cmd, i32 noundef %args, ...) local_unnamed_addr #0 align 64 {
entry:
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #8
  %0 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !234
  call void @llvm.va_start(ptr nonnull %ap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %args)
  %cmp5 = icmp sgt i32 %args, 0
  br i1 %cmp5, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.va_end(ptr nonnull %ap)
  %call.i = call fastcc i32 @ivtv_api_call(ptr noundef %itv, i32 noundef %cmd, i32 noundef %args, ptr noundef %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -16
  br i1 %cmp.i, label %cond.true.i, label %for.end.ivtv_api.exit_crit_edge

for.end.ivtv_api.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_api.exit

cond.true.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call fastcc i32 @ivtv_api_call(ptr noundef %itv, i32 noundef %cmd, i32 noundef %args, ptr noundef %data) #8
  br label %ivtv_api.exit

ivtv_api.exit:                                    ; preds = %cond.true.i, %for.end.ivtv_api.exit_crit_edge
  %cond.i = phi i32 [ %call1.i, %cond.true.i ], [ %call.i, %for.end.ivtv_api.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #8
  ret i32 %cond.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_vapi(ptr noundef %itv, i32 noundef %cmd, i32 noundef %args, ...) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [16 x i32], align 4
  %ap = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #8
  %0 = call ptr @memset(ptr %data, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ap) #8
  %1 = ptrtoint ptr %ap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %ap, align 4, !annotation !234
  call void @llvm.va_start(ptr nonnull %ap)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %args)
  %cmp4 = icmp sgt i32 %args, 0
  br i1 %cmp4, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %ap to i32
  call void @__asan_load4_noabort(i32 %2)
  %argp.cur = load ptr, ptr %ap, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %ap, align 4
  %3 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %argp.cur, align 4
  %arrayidx = getelementptr [16 x i32], ptr %data, i32 0, i32 %i.05
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.05, 1
  %exitcond.not = icmp eq i32 %inc, %args
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.va_end(ptr nonnull %ap)
  %call.i = call fastcc i32 @ivtv_api_call(ptr noundef %itv, i32 noundef %cmd, i32 noundef %args, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -16
  br i1 %cmp.i, label %cond.true.i, label %for.end.ivtv_api.exit_crit_edge

for.end.ivtv_api.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_api.exit

cond.true.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = call fastcc i32 @ivtv_api_call(ptr noundef %itv, i32 noundef %cmd, i32 noundef %args, ptr noundef nonnull %data) #8
  br label %ivtv_api.exit

ivtv_api.exit:                                    ; preds = %cond.true.i, %for.end.ivtv_api.exit_crit_edge
  %cond.i = phi i32 [ %call1.i, %cond.true.i ], [ %call.i, %for.end.ivtv_api.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ap) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #8
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_api_get_data(ptr nocapture noundef readonly %mbdata, i32 noundef %mb, i32 noundef %argc, ptr nocapture noundef writeonly %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %argc)
  %cmp7 = icmp sgt i32 %argc, 0
  br i1 %cmp7, label %for.body.preheader, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %0 = ptrtoint ptr %mbdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbdata, align 4
  %data1 = getelementptr %struct.ivtv_mailbox, ptr %1, i32 %mb, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %p.09 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %data1, %for.body.preheader ]
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %p.09) #8, !srcloc !221
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !235
  %arrayidx3 = getelementptr i32, ptr %data, i32 %i.08
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx3, align 4
  %inc = add nuw nsw i32 %i.08, 1
  %incdec.ptr = getelementptr i32, ptr %p.09, i32 1
  %exitcond.not = icmp eq i32 %inc, %argc
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define dso_local void @ivtv_mailbox_cache_invalidate(ptr nocapture noundef writeonly %itv) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ivtv, ptr %itv, i32 0, i32 68, i32 %i.03
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @write_mailbox(ptr noundef %mbox, i32 noundef %cmd, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !236
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %cmd)
  %cmd2 = getelementptr inbounds %struct.ivtv_mailbox, ptr %mbox, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cmd2, i32 %0) #8, !srcloc !224
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmd2) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !237
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !238
  tail call void @arm_heavy_mb() #8
  %timeout = getelementptr inbounds %struct.ivtv_mailbox, ptr %mbox, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %timeout, i32 2) #8, !srcloc !224
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %timeout) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !239
  br label %do.body20

do.body20:                                        ; preds = %do.body20.do.body20_crit_edge, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %do.body20.do.body20_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !240
  tail call void @arm_heavy_mb() #8
  %arrayidx = getelementptr i32, ptr %data, i32 %i.01
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %arrayidx24 = getelementptr %struct.ivtv_mailbox, ptr %mbox, i32 0, i32 4, i32 %i.01
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx24, i32 %5) #8, !srcloc !224
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx24) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !241
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %do.body35, label %do.body20.do.body20_crit_edge

do.body20.do.body20_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body20

do.body35:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !242
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mbox, i32 50331648) #8, !srcloc !224
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mbox) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !243
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_all_mailboxes(ptr noundef %itv, ptr noundef %mbdata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %max_mbox = getelementptr inbounds %struct.ivtv_mailbox_data, ptr %mbdata, i32 0, i32 2
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %busy = getelementptr inbounds %struct.ivtv_mailbox_data, ptr %mbdata, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %do.body16.do.body_crit_edge, %entry
  %i.045 = phi i32 [ 0, %entry ], [ %inc, %do.body16.do.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %0 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.body16_crit_edge, label %do.end

do.body.do.body16_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %mbdata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mbdata, align 4
  %cmd = getelementptr %struct.ivtv_mailbox, ptr %2, i32 %i.045, i32 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cmd) #8, !srcloc !221
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !244
  %5 = ptrtoint ptr %mbdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mbdata, align 4
  %arrayidx8 = getelementptr %struct.ivtv_mailbox, ptr %6, i32 %i.045
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx8) #8, !srcloc !221
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !245
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %name, i32 noundef %i.045, i32 noundef %4, i32 noundef %8) #11
  br label %do.body16

do.body16:                                        ; preds = %do.end, %do.body.do.body16_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !246
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %mbdata to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mbdata, align 4
  %arrayidx20 = getelementptr %struct.ivtv_mailbox, ptr %10, i32 %i.045
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx20, i32 0) #8, !srcloc !224
  %11 = ptrtoint ptr %mbdata to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mbdata, align 4
  %arrayidx25 = getelementptr %struct.ivtv_mailbox, ptr %12, i32 %i.045
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %arrayidx25) #8, !srcloc !221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !247
  tail call void @_clear_bit(i32 noundef %i.045, ptr noundef %busy) #8
  %inc = add nuw nsw i32 %i.045, 1
  %14 = ptrtoint ptr %max_mbox to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %max_mbox, align 4
  %conv = zext i8 %15 to i32
  %cmp.not.not = icmp ult i32 %i.045, %conv
  br i1 %cmp.not.not, label %do.body16.do.body_crit_edge, label %for.end

do.body16.do.body_crit_edge:                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.end:                                          ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ivtv_msleep_timeout(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !210, !211}
!llvm.module.flags = !{!212, !213, !214, !215, !216, !217, !218, !219}
!llvm.ident = !{!220}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 210, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @ivtv_api_call._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @ivtv_api_call._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 215, i32 3}
!8 = !{ptr @ivtv_api_call._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @ivtv_api_call._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 220, i32 6}
!12 = !{ptr @ivtv_api_call._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @ivtv_api_call._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @ivtv_api_call._entry.9, !15, !"_entry", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 223, i32 6}
!16 = !{ptr @ivtv_api_call._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 252, i32 4}
!19 = !{ptr @ivtv_api_call._entry.11, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @ivtv_api_call._entry_ptr.13, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 255, i32 3}
!23 = !{ptr @ivtv_api_call._entry.14, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ivtv_api_call._entry_ptr.16, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 265, i32 3}
!27 = !{ptr @ivtv_api_call._entry.17, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ivtv_api_call._entry_ptr.19, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.21, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 292, i32 4}
!31 = !{ptr @ivtv_api_call._entry.20, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ivtv_api_call._entry_ptr.22, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.24, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 304, i32 3}
!35 = !{ptr @ivtv_api_call._entry.23, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ivtv_api_call._entry_ptr.25, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.26, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 85, i32 2}
!39 = !{ptr @.str.27, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 86, i32 2}
!41 = !{ptr @.str.28, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 87, i32 2}
!43 = !{ptr @.str.29, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 88, i32 2}
!45 = !{ptr @.str.30, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 89, i32 2}
!47 = !{ptr @.str.31, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 90, i32 2}
!49 = !{ptr @.str.32, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 91, i32 2}
!51 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 92, i32 2}
!53 = !{ptr @.str.34, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 93, i32 2}
!55 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 94, i32 2}
!57 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 95, i32 2}
!59 = !{ptr @.str.37, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 96, i32 2}
!61 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 97, i32 2}
!63 = !{ptr @.str.39, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 98, i32 2}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 99, i32 2}
!67 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 100, i32 2}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 101, i32 2}
!71 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 102, i32 2}
!73 = !{ptr @.str.44, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 103, i32 2}
!75 = !{ptr @.str.45, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 104, i32 2}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 105, i32 2}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 108, i32 2}
!81 = !{ptr @.str.48, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 109, i32 2}
!83 = !{ptr @.str.49, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 110, i32 2}
!85 = !{ptr @.str.50, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 111, i32 2}
!87 = !{ptr @.str.51, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 112, i32 2}
!89 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 113, i32 2}
!91 = !{ptr @.str.53, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 114, i32 2}
!93 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 115, i32 2}
!95 = !{ptr @.str.55, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 116, i32 2}
!97 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 117, i32 2}
!99 = !{ptr @.str.57, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 118, i32 2}
!101 = !{ptr @.str.58, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 119, i32 2}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 120, i32 2}
!105 = !{ptr @.str.60, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 121, i32 2}
!107 = !{ptr @.str.61, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 122, i32 2}
!109 = !{ptr @.str.62, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 123, i32 2}
!111 = !{ptr @.str.63, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 124, i32 2}
!113 = !{ptr @.str.64, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 125, i32 2}
!115 = !{ptr @.str.65, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 126, i32 2}
!117 = !{ptr @.str.66, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 127, i32 2}
!119 = !{ptr @.str.67, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 128, i32 2}
!121 = !{ptr @.str.68, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 40, i32 2}
!123 = !{ptr @.str.69, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 41, i32 2}
!125 = !{ptr @.str.70, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 42, i32 2}
!127 = !{ptr @.str.71, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 43, i32 2}
!129 = !{ptr @.str.72, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 44, i32 2}
!131 = !{ptr @.str.73, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 45, i32 2}
!133 = !{ptr @.str.74, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 46, i32 2}
!135 = !{ptr @.str.75, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 47, i32 2}
!137 = !{ptr @.str.76, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 48, i32 2}
!139 = !{ptr @.str.77, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 49, i32 2}
!141 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 50, i32 2}
!143 = !{ptr @.str.79, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 51, i32 2}
!145 = !{ptr @.str.80, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 52, i32 2}
!147 = !{ptr @.str.81, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 53, i32 2}
!149 = !{ptr @.str.82, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 54, i32 2}
!151 = !{ptr @.str.83, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 82, i32 2}
!153 = !{ptr @.str.84, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 55, i32 2}
!155 = !{ptr @.str.85, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 56, i32 2}
!157 = !{ptr @.str.86, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 57, i32 2}
!159 = !{ptr @.str.87, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 58, i32 2}
!161 = !{ptr @.str.88, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 59, i32 2}
!163 = !{ptr @.str.89, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 60, i32 2}
!165 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 61, i32 2}
!167 = !{ptr @.str.91, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 62, i32 2}
!169 = !{ptr @.str.92, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 63, i32 2}
!171 = !{ptr @.str.93, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 64, i32 2}
!173 = !{ptr @.str.94, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 65, i32 2}
!175 = !{ptr @.str.95, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 66, i32 2}
!177 = !{ptr @.str.96, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 67, i32 2}
!179 = !{ptr @.str.97, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 68, i32 2}
!181 = !{ptr @.str.98, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 69, i32 2}
!183 = !{ptr @.str.99, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 70, i32 2}
!185 = !{ptr @.str.100, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 71, i32 2}
!187 = !{ptr @.str.101, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 72, i32 2}
!189 = !{ptr @.str.102, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 73, i32 2}
!191 = !{ptr @.str.103, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 74, i32 2}
!193 = !{ptr @.str.104, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 75, i32 2}
!195 = !{ptr @.str.105, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 76, i32 2}
!197 = !{ptr @.str.106, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 77, i32 2}
!199 = !{ptr @.str.107, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 78, i32 2}
!201 = !{ptr @.str.108, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 79, i32 2}
!203 = !{ptr @.str.109, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 80, i32 2}
!205 = !{ptr @api_info, !206, !"api_info", i1 false, i1 false}
!206 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 38, i32 35}
!207 = !{ptr @.str.111, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/pci/ivtv/ivtv-mailbox.c", i32 193, i32 3}
!209 = !{ptr @.str.112, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @clear_all_mailboxes._entry, !208, !"_entry", i1 false, i1 false}
!211 = !{ptr @clear_all_mailboxes._entry_ptr, !208, !"_entry_ptr", i1 false, i1 false}
!212 = !{i32 1, !"wchar_size", i32 2}
!213 = !{i32 1, !"min_enum_size", i32 4}
!214 = !{i32 8, !"branch-target-enforcement", i32 0}
!215 = !{i32 8, !"sign-return-address", i32 0}
!216 = !{i32 8, !"sign-return-address-all", i32 0}
!217 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!218 = !{i32 7, !"uwtable", i32 1}
!219 = !{i32 7, !"frame-pointer", i32 2}
!220 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!221 = !{i64 5759046}
!222 = !{i64 2156787895}
!223 = !{i64 2156788380}
!224 = !{i64 5758628}
!225 = !{i64 2156789092}
!226 = !{i64 2156809818}
!227 = !{i64 2156814668}
!228 = !{i64 2156815145}
!229 = !{i64 2156818030}
!230 = !{i64 2156818660}
!231 = !{i64 2156823314}
!232 = !{i64 2156823596}
!233 = !{i64 2156824226}
!234 = !{!"auto-init"}
!235 = !{i64 2156824930}
!236 = !{i64 2156789832}
!237 = !{i64 2156790458}
!238 = !{i64 2156790775}
!239 = !{i64 2156791442}
!240 = !{i64 2156791745}
!241 = !{i64 2156792403}
!242 = !{i64 2156792751}
!243 = !{i64 2156793447}
!244 = !{i64 2156796606}
!245 = !{i64 2156797112}
!246 = !{i64 2156797424}
!247 = !{i64 2156798104}
