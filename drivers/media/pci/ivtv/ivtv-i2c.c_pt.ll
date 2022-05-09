; ModuleID = '/llk/IR_all_yes/drivers/media/pci/ivtv/ivtv-i2c.c_pt.bc'
source_filename = "../drivers/media/pci/ivtv/ivtv-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.ivtv = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i64, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.ivtv_options, %struct.v4l2_device, %struct.cx2341x_handler, %struct.anon.120, %struct.anon.121, %struct.v4l2_ctrl_handler, %struct.v4l2_subdev, i16, i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, i64, i8, i8, %struct.spinlock, %struct.mutex, [9 x i32], [9 x %struct.ivtv_stream], %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.work_struct, i32, i32, %struct.kthread_worker, ptr, %struct.kthread_work, %struct.spinlock, i32, i32, i32, i32, i32, %struct.ivtv_user_dma, %struct.timer_list, i32, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.ivtv_mailbox_data, %struct.ivtv_mailbox_data, [256 x %struct.ivtv_api_cache], %struct.i2c_adapter, %struct.i2c_algo_bit_data, %struct.i2c_client, i32, %struct.mutex, %struct.IR_i2c_init_data, i32, i32, i32, i32, [400 x %struct.v4l2_enc_idx_entry], i32, i32, i32, i8, i64, i64, [3 x i32], i32, i32, %struct.vbi_info, %struct.yuv_playback_info, i32, i32, i32, i32, i8, i32, %struct.v4l2_rect, %struct.v4l2_rect, ptr, ptr }
%struct.ivtv_options = type { [9 x i32], i32, i32, i32, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
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
%struct.ivtv_queue = type { %struct.list_head, i32, i32, i32 }
%struct.kthread_worker = type { i32, %struct.raw_spinlock, %struct.list_head, %struct.list_head, ptr, ptr }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.ivtv_user_dma = type { %struct.mutex, i32, [704 x ptr], [704 x ptr], [704 x %struct.ivtv_sg_element], i32, i32, [704 x %struct.scatterlist] }
%struct.ivtv_sg_element = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ivtv_mailbox_data = type { ptr, i32, i8 }
%struct.ivtv_api_cache = type { i32, [16 x i32] }
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
%struct.cx25840_platform_data = type { i32 }
%struct.ivtv_card_tuner_i2c = type { [2 x i16], [2 x i16], [4 x i16] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.IR_i2c = type { ptr, ptr, ptr, i8, i32, %struct.delayed_work, [32 x i8], ptr, ptr, %struct.mutex, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@ivtv_i2c_new_ir_legacy.addr_list = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 26, i16 24, i16 -2], [26 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ir_video\00", [23 x i8] zeroinitializer }, align 32
@hw_devicenames = internal constant { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str, ptr @.str, ptr @.str, ptr @.str.27, ptr @.str], [44 x i8] zeroinitializer }, align 32
@hw_addrs = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"D!D@\00\1B\11\00!\12\\!\1A[H\00@\1A\18qk", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cx25840\00\00\00\00\00\00\00\00\00\00\00\00\00", [44 x i8] zeroinitializer }, align 32
@ivtv_debug = external dso_local local_unnamed_addr global i32, align 4
@init_ivtv_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s:  i2c: i2c init\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_ivtv_i2c\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/pci/ivtv/ivtv-i2c.c\00", [62 x i8] zeroinitializer }, align 32
@init_ivtv_i2c._entry_ptr = internal global ptr @init_ivtv_i2c._entry, section ".printk_index", align 4
@ivtv_i2c_adap_hw_template = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr @ivtv_algo, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"ivtv i2c driver\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@ivtv_i2c_adap_template = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr null, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"ivtv i2c driver\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@ivtv_i2c_algo_template = internal constant { %struct.i2c_algo_bit_data, [56 x i8] } { %struct.i2c_algo_bit_data { ptr null, ptr @ivtv_setsda_old, ptr @ivtv_setscl_old, ptr @ivtv_getsda_old, ptr @ivtv_getscl_old, ptr null, ptr null, i32 10, i32 200, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" #%d\00", [27 x i8] zeroinitializer }, align 32
@ivtv_i2c_client_template = internal constant { %struct.i2c_client, [232 x i8] } { %struct.i2c_client { i16 0, i16 0, [20 x i8] c"ivtv internal\00\00\00\00\00\00\00", ptr null, %struct.device zeroinitializer, i32 0, i32 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [232 x i8] zeroinitializer }, align 32
@init_ivtv_i2c._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s:  i2c: setting scl and sda to 1\0A\00", [58 x i8] zeroinitializer }, align 32
@init_ivtv_i2c._entry_ptr.8 = internal global ptr @init_ivtv_i2c._entry.6, section ".printk_index", align 4
@exit_ivtv_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s:  i2c: i2c exit\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"exit_ivtv_i2c\00", [18 x i8] zeroinitializer }, align 32
@exit_ivtv_i2c._entry_ptr = internal global ptr @exit_ivtv_i2c._entry, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx25840\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7115\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"saa7127_auto\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msp3400\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tuner\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8775\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cs53l32a\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tveeprom\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7114\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"upd64031a\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"upd64083\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa717x\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8739\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vp27smpx\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m52790\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ir_z8f0811_haup\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rc-avermedia-cardbus\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"AVerMedia AVerTV card\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-empty\00", [23 x i8] zeroinitializer }, align 32
@ivtv_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @ivtv_xfer, ptr null, ptr null, ptr null, ptr @ivtv_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ivtv_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s:  i2c: i2c read from %x failed\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ivtv_read\00", [22 x i8] zeroinitializer }, align 32
@ivtv_read._entry_ptr = internal global ptr @ivtv_read._entry, section ".printk_index", align 4
@ivtv_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s:  i2c: SDA was low at start\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ivtv_start\00", [21 x i8] zeroinitializer }, align 32
@ivtv_start._entry_ptr = internal global ptr @ivtv_start._entry, section ".printk_index", align 4
@ivtv_start._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s:  i2c: SDA stuck low\0A\00", [37 x i8] zeroinitializer }, align 32
@ivtv_start._entry_ptr.38 = internal global ptr @ivtv_start._entry.36, section ".printk_index", align 4
@ivtv_start._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.4, i32 492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:  i2c: SCL stuck low at start\0A\00", [60 x i8] zeroinitializer }, align 32
@ivtv_start._entry_ptr.41 = internal global ptr @ivtv_start._entry.39, section ".printk_index", align 4
@ivtv_sendbyte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s:  i2c: write %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ivtv_sendbyte\00", [18 x i8] zeroinitializer }, align 32
@ivtv_sendbyte._entry_ptr = internal global ptr @ivtv_sendbyte._entry, section ".printk_index", align 4
@ivtv_sendbyte._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s:  i2c: Error setting SCL low\0A\00", [61 x i8] zeroinitializer }, align 32
@ivtv_sendbyte._entry_ptr.46 = internal global ptr @ivtv_sendbyte._entry.44, section ".printk_index", align 4
@ivtv_sendbyte._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.4, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s:  i2c: Error setting SDA\0A\00", [33 x i8] zeroinitializer }, align 32
@ivtv_sendbyte._entry_ptr.49 = internal global ptr @ivtv_sendbyte._entry.47, section ".printk_index", align 4
@ivtv_sendbyte._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.4, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s:  i2c: Slave not ready for bit\0A\00", [59 x i8] zeroinitializer }, align 32
@ivtv_sendbyte._entry_ptr.52 = internal global ptr @ivtv_sendbyte._entry.50, section ".printk_index", align 4
@ivtv_sendbyte._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@ivtv_sendbyte._entry_ptr.54 = internal global ptr @ivtv_sendbyte._entry.53, section ".printk_index", align 4
@ivtv_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s:  i2c: SCL was high starting an ack\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ivtv_ack\00", [23 x i8] zeroinitializer }, align 32
@ivtv_ack._entry_ptr = internal global ptr @ivtv_ack._entry, section ".printk_index", align 4
@ivtv_ack._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.4, i32 391, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016%s:  i2c: Could not set SCL low starting an ack\0A\00", [45 x i8] zeroinitializer }, align 32
@ivtv_ack._entry_ptr.59 = internal global ptr @ivtv_ack._entry.57, section ".printk_index", align 4
@ivtv_ack._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.56, ptr @.str.4, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s:  i2c: Slave did not ack\0A\00", [33 x i8] zeroinitializer }, align 32
@ivtv_ack._entry_ptr.62 = internal global ptr @ivtv_ack._entry.60, section ".printk_index", align 4
@ivtv_ack._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.56, ptr @.str.4, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s:  i2c: Failed to set SCL low after ACK\0A\00", [51 x i8] zeroinitializer }, align 32
@ivtv_ack._entry_ptr.65 = internal global ptr @ivtv_ack._entry.63, section ".printk_index", align 4
@ivtv_readbyte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.4, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:  i2c: Error setting SCL high\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ivtv_readbyte\00", [18 x i8] zeroinitializer }, align 32
@ivtv_readbyte._entry_ptr = internal global ptr @ivtv_readbyte._entry, section ".printk_index", align 4
@ivtv_readbyte._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.4, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s:  i2c: read %x\0A\00", [43 x i8] zeroinitializer }, align 32
@ivtv_readbyte._entry_ptr.70 = internal global ptr @ivtv_readbyte._entry.68, section ".printk_index", align 4
@ivtv_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.4, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s:  i2c: SCL not low when stopping\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ivtv_stop\00", [22 x i8] zeroinitializer }, align 32
@ivtv_stop._entry_ptr = internal global ptr @ivtv_stop._entry, section ".printk_index", align 4
@ivtv_stop._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.4, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s:  i2c: SCL could not be set low\0A\00", [58 x i8] zeroinitializer }, align 32
@ivtv_stop._entry_ptr.75 = internal global ptr @ivtv_stop._entry.73, section ".printk_index", align 4
@ivtv_stop._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.4, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s:  i2c: SCL could not be set high\0A\00", [57 x i8] zeroinitializer }, align 32
@ivtv_stop._entry_ptr.78 = internal global ptr @ivtv_stop._entry.76, section ".printk_index", align 4
@ivtv_stop._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.72, ptr @.str.4, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s:  i2c: resetting I2C\0A\00", [37 x i8] zeroinitializer }, align 32
@ivtv_stop._entry_ptr.81 = internal global ptr @ivtv_stop._entry.79, section ".printk_index", align 4
@ivtv_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.4, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s:  i2c: i2c write to %x failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ivtv_write\00", [21 x i8] zeroinitializer }, align 32
@ivtv_write._entry_ptr = internal global ptr @ivtv_write._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 9, i64 10]
@___asan_gen_.85 = private unnamed_addr constant [10 x i8] c"addr_list\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 230, i32 30 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 237, i32 21 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"hw_devicenames\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 113, i32 27 }
@___asan_gen_.94 = private unnamed_addr constant [9 x i8] c"hw_addrs\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 88, i32 17 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 285, i32 12 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 695, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [26 x i8] c"ivtv_i2c_adap_hw_template\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 618, i32 33 }
@___asan_gen_.115 = private unnamed_addr constant [23 x i8] c"ivtv_i2c_adap_template\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 668, i32 33 }
@___asan_gen_.118 = private unnamed_addr constant [23 x i8] c"ivtv_i2c_algo_template\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 677, i32 39 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 714, i32 59 }
@___asan_gen_.124 = private unnamed_addr constant [25 x i8] c"ivtv_i2c_client_template\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 686, i32 32 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 722, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 736, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 114, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 115, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 116, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 117, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 118, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 119, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 120, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 121, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 122, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 123, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 124, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 125, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 126, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 127, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 128, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 129, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 133, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 177, i32 25 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 181, i32 21 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 185, i32 25 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 202, i32 25 }
@___asan_gen_.205 = private unnamed_addr constant [10 x i8] c"ivtv_algo\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 612, i32 35 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 577, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 482, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 485, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 492, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 415, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 419, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 425, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 430, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 436, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 388, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 391, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 399, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 404, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 457, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 470, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 507, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 510, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 517, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 523, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.344 = private constant [37 x i8] c"../drivers/media/pci/ivtv/ivtv-i2c.c\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 557, i32 3 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @exit_ivtv_i2c._entry, ptr @exit_ivtv_i2c._entry_ptr, ptr @init_ivtv_i2c._entry, ptr @init_ivtv_i2c._entry.6, ptr @init_ivtv_i2c._entry_ptr, ptr @init_ivtv_i2c._entry_ptr.8, ptr @ivtv_ack._entry, ptr @ivtv_ack._entry.57, ptr @ivtv_ack._entry.60, ptr @ivtv_ack._entry.63, ptr @ivtv_ack._entry_ptr, ptr @ivtv_ack._entry_ptr.59, ptr @ivtv_ack._entry_ptr.62, ptr @ivtv_ack._entry_ptr.65, ptr @ivtv_read._entry, ptr @ivtv_read._entry_ptr, ptr @ivtv_readbyte._entry, ptr @ivtv_readbyte._entry.68, ptr @ivtv_readbyte._entry_ptr, ptr @ivtv_readbyte._entry_ptr.70, ptr @ivtv_sendbyte._entry, ptr @ivtv_sendbyte._entry.44, ptr @ivtv_sendbyte._entry.47, ptr @ivtv_sendbyte._entry.50, ptr @ivtv_sendbyte._entry.53, ptr @ivtv_sendbyte._entry_ptr, ptr @ivtv_sendbyte._entry_ptr.46, ptr @ivtv_sendbyte._entry_ptr.49, ptr @ivtv_sendbyte._entry_ptr.52, ptr @ivtv_sendbyte._entry_ptr.54, ptr @ivtv_start._entry, ptr @ivtv_start._entry.36, ptr @ivtv_start._entry.39, ptr @ivtv_start._entry_ptr, ptr @ivtv_start._entry_ptr.38, ptr @ivtv_start._entry_ptr.41, ptr @ivtv_stop._entry, ptr @ivtv_stop._entry.73, ptr @ivtv_stop._entry.76, ptr @ivtv_stop._entry.79, ptr @ivtv_stop._entry_ptr, ptr @ivtv_stop._entry_ptr.75, ptr @ivtv_stop._entry_ptr.78, ptr @ivtv_stop._entry_ptr.81, ptr @ivtv_write._entry, ptr @ivtv_write._entry_ptr, ptr @ivtv_i2c_new_ir_legacy.addr_list, ptr @.str, ptr @hw_devicenames, ptr @hw_addrs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ivtv_i2c_adap_hw_template, ptr @ivtv_i2c_adap_template, ptr @ivtv_i2c_algo_template, ptr @.str.5, ptr @ivtv_i2c_client_template, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @ivtv_algo, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_i2c_new_ir_legacy.addr_list to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_devicenames to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_addrs to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ivtv_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_i2c_adap_hw_template to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_i2c_adap_template to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_i2c_algo_template to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_i2c_client_template to i32), i32 984, i32 1216, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_ivtv_i2c._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exit_ivtv_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_start._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_start._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_sendbyte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_sendbyte._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_sendbyte._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_sendbyte._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_sendbyte._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_ack._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_ack._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_ack._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_readbyte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_readbyte._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stop._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stop._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_stop._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivtv_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ivtv_i2c_new_ir_legacy(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info) #8
  %0 = call ptr @memset(ptr %info, i32 0, i32 56)
  %call = call i32 @strscpy(ptr noundef nonnull %info, ptr noundef nonnull @.str, i32 noundef 20) #8
  %i2c_adap = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 69
  %call1 = call ptr @i2c_new_scanned_device(ptr noundef %i2c_adap, ptr noundef nonnull %info, ptr noundef nonnull @ivtv_i2c_new_ir_legacy.addr_list, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_scanned_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ivtv_i2c_register(ptr noundef %itv, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.i2c_board_info, align 4
  %addr_list.i = alloca [2 x i16], align 2
  %.compoundliteral = alloca [2 x i16], align 2
  %pdata = alloca %struct.cx25840_platform_data, align 4
  %cx25840_info = alloca %struct.i2c_board_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_adap = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 69
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %idx)
  %cmp = icmp ugt i32 %idx, 20
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [21 x ptr], ptr @hw_devicenames, i32 0, i32 %idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %shl = shl nuw nsw i32 1, %idx
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx)
  %cmp1 = icmp eq i32 %idx, 4
  br i1 %cmp1, label %if.then2, label %if.end25

