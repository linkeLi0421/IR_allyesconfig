; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pvrusb2/pvrusb2-devattr.c_pt.bc'
source_filename = "../drivers/media/usb/pvrusb2/pvrusb2-devattr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pvr2_device_client_desc = type { i8, ptr }
%struct.pvr2_device_client_table = type { ptr, i8 }
%struct.pvr2_string_table = type { ptr, i32 }
%struct.pvr2_dvb_props = type { ptr, ptr }
%struct.lgdt330x_config = type { i32, i32, ptr, ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tda10048_config = type { i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8 }
%struct.tda829x_config = type { i32, i8, ptr }
%struct.tda18271_config = type { ptr, i32, i32, i32, i32, i8, i32 }
%struct.tda18271_std_map_item = type { i16, i16 }
%struct.s5h1409_config = type { i8, i8, i8, i16, i8, i8, i16, i8 }
%struct.s5h1411_config = type { i8, i8, i16, i16, i16, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.pvr2_channel = type { ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.pvr2_hdw = type { ptr, ptr, %struct.v4l2_device, ptr, %struct.work_struct, ptr, %struct.mutex, i32, [32 x i8], [32 x i8], %struct.i2c_adapter, %struct.i2c_algorithm, [128 x ptr], i32, i32, i32, %struct.IR_i2c_init_data, [500 x i32], i32, %struct.mutex, i32, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.completion, [64 x i8], i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.v4l2_tuner, i32, %struct.v4l2_cropcap, i32, i64, i64, i64, i32, i32, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, %struct.pvr2_ctl_info, [32 x ptr], [32 x [16 x i8]], i32, i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_cropcap = type { i32, %struct.v4l2_rect, %struct.v4l2_rect, %struct.v4l2_fract }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.pvr2_ctl_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %union.anon.121 }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type { i32, i32 }
%struct.cx2341x_mpeg_params = type { i32, i32, i16, i16, i16, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i16, i32, i32, i32, i16, i32, i16, i16, i16, i16 }
%struct.pvr2_dvb_adapter = type { %struct.pvr2_channel, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [2 x ptr], [2 x ptr], ptr, i32, i32, ptr, %struct.mutex, i8, %struct.wait_queue_head, [32 x ptr] }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.lgdt3306a_config = type { i8, i16, i16, i8, i32, i32, i32, i32, ptr, ptr }
%struct.si2157_config = type { ptr, ptr, i8, i8 }
%struct.si2168_config = type { ptr, ptr, i8, i8 }

@pvr2_device_table = dso_local global { [14 x %struct.usb_device_id], [80 x i8] } { [14 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 8256, i16 10496, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pvr2_device_29xxx to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 10576, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pvr2_device_29xxx to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 9216, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pvr2_device_24xxx to i32) }, %struct.usb_device_id { i16 3, i16 4452, i16 1570, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pvr2_device_gotview_2 to i32) }, %struct.usb_device_id { i16 3, i16 4452, i16 1538, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pvr2_device_gotview_2d to i32) }, %struct.usb_device_id { i16 3, i16 4538, i16 4099, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pvr2_device_onair_creator to i32) }, %struct.usb_device_id { i16 3, i16 4538, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pvr2_device_onair_usb2 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 29440, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pvr2_device_73xxx to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 29952, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pvr2_device_750xx to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 29953, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pvr2_device_751xx to i32) }, %struct.usb_device_id { i16 3, i16 3277, i16 57, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pvr2_device_av400 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 29954, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pvr2_device_160111 to i32) }, %struct.usb_device_id { i16 3, i16 8256, i16 29968, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 ptrtoint (ptr @pvr2_device_160000 to i32) }, %struct.usb_device_id zeroinitializer], [80 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_firmware391 = internal constant [41 x i8] c"pvrusb2.firmware=v4l-pvrusb2-29xxx-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware392 = internal constant [41 x i8] c"pvrusb2.firmware=v4l-pvrusb2-24xxx-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware393 = internal constant [41 x i8] c"pvrusb2.firmware=v4l-pvrusb2-73xxx-01.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware394 = internal constant [41 x i8] c"pvrusb2.firmware=v4l-pvrusb2-73xxx-01.fw\00", section ".modinfo", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WinTV PVR USB2 Model 29xxx\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"29xxx\00", [26 x i8] zeroinitializer }, align 32
@pvr2_cli_29xxx = internal constant { [4 x %struct.pvr2_device_client_desc], [32 x i8] } { [4 x %struct.pvr2_device_client_desc] [%struct.pvr2_device_client_desc { i8 3, ptr null }, %struct.pvr2_device_client_desc { i8 1, ptr null }, %struct.pvr2_device_client_desc { i8 4, ptr null }, %struct.pvr2_device_client_desc { i8 7, ptr null }], [32 x i8] zeroinitializer }, align 32
@pvr2_fw1_names_29xxx = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.3], [28 x i8] zeroinitializer }, align 32
@pvr2_device_29xxx = internal constant { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 }, [32 x i8] } { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 } { ptr @.str, ptr @.str.1, %struct.pvr2_string_table zeroinitializer, %struct.pvr2_device_client_table { ptr @pvr2_cli_29xxx, i8 4 }, %struct.pvr2_string_table { ptr @pvr2_fw1_names_29xxx, i32 1 }, ptr null, i64 0, i32 0, i8 0, i8 1, i8 0, i8 32, i8 -98, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"v4l-pvrusb2-29xxx-01.fw\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WinTV PVR USB2 Model 24xxx\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"24xxx\00", [26 x i8] zeroinitializer }, align 32
@pvr2_cli_24xxx = internal constant { [4 x %struct.pvr2_device_client_desc], [32 x i8] } { [4 x %struct.pvr2_device_client_desc] [%struct.pvr2_device_client_desc { i8 2, ptr null }, %struct.pvr2_device_client_desc { i8 4, ptr null }, %struct.pvr2_device_client_desc { i8 6, ptr null }, %struct.pvr2_device_client_desc { i8 7, ptr null }], [32 x i8] zeroinitializer }, align 32
@pvr2_fw1_names_24xxx = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.7], [28 x i8] zeroinitializer }, align 32
@pvr2_device_24xxx = internal constant { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 }, [32 x i8] } { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 } { ptr @.str.4, ptr @.str.5, %struct.pvr2_string_table zeroinitializer, %struct.pvr2_device_client_table { ptr @pvr2_cli_24xxx, i8 4 }, %struct.pvr2_string_table { ptr @pvr2_fw1_names_24xxx, i32 1 }, ptr null, i64 0, i32 0, i8 0, i8 1, i8 0, i8 44, i8 62, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"v4l-pvrusb2-24xxx-01.fw\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Gotview USB 2.0 DVD 2\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gv2\00", [28 x i8] zeroinitializer }, align 32
@pvr2_cli_gotview_2 = internal constant { [3 x %struct.pvr2_device_client_desc], [40 x i8] } { [3 x %struct.pvr2_device_client_desc] [%struct.pvr2_device_client_desc { i8 2, ptr null }, %struct.pvr2_device_client_desc { i8 4, ptr null }, %struct.pvr2_device_client_desc { i8 7, ptr null }], [40 x i8] zeroinitializer }, align 32
@pvr2_device_gotview_2 = internal constant { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 }, [32 x i8] } { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 } { ptr @.str.8, ptr @.str.9, %struct.pvr2_string_table zeroinitializer, %struct.pvr2_device_client_table { ptr @pvr2_cli_gotview_2, i8 3 }, %struct.pvr2_string_table zeroinitializer, ptr null, i64 0, i32 38, i8 1, i8 0, i8 0, i8 8, i8 30, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Gotview USB 2.0 DVD Deluxe\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gv2d\00", [27 x i8] zeroinitializer }, align 32
@pvr2_device_gotview_2d = internal constant { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 }, [32 x i8] } { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 } { ptr @.str.11, ptr @.str.12, %struct.pvr2_string_table zeroinitializer, %struct.pvr2_device_client_table { ptr @pvr2_cli_gotview_2, i8 3 }, %struct.pvr2_string_table zeroinitializer, ptr null, i64 0, i32 38, i8 1, i8 0, i8 0, i8 8, i8 14, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"OnAir Creator Hybrid USB tuner\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"oac\00", [28 x i8] zeroinitializer }, align 32
@pvr2_cli_onair_creator = internal constant { [3 x %struct.pvr2_device_client_desc], [40 x i8] } { [3 x %struct.pvr2_device_client_desc] [%struct.pvr2_device_client_desc { i8 3, ptr null }, %struct.pvr2_device_client_desc { i8 5, ptr null }, %struct.pvr2_device_client_desc { i8 4, ptr null }], [40 x i8] zeroinitializer }, align 32
@pvr2_onair_creator_fe_props = internal constant { %struct.pvr2_dvb_props, [24 x i8] } { %struct.pvr2_dvb_props { ptr @pvr2_lgdt3303_attach, ptr @pvr2_lgh06xf_attach }, [24 x i8] zeroinitializer }, align 32
@pvr2_device_onair_creator = internal constant { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 }, [32 x i8] } { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 } { ptr @.str.14, ptr @.str.15, %struct.pvr2_string_table zeroinitializer, %struct.pvr2_device_client_table { ptr @pvr2_cli_onair_creator, i8 3 }, %struct.pvr2_string_table zeroinitializer, ptr @pvr2_onair_creator_fe_props, i64 4096, i32 64, i8 2, i8 0, i8 2, i8 64, i8 14, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lgdt330x_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:lgdt330x_attach\00", [41 x i8] zeroinitializer }, align 32
@pvr2_lgdt3303_config = internal global { %struct.lgdt330x_config, [40 x i8] } { %struct.lgdt330x_config { i32 2, i32 0, ptr null, ptr null, i32 1, ptr null }, [40 x i8] zeroinitializer }, align 32
@pvr2_lgdt3303_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol lgdt330x_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pvr2_lgdt3303_attach\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/usb/pvrusb2/pvrusb2-devattr.c\00", [52 x i8] zeroinitializer }, align 32
@pvr2_lgdt3303_attach._entry_ptr = internal global ptr @pvr2_lgdt3303_attach._entry, section ".printk_index", align 4
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"simple_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"symbol:simple_tuner_attach\00", [37 x i8] zeroinitializer }, align 32
@pvr2_lgh06xf_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.21, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013DVB: Unable to find symbol simple_tuner_attach()\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pvr2_lgh06xf_attach\00", [44 x i8] zeroinitializer }, align 32
@pvr2_lgh06xf_attach._entry_ptr = internal global ptr @pvr2_lgh06xf_attach._entry, section ".printk_index", align 4
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"OnAir USB2 Hybrid USB tuner\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"oa2\00", [28 x i8] zeroinitializer }, align 32
@pvr2_cli_onair_usb2 = internal constant { [3 x %struct.pvr2_device_client_desc], [40 x i8] } { [3 x %struct.pvr2_device_client_desc] [%struct.pvr2_device_client_desc { i8 3, ptr null }, %struct.pvr2_device_client_desc { i8 5, ptr null }, %struct.pvr2_device_client_desc { i8 4, ptr null }], [40 x i8] zeroinitializer }, align 32
@pvr2_onair_usb2_fe_props = internal constant { %struct.pvr2_dvb_props, [24 x i8] } { %struct.pvr2_dvb_props { ptr @pvr2_lgdt3302_attach, ptr @pvr2_fcv1236d_attach }, [24 x i8] zeroinitializer }, align 32
@pvr2_device_onair_usb2 = internal constant { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 }, [32 x i8] } { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 } { ptr @.str.26, ptr @.str.27, %struct.pvr2_string_table zeroinitializer, %struct.pvr2_device_client_table { ptr @pvr2_cli_onair_usb2, i8 3 }, %struct.pvr2_string_table zeroinitializer, ptr @pvr2_onair_usb2_fe_props, i64 4096, i32 42, i8 2, i8 0, i8 2, i8 64, i8 14, i8 0 }, [32 x i8] zeroinitializer }, align 32
@pvr2_lgdt3302_config = internal global { %struct.lgdt330x_config, [40 x i8] } { %struct.lgdt330x_config { i32 1, i32 0, ptr null, ptr null, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@pvr2_lgdt3302_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.29, ptr @.str.21, i32 246, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pvr2_lgdt3302_attach\00", [43 x i8] zeroinitializer }, align 32
@pvr2_lgdt3302_attach._entry_ptr = internal global ptr @pvr2_lgdt3302_attach._entry, section ".printk_index", align 4
@pvr2_fcv1236d_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.30, ptr @.str.21, i32 257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pvr2_fcv1236d_attach\00", [43 x i8] zeroinitializer }, align 32
@pvr2_fcv1236d_attach._entry_ptr = internal global ptr @pvr2_fcv1236d_attach._entry, section ".printk_index", align 4
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WinTV HVR-1900 Model 73xxx\00", [37 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"73xxx\00", [26 x i8] zeroinitializer }, align 32
@pvr2_cli_73xxx = internal constant { [2 x %struct.pvr2_device_client_desc], [16 x i8] } { [2 x %struct.pvr2_device_client_desc] [%struct.pvr2_device_client_desc { i8 2, ptr null }, %struct.pvr2_device_client_desc { i8 4, ptr @.str.34 }], [16 x i8] zeroinitializer }, align 32
@pvr2_fw1_names_73xxx = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.35], [28 x i8] zeroinitializer }, align 32
@pvr2_73xxx_dvb_props = internal constant { %struct.pvr2_dvb_props, [24 x i8] } { %struct.pvr2_dvb_props { ptr @pvr2_tda10048_attach, ptr @pvr2_73xxx_tda18271_8295_attach }, [24 x i8] zeroinitializer }, align 32
@pvr2_device_73xxx = internal constant { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 }, [32 x i8] } { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 } { ptr @.str.31, ptr @.str.32, %struct.pvr2_string_table zeroinitializer, %struct.pvr2_device_client_table { ptr @pvr2_cli_73xxx, i8 2 }, %struct.pvr2_string_table { ptr @pvr2_fw1_names_73xxx, i32 1 }, ptr @pvr2_73xxx_dvb_props, i64 0, i32 0, i8 0, i8 1, i8 1, i8 40, i8 79, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"v4l-pvrusb2-73xxx-01.fw\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10048_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda10048_attach\00", [41 x i8] zeroinitializer }, align 32
@hauppauge_tda10048_config = internal global { %struct.tda10048_config, [46 x i8] } { %struct.tda10048_config { i8 8, i8 0, i8 50, i8 1, i16 3300, i16 3800, i16 4300, i16 16000, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0 }, [46 x i8] zeroinitializer }, align 32
@pvr2_tda10048_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.21, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda10048_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pvr2_tda10048_attach\00", [43 x i8] zeroinitializer }, align 32
@pvr2_tda10048_attach._entry_ptr = internal global ptr @pvr2_tda10048_attach._entry, section ".printk_index", align 4
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda829x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda829x_attach\00", [42 x i8] zeroinitializer }, align 32
@tda829x_no_probe = internal global { %struct.tda829x_config, [20 x i8] } { %struct.tda829x_config { i32 0, i8 -128, ptr null }, [20 x i8] zeroinitializer }, align 32
@pvr2_73xxx_tda18271_8295_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.21, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda829x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"pvr2_73xxx_tda18271_8295_attach\00", [32 x i8] zeroinitializer }, align 32
@pvr2_73xxx_tda18271_8295_attach._entry_ptr = internal global ptr @pvr2_73xxx_tda18271_8295_attach._entry, section ".printk_index", align 4
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18271_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda18271_attach\00", [41 x i8] zeroinitializer }, align 32
@hauppauge_tda18271_dvb_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @hauppauge_tda18271_dvbt_std_map, i32 0, i32 1, i32 1, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@pvr2_73xxx_tda18271_8295_attach._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.43, ptr @.str.21, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda18271_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@pvr2_73xxx_tda18271_8295_attach._entry_ptr.48 = internal global ptr @pvr2_73xxx_tda18271_8295_attach._entry.46, section ".printk_index", align 4
@hauppauge_tda18271_dvbt_std_map = internal global { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, { i16, i8, i8 }, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 3300, i8 -32, i8 -73 }, { i16, i8, i8 } { i16 3800, i8 -24, i8 -73 }, { i16, i8, i8 } { i16 4300, i8 -16, i8 -73 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WinTV HVR-1950 Model 750xx\00", [37 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"750xx\00", [26 x i8] zeroinitializer }, align 32
@pvr2_fw1_names_75xxx = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.35], [28 x i8] zeroinitializer }, align 32
@pvr2_750xx_dvb_props = internal constant { %struct.pvr2_dvb_props, [24 x i8] } { %struct.pvr2_dvb_props { ptr @pvr2_s5h1409_attach, ptr @pvr2_tda18271_8295_attach }, [24 x i8] zeroinitializer }, align 32
@pvr2_device_750xx = internal constant { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 }, [32 x i8] } { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 } { ptr @.str.50, ptr @.str.51, %struct.pvr2_string_table zeroinitializer, %struct.pvr2_device_client_table { ptr @pvr2_cli_73xxx, i8 2 }, %struct.pvr2_string_table { ptr @pvr2_fw1_names_75xxx, i32 1 }, ptr @pvr2_750xx_dvb_props, i64 4096, i32 0, i8 0, i8 1, i8 1, i8 40, i8 79, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1409_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:s5h1409_attach\00", [42 x i8] zeroinitializer }, align 32
@pvr2_s5h1409_config = internal global { %struct.s5h1409_config, [20 x i8] } { %struct.s5h1409_config { i8 25, i8 0, i8 0, i16 4000, i8 1, i8 1, i16 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@pvr2_s5h1409_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.21, i32 430, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol s5h1409_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pvr2_s5h1409_attach\00", [44 x i8] zeroinitializer }, align 32
@pvr2_s5h1409_attach._entry_ptr = internal global ptr @pvr2_s5h1409_attach._entry, section ".printk_index", align 4
@pvr2_tda18271_8295_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.57, ptr @.str.21, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pvr2_tda18271_8295_attach\00", [38 x i8] zeroinitializer }, align 32
@pvr2_tda18271_8295_attach._entry_ptr = internal global ptr @pvr2_tda18271_8295_attach._entry, section ".printk_index", align 4
@hauppauge_tda18271_config = internal global { %struct.tda18271_config, [36 x i8] } { %struct.tda18271_config { ptr @hauppauge_tda18271_std_map, i32 0, i32 1, i32 1, i32 0, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@pvr2_tda18271_8295_attach._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.57, ptr @.str.21, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pvr2_tda18271_8295_attach._entry_ptr.59 = internal global ptr @pvr2_tda18271_8295_attach._entry.58, section ".printk_index", align 4
@hauppauge_tda18271_std_map = internal global { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }, [36 x i8] } { { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, { i16, i8, i8 }, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item } { %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 5380, i8 -37, i8 55 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer, { i16, i8, i8 } { i16 4000, i8 -61, i8 55 }, %struct.tda18271_std_map_item zeroinitializer, %struct.tda18271_std_map_item zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"WinTV HVR-1950 Model 751xx\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"751xx\00", [26 x i8] zeroinitializer }, align 32
@pvr2_751xx_dvb_props = internal constant { %struct.pvr2_dvb_props, [24 x i8] } { %struct.pvr2_dvb_props { ptr @pvr2_s5h1411_attach, ptr @pvr2_tda18271_8295_attach }, [24 x i8] zeroinitializer }, align 32
@pvr2_device_751xx = internal constant { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 }, [32 x i8] } { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 } { ptr @.str.61, ptr @.str.62, %struct.pvr2_string_table zeroinitializer, %struct.pvr2_device_client_table { ptr @pvr2_cli_73xxx, i8 2 }, %struct.pvr2_string_table { ptr @pvr2_fw1_names_75xxx, i32 1 }, ptr @pvr2_751xx_dvb_props, i64 4096, i32 0, i8 0, i8 1, i8 1, i8 40, i8 79, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1411_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:s5h1411_attach\00", [42 x i8] zeroinitializer }, align 32
@pvr2_s5h1411_config = internal global { %struct.s5h1411_config, [22 x i8] } { %struct.s5h1411_config { i8 0, i8 0, i16 0, i16 4000, i16 -21536, i8 1, i8 1 }, [22 x i8] zeroinitializer }, align 32
@pvr2_s5h1411_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.21, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol s5h1411_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pvr2_s5h1411_attach\00", [44 x i8] zeroinitializer }, align 32
@pvr2_s5h1411_attach._entry_ptr = internal global ptr @pvr2_s5h1411_attach._entry, section ".printk_index", align 4
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Terratec Grabster AV400\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"av400\00", [26 x i8] zeroinitializer }, align 32
@pvr2_cli_av400 = internal constant { [1 x %struct.pvr2_device_client_desc], [24 x i8] } { [1 x %struct.pvr2_device_client_desc] [%struct.pvr2_device_client_desc { i8 2, ptr null }], [24 x i8] zeroinitializer }, align 32
@pvr2_device_av400 = internal constant { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 }, [32 x i8] } { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 } { ptr @.str.68, ptr @.str.69, %struct.pvr2_string_table zeroinitializer, %struct.pvr2_device_client_table { ptr @pvr2_cli_av400, i8 1 }, %struct.pvr2_string_table zeroinitializer, ptr null, i64 0, i32 0, i8 3, i8 0, i8 0, i8 8, i8 6, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WinTV HVR-1955 Model 160111\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"160111\00", [25 x i8] zeroinitializer }, align 32
@pvr2_cli_160xxx = internal constant { [1 x %struct.pvr2_device_client_desc], [24 x i8] } { [1 x %struct.pvr2_device_client_desc] [%struct.pvr2_device_client_desc { i8 2, ptr null }], [24 x i8] zeroinitializer }, align 32
@pvr2_fw1_names_160xxx = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.74], [28 x i8] zeroinitializer }, align 32
@pvr2_160111_dvb_props = internal constant { %struct.pvr2_dvb_props, [24 x i8] } { %struct.pvr2_dvb_props { ptr @pvr2_lgdt3306a_attach, ptr @pvr2_si2157_attach }, [24 x i8] zeroinitializer }, align 32
@pvr2_device_160111 = internal constant { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 }, [32 x i8] } { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 } { ptr @.str.71, ptr @.str.72, %struct.pvr2_string_table zeroinitializer, %struct.pvr2_device_client_table { ptr @pvr2_cli_160xxx, i8 1 }, %struct.pvr2_string_table { ptr @pvr2_fw1_names_160xxx, i32 1 }, ptr @pvr2_160111_dvb_props, i64 4096, i32 4, i8 0, i8 1, i8 1, i8 40, i8 79, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"v4l-pvrusb2-160xxx-01.fw\00", [39 x i8] zeroinitializer }, align 32
@pvr2_lgdt3306a_attach.__UNIQUE_ID_ddebug389 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.75, ptr @.str.76, ptr @.str.21, ptr @.str.77, i8 0, i8 -110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pvrusb2\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pvr2_lgdt3306a_attach\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"lgdt3306a\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2157\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2177\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"WinTV HVR-1975 Model 160000\00", [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"160000\00", [25 x i8] zeroinitializer }, align 32
@pvr2_160000_dvb_props = internal constant { %struct.pvr2_dvb_props, [24 x i8] } { %struct.pvr2_dvb_props { ptr @pvr2_dual_fe_attach, ptr @pvr2_si2157_attach }, [24 x i8] zeroinitializer }, align 32
@pvr2_device_160000 = internal constant { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 }, [32 x i8] } { { ptr, ptr, %struct.pvr2_string_table, %struct.pvr2_device_client_table, %struct.pvr2_string_table, ptr, i64, i32, i8, i8, i8, i8, i8, i8 } { ptr @.str.81, ptr @.str.82, %struct.pvr2_string_table zeroinitializer, %struct.pvr2_device_client_table { ptr @pvr2_cli_160xxx, i8 1 }, %struct.pvr2_string_table { ptr @pvr2_fw1_names_160xxx, i32 1 }, ptr @pvr2_160000_dvb_props, i64 4096, i32 4, i8 0, i8 1, i8 1, i8 40, i8 79, i8 0 }, [32 x i8] zeroinitializer }, align 32
@pvr2_dual_fe_attach.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.75, ptr @.str.84, ptr @.str.21, ptr @.str.77, i8 0, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pvr2_dual_fe_attach\00", [44 x i8] zeroinitializer }, align 32
@pvr2_si2168_attach.__UNIQUE_ID_ddebug388 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.75, ptr @.str.85, ptr @.str.21, ptr @.str.77, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pvr2_si2168_attach\00", [45 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"si2168\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"pvr2_device_table\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 684, i32 22 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 52, i32 18 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 53, i32 16 }
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"pvr2_cli_29xxx\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 39, i32 45 }
@___asan_gen_.99 = private unnamed_addr constant [21 x i8] c"pvr2_fw1_names_29xxx\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 47, i32 20 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"pvr2_device_29xxx\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 51, i32 38 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 48, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 86, i32 18 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 87, i32 16 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"pvr2_cli_24xxx\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 73, i32 45 }
@___asan_gen_.117 = private unnamed_addr constant [21 x i8] c"pvr2_fw1_names_24xxx\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 81, i32 20 }
@___asan_gen_.120 = private unnamed_addr constant [18 x i8] c"pvr2_device_24xxx\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 85, i32 38 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 82, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 116, i32 18 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 117, i32 16 }
@___asan_gen_.132 = private unnamed_addr constant [19 x i8] c"pvr2_cli_gotview_2\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 109, i32 45 }
@___asan_gen_.135 = private unnamed_addr constant [22 x i8] c"pvr2_device_gotview_2\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 115, i32 38 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 137, i32 18 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 138, i32 16 }
@___asan_gen_.144 = private unnamed_addr constant [23 x i8] c"pvr2_device_gotview_2d\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 136, i32 38 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 215, i32 18 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 216, i32 16 }
@___asan_gen_.153 = private unnamed_addr constant [23 x i8] c"pvr2_cli_onair_creator\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 208, i32 45 }
@___asan_gen_.156 = private unnamed_addr constant [28 x i8] c"pvr2_onair_creator_fe_props\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 202, i32 36 }
@___asan_gen_.159 = private unnamed_addr constant [26 x i8] c"pvr2_device_onair_creator\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 214, i32 38 }
@___asan_gen_.168 = private unnamed_addr constant [21 x i8] c"pvr2_lgdt3303_config\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 177, i32 31 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 184, i32 16 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 195, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 275, i32 18 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 276, i32 16 }
@___asan_gen_.204 = private unnamed_addr constant [20 x i8] c"pvr2_cli_onair_usb2\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 268, i32 45 }
@___asan_gen_.207 = private unnamed_addr constant [25 x i8] c"pvr2_onair_usb2_fe_props\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 262, i32 36 }
@___asan_gen_.210 = private unnamed_addr constant [23 x i8] c"pvr2_device_onair_usb2\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 274, i32 38 }
@___asan_gen_.213 = private unnamed_addr constant [21 x i8] c"pvr2_lgdt3302_config\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 238, i32 31 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 244, i32 16 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 255, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 369, i32 18 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 370, i32 16 }
@___asan_gen_.234 = private unnamed_addr constant [15 x i8] c"pvr2_cli_73xxx\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 357, i32 45 }
@___asan_gen_.237 = private unnamed_addr constant [21 x i8] c"pvr2_fw1_names_73xxx\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 364, i32 20 }
@___asan_gen_.240 = private unnamed_addr constant [21 x i8] c"pvr2_73xxx_dvb_props\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 351, i32 36 }
@___asan_gen_.243 = private unnamed_addr constant [18 x i8] c"pvr2_device_73xxx\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 368, i32 38 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 360, i32 24 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 365, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [26 x i8] c"hauppauge_tda10048_config\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 298, i32 31 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 331, i32 16 }
@___asan_gen_.276 = private unnamed_addr constant [17 x i8] c"tda829x_no_probe\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 310, i32 30 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 341, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [30 x i8] c"hauppauge_tda18271_dvb_config\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 323, i32 31 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 344, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [32 x i8] c"hauppauge_tda18271_dvbt_std_map\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 314, i32 32 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 476, i32 18 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 477, i32 16 }
@___asan_gen_.312 = private unnamed_addr constant [21 x i8] c"pvr2_fw1_names_75xxx\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 471, i32 20 }
@___asan_gen_.315 = private unnamed_addr constant [21 x i8] c"pvr2_750xx_dvb_props\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 459, i32 36 }
@___asan_gen_.318 = private unnamed_addr constant [18 x i8] c"pvr2_device_750xx\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 475, i32 38 }
@___asan_gen_.327 = private unnamed_addr constant [20 x i8] c"pvr2_s5h1409_config\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 396, i32 30 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 429, i32 16 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 449, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant [26 x i8] c"hauppauge_tda18271_config\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 421, i32 31 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 452, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant [27 x i8] c"hauppauge_tda18271_std_map\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 414, i32 32 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 499, i32 18 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 500, i32 16 }
@___asan_gen_.360 = private unnamed_addr constant [21 x i8] c"pvr2_751xx_dvb_props\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 464, i32 36 }
@___asan_gen_.363 = private unnamed_addr constant [18 x i8] c"pvr2_device_751xx\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 498, i32 38 }
@___asan_gen_.372 = private unnamed_addr constant [20 x i8] c"pvr2_s5h1411_config\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 405, i32 30 }
@___asan_gen_.375 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 439, i32 16 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 159, i32 18 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 160, i32 16 }
@___asan_gen_.390 = private unnamed_addr constant [15 x i8] c"pvr2_cli_av400\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 154, i32 45 }
@___asan_gen_.393 = private unnamed_addr constant [18 x i8] c"pvr2_device_av400\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 158, i32 38 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 659, i32 18 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 660, i32 16 }
@___asan_gen_.402 = private unnamed_addr constant [16 x i8] c"pvr2_cli_160xxx\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 630, i32 45 }
@___asan_gen_.405 = private unnamed_addr constant [22 x i8] c"pvr2_fw1_names_160xxx\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 626, i32 20 }
@___asan_gen_.408 = private unnamed_addr constant [22 x i8] c"pvr2_160111_dvb_props\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 535, i32 36 }
@___asan_gen_.411 = private unnamed_addr constant [19 x i8] c"pvr2_device_160111\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 658, i32 38 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 627, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 586, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 599, i32 47 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 547, i32 44 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 547, i32 54 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 635, i32 18 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 636, i32 16 }
@___asan_gen_.441 = private unnamed_addr constant [22 x i8] c"pvr2_160000_dvb_props\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 530, i32 36 }
@___asan_gen_.444 = private unnamed_addr constant [19 x i8] c"pvr2_device_160000\00", align 1
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 634, i32 38 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 611, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 562, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.454 = private constant [47 x i8] c"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c\00", align 1
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.454, i32 571, i32 47 }
@llvm.compiler.used = appending global [138 x ptr] [ptr @__UNIQUE_ID_firmware391, ptr @__UNIQUE_ID_firmware392, ptr @__UNIQUE_ID_firmware393, ptr @__UNIQUE_ID_firmware394, ptr @pvr2_73xxx_tda18271_8295_attach._entry, ptr @pvr2_73xxx_tda18271_8295_attach._entry.46, ptr @pvr2_73xxx_tda18271_8295_attach._entry_ptr, ptr @pvr2_73xxx_tda18271_8295_attach._entry_ptr.48, ptr @pvr2_fcv1236d_attach._entry, ptr @pvr2_fcv1236d_attach._entry_ptr, ptr @pvr2_lgdt3302_attach._entry, ptr @pvr2_lgdt3302_attach._entry_ptr, ptr @pvr2_lgdt3303_attach._entry, ptr @pvr2_lgdt3303_attach._entry_ptr, ptr @pvr2_lgh06xf_attach._entry, ptr @pvr2_lgh06xf_attach._entry_ptr, ptr @pvr2_s5h1409_attach._entry, ptr @pvr2_s5h1409_attach._entry_ptr, ptr @pvr2_s5h1411_attach._entry, ptr @pvr2_s5h1411_attach._entry_ptr, ptr @pvr2_tda10048_attach._entry, ptr @pvr2_tda10048_attach._entry_ptr, ptr @pvr2_tda18271_8295_attach._entry, ptr @pvr2_tda18271_8295_attach._entry.58, ptr @pvr2_tda18271_8295_attach._entry_ptr, ptr @pvr2_tda18271_8295_attach._entry_ptr.59, ptr @pvr2_device_table, ptr @.str, ptr @.str.1, ptr @pvr2_cli_29xxx, ptr @pvr2_fw1_names_29xxx, ptr @pvr2_device_29xxx, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pvr2_cli_24xxx, ptr @pvr2_fw1_names_24xxx, ptr @pvr2_device_24xxx, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @pvr2_cli_gotview_2, ptr @pvr2_device_gotview_2, ptr @.str.11, ptr @.str.12, ptr @pvr2_device_gotview_2d, ptr @.str.14, ptr @.str.15, ptr @pvr2_cli_onair_creator, ptr @pvr2_onair_creator_fe_props, ptr @pvr2_device_onair_creator, ptr @.str.17, ptr @.str.18, ptr @pvr2_lgdt3303_config, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @pvr2_cli_onair_usb2, ptr @pvr2_onair_usb2_fe_props, ptr @pvr2_device_onair_usb2, ptr @pvr2_lgdt3302_config, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @pvr2_cli_73xxx, ptr @pvr2_fw1_names_73xxx, ptr @pvr2_73xxx_dvb_props, ptr @pvr2_device_73xxx, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @hauppauge_tda10048_config, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @tda829x_no_probe, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @hauppauge_tda18271_dvb_config, ptr @.str.47, ptr @hauppauge_tda18271_dvbt_std_map, ptr @.str.50, ptr @.str.51, ptr @pvr2_fw1_names_75xxx, ptr @pvr2_750xx_dvb_props, ptr @pvr2_device_750xx, ptr @.str.53, ptr @.str.54, ptr @pvr2_s5h1409_config, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @hauppauge_tda18271_config, ptr @hauppauge_tda18271_std_map, ptr @.str.61, ptr @.str.62, ptr @pvr2_751xx_dvb_props, ptr @pvr2_device_751xx, ptr @.str.64, ptr @.str.65, ptr @pvr2_s5h1411_config, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @pvr2_cli_av400, ptr @pvr2_device_av400, ptr @.str.71, ptr @.str.72, ptr @pvr2_cli_160xxx, ptr @pvr2_fw1_names_160xxx, ptr @pvr2_160111_dvb_props, ptr @pvr2_device_160111, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @pvr2_160000_dvb_props, ptr @pvr2_device_160000, ptr @.str.84, ptr @.str.85, ptr @.str.86], section "llvm.metadata"
@0 = internal global [123 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_device_table to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_cli_29xxx to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_fw1_names_29xxx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_device_29xxx to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_cli_24xxx to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_fw1_names_24xxx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_device_24xxx to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_cli_gotview_2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_device_gotview_2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_device_gotview_2d to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_cli_onair_creator to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_onair_creator_fe_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_device_onair_creator to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_lgdt3303_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_lgdt3303_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_lgh06xf_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_cli_onair_usb2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_onair_usb2_fe_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_device_onair_usb2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_lgdt3302_config to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_lgdt3302_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_fcv1236d_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_cli_73xxx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_fw1_names_73xxx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_73xxx_dvb_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_device_73xxx to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_tda10048_config to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_tda10048_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda829x_no_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_73xxx_tda18271_8295_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_tda18271_dvb_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_73xxx_tda18271_8295_attach._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_tda18271_dvbt_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_fw1_names_75xxx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_750xx_dvb_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_device_750xx to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_s5h1409_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_s5h1409_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_tda18271_8295_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_tda18271_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_tda18271_8295_attach._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_tda18271_std_map to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_751xx_dvb_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_device_751xx to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_s5h1411_config to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_s5h1411_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_cli_av400 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_device_av400 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_cli_160xxx to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_fw1_names_160xxx to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_160111_dvb_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_device_160111 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_160000_dvb_props to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pvr2_device_160000 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_lgdt3303_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.17) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.18) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.17) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond20 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %adap, i32 0, i32 4
  %0 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdw, align 8
  %i2c_adap = getelementptr inbounds %struct.pvr2_hdw, ptr %1, i32 0, i32 10
  %call4 = tail call ptr %cond20(ptr noundef nonnull @pvr2_lgdt3303_config, i8 noundef zeroext 14, ptr noundef %i2c_adap) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.17) #4
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #7
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  %__r.0 = phi ptr [ null, %if.then5 ], [ %call4, %if.then.if.end7_crit_edge ], [ null, %do.end ]
  %fe = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 5
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %__r.0, ptr %fe, align 8
  %tobool11.not = icmp eq ptr %__r.0, null
  %. = select i1 %tobool11.not, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_lgh06xf_attach(ptr nocapture noundef readonly %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.22) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.23) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.22) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond14 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 5
  %0 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe, align 8
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %adap, i32 0, i32 4
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 8
  %i2c_adap = getelementptr inbounds %struct.pvr2_hdw, ptr %3, i32 0, i32 10
  %call4 = tail call ptr %cond14(ptr noundef %1, ptr noundef %i2c_adap, i8 noundef zeroext 97, i32 noundef 64) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.22) #4
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #7
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_lgdt3302_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.17) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.18) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.17) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond20 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %adap, i32 0, i32 4
  %0 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdw, align 8
  %i2c_adap = getelementptr inbounds %struct.pvr2_hdw, ptr %1, i32 0, i32 10
  %call4 = tail call ptr %cond20(ptr noundef nonnull @pvr2_lgdt3302_config, i8 noundef zeroext 14, ptr noundef %i2c_adap) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.17) #4
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #7
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  %__r.0 = phi ptr [ null, %if.then5 ], [ %call4, %if.then.if.end7_crit_edge ], [ null, %do.end ]
  %fe = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 5
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %__r.0, ptr %fe, align 8
  %tobool11.not = icmp eq ptr %__r.0, null
  %. = select i1 %tobool11.not, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_fcv1236d_attach(ptr nocapture noundef readonly %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.22) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.23) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.22) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond14 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 5
  %0 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe, align 8
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %adap, i32 0, i32 4
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 8
  %i2c_adap = getelementptr inbounds %struct.pvr2_hdw, ptr %3, i32 0, i32 10
  %call4 = tail call ptr %cond14(ptr noundef %1, ptr noundef %i2c_adap, i8 noundef zeroext 97, i32 noundef 42) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.22) #4
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #7
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_tda10048_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.36) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.37) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.36) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond20 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %adap, i32 0, i32 4
  %0 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdw, align 8
  %i2c_adap = getelementptr inbounds %struct.pvr2_hdw, ptr %1, i32 0, i32 10
  %call4 = tail call ptr %cond20(ptr noundef nonnull @hauppauge_tda10048_config, ptr noundef %i2c_adap) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.36) #4
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #7
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  %__r.0 = phi ptr [ null, %if.then5 ], [ %call4, %if.then.if.end7_crit_edge ], [ null, %do.end ]
  %fe = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 5
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %__r.0, ptr %fe, align 8
  %tobool11.not = icmp eq ptr %__r.0, null
  %. = select i1 %tobool11.not, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_73xxx_tda18271_8295_attach(ptr nocapture noundef readonly %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.40) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.41) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.40) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond47 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 5
  %0 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe, align 8
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %adap, i32 0, i32 4
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 8
  %i2c_adap = getelementptr inbounds %struct.pvr2_hdw, ptr %3, i32 0, i32 10
  %call4 = tail call ptr %cond47(ptr noundef %1, ptr noundef %i2c_adap, i8 noundef zeroext 66, ptr noundef nonnull @tda829x_no_probe) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.40) #4
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #7
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  %call11 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.44) #4
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %cond.end17, label %if.end7.if.then20_crit_edge

