; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-i2c.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_algo_bit_data = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.cx18 = type { i32, ptr, %struct.v4l2_device, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, %struct.cx18_av_state, %struct.cx2341x_handler, i32, i32, i32, i32, i32, %struct.mutex, %struct.cx18_options, [7 x i32], [7 x i32], [7 x %struct.cx18_stream], ptr, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i32, i8, ptr, ptr, %struct.vbi_info, i64, i64, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, i32, i32, i32, ptr, [11 x i8], [70 x %struct.cx18_in_work_order], [256 x i8], [2 x %struct.i2c_adapter], [2 x %struct.i2c_algo_bit_data], [2 x %struct.cx18_i2c_algo_callback_data], %struct.IR_i2c_init_data, i32, i32, %struct.mutex, %struct.v4l2_subdev, %struct.v4l2_subdev, i32, i32, i64, i64, %struct.work_struct }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
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
%struct.cx18_queue = type { %struct.list_head, %struct.atomic_t, i32, %struct.spinlock }
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
%struct.cx18_in_work_order = type { %struct.work_struct, %struct.atomic_t, ptr, i32, i32, %struct.cx18_mailbox, [2 x %struct.cx18_mdl_ack], ptr }
%struct.cx18_mailbox = type { i32, i32, [6 x i32], i32, [6 x i32], i32 }
%struct.cx18_mdl_ack = type { i32, i32 }
%struct.cx18_i2c_algo_callback_data = type { ptr, i32 }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.cx18_card_tuner_i2c = type { [2 x i16], [3 x i16], [4 x i16] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.103, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.103 = type { ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@hw_bus = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01\00\00\00\00\00\00\00", [24 x i8] zeroinitializer }, align 32
@hw_devicenames = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], [32 x i8] zeroinitializer }, align 32
@cx18_debug = external dso_local local_unnamed_addr global i32, align 4
@init_cx18_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s:  i2c: i2c init\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_cx18_i2c\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/media/pci/cx18/cx18-i2c.c\00", [62 x i8] zeroinitializer }, align 32
@init_cx18_i2c._entry_ptr = internal global ptr @init_cx18_i2c._entry, section ".printk_index", align 4
@cx18_i2c_algo_template = internal constant { %struct.i2c_algo_bit_data, [56 x i8] } { %struct.i2c_algo_bit_data { ptr null, ptr @cx18_setsda, ptr @cx18_setscl, ptr @cx18_getsda, ptr @cx18_getscl, ptr null, ptr null, i32 5, i32 200, i8 0 }, [56 x i8] zeroinitializer }, align 32
@cx18_i2c_adap_template = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr null, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"cx18 i2c driver\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" #%d-%d\00", [24 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@exit_cx18_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016%s:  i2c: i2c exit\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"exit_cx18_i2c\00", [18 x i8] zeroinitializer }, align 32
@exit_cx18_i2c._entry_ptr = internal global ptr @exit_cx18_i2c._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tuner\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tveeprom\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cs5345\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cx23418_DTV\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cx23418_AV\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_mux\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio_reset_ctrl\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ir_z8f0811_haup\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 7]
@___asan_gen_.15 = private unnamed_addr constant [7 x i8] c"hw_bus\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 46, i32 17 }
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"hw_devicenames\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 58, i32 27 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 220, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"cx18_i2c_algo_template\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 207, i32 39 }
@___asan_gen_.36 = private unnamed_addr constant [23 x i8] c"cx18_i2c_adap_template\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 197, i32 33 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 233, i32 5 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 291, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 59, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 60, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 61, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 62, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 63, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 64, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 65, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 66, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [37 x i8] c"../drivers/media/pci/cx18/cx18-i2c.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 82, i32 25 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @exit_cx18_i2c._entry, ptr @exit_cx18_i2c._entry_ptr, ptr @init_cx18_i2c._entry, ptr @init_cx18_i2c._entry_ptr, ptr @hw_bus, ptr @hw_devicenames, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @cx18_i2c_algo_template, ptr @cx18_i2c_adap_template, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_bus to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_devicenames to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_cx18_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_i2c_algo_template to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_i2c_adap_template to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exit_cx18_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_i2c_register(ptr noundef %cx, i32 noundef %idx) local_unnamed_addr #0 align 64 {
entry:
  %info.i = alloca %struct.i2c_board_info, align 4
  %addr_list.i = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [8 x i8], ptr @hw_bus, i32 0, i32 %idx
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %arrayidx1 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 55, i32 %conv
  %arrayidx2 = getelementptr [8 x ptr], ptr @hw_devicenames, i32 0, i32 %idx
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %shl = shl nuw i32 1, %idx
  %4 = zext i32 %idx to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %idx, label %entry.cleanup_crit_edge [
    i32 0, label %if.then
    i32 7, label %if.then30
    i32 2, label %if.end36
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %v4l2_dev = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2
  %card_i2c = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 7
  %5 = ptrtoint ptr %card_i2c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card_i2c, align 8
  %call = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %arrayidx1, ptr noundef %3, i8 noundef zeroext 0, ptr noundef %6) #8
  %cmp4.not = icmp eq ptr %call, null
  br i1 %cmp4.not, label %if.then.if.end_crit_edge, label %if.then6

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %call, i32 0, i32 10
  %7 = ptrtoint ptr %grp_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %grp_id, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %card_i2c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %card_i2c, align 8
  %demod = getelementptr inbounds %struct.cx18_card_tuner_i2c, ptr %9, i32 0, i32 1
  %call10 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %arrayidx1, ptr noundef %3, i8 noundef zeroext 0, ptr noundef %demod) #8
  %cmp11.not = icmp eq ptr %call10, null
  br i1 %cmp11.not, label %if.end.if.end15_crit_edge, label %if.then13

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %grp_id14 = getelementptr inbounds %struct.v4l2_subdev, ptr %call10, i32 0, i32 10
  %10 = ptrtoint ptr %grp_id14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %grp_id14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end.if.end15_crit_edge
  %11 = ptrtoint ptr %card_i2c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card_i2c, align 8
  %tv = getelementptr inbounds %struct.cx18_card_tuner_i2c, ptr %12, i32 0, i32 2
  %call19 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %arrayidx1, ptr noundef %3, i8 noundef zeroext 0, ptr noundef %tv) #8
  %cmp20.not = icmp eq ptr %call19, null
  br i1 %cmp20.not, label %if.end15.if.end24_crit_edge, label %if.then22

