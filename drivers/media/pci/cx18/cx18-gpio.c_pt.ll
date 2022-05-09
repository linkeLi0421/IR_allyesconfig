; ModuleID = '/llk/IR_all_yes/drivers/media/pci/cx18/cx18-gpio.c_pt.bc'
source_filename = "../drivers/media/pci/cx18/cx18-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+cx18_reset_ir_gpio\22, \22a\22\09"
module asm "\09.weak\09__crc_cx18_reset_ir_gpio\09\09\09\09"
module asm "\09.long\09__crc_cx18_reset_ir_gpio\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx18_reset_ir_gpio:\09\09\09\09\09"
module asm "\09.asciz \09\22cx18_reset_ir_gpio\22\09\09\09\09\09"
module asm "__kstrtabns_cx18_reset_ir_gpio:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.cx18_card = type { i32, ptr, ptr, i32, i32, i32, i32, [6 x %struct.cx18_card_video_input], [3 x %struct.cx18_card_audio_input], %struct.cx18_card_audio_input, i8, %struct.cx18_gpio_init, %struct.cx18_gpio_i2c_slave_reset, %struct.cx18_gpio_audio_input, [2 x %struct.cx18_card_tuner], ptr, %struct.cx18_ddr, ptr }
%struct.cx18_card_video_input = type { i8, i8, i32 }
%struct.cx18_card_audio_input = type { i8, i32, i16 }
%struct.cx18_gpio_init = type { i32, i32 }
%struct.cx18_gpio_i2c_slave_reset = type { i32, i32, i32, i32, i32 }
%struct.cx18_gpio_audio_input = type { i32, i32, i32, i32 }
%struct.cx18_card_tuner = type { i64, i32 }
%struct.cx18_ddr = type { i32, i32, i32, i32, i32, i32 }