if.end7.if.then20_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

cond.end17:                                       ; preds = %if.end7
  %call15 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.45) #4
  %call16 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.44) #4
  %tobool19.not = icmp eq ptr %call16, null
  br i1 %tobool19.not, label %do.end33, label %cond.end17.if.then20_crit_edge

cond.end17.if.then20_crit_edge:                   ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

if.then20:                                        ; preds = %cond.end17.if.then20_crit_edge, %if.end7.if.then20_crit_edge
  %cond1850 = phi ptr [ %call16, %cond.end17.if.then20_crit_edge ], [ %call11, %if.end7.if.then20_crit_edge ]
  %fe21 = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 5
  %4 = ptrtoint ptr %fe21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe21, align 8
  %hdw24 = getelementptr inbounds %struct.pvr2_channel, ptr %adap, i32 0, i32 4
  %6 = ptrtoint ptr %hdw24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdw24, align 8
  %i2c_adap25 = getelementptr inbounds %struct.pvr2_hdw, ptr %7, i32 0, i32 10
  %call26 = tail call ptr %cond1850(ptr noundef %5, i8 noundef zeroext 96, ptr noundef %i2c_adap25, ptr noundef nonnull @hauppauge_tda18271_dvb_config) #4
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %if.then28, label %if.then20.if.end36_crit_edge