if.end15.if.end24_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then22:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %grp_id23 = getelementptr inbounds %struct.v4l2_subdev, ptr %call19, i32 0, i32 10
  %13 = ptrtoint ptr %grp_id23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %grp_id23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end15.if.end24_crit_edge
  %cond = sext i1 %cmp20.not to i32
  br label %cleanup

if.then30:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %info.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_list.i) #8
  %14 = getelementptr inbounds [2 x i16], ptr %addr_list.i, i32 0, i32 1
  %15 = ptrtoint ptr %addr_list.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 113, ptr %addr_list.i, align 2
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -2, ptr %14, align 2
  %17 = call ptr @memset(ptr %info.i, i32 0, i32 56)
  %call.i = call i32 @strscpy(ptr noundef nonnull %info.i, ptr noundef %3, i32 noundef 20) #8
  %ir_i2c_init_data.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 58
  %18 = ptrtoint ptr %ir_i2c_init_data.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.14, ptr %ir_i2c_init_data.i, align 8
  %internal_get_key_func.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 58, i32 5
  %19 = ptrtoint ptr %internal_get_key_func.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 5, ptr %internal_get_key_func.i, align 8
  %type2.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 58, i32 2
  %20 = ptrtoint ptr %type2.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 786436, ptr %type2.i, align 8
  %card_name.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 6
  %21 = ptrtoint ptr %card_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card_name.i, align 4
  %name.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 58, i32 1
  %23 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %name.i, align 4
  %platform_data.i = getelementptr inbounds %struct.i2c_board_info, ptr %info.i, i32 0, i32 4
  %24 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %ir_i2c_init_data.i, ptr %platform_data.i, align 4
  %call4.i = call ptr @i2c_new_scanned_device(ptr noundef %arrayidx1, ptr noundef nonnull %info.i, ptr noundef nonnull %addr_list.i, ptr noundef null) #8
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  %cond.i = sext i1 %cmp.i.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_list.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %info.i) #8
  br label %cleanup

if.end36:                                         ; preds = %entry
  %v4l2_dev37 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2
  %call39 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev37, ptr noundef %arrayidx1, ptr noundef %3, i8 noundef zeroext 76, ptr noundef null) #8
  %cmp40.not = icmp eq ptr %call39, null
  br i1 %cmp40.not, label %if.end36.if.end44_crit_edge, label %if.then42

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %grp_id43 = getelementptr inbounds %struct.v4l2_subdev, ptr %call39, i32 0, i32 10
  %25 = ptrtoint ptr %grp_id43 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl, ptr %grp_id43, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end36.if.end44_crit_edge
  %cond47 = sext i1 %cmp40.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.then30, %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end24 ], [ %cond.i, %if.then30 ], [ %cond47, %if.end44 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @cx18_find_hw(ptr noundef %cx, i32 noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %subdevs = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 2
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
define dso_local i32 @init_cx18_i2c(ptr noundef %cx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %0 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %v4l2_dev29 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2
  %pci_dev = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 1
  %arrayidx = getelementptr %struct.cx18, ptr %cx, i32 0, i32 56, i32 0
  %1 = call ptr @memcpy(ptr %arrayidx, ptr @cx18_i2c_algo_template, i32 40)
  %arrayidx4 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 57, i32 0
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cx, ptr %arrayidx4, align 8
  %bus_index = getelementptr %struct.cx18, ptr %cx, i32 0, i32 57, i32 0, i32 1
  %3 = ptrtoint ptr %bus_index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bus_index, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx4, ptr %arrayidx, align 8
  %arrayidx12 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 55, i32 0
  %5 = call ptr @memcpy(ptr %arrayidx12, ptr @cx18_i2c_adap_template, i32 1360)
  %algo_data = getelementptr %struct.cx18, ptr %cx, i32 0, i32 55, i32 0, i32 3
  %6 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx, ptr %algo_data, align 4
  %name19 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 55, i32 0, i32 12
  %call25 = tail call i32 @strlen(ptr noundef %name19) #12
  %add.ptr = getelementptr i8, ptr %name19, i32 %call25
  %7 = ptrtoint ptr %cx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cx, align 8
  %call26 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.3, i32 noundef %8, i32 noundef 0)
  %driver_data.i.i = getelementptr %struct.cx18, ptr %cx, i32 0, i32 55, i32 0, i32 9, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %v4l2_dev29, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pci_dev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %parent = getelementptr %struct.cx18, ptr %cx, i32 0, i32 55, i32 0, i32 9, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %parent, align 8
  %arrayidx.1 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 56, i32 1
  %13 = call ptr @memcpy(ptr %arrayidx.1, ptr @cx18_i2c_algo_template, i32 40)
  %arrayidx4.1 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 57, i32 1
  %14 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cx, ptr %arrayidx4.1, align 8
  %bus_index.1 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 57, i32 1, i32 1
  %15 = ptrtoint ptr %bus_index.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %bus_index.1, align 4
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx4.1, ptr %arrayidx.1, align 8
  %arrayidx12.1 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 55, i32 1
  %17 = call ptr @memcpy(ptr %arrayidx12.1, ptr @cx18_i2c_adap_template, i32 1360)
  %algo_data.1 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 55, i32 1, i32 3
  %18 = ptrtoint ptr %algo_data.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx.1, ptr %algo_data.1, align 4
  %name19.1 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 55, i32 1, i32 12
  %call25.1 = tail call i32 @strlen(ptr noundef %name19.1) #12
  %add.ptr.1 = getelementptr i8, ptr %name19.1, i32 %call25.1
  %19 = ptrtoint ptr %cx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cx, align 8
  %call26.1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.1, ptr noundef nonnull @.str.3, i32 noundef %20, i32 noundef 1)
  %driver_data.i.i.1 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 55, i32 1, i32 9, i32 8
  %21 = ptrtoint ptr %driver_data.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %v4l2_dev29, ptr %driver_data.i.i.1, align 4
  %22 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pci_dev, align 4
  %dev.1 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %parent.1 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 55, i32 1, i32 9, i32 1
  %24 = ptrtoint ptr %parent.1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %dev.1, ptr %parent.1, align 8
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %25 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %26, i32 15880448
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 801112832, i32 %27)
  %cmp34.not = icmp eq i32 %27, 801112832
  br i1 %cmp34.not, label %do.end3.if.end36_crit_edge, label %if.then35