@cx18_debug = external dso_local local_unnamed_addr global i32, align 4
@cx18_gpio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s:  info: GPIO initial dir: %08x/%08x out: %08x/%08x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cx18_gpio_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/media/pci/cx18/cx18-gpio.c\00", [61 x i8] zeroinitializer }, align 32
@cx18_gpio_init._entry_ptr = internal global ptr @cx18_gpio_init._entry, section ".printk_index", align 4
@gpiomux_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @gpiomux_core_ops, ptr @gpiomux_tuner_ops, ptr @gpiomux_audio_ops, ptr @gpiomux_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio-mux\00", [23 x i8] zeroinitializer }, align 32
@resetctrl_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @resetctrl_core_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-reset-ctrl\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@cx18_reset_ir_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s:  info: Resetting IR microcontroller\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx18_reset_ir_gpio\00", [45 x i8] zeroinitializer }, align 32
@cx18_reset_ir_gpio._entry_ptr = internal global ptr @cx18_reset_ir_gpio._entry, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@__kstrtab_cx18_reset_ir_gpio = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx18_reset_ir_gpio = external dso_local constant [0 x i8], align 1
@__ksymtab_cx18_reset_ir_gpio = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx18_reset_ir_gpio to i32), ptr @__kstrtab_cx18_reset_ir_gpio, ptr @__kstrtabns_cx18_reset_ir_gpio }, section "___ksymtab+cx18_reset_ir_gpio", align 4
@cx18_reset_tuner_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s:  info: Resetting XCeive tuner\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cx18_reset_tuner_gpio\00", [42 x i8] zeroinitializer }, align 32
@cx18_reset_tuner_gpio._entry_ptr = internal global ptr @cx18_reset_tuner_gpio._entry, section ".printk_index", align 4
@gpiomux_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @gpiomux_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@gpiomux_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr null, ptr @gpiomux_s_radio, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@gpiomux_audio_ops = internal constant { %struct.v4l2_subdev_audio_ops, [16 x i8] } { %struct.v4l2_subdev_audio_ops { ptr null, ptr null, ptr @gpiomux_s_audio_routing, ptr null }, [16 x i8] zeroinitializer }, align 32
@gpiomux_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr @gpiomux_s_std, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@gpiomux_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: GPIO:  direction 0x%08x, value 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpiomux_log_status\00", [45 x i8] zeroinitializer }, align 32
@gpiomux_log_status._entry_ptr = internal global ptr @gpiomux_log_status._entry, section ".printk_index", align 4
@resetctrl_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @resetctrl_log_status, ptr null, ptr null, ptr null, ptr @resetctrl_reset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@resetctrl_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.12, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"resetctrl_log_status\00", [43 x i8] zeroinitializer }, align 32
@resetctrl_log_status._entry_ptr = internal global ptr @resetctrl_log_status._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 270, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"gpiomux_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 183, i32 37 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 290, i32 9 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"resetctrl_ops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 247, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 295, i32 9 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 303, i32 39 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 315, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 334, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"gpiomux_core_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 167, i32 42 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"gpiomux_tuner_ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 171, i32 43 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"gpiomux_audio_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 175, i32 43 }
@___asan_gen_.70 = private unnamed_addr constant [18 x i8] c"gpiomux_video_ops\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 179, i32 43 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 99, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"resetctrl_core_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 242, i32 42 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [38 x i8] c"../drivers/media/pci/cx18/cx18-gpio.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 198, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__ksymtab_cx18_reset_ir_gpio, ptr @cx18_gpio_init._entry, ptr @cx18_gpio_init._entry_ptr, ptr @cx18_reset_ir_gpio._entry, ptr @cx18_reset_ir_gpio._entry_ptr, ptr @cx18_reset_tuner_gpio._entry, ptr @cx18_reset_tuner_gpio._entry_ptr, ptr @gpiomux_log_status._entry, ptr @gpiomux_log_status._entry_ptr, ptr @resetctrl_log_status._entry, ptr @resetctrl_log_status._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @gpiomux_ops, ptr @.str.3, ptr @resetctrl_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @gpiomux_core_ops, ptr @gpiomux_tuner_ops, ptr @gpiomux_audio_ops, ptr @gpiomux_video_ops, ptr @.str.10, ptr @.str.11, ptr @resetctrl_core_ops, ptr @.str.12], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_gpio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiomux_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resetctrl_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_reset_ir_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx18_reset_tuner_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiomux_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiomux_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiomux_audio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiomux_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiomux_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resetctrl_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resetctrl_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_gpio_init(ptr noundef %cx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_lock = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 61
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #5
  %card = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 5
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %gpio_init = getelementptr inbounds %struct.cx18_card, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %gpio_init to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_init, align 8
  %gpio_dir = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 59
  %4 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %gpio_dir, align 8
  %initial_value = getelementptr inbounds %struct.cx18_card, ptr %1, i32 0, i32 11, i32 1
  %5 = ptrtoint ptr %initial_value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %initial_value, align 4
  %gpio_val = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 60
  %7 = ptrtoint ptr %gpio_val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %gpio_val, align 4
  %tuner = getelementptr inbounds %struct.cx18_card, ptr %1, i32 0, i32 14, i32 0, i32 1
  %8 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tuner, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %9)
  %cmp = icmp eq i32 %9, 71
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %xceive_pin = getelementptr inbounds %struct.cx18_card, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %xceive_pin to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %xceive_pin, align 4
  %conv = zext i8 %11 to i32
  %shl = shl nuw i32 1, %conv
  %or = or i32 %shl, %3
  %12 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %gpio_dir, align 8
  %13 = load i8, ptr %xceive_pin, align 4
  %conv8 = zext i8 %13 to i32
  %shl9 = shl nuw i32 1, %conv8
  %or11 = or i32 %shl9, %6
  %14 = ptrtoint ptr %gpio_val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or11, ptr %gpio_val, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gpio_dir, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp13 = icmp eq i32 %16, 0
  br i1 %cmp13, label %if.end.return_crit_edge, label %do.body

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.body:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %17 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end25_crit_edge, label %do.end

do.body.do.end25_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end25

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %18 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %19, i32 13074696
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !56
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %22 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i46 = getelementptr i8, ptr %23, i32 13074700
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #5, !srcloc !56
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %26 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i48 = getelementptr i8, ptr %27, i32 13074688
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i48) #5, !srcloc !56
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %30 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i50 = getelementptr i8, ptr %31, i32 13074692
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #5, !srcloc !56
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %21, i32 noundef %25, i32 noundef %29, i32 noundef %33) #8
  br label %do.end25

do.end25:                                         ; preds = %do.end, %do.body.do.end25_crit_edge
  tail call fastcc void @gpio_write(ptr noundef %cx)
  br label %return

return:                                           ; preds = %do.end25, %if.end.return_crit_edge
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_write(ptr nocapture noundef readonly %cx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpio_dir = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 59
  %0 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_dir, align 8
  %and = and i32 %1, 65535
  %gpio_val = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 60
  %2 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_val, align 4
  %and1 = and i32 %3, 65535
  %shr = lshr i32 %1, 16
  %shr4 = lshr i32 %3, 16
  %shl = shl i32 %1, 16
  %reg_mem.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 40
  %4 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 13074696
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl) #5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.backedge.i.i, %entry
  %i.01.i.i = phi i32 [ 0, %entry ], [ %i.01.be.i.i, %for.body.backedge.i.i ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #5, !srcloc !59
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp1.i.i = icmp eq i32 %7, -1
  br i1 %cmp1.i.i, label %for.inc.i.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  %9 = and i32 %8, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp4.i.i = icmp ne i32 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.i.i = icmp ult i32 %i.01.i.i, 9
  %or.cond.i.i = select i1 %cmp4.i.i, i1 %cmp.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end.i.i.for.body.backedge.i.i_crit_edge, label %if.end.i.i.cx18_write_reg_expect.exit_crit_edge

if.end.i.i.cx18_write_reg_expect.exit_crit_edge:  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cx18_write_reg_expect.exit

if.end.i.i.for.body.backedge.i.i_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i)
  %cmp.old.i.i = icmp ult i32 %i.01.i.i, 9
  br i1 %cmp.old.i.i, label %for.inc.i.i.for.body.backedge.i.i_crit_edge, label %for.inc.i.i.cx18_write_reg_expect.exit_crit_edge