if.then2:                                         ; preds = %if.end
  %v4l2_dev = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19
  %card_i2c = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 3
  %2 = ptrtoint ptr %card_i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card_i2c, align 4
  %call = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %i2c_adap, ptr noundef %1, i8 noundef zeroext 0, ptr noundef %3) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then2.if.end5_crit_edge, label %if.then3

if.then2.if.end5_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %grp_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16, ptr %grp_id, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.then2.if.end5_crit_edge
  %5 = ptrtoint ptr %card_i2c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card_i2c, align 4
  %demod = getelementptr inbounds %struct.ivtv_card_tuner_i2c, ptr %6, i32 0, i32 1
  %call9 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %i2c_adap, ptr noundef %1, i8 noundef zeroext 0, ptr noundef %demod) #8
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end5.if.end14_crit_edge, label %if.then11

if.end5.if.end14_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %grp_id13 = getelementptr inbounds %struct.v4l2_subdev, ptr %call9, i32 0, i32 10
  %7 = ptrtoint ptr %grp_id13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %grp_id13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end5.if.end14_crit_edge
  %8 = ptrtoint ptr %card_i2c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card_i2c, align 4
  %tv = getelementptr inbounds %struct.ivtv_card_tuner_i2c, ptr %9, i32 0, i32 2
  %call18 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %i2c_adap, ptr noundef %1, i8 noundef zeroext 0, ptr noundef %tv) #8
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end14.if.end23_crit_edge, label %if.then20

if.end14.if.end23_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %grp_id22 = getelementptr inbounds %struct.v4l2_subdev, ptr %call18, i32 0, i32 10
  %10 = ptrtoint ptr %grp_id22 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 16, ptr %grp_id22, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end14.if.end23_crit_edge
  %cond = sext i1 %tobool19.not to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %and = and i32 %shl, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  %arrayidx31 = getelementptr [21 x i8], ptr @hw_addrs, i32 0, i32 %idx
  %11 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx31, align 1
  br i1 %tobool26.not, label %if.end30, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info.i) #8
  %ir_i2c_init_data.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_list.i) #8
  %13 = getelementptr inbounds [2 x i16], ptr %addr_list.i, i32 0, i32 1
  %conv.i = zext i8 %12 to i16
  %14 = ptrtoint ptr %addr_list.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %addr_list.i, align 2
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -2, ptr %13, align 2
  %hw_flags.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 9
  %16 = ptrtoint ptr %hw_flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hw_flags.i, align 8
  %and.i = and i32 %17, 2031616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then27.ivtv_i2c_new_ir.exit_crit_edge

if.then27.ivtv_i2c_new_ir.exit_crit_edge:         ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_i2c_new_ir.exit

if.end.i:                                         ; preds = %if.then27
  %18 = zext i32 %shl to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shl, label %if.end.i.sw.epilog.i_crit_edge [
    i32 65536, label %sw.bb.i
    i32 131072, label %if.end.i.sw.bb2.i_crit_edge
    i32 262144, label %if.end.i.sw.bb2.i_crit_edge114
    i32 524288, label %sw.bb7.i
    i32 1048576, label %sw.bb13.i
  ]

if.end.i.sw.bb2.i_crit_edge114:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

if.end.i.sw.bb2.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %ir_i2c_init_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.28, ptr %ir_i2c_init_data.i, align 8
  %internal_get_key_func.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 74, i32 5
  %20 = ptrtoint ptr %internal_get_key_func.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 6, ptr %internal_get_key_func.i, align 8
  %type1.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 74, i32 2
  %21 = ptrtoint ptr %type1.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 2, ptr %type1.i, align 8
  %name.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 74, i32 1
  %22 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @.str.29, ptr %name.i, align 4
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i.sw.bb2.i_crit_edge, %if.end.i.sw.bb2.i_crit_edge114
  %23 = ptrtoint ptr %ir_i2c_init_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @.str.30, ptr %ir_i2c_init_data.i, align 8
  %internal_get_key_func4.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 74, i32 5
  %24 = ptrtoint ptr %internal_get_key_func4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %internal_get_key_func4.i, align 8
  %type5.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 74, i32 2
  %25 = ptrtoint ptr %type5.i to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 4, ptr %type5.i, align 8
  %card_name.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 2
  %26 = ptrtoint ptr %card_name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card_name.i, align 8
  %name6.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 74, i32 1
  %28 = ptrtoint ptr %name6.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %name6.i, align 4
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %ir_i2c_init_data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.30, ptr %ir_i2c_init_data.i, align 8
  %internal_get_key_func9.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 74, i32 5
  %30 = ptrtoint ptr %internal_get_key_func9.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 5, ptr %internal_get_key_func9.i, align 8
  %type10.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 74, i32 2
  %31 = ptrtoint ptr %type10.i to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 786436, ptr %type10.i, align 8
  %card_name11.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 2
  %32 = ptrtoint ptr %card_name11.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card_name11.i, align 8
  %name12.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 74, i32 1
  %34 = ptrtoint ptr %name12.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %name12.i, align 4
  br label %sw.epilog.i

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %get_key.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 74, i32 4
  %35 = ptrtoint ptr %get_key.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @get_key_adaptec, ptr %get_key.i, align 4
  %card_name14.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 2
  %36 = ptrtoint ptr %card_name14.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card_name14.i, align 8
  %name15.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 74, i32 1
  %38 = ptrtoint ptr %name15.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %name15.i, align 4
  %39 = ptrtoint ptr %ir_i2c_init_data.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.31, ptr %ir_i2c_init_data.i, align 8
  %type17.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 74, i32 2
  %40 = ptrtoint ptr %type17.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 1, ptr %type17.i, align 8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb13.i, %sw.bb7.i, %sw.bb2.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %41 = call ptr @memset(ptr %info.i, i32 0, i32 56)
  %platform_data.i = getelementptr inbounds %struct.i2c_board_info, ptr %info.i, i32 0, i32 4
  %42 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ir_i2c_init_data.i, ptr %platform_data.i, align 4
  %call.i = call i32 @strscpy(ptr noundef nonnull %info.i, ptr noundef %1, i32 noundef 20) #8
  %call20.i = call ptr @i2c_new_scanned_device(ptr noundef %i2c_adap, ptr noundef nonnull %info.i, ptr noundef nonnull %addr_list.i, ptr noundef null) #8
  %cmp.i.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  %cond.i = sext i1 %cmp.i.i to i32
  br label %ivtv_i2c_new_ir.exit

