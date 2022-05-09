; ModuleID = '/llk/IR_all_yes/drivers/media/usb/au0828/au0828-cards.c_pt.bc'
source_filename = "../drivers/media/usb/au0828/au0828-cards.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.au0828_board = type { ptr, i32, i8, i8, i8, [4 x %struct.au0828_input] }
%struct.au0828_input = type { i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.au0828_dev = type { %struct.mutex, ptr, i32, %struct.au0828_board, [64 x i8], %struct.i2c_adapter, %struct.i2c_algorithm, %struct.i2c_client, i32, %struct.au0828_dvb, %struct.work_struct, %struct.timer_list, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.video_device, %struct.video_device, %struct.vb2_queue, %struct.vb2_queue, %struct.mutex, %struct.mutex, i32, i32, %struct.timer_list, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.mutex, %struct.au0828_dmaqueue, %struct.au0828_dmaqueue, %struct.au0828_usb_isoc_ctl, %struct.spinlock, i32, i32, i32, ptr, [12 x ptr], [12 x ptr], i8, i8, [16 x ptr], [16 x ptr], ptr, %struct.media_pad, %struct.media_pad, ptr, [4 x %struct.media_entity], [4 x %struct.media_pad], %struct.media_entity_notify, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.au0828_dvb = type { %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i32, i32, i32, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.106 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.103], %struct.media_entity_enum, i32 }
%struct.anon.103 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.au0828_dmaqueue = type { %struct.list_head, i32 }
%struct.au0828_usb_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_entity_notify = type { %struct.list_head, ptr, ptr }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [6 x i8] }
%struct.tuner_setup = type { i16, i32, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Unknown board\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Hauppauge HVR950Q\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Hauppauge HVR850\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DViCO FusionHDTV USB\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hauppauge HVR950Q rev xxF8\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Hauppauge Woodbury\00", [45 x i8] zeroinitializer }, align 32
@au0828_boards = dso_local global { [6 x %struct.au0828_board], [120 x i8] } { [6 x %struct.au0828_board] [%struct.au0828_board { ptr @.str, i32 -1, i8 -1, i8 0, i8 0, [4 x %struct.au0828_input] zeroinitializer }, %struct.au0828_board { ptr @.str.1, i32 76, i8 97, i8 7, i8 -64, [4 x %struct.au0828_input] [%struct.au0828_input { i32 4, i32 5, i32 1, ptr null }, %struct.au0828_input { i32 1, i32 1, i32 0, ptr @hvr950q_cs5340_audio }, %struct.au0828_input { i32 2, i32 6, i32 0, ptr @hvr950q_cs5340_audio }, %struct.au0828_input zeroinitializer] }, %struct.au0828_board { ptr @.str.2, i32 76, i8 97, i8 7, i8 -64, [4 x %struct.au0828_input] [%struct.au0828_input { i32 4, i32 5, i32 1, ptr null }, %struct.au0828_input { i32 1, i32 1, i32 0, ptr @hvr950q_cs5340_audio }, %struct.au0828_input { i32 2, i32 6, i32 0, ptr @hvr950q_cs5340_audio }, %struct.au0828_input zeroinitializer] }, %struct.au0828_board { ptr @.str.3, i32 76, i8 97, i8 7, i8 0, [4 x %struct.au0828_input] zeroinitializer }, %struct.au0828_board { ptr @.str.4, i32 76, i8 97, i8 7, i8 0, [4 x %struct.au0828_input] zeroinitializer }, %struct.au0828_board { ptr @.str.5, i32 83, i8 96, i8 7, i8 0, [4 x %struct.au0828_input] zeroinitializer }], [120 x i8] zeroinitializer }, align 32
@au0828_debug = external dso_local local_unnamed_addr global i32, align 4
@au0828_tuner_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017au0828: %s()\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"au0828_tuner_callback\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/au0828/au0828-cards.c\00", [56 x i8] zeroinitializer }, align 32
@au0828_tuner_callback._entry_ptr = internal global ptr @au0828_tuner_callback._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@au0828_tuner_callback._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.8, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013au0828: %s(): Unknown command.\0A\00", [62 x i8] zeroinitializer }, align 32
@au0828_tuner_callback._entry_ptr.11 = internal global ptr @au0828_tuner_callback._entry.9, section ".printk_index", align 4
@au0828_card_setup.eeprom = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@au0828_card_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.12, ptr @.str.8, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"au0828_card_setup\00", [46 x i8] zeroinitializer }, align 32
@au0828_card_setup._entry_ptr = internal global ptr @au0828_card_setup._entry, section ".printk_index", align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"au8522\00", [25 x i8] zeroinitializer }, align 32
@au0828_card_analog_fe_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.8, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013au0828: analog subdev registration failed\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"au0828_card_analog_fe_setup\00", [36 x i8] zeroinitializer }, align 32
@au0828_card_analog_fe_setup._entry_ptr = internal global ptr @au0828_card_analog_fe_setup._entry, section ".printk_index", align 4
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tuner\00", [26 x i8] zeroinitializer }, align 32
@au0828_card_analog_fe_setup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.8, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013au0828: tuner subdev registration fail\0A\00", [54 x i8] zeroinitializer }, align 32
@au0828_card_analog_fe_setup._entry_ptr.19 = internal global ptr @au0828_card_analog_fe_setup._entry.17, section ".printk_index", align 4
@au0828_gpio_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.20, ptr @.str.8, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"au0828_gpio_setup\00", [46 x i8] zeroinitializer }, align 32
@au0828_gpio_setup._entry_ptr = internal global ptr @au0828_gpio_setup._entry, section ".printk_index", align 4
@au0828_usb_id_table = dso_local global { [19 x %struct.usb_device_id], [120 x i8] } { [19 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 8256, i16 29184, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8256, i16 29248, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 4073, i16 -10720, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 8256, i16 29200, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8256, i16 29207, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8256, i16 29211, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8256, i16 29214, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8256, i16 29215, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8256, i16 29312, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 4057, i16 8, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8256, i16 29185, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 8256, i16 29201, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 8256, i16 29313, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1505, i16 1152, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 5 }, %struct.usb_device_id { i16 3, i16 8256, i16 -32256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 5 }, %struct.usb_device_id { i16 3, i16 8256, i16 29280, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8256, i16 29203, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 8256, i16 29296, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@hauppauge_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.8, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014au0828: %s: warning: unknown hauppauge model #%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hauppauge_eeprom\00", [47 x i8] zeroinitializer }, align 32
@hauppauge_eeprom._entry_ptr = internal global ptr @hauppauge_eeprom._entry, section ".printk_index", align 4
@hauppauge_eeprom._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.8, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016au0828: %s: hauppauge eeprom: model=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@hauppauge_eeprom._entry_ptr.25 = internal global ptr @hauppauge_eeprom._entry.23, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.26 = internal global [16 x i64] [i64 14, i64 32, i64 72000, i64 72001, i64 72101, i64 72201, i64 72211, i64 72221, i64 72231, i64 72241, i64 72251, i64 72261, i64 72271, i64 72281, i64 72301, i64 72500]
@__sancov_gen_cov_switch_values.27 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 32, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 64, i32 11 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 37, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 97, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 91, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 103, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"au0828_boards\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 30, i32 21 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 117, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 133, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 180, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 182, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 214, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 216, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 223, i32 5 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 225, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 244, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"au0828_usb_id_table\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 306, i32 22 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 167, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [43 x i8] c"../drivers/media/usb/au0828/au0828-cards.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 172, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @au0828_card_analog_fe_setup._entry, ptr @au0828_card_analog_fe_setup._entry.17, ptr @au0828_card_analog_fe_setup._entry_ptr, ptr @au0828_card_analog_fe_setup._entry_ptr.19, ptr @au0828_card_setup._entry, ptr @au0828_card_setup._entry_ptr, ptr @au0828_gpio_setup._entry, ptr @au0828_gpio_setup._entry_ptr, ptr @au0828_tuner_callback._entry, ptr @au0828_tuner_callback._entry.9, ptr @au0828_tuner_callback._entry_ptr, ptr @au0828_tuner_callback._entry_ptr.11, ptr @hauppauge_eeprom._entry, ptr @hauppauge_eeprom._entry.23, ptr @hauppauge_eeprom._entry_ptr, ptr @hauppauge_eeprom._entry_ptr.25, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @au0828_boards, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @au0828_card_setup.eeprom, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @au0828_usb_id_table, ptr @.str.21, ptr @.str.22, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_boards to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_tuner_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_tuner_callback._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_card_setup.eeprom to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_card_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_card_analog_fe_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_card_analog_fe_setup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_gpio_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_usb_id_table to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_eeprom._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hvr950q_cs5340_audio(ptr noundef %priv, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %enable)
  %cmp = icmp eq i32 %enable, 1
  %call = tail call i32 @au0828_readreg(ptr noundef %priv, i16 noundef zeroext 0) #4
  %and3 = and i32 %call, -17
  %masksel = select i1 %cmp, i32 16, i32 0
  %and3.sink = or i32 %and3, %masksel
  %call5 = tail call i32 @au0828_writereg(ptr noundef %priv, i16 noundef zeroext 0, i32 noundef %and3.sink) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @au0828_tuner_callback(ptr noundef %priv, i32 %component, i32 noundef %command, i32 %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #7
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %boardnr = getelementptr inbounds %struct.au0828_dev, ptr %priv, i32 0, i32 2
  %1 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %boardnr, align 8
  %.off = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %sw.bb, label %do.end3.cleanup_crit_edge

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cmp = icmp eq i32 %command, 0
  br i1 %cmp, label %if.then4, label %do.end21

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 @au0828_readreg(ptr noundef %priv, i16 noundef zeroext 1) #4
  %and6 = and i32 %call5, -3
  %call7 = tail call i32 @au0828_writereg(ptr noundef %priv, i16 noundef zeroext 1, i32 noundef %and6) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #4
  %call9 = tail call i32 @au0828_readreg(ptr noundef %priv, i16 noundef zeroext 1) #4
  %or11 = or i32 %call9, 2
  %call12 = tail call i32 @au0828_writereg(ptr noundef %priv, i16 noundef zeroext 1, i32 noundef %or11) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #4
  br label %cleanup

do.end21:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.7) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %if.then4, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end21 ], [ 0, %do.end3.cleanup_crit_edge ], [ 0, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au0828_writereg(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au0828_readreg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @au0828_card_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %tv.i = alloca %struct.tveeprom, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.12) #7
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %i2c_rc = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i2c_rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then3, label %do.end2.if.end6_crit_edge

do.end2.if.end6_crit_edge:                        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then3:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #6
  %i2c_client = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 7
  %addr = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 80, ptr %addr, align 2
  %call5 = tail call i32 @tveeprom_read(ptr noundef %i2c_client, ptr noundef nonnull @au0828_card_setup.eeprom, i32 noundef 256) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %do.end2.if.end6_crit_edge
  %boardnr = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %boardnr, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end6.sw.epilog_crit_edge [
    i32 2, label %if.end6.sw.bb_crit_edge
    i32 1, label %if.end6.sw.bb_crit_edge17
    i32 4, label %if.end6.sw.bb_crit_edge18
    i32 5, label %if.end6.sw.bb_crit_edge19
  ]

if.end6.sw.bb_crit_edge19:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end6.sw.bb_crit_edge18:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end6.sw.bb_crit_edge17:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end6.sw.bb_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6.sw.bb_crit_edge, %if.end6.sw.bb_crit_edge17, %if.end6.sw.bb_crit_edge18, %if.end6.sw.bb_crit_edge19
  %7 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i2c_rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %if.then9, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then9:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tv.i) #4
  %9 = call ptr @memset(ptr %tv.i, i32 255, i32 68)
  call void @tveeprom_hauppauge_analog(ptr noundef nonnull %tv.i, ptr noundef getelementptr inbounds ([256 x i8], ptr @au0828_card_setup.eeprom, i32 0, i32 160)) #4
  %tuner_type.i = getelementptr inbounds %struct.tveeprom, ptr %tv.i, i32 0, i32 3
  %10 = ptrtoint ptr %tuner_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tuner_type.i, align 4
  %tuner_type1.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %tuner_type1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tuner_type1.i, align 4
  %model.i = getelementptr inbounds %struct.tveeprom, ptr %tv.i, i32 0, i32 11
  %13 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %model.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %14, label %do.end.i [
    i32 72000, label %if.then9.hauppauge_eeprom.exit_crit_edge
    i32 72001, label %if.then9.hauppauge_eeprom.exit_crit_edge20
    i32 72101, label %if.then9.hauppauge_eeprom.exit_crit_edge21
    i32 72201, label %if.then9.hauppauge_eeprom.exit_crit_edge22
    i32 72211, label %if.then9.hauppauge_eeprom.exit_crit_edge23
    i32 72221, label %if.then9.hauppauge_eeprom.exit_crit_edge24
    i32 72231, label %if.then9.hauppauge_eeprom.exit_crit_edge25
    i32 72241, label %if.then9.hauppauge_eeprom.exit_crit_edge26
    i32 72251, label %if.then9.hauppauge_eeprom.exit_crit_edge27
    i32 72261, label %if.then9.hauppauge_eeprom.exit_crit_edge28
    i32 72271, label %if.then9.hauppauge_eeprom.exit_crit_edge29
    i32 72281, label %if.then9.hauppauge_eeprom.exit_crit_edge30
    i32 72301, label %if.then9.hauppauge_eeprom.exit_crit_edge31
    i32 72500, label %if.then9.hauppauge_eeprom.exit_crit_edge32
  ]

if.then9.hauppauge_eeprom.exit_crit_edge32:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %hauppauge_eeprom.exit

if.then9.hauppauge_eeprom.exit_crit_edge31:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %hauppauge_eeprom.exit

if.then9.hauppauge_eeprom.exit_crit_edge30:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %hauppauge_eeprom.exit

if.then9.hauppauge_eeprom.exit_crit_edge29:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %hauppauge_eeprom.exit

if.then9.hauppauge_eeprom.exit_crit_edge28:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %hauppauge_eeprom.exit

if.then9.hauppauge_eeprom.exit_crit_edge27:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %hauppauge_eeprom.exit

if.then9.hauppauge_eeprom.exit_crit_edge26:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %hauppauge_eeprom.exit

if.then9.hauppauge_eeprom.exit_crit_edge25:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %hauppauge_eeprom.exit

if.then9.hauppauge_eeprom.exit_crit_edge24:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %hauppauge_eeprom.exit

if.then9.hauppauge_eeprom.exit_crit_edge23:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %hauppauge_eeprom.exit

if.then9.hauppauge_eeprom.exit_crit_edge22:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %hauppauge_eeprom.exit

if.then9.hauppauge_eeprom.exit_crit_edge21:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %hauppauge_eeprom.exit

if.then9.hauppauge_eeprom.exit_crit_edge20:       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %hauppauge_eeprom.exit

if.then9.hauppauge_eeprom.exit_crit_edge:         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %hauppauge_eeprom.exit

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %14) #7
  br label %hauppauge_eeprom.exit