for.inc.i.i.cx18_write_reg_expect.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cx18_write_reg_expect.exit

for.inc.i.i.for.body.backedge.i.i_crit_edge:      ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge.i.i

for.body.backedge.i.i:                            ; preds = %for.inc.i.i.for.body.backedge.i.i_crit_edge, %if.end.i.i.for.body.backedge.i.i_crit_edge
  %i.01.be.i.i = add nuw nsw i32 %i.01.i.i, 1
  br label %for.body.i.i

cx18_write_reg_expect.exit:                       ; preds = %for.inc.i.i.cx18_write_reg_expect.exit_crit_edge, %if.end.i.i.cx18_write_reg_expect.exit_crit_edge
  %or = or i32 %and1, %shl
  %10 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i28 = getelementptr i8, ptr %11, i32 13074688
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  br label %for.body.i.i31

for.body.i.i31:                                   ; preds = %for.body.backedge.i.i39, %cx18_write_reg_expect.exit
  %i.01.i.i29 = phi i32 [ 0, %cx18_write_reg_expect.exit ], [ %i.01.be.i.i38, %for.body.backedge.i.i39 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %12) #5, !srcloc !59
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp1.i.i30 = icmp eq i32 %13, -1
  br i1 %cmp1.i.i30, label %for.inc.i.i37, label %if.end.i.i35

if.end.i.i35:                                     ; preds = %for.body.i.i31
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %15 = xor i32 %14, %3
  %16 = and i32 %15, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp4.i.i32 = icmp ne i32 %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i29)
  %cmp.i.i33 = icmp ult i32 %i.01.i.i29, 9
  %or.cond.i.i34 = select i1 %cmp4.i.i32, i1 %cmp.i.i33, i1 false
  br i1 %or.cond.i.i34, label %if.end.i.i35.for.body.backedge.i.i39_crit_edge, label %if.end.i.i35.cx18_write_reg_expect.exit40_crit_edge

if.end.i.i35.cx18_write_reg_expect.exit40_crit_edge: ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cx18_write_reg_expect.exit40

if.end.i.i35.for.body.backedge.i.i39_crit_edge:   ; preds = %if.end.i.i35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge.i.i39

for.inc.i.i37:                                    ; preds = %for.body.i.i31
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i29)
  %cmp.old.i.i36 = icmp ult i32 %i.01.i.i29, 9
  br i1 %cmp.old.i.i36, label %for.inc.i.i37.for.body.backedge.i.i39_crit_edge, label %for.inc.i.i37.cx18_write_reg_expect.exit40_crit_edge

for.inc.i.i37.cx18_write_reg_expect.exit40_crit_edge: ; preds = %for.inc.i.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cx18_write_reg_expect.exit40

for.inc.i.i37.for.body.backedge.i.i39_crit_edge:  ; preds = %for.inc.i.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge.i.i39

for.body.backedge.i.i39:                          ; preds = %for.inc.i.i37.for.body.backedge.i.i39_crit_edge, %if.end.i.i35.for.body.backedge.i.i39_crit_edge
  %i.01.be.i.i38 = add nuw nsw i32 %i.01.i.i29, 1
  br label %for.body.i.i31

cx18_write_reg_expect.exit40:                     ; preds = %for.inc.i.i37.cx18_write_reg_expect.exit40_crit_edge, %if.end.i.i35.cx18_write_reg_expect.exit40_crit_edge
  %shl6 = and i32 %1, -65536
  %17 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i42 = getelementptr i8, ptr %18, i32 13074700
  %19 = tail call i32 @llvm.bswap.i32(i32 %shl6) #5
  br label %for.body.i.i45

for.body.i.i45:                                   ; preds = %for.body.backedge.i.i53, %cx18_write_reg_expect.exit40
  %i.01.i.i43 = phi i32 [ 0, %cx18_write_reg_expect.exit40 ], [ %i.01.be.i.i52, %for.body.backedge.i.i53 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %19) #5, !srcloc !59
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp1.i.i44 = icmp eq i32 %20, -1
  br i1 %cmp1.i.i44, label %for.inc.i.i51, label %if.end.i.i49