ivtv_i2c_new_ir.exit:                             ; preds = %sw.epilog.i, %if.then27.ivtv_i2c_new_ir.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %sw.epilog.i ], [ -1, %if.then27.ivtv_i2c_new_ir.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_list.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i) #8
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %43 = lshr i32 32912, %idx
  %44 = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool32.not.not = icmp eq i32 %44, 0
  br i1 %tobool32.not.not, label %if.end34, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %45 = zext i32 %idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %idx, label %if.else52 [
    i32 9, label %if.end34.if.then37_crit_edge
    i32 10, label %if.end34.if.then37_crit_edge115
    i32 0, label %if.then44
  ]

if.end34.if.then37_crit_edge115:                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.end34.if.then37_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then37

if.then37:                                        ; preds = %if.end34.if.then37_crit_edge, %if.end34.if.then37_crit_edge115
  %v4l2_dev38 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19
  %conv = zext i8 %12 to i16
  %46 = ptrtoint ptr %.compoundliteral to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv, ptr %.compoundliteral, align 2
  %arrayinit.element = getelementptr inbounds i16, ptr %.compoundliteral, i32 1
  %47 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -2, ptr %arrayinit.element, align 2
  %call41 = call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev38, ptr noundef %i2c_adap, ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %.compoundliteral) #8
  br label %if.end57

if.then44:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pdata) #8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %cx25840_info) #8
  %48 = call ptr @memcpy(ptr %cx25840_info, ptr @.str.1, i32 20)
  %flags = getelementptr inbounds %struct.i2c_board_info, ptr %cx25840_info, i32 0, i32 1
  %49 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags, align 4
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %cx25840_info, i32 0, i32 2
  %conv47 = zext i8 %12 to i16
  %50 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv47, ptr %addr, align 2
  %dev_name = getelementptr inbounds %struct.i2c_board_info, ptr %cx25840_info, i32 0, i32 3
  %51 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %dev_name, align 4
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %cx25840_info, i32 0, i32 4
  %52 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %pdata, ptr %platform_data, align 4
  %of_node = getelementptr inbounds %struct.i2c_board_info, ptr %cx25840_info, i32 0, i32 5
  %53 = call ptr @memset(ptr %of_node, i32 0, i32 24)
  %pvr150_workaround = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 5
  %54 = ptrtoint ptr %pvr150_workaround to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %pvr150_workaround, align 1
  %conv48 = zext i8 %55 to i32
  %56 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %conv48, ptr %pdata, align 4
  %v4l2_dev50 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19
  %call51 = call ptr @v4l2_i2c_new_subdev_board(ptr noundef %v4l2_dev50, ptr noundef %i2c_adap, ptr noundef nonnull %cx25840_info, ptr noundef null) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %cx25840_info) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdata) #8
  br label %if.end57

if.else52:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %v4l2_dev53 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19
  %call55 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev53, ptr noundef %i2c_adap, ptr noundef %1, i8 noundef zeroext %12, ptr noundef null) #8
  br label %if.end57

if.end57:                                         ; preds = %if.else52, %if.then44, %if.then37
  %sd.0 = phi ptr [ %call41, %if.then37 ], [ %call51, %if.then44 ], [ %call55, %if.else52 ]
  %tobool58.not = icmp eq ptr %sd.0, null
  br i1 %tobool58.not, label %if.end57.if.end62_crit_edge, label %if.then59

if.end57.if.end62_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %grp_id61 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd.0, i32 0, i32 10
  %57 = ptrtoint ptr %grp_id61 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %shl, ptr %grp_id61, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end57.if.end62_crit_edge
  %cond64 = sext i1 %tobool58.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.end30.cleanup_crit_edge, %ivtv_i2c_new_ir.exit, %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end23 ], [ %retval.0.i, %ivtv_i2c_new_ir.exit ], [ %cond64, %if.end62 ], [ -19, %entry.cleanup_crit_edge ], [ -1, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev_board(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ivtv_find_hw(ptr noundef %itv, i32 noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %subdevs = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 2
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %subdevs, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %grp_id = getelementptr i8, ptr %.pn, i32 68
  %1 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %grp_id, align 4
  %cmp4 = icmp eq i32 %2, %hw
  br i1 %cmp4, label %for.end.split.loop.exit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end.split.loop.exit:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %sd.0.le = getelementptr i8, ptr %.pn, i32 -80
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %for.cond.for.end_crit_edge
  %result.0 = phi ptr [ %sd.0.le, %for.end.split.loop.exit ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret ptr %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @init_ivtv_i2c(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %0 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %name) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %newi2c = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 18, i32 4
  %1 = ptrtoint ptr %newi2c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %newi2c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  %i2c_adap = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 69
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %3 = call ptr @memcpy(ptr %i2c_adap, ptr @ivtv_i2c_adap_hw_template, i32 1360)
  br label %if.end7

if.else:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %4 = call ptr @memcpy(ptr %i2c_adap, ptr @ivtv_i2c_adap_template, i32 1360)
  %i2c_algo = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 70
  %5 = call ptr @memcpy(ptr %i2c_algo, ptr @ivtv_i2c_algo_template, i32 40)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %i2c_clock_period = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 18, i32 5
  %6 = ptrtoint ptr %i2c_clock_period to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i2c_clock_period, align 4
  %div = sdiv i32 %7, 2
  %i2c_algo9 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 70
  %udelay = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 70, i32 7
  %8 = ptrtoint ptr %udelay to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div, ptr %udelay, align 4
  %9 = ptrtoint ptr %i2c_algo9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %itv, ptr %i2c_algo9, align 8
  %i2c_adap12 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 69
  %algo_data = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 69, i32 3
  %10 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %i2c_algo9, ptr %algo_data, align 4
  %name14 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 69, i32 12
  %call19 = tail call i32 @strlen(ptr noundef %name14) #12
  %add.ptr = getelementptr i8, ptr %name14, i32 %call19
  %instance = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 25
  %11 = ptrtoint ptr %instance to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %instance, align 4
  %conv = zext i16 %12 to i32
  %call20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.5, i32 noundef %conv)
  %v4l2_dev22 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19
  %driver_data.i.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 69, i32 9, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %v4l2_dev22, ptr %driver_data.i.i, align 4
  %i2c_client = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 71
  %14 = call ptr @memcpy(ptr %i2c_client, ptr @ivtv_i2c_client_template, i32 984)
  %adapter = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 71, i32 3
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %i2c_adap12, ptr %adapter, align 8
  %16 = ptrtoint ptr %itv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %itv, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %parent = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 69, i32 9, i32 1
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %parent, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %19 = load i32, ptr @ivtv_debug, align 4
  %and28 = and i32 %19, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end7.do.end41_crit_edge, label %do.end33

if.end7.do.end41_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end41

do.end33:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %name36 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %name36) #11
  br label %do.end41

do.end41:                                         ; preds = %do.end33, %if.end7.do.end41_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %reg_mem.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  %20 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %21, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -16777217) #8, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i80 = getelementptr i8, ptr %23, i32 28676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 0) #8, !srcloc !175
  %24 = ptrtoint ptr %newi2c to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %newi2c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp44 = icmp sgt i32 %25, 0
  br i1 %cmp44, label %if.then46, label %if.else49

if.then46:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #10
  %call48 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adap12) #8
  br label %if.end52

if.else49:                                        ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #10
  %call51 = tail call i32 @i2c_bit_add_bus(ptr noundef %i2c_adap12) #8
  br label %if.end52