if.then20.if.end36_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then28:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.44) #4
  br label %if.end36

do.end33:                                         ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #7
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %if.then28, %if.then20.if.end36_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_s5h1409_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.54) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.53) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond20 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %adap, i32 0, i32 4
  %0 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdw, align 8
  %i2c_adap = getelementptr inbounds %struct.pvr2_hdw, ptr %1, i32 0, i32 10
  %call4 = tail call ptr %cond20(ptr noundef nonnull @pvr2_s5h1409_config, ptr noundef %i2c_adap) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.53) #4
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55) #7
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  %__r.0 = phi ptr [ null, %if.then5 ], [ %call4, %if.then.if.end7_crit_edge ], [ null, %do.end ]
  %fe = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 5
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %__r.0, ptr %fe, align 8
  %tobool11.not = icmp eq ptr %__r.0, null
  %. = select i1 %tobool11.not, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_tda18271_8295_attach(ptr nocapture noundef readonly %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.40) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.41) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.40) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond47 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 5
  %0 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe, align 8
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %adap, i32 0, i32 4
  %2 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hdw, align 8
  %i2c_adap = getelementptr inbounds %struct.pvr2_hdw, ptr %3, i32 0, i32 10
  %call4 = tail call ptr %cond47(ptr noundef %1, ptr noundef %i2c_adap, i8 noundef zeroext 66, ptr noundef nonnull @tda829x_no_probe) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.40) #4
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #7
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  %call11 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.44) #4
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %cond.end17, label %if.end7.if.then20_crit_edge