if.end.i.i49:                                     ; preds = %for.body.i.i45
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %22 = and i32 %21, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp4.i.i46 = icmp ne i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i43)
  %cmp.i.i47 = icmp ult i32 %i.01.i.i43, 9
  %or.cond.i.i48 = select i1 %cmp4.i.i46, i1 %cmp.i.i47, i1 false
  br i1 %or.cond.i.i48, label %if.end.i.i49.for.body.backedge.i.i53_crit_edge, label %if.end.i.i49.cx18_write_reg_expect.exit54_crit_edge

if.end.i.i49.cx18_write_reg_expect.exit54_crit_edge: ; preds = %if.end.i.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %cx18_write_reg_expect.exit54

if.end.i.i49.for.body.backedge.i.i53_crit_edge:   ; preds = %if.end.i.i49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge.i.i53

for.inc.i.i51:                                    ; preds = %for.body.i.i45
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i43)
  %cmp.old.i.i50 = icmp ult i32 %i.01.i.i43, 9
  br i1 %cmp.old.i.i50, label %for.inc.i.i51.for.body.backedge.i.i53_crit_edge, label %for.inc.i.i51.cx18_write_reg_expect.exit54_crit_edge

for.inc.i.i51.cx18_write_reg_expect.exit54_crit_edge: ; preds = %for.inc.i.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cx18_write_reg_expect.exit54

for.inc.i.i51.for.body.backedge.i.i53_crit_edge:  ; preds = %for.inc.i.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge.i.i53

for.body.backedge.i.i53:                          ; preds = %for.inc.i.i51.for.body.backedge.i.i53_crit_edge, %if.end.i.i49.for.body.backedge.i.i53_crit_edge
  %i.01.be.i.i52 = add nuw nsw i32 %i.01.i.i43, 1
  br label %for.body.i.i45

cx18_write_reg_expect.exit54:                     ; preds = %for.inc.i.i51.cx18_write_reg_expect.exit54_crit_edge, %if.end.i.i49.cx18_write_reg_expect.exit54_crit_edge
  %or9 = or i32 %shr4, %shl6
  %23 = ptrtoint ptr %reg_mem.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_mem.i, align 8
  %add.ptr.i56 = getelementptr i8, ptr %24, i32 13074692
  %25 = tail call i32 @llvm.bswap.i32(i32 %or9) #5
  br label %for.body.i.i59

for.body.i.i59:                                   ; preds = %for.body.backedge.i.i67, %cx18_write_reg_expect.exit54
  %i.01.i.i57 = phi i32 [ 0, %cx18_write_reg_expect.exit54 ], [ %i.01.be.i.i66, %for.body.backedge.i.i67 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 %25) #5, !srcloc !59
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i56) #5, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %cmp1.i.i58 = icmp eq i32 %26, -1
  br i1 %cmp1.i.i58, label %for.inc.i.i65, label %if.end.i.i63

if.end.i.i63:                                     ; preds = %for.body.i.i59
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  %28 = xor i32 %27, %shr4
  %29 = and i32 %28, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp4.i.i60 = icmp ne i32 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i57)
  %cmp.i.i61 = icmp ult i32 %i.01.i.i57, 9
  %or.cond.i.i62 = select i1 %cmp4.i.i60, i1 %cmp.i.i61, i1 false
  br i1 %or.cond.i.i62, label %if.end.i.i63.for.body.backedge.i.i67_crit_edge, label %if.end.i.i63.cx18_write_reg_expect.exit68_crit_edge

if.end.i.i63.cx18_write_reg_expect.exit68_crit_edge: ; preds = %if.end.i.i63
  call void @__sanitizer_cov_trace_pc() #7
  br label %cx18_write_reg_expect.exit68

if.end.i.i63.for.body.backedge.i.i67_crit_edge:   ; preds = %if.end.i.i63
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge.i.i67

for.inc.i.i65:                                    ; preds = %for.body.i.i59
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %i.01.i.i57)
  %cmp.old.i.i64 = icmp ult i32 %i.01.i.i57, 9
  br i1 %cmp.old.i.i64, label %for.inc.i.i65.for.body.backedge.i.i67_crit_edge, label %for.inc.i.i65.cx18_write_reg_expect.exit68_crit_edge

for.inc.i.i65.cx18_write_reg_expect.exit68_crit_edge: ; preds = %for.inc.i.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cx18_write_reg_expect.exit68

for.inc.i.i65.for.body.backedge.i.i67_crit_edge:  ; preds = %for.inc.i.i65
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.backedge.i.i67

for.body.backedge.i.i67:                          ; preds = %for.inc.i.i65.for.body.backedge.i.i67_crit_edge, %if.end.i.i63.for.body.backedge.i.i67_crit_edge
  %i.01.be.i.i66 = add nuw nsw i32 %i.01.i.i57, 1
  br label %for.body.i.i59