do.end3.if.end36_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then35:                                        ; preds = %do.end3
  %28 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i168 = getelementptr i8, ptr %29, i32 13045764
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.backedge.i.i, %if.then35
  %i.01.i.i = phi i32 [ 0, %if.then35 ], [ %i.01.be.i.i, %for.body.backedge.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i168, i32 16) #8, !srcloc !53
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i168) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %cmp1.i.i = icmp eq i32 %30, -1
  br i1 %cmp1.i.i, label %for.inc.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %31 = and i32 %30, 1048592
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp4.i.i = icmp ne i32 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.i.i = icmp ult i32 %i.01.i.i, 9
  %or.cond.i.i = select i1 %cmp4.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.for.body.backedge.i.i_crit_edge, label %if.end.i.i.cx18_write_reg_expect.exit_crit_edge

if.end.i.i.cx18_write_reg_expect.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_write_reg_expect.exit

if.end.i.i.for.body.backedge.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.old.i.i = icmp ult i32 %i.01.i.i, 9
  br i1 %cmp.old.i.i, label %for.inc.i.i.for.body.backedge.i.i_crit_edge, label %for.inc.i.i.cx18_write_reg_expect.exit_crit_edge

for.inc.i.i.cx18_write_reg_expect.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_write_reg_expect.exit

for.inc.i.i.for.body.backedge.i.i_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge.i.i

for.body.backedge.i.i:                            ; preds = %for.inc.i.i.for.body.backedge.i.i_crit_edge, %if.end.i.i.for.body.backedge.i.i_crit_edge
  %i.01.be.i.i = add nuw nsw i32 %i.01.i.i, 1
  br label %for.body.i.i

cx18_write_reg_expect.exit:                       ; preds = %for.inc.i.i.cx18_write_reg_expect.exit_crit_edge, %if.end.i.i.cx18_write_reg_expect.exit_crit_edge
  %32 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i170 = getelementptr i8, ptr %33, i32 13045796
  br label %for.body.i.i173

for.body.i.i173:                                  ; preds = %for.body.backedge.i.i181, %cx18_write_reg_expect.exit
  %i.01.i.i171 = phi i32 [ 0, %cx18_write_reg_expect.exit ], [ %i.01.be.i.i180, %for.body.backedge.i.i181 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i170, i32 1048592) #8, !srcloc !53
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i170) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp1.i.i172 = icmp eq i32 %34, -1
  br i1 %cmp1.i.i172, label %for.inc.i.i179, label %if.end.i.i177

if.end.i.i177:                                    ; preds = %for.body.i.i173
  %35 = and i32 %34, 1048592
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %35)
  %cmp4.i.i174 = icmp ne i32 %35, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i171)
  %cmp.i.i175 = icmp ult i32 %i.01.i.i171, 9
  %or.cond.i.i176 = select i1 %cmp4.i.i174, i1 %cmp.i.i175, i1 false
  br i1 %or.cond.i.i176, label %if.end.i.i177.for.body.backedge.i.i181_crit_edge, label %if.end.i.i177.if.end36_crit_edge

if.end.i.i177.if.end36_crit_edge:                 ; preds = %if.end.i.i177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.end.i.i177.for.body.backedge.i.i181_crit_edge: ; preds = %if.end.i.i177
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge.i.i181