if.end7.if.then20_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

cond.end17:                                       ; preds = %if.end7
  %call15 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.45) #4
  %call16 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.44) #4
  %tobool19.not = icmp eq ptr %call16, null
  br i1 %tobool19.not, label %do.end33, label %cond.end17.if.then20_crit_edge

cond.end17.if.then20_crit_edge:                   ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then20

if.then20:                                        ; preds = %cond.end17.if.then20_crit_edge, %if.end7.if.then20_crit_edge
  %cond1850 = phi ptr [ %call16, %cond.end17.if.then20_crit_edge ], [ %call11, %if.end7.if.then20_crit_edge ]
  %fe21 = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 5
  %4 = ptrtoint ptr %fe21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fe21, align 8
  %hdw24 = getelementptr inbounds %struct.pvr2_channel, ptr %adap, i32 0, i32 4
  %6 = ptrtoint ptr %hdw24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdw24, align 8
  %i2c_adap25 = getelementptr inbounds %struct.pvr2_hdw, ptr %7, i32 0, i32 10
  %call26 = tail call ptr %cond1850(ptr noundef %5, i8 noundef zeroext 96, ptr noundef %i2c_adap25, ptr noundef nonnull @hauppauge_tda18271_config) #4
  %cmp27 = icmp eq ptr %call26, null
  br i1 %cmp27, label %if.then28, label %if.then20.if.end36_crit_edge