if.end52:                                         ; preds = %if.else49, %if.then46
  %retval1.0 = phi i32 [ %call48, %if.then46 ], [ %call51, %if.else49 ]
  ret i32 %retval1.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_ivtv_i2c(ptr noundef %itv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %0 = load i32, ptr @ivtv_debug, align 4
  %and = and i32 %0, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name) #11
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %i2c_adap = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 69
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @get_key_adaptec(ptr nocapture noundef readonly %ir, ptr nocapture noundef writeonly %protocol, ptr nocapture noundef writeonly %scancode, ptr nocapture noundef writeonly %toggle) #0 align 64 {
entry:
  %keybuf = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %keybuf) #8
  %0 = getelementptr inbounds [4 x i8], ptr %keybuf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %keybuf, i32 0, i32 3
  %2 = getelementptr inbounds i8, ptr %keybuf, i32 1
  %3 = call ptr @memset(ptr %2, i32 255, i32 3)
  %4 = ptrtoint ptr %keybuf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %keybuf, align 1
  %c = getelementptr inbounds %struct.IR_i2c, ptr %ir, i32 0, i32 1
  %5 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %c, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %6, ptr noundef nonnull %keybuf, i32 noundef 1, i16 noundef zeroext 0) #8
  %7 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %c, align 4
  %call.i29 = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %keybuf, i32 noundef 4, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i29)
  %cmp.not = icmp eq i32 %call.i29, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = getelementptr inbounds [4 x i8], ptr %keybuf, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %11)
  %cmp5 = icmp eq i8 %11, -1
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = and i8 %11, 127
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  %15 = or i8 %14, -128
  %16 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %protocol, align 4
  %conv16 = zext i8 %15 to i32
  %conv18 = zext i8 %12 to i32
  %shl = shl nuw nsw i32 %conv18, 8
  %or19 = or i32 %shl, %conv16
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %0, align 1
  %conv21 = zext i8 %18 to i32
  %shl22 = shl nuw nsw i32 %conv21, 16
  %or23 = or i32 %shl22, %or19
  %19 = ptrtoint ptr %keybuf to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %keybuf, align 1
  %conv25 = zext i8 %20 to i32
  %shl26 = shl nuw i32 %conv25, 24
  %or27 = or i32 %or23, %shl26
  %21 = ptrtoint ptr %scancode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or27, ptr %scancode, align 4
  %22 = ptrtoint ptr %toggle to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %toggle, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %keybuf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -124
  %i2c_bus_lock = getelementptr i8, ptr %1, i32 64624
  tail call void @mutex_lock_nested(ptr noundef %i2c_bus_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp371 = icmp sgt i32 %num, 0
  br i1 %cmp371, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %reg_mem.i.i.i = getelementptr i8, ptr %1, i32 -60
  %name21.i.i = getelementptr i8, ptr %1, i32 60
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.072
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.072, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 4
  %conv5 = trunc i16 %6 to i8
  %buf = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.072, i32 3
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf, align 4
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.072, i32 2
  %9 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %len, align 4
  %conv8 = zext i16 %10 to i32
  %shl.i = shl i8 %conv5, 1
  %or.i = or i8 %shl.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp946.i = icmp ne i16 %10, 0
  %sub.i = add nsw i32 %conv8, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %if.then
  %retry.049.i = phi i32 [ 0, %if.then ], [ %inc18.i, %for.end.i.for.body.i_crit_edge ]
  %call.i = tail call fastcc i32 @ivtv_start(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %if.end.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end.i:                                         ; preds = %for.body.i
  %call4.i = tail call fastcc i32 @ivtv_sendbyte(ptr noundef %add.ptr.i, i8 noundef zeroext %or.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp645.i = icmp eq i32 %call4.i, 0
  %or.cond4447.i = and i1 %cmp946.i, %cmp645.i
  br i1 %or.cond4447.i, label %if.end.i.for.body12.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end.i.for.body12.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body12.i

for.body12.i:                                     ; preds = %ivtv_readbyte.exit.i.for.body12.i_crit_edge, %if.end.i.for.body12.i_crit_edge
  %i.048.i = phi i32 [ %inc.i, %ivtv_readbyte.exit.i.for.body12.i_crit_edge ], [ 0, %if.end.i.for.body12.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %8, i32 %i.048.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.048.i, i32 %sub.i)
  %cmp13.i = icmp eq i32 %i.048.i, %sub.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 28676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #8, !srcloc !175
  %14 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %15, i32 28680
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %17 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.1.i.i.i = getelementptr i8, ptr %18, i32 28680
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %20 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.2.i.i.i = getelementptr i8, ptr %21, i32 28680
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %23 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.3.i.i.i = getelementptr i8, ptr %24, i32 28680
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %26 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.4.i.i.i = getelementptr i8, ptr %27, i32 28680
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end7.i.i.for.body.i.i_crit_edge, %for.body12.i
  %i.096.i.i = phi i32 [ 0, %for.body12.i ], [ %inc.i.i, %if.end7.i.i.for.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %29 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i49.i.i = getelementptr i8, ptr %30, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i.i, i32 -1) #8, !srcloc !175
  %31 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i51.i.i = getelementptr i8, ptr %32, i32 28680
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %34 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.1.i52.i.i = getelementptr i8, ptr %35, i32 28680
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i52.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %37 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.2.i53.i.i = getelementptr i8, ptr %38, i32 28680
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i53.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %40 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.3.i54.i.i = getelementptr i8, ptr %41, i32 28680
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i54.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %43 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.4.i55.i.i = getelementptr i8, ptr %44, i32 28680
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i55.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i57.i.i = getelementptr i8, ptr %47, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57.i.i, i32 -16777217) #8, !srcloc !175
  %48 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %49, i32 28680
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %51 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.1.i.i.i.i = getelementptr i8, ptr %52, i32 28680
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %54 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.2.i.i.i.i = getelementptr i8, ptr %55, i32 28680
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %57 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.3.i.i.i.i = getelementptr i8, ptr %58, i32 28680
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %60 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.4.i.i.i.i = getelementptr i8, ptr %61, i32 28680
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  br label %for.body.i.i.i

for.cond.i.i.i:                                   ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.04.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 1000
  br i1 %exitcond.not.i.i.i, label %do.body.i.i, label %for.cond.i.i.i.for.body.i.i.i_crit_edge

for.cond.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i
  %i.04.i.i.i = phi i32 [ 0, %for.body.i.i ], [ %inc.i.i.i, %for.cond.i.i.i.for.body.i.i.i_crit_edge ]
  %63 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i58.i.i = getelementptr i8, ptr %64, i32 28680
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i58.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %66 = and i32 %65, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp1.i.not.i.i = icmp eq i32 %66, 0
  br i1 %cmp1.i.not.i.i, label %for.cond.i.i.i, label %if.end7.i.i

do.body.i.i:                                      ; preds = %for.cond.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %67 = load i32, ptr @ivtv_debug, align 4
  %and.i.i = and i32 %67, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %do.body.i.i.for.end.i_crit_edge, label %do.end.i.i

do.body.i.i.for.end.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name21.i.i) #11
  br label %for.end.i

if.end7.i.i:                                      ; preds = %for.body.i.i.i
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx.i, align 1
  %conv.i.i = zext i8 %69 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 1
  %70 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i60.i.i = getelementptr i8, ptr %71, i32 28684
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i60.i.i) #8, !srcloc !177
  %73 = lshr i32 %72, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %and.i.i.i = and i32 %73, 1
  %or.i.i = or i32 %and.i.i.i, %shl.i.i
  %conv9.i.i = trunc i32 %or.i.i to i8
  %74 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv9.i.i, ptr %arrayidx.i, align 1
  %inc.i.i = add nuw nsw i32 %i.096.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %if.end7.i.i.for.body.i.i_crit_edge

if.end7.i.i.for.body.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end7.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %75 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i62.i.i = getelementptr i8, ptr %76, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i.i, i32 -1) #8, !srcloc !175
  %77 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i64.i.i = getelementptr i8, ptr %78, i32 28680
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i64.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %80 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.1.i65.i.i = getelementptr i8, ptr %81, i32 28680
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i65.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %83 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.2.i66.i.i = getelementptr i8, ptr %84, i32 28680
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i66.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %86 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.3.i67.i.i = getelementptr i8, ptr %87, i32 28680
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i67.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %89 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.4.i68.i.i = getelementptr i8, ptr %90, i32 28680
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i68.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %92 = select i1 %cmp13.i, i32 0, i32 16777216
  %93 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i71.i.i = getelementptr i8, ptr %94, i32 28676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i.i, i32 %92) #8, !srcloc !175
  %95 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i73.i.i = getelementptr i8, ptr %96, i32 28680
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i73.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %98 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.1.i74.i.i = getelementptr i8, ptr %99, i32 28680
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i74.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %101 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.2.i75.i.i = getelementptr i8, ptr %102, i32 28680
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i75.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %104 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.3.i76.i.i = getelementptr i8, ptr %105, i32 28680
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i76.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %107 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.4.i77.i.i = getelementptr i8, ptr %108, i32 28680
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i77.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %110 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i79.i.i = getelementptr i8, ptr %111, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i.i, i32 -16777217) #8, !srcloc !175
  %112 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i81.i.i = getelementptr i8, ptr %113, i32 28680
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i81.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %115 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.1.i82.i.i = getelementptr i8, ptr %116, i32 28680
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i82.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %118 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.2.i83.i.i = getelementptr i8, ptr %119, i32 28680
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i83.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %121 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.3.i84.i.i = getelementptr i8, ptr %122, i32 28680
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i84.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %124 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.4.i85.i.i = getelementptr i8, ptr %125, i32 28680
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i85.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %127 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i87.i.i = getelementptr i8, ptr %128, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87.i.i, i32 -1) #8, !srcloc !175
  %129 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.i89.i.i = getelementptr i8, ptr %130, i32 28680
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i89.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %132 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.1.i90.i.i = getelementptr i8, ptr %133, i32 28680
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i90.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %135 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.2.i91.i.i = getelementptr i8, ptr %136, i32 28680
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i91.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %138 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.3.i92.i.i = getelementptr i8, ptr %139, i32 28680
  %140 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i92.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %141 = ptrtoint ptr %reg_mem.i.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %reg_mem.i.i.i, align 8
  %add.ptr.i.4.i93.i.i = getelementptr i8, ptr %142, i32 28680
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i93.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %144 = load i32, ptr @ivtv_debug, align 4
  %145 = and i32 %144, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %145)
  %.not.i.i = icmp eq i32 %145, 1536
  br i1 %.not.i.i, label %do.end18.i.i, label %for.end.i.i.ivtv_readbyte.exit.i_crit_edge

for.end.i.i.ivtv_readbyte.exit.i_crit_edge:       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ivtv_readbyte.exit.i

do.end18.i.i:                                     ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %146 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx.i, align 1
  %conv23.i.i = zext i8 %147 to i32
  %call24.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name21.i.i, i32 noundef %conv23.i.i) #11
  br label %ivtv_readbyte.exit.i

ivtv_readbyte.exit.i:                             ; preds = %do.end18.i.i, %for.end.i.i.ivtv_readbyte.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %conv8
  br i1 %exitcond.not, label %ivtv_readbyte.exit.i.for.end.i_crit_edge, label %ivtv_readbyte.exit.i.for.body12.i_crit_edge

ivtv_readbyte.exit.i.for.body12.i_crit_edge:      ; preds = %ivtv_readbyte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body12.i

ivtv_readbyte.exit.i.for.end.i_crit_edge:         ; preds = %ivtv_readbyte.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %ivtv_readbyte.exit.i.for.end.i_crit_edge, %do.end.i.i, %do.body.i.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %ret.2.lcssa.i = phi i32 [ %call4.i, %if.end.i.for.end.i_crit_edge ], [ %call.i, %for.body.i.for.end.i_crit_edge ], [ -121, %do.body.i.i.for.end.i_crit_edge ], [ -121, %do.end.i.i ], [ 0, %ivtv_readbyte.exit.i.for.end.i_crit_edge ]
  tail call fastcc void @ivtv_stop(ptr noundef %add.ptr.i) #8
  %inc18.i = add nuw nsw i32 %retry.049.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.lcssa.i)
  %cmp.not.i = icmp eq i32 %ret.2.lcssa.i, 0
  %cmp.not.not.i = xor i1 %cmp.not.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %retry.049.i)
  %cmp1.i = icmp ult i32 %retry.049.i, 7
  %or.cond.i = select i1 %cmp.not.not.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %for.end.i.for.body.i_crit_edge, label %for.end19.i

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end19.i:                                      ; preds = %for.end.i
  br i1 %cmp.not.i, label %for.end19.i.for.inc_crit_edge, label %do.body.i

for.end19.i.for.inc_crit_edge:                    ; preds = %for.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body.i:                                        ; preds = %for.end19.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %148 = load i32, ptr @ivtv_debug, align 4
  %and.i = and i32 %148, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool21.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool21.not.i, label %do.body.i.for.end_crit_edge, label %do.body.i.for.inc.thread.sink.split_crit_edge

do.body.i.for.inc.thread.sink.split_crit_edge:    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.thread.sink.split

do.body.i.for.end_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.else:                                          ; preds = %for.body
  %add = add nuw nsw i32 %i.072, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp10 = icmp slt i32 %add, %num
  br i1 %cmp10, label %land.rhs12, label %if.else.land.end19_crit_edge

if.else.land.end19_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end19

land.rhs12:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %flags15 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 1
  %149 = ptrtoint ptr %flags15 to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %flags15, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %150)
  %cmp17 = icmp eq i16 %150, 1
  br label %land.end19

land.end19:                                       ; preds = %land.rhs12, %if.else.land.end19_crit_edge
  %151 = phi i1 [ false, %if.else.land.end19_crit_edge ], [ %cmp17, %land.rhs12 ]
  %152 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %arrayidx, align 4
  %conv22 = trunc i16 %153 to i8
  %buf24 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.072, i32 3
  %154 = ptrtoint ptr %buf24 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %buf24, align 4
  %len26 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.072, i32 2
  %156 = ptrtoint ptr %len26 to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %len26, align 4
  %conv27 = zext i16 %157 to i32
  %shl.i55 = shl i8 %conv22, 1
  br label %for.body.i58