hauppauge_eeprom.exit:                            ; preds = %do.end.i, %if.then9.hauppauge_eeprom.exit_crit_edge, %if.then9.hauppauge_eeprom.exit_crit_edge20, %if.then9.hauppauge_eeprom.exit_crit_edge21, %if.then9.hauppauge_eeprom.exit_crit_edge22, %if.then9.hauppauge_eeprom.exit_crit_edge23, %if.then9.hauppauge_eeprom.exit_crit_edge24, %if.then9.hauppauge_eeprom.exit_crit_edge25, %if.then9.hauppauge_eeprom.exit_crit_edge26, %if.then9.hauppauge_eeprom.exit_crit_edge27, %if.then9.hauppauge_eeprom.exit_crit_edge28, %if.then9.hauppauge_eeprom.exit_crit_edge29, %if.then9.hauppauge_eeprom.exit_crit_edge30, %if.then9.hauppauge_eeprom.exit_crit_edge31, %if.then9.hauppauge_eeprom.exit_crit_edge32
  %16 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %model.i, align 4
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %17) #7
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tv.i) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %hauppauge_eeprom.exit, %sw.bb.sw.epilog_crit_edge, %if.end6.sw.epilog_crit_edge
  call void @au0828_card_analog_fe_setup(ptr noundef %dev)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tveeprom_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @au0828_card_analog_fe_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %tun_setup = alloca %struct.tuner_setup, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tun_setup) #4
  %0 = call ptr @memset(ptr %tun_setup, i32 255, i32 16)
  %input = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 5
  %1 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.not = icmp eq i32 %2, 0
  br i1 %cmp.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %entry
  %v4l2_dev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 13
  %i2c_adap = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 5
  %call = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %i2c_adap, ptr noundef nonnull @.str.13, i8 noundef zeroext 71, ptr noundef null) #4
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %do.end, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #7
  br label %if.end4