for.inc.i.i179:                                   ; preds = %for.body.i.i173
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i171)
  %cmp.old.i.i178 = icmp ult i32 %i.01.i.i171, 9
  br i1 %cmp.old.i.i178, label %for.inc.i.i179.for.body.backedge.i.i181_crit_edge, label %for.inc.i.i179.if.end36_crit_edge

for.inc.i.i179.if.end36_crit_edge:                ; preds = %for.inc.i.i179
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

for.inc.i.i179.for.body.backedge.i.i181_crit_edge: ; preds = %for.inc.i.i179
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge.i.i181

for.body.backedge.i.i181:                         ; preds = %for.inc.i.i179.for.body.backedge.i.i181_crit_edge, %if.end.i.i177.for.body.backedge.i.i181_crit_edge
  %i.01.be.i.i180 = add nuw nsw i32 %i.01.i.i171, 1
  br label %for.body.i.i173

if.end36:                                         ; preds = %for.inc.i.i179.if.end36_crit_edge, %if.end.i.i177.if.end36_crit_edge, %do.end3.if.end36_crit_edge
  %36 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i184 = getelementptr i8, ptr %37, i32 13041692
  br label %for.body.i.i187

for.body.i.i187:                                  ; preds = %for.body.backedge.i.i195, %if.end36
  %i.01.i.i185 = phi i32 [ 0, %if.end36 ], [ %i.01.be.i.i194, %for.body.backedge.i.i195 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i184, i32 49152) #8, !srcloc !53
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i184) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp1.i.i186 = icmp eq i32 %38, -1
  br i1 %cmp1.i.i186, label %for.inc.i.i193, label %if.end.i.i191

if.end.i.i191:                                    ; preds = %for.body.i.i187
  %39 = and i32 %38, -1073692672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp4.i.i188 = icmp ne i32 %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i185)
  %cmp.i.i189 = icmp ult i32 %i.01.i.i185, 9
  %or.cond.i.i190 = select i1 %cmp4.i.i188, i1 %cmp.i.i189, i1 false
  br i1 %or.cond.i.i190, label %if.end.i.i191.for.body.backedge.i.i195_crit_edge, label %if.end.i.i191.cx18_write_reg_expect.exit196_crit_edge

if.end.i.i191.cx18_write_reg_expect.exit196_crit_edge: ; preds = %if.end.i.i191
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_write_reg_expect.exit196

if.end.i.i191.for.body.backedge.i.i195_crit_edge: ; preds = %if.end.i.i191
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge.i.i195

for.inc.i.i193:                                   ; preds = %for.body.i.i187
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i185)
  %cmp.old.i.i192 = icmp ult i32 %i.01.i.i185, 9
  br i1 %cmp.old.i.i192, label %for.inc.i.i193.for.body.backedge.i.i195_crit_edge, label %for.inc.i.i193.cx18_write_reg_expect.exit196_crit_edge

for.inc.i.i193.cx18_write_reg_expect.exit196_crit_edge: ; preds = %for.inc.i.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_write_reg_expect.exit196

for.inc.i.i193.for.body.backedge.i.i195_crit_edge: ; preds = %for.inc.i.i193
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge.i.i195

for.body.backedge.i.i195:                         ; preds = %for.inc.i.i193.for.body.backedge.i.i195_crit_edge, %if.end.i.i191.for.body.backedge.i.i195_crit_edge
  %i.01.be.i.i194 = add nuw nsw i32 %i.01.i.i185, 1
  br label %for.body.i.i187

cx18_write_reg_expect.exit196:                    ; preds = %for.inc.i.i193.cx18_write_reg_expect.exit196_crit_edge, %if.end.i.i191.cx18_write_reg_expect.exit196_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #8
  %50 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i198 = getelementptr i8, ptr %51, i32 13041692
  br label %for.body.i.i201

for.body.i.i201:                                  ; preds = %for.body.backedge.i.i209, %cx18_write_reg_expect.exit196
  %i.01.i.i199 = phi i32 [ 0, %cx18_write_reg_expect.exit196 ], [ %i.01.be.i.i208, %for.body.backedge.i.i209 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 -1073692672) #8, !srcloc !53
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i198) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %52)
  %cmp1.i.i200 = icmp eq i32 %52, -1
  br i1 %cmp1.i.i200, label %for.inc.i.i207, label %if.end.i.i205

if.end.i.i205:                                    ; preds = %for.body.i.i201
  %53 = and i32 %52, -1073692672
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741824, i32 %53)
  %cmp4.i.i202 = icmp ne i32 %53, -1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i199)
  %cmp.i.i203 = icmp ult i32 %i.01.i.i199, 9
  %or.cond.i.i204 = select i1 %cmp4.i.i202, i1 %cmp.i.i203, i1 false
  br i1 %or.cond.i.i204, label %if.end.i.i205.for.body.backedge.i.i209_crit_edge, label %if.end.i.i205.cx18_write_reg_expect.exit210_crit_edge

if.end.i.i205.cx18_write_reg_expect.exit210_crit_edge: ; preds = %if.end.i.i205
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_write_reg_expect.exit210

if.end.i.i205.for.body.backedge.i.i209_crit_edge: ; preds = %if.end.i.i205
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge.i.i209

for.inc.i.i207:                                   ; preds = %for.body.i.i201
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i199)
  %cmp.old.i.i206 = icmp ult i32 %i.01.i.i199, 9
  br i1 %cmp.old.i.i206, label %for.inc.i.i207.for.body.backedge.i.i209_crit_edge, label %for.inc.i.i207.cx18_write_reg_expect.exit210_crit_edge