if.then20.if.end36_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end36

if.then28:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.44) #4
  br label %if.end36

do.end33:                                         ; preds = %cond.end17
  call void @__sanitizer_cov_trace_pc() #6
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #7
  br label %if.end36

if.end36:                                         ; preds = %do.end33, %if.then28, %if.then20.if.end36_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_s5h1411_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.64) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.65) #4
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.64) #4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond20 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %adap, i32 0, i32 4
  %0 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hdw, align 8
  %i2c_adap = getelementptr inbounds %struct.pvr2_hdw, ptr %1, i32 0, i32 10
  %call4 = tail call ptr %cond20(ptr noundef nonnull @pvr2_s5h1411_config, ptr noundef %i2c_adap) #4
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @__symbol_put(ptr noundef nonnull @.str.64) #4
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66) #7
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  %__r.0 = phi ptr [ null, %if.then5 ], [ %call4, %if.then.if.end7_crit_edge ], [ null, %do.end ]
  %fe = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 5
  %2 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %__r.0, ptr %fe, align 8
  %tobool11.not = icmp eq ptr %__r.0, null
  %. = select i1 %tobool11.not, i32 -5, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_lgdt3306a_attach(ptr noundef %adap) #0 align 64 {
entry:
  %lgdt3306a_config = alloca %struct.lgdt3306a_config, align 4
  %adapter = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %lgdt3306a_config) #4
  %0 = call ptr @memset(ptr %lgdt3306a_config, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adapter) #4
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %adapter, align 4, !annotation !244
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvr2_lgdt3306a_attach.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvr2_lgdt3306a_attach, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pvr2_lgdt3306a_attach.__UNIQUE_ID_ddebug389, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.76) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fe = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 5
  %fe3 = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config, i32 0, i32 8
  %2 = ptrtoint ptr %fe3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fe, ptr %fe3, align 4
  %i2c_adapter = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config, i32 0, i32 9
  %3 = ptrtoint ptr %i2c_adapter to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %adapter, ptr %i2c_adapter, align 4
  %deny_i2c_rptr = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config, i32 0, i32 3
  %4 = ptrtoint ptr %deny_i2c_rptr to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %deny_i2c_rptr, align 2
  %bf.set6 = or i8 %bf.load, -64
  store i8 %bf.set6, ptr %deny_i2c_rptr, align 2
  %qam_if_khz = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config, i32 0, i32 1
  %5 = ptrtoint ptr %qam_if_khz to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4000, ptr %qam_if_khz, align 2
  %vsb_if_khz = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config, i32 0, i32 2
  %6 = ptrtoint ptr %vsb_if_khz to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 3250, ptr %vsb_if_khz, align 4
  %mpeg_mode = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config, i32 0, i32 4
  %7 = ptrtoint ptr %mpeg_mode to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mpeg_mode, align 4
  %tpclk_edge = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config, i32 0, i32 5
  %8 = ptrtoint ptr %tpclk_edge to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %tpclk_edge, align 4
  %tpvalid_polarity = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config, i32 0, i32 6
  %9 = ptrtoint ptr %tpvalid_polarity to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tpvalid_polarity, align 4
  %xtalMHz = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config, i32 0, i32 7
  %10 = ptrtoint ptr %xtalMHz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 25, ptr %xtalMHz, align 4
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %adap, i32 0, i32 4
  %11 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdw, align 8
  %i2c_adap = getelementptr inbounds %struct.pvr2_hdw, ptr %12, i32 0, i32 10
  %call7 = call ptr @dvb_module_probe(ptr noundef nonnull @.str.78, ptr noundef null, ptr noundef %i2c_adap, i8 noundef zeroext 89, ptr noundef nonnull %lgdt3306a_config) #4
  %i2c_client_demod = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 6
  %13 = ptrtoint ptr %i2c_client_demod to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7, ptr %i2c_client_demod, align 8
  %tobool11.not = icmp eq ptr %call7, null
  %. = select i1 %tobool11.not, i32 -19, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adapter) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lgdt3306a_config) #4
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_si2157_attach(ptr nocapture noundef %adap) #0 align 64 {
entry:
  %si2157_config = alloca %struct.si2157_config, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2157_config) #4
  %0 = getelementptr inbounds i8, ptr %si2157_config, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 8)
  store i64 0, ptr %0, align 4
  %inversion = getelementptr inbounds %struct.si2157_config, ptr %si2157_config, i32 0, i32 2
  %2 = ptrtoint ptr %inversion to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -128, ptr %inversion, align 4
  %fe = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 5
  %3 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fe, align 8
  %5 = ptrtoint ptr %si2157_config to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %si2157_config, align 4
  %hdw = getelementptr inbounds %struct.pvr2_channel, ptr %adap, i32 0, i32 4
  %6 = ptrtoint ptr %hdw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hdw, align 8
  %i2c_adap = getelementptr inbounds %struct.pvr2_hdw, ptr %7, i32 0, i32 10
  %call = call ptr @dvb_module_probe(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, ptr noundef %i2c_adap, i8 noundef zeroext 96, ptr noundef nonnull %si2157_config) #4
  %i2c_client_tuner = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 7
  %8 = ptrtoint ptr %i2c_client_tuner to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %i2c_client_tuner, align 8
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -19, i32 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2157_config) #4
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dvb_module_probe(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pvr2_dual_fe_attach(ptr noundef %adap) #0 align 64 {
entry:
  %si2168_config.i = alloca %struct.si2168_config, align 4
  %adapter.i12 = alloca ptr, align 4
  %lgdt3306a_config.i = alloca %struct.lgdt3306a_config, align 4
  %adapter.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvr2_dual_fe_attach.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvr2_dual_fe_attach, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !245

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pvr2_dual_fe_attach.__UNIQUE_ID_ddebug390, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.84) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %lgdt3306a_config.i) #4
  %0 = call ptr @memset(ptr %lgdt3306a_config.i, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adapter.i) #4
  %1 = ptrtoint ptr %adapter.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %adapter.i, align 4, !annotation !244
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvr2_lgdt3306a_attach.__UNIQUE_ID_ddebug389, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvr2_dual_fe_attach, %if.then.i)) #4
          to label %pvr2_lgdt3306a_attach.exit [label %if.then.i], !srcloc !245

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pvr2_lgdt3306a_attach.__UNIQUE_ID_ddebug389, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.76) #4
  br label %pvr2_lgdt3306a_attach.exit