if.end4:                                          ; preds = %do.end, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %tuner_type = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp6.not = icmp eq i32 %4, 4
  br i1 %cmp6.not, label %if.end4.if.end57_crit_edge, label %land.lhs.true

if.end4.if.end57_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

land.lhs.true:                                    ; preds = %if.end4
  %has_analog = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %has_analog to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %has_analog, align 2
  %6 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %land.lhs.true.if.end57_crit_edge, label %if.then8

land.lhs.true.if.end57_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.then8:                                         ; preds = %land.lhs.true
  %v4l2_dev9 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 13
  %i2c_adap10 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 5
  %tuner_addr = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %tuner_addr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tuner_addr, align 4
  %call12 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev9, ptr noundef %i2c_adap10, ptr noundef nonnull @.str.16, i8 noundef zeroext %8, ptr noundef null) #4
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %do.end18, label %if.then8.if.end21_crit_edge

if.then8.if.end21_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

do.end18:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #6
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #7
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %if.then8.if.end21_crit_edge
  %mode_mask22 = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 2
  %9 = ptrtoint ptr %mode_mask22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %mode_mask22, align 4
  %10 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tuner_type, align 4
  %type25 = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 1
  %12 = ptrtoint ptr %type25 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %type25, align 4
  %13 = ptrtoint ptr %tuner_addr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tuner_addr, align 4
  %conv28 = zext i8 %14 to i16
  %15 = ptrtoint ptr %tun_setup to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv28, ptr %tun_setup, align 4
  %tuner_callback = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 4
  %16 = ptrtoint ptr %tuner_callback to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @au0828_tuner_callback, ptr %tuner_callback, align 4
  %subdevs = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 13, i32 2
  %17 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn76 = load ptr, ptr %subdevs, align 4
  %cmp35.not78 = icmp eq ptr %.pn76, %subdevs
  br i1 %cmp35.not78, label %if.end21.if.end57_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  br label %for.body