for.inc.i.i207.cx18_write_reg_expect.exit210_crit_edge: ; preds = %for.inc.i.i207
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_write_reg_expect.exit210

for.inc.i.i207.for.body.backedge.i.i209_crit_edge: ; preds = %for.inc.i.i207
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge.i.i209

for.body.backedge.i.i209:                         ; preds = %for.inc.i.i207.for.body.backedge.i.i209_crit_edge, %if.end.i.i205.for.body.backedge.i.i209_crit_edge
  %i.01.be.i.i208 = add nuw nsw i32 %i.01.i.i199, 1
  br label %for.body.i.i201

cx18_write_reg_expect.exit210:                    ; preds = %for.inc.i.i207.cx18_write_reg_expect.exit210_crit_edge, %if.end.i.i205.cx18_write_reg_expect.exit210_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %56(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #8
  %64 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i212 = getelementptr i8, ptr %65, i32 13041692
  br label %for.body.i.i215

for.body.i.i215:                                  ; preds = %for.body.backedge.i.i223, %cx18_write_reg_expect.exit210
  %i.01.i.i213 = phi i32 [ 0, %cx18_write_reg_expect.exit210 ], [ %i.01.be.i.i222, %for.body.backedge.i.i223 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i212, i32 49152) #8, !srcloc !53
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i212) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %cmp1.i.i214 = icmp eq i32 %66, -1
  br i1 %cmp1.i.i214, label %for.inc.i.i221, label %if.end.i.i219

if.end.i.i219:                                    ; preds = %for.body.i.i215
  %67 = and i32 %66, -1073692672
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp4.i.i216 = icmp ne i32 %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i213)
  %cmp.i.i217 = icmp ult i32 %i.01.i.i213, 9
  %or.cond.i.i218 = select i1 %cmp4.i.i216, i1 %cmp.i.i217, i1 false
  br i1 %or.cond.i.i218, label %if.end.i.i219.for.body.backedge.i.i223_crit_edge, label %if.end.i.i219.cx18_write_reg_expect.exit224_crit_edge

if.end.i.i219.cx18_write_reg_expect.exit224_crit_edge: ; preds = %if.end.i.i219
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_write_reg_expect.exit224

if.end.i.i219.for.body.backedge.i.i223_crit_edge: ; preds = %if.end.i.i219
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge.i.i223

for.inc.i.i221:                                   ; preds = %for.body.i.i215
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i213)
  %cmp.old.i.i220 = icmp ult i32 %i.01.i.i213, 9
  br i1 %cmp.old.i.i220, label %for.inc.i.i221.for.body.backedge.i.i223_crit_edge, label %for.inc.i.i221.cx18_write_reg_expect.exit224_crit_edge

for.inc.i.i221.cx18_write_reg_expect.exit224_crit_edge: ; preds = %for.inc.i.i221
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_write_reg_expect.exit224

for.inc.i.i221.for.body.backedge.i.i223_crit_edge: ; preds = %for.inc.i.i221
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge.i.i223

for.body.backedge.i.i223:                         ; preds = %for.inc.i.i221.for.body.backedge.i.i223_crit_edge, %if.end.i.i219.for.body.backedge.i.i223_crit_edge
  %i.01.be.i.i222 = add nuw nsw i32 %i.01.i.i213, 1
  br label %for.body.i.i215

cx18_write_reg_expect.exit224:                    ; preds = %for.inc.i.i221.cx18_write_reg_expect.exit224_crit_edge, %if.end.i.i219.cx18_write_reg_expect.exit224_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %68(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %76(i32 noundef 214748000) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748000) #8
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 12582912, i32 noundef 13054152)
  %78 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i226 = getelementptr i8, ptr %79, i32 13054148
  br label %for.body.i.i229

for.body.i.i229:                                  ; preds = %for.body.backedge.i.i237, %cx18_write_reg_expect.exit224
  %i.01.i.i227 = phi i32 [ 0, %cx18_write_reg_expect.exit224 ], [ %i.01.be.i.i236, %for.body.backedge.i.i237 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i226, i32 49152) #8, !srcloc !53
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i226) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp1.i.i228 = icmp eq i32 %80, -1
  br i1 %cmp1.i.i228, label %for.inc.i.i235, label %if.end.i.i233

if.end.i.i233:                                    ; preds = %for.body.i.i229
  %81 = and i32 %80, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp4.i.i230 = icmp ne i32 %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i227)
  %cmp.i.i231 = icmp ult i32 %i.01.i.i227, 9
  %or.cond.i.i232 = select i1 %cmp4.i.i230, i1 %cmp.i.i231, i1 false
  br i1 %or.cond.i.i232, label %if.end.i.i233.for.body.backedge.i.i237_crit_edge, label %if.end.i.i233.cx18_write_reg_expect.exit238_crit_edge

if.end.i.i233.cx18_write_reg_expect.exit238_crit_edge: ; preds = %if.end.i.i233
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_write_reg_expect.exit238

if.end.i.i233.for.body.backedge.i.i237_crit_edge: ; preds = %if.end.i.i233
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge.i.i237

for.inc.i.i235:                                   ; preds = %for.body.i.i229
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i227)
  %cmp.old.i.i234 = icmp ult i32 %i.01.i.i227, 9
  br i1 %cmp.old.i.i234, label %for.inc.i.i235.for.body.backedge.i.i237_crit_edge, label %for.inc.i.i235.cx18_write_reg_expect.exit238_crit_edge