pvr2_lgdt3306a_attach.exit:                       ; preds = %if.then.i, %do.end
  %fe.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 5
  %fe3.i = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config.i, i32 0, i32 8
  %2 = ptrtoint ptr %fe3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fe.i, ptr %fe3.i, align 4
  %i2c_adapter.i = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config.i, i32 0, i32 9
  %3 = ptrtoint ptr %i2c_adapter.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %adapter.i, ptr %i2c_adapter.i, align 4
  %deny_i2c_rptr.i = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config.i, i32 0, i32 3
  %4 = ptrtoint ptr %deny_i2c_rptr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %deny_i2c_rptr.i, align 2
  %bf.set6.i = or i8 %bf.load.i, -64
  store i8 %bf.set6.i, ptr %deny_i2c_rptr.i, align 2
  %qam_if_khz.i = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config.i, i32 0, i32 1
  %5 = ptrtoint ptr %qam_if_khz.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4000, ptr %qam_if_khz.i, align 2
  %vsb_if_khz.i = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config.i, i32 0, i32 2
  %6 = ptrtoint ptr %vsb_if_khz.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 3250, ptr %vsb_if_khz.i, align 4
  %mpeg_mode.i = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config.i, i32 0, i32 4
  %7 = ptrtoint ptr %mpeg_mode.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %mpeg_mode.i, align 4
  %tpclk_edge.i = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config.i, i32 0, i32 5
  %8 = ptrtoint ptr %tpclk_edge.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %tpclk_edge.i, align 4
  %tpvalid_polarity.i = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config.i, i32 0, i32 6
  %9 = ptrtoint ptr %tpvalid_polarity.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %tpvalid_polarity.i, align 4
  %xtalMHz.i = getelementptr inbounds %struct.lgdt3306a_config, ptr %lgdt3306a_config.i, i32 0, i32 7
  %10 = ptrtoint ptr %xtalMHz.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 25, ptr %xtalMHz.i, align 4
  %hdw.i = getelementptr inbounds %struct.pvr2_channel, ptr %adap, i32 0, i32 4
  %11 = ptrtoint ptr %hdw.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hdw.i, align 8
  %i2c_adap.i = getelementptr inbounds %struct.pvr2_hdw, ptr %12, i32 0, i32 10
  %call7.i = call ptr @dvb_module_probe(ptr noundef nonnull @.str.78, ptr noundef null, ptr noundef %i2c_adap.i, i8 noundef zeroext 89, ptr noundef nonnull %lgdt3306a_config.i) #4
  %i2c_client_demod.i = getelementptr inbounds %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 6
  %13 = ptrtoint ptr %i2c_client_demod.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i, ptr %i2c_client_demod.i, align 8
  %tobool11.not.i.not = icmp eq ptr %call7.i, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adapter.i) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %lgdt3306a_config.i) #4
  br i1 %tobool11.not.i.not, label %pvr2_lgdt3306a_attach.exit.return_crit_edge, label %if.end5