cx18_write_reg_expect.exit68:                     ; preds = %for.inc.i.i65.cx18_write_reg_expect.exit68_crit_edge, %if.end.i.i63.cx18_write_reg_expect.exit68_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_gpio_register(ptr noundef %cx, i32 noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %hw to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %hw, label %entry.cleanup_crit_edge [
    i32 32, label %sw.bb
    i32 64, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sd_gpiomux = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 62
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sd_resetctrl = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 63
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %sd.0 = phi ptr [ %sd_resetctrl, %sw.bb1 ], [ %sd_gpiomux, %sw.bb ]
  %ops.0 = phi ptr [ @resetctrl_ops, %sw.bb1 ], [ @gpiomux_ops, %sw.bb ]
  %str.0 = phi ptr [ @.str.4, %sw.bb1 ], [ @.str.3, %sw.bb ]
  tail call void @v4l2_subdev_init(ptr noundef %sd.0, ptr noundef nonnull %ops.0) #5
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd.0, i32 0, i32 11
  %1 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %cx, ptr %dev_priv.i, align 4
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd.0, i32 0, i32 9
  %v4l2_dev = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2
  %name2 = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %name2, ptr noundef nonnull %str.0)
  %grp_id = getelementptr inbounds %struct.v4l2_subdev, ptr %sd.0, i32 0, i32 10
  %2 = ptrtoint ptr %grp_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %hw, ptr %grp_id, align 4
  %call5 = tail call i32 @v4l2_device_register_subdev(ptr noundef %v4l2_dev, ptr noundef %sd.0) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register_subdev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx18_reset_ir_gpio(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr i8, ptr %data, i32 136
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 8
  %ir_reset_mask = getelementptr inbounds %struct.cx18_card, ptr %1, i32 0, i32 12, i32 4
  %2 = ptrtoint ptr %ir_reset_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ir_reset_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %4 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end6_crit_edge, label %do.end

do.body.do.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr i8, ptr %data, i32 60
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %name) #8
  br label %do.end6

do.end6:                                          ; preds = %do.end, %do.body.do.end6_crit_edge
  %sd_resetctrl = getelementptr i8, ptr %data, i32 33704
  %tobool7.not = icmp eq ptr %sd_resetctrl, null
  br i1 %tobool7.not, label %do.end6.cleanup_crit_edge, label %if.else

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %do.end6
  %ops = getelementptr i8, ptr %data, i32 33808
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %reset = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reset, align 4
  %tobool12.not = icmp eq ptr %10, null
  br i1 %tobool12.not, label %land.lhs.true.cleanup_crit_edge, label %if.else14

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else14:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %11 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %if.else14.if.else22_crit_edge, label %land.lhs.true16

if.else14.if.else22_crit_edge:                    ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else22

land.lhs.true16:                                  ; preds = %if.else14
  %reset17 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %reset17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reset17, align 4
  %tobool18.not = icmp eq ptr %13, null
  br i1 %tobool18.not, label %land.lhs.true16.if.else22_crit_edge, label %land.lhs.true16.cleanup.sink.split_crit_edge

land.lhs.true16.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

land.lhs.true16.if.else22_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else22

if.else22:                                        ; preds = %land.lhs.true16.if.else22_crit_edge, %if.else14.if.else22_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else22, %land.lhs.true16.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %10, %if.else22 ], [ %13, %land.lhs.true16.cleanup.sink.split_crit_edge ]
  %call21 = tail call i32 %.sink(ptr noundef nonnull %sd_resetctrl, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx18_reset_tuner_gpio(ptr nocapture noundef readonly %dev, i32 noundef %component, i32 noundef %cmd, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp.not = icmp eq i32 %cmd, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %card = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 8
  %tuner = getelementptr inbounds %struct.cx18_card, ptr %5, i32 0, i32 14, i32 0, i32 1
  %6 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tuner, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %7)
  %cmp2.not = icmp eq i32 %7, 71
  br i1 %cmp2.not, label %do.body, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cx18_debug to i32))
  %8 = load i32, ptr @cx18_debug, align 4
  %and = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end7_crit_edge, label %do.end

do.body.do.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %name = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 2, i32 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %name) #8
  br label %do.end7

do.end7:                                          ; preds = %do.end, %do.body.do.end7_crit_edge
  %sd_resetctrl = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 63
  %tobool8.not = icmp eq ptr %sd_resetctrl, null
  br i1 %tobool8.not, label %do.end7.cleanup_crit_edge, label %if.else

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %do.end7
  %ops = getelementptr inbounds %struct.cx18, ptr %3, i32 0, i32 63, i32 6
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %if.else.cleanup_crit_edge, label %land.lhs.true

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else
  %reset = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reset, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %land.lhs.true.cleanup_crit_edge, label %if.else15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else15:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %15 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool16.not = icmp eq ptr %15, null
  br i1 %tobool16.not, label %if.else15.if.else23_crit_edge, label %land.lhs.true17