for.body.i58:                                     ; preds = %for.inc19.i.for.body.i58_crit_edge, %land.end19
  %retry.056.i = phi i32 [ 0, %land.end19 ], [ %inc20.i, %for.inc19.i.for.body.i58_crit_edge ]
  %call.i56 = tail call fastcc i32 @ivtv_start(ptr noundef %add.ptr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %cmp2.i57 = icmp eq i32 %call.i56, 0
  br i1 %cmp2.i57, label %if.then.i, label %for.body.i58.for.inc19.i_crit_edge

for.body.i58.for.inc19.i_crit_edge:               ; preds = %for.body.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19.i

if.then.i:                                        ; preds = %for.body.i58
  %call4.i59 = tail call fastcc i32 @ivtv_sendbyte(ptr noundef %add.ptr.i, i8 noundef zeroext %shl.i55) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i59)
  %cmp654.i = icmp eq i32 %call4.i59, 0
  br i1 %cmp654.i, label %if.then.i.land.rhs8.i_crit_edge, label %if.then.i.for.inc19.i_crit_edge

if.then.i.for.inc19.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19.i

if.then.i.land.rhs8.i_crit_edge:                  ; preds = %if.then.i
  br label %land.rhs8.i

land.rhs8.i:                                      ; preds = %for.body12.i62.land.rhs8.i_crit_edge, %if.then.i.land.rhs8.i_crit_edge
  %i.055.i = phi i32 [ %inc.i61, %for.body12.i62.land.rhs8.i_crit_edge ], [ 0, %if.then.i.land.rhs8.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.055.i, i32 %conv27)
  %exitcond.not.i = icmp eq i32 %i.055.i, %conv27
  br i1 %exitcond.not.i, label %if.end.i63, label %for.body12.i62

for.body12.i62:                                   ; preds = %land.rhs8.i
  %arrayidx.i60 = getelementptr i8, ptr %155, i32 %i.055.i
  %158 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx.i60, align 1
  %call13.i = tail call fastcc i32 @ivtv_sendbyte(ptr noundef %add.ptr.i, i8 noundef zeroext %159) #8
  %inc.i61 = add nuw nsw i32 %i.055.i, 1
  %cmp6.i = icmp eq i32 %call13.i, 0
  br i1 %cmp6.i, label %for.body12.i62.land.rhs8.i_crit_edge, label %for.body12.i62.for.inc19.i_crit_edge

for.body12.i62.for.inc19.i_crit_edge:             ; preds = %for.body12.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19.i

for.body12.i62.land.rhs8.i_crit_edge:             ; preds = %for.body12.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs8.i

if.end.i63:                                       ; preds = %land.rhs8.i
  br i1 %151, label %if.end.i63.for.inc_crit_edge, label %if.end.i63.for.inc19.i_crit_edge

if.end.i63.for.inc19.i_crit_edge:                 ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc19.i

if.end.i63.for.inc_crit_edge:                     ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc19.i:                                      ; preds = %if.end.i63.for.inc19.i_crit_edge, %for.body12.i62.for.inc19.i_crit_edge, %if.then.i.for.inc19.i_crit_edge, %for.body.i58.for.inc19.i_crit_edge
  %ret.251.i = phi i32 [ 0, %if.end.i63.for.inc19.i_crit_edge ], [ %call.i56, %for.body.i58.for.inc19.i_crit_edge ], [ %call4.i59, %if.then.i.for.inc19.i_crit_edge ], [ %call13.i, %for.body12.i62.for.inc19.i_crit_edge ]
  tail call fastcc void @ivtv_stop(ptr noundef %add.ptr.i) #8
  %inc20.i = add nuw nsw i32 %retry.056.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.251.i)
  %cmp.not.i64 = icmp eq i32 %ret.251.i, 0
  %cmp.not.not.i65 = xor i1 %cmp.not.i64, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %retry.056.i)
  %cmp1.i66 = icmp ult i32 %retry.056.i, 7
  %or.cond.i67 = select i1 %cmp.not.not.i65, i1 %cmp1.i66, i1 false
  br i1 %or.cond.i67, label %for.inc19.i.for.body.i58_crit_edge, label %for.end21.i

for.inc19.i.for.body.i58_crit_edge:               ; preds = %for.inc19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i58

for.end21.i:                                      ; preds = %for.inc19.i
  br i1 %cmp.not.i64, label %for.end21.i.for.inc_crit_edge, label %do.body.i69

for.end21.i.for.inc_crit_edge:                    ; preds = %for.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.body.i69:                                      ; preds = %for.end21.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %160 = load i32, ptr @ivtv_debug, align 4
  %and.i68 = and i32 %160, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool24.not.i = icmp eq i32 %and.i68, 0
  br i1 %tobool24.not.i, label %do.body.i69.for.end_crit_edge, label %do.body.i69.for.inc.thread.sink.split_crit_edge

do.body.i69.for.inc.thread.sink.split_crit_edge:  ; preds = %do.body.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.thread.sink.split

do.body.i69.for.end_crit_edge:                    ; preds = %do.body.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.thread.sink.split:                        ; preds = %do.body.i69.for.inc.thread.sink.split_crit_edge, %do.body.i.for.inc.thread.sink.split_crit_edge
  %.lcssa.sink = phi i16 [ %6, %do.body.i.for.inc.thread.sink.split_crit_edge ], [ %153, %do.body.i69.for.inc.thread.sink.split_crit_edge ]
  %.str.32.sink = phi ptr [ @.str.32, %do.body.i.for.inc.thread.sink.split_crit_edge ], [ @.str.82, %do.body.i69.for.inc.thread.sink.split_crit_edge ]
  %retval2.1.ph.ph = phi i32 [ %ret.2.lcssa.i, %do.body.i.for.inc.thread.sink.split_crit_edge ], [ %ret.251.i, %do.body.i69.for.inc.thread.sink.split_crit_edge ]
  %conv5.mask = and i16 %.lcssa.sink, 255
  %conv24.i = zext i16 %conv5.mask to i32
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.32.sink, ptr noundef %name21.i.i, i32 noundef %conv24.i) #11
  br label %for.end

for.inc:                                          ; preds = %for.end21.i.for.inc_crit_edge, %if.end.i63.for.inc_crit_edge, %for.end19.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.072, 1
  %cmp3 = icmp slt i32 %inc, %num
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.thread.sink.split, %do.body.i69.for.end_crit_edge, %do.body.i.for.end_crit_edge, %entry.for.end_crit_edge
  %cmp.lcssa = phi i32 [ %num, %entry.for.end_crit_edge ], [ %retval2.1.ph.ph, %for.inc.thread.sink.split ], [ %ret.2.lcssa.i, %do.body.i.for.end_crit_edge ], [ %ret.251.i, %do.body.i69.for.end_crit_edge ], [ %num, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_bus_lock) #8
  ret i32 %cmp.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ivtv_functionality(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ivtv_start(ptr noundef %itv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_mem.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  %0 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 28684
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not.not = icmp eq i32 %3, 0
  br i1 %cmp.not.not, label %do.body, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %4 = load i32, ptr @ivtv_debug, align 4
  %5 = and i32 %4, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %5)
  %.not = icmp eq i32 %5, 1536
  br i1 %.not, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name) #11
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i62 = getelementptr i8, ptr %7, i32 28676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 0) #8, !srcloc !175
  %8 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 28680
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %11 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i.i = getelementptr i8, ptr %12, i32 28680
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %14 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i.i = getelementptr i8, ptr %15, i32 28680
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %17 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i.i = getelementptr i8, ptr %18, i32 28680
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %20 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i.i = getelementptr i8, ptr %21, i32 28680
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.body11, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.end7
  %i.04.i = phi i32 [ 0, %do.end7 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 28684
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1.i.not = icmp eq i32 %26, 0
  br i1 %cmp1.i.not, label %for.cond.i, label %for.body.i.if.end27_crit_edge

for.body.i.if.end27_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.body11:                                        ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %27 = load i32, ptr @ivtv_debug, align 4
  %and12 = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.cleanup_crit_edge, label %do.end17

do.body11.cleanup_crit_edge:                      ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %name20 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name20) #11
  br label %cleanup

if.end27:                                         ; preds = %for.body.i.if.end27_crit_edge, %entry.if.end27_crit_edge
  %28 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i64 = getelementptr i8, ptr %29, i32 28680
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %31 = and i32 %30, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp29.not.not = icmp eq i32 %31, 0
  br i1 %cmp29.not.not, label %if.then30, label %if.end27.if.end50_crit_edge

if.end27.if.end50_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then30:                                        ; preds = %if.end27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %32 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i67 = getelementptr i8, ptr %33, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67, i32 -16777217) #8, !srcloc !175
  %34 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i.i69 = getelementptr i8, ptr %35, i32 28680
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i69) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %37 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i.i70 = getelementptr i8, ptr %38, i32 28680
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i70) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %40 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i.i71 = getelementptr i8, ptr %41, i32 28680
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i71) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %43 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i.i72 = getelementptr i8, ptr %44, i32 28680
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i72) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %46 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i.i73 = getelementptr i8, ptr %47, i32 28680
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i.i73) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  br label %for.body.i81

for.cond.i76:                                     ; preds = %for.body.i81
  %inc.i74 = add nuw nsw i32 %i.04.i77, 1
  %exitcond.not.i75 = icmp eq i32 %inc.i74, 1000
  br i1 %exitcond.not.i75, label %do.body34, label %for.cond.i76.for.body.i81_crit_edge

for.cond.i76.for.body.i81_crit_edge:              ; preds = %for.cond.i76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i81

for.body.i81:                                     ; preds = %for.cond.i76.for.body.i81_crit_edge, %if.then30
  %i.04.i77 = phi i32 [ 0, %if.then30 ], [ %inc.i74, %for.cond.i76.for.body.i81_crit_edge ]
  %49 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i78 = getelementptr i8, ptr %50, i32 28680
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i78) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %52 = and i32 %51, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp1.i80.not = icmp eq i32 %52, 0
  br i1 %cmp1.i80.not, label %for.cond.i76, label %for.body.i81.if.end50_crit_edge

for.body.i81.if.end50_crit_edge:                  ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

do.body34:                                        ; preds = %for.cond.i76
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %53 = load i32, ptr @ivtv_debug, align 4
  %and35 = and i32 %53, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.body34.cleanup_crit_edge, label %do.end40

do.body34.cleanup_crit_edge:                      ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end40:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %name43 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name43) #11
  br label %cleanup