pvr2_lgdt3306a_attach.exit.return_crit_edge:      ; preds = %pvr2_lgdt3306a_attach.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end5:                                          ; preds = %pvr2_lgdt3306a_attach.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %si2168_config.i) #4
  %14 = getelementptr inbounds i8, ptr %si2168_config.i, i32 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 100663296, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %adapter.i12) #4
  %16 = ptrtoint ptr %adapter.i12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %adapter.i12, align 4, !annotation !244
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pvr2_si2168_attach.__UNIQUE_ID_ddebug388, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pvr2_dual_fe_attach, %if.then.i13)) #4
          to label %pvr2_si2168_attach.exit [label %if.then.i13], !srcloc !245

if.then.i13:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pvr2_si2168_attach.__UNIQUE_ID_ddebug388, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.85) #4
  br label %pvr2_si2168_attach.exit

pvr2_si2168_attach.exit:                          ; preds = %if.then.i13, %if.end5
  %arrayidx.i = getelementptr %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %si2168_config.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx.i, ptr %si2168_config.i, align 4
  %i2c_adapter.i14 = getelementptr inbounds %struct.si2168_config, ptr %si2168_config.i, i32 0, i32 1
  %18 = ptrtoint ptr %i2c_adapter.i14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %adapter.i12, ptr %i2c_adapter.i14, align 4
  %ts_clock_gapped.i = getelementptr inbounds %struct.si2168_config, ptr %si2168_config.i, i32 0, i32 3
  %19 = ptrtoint ptr %ts_clock_gapped.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load.i15 = load i8, ptr %ts_clock_gapped.i, align 1
  %bf.set.i = and i8 %bf.load.i15, 31
  %bf.set9.i = or i8 %bf.set.i, 96
  store i8 %bf.set9.i, ptr %ts_clock_gapped.i, align 1
  %20 = ptrtoint ptr %hdw.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hdw.i, align 8
  %i2c_adap.i17 = getelementptr inbounds %struct.pvr2_hdw, ptr %21, i32 0, i32 10
  %call10.i = call ptr @dvb_module_probe(ptr noundef nonnull @.str.86, ptr noundef null, ptr noundef %i2c_adap.i17, i8 noundef zeroext 100, ptr noundef nonnull %si2168_config.i) #4
  %arrayidx11.i = getelementptr %struct.pvr2_dvb_adapter, ptr %adap, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call10.i, ptr %arrayidx11.i, align 4
  %tobool14.not.i.not = icmp eq ptr %call10.i, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %adapter.i12) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %si2168_config.i) #4
  br i1 %tobool14.not.i.not, label %if.then8, label %pvr2_si2168_attach.exit.return_crit_edge

pvr2_si2168_attach.exit.return_crit_edge:         ; preds = %pvr2_si2168_attach.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then8:                                         ; preds = %pvr2_si2168_attach.exit
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %i2c_client_demod.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c_client_demod.i, align 8
  call void @dvb_module_release(ptr noundef %24) #4
  br label %return

return:                                           ; preds = %if.then8, %pvr2_si2168_attach.exit.return_crit_edge, %pvr2_lgdt3306a_attach.exit.return_crit_edge
  %retval.0 = phi i32 [ -19, %if.then8 ], [ -19, %pvr2_lgdt3306a_attach.exit.return_crit_edge ], [ 0, %pvr2_si2168_attach.exit.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_module_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 123)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !64, !65, !66, !68, !70, !71, !72, !73, !74, !75, !77, !79, !81, !83, !85, !87, !88, !89, !91, !93, !94, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !115, !116, !117, !118, !120, !122, !123, !124, !125, !126, !127, !129, !130, !131, !132, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !153, !154, !155, !156, !158, !160, !161, !162, !164, !165, !167, !169, !171, !173, !175, !177, !179, !180, !181, !182, !183, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !211, !212, !213, !215, !217, !219, !221, !223, !225, !227, !229, !230, !232, !233}
!llvm.module.flags = !{!235, !236, !237, !238, !239, !240, !241, !242}
!llvm.ident = !{!243}