if.end21.if.end57_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end21.for.body_crit_edge
  %.pn79 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn76, %if.end21.for.body_crit_edge ]
  %__sd.080 = getelementptr i8, ptr %.pn79, i32 -80
  %ops = getelementptr i8, ptr %.pn79, i32 24
  %18 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops, align 4
  %tuner = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tuner, align 4
  %tobool37.not = icmp eq ptr %21, null
  br i1 %tobool37.not, label %for.body.for.inc_crit_edge, label %land.lhs.true38

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

land.lhs.true38:                                  ; preds = %for.body
  %s_type_addr = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %s_type_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %s_type_addr, align 4
  %tobool41.not = icmp eq ptr %23, null
  br i1 %tobool41.not, label %land.lhs.true38.for.inc_crit_edge, label %if.then42

land.lhs.true38.for.inc_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then42:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #6
  %call46 = call i32 %23(ptr noundef %__sd.080, ptr noundef nonnull %tun_setup) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then42, %land.lhs.true38.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %24 = ptrtoint ptr %.pn79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn79, align 4
  %cmp35.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp35.not, label %for.inc.if.end57_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.if.end57_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.end57:                                         ; preds = %for.inc.if.end57_crit_edge, %if.end21.if.end57_crit_edge, %land.lhs.true.if.end57_crit_edge, %if.end4.if.end57_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tun_setup) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @au0828_gpio_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.20) #7
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %boardnr = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 2
  %1 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %boardnr, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %2, label %do.end2.sw.epilog_crit_edge [
    i32 2, label %do.end2.sw.bb_crit_edge
    i32 1, label %do.end2.sw.bb_crit_edge34
    i32 4, label %do.end2.sw.bb_crit_edge35
    i32 5, label %do.end2.sw.bb_crit_edge36
    i32 3, label %sw.bb10
  ]