if.end50:                                         ; preds = %for.body.i81.if.end50_crit_edge, %if.end27.if.end50_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %54 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i84 = getelementptr i8, ptr %55, i32 28676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 16777216) #8, !srcloc !175
  %56 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i85 = getelementptr i8, ptr %57, i32 28680
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i85) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %59 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i = getelementptr i8, ptr %60, i32 28680
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %62 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i = getelementptr i8, ptr %63, i32 28680
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %65 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i = getelementptr i8, ptr %66, i32 28680
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %68 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i = getelementptr i8, ptr %69, i32 28680
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %do.end40, %do.body34.cleanup_crit_edge, %do.end17, %do.body11.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50 ], [ -121, %do.end17 ], [ -121, %do.body11.cleanup_crit_edge ], [ -121, %do.end40 ], [ -121, %do.body34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ivtv_sendbyte(ptr noundef %itv, i8 noundef zeroext %byte) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %0 = load i32, ptr @ivtv_debug, align 4
  %1 = and i32 %0, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %1)
  %.not = icmp eq i32 %1, 1536
  br i1 %.not, label %do.end, label %entry.do.end5_crit_edge

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %conv = zext i8 %byte to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name, i32 noundef %conv) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %reg_mem.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end5
  %byte.addr.0175 = phi i8 [ %byte, %do.end5 ], [ %shl, %for.inc.for.body_crit_edge ]
  %i.0174 = phi i32 [ 0, %do.end5 ], [ %inc, %for.inc.for.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #8, !srcloc !175
  %4 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 28680
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %7 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i.i = getelementptr i8, ptr %8, i32 28680
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %10 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i.i = getelementptr i8, ptr %11, i32 28680
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %13 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i.i = getelementptr i8, ptr %14, i32 28680
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %16 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i.i = getelementptr i8, ptr %17, i32 28680
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.body10, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body
  %i.04.i = phi i32 [ 0, %for.body ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 28680
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %22 = and i32 %21, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp1.i = icmp eq i32 %22, 0
  br i1 %cmp1.i, label %if.end25, label %for.cond.i

do.body10:                                        ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %23 = load i32, ptr @ivtv_debug, align 4
  %and11 = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body10.cleanup_crit_edge, label %do.body10.cleanup.sink.split_crit_edge

do.body10.cleanup.sink.split_crit_edge:           ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %for.body.i
  %24 = lshr i8 %byte.addr.0175, 7
  %25 = zext i8 %24 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %neg.i = shl nuw nsw i32 %25, 24
  %26 = xor i32 %neg.i, 16777216
  %27 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i107 = getelementptr i8, ptr %28, i32 28676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %26) #8, !srcloc !175
  %29 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i.i109 = getelementptr i8, ptr %30, i32 28680
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i109) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %32 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i.i110 = getelementptr i8, ptr %33, i32 28680
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i110) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %35 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i.i111 = getelementptr i8, ptr %36, i32 28680
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i111) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %38 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i.i112 = getelementptr i8, ptr %39, i32 28680
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i112) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %41 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i.i113 = getelementptr i8, ptr %42, i32 28680
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i.i113) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  br label %for.body.i121

for.cond.i116:                                    ; preds = %for.body.i121
  %inc.i114 = add nuw nsw i32 %i.04.i117, 1
  %exitcond.not.i115 = icmp eq i32 %inc.i114, 1000
  br i1 %exitcond.not.i115, label %do.body31, label %for.cond.i116.for.body.i121_crit_edge

for.cond.i116.for.body.i121_crit_edge:            ; preds = %for.cond.i116
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i121

for.body.i121:                                    ; preds = %for.cond.i116.for.body.i121_crit_edge, %if.end25
  %i.04.i117 = phi i32 [ 0, %if.end25 ], [ %inc.i114, %for.cond.i116.for.body.i121_crit_edge ]
  %44 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i118 = getelementptr i8, ptr %45, i32 28684
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i118) #8, !srcloc !177
  %47 = lshr i32 %46, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %and.i.i119 = and i32 %47, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i119, i32 %25)
  %cmp1.i120 = icmp eq i32 %and.i.i119, %25
  br i1 %cmp1.i120, label %if.end46, label %for.cond.i116

do.body31:                                        ; preds = %for.cond.i116
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %48 = load i32, ptr @ivtv_debug, align 4
  %and32 = and i32 %48, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.cleanup_crit_edge, label %do.body31.cleanup.sink.split_crit_edge

do.body31.cleanup.sink.split_crit_edge:           ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body31.cleanup_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %for.body.i121
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %49 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i124 = getelementptr i8, ptr %50, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 -16777217) #8, !srcloc !175
  %51 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i.i126 = getelementptr i8, ptr %52, i32 28680
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i126) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %54 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i.i127 = getelementptr i8, ptr %55, i32 28680
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i127) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %57 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i.i128 = getelementptr i8, ptr %58, i32 28680
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i128) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %60 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i.i129 = getelementptr i8, ptr %61, i32 28680
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i129) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %63 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i.i130 = getelementptr i8, ptr %64, i32 28680
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i.i130) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  br label %for.body.i138

for.cond.i133:                                    ; preds = %for.body.i138
  %inc.i131 = add nuw nsw i32 %i.04.i134, 1
  %exitcond.not.i132 = icmp eq i32 %inc.i131, 1000
  br i1 %exitcond.not.i132, label %do.body50, label %for.cond.i133.for.body.i138_crit_edge

for.cond.i133.for.body.i138_crit_edge:            ; preds = %for.cond.i133
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i138

for.body.i138:                                    ; preds = %for.cond.i133.for.body.i138_crit_edge, %if.end46
  %i.04.i134 = phi i32 [ 0, %if.end46 ], [ %inc.i131, %for.cond.i133.for.body.i138_crit_edge ]
  %66 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i135 = getelementptr i8, ptr %67, i32 28680
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i135) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %69 = and i32 %68, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp1.i137.not = icmp eq i32 %69, 0
  br i1 %cmp1.i137.not, label %for.cond.i133, label %for.inc

do.body50:                                        ; preds = %for.cond.i133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %70 = load i32, ptr @ivtv_debug, align 4
  %and51 = and i32 %70, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body50.cleanup_crit_edge, label %do.body50.cleanup.sink.split_crit_edge

do.body50.cleanup.sink.split_crit_edge:           ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %for.body.i138
  %inc = add nuw nsw i32 %i.0174, 1
  %shl = shl i8 %byte.addr.0175, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %71 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i142 = getelementptr i8, ptr %72, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 -1) #8, !srcloc !175
  %73 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i.i144 = getelementptr i8, ptr %74, i32 28680
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i144) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %76 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i.i145 = getelementptr i8, ptr %77, i32 28680
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i145) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %79 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i.i146 = getelementptr i8, ptr %80, i32 28680
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i146) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %82 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i.i147 = getelementptr i8, ptr %83, i32 28680
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i147) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %85 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i.i148 = getelementptr i8, ptr %86, i32 28680
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i.i148) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  br label %for.body.i156

for.cond.i151:                                    ; preds = %for.body.i156
  %inc.i149 = add nuw nsw i32 %i.04.i152, 1
  %exitcond.not.i150 = icmp eq i32 %inc.i149, 1000
  br i1 %exitcond.not.i150, label %do.body71, label %for.cond.i151.for.body.i156_crit_edge

for.cond.i151.for.body.i156_crit_edge:            ; preds = %for.cond.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i156

for.body.i156:                                    ; preds = %for.cond.i151.for.body.i156_crit_edge, %for.end
  %i.04.i152 = phi i32 [ 0, %for.end ], [ %inc.i149, %for.cond.i151.for.body.i156_crit_edge ]
  %88 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i153 = getelementptr i8, ptr %89, i32 28680
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i153) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %91 = and i32 %90, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp1.i155 = icmp eq i32 %91, 0
  br i1 %cmp1.i155, label %if.end86, label %for.cond.i151

do.body71:                                        ; preds = %for.cond.i151
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %92 = load i32, ptr @ivtv_debug, align 4
  %and72 = and i32 %92, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72)
  %tobool73.not = icmp eq i32 %and72, 0
  br i1 %tobool73.not, label %do.body71.cleanup_crit_edge, label %do.body71.cleanup.sink.split_crit_edge

do.body71.cleanup.sink.split_crit_edge:           ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body71.cleanup_crit_edge:                      ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end86:                                         ; preds = %for.body.i156
  %93 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i159 = getelementptr i8, ptr %94, i32 28680
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i159) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %96 = and i32 %95, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.not.i = icmp eq i32 %96, 0
  br i1 %cmp.not.i, label %if.end86.if.end27.i_crit_edge, label %do.body.i

if.end86.if.end27.i_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

do.body.i:                                        ; preds = %if.end86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %97 = load i32, ptr @ivtv_debug, align 4
  %98 = and i32 %97, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %98)
  %.not.i = icmp eq i32 %98, 1536
  br i1 %.not.i, label %do.end.i, label %do.body.i.do.end7.i_crit_edge

do.body.i.do.end7.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %name.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name.i) #11
  br label %do.end7.i

do.end7.i:                                        ; preds = %do.end.i, %do.body.i.do.end7.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %99 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i79.i = getelementptr i8, ptr %100, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 -1) #8, !srcloc !175
  %101 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %102, i32 28680
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %104 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i.i.i = getelementptr i8, ptr %105, i32 28680
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %107 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i.i.i = getelementptr i8, ptr %108, i32 28680
  %109 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %110 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i.i.i = getelementptr i8, ptr %111, i32 28680
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %113 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i.i.i = getelementptr i8, ptr %114, i32 28680
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1000
  br i1 %exitcond.not.i.i, label %do.body11.i, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %do.end7.i
  %i.04.i.i = phi i32 [ 0, %do.end7.i ], [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ]
  %116 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i.i160 = getelementptr i8, ptr %117, i32 28680
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i160) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %119 = and i32 %118, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp1.i.i = icmp eq i32 %119, 0
  br i1 %cmp1.i.i, label %for.body.i.i.if.end27.i_crit_edge, label %for.cond.i.i

for.body.i.i.if.end27.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

do.body11.i:                                      ; preds = %for.cond.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %120 = load i32, ptr @ivtv_debug, align 4
  %and12.i = and i32 %120, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %do.body11.i.cleanup_crit_edge, label %do.body11.i.cleanup.sink.split_crit_edge

do.body11.i.cleanup.sink.split_crit_edge:         ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body11.i.cleanup_crit_edge:                    ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27.i:                                       ; preds = %for.body.i.i.if.end27.i_crit_edge, %if.end86.if.end27.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %121 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i81.i = getelementptr i8, ptr %122, i32 28676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i, i32 0) #8, !srcloc !175
  %123 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i82.i = getelementptr i8, ptr %124, i32 28680
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i82.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %126 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i.i161 = getelementptr i8, ptr %127, i32 28680
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i161) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %129 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i.i162 = getelementptr i8, ptr %130, i32 28680
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i162) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %132 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i.i163 = getelementptr i8, ptr %133, i32 28680
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i163) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %135 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i.i164 = getelementptr i8, ptr %136, i32 28680
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i.i164) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %138 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i84.i = getelementptr i8, ptr %139, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84.i, i32 -16777217) #8, !srcloc !175
  %140 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i.i86.i = getelementptr i8, ptr %141, i32 28680
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i86.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %143 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i.i87.i = getelementptr i8, ptr %144, i32 28680
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i87.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %146 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i.i88.i = getelementptr i8, ptr %147, i32 28680
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i88.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %149 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i.i89.i = getelementptr i8, ptr %150, i32 28680
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i89.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %152 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i.i90.i = getelementptr i8, ptr %153, i32 28680
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i.i90.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  br label %for.body.i98.i