!0 = !{ptr @pvr2_device_table, !1, !"pvr2_device_table", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 684, i32 22}
!2 = !{ptr @__UNIQUE_ID_firmware391, !3, !"__UNIQUE_ID_firmware391", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 715, i32 1}
!4 = !{ptr @__UNIQUE_ID_firmware392, !5, !"__UNIQUE_ID_firmware392", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 716, i32 1}
!6 = !{ptr @__UNIQUE_ID_firmware393, !7, !"__UNIQUE_ID_firmware393", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 717, i32 1}
!8 = !{ptr @__UNIQUE_ID_firmware394, !9, !"__UNIQUE_ID_firmware394", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 718, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 52, i32 18}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 53, i32 16}
!14 = !{ptr @pvr2_device_29xxx, !15, !"pvr2_device_29xxx", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 51, i32 38}
!16 = !{ptr @pvr2_cli_29xxx, !17, !"pvr2_cli_29xxx", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 39, i32 45}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 48, i32 3}
!20 = !{ptr @pvr2_fw1_names_29xxx, !21, !"pvr2_fw1_names_29xxx", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 47, i32 20}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 86, i32 18}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 87, i32 16}
!26 = !{ptr @pvr2_device_24xxx, !27, !"pvr2_device_24xxx", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 85, i32 38}
!28 = !{ptr @pvr2_cli_24xxx, !29, !"pvr2_cli_24xxx", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 73, i32 45}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 82, i32 3}
!32 = !{ptr @pvr2_fw1_names_24xxx, !33, !"pvr2_fw1_names_24xxx", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 81, i32 20}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 116, i32 18}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 117, i32 16}
!38 = !{ptr @pvr2_device_gotview_2, !39, !"pvr2_device_gotview_2", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 115, i32 38}
!40 = !{ptr @pvr2_cli_gotview_2, !41, !"pvr2_cli_gotview_2", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 109, i32 45}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 137, i32 18}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 138, i32 16}
!46 = !{ptr @pvr2_device_gotview_2d, !47, !"pvr2_device_gotview_2d", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 136, i32 38}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 215, i32 18}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 216, i32 16}
!52 = !{ptr @pvr2_device_onair_creator, !53, !"pvr2_device_onair_creator", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 214, i32 38}
!54 = !{ptr @pvr2_cli_onair_creator, !55, !"pvr2_cli_onair_creator", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 208, i32 45}
!56 = !{ptr @pvr2_onair_creator_fe_props, !57, !"pvr2_onair_creator_fe_props", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 202, i32 36}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 184, i32 16}
!60 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pvr2_lgdt3303_attach._entry, !59, !"_entry", i1 false, i1 false}
!65 = !{ptr @pvr2_lgdt3303_attach._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @pvr2_lgdt3303_config, !67, !"pvr2_lgdt3303_config", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 177, i32 31}
!68 = !{ptr @.str.22, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 195, i32 2}
!70 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @pvr2_lgh06xf_attach._entry, !69, !"_entry", i1 false, i1 false}
!74 = !{ptr @pvr2_lgh06xf_attach._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 275, i32 18}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 276, i32 16}
!79 = !{ptr @pvr2_device_onair_usb2, !80, !"pvr2_device_onair_usb2", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 274, i32 38}
!81 = !{ptr @pvr2_cli_onair_usb2, !82, !"pvr2_cli_onair_usb2", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 268, i32 45}
!83 = !{ptr @pvr2_onair_usb2_fe_props, !84, !"pvr2_onair_usb2_fe_props", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 262, i32 36}
!85 = !{ptr @.str.29, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 244, i32 16}
!87 = !{ptr @pvr2_lgdt3302_attach._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @pvr2_lgdt3302_attach._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @pvr2_lgdt3302_config, !90, !"pvr2_lgdt3302_config", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 238, i32 31}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 255, i32 2}
!93 = !{ptr @pvr2_fcv1236d_attach._entry, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @pvr2_fcv1236d_attach._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.31, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 369, i32 18}
!97 = !{ptr @.str.32, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 370, i32 16}
!99 = !{ptr @pvr2_device_73xxx, !100, !"pvr2_device_73xxx", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 368, i32 38}
!101 = !{ptr @.str.34, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 360, i32 24}
!103 = !{ptr @pvr2_cli_73xxx, !104, !"pvr2_cli_73xxx", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 357, i32 45}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 365, i32 3}
!107 = !{ptr @pvr2_fw1_names_73xxx, !108, !"pvr2_fw1_names_73xxx", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 364, i32 20}
!109 = !{ptr @pvr2_73xxx_dvb_props, !110, !"pvr2_73xxx_dvb_props", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 351, i32 36}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 331, i32 16}
!113 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @pvr2_tda10048_attach._entry, !112, !"_entry", i1 false, i1 false}
!117 = !{ptr @pvr2_tda10048_attach._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @hauppauge_tda10048_config, !119, !"hauppauge_tda10048_config", i1 false, i1 false}
!119 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 298, i32 31}
!120 = !{ptr @.str.40, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 341, i32 2}
!122 = !{ptr @.str.41, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @pvr2_73xxx_tda18271_8295_attach._entry, !121, !"_entry", i1 false, i1 false}
!126 = !{ptr @pvr2_73xxx_tda18271_8295_attach._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.44, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 344, i32 2}
!129 = !{ptr @.str.45, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @pvr2_73xxx_tda18271_8295_attach._entry.46, !128, !"_entry", i1 false, i1 false}
!132 = !{ptr @pvr2_73xxx_tda18271_8295_attach._entry_ptr.48, !128, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @tda829x_no_probe, !134, !"tda829x_no_probe", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 310, i32 30}
!135 = !{ptr @hauppauge_tda18271_dvb_config, !136, !"hauppauge_tda18271_dvb_config", i1 false, i1 false}
!136 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 323, i32 31}
!137 = !{ptr @hauppauge_tda18271_dvbt_std_map, !138, !"hauppauge_tda18271_dvbt_std_map", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 314, i32 32}
!139 = !{ptr @.str.50, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 476, i32 18}
!141 = !{ptr @.str.51, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 477, i32 16}
!143 = !{ptr @pvr2_device_750xx, !144, !"pvr2_device_750xx", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 475, i32 38}
!145 = !{ptr @pvr2_fw1_names_75xxx, !146, !"pvr2_fw1_names_75xxx", i1 false, i1 false}
!146 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 471, i32 20}
!147 = !{ptr @pvr2_750xx_dvb_props, !148, !"pvr2_750xx_dvb_props", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 459, i32 36}
!149 = !{ptr @.str.53, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 429, i32 16}
!151 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @.str.55, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.56, !150, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @pvr2_s5h1409_attach._entry, !150, !"_entry", i1 false, i1 false}
!155 = !{ptr @pvr2_s5h1409_attach._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @pvr2_s5h1409_config, !157, !"pvr2_s5h1409_config", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 396, i32 30}
!158 = !{ptr @.str.57, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 449, i32 2}
!160 = !{ptr @pvr2_tda18271_8295_attach._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @pvr2_tda18271_8295_attach._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @pvr2_tda18271_8295_attach._entry.58, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 452, i32 2}
!164 = !{ptr @pvr2_tda18271_8295_attach._entry_ptr.59, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @hauppauge_tda18271_config, !166, !"hauppauge_tda18271_config", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 421, i32 31}
!167 = !{ptr @hauppauge_tda18271_std_map, !168, !"hauppauge_tda18271_std_map", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 414, i32 32}
!169 = !{ptr @.str.61, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 499, i32 18}
!171 = !{ptr @.str.62, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 500, i32 16}
!173 = !{ptr @pvr2_device_751xx, !174, !"pvr2_device_751xx", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 498, i32 38}
!175 = !{ptr @pvr2_751xx_dvb_props, !176, !"pvr2_751xx_dvb_props", i1 false, i1 false}
!176 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 464, i32 36}
!177 = !{ptr @.str.64, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 439, i32 16}
!179 = !{ptr @.str.65, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.66, !178, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.67, !178, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @pvr2_s5h1411_attach._entry, !178, !"_entry", i1 false, i1 false}
!183 = !{ptr @pvr2_s5h1411_attach._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @pvr2_s5h1411_config, !185, !"pvr2_s5h1411_config", i1 false, i1 false}
!185 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 405, i32 30}
!186 = !{ptr @.str.68, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 159, i32 18}
!188 = !{ptr @.str.69, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 160, i32 16}
!190 = !{ptr @pvr2_device_av400, !191, !"pvr2_device_av400", i1 false, i1 false}
!191 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 158, i32 38}
!192 = !{ptr @pvr2_cli_av400, !193, !"pvr2_cli_av400", i1 false, i1 false}
!193 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 154, i32 45}
!194 = !{ptr @.str.71, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 659, i32 18}
!196 = !{ptr @.str.72, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 660, i32 16}
!198 = !{ptr @pvr2_device_160111, !199, !"pvr2_device_160111", i1 false, i1 false}
!199 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 658, i32 38}
!200 = !{ptr @pvr2_cli_160xxx, !201, !"pvr2_cli_160xxx", i1 false, i1 false}
!201 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 630, i32 45}
!202 = !{ptr @.str.74, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 627, i32 3}
!204 = !{ptr @pvr2_fw1_names_160xxx, !205, !"pvr2_fw1_names_160xxx", i1 false, i1 false}
!205 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 626, i32 20}
!206 = !{ptr @pvr2_160111_dvb_props, !207, !"pvr2_160111_dvb_props", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 535, i32 36}
!208 = !{ptr @.str.75, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 586, i32 2}
!210 = !{ptr @.str.76, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.77, !209, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @pvr2_lgdt3306a_attach.__UNIQUE_ID_ddebug389, !209, !"__UNIQUE_ID_ddebug389", i1 false, i1 false}
!213 = !{ptr @.str.78, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 599, i32 47}
!215 = !{ptr @.str.79, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 547, i32 44}
!217 = !{ptr @.str.80, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 547, i32 54}
!219 = !{ptr @.str.81, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 635, i32 18}
!221 = !{ptr @.str.82, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 636, i32 16}
!223 = !{ptr @pvr2_device_160000, !224, !"pvr2_device_160000", i1 false, i1 false}
!224 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 634, i32 38}
!225 = !{ptr @pvr2_160000_dvb_props, !226, !"pvr2_160000_dvb_props", i1 false, i1 false}
!226 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 530, i32 36}
!227 = !{ptr @.str.84, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 611, i32 2}
!229 = !{ptr @pvr2_dual_fe_attach.__UNIQUE_ID_ddebug390, !228, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!230 = !{ptr @.str.85, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 562, i32 2}
!232 = !{ptr @pvr2_si2168_attach.__UNIQUE_ID_ddebug388, !231, !"__UNIQUE_ID_ddebug388", i1 false, i1 false}
!233 = !{ptr @.str.86, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/usb/pvrusb2/pvrusb2-devattr.c", i32 571, i32 47}
!235 = !{i32 1, !"wchar_size", i32 2}
!236 = !{i32 1, !"min_enum_size", i32 4}
!237 = !{i32 8, !"branch-target-enforcement", i32 0}
!238 = !{i32 8, !"sign-return-address", i32 0}
!239 = !{i32 8, !"sign-return-address-all", i32 0}
!240 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!241 = !{i32 7, !"uwtable", i32 1}
!242 = !{i32 7, !"frame-pointer", i32 2}
!243 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!244 = !{!"auto-init"}
!245 = !{i64 2148828287, i64 2148828292, i64 2148828305, i64 2148828349, i64 2148828383, i64 2148828404}