for.inc.i.i235.cx18_write_reg_expect.exit238_crit_edge: ; preds = %for.inc.i.i235
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_write_reg_expect.exit238

for.inc.i.i235.for.body.backedge.i.i237_crit_edge: ; preds = %for.inc.i.i235
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.backedge.i.i237

for.body.backedge.i.i237:                         ; preds = %for.inc.i.i235.for.body.backedge.i.i237_crit_edge, %if.end.i.i233.for.body.backedge.i.i237_crit_edge
  %i.01.be.i.i236 = add nuw nsw i32 %i.01.i.i227, 1
  br label %for.body.i.i229

cx18_write_reg_expect.exit238:                    ; preds = %for.inc.i.i235.cx18_write_reg_expect.exit238_crit_edge, %if.end.i.i233.cx18_write_reg_expect.exit238_crit_edge
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 138251, i32 noundef 15814656)
  %82 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx4, align 4
  %84 = ptrtoint ptr %bus_index to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bus_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i = icmp eq i32 %85, 0
  %cond.i = select i1 %tobool.not.i, i32 15814656, i32 15880448
  %reg_mem.i.i = getelementptr inbounds %struct.cx18, ptr %83, i32 0, i32 40
  %86 = ptrtoint ptr %reg_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg_mem.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %87, i32 %cond.i
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %89 = or i32 %88, 16777216
  %90 = tail call i32 @llvm.bswap.i32(i32 %89)
  tail call fastcc void @cx18_write_reg(ptr noundef %83, i32 noundef %90, i32 noundef %cond.i) #8
  %91 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx4, align 4
  %93 = ptrtoint ptr %bus_index to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %bus_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool.not.i240 = icmp eq i32 %94, 0
  %cond.i241 = select i1 %tobool.not.i240, i32 15814656, i32 15880448
  %reg_mem.i.i242 = getelementptr inbounds %struct.cx18, ptr %92, i32 0, i32 40
  %95 = ptrtoint ptr %reg_mem.i.i242 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg_mem.i.i242, align 8
  %add.ptr.i.i243 = getelementptr i8, ptr %96, i32 %cond.i241
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i243) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %98 = or i32 %97, 33554432
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  tail call fastcc void @cx18_write_reg(ptr noundef %92, i32 noundef %99, i32 noundef %cond.i241) #8
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef 138251, i32 noundef 15880448)
  %100 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx4.1, align 4
  %102 = ptrtoint ptr %bus_index.1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %bus_index.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i246 = icmp eq i32 %103, 0
  %cond.i247 = select i1 %tobool.not.i246, i32 15814656, i32 15880448
  %reg_mem.i.i248 = getelementptr inbounds %struct.cx18, ptr %101, i32 0, i32 40
  %104 = ptrtoint ptr %reg_mem.i.i248 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %reg_mem.i.i248, align 8
  %add.ptr.i.i249 = getelementptr i8, ptr %105, i32 %cond.i247
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i249) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %107 = or i32 %106, 16777216
  %108 = tail call i32 @llvm.bswap.i32(i32 %107)
  tail call fastcc void @cx18_write_reg(ptr noundef %101, i32 noundef %108, i32 noundef %cond.i247) #8
  %109 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx4.1, align 4
  %111 = ptrtoint ptr %bus_index.1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %bus_index.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool.not.i252 = icmp eq i32 %112, 0
  %cond.i253 = select i1 %tobool.not.i252, i32 15814656, i32 15880448
  %reg_mem.i.i254 = getelementptr inbounds %struct.cx18, ptr %110, i32 0, i32 40
  %113 = ptrtoint ptr %reg_mem.i.i254 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %reg_mem.i.i254, align 8
  %add.ptr.i.i255 = getelementptr i8, ptr %114, i32 %cond.i253
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i255) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %116 = or i32 %115, 33554432
  %117 = tail call i32 @llvm.bswap.i32(i32 %116)
  tail call fastcc void @cx18_write_reg(ptr noundef %110, i32 noundef %117, i32 noundef %cond.i253) #8
  %subdevs = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 2
  %118 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pn261 = load ptr, ptr %subdevs, align 4
  %cmp66.not263 = icmp eq ptr %.pn261, %subdevs
  br i1 %cmp66.not263, label %cx18_write_reg_expect.exit238.do.end89_crit_edge, label %cx18_write_reg_expect.exit238.for.body67_crit_edge

cx18_write_reg_expect.exit238.for.body67_crit_edge: ; preds = %cx18_write_reg_expect.exit238
  br label %for.body67

cx18_write_reg_expect.exit238.do.end89_crit_edge: ; preds = %cx18_write_reg_expect.exit238
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end89

for.body67:                                       ; preds = %for.inc81.for.body67_crit_edge, %cx18_write_reg_expect.exit238.for.body67_crit_edge
  %.pn264 = phi ptr [ %.pn, %for.inc81.for.body67_crit_edge ], [ %.pn261, %cx18_write_reg_expect.exit238.for.body67_crit_edge ]
  %__sd.0265 = getelementptr i8, ptr %.pn264, i32 -80
  %grp_id = getelementptr i8, ptr %.pn264, i32 68
  %119 = ptrtoint ptr %grp_id to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %grp_id, align 4
  %and68 = and i32 %120, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %for.body67.for.inc81_crit_edge, label %land.lhs.true