do.end2.sw.bb_crit_edge36:                        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

do.end2.sw.bb_crit_edge35:                        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

do.end2.sw.bb_crit_edge34:                        ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

do.end2.sw.bb_crit_edge:                          ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

do.end2.sw.epilog_crit_edge:                      ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end2.sw.bb_crit_edge, %do.end2.sw.bb_crit_edge34, %do.end2.sw.bb_crit_edge35, %do.end2.sw.bb_crit_edge36
  %call3 = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 3, i32 noundef 2) #4
  %call4 = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 2, i32 noundef 176) #4
  %call5 = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 1, i32 noundef 0) #4
  %call6 = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 0, i32 noundef 0) #4
  tail call void @msleep(i32 noundef 50) #4
  %call7 = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 0, i32 noundef 128) #4
  tail call void @msleep(i32 noundef 50) #4
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 3, i32 noundef 2) #4
  %call12 = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 2, i32 noundef 160) #4
  %call13 = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 1, i32 noundef 0) #4
  %call14 = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 0, i32 noundef 0) #4
  tail call void @msleep(i32 noundef 100) #4
  %call15 = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 3, i32 noundef 2) #4
  %call16 = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 2, i32 noundef 160) #4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb10, %sw.bb
  %call17 = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 1, i32 noundef 2) #4
  %call18 = tail call i32 @au0828_writereg(ptr noundef %dev, i16 noundef zeroext 0, i32 noundef 160) #4
  tail call void @msleep(i32 noundef 250) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.end2.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tveeprom_hauppauge_analog(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 32, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 64, i32 11}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 37, i32 11}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 97, i32 11}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 91, i32 11}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 103, i32 11}
!12 = !{ptr @au0828_boards, !13, !"au0828_boards", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 30, i32 21}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 117, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @au0828_tuner_callback._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @au0828_tuner_callback._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 133, i32 4}
!22 = !{ptr @au0828_tuner_callback._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @au0828_tuner_callback._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @au0828_card_setup.eeprom, !25, !"eeprom", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 180, i32 12}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 182, i32 2}
!28 = !{ptr @au0828_card_setup._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @au0828_card_setup._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 214, i32 5}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 216, i32 4}
!34 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @au0828_card_analog_fe_setup._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @au0828_card_analog_fe_setup._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 223, i32 5}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 225, i32 4}
!41 = !{ptr @au0828_card_analog_fe_setup._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @au0828_card_analog_fe_setup._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 244, i32 2}
!45 = !{ptr @au0828_gpio_setup._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @au0828_gpio_setup._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @au0828_usb_id_table, !48, !"au0828_usb_id_table", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 306, i32 22}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 167, i32 3}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @hauppauge_eeprom._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @hauppauge_eeprom._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/au0828/au0828-cards.c", i32 172, i32 2}
!56 = !{ptr @hauppauge_eeprom._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @hauppauge_eeprom._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