for.cond.i93.i:                                   ; preds = %for.body.i98.i
  %inc.i91.i = add nuw nsw i32 %i.04.i94.i, 1
  %exitcond.not.i92.i = icmp eq i32 %inc.i91.i, 1000
  br i1 %exitcond.not.i92.i, label %do.body31.i, label %for.cond.i93.i.for.body.i98.i_crit_edge

for.cond.i93.i.for.body.i98.i_crit_edge:          ; preds = %for.cond.i93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i98.i

for.body.i98.i:                                   ; preds = %for.cond.i93.i.for.body.i98.i_crit_edge, %if.end27.i
  %i.04.i94.i = phi i32 [ 0, %if.end27.i ], [ %inc.i91.i, %for.cond.i93.i.for.body.i98.i_crit_edge ]
  %155 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i95.i = getelementptr i8, ptr %156, i32 28684
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i95.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %158 = and i32 %157, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp1.i97.i = icmp eq i32 %158, 0
  br i1 %cmp1.i97.i, label %for.body.i98.i.if.end46.i_crit_edge, label %for.cond.i93.i

for.body.i98.i.if.end46.i_crit_edge:              ; preds = %for.body.i98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

do.body31.i:                                      ; preds = %for.cond.i93.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %159 = load i32, ptr @ivtv_debug, align 4
  %and32.i = and i32 %159, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %do.body31.i.if.end46.i_crit_edge, label %do.end37.i

do.body31.i.if.end46.i_crit_edge:                 ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46.i

do.end37.i:                                       ; preds = %do.body31.i
  call void @__sanitizer_cov_trace_pc() #10
  %name40.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call42.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, ptr noundef %name40.i) #11
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.end37.i, %do.body31.i.if.end46.i_crit_edge, %for.body.i98.i.if.end46.i_crit_edge
  %ret.0.i = phi i32 [ -121, %do.end37.i ], [ -121, %do.body31.i.if.end46.i_crit_edge ], [ 0, %for.body.i98.i.if.end46.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %160 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i101.i = getelementptr i8, ptr %161, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101.i, i32 -1) #8, !srcloc !175
  %162 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i.i103.i = getelementptr i8, ptr %163, i32 28680
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i103.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %165 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i.i104.i = getelementptr i8, ptr %166, i32 28680
  %167 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i104.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %168 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i.i105.i = getelementptr i8, ptr %169, i32 28680
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i105.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %171 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i.i106.i = getelementptr i8, ptr %172, i32 28680
  %173 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i106.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %174 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i.i107.i = getelementptr i8, ptr %175, i32 28680
  %176 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i.i107.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  br label %for.body.i115.i

for.cond.i110.i:                                  ; preds = %for.body.i115.i
  %inc.i108.i = add nuw nsw i32 %i.04.i111.i, 1
  %exitcond.not.i109.i = icmp eq i32 %inc.i108.i, 1000
  br i1 %exitcond.not.i109.i, label %do.body50.i, label %for.cond.i110.i.for.body.i115.i_crit_edge

for.cond.i110.i.for.body.i115.i_crit_edge:        ; preds = %for.cond.i110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i115.i

for.body.i115.i:                                  ; preds = %for.cond.i110.i.for.body.i115.i_crit_edge, %if.end46.i
  %i.04.i111.i = phi i32 [ 0, %if.end46.i ], [ %inc.i108.i, %for.cond.i110.i.for.body.i115.i_crit_edge ]
  %177 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i112.i = getelementptr i8, ptr %178, i32 28680
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i112.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %180 = and i32 %179, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %cmp1.i114.i = icmp eq i32 %180, 0
  br i1 %cmp1.i114.i, label %for.body.i115.i.cleanup_crit_edge, label %for.cond.i110.i

for.body.i115.i.cleanup_crit_edge:                ; preds = %for.body.i115.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body50.i:                                      ; preds = %for.cond.i110.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %181 = load i32, ptr @ivtv_debug, align 4
  %and51.i = and i32 %181, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %do.body50.i.cleanup_crit_edge, label %do.body50.i.cleanup.sink.split_crit_edge

do.body50.i.cleanup.sink.split_crit_edge:         ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

do.body50.i.cleanup_crit_edge:                    ; preds = %do.body50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %do.body50.i.cleanup.sink.split_crit_edge, %do.body11.i.cleanup.sink.split_crit_edge, %do.body71.cleanup.sink.split_crit_edge, %do.body50.cleanup.sink.split_crit_edge, %do.body31.cleanup.sink.split_crit_edge, %do.body10.cleanup.sink.split_crit_edge
  %.str.64.sink.i.sink = phi ptr [ @.str.45, %do.body10.cleanup.sink.split_crit_edge ], [ @.str.48, %do.body31.cleanup.sink.split_crit_edge ], [ @.str.51, %do.body50.cleanup.sink.split_crit_edge ], [ @.str.45, %do.body71.cleanup.sink.split_crit_edge ], [ @.str.58, %do.body11.i.cleanup.sink.split_crit_edge ], [ @.str.64, %do.body50.i.cleanup.sink.split_crit_edge ]
  %name59.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call61.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.64.sink.i.sink, ptr noundef %name59.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.body50.i.cleanup_crit_edge, %for.body.i115.i.cleanup_crit_edge, %do.body11.i.cleanup_crit_edge, %do.body71.cleanup_crit_edge, %do.body50.cleanup_crit_edge, %do.body31.cleanup_crit_edge, %do.body10.cleanup_crit_edge
  %retval.0 = phi i32 [ -121, %do.body10.cleanup_crit_edge ], [ -121, %do.body31.cleanup_crit_edge ], [ -121, %do.body50.cleanup_crit_edge ], [ -121, %do.body71.cleanup_crit_edge ], [ -121, %do.body11.i.cleanup_crit_edge ], [ -121, %do.body50.i.cleanup_crit_edge ], [ -121, %cleanup.sink.split ], [ %ret.0.i, %for.body.i115.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ivtv_stop(ptr noundef %itv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_mem.i = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 17
  %0 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 28680
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end27_crit_edge, label %do.body

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %4 = load i32, ptr @ivtv_debug, align 4
  %5 = and i32 %4, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %5)
  %.not = icmp eq i32 %5, 1536
  br i1 %.not, label %do.end, label %do.body.do.end7_crit_edge

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name) #11
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i2 = getelementptr i8, ptr %7, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2, i32 -1) #8, !srcloc !175
  %8 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 28680
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %11 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i.i = getelementptr i8, ptr %12, i32 28680
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %14 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i.i = getelementptr i8, ptr %15, i32 28680
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %17 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i.i = getelementptr i8, ptr %18, i32 28680
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %20 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i.i = getelementptr i8, ptr %21, i32 28680
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %do.body11, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.end7
  %i.04.i = phi i32 [ 0, %do.end7 ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 28680
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %26 = and i32 %25, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1.i = icmp eq i32 %26, 0
  br i1 %cmp1.i, label %for.body.i.if.end27_crit_edge, label %for.cond.i

for.body.i.if.end27_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.body11:                                        ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %27 = load i32, ptr @ivtv_debug, align 4
  %and12 = and i32 %27, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.if.end27_crit_edge, label %do.end17

do.body11.if.end27_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

do.end17:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  %name20 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %name20) #11
  br label %if.end27

if.end27:                                         ; preds = %do.end17, %do.body11.if.end27_crit_edge, %for.body.i.if.end27_crit_edge, %entry.if.end27_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %29, i32 28676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 16777216) #8, !srcloc !175
  %30 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i5 = getelementptr i8, ptr %31, i32 28680
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %33 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i = getelementptr i8, ptr %34, i32 28680
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %36 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i = getelementptr i8, ptr %37, i32 28680
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %39 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i = getelementptr i8, ptr %40, i32 28680
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %42 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i = getelementptr i8, ptr %43, i32 28680
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %45 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i7 = getelementptr i8, ptr %46, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 -16777217) #8, !srcloc !175
  %47 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i.i9 = getelementptr i8, ptr %48, i32 28680
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i9) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %50 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i.i10 = getelementptr i8, ptr %51, i32 28680
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i10) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %53 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i.i11 = getelementptr i8, ptr %54, i32 28680
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i11) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %56 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i.i12 = getelementptr i8, ptr %57, i32 28680
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i12) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %59 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i.i13 = getelementptr i8, ptr %60, i32 28680
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i.i13) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  br label %for.body.i21

for.cond.i16:                                     ; preds = %for.body.i21
  %inc.i14 = add nuw nsw i32 %i.04.i17, 1
  %exitcond.not.i15 = icmp eq i32 %inc.i14, 1000
  br i1 %exitcond.not.i15, label %do.body31, label %for.cond.i16.for.body.i21_crit_edge

for.cond.i16.for.body.i21_crit_edge:              ; preds = %for.cond.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i21

for.body.i21:                                     ; preds = %for.cond.i16.for.body.i21_crit_edge, %if.end27
  %i.04.i17 = phi i32 [ 0, %if.end27 ], [ %inc.i14, %for.cond.i16.for.body.i21_crit_edge ]
  %62 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i18 = getelementptr i8, ptr %63, i32 28680
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %65 = and i32 %64, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp1.i20.not = icmp eq i32 %65, 0
  br i1 %cmp1.i20.not, label %for.cond.i16, label %if.end46

do.body31:                                        ; preds = %for.cond.i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %66 = load i32, ptr @ivtv_debug, align 4
  %and32 = and i32 %66, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.cleanup_crit_edge, label %do.end37

do.body31.cleanup_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end37:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #10
  %name40 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name40) #11
  br label %cleanup

if.end46:                                         ; preds = %for.body.i21
  %67 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i25 = getelementptr i8, ptr %68, i32 28680
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %70 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i26 = getelementptr i8, ptr %71, i32 28680
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i26) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %73 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i27 = getelementptr i8, ptr %74, i32 28680
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i27) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %76 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i28 = getelementptr i8, ptr %77, i32 28680
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i28) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %79 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i29 = getelementptr i8, ptr %80, i32 28680
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i29) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i31 = getelementptr i8, ptr %83, i32 28676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31, i32 0) #8, !srcloc !175
  %84 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i.i33 = getelementptr i8, ptr %85, i32 28680
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i33) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %87 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i.i34 = getelementptr i8, ptr %88, i32 28680
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i34) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %90 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i.i35 = getelementptr i8, ptr %91, i32 28680
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i35) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %93 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i.i36 = getelementptr i8, ptr %94, i32 28680
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i36) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %96 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i.i37 = getelementptr i8, ptr %97, i32 28680
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i.i37) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  br label %for.body.i45

for.cond.i40:                                     ; preds = %for.body.i45
  %inc.i38 = add nuw nsw i32 %i.04.i41, 1
  %exitcond.not.i39 = icmp eq i32 %inc.i38, 1000
  br i1 %exitcond.not.i39, label %do.body50, label %for.cond.i40.for.body.i45_crit_edge

for.cond.i40.for.body.i45_crit_edge:              ; preds = %for.cond.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i45