for.body67.for.inc81_crit_edge:                   ; preds = %for.body67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81

land.lhs.true:                                    ; preds = %for.body67
  %ops = getelementptr i8, ptr %.pn264, i32 24
  %121 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %ops, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %122, align 4
  %tobool70.not = icmp eq ptr %124, null
  br i1 %tobool70.not, label %land.lhs.true.for.inc81_crit_edge, label %land.lhs.true71

land.lhs.true.for.inc81_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81

land.lhs.true71:                                  ; preds = %land.lhs.true
  %reset = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %124, i32 0, i32 4
  %125 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %reset, align 4
  %tobool74.not = icmp eq ptr %126, null
  br i1 %tobool74.not, label %land.lhs.true71.for.inc81_crit_edge, label %if.then75

land.lhs.true71.for.inc81_crit_edge:              ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc81

if.then75:                                        ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #10
  %call79 = tail call i32 %126(ptr noundef %__sd.0265, i32 noundef 0) #8
  br label %for.inc81

for.inc81:                                        ; preds = %if.then75, %land.lhs.true71.for.inc81_crit_edge, %land.lhs.true.for.inc81_crit_edge, %for.body67.for.inc81_crit_edge
  %127 = ptrtoint ptr %.pn264 to i32
  call void @__asan_load4_noabort(i32 %127)
  %.pn = load ptr, ptr %.pn264, align 4
  %cmp66.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp66.not, label %for.inc81.do.end89_crit_edge, label %for.inc81.for.body67_crit_edge

for.inc81.for.body67_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body67

for.inc81.do.end89_crit_edge:                     ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end89

do.end89:                                         ; preds = %for.inc81.do.end89_crit_edge, %cx18_write_reg_expect.exit238.do.end89_crit_edge
  %call94 = tail call i32 @i2c_bit_add_bus(ptr noundef %arrayidx12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %do.end89.cleanup_crit_edge

do.end89.cleanup_crit_edge:                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end97:                                         ; preds = %do.end89
  %call100 = tail call i32 @i2c_bit_add_bus(ptr noundef %arrayidx12.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end97.cleanup_crit_edge, label %err_del_bus_0

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_del_bus_0:                                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_adapter(ptr noundef %arrayidx12) #8
  br label %cleanup

cleanup:                                          ; preds = %err_del_bus_0, %if.end97.cleanup_crit_edge, %do.end89.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end97.cleanup_crit_edge ], [ %call94, %do.end89.cleanup_crit_edge ], [ %call100, %err_del_bus_0 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx18_write_reg(ptr nocapture noundef readonly %cx, i32 noundef %val, i32 noundef %reg) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %reg_mem = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %0 = ptrtoint ptr %reg_mem to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_mem, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !53
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !50
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %val)
  %cmp1.i = icmp eq i32 %4, %val
  br i1 %cmp1.i, label %entry.cx18_writel.exit_crit_edge, label %for.cond.i

entry.cx18_writel.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_writel.exit

for.cond.i:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !53
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !50
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %val)
  %cmp1.1.i = icmp eq i32 %6, %val
  br i1 %cmp1.1.i, label %for.cond.i.cx18_writel.exit_crit_edge, label %for.cond.1.i

for.cond.i.cx18_writel.exit_crit_edge:            ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_writel.exit

for.cond.1.i:                                     ; preds = %for.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !53
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !50
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %val)
  %cmp1.2.i = icmp eq i32 %8, %val
  br i1 %cmp1.2.i, label %for.cond.1.i.cx18_writel.exit_crit_edge, label %for.cond.2.i

for.cond.1.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_writel.exit

for.cond.2.i:                                     ; preds = %for.cond.1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !53
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !50
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val)
  %cmp1.3.i = icmp eq i32 %10, %val
  br i1 %cmp1.3.i, label %for.cond.2.i.cx18_writel.exit_crit_edge, label %for.cond.3.i

for.cond.2.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_writel.exit

for.cond.3.i:                                     ; preds = %for.cond.2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !53
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !50
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %val)
  %cmp1.4.i = icmp eq i32 %12, %val
  br i1 %cmp1.4.i, label %for.cond.3.i.cx18_writel.exit_crit_edge, label %for.cond.4.i

for.cond.3.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_writel.exit

for.cond.4.i:                                     ; preds = %for.cond.3.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !53
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !50
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %val)
  %cmp1.5.i = icmp eq i32 %14, %val
  br i1 %cmp1.5.i, label %for.cond.4.i.cx18_writel.exit_crit_edge, label %for.cond.5.i

for.cond.4.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_writel.exit

for.cond.5.i:                                     ; preds = %for.cond.4.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !53
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !50
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %val)
  %cmp1.6.i = icmp eq i32 %16, %val
  br i1 %cmp1.6.i, label %for.cond.5.i.cx18_writel.exit_crit_edge, label %for.cond.6.i

for.cond.5.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_writel.exit

for.cond.6.i:                                     ; preds = %for.cond.5.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !53
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !50
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %val)
  %cmp1.7.i = icmp eq i32 %18, %val
  br i1 %cmp1.7.i, label %for.cond.6.i.cx18_writel.exit_crit_edge, label %for.cond.7.i

for.cond.6.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_writel.exit