if.else15.if.else23_crit_edge:                    ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else23

land.lhs.true17:                                  ; preds = %if.else15
  %reset18 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %reset18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %reset18, align 4
  %tobool19.not = icmp eq ptr %17, null
  br i1 %tobool19.not, label %land.lhs.true17.if.else23_crit_edge, label %land.lhs.true17.cleanup.sink.split_crit_edge

land.lhs.true17.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

land.lhs.true17.if.else23_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else23

if.else23:                                        ; preds = %land.lhs.true17.if.else23_crit_edge, %if.else15.if.else23_crit_edge
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else23, %land.lhs.true17.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %14, %if.else23 ], [ %17, %land.lhs.true17.cleanup.sink.split_crit_edge ]
  %call22 = tail call i32 %.sink(ptr noundef nonnull %sd_resetctrl, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -19, %do.end7.cleanup_crit_edge ], [ -515, %land.lhs.true.cleanup_crit_edge ], [ -515, %if.else.cleanup_crit_edge ], [ %call22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpiomux_log_status(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %gpio_lock = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 61
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #5
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %gpio_dir = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_dir, align 8
  %gpio_val = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 60
  %4 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_val, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %3, i32 noundef %5) #8
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpiomux_s_radio(ptr nocapture noundef readonly %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %card = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 8
  %gpio_audio_input = getelementptr inbounds %struct.cx18_card, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %gpio_audio_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_audio_input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %entry.gpio_update.exit_crit_edge, label %if.end.i

entry.gpio_update.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_update.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %radio = getelementptr inbounds %struct.cx18_card, ptr %3, i32 0, i32 13, i32 3
  %6 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %radio, align 4
  %gpio_lock.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 61
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock.i, i32 noundef 0) #5
  %gpio_val.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 60
  %8 = ptrtoint ptr %gpio_val.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_val.i, align 4
  %neg.i = xor i32 %5, -1
  %and.i = and i32 %9, %neg.i
  %and1.i = and i32 %7, %5
  %or.i = or i32 %and.i, %and1.i
  store i32 %or.i, ptr %gpio_val.i, align 4
  tail call fastcc void @gpio_write(ptr noundef %1) #5
  tail call void @mutex_unlock(ptr noundef %gpio_lock.i) #5
  br label %gpio_update.exit

gpio_update.exit:                                 ; preds = %if.end.i, %entry.gpio_update.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpiomux_s_audio_routing(ptr nocapture noundef readonly %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %input, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %card = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 8
  %tuner = getelementptr inbounds %struct.cx18_card, ptr %4, i32 0, i32 13, i32 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %card2 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %card2, align 8
  %linein = getelementptr inbounds %struct.cx18_card, ptr %6, i32 0, i32 13, i32 2
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %card5 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %card5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card5, align 8
  %radio = getelementptr inbounds %struct.cx18_card, ptr %8, i32 0, i32 13, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb1, %sw.bb
  %data.0.in = phi ptr [ %radio, %sw.bb4 ], [ %linein, %sw.bb1 ], [ %tuner, %sw.bb ]
  %card7 = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %card7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card7, align 8
  %gpio_audio_input8 = getelementptr inbounds %struct.cx18_card, ptr %10, i32 0, i32 13
  %11 = ptrtoint ptr %gpio_audio_input8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpio_audio_input8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  br i1 %cmp.i, label %sw.epilog.cleanup_crit_edge, label %if.end.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %data.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %data.0 = load i32, ptr %data.0.in, align 4
  %gpio_lock.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 61
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock.i, i32 noundef 0) #5
  %gpio_val.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 60
  %14 = ptrtoint ptr %gpio_val.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpio_val.i, align 4
  %neg.i = xor i32 %12, -1
  %and.i = and i32 %15, %neg.i
  %and1.i = and i32 %data.0, %12
  %or.i = or i32 %and.i, %and1.i
  store i32 %or.i, ptr %gpio_val.i, align 4
  tail call fastcc void @gpio_write(ptr noundef %1) #5
  tail call void @mutex_unlock(ptr noundef %gpio_lock.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpiomux_s_std(ptr nocapture noundef readonly %sd, i64 noundef %norm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %card = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 8
  %audio_input = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 64
  %4 = ptrtoint ptr %audio_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %audio_input, align 4
  %muxer_input = getelementptr %struct.cx18_card, ptr %3, i32 0, i32 8, i32 %5, i32 2
  %6 = ptrtoint ptr %muxer_input to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %muxer_input, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %7, label %sw.default [
    i16 1, label %sw.bb
    i16 0, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %linein = getelementptr inbounds %struct.cx18_card, ptr %3, i32 0, i32 13, i32 2
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tuner = getelementptr inbounds %struct.cx18_card, ptr %3, i32 0, i32 13, i32 1
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tuner7 = getelementptr inbounds %struct.cx18_card, ptr %3, i32 0, i32 13, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  %data.0.in = phi ptr [ %tuner7, %sw.default ], [ %tuner, %sw.bb2 ], [ %linein, %sw.bb ]
  %gpio_audio_input9 = getelementptr inbounds %struct.cx18_card, ptr %3, i32 0, i32 13
  %9 = ptrtoint ptr %gpio_audio_input9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpio_audio_input9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %sw.epilog.gpio_update.exit_crit_edge, label %if.end.i

sw.epilog.gpio_update.exit_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_update.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %data.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %data.0 = load i32, ptr %data.0.in, align 4
  %gpio_lock.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 61
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock.i, i32 noundef 0) #5
  %gpio_val.i = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 60
  %12 = ptrtoint ptr %gpio_val.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gpio_val.i, align 4
  %neg.i = xor i32 %10, -1
  %and.i = and i32 %13, %neg.i
  %and1.i = and i32 %data.0, %10
  %or.i = or i32 %and.i, %and1.i
  store i32 %or.i, ptr %gpio_val.i, align 4
  tail call fastcc void @gpio_write(ptr noundef %1) #5
  tail call void @mutex_unlock(ptr noundef %gpio_lock.i) #5
  br label %gpio_update.exit

gpio_update.exit:                                 ; preds = %if.end.i, %sw.epilog.gpio_update.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resetctrl_log_status(ptr noundef %sd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %gpio_lock = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 61
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock, i32 noundef 0) #5
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %gpio_dir = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 59
  %2 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_dir, align 8
  %gpio_val = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 60
  %4 = ptrtoint ptr %gpio_val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_val, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %name, i32 noundef %3, i32 noundef %5) #8
  tail call void @mutex_unlock(ptr noundef %gpio_lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @resetctrl_reset(ptr nocapture noundef readonly %sd, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %card = getelementptr inbounds %struct.cx18, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 8
  %4 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %val, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %gpio_i2c_slave_reset = getelementptr inbounds %struct.cx18_card, ptr %3, i32 0, i32 12
  %5 = ptrtoint ptr %gpio_i2c_slave_reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gpio_i2c_slave_reset, align 4
  %active_hi_mask = getelementptr inbounds %struct.cx18_card, ptr %3, i32 0, i32 12, i32 1
  %7 = ptrtoint ptr %active_hi_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %active_hi_mask, align 4
  %msecs_asserted = getelementptr inbounds %struct.cx18_card, ptr %3, i32 0, i32 12, i32 2
  %9 = ptrtoint ptr %msecs_asserted to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %msecs_asserted, align 4
  %msecs_recovery = getelementptr inbounds %struct.cx18_card, ptr %3, i32 0, i32 12, i32 3
  %11 = ptrtoint ptr %msecs_recovery to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msecs_recovery, align 4
  tail call fastcc void @gpio_reset_seq(ptr noundef %1, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %ir_reset_mask = getelementptr inbounds %struct.cx18_card, ptr %3, i32 0, i32 12, i32 4
  %13 = ptrtoint ptr %ir_reset_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ir_reset_mask, align 4
  %msecs_asserted2 = getelementptr inbounds %struct.cx18_card, ptr %3, i32 0, i32 12, i32 2
  %15 = ptrtoint ptr %msecs_asserted2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msecs_asserted2, align 4
  %msecs_recovery3 = getelementptr inbounds %struct.cx18_card, ptr %3, i32 0, i32 12, i32 3
  %17 = ptrtoint ptr %msecs_recovery3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msecs_recovery3, align 4
  tail call fastcc void @gpio_reset_seq(ptr noundef %1, i32 noundef %14, i32 noundef 0, i32 noundef %16, i32 noundef %18)
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %tuner = getelementptr inbounds %struct.cx18_card, ptr %3, i32 0, i32 14, i32 0, i32 1
  %19 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tuner, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %20)
  %cmp = icmp eq i32 %20, 71
  br i1 %cmp, label %if.then, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  %xceive_pin = getelementptr inbounds %struct.cx18_card, ptr %3, i32 0, i32 10
  %21 = ptrtoint ptr %xceive_pin to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %xceive_pin, align 4
  %conv = zext i8 %22 to i32
  %shl = shl nuw i32 1, %conv
  tail call fastcc void @gpio_reset_seq(ptr noundef %1, i32 noundef %shl, i32 noundef 0, i32 noundef 1, i32 noundef 1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb4.sw.epilog_crit_edge, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_reset_seq(ptr noundef %cx, i32 noundef %active_lo, i32 noundef %active_hi, i32 noundef %assert_msecs, i32 noundef %recovery_msecs) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %active_hi, %active_lo
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %cmp = icmp eq i32 %or, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %gpio_update.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

gpio_update.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %neg = xor i32 %active_lo, -1
  %gpio_lock.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 61
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock.i, i32 noundef 0) #5
  %gpio_val.i = getelementptr inbounds %struct.cx18, ptr %cx, i32 0, i32 60
  %0 = ptrtoint ptr %gpio_val.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpio_val.i, align 4
  %neg.i = xor i32 %or, -1
  %and.i = and i32 %1, %neg.i
  %and1.i = and i32 %neg, %active_hi
  %or.i = or i32 %and.i, %and1.i
  store i32 %or.i, ptr %gpio_val.i, align 4
  tail call fastcc void @gpio_write(ptr noundef %cx) #5
  tail call void @mutex_unlock(ptr noundef %gpio_lock.i) #5
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %assert_msecs) #5
  %call1 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %call2.i) #5
  %neg2 = xor i32 %active_hi, -1
  tail call void @mutex_lock_nested(ptr noundef %gpio_lock.i, i32 noundef 0) #5
  %2 = ptrtoint ptr %gpio_val.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_val.i, align 4
  %and.i25 = and i32 %3, %neg.i
  %and1.i26 = and i32 %neg2, %active_lo
  %or.i27 = or i32 %and.i25, %and1.i26
  store i32 %or.i27, ptr %gpio_val.i, align 4
  tail call fastcc void @gpio_write(ptr noundef %cx) #5
  tail call void @mutex_unlock(ptr noundef %gpio_lock.i) #5
  %call2.i15 = tail call i32 @__msecs_to_jiffies(i32 noundef %recovery_msecs) #5
  %call4 = tail call i32 @schedule_timeout_uninterruptible(i32 noundef %call2.i15) #5
  br label %cleanup

cleanup:                                          ; preds = %gpio_update.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout_uninterruptible(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26, !28, !30, !31, !32, !33, !35, !37, !39, !41, !43, !45, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/pci/cx18/cx18-gpio.c", i32 270, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @cx18_gpio_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @cx18_gpio_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/pci/cx18/cx18-gpio.c", i32 290, i32 9}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/pci/cx18/cx18-gpio.c", i32 295, i32 9}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/pci/cx18/cx18-gpio.c", i32 303, i32 39}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/pci/cx18/cx18-gpio.c", i32 315, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cx18_reset_ir_gpio._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @cx18_reset_ir_gpio._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_cx18_reset_ir_gpio, !18, !"__ksymtab_cx18_reset_ir_gpio", i1 false, i1 false}
!18 = !{!"../drivers/media/pci/cx18/cx18-gpio.c", i32 320, i32 1}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/pci/cx18/cx18-gpio.c", i32 334, i32 2}
!21 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cx18_reset_tuner_gpio._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @cx18_reset_tuner_gpio._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @gpiomux_ops, !25, !"gpiomux_ops", i1 false, i1 false}
!25 = !{!"../drivers/media/pci/cx18/cx18-gpio.c", i32 183, i32 37}
!26 = !{ptr @gpiomux_core_ops, !27, !"gpiomux_core_ops", i1 false, i1 false}
!27 = !{!"../drivers/media/pci/cx18/cx18-gpio.c", i32 167, i32 42}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/pci/cx18/cx18-gpio.c", i32 99, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @gpiomux_log_status._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @gpiomux_log_status._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @gpiomux_tuner_ops, !34, !"gpiomux_tuner_ops", i1 false, i1 false}
!34 = !{!"../drivers/media/pci/cx18/cx18-gpio.c", i32 171, i32 43}
!35 = !{ptr @gpiomux_audio_ops, !36, !"gpiomux_audio_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/pci/cx18/cx18-gpio.c", i32 175, i32 43}
!37 = !{ptr @gpiomux_video_ops, !38, !"gpiomux_video_ops", i1 false, i1 false}
!38 = !{!"../drivers/media/pci/cx18/cx18-gpio.c", i32 179, i32 43}
!39 = !{ptr @resetctrl_ops, !40, !"resetctrl_ops", i1 false, i1 false}
!40 = !{!"../drivers/media/pci/cx18/cx18-gpio.c", i32 247, i32 37}
!41 = !{ptr @resetctrl_core_ops, !42, !"resetctrl_core_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/pci/cx18/cx18-gpio.c", i32 242, i32 42}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/pci/cx18/cx18-gpio.c", i32 198, i32 2}
!45 = !{ptr @resetctrl_log_status._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @resetctrl_log_status._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 5749345}
!57 = !{i64 2158648938}
!58 = !{i64 2158649308}
!59 = !{i64 5748927}