for.body.i45:                                     ; preds = %for.cond.i40.for.body.i45_crit_edge, %if.end46
  %i.04.i41 = phi i32 [ 0, %if.end46 ], [ %inc.i38, %for.cond.i40.for.body.i45_crit_edge ]
  %99 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i42 = getelementptr i8, ptr %100, i32 28684
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i42) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %102 = and i32 %101, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp1.i44.not = icmp eq i32 %102, 0
  br i1 %cmp1.i44.not, label %for.cond.i40, label %for.body.i45.cleanup_crit_edge

for.body.i45.cleanup_crit_edge:                   ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body50:                                        ; preds = %for.cond.i40
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ivtv_debug to i32))
  %103 = load i32, ptr @ivtv_debug, align 4
  %and51 = and i32 %103, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %do.body50.for.body.preheader_crit_edge, label %do.end56

do.body50.for.body.preheader_crit_edge:           ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader

do.end56:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #10
  %name59 = getelementptr inbounds %struct.ivtv, ptr %itv, i32 0, i32 19, i32 4
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %name59) #11
  br label %for.body.preheader

for.body.preheader:                               ; preds = %do.end56, %do.body50.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.089 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %104 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i48 = getelementptr i8, ptr %105, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 -1) #8, !srcloc !175
  %106 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i50 = getelementptr i8, ptr %107, i32 28680
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %109 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i51 = getelementptr i8, ptr %110, i32 28680
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i51) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %112 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i52 = getelementptr i8, ptr %113, i32 28680
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i52) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %115 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i53 = getelementptr i8, ptr %116, i32 28680
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i53) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %118 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i54 = getelementptr i8, ptr %119, i32 28680
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i54) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !174
  tail call void @arm_heavy_mb() #8
  %121 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i56 = getelementptr i8, ptr %122, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 -16777217) #8, !srcloc !175
  %123 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i58 = getelementptr i8, ptr %124, i32 28680
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i58) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %126 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i59 = getelementptr i8, ptr %127, i32 28680
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i59) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %129 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i60 = getelementptr i8, ptr %130, i32 28680
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i60) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %132 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i61 = getelementptr i8, ptr %133, i32 28680
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i61) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %135 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i62 = getelementptr i8, ptr %136, i32 28680
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i62) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !176
  tail call void @arm_heavy_mb() #8
  %138 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i64 = getelementptr i8, ptr %139, i32 28676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 0) #8, !srcloc !175
  %inc = add nuw nsw i32 %i.089, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %140 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i.i66 = getelementptr i8, ptr %141, i32 28680
  %142 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i66) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %143 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.1.i.i67 = getelementptr i8, ptr %144, i32 28680
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.1.i.i67) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %146 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.2.i.i68 = getelementptr i8, ptr %147, i32 28680
  %148 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.2.i.i68) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %149 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.3.i.i69 = getelementptr i8, ptr %150, i32 28680
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.3.i.i69) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  %152 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.4.i.i70 = getelementptr i8, ptr %153, i32 28680
  %154 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.4.i.i70) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  br label %for.body.i78

for.body.i78:                                     ; preds = %for.body.i78.for.body.i78_crit_edge, %for.end
  %i.04.i74 = phi i32 [ 0, %for.end ], [ %inc.i71, %for.body.i78.for.body.i78_crit_edge ]
  %155 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i.i75 = getelementptr i8, ptr %156, i32 28684
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75) #8, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !179
  %158 = and i32 %157, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp1.i77 = icmp ne i32 %158, 0
  %inc.i71 = add nuw nsw i32 %i.04.i74, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %inc.i71)
  %exitcond.not.i72 = icmp eq i32 %inc.i71, 1000
  %or.cond87 = select i1 %cmp1.i77, i1 true, i1 %exitcond.not.i72
  br i1 %or.cond87, label %for.body.i78.cleanup_crit_edge, label %for.body.i78.for.body.i78_crit_edge

for.body.i78.for.body.i78_crit_edge:              ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i78

for.body.i78.cleanup_crit_edge:                   ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.i78.cleanup_crit_edge, %for.body.i45.cleanup_crit_edge, %do.end37, %do.body31.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ivtv_setsda_old(ptr nocapture noundef %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp ne i32 %state, 0
  %i2c_state1 = getelementptr inbounds %struct.ivtv, ptr %data, i32 0, i32 72
  %0 = ptrtoint ptr %i2c_state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c_state1, align 8
  %and = and i32 %1, -2
  %masksel = zext i1 %tobool.not to i32
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %i2c_state1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !180
  tail call void @arm_heavy_mb() #8
  %i2c_state2 = getelementptr inbounds %struct.ivtv, ptr %data, i32 0, i32 72
  %2 = ptrtoint ptr %i2c_state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_state2, align 8
  %neg = xor i32 %3, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %data, i32 0, i32 17
  %5 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 28676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !175
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ivtv_setscl_old(ptr nocapture noundef %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp ne i32 %state, 0
  %i2c_state1 = getelementptr inbounds %struct.ivtv, ptr %data, i32 0, i32 72
  %0 = ptrtoint ptr %i2c_state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c_state1, align 8
  %and = and i32 %1, -2
  %masksel = zext i1 %tobool.not to i32
  %or.sink = or i32 %and, %masksel
  store i32 %or.sink, ptr %i2c_state1, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !181
  tail call void @arm_heavy_mb() #8
  %i2c_state2 = getelementptr inbounds %struct.ivtv, ptr %data, i32 0, i32 72
  %2 = ptrtoint ptr %i2c_state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_state2, align 8
  %neg = xor i32 %3, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %neg)
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %data, i32 0, i32 17
  %5 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %6, i32 28672
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #8, !srcloc !175
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_getsda_old(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %data, i32 0, i32 17
  %0 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 28684
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !177
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  %and = and i32 %3, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ivtv_getscl_old(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_mem = getelementptr inbounds %struct.ivtv, ptr %data, i32 0, i32 17
  %0 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 28680
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !177
  %3 = lshr i32 %2, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !183
  %and = and i32 %3, 1
  ret i32 %and
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !17, !18, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !163}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !{ptr @ivtv_i2c_new_ir_legacy.addr_list, !1, !"addr_list", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 230, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 237, i32 21}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 285, i32 12}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 695, i32 2}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @init_ivtv_i2c._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @init_ivtv_i2c._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 714, i32 59}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 722, i32 2}
!16 = !{ptr @init_ivtv_i2c._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @init_ivtv_i2c._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 736, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @exit_ivtv_i2c._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @exit_ivtv_i2c._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 114, i32 2}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 115, i32 2}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 116, i32 2}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 117, i32 2}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 118, i32 2}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 119, i32 2}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 120, i32 2}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 121, i32 2}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 122, i32 2}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 123, i32 2}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 124, i32 2}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 125, i32 2}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 126, i32 2}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 127, i32 2}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 128, i32 2}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 129, i32 2}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 133, i32 2}
!57 = !{ptr @hw_devicenames, !58, !"hw_devicenames", i1 false, i1 false}
!58 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 113, i32 27}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 177, i32 25}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 181, i32 21}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 185, i32 25}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 202, i32 25}
!67 = !{ptr @hw_addrs, !68, !"hw_addrs", i1 false, i1 false}
!68 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 88, i32 17}
!69 = !{ptr @ivtv_i2c_adap_hw_template, !70, !"ivtv_i2c_adap_hw_template", i1 false, i1 false}
!70 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 618, i32 33}
!71 = !{ptr @ivtv_algo, !72, !"ivtv_algo", i1 false, i1 false}
!72 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 612, i32 35}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 577, i32 3}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @ivtv_read._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @ivtv_read._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 482, i32 3}
!80 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @ivtv_start._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @ivtv_start._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 485, i32 4}
!85 = !{ptr @ivtv_start._entry.36, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @ivtv_start._entry_ptr.38, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 492, i32 4}
!89 = !{ptr @ivtv_start._entry.39, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @ivtv_start._entry_ptr.41, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 415, i32 2}
!93 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @ivtv_sendbyte._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @ivtv_sendbyte._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 419, i32 4}
!98 = !{ptr @ivtv_sendbyte._entry.44, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @ivtv_sendbyte._entry_ptr.46, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 425, i32 4}
!102 = !{ptr @ivtv_sendbyte._entry.47, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @ivtv_sendbyte._entry_ptr.49, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 430, i32 4}
!106 = !{ptr @ivtv_sendbyte._entry.50, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @ivtv_sendbyte._entry_ptr.52, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @ivtv_sendbyte._entry.53, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 436, i32 3}
!110 = !{ptr @ivtv_sendbyte._entry_ptr.54, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 388, i32 3}
!113 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @ivtv_ack._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @ivtv_ack._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 391, i32 4}
!118 = !{ptr @ivtv_ack._entry.57, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ivtv_ack._entry_ptr.59, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 399, i32 3}
!122 = !{ptr @ivtv_ack._entry.60, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @ivtv_ack._entry_ptr.62, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.64, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 404, i32 3}
!126 = !{ptr @ivtv_ack._entry.63, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @ivtv_ack._entry_ptr.65, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 457, i32 4}
!130 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @ivtv_readbyte._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @ivtv_readbyte._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 470, i32 2}
!135 = !{ptr @ivtv_readbyte._entry.68, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @ivtv_readbyte._entry_ptr.70, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 507, i32 3}
!139 = !{ptr @.str.72, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @ivtv_stop._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @ivtv_stop._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 510, i32 4}
!144 = !{ptr @ivtv_stop._entry.73, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @ivtv_stop._entry_ptr.75, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.77, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 517, i32 3}
!148 = !{ptr @ivtv_stop._entry.76, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @ivtv_stop._entry_ptr.78, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.80, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 523, i32 3}
!152 = !{ptr @ivtv_stop._entry.79, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @ivtv_stop._entry_ptr.81, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.82, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 557, i32 3}
!156 = !{ptr @.str.83, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @ivtv_write._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @ivtv_write._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @ivtv_i2c_adap_template, !160, !"ivtv_i2c_adap_template", i1 false, i1 false}
!160 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 668, i32 33}
!161 = !{ptr @ivtv_i2c_algo_template, !162, !"ivtv_i2c_algo_template", i1 false, i1 false}
!162 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 677, i32 39}
!163 = !{ptr @ivtv_i2c_client_template, !164, !"ivtv_i2c_client_template", i1 false, i1 false}
!164 = !{!"../drivers/media/pci/ivtv/ivtv-i2c.c", i32 686, i32 32}
!165 = !{i32 1, !"wchar_size", i32 2}
!166 = !{i32 1, !"min_enum_size", i32 4}
!167 = !{i32 8, !"branch-target-enforcement", i32 0}
!168 = !{i32 8, !"sign-return-address", i32 0}
!169 = !{i32 8, !"sign-return-address-all", i32 0}
!170 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!171 = !{i32 7, !"uwtable", i32 1}
!172 = !{i32 7, !"frame-pointer", i32 2}
!173 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!174 = !{i64 2156811271}
!175 = !{i64 5766109}
!176 = !{i64 2156811751}
!177 = !{i64 5766527}
!178 = !{i64 2156812515}
!179 = !{i64 2156813075}
!180 = !{i64 2156855995}
!181 = !{i64 2156855478}
!182 = !{i64 2156857334}
!183 = !{i64 2156856774}