for.cond.7.i:                                     ; preds = %for.cond.6.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !53
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !50
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %val)
  %cmp1.8.i = icmp eq i32 %20, %val
  br i1 %cmp1.8.i, label %for.cond.7.i.cx18_writel.exit_crit_edge, label %for.cond.8.i

for.cond.7.i.cx18_writel.exit_crit_edge:          ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cx18_writel.exit

for.cond.8.i:                                     ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !53
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  br label %cx18_writel.exit

cx18_writel.exit:                                 ; preds = %for.cond.8.i, %for.cond.7.i.cx18_writel.exit_crit_edge, %for.cond.6.i.cx18_writel.exit_crit_edge, %for.cond.5.i.cx18_writel.exit_crit_edge, %for.cond.4.i.cx18_writel.exit_crit_edge, %for.cond.3.i.cx18_writel.exit_crit_edge, %for.cond.2.i.cx18_writel.exit_crit_edge, %for.cond.1.i.cx18_writel.exit_crit_edge, %for.cond.i.cx18_writel.exit_crit_edge, %entry.cx18_writel.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx18_setscl(ptr nocapture noundef readonly %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %bus_index2 = getelementptr inbounds %struct.cx18_i2c_algo_callback_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %bus_index2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_index2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 15814656, i32 15880448
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 40
  %4 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %cond
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool3.not = icmp ne i32 %state, 0
  %7 = and i32 %6, -16777217
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %masksel = zext i1 %tobool3.not to i32
  %and.sink = or i32 %8, %masksel
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %and.sink, i32 noundef %cond)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx18_setsda(ptr nocapture noundef readonly %data, i32 noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %bus_index2 = getelementptr inbounds %struct.cx18_i2c_algo_callback_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %bus_index2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_index2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 15814656, i32 15880448
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 40
  %4 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %cond
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool3.not = icmp eq i32 %state, 0
  %7 = and i32 %6, -33554433
  %8 = call i32 @llvm.bswap.i32(i32 %7)
  %masksel = select i1 %tobool3.not, i32 0, i32 2
  %and.sink = or i32 %8, %masksel
  tail call fastcc void @cx18_write_reg(ptr noundef %1, i32 noundef %and.sink, i32 noundef %cond)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_bit_add_bus(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_cx18_i2c(ptr noundef %cx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %0 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %1 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %2, i32 15814656
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %4 = or i32 %3, 67108864
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %5, i32 noundef 15814656)
  %6 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i15 = getelementptr i8, ptr %7, i32 15880448
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %9 = or i32 %8, 67108864
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call fastcc void @cx18_write_reg(ptr noundef %cx, i32 noundef %10, i32 noundef 15880448)
  %arrayidx = getelementptr %struct.cx18, ptr %cx, i32 0, i32 55, i32 0
  tail call void @i2c_del_adapter(ptr noundef %arrayidx) #8
  %arrayidx.1 = getelementptr %struct.cx18, ptr %cx, i32 0, i32 55, i32 1
  tail call void @i2c_del_adapter(ptr noundef %arrayidx.1) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_scanned_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_getsda(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %bus_index2 = getelementptr inbounds %struct.cx18_i2c_algo_callback_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %bus_index2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_index2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 15814664, i32 15880456
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 40
  %4 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %cond
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !50
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %and = and i32 %7, 8
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx18_getscl(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %bus_index2 = getelementptr inbounds %struct.cx18_i2c_algo_callback_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %bus_index2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bus_index2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 15814664, i32 15880456
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 40
  %4 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 %cond
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !50
  %7 = lshr i32 %6, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  %and = and i32 %7, 4
  ret i32 %and
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-i2c.c", i32 220, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @init_cx18_i2c._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @init_cx18_i2c._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cx18/cx18-i2c.c", i32 233, i32 5}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx18/cx18-i2c.c", i32 291, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @exit_cx18_i2c._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @exit_cx18_i2c._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @hw_bus, !14, !"hw_bus", i1 false, i1 false}
!14 = !{!"../drivers/media/pci/cx18/cx18-i2c.c", i32 46, i32 17}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/pci/cx18/cx18-i2c.c", i32 59, i32 2}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/cx18/cx18-i2c.c", i32 60, i32 2}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/cx18/cx18-i2c.c", i32 61, i32 2}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/pci/cx18/cx18-i2c.c", i32 62, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/pci/cx18/cx18-i2c.c", i32 63, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/pci/cx18/cx18-i2c.c", i32 64, i32 2}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/pci/cx18/cx18-i2c.c", i32 65, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/pci/cx18/cx18-i2c.c", i32 66, i32 2}
!31 = !{ptr @hw_devicenames, !32, !"hw_devicenames", i1 false, i1 false}
!32 = !{!"../drivers/media/pci/cx18/cx18-i2c.c", i32 58, i32 27}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/cx18/cx18-i2c.c", i32 82, i32 25}
!35 = distinct !{null, !36, !"hw_addrs", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/cx18/cx18-i2c.c", i32 33, i32 17}
!37 = !{ptr @cx18_i2c_algo_template, !38, !"cx18_i2c_algo_template", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/cx18/cx18-i2c.c", i32 207, i32 39}
!39 = !{ptr @cx18_i2c_adap_template, !40, !"cx18_i2c_adap_template", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/cx18/cx18-i2c.c", i32 197, i32 33}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{i64 5749362}
!51 = !{i64 2158648955}
!52 = !{i64 2158649325}
!53 = !{i64 5748944}
