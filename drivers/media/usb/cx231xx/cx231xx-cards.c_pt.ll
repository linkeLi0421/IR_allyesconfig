; ModuleID = '/llk/IR_all_yes/drivers/media/usb/cx231xx/cx231xx-cards.c_pt.bc'
source_filename = "../drivers/media/usb/cx231xx/cx231xx-cards.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cx231xx_tuner_callback\22, \22a\22\09"
module asm "\09.weak\09__crc_cx231xx_tuner_callback\09\09\09\09"
module asm "\09.long\09__crc_cx231xx_tuner_callback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cx231xx_tuner_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22cx231xx_tuner_callback\22\09\09\09\09\09"
module asm "__kstrtabns_cx231xx_tuner_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.cx231xx_reg_seq = type { i8, i8, i32 }
%struct.cx231xx_board = type { ptr, i32, i32, i32, i64, i32, i32, i8, ptr, ptr, ptr, i8, i8, i8, i32, i8, i32, i8, i8, i8, ptr, i8, i8, i8, i32, i32, [4 x %struct.cx231xx_input], %struct.cx231xx_input, ptr }
%struct.cx231xx_input = type { i32, i32, i32, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cx231xx = type { [30 x i8], i32, i32, ptr, %struct.cx231xx_board, %struct.IR_i2c_init_data, ptr, i8, ptr, %struct.v4l2_device, ptr, ptr, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, %struct.cx2341x_handler, %struct.work_struct, %struct.atomic_t, %struct.list_head, i32, i32, [3 x %struct.cx231xx_i2c], ptr, [2 x ptr], i8, %struct.mutex, %struct.mutex, i32, %struct.video_device, i64, i32, i32, i32, i32, i32, i32, %struct.cx231xx_audio, i32, %struct.work_struct, %struct.mutex, %struct.mutex, %struct.list_head, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.wait_queue_head, %struct.video_device, %struct.video_device, ptr, %struct.media_pad, %struct.media_pad, [4 x %struct.media_entity], [4 x %struct.media_pad], %struct.vb2_queue, %struct.vb2_queue, [256 x i8], %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.cx231xx_video_mode, %struct.atomic_t, ptr, [80 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.pcb_config, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i32, i8, i8, %struct.cx231xx_tvnorm, %struct.cx231xx_tsport, %struct.cx231xx_tsport, %struct.vb2_queue, %struct.video_device, %struct.atomic_t, i32, i32, i32, ptr, ptr }
%struct.IR_i2c_init_data = type { ptr, ptr, i64, i32, ptr, i32, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.cx2341x_handler = type { i32, i32, i16, i16, i16, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, %struct.anon.102, %struct.anon.103, %struct.anon.104, %struct.anon.105, %struct.anon.106, %struct.anon.107, %struct.anon.108, %struct.anon.109 }
%struct.anon.102 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.103 = type { ptr, ptr }
%struct.anon.104 = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.105 = type { ptr, ptr }
%struct.anon.106 = type { ptr, ptr, ptr }
%struct.anon.107 = type { ptr, ptr }
%struct.anon.108 = type { ptr, ptr }
%struct.anon.109 = type { ptr, ptr, ptr, ptr }
%struct.cx231xx_i2c = type { ptr, i32, %struct.i2c_adapter, i32, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.cx231xx_audio = type { [50 x i8], [5 x ptr], [5 x ptr], ptr, i32, ptr, i32, ptr, i32, i32, %struct.spinlock, i32, i32, i32, ptr, i16 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.cx231xx_video_mode = type { %struct.cx231xx_dmaqueue, %struct.cx231xx_isoc_ctl, %struct.cx231xx_bulk_ctl, %struct.spinlock, i32, i32, i32, ptr, i16 }
%struct.cx231xx_dmaqueue = type { %struct.list_head, %struct.wait_queue_head, i32, i8, [8 x i8], i8, i32, i32, i32, i8, i32, i32, ptr, i32, i8, i32, i32, [10 x i8] }
%struct.cx231xx_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.cx231xx_bulk_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.pcb_config = type { i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i8, [3 x %struct.CONFIG_INFO], [3 x %struct.CONFIG_INFO] }
%struct.CONFIG_INFO = type { i8, %struct.INTERFACE_INFO }
%struct.INTERFACE_INFO = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.cx231xx_tvnorm = type { ptr, i64, i32, i32 }
%struct.cx231xx_tsport = type { ptr, i32, i32, i32, i32, i32, i32, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.tuner_setup = type { i16, i32, i32, ptr, ptr }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.eeprom = type { %struct.tveeprom, [256 x i8], %struct.i2c_client }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [6 x i8] }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.usb_interface_assoc_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }

@__param_str_tuner = internal constant [14 x i8] c"cx231xx.tuner\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@tuner = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_tuner = internal constant %struct.kernel_param { ptr @__param_str_tuner, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @tuner } }, section "__param", align 4
@__UNIQUE_ID_tunertype328 = internal constant [27 x i8] c"cx231xx.parmtype=tuner:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tuner329 = internal constant [30 x i8] c"cx231xx.parm=tuner:tuner type\00", section ".modinfo", align 1
@__param_str_transfer_mode = internal constant [22 x i8] c"cx231xx.transfer_mode\00", align 1
@transfer_mode = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_transfer_mode = internal constant %struct.kernel_param { ptr @__param_str_transfer_mode, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @transfer_mode } }, section "__param", align 4
@__UNIQUE_ID_transfer_modetype330 = internal constant [35 x i8] c"cx231xx.parmtype=transfer_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_transfer_mode331 = internal constant [59 x i8] c"cx231xx.parm=transfer_mode:transfer mode (1-ISO or 0-BULK)\00", section ".modinfo", align 1
@__param_str_disable_ir = internal constant [19 x i8] c"cx231xx.disable_ir\00", align 1
@disable_ir = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_ir = internal constant %struct.kernel_param { ptr @__param_str_disable_ir, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @disable_ir } }, section "__param", align 4
@__UNIQUE_ID_disable_irtype332 = internal constant [32 x i8] c"cx231xx.parmtype=disable_ir:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_ir333 = internal constant [56 x i8] c"cx231xx.parm=disable_ir:disable infrared remote support\00", section ".modinfo", align 1
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unknown CX231xx video grabber\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Conexant Hybrid TV - CARRAERA\00", [34 x i8] zeroinitializer }, align 32
@RDE250_XCV_TUNER = internal global { [4 x %struct.cx231xx_reg_seq], [32 x i8] } { [4 x %struct.cx231xx_reg_seq] [%struct.cx231xx_reg_seq { i8 3, i8 1, i32 10 }, %struct.cx231xx_reg_seq { i8 3, i8 0, i32 30 }, %struct.cx231xx_reg_seq { i8 3, i8 1, i32 10 }, %struct.cx231xx_reg_seq { i8 -1, i8 -1, i32 -1 }], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Conexant Hybrid TV - SHELBY\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Conexant Hybrid TV - RDE253S\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Conexant Hybrid TV - RDU253S\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Conexant VIDEO GRABBER\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Conexant Hybrid TV - rde 250\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Conexant Hybrid TV - RDU 250\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Hauppauge EXETER\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Hauppauge USB Live 2\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Pixelview PlayTV USB Hybrid\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rc-pixelview-002t\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Pixelview Xcapture USB\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Kworld UB430 USB Hybrid\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Iconbit Analog Stick U100 FM\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Hauppauge WinTV USB2 FM (PAL)\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Hauppauge WinTV USB2 FM (NTSC)\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Elgato Video Capture V2\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Geniatech OTG102\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Kworld UB445 USB Hybrid\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Hauppauge WinTV 930C-HD (1113xx) / HVR-900H (111xxx) / PCTV QuatroStick 521e\00", [51 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Hauppauge WinTV 930C-HD (1114xx) / HVR-901H (1114xx) / PCTV QuatroStick 522e\00", [51 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Hauppauge WinTV-HVR-955Q (111401)\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Terratec Grabby\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Evromedia USB Full Hybrid Full HD\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Astrometa T2hybrid\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"The Imaging Source DFG/USB2pro\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Hauppauge WinTV-HVR-935C\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV-HVR-975\00", [40 x i8] zeroinitializer }, align 32
@cx231xx_boards = dso_local global { [28 x %struct.cx231xx_board], [1152 x i8] } { [28 x %struct.cx231xx_board] [%struct.cx231xx_board { ptr @.str, i32 0, i32 4, i32 0, i64 0, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i32 0, i8 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, i8 0, i8 0, i32 0, i32 0, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 3, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.1, i32 0, i32 76, i32 97, i64 255, i32 2, i32 0, i8 0, ptr null, ptr null, ptr @RDE250_XCV_TUNER, i8 5, i8 26, i8 27, i32 -60, i8 12, i32 67112960, i8 4, i8 2, i8 0, ptr null, i8 64, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 3, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.2, i32 0, i32 76, i32 97, i64 45056, i32 50, i32 0, i8 0, ptr null, ptr null, ptr @RDE250_XCV_TUNER, i8 5, i8 26, i8 27, i32 -60, i8 12, i32 67112960, i8 4, i8 2, i8 0, ptr null, i8 64, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 3, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.3, i32 0, i32 83, i32 96, i64 255, i32 2, i32 0, i8 0, ptr null, ptr null, ptr @RDE250_XCV_TUNER, i8 5, i8 26, i8 27, i32 -60, i8 28, i32 67112960, i8 4, i8 2, i8 0, ptr null, i8 64, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 3, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.4, i32 0, i32 83, i32 96, i64 255, i32 2, i32 0, i8 0, ptr null, ptr null, ptr @RDE250_XCV_TUNER, i8 5, i8 26, i8 27, i32 -60, i8 28, i32 67112960, i8 4, i8 2, i8 0, ptr null, i8 64, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 3, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.5, i32 0, i32 4, i32 0, i64 255, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i32 -60, i8 28, i32 67112960, i8 0, i8 0, i8 0, ptr null, i8 12, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.6, i32 0, i32 76, i32 97, i64 255, i32 2, i32 0, i8 0, ptr null, ptr null, ptr @RDE250_XCV_TUNER, i8 5, i8 26, i8 27, i32 -60, i8 12, i32 67112960, i8 4, i8 2, i8 0, ptr null, i8 64, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 2, i32 0, ptr null }, %struct.cx231xx_input zeroinitializer, %struct.cx231xx_input zeroinitializer, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.7, i32 0, i32 76, i32 97, i64 45056, i32 50, i32 0, i8 0, ptr null, ptr null, ptr @RDE250_XCV_TUNER, i8 5, i8 26, i8 27, i32 -60, i8 12, i32 67112960, i8 4, i8 2, i8 0, ptr null, i8 64, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 2, i32 0, ptr null }, %struct.cx231xx_input zeroinitializer, %struct.cx231xx_input zeroinitializer, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.8, i32 0, i32 83, i32 96, i64 45056, i32 14, i32 0, i8 0, ptr null, ptr null, ptr @RDE250_XCV_TUNER, i8 5, i8 26, i8 27, i32 -60, i8 12, i32 67112960, i8 3, i8 3, i8 0, ptr null, i8 64, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 3, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.9, i32 0, i32 4, i32 0, i64 45056, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i32 -60, i8 12, i32 67112960, i8 0, i8 0, i8 0, ptr null, i8 12, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.10, i32 0, i32 83, i32 96, i64 256, i32 16, i32 0, i8 0, ptr null, ptr null, ptr null, i8 -1, i8 -1, i8 -1, i32 -60, i8 28, i32 67112960, i8 2, i8 4, i8 2, ptr @.str.11, i8 64, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 3, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.12, i32 0, i32 4, i32 0, i64 45056, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i32 -60, i8 12, i32 67112960, i8 0, i8 0, i8 0, ptr null, i8 12, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.13, i32 0, i32 83, i32 96, i64 256, i32 16, i32 0, i8 0, ptr null, ptr null, ptr null, i8 -1, i8 -1, i8 -1, i32 -60, i8 17, i32 67112960, i8 2, i8 4, i8 2, ptr null, i8 64, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 3, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.14, i32 0, i32 4, i32 0, i64 0, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i32 -60, i8 28, i32 67112960, i8 0, i8 0, i8 0, ptr null, i8 0, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.15, i32 0, i32 83, i32 96, i64 255, i32 0, i32 0, i8 0, ptr null, ptr null, ptr @RDE250_XCV_TUNER, i8 5, i8 26, i8 27, i32 -60, i8 12, i32 67112960, i8 4, i8 0, i8 0, ptr null, i8 0, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 3, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.16, i32 0, i32 83, i32 96, i64 45056, i32 0, i32 0, i8 0, ptr null, ptr null, ptr @RDE250_XCV_TUNER, i8 5, i8 26, i8 27, i32 -60, i8 12, i32 67112960, i8 4, i8 0, i8 0, ptr null, i8 0, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 3, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.17, i32 0, i32 4, i32 0, i64 45056, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i32 -60, i8 12, i32 67112960, i8 0, i8 0, i8 0, ptr null, i8 12, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.18, i32 0, i32 4, i32 0, i64 45056, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i32 -60, i8 12, i32 67112960, i8 0, i8 0, i8 0, ptr null, i8 12, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.19, i32 0, i32 83, i32 96, i64 4096, i32 16, i32 0, i8 0, ptr null, ptr null, ptr null, i8 -1, i8 -1, i8 -1, i32 -60, i8 17, i32 67112960, i8 2, i8 4, i8 2, ptr null, i8 64, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 3, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.20, i32 0, i32 83, i32 96, i64 255, i32 100, i32 0, i8 0, ptr null, ptr null, ptr @RDE250_XCV_TUNER, i8 5, i8 26, i8 27, i32 -60, i8 12, i32 67112960, i8 4, i8 4, i8 0, ptr null, i8 64, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 3, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.21, i32 0, i32 4, i32 96, i64 255, i32 100, i32 0, i8 0, ptr null, ptr null, ptr @RDE250_XCV_TUNER, i8 5, i8 26, i8 27, i32 -60, i8 12, i32 67112960, i8 4, i8 4, i8 0, ptr null, i8 64, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 3, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.22, i32 0, i32 4, i32 96, i64 45056, i32 89, i32 0, i8 0, ptr null, ptr null, ptr @RDE250_XCV_TUNER, i8 5, i8 26, i8 27, i32 -60, i8 12, i32 67112960, i8 4, i8 4, i8 0, ptr null, i8 64, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 3, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.23, i32 0, i32 4, i32 0, i64 255, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i32 -60, i8 12, i32 67112960, i8 0, i8 0, i8 0, ptr null, i8 12, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.24, i32 0, i32 4, i32 96, i64 255, i32 100, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i32 0, i8 0, i32 0, i8 2, i8 4, i8 0, ptr null, i8 64, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 0, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.25, i32 0, i32 4, i32 58, i64 45056, i32 24, i32 0, i8 0, ptr null, ptr null, ptr null, i8 5, i8 26, i8 27, i32 -60, i8 1, i32 10, i8 4, i8 3, i8 0, ptr null, i8 64, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 1, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.26, i32 0, i32 4, i32 0, i64 255, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i32 -60, i8 12, i32 67112960, i8 0, i8 0, i8 0, ptr null, i8 12, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 1, i32 1, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147482878, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.27, i32 0, i32 4, i32 96, i64 255, i32 100, i32 0, i8 0, ptr null, ptr null, ptr @RDE250_XCV_TUNER, i8 5, i8 26, i8 27, i32 -60, i8 12, i32 67112960, i8 4, i8 4, i8 0, ptr null, i8 64, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 3, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }, %struct.cx231xx_board { ptr @.str.28, i32 0, i32 4, i32 96, i64 16777215, i32 89, i32 100, i8 0, ptr null, ptr null, ptr @RDE250_XCV_TUNER, i8 5, i8 26, i8 27, i32 -60, i8 12, i32 67112960, i8 4, i8 4, i8 0, ptr null, i8 64, i8 0, i8 0, i32 1, i32 2, [4 x %struct.cx231xx_input] [%struct.cx231xx_input { i32 3, i32 3, i32 0, ptr null }, %struct.cx231xx_input { i32 1, i32 2, i32 1, ptr null }, %struct.cx231xx_input { i32 2, i32 -2147483391, i32 1, ptr null }, %struct.cx231xx_input zeroinitializer], %struct.cx231xx_input zeroinitializer, ptr null }], [1152 x i8] zeroinitializer }, align 32
@cx231xx_bcount = dso_local constant { i32, [28 x i8] } { i32 28, [28 x i8] zeroinitializer }, align 32
@cx231xx_id_table = dso_local global { [37 x %struct.usb_device_id], [200 x i8] } { [37 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 7449, i16 24841, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 11 }, %struct.usb_device_id { i16 3, i16 1394, i16 23100, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 1394, i16 22690, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 1394, i16 22689, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 1394, i16 22692, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1394, i16 22693, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 1394, i16 22694, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 5 }, %struct.usb_device_id { i16 3, i16 1394, i16 22686, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id { i16 3, i16 1394, i16 22688, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 7 }, %struct.usb_device_id { i16 3, i16 1994, i16 -16327, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 5 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20208, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20207, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 15 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20189, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 21 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20188, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 21 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20143, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 26 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20144, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 27 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20176, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 19 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20175, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 20 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20168, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 19 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20167, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 20 }, %struct.usb_device_id { i16 3, i16 8256, i16 -20160, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 -15872, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 8211, i16 601, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 19 }, %struct.usb_device_id { i16 3, i16 8211, i16 606, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 20 }, %struct.usb_device_id { i16 15, i16 5460, i16 20496, i16 16384, i16 16385, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 10 }, %struct.usb_device_id { i16 3, i16 5460, i16 20500, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 11 }, %struct.usb_device_id { i16 3, i16 7040, i16 -7132, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 12 }, %struct.usb_device_id { i16 3, i16 7040, i16 -7135, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 18 }, %struct.usb_device_id { i16 3, i16 8013, i16 567, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 13 }, %struct.usb_device_id { i16 3, i16 4057, i16 55, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 16 }, %struct.usb_device_id { i16 3, i16 8013, i16 258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 17 }, %struct.usb_device_id { i16 3, i16 3277, i16 166, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 22 }, %struct.usb_device_id { i16 3, i16 7040, i16 -11342, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 23 }, %struct.usb_device_id { i16 3, i16 5620, i16 309, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 24 }, %struct.usb_device_id { i16 3, i16 6558, i16 -32766, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 25 }, %struct.usb_device_id zeroinitializer], [200 x i8] zeroinitializer }, align 32
@cx231xx_tuner_callback.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, i8 1, i8 17, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx231xx\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx231xx_tuner_callback\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/usb/cx231xx/cx231xx-cards.c\00", [54 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Tuner CB: RESET: cmd %d : tuner type %d\0A\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_cx231xx_tuner_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_cx231xx_tuner_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_cx231xx_tuner_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cx231xx_tuner_callback to i32), ptr @__kstrtab_cx231xx_tuner_callback, ptr @__kstrtabns_cx231xx_tuner_callback }, section "___ksymtab_gpl+cx231xx_tuner_callback", align 4
@cx231xx_pre_card_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.31, i32 1148, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Identified as %s (card=%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx231xx_pre_card_setup\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cx231xx_pre_card_setup._entry_ptr = internal global ptr @cx231xx_pre_card_setup._entry, section ".printk_index", align 4
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cx25840\00", [24 x i8] zeroinitializer }, align 32
@cx231xx_card_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.31, i32 1266, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cx25840 subdev registration failure\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cx231xx_card_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cx231xx_card_setup._entry_ptr = internal global ptr @cx231xx_card_setup._entry, section ".printk_index", align 4
@v4l2_subdev_call_wrappers = external dso_local local_unnamed_addr constant %struct.v4l2_subdev_ops, align 4
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tuner\00", [26 x i8] zeroinitializer }, align 32
@cx231xx_card_setup._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.39, ptr @.str.31, i32 1281, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"tuner subdev registration failure\0A\00", [61 x i8] zeroinitializer }, align 32
@cx231xx_card_setup._entry_ptr.44 = internal global ptr @cx231xx_card_setup._entry.42, section ".printk_index", align 4
@cx231xx_card_setup._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.39, ptr @.str.31, i32 1302, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to allocate memory to read eeprom\0A\00", [54 x i8] zeroinitializer }, align 32
@cx231xx_card_setup._entry_ptr.47 = internal global ptr @cx231xx_card_setup._entry.45, section ".printk_index", align 4
@cx231xx_devused = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_cx231xx__341_1983_cx231xx_usb_driver_init6 = internal global ptr @cx231xx_usb_driver_init, section ".initcall6.init", align 4
@cx231xx_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.29, ptr @cx231xx_usb_probe, ptr @cx231xx_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cx231xx_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_cx231xx_usb_driver_exit = internal global ptr @cx231xx_usb_driver_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@read_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.31, i32 1226, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Can't read eeprom\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_eeprom\00", [20 x i8] zeroinitializer }, align 32
@read_eeprom._entry_ptr = internal global ptr @read_eeprom._entry, section ".printk_index", align 4
@read_eeprom._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.31, i32 1236, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@read_eeprom._entry_ptr.51 = internal global ptr @read_eeprom._entry.50, section ".printk_index", align 4
@read_eeprom.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.49, ptr @.str.31, ptr @.str.52, i8 1, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"i2c eeprom %02x: %*ph\0A\00", [41 x i8] zeroinitializer }, align 32
@cx231xx_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.31, i32 1717, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Supports only %i devices.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx231xx_usb_probe\00", [46 x i8] zeroinitializer }, align 32
@cx231xx_usb_probe._entry_ptr = internal global ptr @cx231xx_usb_probe._entry, section ".printk_index", align 4
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cx231xx #%d\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.5\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"12\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"480\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@cx231xx_usb_probe._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.54, ptr @.str.31, i32 1783, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"New device %s %s @ %s Mbps (%04x:%04x) with %d interfaces\0A\00", [37 x i8] zeroinitializer }, align 32
@cx231xx_usb_probe._entry_ptr.62 = internal global ptr @cx231xx_usb_probe._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@cx231xx_usb_probe._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.54, ptr @.str.31, i32 1793, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Not found matching IAD interface\0A\00", [62 x i8] zeroinitializer }, align 32
@cx231xx_usb_probe._entry_ptr.66 = internal global ptr @cx231xx_usb_probe._entry.64, section ".printk_index", align 4
@cx231xx_usb_probe.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.54, ptr @.str.31, ptr @.str.67, i8 1, i8 -63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"registering interface %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cx231xx_usb_probe._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.54, ptr @.str.31, i32 1806, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cx231xx_media_device_init failed\0A\00", [62 x i8] zeroinitializer }, align 32
@cx231xx_usb_probe._entry_ptr.70 = internal global ptr @cx231xx_usb_probe._entry.68, section ".printk_index", align 4
@cx231xx_usb_probe._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.54, ptr @.str.31, i32 1816, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"v4l2_device_register failed\0A\00", [35 x i8] zeroinitializer }, align 32
@cx231xx_usb_probe._entry_ptr.73 = internal global ptr @cx231xx_usb_probe._entry.71, section ".printk_index", align 4
@cx231xx_usb_probe._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.54, ptr @.str.31, i32 1834, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TS1 PCB interface #%d doesn't exist\0A\00", [59 x i8] zeroinitializer }, align 32
@cx231xx_usb_probe._entry_ptr.76 = internal global ptr @cx231xx_usb_probe._entry.74, section ".printk_index", align 4
@cx231xx_usb_probe._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.54, ptr @.str.31, i32 1853, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"TS EndPoint Addr 0x%x, Alternate settings: %i\0A\00", [49 x i8] zeroinitializer }, align 32
@cx231xx_usb_probe._entry_ptr.79 = internal global ptr @cx231xx_usb_probe._entry.77, section ".printk_index", align 4
@cx231xx_usb_probe.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.54, ptr @.str.31, ptr @.str.80, i8 1, i8 -44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Alternate setting %i, max size= %i\0A\00", [60 x i8] zeroinitializer }, align 32
@cx231xx_init_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@cx231xx_init_dev.__key.82 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->ctrl_urb_lock\00", [44 x i8] zeroinitializer }, align 32
@cx231xx_init_dev.__key.84 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->gpio_i2c_lock\00", [44 x i8] zeroinitializer }, align 32
@cx231xx_init_dev.__key.86 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->i2c_lock\00", [17 x i8] zeroinitializer }, align 32
@cx231xx_init_dev.__key.88 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev->video_mode.slock\00", [41 x i8] zeroinitializer }, align 32
@cx231xx_init_dev.__key.90 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dev->vbi_mode.slock\00", [43 x i8] zeroinitializer }, align 32
@cx231xx_init_dev.__key.92 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&dev->sliced_cc_mode.slock\00", [37 x i8] zeroinitializer }, align 32
@cx231xx_init_dev.__key.94 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->open\00", [21 x i8] zeroinitializer }, align 32
@cx231xx_init_dev.__key.96 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->wait_frame\00", [47 x i8] zeroinitializer }, align 32
@cx231xx_init_dev.__key.98 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&dev->wait_stream\00", [46 x i8] zeroinitializer }, align 32
@cx231xx_init_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.31, i32 1428, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read PCB config\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cx231xx_init_dev\00", [47 x i8] zeroinitializer }, align 32
@cx231xx_init_dev._entry_ptr = internal global ptr @cx231xx_init_dev._entry, section ".printk_index", align 4
@cx231xx_init_dev._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.31, i32 1444, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error configuring device\0A\00", [38 x i8] zeroinitializer }, align 32
@cx231xx_init_dev._entry_ptr.104 = internal global ptr @cx231xx_init_dev._entry.102, section ".printk_index", align 4
@cx231xx_init_dev._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.31, i32 1456, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: cx231xx_i2c_register - errCode [%d]!\0A\00", [54 x i8] zeroinitializer }, align 32
@cx231xx_init_dev._entry_ptr.107 = internal global ptr @cx231xx_init_dev._entry.105, section ".printk_index", align 4
@cx231xx_init_dev._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.101, ptr @.str.31, i32 1478, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: cx231xx_config - errCode [%d]!\0A\00", [60 x i8] zeroinitializer }, align 32
@cx231xx_init_dev._entry_ptr.110 = internal global ptr @cx231xx_init_dev._entry.108, section ".printk_index", align 4
@cx231xx_init_dev._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.101, ptr @.str.31, i32 1492, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"attach 417 %d\0A\00", [17 x i8] zeroinitializer }, align 32
@cx231xx_init_dev._entry_ptr.113 = internal global ptr @cx231xx_init_dev._entry.111, section ".printk_index", align 4
@cx231xx_init_dev._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.101, ptr @.str.31, i32 1496, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s() Failed to register 417 on VID_B\0A\00", [58 x i8] zeroinitializer }, align 32
@cx231xx_init_dev._entry_ptr.116 = internal global ptr @cx231xx_init_dev._entry.114, section ".printk_index", align 4
@cx231xx_init_v4l2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.31, i32 1561, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Video PCB interface #%d doesn't exist\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cx231xx_init_v4l2\00", [46 x i8] zeroinitializer }, align 32
@cx231xx_init_v4l2._entry_ptr = internal global ptr @cx231xx_init_v4l2._entry, section ".printk_index", align 4
@cx231xx_init_v4l2._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.31, i32 1576, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"video EndPoint Addr 0x%x, Alternate settings: %i\0A\00", [46 x i8] zeroinitializer }, align 32
@cx231xx_init_v4l2._entry_ptr.121 = internal global ptr @cx231xx_init_v4l2._entry.119, section ".printk_index", align 4
@cx231xx_init_v4l2.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.118, ptr @.str.31, ptr @.str.80, i8 1, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cx231xx_init_v4l2._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.31, i32 1600, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"VBI PCB interface #%d doesn't exist\0A\00", [59 x i8] zeroinitializer }, align 32
@cx231xx_init_v4l2._entry_ptr.124 = internal global ptr @cx231xx_init_v4l2._entry.122, section ".printk_index", align 4
@cx231xx_init_v4l2._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.118, ptr @.str.31, i32 1616, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"VBI EndPoint Addr 0x%x, Alternate settings: %i\0A\00", [48 x i8] zeroinitializer }, align 32
@cx231xx_init_v4l2._entry_ptr.127 = internal global ptr @cx231xx_init_v4l2._entry.125, section ".printk_index", align 4
@cx231xx_init_v4l2.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.118, ptr @.str.31, ptr @.str.80, i8 1, i8 -104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cx231xx_init_v4l2._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.118, ptr @.str.31, i32 1644, ptr @.str.40, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Sliced CC PCB interface #%d doesn't exist\0A\00", [53 x i8] zeroinitializer }, align 32
@cx231xx_init_v4l2._entry_ptr.130 = internal global ptr @cx231xx_init_v4l2._entry.128, section ".printk_index", align 4
@cx231xx_init_v4l2._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.118, ptr @.str.31, i32 1660, ptr @.str.35, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"sliced CC EndPoint Addr 0x%x, Alternate settings: %i\0A\00", [42 x i8] zeroinitializer }, align 32
@cx231xx_init_v4l2._entry_ptr.133 = internal global ptr @cx231xx_init_v4l2._entry.131, section ".printk_index", align 4
@cx231xx_init_v4l2.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.29, ptr @.str.118, ptr @.str.31, ptr @.str.80, i8 1, i8 -93, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cx231xx_usb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.135, ptr @.str.31, i32 1954, ptr @.str.136, ptr @.str.36 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"device %s is open! Deregistration and memory deallocation are deferred on close.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cx231xx_usb_disconnect\00", [41 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cx231xx_usb_disconnect._entry_ptr = internal global ptr @cx231xx_usb_disconnect._entry, section ".printk_index", align 4
@switch.table.cx231xx_usb_probe = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.57, ptr @.str.56, ptr @.str.57, ptr @.str.58], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 76, i64 83]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.138 = internal global [7 x i64] [i64 5, i64 32, i64 19, i64 20, i64 21, i64 26, i64 27]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 9]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966781]
@___asan_gen_.142 = private unnamed_addr constant [6 x i8] c"tuner\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 27, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant [14 x i8] c"transfer_mode\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 31, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant [11 x i8] c"disable_ir\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 35, i32 21 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 58, i32 11 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 81, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"RDE250_XCV_TUNER\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 46, i32 31 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 121, i32 11 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 161, i32 11 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 202, i32 11 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 242, i32 11 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 273, i32 11 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 301, i32 11 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 329, i32 11 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 368, i32 11 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 470, i32 11 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 485, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 509, i32 11 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 394, i32 11 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 538, i32 11 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 562, i32 11 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 597, i32 11 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 632, i32 11 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 658, i32 11 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 432, i32 11 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 690, i32 11 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 729, i32 11 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 768, i32 11 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 807, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 833, i32 11 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 860, i32 11 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 888, i32 11 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 914, i32 11 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 953, i32 11 }
@___asan_gen_.241 = private unnamed_addr constant [15 x i8] c"cx231xx_boards\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 56, i32 22 }
@___asan_gen_.244 = private unnamed_addr constant [15 x i8] c"cx231xx_bcount\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 993, i32 20 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"cx231xx_id_table\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 996, i32 22 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1090, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1147, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1263, i32 6 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1265, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1277, i32 11 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1280, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1301, i32 5 }
@___asan_gen_.307 = private unnamed_addr constant [16 x i8] c"cx231xx_devused\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 40, i32 22 }
@___asan_gen_.310 = private unnamed_addr constant [19 x i8] c"cx231xx_usb_driver\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1976, i32 26 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1226, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1236, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1244, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1715, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1731, i32 26 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1763, i32 11 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1767, i32 11 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1770, i32 11 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1773, i32 11 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1776, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1793, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1798, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1806, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1816, i32 3 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1833, i32 4 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1850, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1874, i32 4 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1406, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1407, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1408, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1409, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1411, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1412, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1413, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1415, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1416, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1417, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1428, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1444, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1454, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1477, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1492, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1494, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1560, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1573, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1599, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1613, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1643, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1657, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.544 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.545 = private constant [45 x i8] c"../drivers/media/usb/cx231xx/cx231xx-cards.c\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 1952, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant [31 x i8] c"switch.table.cx231xx_usb_probe\00", align 1
@llvm.compiler.used = appending global [175 x ptr] [ptr @__UNIQUE_ID_disable_ir333, ptr @__UNIQUE_ID_disable_irtype332, ptr @__UNIQUE_ID_transfer_mode331, ptr @__UNIQUE_ID_transfer_modetype330, ptr @__UNIQUE_ID_tuner329, ptr @__UNIQUE_ID_tunertype328, ptr @__exitcall_cx231xx_usb_driver_exit, ptr @__initcall__kmod_cx231xx__341_1983_cx231xx_usb_driver_init6, ptr @__ksymtab_cx231xx_tuner_callback, ptr @__param_disable_ir, ptr @__param_transfer_mode, ptr @__param_tuner, ptr @cx231xx_card_setup._entry, ptr @cx231xx_card_setup._entry.42, ptr @cx231xx_card_setup._entry.45, ptr @cx231xx_card_setup._entry_ptr, ptr @cx231xx_card_setup._entry_ptr.44, ptr @cx231xx_card_setup._entry_ptr.47, ptr @cx231xx_init_dev._entry, ptr @cx231xx_init_dev._entry.102, ptr @cx231xx_init_dev._entry.105, ptr @cx231xx_init_dev._entry.108, ptr @cx231xx_init_dev._entry.111, ptr @cx231xx_init_dev._entry.114, ptr @cx231xx_init_dev._entry_ptr, ptr @cx231xx_init_dev._entry_ptr.104, ptr @cx231xx_init_dev._entry_ptr.107, ptr @cx231xx_init_dev._entry_ptr.110, ptr @cx231xx_init_dev._entry_ptr.113, ptr @cx231xx_init_dev._entry_ptr.116, ptr @cx231xx_init_v4l2._entry, ptr @cx231xx_init_v4l2._entry.119, ptr @cx231xx_init_v4l2._entry.122, ptr @cx231xx_init_v4l2._entry.125, ptr @cx231xx_init_v4l2._entry.128, ptr @cx231xx_init_v4l2._entry.131, ptr @cx231xx_init_v4l2._entry_ptr, ptr @cx231xx_init_v4l2._entry_ptr.121, ptr @cx231xx_init_v4l2._entry_ptr.124, ptr @cx231xx_init_v4l2._entry_ptr.127, ptr @cx231xx_init_v4l2._entry_ptr.130, ptr @cx231xx_init_v4l2._entry_ptr.133, ptr @cx231xx_pre_card_setup._entry, ptr @cx231xx_pre_card_setup._entry_ptr, ptr @cx231xx_usb_disconnect._entry, ptr @cx231xx_usb_disconnect._entry_ptr, ptr @cx231xx_usb_driver_exit, ptr @cx231xx_usb_probe._entry, ptr @cx231xx_usb_probe._entry.60, ptr @cx231xx_usb_probe._entry.64, ptr @cx231xx_usb_probe._entry.68, ptr @cx231xx_usb_probe._entry.71, ptr @cx231xx_usb_probe._entry.74, ptr @cx231xx_usb_probe._entry.77, ptr @cx231xx_usb_probe._entry_ptr, ptr @cx231xx_usb_probe._entry_ptr.62, ptr @cx231xx_usb_probe._entry_ptr.66, ptr @cx231xx_usb_probe._entry_ptr.70, ptr @cx231xx_usb_probe._entry_ptr.73, ptr @cx231xx_usb_probe._entry_ptr.76, ptr @cx231xx_usb_probe._entry_ptr.79, ptr @read_eeprom._entry, ptr @read_eeprom._entry.50, ptr @read_eeprom._entry_ptr, ptr @read_eeprom._entry_ptr.51, ptr @tuner, ptr @transfer_mode, ptr @disable_ir, ptr @.str, ptr @.str.1, ptr @RDE250_XCV_TUNER, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @cx231xx_boards, ptr @cx231xx_bcount, ptr @cx231xx_id_table, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @cx231xx_devused, ptr @cx231xx_usb_driver, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @cx231xx_init_dev.__key, ptr @.str.81, ptr @cx231xx_init_dev.__key.82, ptr @.str.83, ptr @cx231xx_init_dev.__key.84, ptr @.str.85, ptr @cx231xx_init_dev.__key.86, ptr @.str.87, ptr @cx231xx_init_dev.__key.88, ptr @.str.89, ptr @cx231xx_init_dev.__key.90, ptr @.str.91, ptr @cx231xx_init_dev.__key.92, ptr @.str.93, ptr @cx231xx_init_dev.__key.94, ptr @.str.95, ptr @cx231xx_init_dev.__key.96, ptr @.str.97, ptr @cx231xx_init_dev.__key.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @.str.126, ptr @.str.129, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @switch.table.cx231xx_usb_probe], section "llvm.metadata"
@0 = internal global [136 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transfer_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_ir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RDE250_XCV_TUNER to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_boards to i32), i32 4704, i32 5856, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_bcount to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_id_table to i32), i32 888, i32 1088, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_pre_card_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_card_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_card_setup._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_card_setup._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_devused to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_eeprom._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_usb_probe._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_usb_probe._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_usb_probe._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_usb_probe._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_usb_probe._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_usb_probe._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_dev.__key.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_dev.__key.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_dev.__key.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_dev.__key.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_dev.__key.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_dev.__key.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_dev.__key.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_dev.__key.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_dev.__key.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_dev._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_dev._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_dev._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_dev._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_dev._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_v4l2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_v4l2._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_v4l2._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_v4l2._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_v4l2._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_init_v4l2._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx231xx_usb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cx231xx_usb_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cx231xx_tuner_callback(ptr noundef %ptr, i32 %component, i32 noundef %command, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_type = getelementptr inbounds %struct.cx231xx, ptr %ptr, i32 0, i32 18
  %0 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tuner_type, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.end31_crit_edge [
    i32 76, label %if.then
    i32 83, label %if.then23
  ]

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cmp1 = icmp eq i32 %command, 0
  br i1 %cmp1, label %do.body, label %if.then.if.end31_crit_edge

if.then.if.end31_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_tuner_callback.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_tuner_callback, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !288

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev6 = getelementptr inbounds %struct.cx231xx, ptr %ptr, i32 0, i32 3
  %3 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev6, align 8
  %5 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tuner_type, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_tuner_callback.__UNIQUE_ID_ddebug334, ptr noundef %4, ptr noundef nonnull @.str.32, i32 noundef 0, i32 noundef %6) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %tuner_gpio = getelementptr inbounds %struct.cx231xx, ptr %ptr, i32 0, i32 4, i32 10
  %7 = ptrtoint ptr %tuner_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner_gpio, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %conv = zext i8 %10 to i32
  %call8 = tail call i32 @cx231xx_set_gpio_value(ptr noundef %ptr, i32 noundef %conv, i32 noundef 1) #9
  tail call void @msleep(i32 noundef 10) #9
  %11 = ptrtoint ptr %tuner_gpio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tuner_gpio, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  %conv12 = zext i8 %14 to i32
  %call13 = tail call i32 @cx231xx_set_gpio_value(ptr noundef %ptr, i32 noundef %conv12, i32 noundef 0) #9
  tail call void @msleep(i32 noundef 330) #9
  %15 = ptrtoint ptr %tuner_gpio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tuner_gpio, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %16, align 4
  %conv17 = zext i8 %18 to i32
  %call18 = tail call i32 @cx231xx_set_gpio_value(ptr noundef %ptr, i32 noundef %conv17, i32 noundef 1) #9
  tail call void @msleep(i32 noundef 10) #9
  br label %if.end31

if.then23:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cond = icmp eq i32 %command, 0
  br i1 %cond, label %sw.bb, label %if.then23.if.end31_crit_edge

if.then23.if.end31_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

sw.bb:                                            ; preds = %if.then23
  %model = getelementptr inbounds %struct.cx231xx, ptr %ptr, i32 0, i32 1
  %19 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %model, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %20)
  %cmp24 = icmp eq i32 %20, 10
  br i1 %cmp24, label %if.then26, label %sw.bb.if.end31_crit_edge

sw.bb.if.end31_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then26:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %conv27 = trunc i32 %arg to i8
  %call28 = tail call i32 @cx231xx_set_agc_analog_digital_mux_select(ptr noundef %ptr, i8 noundef zeroext %conv27) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %sw.bb.if.end31_crit_edge, %if.then23.if.end31_crit_edge, %do.end, %if.then.if.end31_crit_edge, %entry.if.end31_crit_edge
  %rc.0 = phi i32 [ 0, %do.end ], [ 0, %if.then.if.end31_crit_edge ], [ %call28, %if.then26 ], [ 0, %sw.bb.if.end31_crit_edge ], [ 0, %entry.if.end31_crit_edge ], [ -22, %if.then23.if.end31_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_gpio_value(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_agc_analog_digital_mux_select(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_pre_card_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %board = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %board, align 8
  %model = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef %3, i32 noundef %5) #12
  %6 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %model, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %7)
  %cmp = icmp eq i32 %7, 24
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @cx231xx_set_gpio_value(ptr noundef %dev, i32 noundef 3, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tuner_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 10
  %8 = ptrtoint ptr %tuner_gpio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tuner_gpio, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then4

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 4
  %conv = zext i8 %11 to i32
  %call7 = tail call i32 @cx231xx_set_gpio_direction(ptr noundef %dev, i32 noundef %conv, i32 noundef 1) #9
  %12 = ptrtoint ptr %tuner_gpio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tuner_gpio, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 4
  %conv11 = zext i8 %15 to i32
  %call12 = tail call i32 @cx231xx_set_gpio_value(ptr noundef %dev, i32 noundef %conv11, i32 noundef 1) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then4, %if.end.if.end13_crit_edge
  %tuner_sif_gpio = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 11
  %16 = ptrtoint ptr %tuner_sif_gpio to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %tuner_sif_gpio, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp16 = icmp sgt i8 %17, -1
  br i1 %cmp16, label %if.then18, label %if.end13.if.end23_crit_edge

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %conv1538 = zext i8 %17 to i32
  %call22 = tail call i32 @cx231xx_set_gpio_direction(ptr noundef %dev, i32 noundef %conv1538, i32 noundef 1) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %if.end13.if.end23_crit_edge
  %call24 = tail call i32 @cx231xx_set_mode(ptr noundef %dev, i32 noundef 1) #9
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_gpio_direction(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_card_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %tun_setup.i = alloca %struct.tuner_setup, align 4
  %f.i = alloca %struct.v4l2_frequency, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %board.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4
  %model.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %model.i, align 8
  %arrayidx.i = getelementptr [28 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %1
  %2 = call ptr @memcpy(ptr %board.i, ptr %arrayidx.i, i32 168)
  %tuner_type = getelementptr [28 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %1, i32 2
  %3 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tuner_type, align 8
  %tuner_type1 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 18
  %5 = ptrtoint ptr %tuner_type1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %tuner_type1, align 8
  %tuner_addr = getelementptr [28 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %1, i32 3
  %6 = ptrtoint ptr %tuner_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tuner_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tuner_addr7 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 19
  %8 = ptrtoint ptr %tuner_addr7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tuner_addr7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %decoder = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 24
  %9 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %decoder, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  br i1 %cmp, label %if.then8, label %if.end.if.end39_crit_edge

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then8:                                         ; preds = %if.end
  %v4l2_dev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 9
  %call = tail call ptr @cx231xx_get_i2c_adap(ptr noundef %dev, i32 noundef 0) #9
  %call9 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev, ptr noundef %call, ptr noundef nonnull @.str.37, i8 noundef zeroext 68, ptr noundef null) #9
  %sd_cx25840 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 10
  %11 = ptrtoint ptr %sd_cx25840 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9, ptr %sd_cx25840, align 4
  %cmp11 = icmp eq ptr %call9, null
  br i1 %cmp11, label %if.end14, label %if.then8.if.else_crit_edge

if.then8.if.else_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end14:                                         ; preds = %if.then8
  %dev13 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %12 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.38) #12
  %14 = ptrtoint ptr %sd_cx25840 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load ptr, ptr %sd_cx25840, align 4
  %tobool16.not = icmp eq ptr %.pr, null
  br i1 %tobool16.not, label %if.end14.if.end39_crit_edge, label %if.end14.if.else_crit_edge

if.end14.if.else_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end14.if.end39_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.else:                                          ; preds = %if.end14.if.else_crit_edge, %if.then8.if.else_crit_edge
  %15 = phi ptr [ %.pr, %if.end14.if.else_crit_edge ], [ %call9, %if.then8.if.else_crit_edge ]
  %ops = getelementptr inbounds %struct.v4l2_subdev, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool18.not = icmp eq ptr %19, null
  br i1 %tobool18.not, label %if.else.if.end39_crit_edge, label %land.lhs.true

if.else.if.end39_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

land.lhs.true:                                    ; preds = %if.else
  %load_fw = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %load_fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %load_fw, align 4
  %tobool21.not = icmp eq ptr %21, null
  br i1 %tobool21.not, label %land.lhs.true.if.end39_crit_edge, label %if.else23

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.else23:                                        ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @v4l2_subdev_call_wrappers to i32))
  %22 = load ptr, ptr @v4l2_subdev_call_wrappers, align 4
  %tobool24.not = icmp eq ptr %22, null
  br i1 %tobool24.not, label %if.else23.if.else31_crit_edge, label %land.lhs.true25

if.else23.if.else31_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else31

land.lhs.true25:                                  ; preds = %if.else23
  %load_fw26 = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %load_fw26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %load_fw26, align 4
  %tobool27.not = icmp eq ptr %24, null
  br i1 %tobool27.not, label %land.lhs.true25.if.else31_crit_edge, label %land.lhs.true25.if.end39.sink.split_crit_edge

land.lhs.true25.if.end39.sink.split_crit_edge:    ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.sink.split

land.lhs.true25.if.else31_crit_edge:              ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else31

if.else31:                                        ; preds = %land.lhs.true25.if.else31_crit_edge, %if.else23.if.else31_crit_edge
  br label %if.end39.sink.split

if.end39.sink.split:                              ; preds = %if.else31, %land.lhs.true25.if.end39.sink.split_crit_edge
  %.sink = phi ptr [ %21, %if.else31 ], [ %24, %land.lhs.true25.if.end39.sink.split_crit_edge ]
  %call30 = tail call i32 %.sink(ptr noundef nonnull %15) #9
  br label %if.end39

if.end39:                                         ; preds = %if.end39.sink.split, %land.lhs.true.if.end39_crit_edge, %if.else.if.end39_crit_edge, %if.end14.if.end39_crit_edge, %if.end.if.end39_crit_edge
  %tuner_type41 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %tuner_type41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tuner_type41, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp42.not = icmp eq i32 %26, 4
  br i1 %cmp42.not, label %if.end39.if.end59_crit_edge, label %if.then43

if.end39.if.end59_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then43:                                        ; preds = %if.end39
  %tuner_i2c_master = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 4, i32 17
  %27 = ptrtoint ptr %tuner_i2c_master to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tuner_i2c_master, align 8
  %conv = zext i8 %28 to i32
  %call45 = tail call ptr @cx231xx_get_i2c_adap(ptr noundef %dev, i32 noundef %conv) #9
  %v4l2_dev46 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 9
  %tuner_addr47 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 19
  %29 = ptrtoint ptr %tuner_addr47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tuner_addr47, align 4
  %conv48 = trunc i32 %30 to i8
  %call49 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev46, ptr noundef %call45, ptr noundef nonnull @.str.41, i8 noundef zeroext %conv48, ptr noundef null) #9
  %sd_tuner = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 11
  %31 = ptrtoint ptr %sd_tuner to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call49, ptr %sd_tuner, align 8
  %cmp51 = icmp eq ptr %call49, null
  br i1 %cmp51, label %do.end55, label %if.else57

do.end55:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %dev56 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %32 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev56, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.43) #12
  br label %if.end59

if.else57:                                        ; preds = %if.then43
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tun_setup.i) #9
  %34 = call ptr @memset(ptr %tun_setup.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %f.i) #9
  %35 = getelementptr inbounds i8, ptr %f.i, i32 12
  %36 = call ptr @memset(ptr %35, i32 255, i32 32)
  %37 = ptrtoint ptr %tuner_type1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tuner_type1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp.i = icmp eq i32 %38, 4
  br i1 %cmp.i, label %if.else57.cx231xx_config_tuner.exit_crit_edge, label %if.else.i

if.else57.cx231xx_config_tuner.exit_crit_edge:    ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx231xx_config_tuner.exit

if.else.i:                                        ; preds = %if.else57
  %mode_mask.i = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup.i, i32 0, i32 2
  %39 = ptrtoint ptr %mode_mask.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 6, ptr %mode_mask.i, align 4
  %type.i = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup.i, i32 0, i32 1
  %40 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %38, ptr %type.i, align 4
  %41 = ptrtoint ptr %tuner_addr47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tuner_addr47, align 4
  %conv.i = trunc i32 %42 to i16
  %43 = ptrtoint ptr %tun_setup.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i, ptr %tun_setup.i, align 4
  %tuner_callback.i = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup.i, i32 0, i32 4
  %44 = ptrtoint ptr %tuner_callback.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @cx231xx_tuner_callback, ptr %tuner_callback.i, align 4
  %ops.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call49, i32 0, i32 6
  %45 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i, align 4
  %tuner.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %tuner.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %tuner.i, align 4
  %tobool3.not.i = icmp eq ptr %48, null
  br i1 %tobool3.not.i, label %if.else.i.if.end22.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end22.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %s_type_addr.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %s_type_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %s_type_addr.i, align 4
  %tobool6.not.i = icmp eq ptr %50, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.if.end22.i_crit_edge, label %if.else8.i

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.else8.i:                                       ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.v4l2_subdev_ops, ptr @v4l2_subdev_call_wrappers, i32 0, i32 1), align 4
  %tobool9.not.i = icmp eq ptr %51, null
  br i1 %tobool9.not.i, label %if.else8.i.if.else15.i_crit_edge, label %land.lhs.true10.i

if.else8.i.if.else15.i_crit_edge:                 ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else15.i

land.lhs.true10.i:                                ; preds = %if.else8.i
  %s_type_addr11.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %s_type_addr11.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %s_type_addr11.i, align 4
  %tobool12.not.i = icmp eq ptr %53, null
  br i1 %tobool12.not.i, label %land.lhs.true10.i.if.else15.i_crit_edge, label %land.lhs.true10.i.if.end22.sink.split.i_crit_edge

land.lhs.true10.i.if.end22.sink.split.i_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.sink.split.i

land.lhs.true10.i.if.else15.i_crit_edge:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else15.i

if.else15.i:                                      ; preds = %land.lhs.true10.i.if.else15.i_crit_edge, %if.else8.i.if.else15.i_crit_edge
  br label %if.end22.sink.split.i

if.end22.sink.split.i:                            ; preds = %if.else15.i, %land.lhs.true10.i.if.end22.sink.split.i_crit_edge
  %.sink.i = phi ptr [ %50, %if.else15.i ], [ %53, %land.lhs.true10.i.if.end22.sink.split.i_crit_edge ]
  %call19.i = call i32 %.sink.i(ptr noundef nonnull %call49, ptr noundef nonnull %tun_setup.i) #9
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end22.sink.split.i, %land.lhs.true.i.if.end22.i_crit_edge, %if.else.i.if.end22.i_crit_edge
  %54 = ptrtoint ptr %f.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %f.i, align 4
  %type24.i = getelementptr inbounds %struct.v4l2_frequency, ptr %f.i, i32 0, i32 1
  %55 = ptrtoint ptr %type24.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %type24.i, align 4
  %frequency.i = getelementptr inbounds %struct.v4l2_frequency, ptr %f.i, i32 0, i32 2
  %56 = ptrtoint ptr %frequency.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 9076, ptr %frequency.i, align 4
  %ctl_freq.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 29
  %57 = ptrtoint ptr %ctl_freq.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 9076, ptr %ctl_freq.i, align 8
  %subdevs.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 9, i32 2
  %58 = ptrtoint ptr %subdevs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn85.i = load ptr, ptr %subdevs.i, align 4
  %cmp31.not87.i = icmp eq ptr %.pn85.i, %subdevs.i
  br i1 %cmp31.not87.i, label %if.end22.i.cx231xx_config_tuner.exit_crit_edge, label %if.end22.i.for.body.i_crit_edge

if.end22.i.for.body.i_crit_edge:                  ; preds = %if.end22.i
  br label %for.body.i

if.end22.i.cx231xx_config_tuner.exit_crit_edge:   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx231xx_config_tuner.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end22.i.for.body.i_crit_edge
  %.pn89.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn85.i, %if.end22.i.for.body.i_crit_edge ]
  %__err.088.i = phi i32 [ %__err.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end22.i.for.body.i_crit_edge ]
  %__sd26.090.i = getelementptr i8, ptr %.pn89.i, i32 -80
  %ops33.i = getelementptr i8, ptr %.pn89.i, i32 24
  %59 = ptrtoint ptr %ops33.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops33.i, align 4
  %tuner34.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %tuner34.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tuner34.i, align 4
  %tobool35.not.i = icmp eq ptr %62, null
  br i1 %tobool35.not.i, label %for.body.i.if.end45.i_crit_edge, label %land.lhs.true36.i

for.body.i.if.end45.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

land.lhs.true36.i:                                ; preds = %for.body.i
  %s_frequency.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %s_frequency.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %s_frequency.i, align 4
  %tobool39.not.i = icmp eq ptr %64, null
  br i1 %tobool39.not.i, label %land.lhs.true36.i.if.end45.i_crit_edge, label %if.then40.i

land.lhs.true36.i.if.end45.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

if.then40.i:                                      ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #11
  %call44.i = call i32 %64(ptr noundef %__sd26.090.i, ptr noundef nonnull %f.i) #9
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then40.i, %land.lhs.true36.i.if.end45.i_crit_edge, %for.body.i.if.end45.i_crit_edge
  %__err.1.i = phi i32 [ %call44.i, %if.then40.i ], [ %__err.088.i, %land.lhs.true36.i.if.end45.i_crit_edge ], [ %__err.088.i, %for.body.i.if.end45.i_crit_edge ]
  %65 = zext i32 %__err.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %__err.1.i, label %if.end45.i.cx231xx_config_tuner.exit_crit_edge [
    i32 0, label %if.end45.i.for.inc.i_crit_edge
    i32 -515, label %if.end45.i.for.inc.i_crit_edge118
  ]

if.end45.i.for.inc.i_crit_edge118:                ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end45.i.for.inc.i_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end45.i.cx231xx_config_tuner.exit_crit_edge:   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx231xx_config_tuner.exit

for.inc.i:                                        ; preds = %if.end45.i.for.inc.i_crit_edge, %if.end45.i.for.inc.i_crit_edge118
  %66 = ptrtoint ptr %.pn89.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %.pn.i = load ptr, ptr %.pn89.i, align 4
  %cmp31.not.i = icmp eq ptr %.pn.i, %subdevs.i
  br i1 %cmp31.not.i, label %for.inc.i.cx231xx_config_tuner.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cx231xx_config_tuner.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx231xx_config_tuner.exit

cx231xx_config_tuner.exit:                        ; preds = %for.inc.i.cx231xx_config_tuner.exit_crit_edge, %if.end45.i.cx231xx_config_tuner.exit_crit_edge, %if.end22.i.cx231xx_config_tuner.exit_crit_edge, %if.else57.cx231xx_config_tuner.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %f.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tun_setup.i) #9
  br label %if.end59

if.end59:                                         ; preds = %cx231xx_config_tuner.exit, %do.end55, %if.end39.if.end59_crit_edge
  %67 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %model.i, align 8
  %69 = zext i32 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %68, label %if.end59.sw.epilog_crit_edge [
    i32 19, label %if.end59.sw.bb_crit_edge
    i32 20, label %if.end59.sw.bb_crit_edge119
    i32 21, label %if.end59.sw.bb_crit_edge120
    i32 26, label %if.end59.sw.bb_crit_edge121
    i32 27, label %if.end59.sw.bb_crit_edge122
  ]

if.end59.sw.bb_crit_edge122:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end59.sw.bb_crit_edge121:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end59.sw.bb_crit_edge120:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end59.sw.bb_crit_edge119:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end59.sw.bb_crit_edge:                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end59.sw.epilog_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end59.sw.bb_crit_edge, %if.end59.sw.bb_crit_edge119, %if.end59.sw.bb_crit_edge120, %if.end59.sw.bb_crit_edge121, %if.end59.sw.bb_crit_edge122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3520, i32 noundef 1312) #13
  %cmp62 = icmp eq ptr %call7.i.i, null
  br i1 %cmp62, label %do.end67, label %if.end69

do.end67:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %dev68 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %71 = ptrtoint ptr %dev68 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev68, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.46) #12
  br label %sw.epilog

if.end69:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call70 = call ptr @cx231xx_get_i2c_adap(ptr noundef %dev, i32 noundef 3) #9
  %client = getelementptr inbounds %struct.eeprom, ptr %call7.i.i, i32 0, i32 2
  %adapter = getelementptr inbounds %struct.eeprom, ptr %call7.i.i, i32 0, i32 2, i32 3
  %73 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call70, ptr %adapter, align 8
  %addr = getelementptr inbounds %struct.eeprom, ptr %call7.i.i, i32 0, i32 2, i32 1
  %74 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 80, ptr %addr, align 2
  %eeprom = getelementptr inbounds %struct.eeprom, ptr %call7.i.i, i32 0, i32 1
  call fastcc void @read_eeprom(ptr noundef %dev, ptr noundef %client, ptr noundef %eeprom)
  %add.ptr = getelementptr %struct.eeprom, ptr %call7.i.i, i32 0, i32 1, i32 192
  call void @tveeprom_hauppauge_analog(ptr noundef nonnull %call7.i.i, ptr noundef %add.ptr) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end69, %do.end67, %if.end59.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cx231xx_get_i2c_adap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @read_eeprom(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %client, ptr noundef %eedata) unnamed_addr #0 align 64 {
entry:
  %start_offset = alloca i8, align 1
  %msg_write = alloca %struct.i2c_msg, align 4
  %msg_read = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start_offset) #9
  %0 = ptrtoint ptr %start_offset to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %start_offset, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg_write) #9
  %1 = getelementptr inbounds i8, ptr %msg_write, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %addr1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %3 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr1, align 2
  %5 = ptrtoint ptr %msg_write to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %msg_write, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg_write, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 0, ptr %flags, align 2
  %len2 = getelementptr inbounds %struct.i2c_msg, ptr %msg_write, i32 0, i32 2
  %7 = ptrtoint ptr %len2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %len2, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg_write, i32 0, i32 3
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %start_offset, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg_read) #9
  %9 = getelementptr inbounds i8, ptr %msg_read, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  %11 = ptrtoint ptr %msg_read to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %4, ptr %msg_read, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg_read, i32 0, i32 1
  %12 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 1, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg_read, i32 0, i32 2
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg_read, i32 0, i32 3
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  %call = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg_write, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end22
  %dev34 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  br label %do.body29

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %entry.while.body_crit_edge
  %eedata_cur.03 = phi ptr [ %add.ptr, %if.end22.while.body_crit_edge ], [ %eedata, %entry.while.body_crit_edge ]
  %len_todo.02 = phi i32 [ %sub, %if.end22.while.body_crit_edge ], [ 256, %entry.while.body_crit_edge ]
  %15 = call i32 @llvm.umin.i32(i32 %len_todo.02, i32 64)
  %conv = trunc i32 %15 to i16
  %16 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %len6, align 4
  %17 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %eedata_cur.03, ptr %buf7, align 4
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %call14 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg_read, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %while.body.cleanup.sink.split_crit_edge, label %if.end22

while.body.cleanup.sink.split_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end22:                                         ; preds = %while.body
  %20 = ptrtoint ptr %len6 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len6, align 4
  %conv24 = zext i16 %21 to i32
  %add.ptr = getelementptr i8, ptr %eedata_cur.03, i32 %conv24
  %sub = sub nsw i32 %len_todo.02, %conv24
  %cmp9 = icmp sgt i32 %sub, 0
  br i1 %cmp9, label %if.end22.while.body_crit_edge, label %for.cond.preheader

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.body29:                                        ; preds = %for.inc.do.body29_crit_edge, %for.cond.preheader
  %i.04 = phi i32 [ 0, %for.cond.preheader ], [ %add38, %for.inc.do.body29_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @read_eeprom.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@read_eeprom, %if.then33)) #9
          to label %for.inc [label %if.then33], !srcloc !288

if.then33:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev34, align 8
  %arrayidx = getelementptr i8, ptr %eedata, i32 %i.04
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @read_eeprom.__UNIQUE_ID_ddebug335, ptr noundef %23, ptr noundef nonnull @.str.52, i32 noundef %i.04, i32 noundef 16, ptr noundef %arrayidx) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %do.body29
  %add38 = add nuw nsw i32 %i.04, 16
  %cmp27 = icmp ult i32 %i.04, 240
  br i1 %cmp27, label %for.inc.do.body29_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.do.body29_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

cleanup.sink.split:                               ; preds = %while.body.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %dev21 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %24 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev21, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.48) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg_read) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg_write) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start_offset) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tveeprom_hauppauge_analog(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cx231xx_config(ptr nocapture readnone %dev) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_config_i2c(ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %subdevs = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn32 = load ptr, ptr %subdevs, align 4
  %cmp.not34 = icmp eq ptr %.pn32, %subdevs
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn36 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn32, %entry.for.body_crit_edge ]
  %__err.035 = phi i32 [ %__err.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %__sd.037 = getelementptr i8, ptr %.pn36, i32 -80
  %ops = getelementptr i8, ptr %.pn36, i32 24
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %s_stream, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 %6(ptr noundef %__sd.037, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %__err.1 = phi i32 [ %call, %if.then ], [ %__err.035, %land.lhs.true.if.end_crit_edge ], [ %__err.035, %for.body.if.end_crit_edge ]
  %7 = zext i32 %__err.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %__err.1, label %if.end.for.end_crit_edge [
    i32 0, label %if.end.for.inc_crit_edge
    i32 -515, label %if.end.for.inc_crit_edge38
  ]

if.end.for.inc_crit_edge38:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %if.end.for.inc_crit_edge38
  %8 = ptrtoint ptr %.pn36 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn36, align 4
  %cmp.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cx231xx_release_resources(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @cx231xx_ir_exit(ptr noundef %dev) #9
  tail call void @cx231xx_release_analog_resources(ptr noundef %dev) #9
  tail call void @cx231xx_remove_from_devlist(ptr noundef %dev) #9
  tail call void @cx231xx_dev_uninit(ptr noundef %dev) #9
  %v4l2_dev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 9
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #9
  %media_dev.i = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 47
  %0 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %media_dev.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cx231xx_unregister_media_device.exit_crit_edge, label %if.then.i

entry.cx231xx_unregister_media_device.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx231xx_unregister_media_device.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @media_device_unregister(ptr noundef nonnull %1) #9
  %2 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %media_dev.i, align 8
  tail call void @media_device_cleanup(ptr noundef %3) #9
  %4 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %media_dev.i, align 8
  tail call void @kfree(ptr noundef %5) #9
  %6 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %media_dev.i, align 8
  br label %cx231xx_unregister_media_device.exit

cx231xx_unregister_media_device.exit:             ; preds = %if.then.i, %entry.cx231xx_unregister_media_device.exit_crit_edge
  %udev = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 60
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 8
  tail call void @usb_put_dev(ptr noundef %8) #9
  %devno = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 2
  %9 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %devno, align 4
  tail call void @_clear_bit(i32 noundef %10, ptr noundef nonnull @cx231xx_devused) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_ir_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_release_analog_resources(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_remove_from_devlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_dev_uninit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_usb_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @cx231xx_usb_driver, ptr noundef null, ptr noundef nonnull @.str.29) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cx231xx_usb_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @cx231xx_usb_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cx231xx_usb_probe(ptr noundef %interface, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %0 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %interface, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %entry.do.body_crit_edge, label %entry.cleanup218_crit_edge

entry.cleanup218_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup218

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond9.do.body_crit_edge, %entry.do.body_crit_edge
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull @cx231xx_devused, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call)
  %cmp4 = icmp sgt i32 %call, 7
  br i1 %cmp4, label %do.end, label %do.cond9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef 8) #12
  br label %cleanup218

do.cond9:                                         ; preds = %do.body
  %call10 = tail call i32 @_test_and_set_bit(i32 noundef %call, ptr noundef nonnull @cx231xx_devused) #9
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %do.end11, label %do.cond9.do.body_crit_edge

do.cond9.do.body_crit_edge:                       ; preds = %do.cond9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end11:                                         ; preds = %do.cond9
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  %call13 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #9
  %dev14 = getelementptr inbounds %struct.usb_device, ptr %call13, i32 0, i32 15
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev14, i32 noundef 15696, i32 noundef 3520) #9
  %cmp16 = icmp eq ptr %call.i, null
  br i1 %cmp16, label %do.end11.err_if_crit_edge, label %if.end19

do.end11.err_if_crit_edge:                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_if

if.end19:                                         ; preds = %do.end11
  %call20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i, i32 noundef 29, ptr noundef nonnull @.str.55, i32 noundef %call)
  %devno = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %devno to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call, ptr %devno, align 4
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %7 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_info, align 4
  %model = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %model, align 8
  %alt = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 55, i32 4
  %10 = ptrtoint ptr %alt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %alt, align 4
  %dev21 = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %dev21, align 8
  %board.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 4
  %arrayidx.i = getelementptr [28 x %struct.cx231xx_board], ptr @cx231xx_boards, i32 0, i32 %8
  %12 = call ptr @memcpy(ptr %board.i, ptr %arrayidx.i, i32 168)
  %interface_count = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 73
  %13 = ptrtoint ptr %interface_count to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %interface_count, align 1
  %inc = add i8 %14, 1
  store i8 %inc, ptr %interface_count, align 1
  %gpio_dir = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 75
  %15 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %gpio_dir, align 8
  %gpio_val = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 76
  %16 = ptrtoint ptr %gpio_val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %gpio_val, align 4
  %xc_fw_load_done = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 23
  %17 = ptrtoint ptr %xc_fw_load_done to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load = load i8, ptr %xc_fw_load_done, align 4
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %xc_fw_load_done, align 4
  %has_alsa_audio = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %has_alsa_audio to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load22 = load i8, ptr %has_alsa_audio, align 4
  %bf.set24 = or i8 %bf.load22, 16
  store i8 %bf.set24, ptr %has_alsa_audio, align 4
  %power_mode = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 77
  %19 = ptrtoint ptr %power_mode to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %power_mode, align 8
  %devlist_count = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 59
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %devlist_count, i32 noundef 4) #9
  %20 = ptrtoint ptr %devlist_count to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %devlist_count, align 4
  %vbi_or_sliced_cc_mode = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 82
  %21 = ptrtoint ptr %vbi_or_sliced_cc_mode to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %vbi_or_sliced_cc_mode, align 4
  %config = getelementptr inbounds %struct.usb_device, ptr %call13, i32 0, i32 19
  %22 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config, align 8
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bNumInterfaces, align 4
  %max_iad_interface_count = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 74
  %26 = ptrtoint ptr %max_iad_interface_count to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %max_iad_interface_count, align 2
  %mode_tv = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 84
  %27 = ptrtoint ptr %mode_tv to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %mode_tv, align 4
  %28 = load i32, ptr @transfer_mode, align 4
  %conv26 = trunc i32 %28 to i8
  %USE_ISO = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 85
  %29 = ptrtoint ptr %USE_ISO to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv26, ptr %USE_ISO, align 1
  %speed27 = getelementptr inbounds %struct.usb_device, ptr %call13, i32 0, i32 4
  %30 = ptrtoint ptr %speed27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %speed27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %32 = icmp ult i32 %31, 4
  br i1 %32, label %switch.lookup, label %if.end19.do.end32_crit_edge

if.end19.do.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end32

switch.lookup:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.cx231xx_usb_probe, i32 0, i32 %31
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end32

do.end32:                                         ; preds = %switch.lookup, %if.end19.do.end32_crit_edge
  %speed.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.59, %if.end19.do.end32_crit_edge ]
  %manufacturer = getelementptr inbounds %struct.usb_device, ptr %call13, i32 0, i32 32
  %34 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %manufacturer, align 4
  %tobool33.not = icmp eq ptr %35, null
  %spec.select = select i1 %tobool33.not, ptr @.str.63, ptr %35
  %product = getelementptr inbounds %struct.usb_device, ptr %call13, i32 0, i32 31
  %36 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %product, align 8
  %tobool35.not = icmp eq ptr %37, null
  %cond40 = select i1 %tobool35.not, ptr @.str.63, ptr %37
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %call13, i32 0, i32 16, i32 7
  %38 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %idVendor, align 8
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %conv41 = zext i16 %40 to i32
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %call13, i32 0, i32 16, i32 8
  %41 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %idProduct, align 2
  %43 = tail call i16 @llvm.bswap.i16(i16 %42)
  %conv43 = zext i16 %43 to i32
  %conv45 = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.61, ptr noundef nonnull %spec.select, ptr noundef nonnull %cond40, ptr noundef nonnull %speed.0, i32 noundef %conv41, i32 noundef %conv43, i32 noundef %conv45) #12
  %44 = ptrtoint ptr %interface_count to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %interface_count, align 1
  %inc47 = add i8 %45, 1
  store i8 %inc47, ptr %interface_count, align 1
  %46 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %devno, align 4
  %actconfig = getelementptr inbounds %struct.usb_device, ptr %call13, i32 0, i32 20
  %48 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %actconfig, align 4
  %intf_assoc = getelementptr inbounds %struct.usb_host_config, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %intf_assoc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %intf_assoc, align 4
  %tobool50.not = icmp eq ptr %51, null
  br i1 %tobool50.not, label %do.end32.do.end57_crit_edge, label %lor.lhs.false

do.end32.do.end57_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

lor.lhs.false:                                    ; preds = %do.end32
  %bFirstInterface = getelementptr inbounds %struct.usb_interface_assoc_descriptor, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %bFirstInterface to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %bFirstInterface, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %53)
  %cmp52.not = icmp eq i8 %53, 1
  br i1 %cmp52.not, label %do.body59, label %lor.lhs.false.do.end57_crit_edge

lor.lhs.false.do.end57_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end57

do.end57:                                         ; preds = %lor.lhs.false.do.end57_crit_edge, %do.end32.do.end57_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65) #12
  br label %err_if

do.body59:                                        ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_usb_probe.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_usb_probe, %if.then64)) #9
          to label %do.end67 [label %if.then64], !srcloc !288

if.then64:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_usb_probe.__UNIQUE_ID_ddebug339, ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %conv) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %do.body59
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3520, i32 noundef 608) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.end73, label %if.end74

do.end73:                                         ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69) #12
  br label %err_media_init

if.end74:                                         ; preds = %do.end67
  %56 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %board.i, align 8
  tail call void @__media_device_usb_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %call13, ptr noundef %57, ptr noundef nonnull @.str.29) #9
  %media_dev.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 47
  %58 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i.i.i, ptr %media_dev.i, align 8
  %v4l2_dev = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 9
  %mdev = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 9, i32 1
  %59 = ptrtoint ptr %mdev to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i.i, ptr %mdev, align 4
  %call77 = tail call i32 @v4l2_device_register(ptr noundef %dev, ptr noundef %v4l2_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end83, label %do.end82

do.end82:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.72) #12
  br label %err_v4l2

if.end83:                                         ; preds = %if.end74
  %udev2.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 60
  %60 = ptrtoint ptr %udev2.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call13, ptr %udev2.i, align 8
  %lock.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 38
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @cx231xx_init_dev.__key) #9
  %ctrl_urb_lock.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 39
  tail call void @__mutex_init(ptr noundef %ctrl_urb_lock.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @cx231xx_init_dev.__key.82) #9
  %gpio_i2c_lock.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 24
  tail call void @__mutex_init(ptr noundef %gpio_i2c_lock.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @cx231xx_init_dev.__key.84) #9
  %i2c_lock.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 25
  tail call void @__mutex_init(ptr noundef %i2c_lock.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @cx231xx_init_dev.__key.86) #9
  %video_mode.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 55
  %slock.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 55, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %slock.i, ptr noundef nonnull @.str.89, ptr noundef nonnull @cx231xx_init_dev.__key.88, i16 noundef signext 3) #9
  %vbi_mode.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 56
  %slock16.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 56, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %slock16.i, ptr noundef nonnull @.str.91, ptr noundef nonnull @cx231xx_init_dev.__key.90, i16 noundef signext 3) #9
  %slock21.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 57, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %slock21.i, ptr noundef nonnull @.str.93, ptr noundef nonnull @cx231xx_init_dev.__key.92, i16 noundef signext 3) #9
  %open.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 42
  tail call void @__init_waitqueue_head(ptr noundef %open.i, ptr noundef nonnull @.str.95, ptr noundef nonnull @cx231xx_init_dev.__key.94) #9
  %wait_frame.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 43
  tail call void @__init_waitqueue_head(ptr noundef %wait_frame.i, ptr noundef nonnull @.str.97, ptr noundef nonnull @cx231xx_init_dev.__key.96) #9
  %wait_stream.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 44
  tail call void @__init_waitqueue_head(ptr noundef %wait_stream.i, ptr noundef nonnull @.str.99, ptr noundef nonnull @cx231xx_init_dev.__key.98) #9
  %cx231xx_read_ctrl_reg.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 62
  %61 = ptrtoint ptr %cx231xx_read_ctrl_reg.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @cx231xx_read_ctrl_reg, ptr %cx231xx_read_ctrl_reg.i, align 4
  %cx231xx_write_ctrl_reg.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 63
  %62 = ptrtoint ptr %cx231xx_write_ctrl_reg.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @cx231xx_write_ctrl_reg, ptr %cx231xx_write_ctrl_reg.i, align 8
  %cx231xx_send_usb_command.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 64
  %63 = ptrtoint ptr %cx231xx_send_usb_command.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @cx231xx_send_usb_command, ptr %cx231xx_send_usb_command.i, align 4
  %cx231xx_gpio_i2c_read.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 65
  %64 = ptrtoint ptr %cx231xx_gpio_i2c_read.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @cx231xx_gpio_i2c_read, ptr %cx231xx_gpio_i2c_read.i, align 8
  %cx231xx_gpio_i2c_write.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 66
  %65 = ptrtoint ptr %cx231xx_gpio_i2c_write.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @cx231xx_gpio_i2c_write, ptr %cx231xx_gpio_i2c_write.i, align 4
  %call34.i = tail call i32 @initialize_cx231xx(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp.i = icmp slt i32 %call34.i, 0
  br i1 %cmp.i, label %do.end37.i, label %if.end.i358

do.end37.i:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.100) #12
  br label %err_init

if.end.i358:                                      ; preds = %if.end83
  %68 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %model, align 8
  %70 = zext i32 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %69, label %if.end.i358.if.end45.i_crit_edge [
    i32 5, label %if.end.i358.if.then42.i_crit_edge
    i32 9, label %if.end.i358.if.then42.i_crit_edge392
  ]

if.end.i358.if.then42.i_crit_edge392:             ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42.i

if.end.i358.if.then42.i_crit_edge:                ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then42.i

if.end.i358.if.end45.i_crit_edge:                 ; preds = %if.end.i358
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

if.then42.i:                                      ; preds = %if.end.i358.if.then42.i_crit_edge, %if.end.i358.if.then42.i_crit_edge392
  %call43.i = tail call i32 @cx231xx_set_alt_setting(ptr noundef nonnull %call.i, i8 noundef zeroext 4, i8 noundef zeroext 3) #9
  %call44.i = tail call i32 @cx231xx_set_alt_setting(ptr noundef nonnull %call.i, i8 noundef zeroext 5, i8 noundef zeroext 1) #9
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then42.i, %if.end.i358.if.end45.i_crit_edge
  tail call void @cx231xx_pre_card_setup(ptr noundef nonnull %call.i) #9
  %norm.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 4, i32 4
  %71 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %norm.i, align 8
  %norm53.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 28
  %73 = ptrtoint ptr %norm53.i to i32
  call void @__asan_store8_noabort(i32 %73)
  store i64 %72, ptr %norm53.i, align 8
  %call54.i = tail call i32 @cx231xx_dev_init(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.end61.i, label %do.end59.i

do.end59.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %75, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.101, i32 noundef %call54.i) #12
  br label %err_dev_init.i

if.end61.i:                                       ; preds = %if.end45.i
  tail call void @cx231xx_card_setup(ptr noundef nonnull %call.i) #9
  %subdevs.i.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 9, i32 2
  %76 = ptrtoint ptr %subdevs.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pn32.i.i = load ptr, ptr %subdevs.i.i, align 4
  %cmp.not34.i.i = icmp eq ptr %.pn32.i.i, %subdevs.i.i
  br i1 %cmp.not34.i.i, label %if.end61.i.cx231xx_config_i2c.exit.i_crit_edge, label %if.end61.i.for.body.i.i_crit_edge

if.end61.i.for.body.i.i_crit_edge:                ; preds = %if.end61.i
  br label %for.body.i.i

if.end61.i.cx231xx_config_i2c.exit.i_crit_edge:   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx231xx_config_i2c.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end61.i.for.body.i.i_crit_edge
  %.pn36.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn32.i.i, %if.end61.i.for.body.i.i_crit_edge ]
  %__err.035.i.i = phi i32 [ %__err.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end61.i.for.body.i.i_crit_edge ]
  %__sd.037.i.i = getelementptr i8, ptr %.pn36.i.i, i32 -80
  %ops.i.i = getelementptr i8, ptr %.pn36.i.i, i32 24
  %77 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ops.i.i, align 4
  %video.i.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %video.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %video.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %80, null
  br i1 %tobool.not.i.i, label %for.body.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %s_stream.i.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %80, i32 0, i32 10
  %81 = ptrtoint ptr %s_stream.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %s_stream.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %82, null
  br i1 %tobool6.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i359 = tail call i32 %82(ptr noundef %__sd.037.i.i, i32 noundef 1) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %for.body.i.i.if.end.i.i_crit_edge
  %__err.1.i.i = phi i32 [ %call.i.i359, %if.then.i.i ], [ %__err.035.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge ], [ %__err.035.i.i, %for.body.i.i.if.end.i.i_crit_edge ]
  %83 = zext i32 %__err.1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %__err.1.i.i, label %if.end.i.i.cx231xx_config_i2c.exit.i_crit_edge [
    i32 0, label %if.end.i.i.for.inc.i.i_crit_edge
    i32 -515, label %if.end.i.i.for.inc.i.i_crit_edge393
  ]

if.end.i.i.for.inc.i.i_crit_edge393:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i.cx231xx_config_i2c.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx231xx_config_i2c.exit.i

for.inc.i.i:                                      ; preds = %if.end.i.i.for.inc.i.i_crit_edge, %if.end.i.i.for.inc.i.i_crit_edge393
  %84 = ptrtoint ptr %.pn36.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pn.i.i = load ptr, ptr %.pn36.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %subdevs.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.cx231xx_config_i2c.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.cx231xx_config_i2c.exit.i_crit_edge:  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx231xx_config_i2c.exit.i

cx231xx_config_i2c.exit.i:                        ; preds = %for.inc.i.i.cx231xx_config_i2c.exit.i_crit_edge, %if.end.i.i.cx231xx_config_i2c.exit.i_crit_edge, %if.end61.i.cx231xx_config_i2c.exit.i_crit_edge
  %max_range_640_480.i.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 4, i32 21
  %85 = ptrtoint ptr %max_range_640_480.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load.i.i = load i8, ptr %max_range_640_480.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i1.i = icmp sgt i8 %bf.load.i.i, -1
  %..i.i = select i1 %tobool.not.i1.i, i32 720, i32 640
  br i1 %tobool.not.i1.i, label %if.else.i.i, label %cx231xx_config_i2c.exit.i.norm_maxh.exit.i_crit_edge

cx231xx_config_i2c.exit.i.norm_maxh.exit.i_crit_edge: ; preds = %cx231xx_config_i2c.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %norm_maxh.exit.i

if.else.i.i:                                      ; preds = %cx231xx_config_i2c.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %norm53.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %norm53.i, align 8
  %and.i.i = and i64 %87, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool1.not.i.i = icmp eq i64 %and.i.i, 0
  %cond.i.i = select i1 %tobool1.not.i.i, i32 480, i32 576
  br label %norm_maxh.exit.i

norm_maxh.exit.i:                                 ; preds = %if.else.i.i, %cx231xx_config_i2c.exit.i.norm_maxh.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %cond.i.i, %if.else.i.i ], [ 480, %cx231xx_config_i2c.exit.i.norm_maxh.exit.i_crit_edge ]
  %width.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 31
  %88 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %..i.i, ptr %width.i, align 8
  %height.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 32
  %89 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %retval.0.i.i, ptr %height.i, align 4
  %interlaced.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 33
  %90 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %interlaced.i, align 8
  %video_input.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 80
  %91 = ptrtoint ptr %video_input.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %video_input.i, align 4
  %92 = ptrtoint ptr %video_mode.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store volatile ptr %video_mode.i, ptr %video_mode.i, align 4
  %prev.i.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 55, i32 0, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %video_mode.i, ptr %prev.i.i, align 4
  %94 = ptrtoint ptr %vbi_mode.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %vbi_mode.i, ptr %vbi_mode.i, align 4
  %prev.i5.i = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 56, i32 0, i32 0, i32 1
  %95 = ptrtoint ptr %prev.i5.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %vbi_mode.i, ptr %prev.i5.i, align 4
  tail call void @cx231xx_add_into_devlist(ptr noundef %call.i) #9
  %96 = ptrtoint ptr %max_range_640_480.i.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load.i = load i8, ptr %max_range_640_480.i.i, align 8
  %97 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool77.not.i = icmp eq i8 %97, 0
  br i1 %tobool77.not.i, label %norm_maxh.exit.i.if.end92.i_crit_edge, label %do.end81.i

norm_maxh.exit.i.if.end92.i_crit_edge:            ; preds = %norm_maxh.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.i

do.end81.i:                                       ; preds = %norm_maxh.exit.i
  %98 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev21, align 8
  %100 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %model, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %99, ptr noundef nonnull @.str.112, i32 noundef %101) #12
  %call84.i = tail call i32 @cx231xx_417_register(ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84.i)
  %cmp85.i = icmp slt i32 %call84.i, 0
  br i1 %cmp85.i, label %do.end89.i, label %do.end81.i.if.end92.i_crit_edge

do.end81.i.if.end92.i_crit_edge:                  ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92.i

do.end89.i:                                       ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev21, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.101) #12
  br label %if.end92.i

if.end92.i:                                       ; preds = %do.end89.i, %do.end81.i.if.end92.i_crit_edge, %norm_maxh.exit.i.if.end92.i_crit_edge
  %call93.i = tail call i32 @cx231xx_register_analog_devices(ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93.i)
  %tobool94.not.i = icmp eq i32 %call93.i, 0
  br i1 %tobool94.not.i, label %if.end87, label %err_analog.i

err_analog.i:                                     ; preds = %if.end92.i
  %104 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %media_dev.i, align 8
  %tobool.not.i6.i = icmp eq ptr %105, null
  br i1 %tobool.not.i6.i, label %err_analog.i.cx231xx_unregister_media_device.exit.i_crit_edge, label %if.then.i7.i

err_analog.i.cx231xx_unregister_media_device.exit.i_crit_edge: ; preds = %err_analog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cx231xx_unregister_media_device.exit.i

if.then.i7.i:                                     ; preds = %err_analog.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @media_device_unregister(ptr noundef nonnull %105) #9
  %106 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %media_dev.i, align 8
  tail call void @media_device_cleanup(ptr noundef %107) #9
  %108 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %media_dev.i, align 8
  tail call void @kfree(ptr noundef %109) #9
  %110 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %media_dev.i, align 8
  br label %cx231xx_unregister_media_device.exit.i

cx231xx_unregister_media_device.exit.i:           ; preds = %if.then.i7.i, %err_analog.i.cx231xx_unregister_media_device.exit.i_crit_edge
  tail call void @cx231xx_release_analog_resources(ptr noundef %call.i) #9
  tail call void @cx231xx_remove_from_devlist(ptr noundef %call.i) #9
  br label %err_dev_init.i

err_dev_init.i:                                   ; preds = %cx231xx_unregister_media_device.exit.i, %do.end59.i
  %retval1.0.i = phi i32 [ %call54.i, %do.end59.i ], [ %call93.i, %cx231xx_unregister_media_device.exit.i ]
  tail call void @cx231xx_dev_uninit(ptr noundef %call.i) #9
  br label %err_init

if.end87:                                         ; preds = %if.end92.i
  %call97.i = tail call i32 @cx231xx_ir_init(ptr noundef %call.i) #9
  tail call void @cx231xx_init_extension(ptr noundef %call.i) #9
  %call88 = tail call fastcc i32 @cx231xx_init_v4l2(ptr noundef nonnull %call.i, ptr noundef %call13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end91, label %if.end87.err_init_crit_edge

if.end87.err_init_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_init

if.end91:                                         ; preds = %if.end87
  %ts1_source = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 71, i32 4
  %111 = ptrtoint ptr %ts1_source to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %ts1_source, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %112)
  %cmp92.not = icmp eq i32 %112, 255
  br i1 %cmp92.not, label %if.end91.if.end194_crit_edge, label %if.then94

if.end91.if.end194_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end194

if.then94:                                        ; preds = %if.end91
  %ts1_index = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 71, i32 12, i32 0, i32 1, i32 1
  %113 = ptrtoint ptr %ts1_index to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %ts1_index, align 1
  %add = add i8 %114, 1
  %conv99 = zext i8 %add to i32
  %115 = ptrtoint ptr %max_iad_interface_count to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %max_iad_interface_count, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %add, i8 %116)
  %cmp102.not = icmp ult i8 %add, %116
  br i1 %cmp102.not, label %if.end109, label %do.end107

do.end107:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.75, i32 noundef %conv99) #12
  br label %err_video_alt

if.end109:                                        ; preds = %if.then94
  %117 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %actconfig, align 4
  %arrayidx112 = getelementptr %struct.usb_host_config, ptr %118, i32 0, i32 3, i32 %conv99
  %119 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx112, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 8
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %122, i32 0, i32 4
  %123 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %cmp118 = icmp eq i8 %124, 0
  br i1 %cmp118, label %if.end109.err_video_alt_crit_edge, label %if.end121

if.end109.err_video_alt_crit_edge:                ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_video_alt

if.end121:                                        ; preds = %if.end109
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %122, i32 0, i32 3
  %125 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %126, i32 0, i32 2
  %127 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %bEndpointAddress, align 2
  %conv126 = zext i8 %128 to i16
  %end_point_addr = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 58, i32 8
  %129 = ptrtoint ptr %end_point_addr to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv126, ptr %end_point_addr, align 8
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %120, i32 0, i32 2
  %130 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %num_altsetting, align 8
  %num_alt = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 58, i32 6
  %132 = ptrtoint ptr %num_alt to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %num_alt, align 8
  %conv133 = zext i8 %128 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.78, i32 noundef %conv133, i32 noundef %131) #12
  %133 = ptrtoint ptr %num_alt to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_alt, align 8
  %135 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %134, i32 32) #9
  %136 = extractvalue { i32, i1 } %135, 1
  br i1 %136, label %devm_kmalloc_array.exit.thread, label %devm_kmalloc_array.exit, !prof !289

devm_kmalloc_array.exit.thread:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  %alt_max_pkt_size375 = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 58, i32 7
  %137 = ptrtoint ptr %alt_max_pkt_size375 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %alt_max_pkt_size375, align 4
  br label %err_video_alt

devm_kmalloc_array.exit:                          ; preds = %if.end121
  %138 = extractvalue { i32, i1 } %135, 0
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev14, i32 noundef %138, i32 noundef 3264) #9
  %alt_max_pkt_size = getelementptr inbounds %struct.cx231xx, ptr %call.i, i32 0, i32 58, i32 7
  %139 = ptrtoint ptr %alt_max_pkt_size to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call5.i, ptr %alt_max_pkt_size, align 4
  %cmp143 = icmp eq ptr %call5.i, null
  br i1 %cmp143, label %devm_kmalloc_array.exit.err_video_alt_crit_edge, label %for.cond.preheader

devm_kmalloc_array.exit.err_video_alt_crit_edge:  ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_video_alt

for.cond.preheader:                               ; preds = %devm_kmalloc_array.exit
  %140 = ptrtoint ptr %num_alt to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %num_alt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp149385 = icmp sgt i32 %141, 0
  br i1 %cmp149385, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end194_crit_edge

for.cond.preheader.if.end194_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end194

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0386 = phi i32 [ %inc193, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %142 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %120, align 8
  %bNumEndpoints155 = getelementptr %struct.usb_host_interface, ptr %143, i32 %i.0386, i32 0, i32 4
  %144 = ptrtoint ptr %bNumEndpoints155 to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %bNumEndpoints155, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %cmp158 = icmp eq i8 %145, 0
  br i1 %cmp158, label %for.body.err_video_alt_crit_edge, label %if.end161

for.body.err_video_alt_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_video_alt

if.end161:                                        ; preds = %for.body
  %endpoint164 = getelementptr %struct.usb_host_interface, ptr %143, i32 %i.0386, i32 3
  %146 = ptrtoint ptr %endpoint164 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %endpoint164, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %147, i32 0, i32 4
  %148 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %wMaxPacketSize, align 4
  %150 = tail call i16 @llvm.bswap.i16(i16 %149)
  %conv167 = zext i16 %150 to i32
  %and = and i32 %conv167, 2047
  %and169 = lshr i32 %conv167, 11
  %151 = and i32 %and169, 3
  %add170 = add nuw nsw i32 %151, 1
  %mul = mul nuw nsw i32 %add170, %and
  %152 = ptrtoint ptr %alt_max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %alt_max_pkt_size, align 4
  %arrayidx173 = getelementptr i32, ptr %153, i32 %i.0386
  %154 = ptrtoint ptr %arrayidx173 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %mul, ptr %arrayidx173, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_usb_probe.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_usb_probe, %cleanup.thread)) #9
          to label %for.inc [label %cleanup.thread], !srcloc !288

cleanup.thread:                                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #11
  %155 = ptrtoint ptr %alt_max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %alt_max_pkt_size, align 4
  %arrayidx189 = getelementptr i32, ptr %156, i32 %i.0386
  %157 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx189, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_usb_probe.__UNIQUE_ID_ddebug340, ptr noundef %dev, ptr noundef nonnull @.str.80, i32 noundef %i.0386, i32 noundef %158) #9
  br label %for.inc

for.inc:                                          ; preds = %cleanup.thread, %if.end161
  %inc193 = add nuw nsw i32 %i.0386, 1
  %159 = ptrtoint ptr %num_alt to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %num_alt, align 8
  %cmp149 = icmp slt i32 %inc193, %160
  br i1 %cmp149, label %for.inc.for.body_crit_edge, label %for.inc.if.end194_crit_edge

for.inc.if.end194_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end194

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end194:                                        ; preds = %for.inc.if.end194_crit_edge, %for.cond.preheader.if.end194_crit_edge, %if.end91.if.end194_crit_edge
  %161 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %model, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %162)
  %cmp196 = icmp eq i32 %162, 5
  br i1 %cmp196, label %if.then198, label %if.end194.if.end200_crit_edge

if.end194.if.end200_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end200

if.then198:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #11
  %call.i363 = tail call i32 @cx231xx_set_gpio_value(ptr noundef %call.i, i32 noundef 8, i32 noundef 1) #9
  tail call fastcc void @cx231xx_reset_out(ptr noundef nonnull %call.i)
  %call199 = tail call i32 @cx231xx_set_alt_setting(ptr noundef nonnull %call.i, i8 noundef zeroext 4, i8 noundef zeroext 3) #9
  %163 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %163)
  %.pr = load i32, ptr %model, align 8
  br label %if.end200

if.end200:                                        ; preds = %if.then198, %if.end194.if.end200_crit_edge
  %164 = phi i32 [ %.pr, %if.then198 ], [ %162, %if.end194.if.end200_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %164)
  %cmp202 = icmp eq i32 %164, 3
  br i1 %cmp202, label %if.then204, label %if.end200.if.end205_crit_edge

if.end200.if.end205_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end205

if.then204:                                       ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #11
  %call.i364 = tail call i32 @cx231xx_set_gpio_value(ptr noundef %call.i, i32 noundef 30, i32 noundef 0) #9
  br label %if.end205

if.end205:                                        ; preds = %if.then204, %if.end200.if.end205_crit_edge
  tail call void @cx231xx_v4l2_create_entities(ptr noundef nonnull %call.i) #9
  %165 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %media_dev.i, align 8
  %call207 = tail call i32 @v4l2_mc_create_media_graph(ptr noundef %166) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %if.then209, label %if.end205.if.end212_crit_edge

if.end205.if.end212_crit_edge:                    ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end212

if.then209:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #11
  %167 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %media_dev.i, align 8
  %call211 = tail call i32 @__media_device_register(ptr noundef %168, ptr noundef null) #9
  br label %if.end212

if.end212:                                        ; preds = %if.then209, %if.end205.if.end212_crit_edge
  %retval2.2 = phi i32 [ %call207, %if.end205.if.end212_crit_edge ], [ %call211, %if.then209 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval2.2)
  %cmp213 = icmp slt i32 %retval2.2, 0
  br i1 %cmp213, label %if.then215, label %if.end212.cleanup218_crit_edge

if.end212.cleanup218_crit_edge:                   ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup218

if.then215:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cx231xx_release_resources(ptr noundef nonnull %call.i)
  br label %cleanup218

err_video_alt:                                    ; preds = %for.body.err_video_alt_crit_edge, %devm_kmalloc_array.exit.err_video_alt_crit_edge, %devm_kmalloc_array.exit.thread, %if.end109.err_video_alt_crit_edge, %do.end107
  %retval2.3 = phi i32 [ -19, %do.end107 ], [ -19, %if.end109.err_video_alt_crit_edge ], [ -12, %devm_kmalloc_array.exit.err_video_alt_crit_edge ], [ -12, %devm_kmalloc_array.exit.thread ], [ -19, %for.body.err_video_alt_crit_edge ]
  tail call void @cx231xx_close_extension(ptr noundef nonnull %call.i) #9
  tail call void @cx231xx_ir_exit(ptr noundef nonnull %call.i) #9
  tail call void @cx231xx_release_analog_resources(ptr noundef nonnull %call.i) #9
  tail call void @cx231xx_417_unregister(ptr noundef nonnull %call.i) #9
  tail call void @cx231xx_remove_from_devlist(ptr noundef nonnull %call.i) #9
  tail call void @cx231xx_dev_uninit(ptr noundef nonnull %call.i) #9
  br label %err_init

err_init:                                         ; preds = %err_video_alt, %if.end87.err_init_crit_edge, %err_dev_init.i, %do.end37.i
  %retval2.4 = phi i32 [ %call88, %if.end87.err_init_crit_edge ], [ %retval2.3, %err_video_alt ], [ %retval1.0.i, %err_dev_init.i ], [ %call34.i, %do.end37.i ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #9
  br label %err_v4l2

err_v4l2:                                         ; preds = %err_init, %do.end82
  %retval2.5 = phi i32 [ %call77, %do.end82 ], [ %retval2.4, %err_init ]
  %169 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %media_dev.i, align 8
  %tobool.not.i366 = icmp eq ptr %170, null
  br i1 %tobool.not.i366, label %err_v4l2.err_media_init_crit_edge, label %if.then.i

err_v4l2.err_media_init_crit_edge:                ; preds = %err_v4l2
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_media_init

if.then.i:                                        ; preds = %err_v4l2
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @media_device_unregister(ptr noundef nonnull %170) #9
  %171 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %media_dev.i, align 8
  tail call void @media_device_cleanup(ptr noundef %172) #9
  %173 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %media_dev.i, align 8
  tail call void @kfree(ptr noundef %174) #9
  %175 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr null, ptr %media_dev.i, align 8
  br label %err_media_init

err_media_init:                                   ; preds = %if.then.i, %err_v4l2.err_media_init_crit_edge, %do.end73
  %retval2.6 = phi i32 [ -12, %do.end73 ], [ %retval2.5, %err_v4l2.err_media_init_crit_edge ], [ %retval2.5, %if.then.i ]
  %176 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %err_if

err_if:                                           ; preds = %err_media_init, %do.end57, %do.end11.err_if_crit_edge
  %retval2.7 = phi i32 [ -19, %do.end57 ], [ %retval2.6, %err_media_init ], [ -12, %do.end11.err_if_crit_edge ]
  %nr.0 = phi i32 [ %47, %do.end57 ], [ %47, %err_media_init ], [ %call, %do.end11.err_if_crit_edge ]
  tail call void @usb_put_dev(ptr noundef %call13) #9
  tail call void @_clear_bit(i32 noundef %nr.0, ptr noundef nonnull @cx231xx_devused) #9
  br label %cleanup218

cleanup218:                                       ; preds = %err_if, %if.then215, %if.end212.cleanup218_crit_edge, %do.end, %entry.cleanup218_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ %retval2.7, %err_if ], [ -19, %entry.cleanup218_crit_edge ], [ %retval2.2, %if.then215 ], [ %retval2.2, %if.end212.cleanup218_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cx231xx_usb_disconnect(ptr nocapture noundef %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %udev = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 60
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 36
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 8
  %or = or i32 %5, 2
  store i32 %or, ptr %state, align 8
  %lock = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 38
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %open = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 42
  tail call void @__wake_up(ptr noundef %open, i32 noundef 1, i32 noundef 0, ptr noundef null) #9
  %users = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 26
  %6 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.end3.if.end12_crit_edge, label %do.end

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.end:                                           ; preds = %if.end3
  %dev6 = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev6, align 8
  %init_name.i.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 27, i32 5, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.video_device_node_name.exit_crit_edge

do.end.video_device_node_name.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %video_device_node_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 27, i32 5
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  br label %video_device_node_name.exit

video_device_node_name.exit:                      ; preds = %if.end.i.i, %do.end.video_device_node_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %do.end.video_device_node_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.134, ptr noundef %retval.0.i.i) #12
  tail call void @cx231xx_ir_exit(ptr noundef nonnull %1) #9
  %USE_ISO = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 85
  %14 = ptrtoint ptr %USE_ISO to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %USE_ISO, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %video_device_node_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cx231xx_uninit_isoc(ptr noundef nonnull %1) #9
  br label %if.end10

if.else:                                          ; preds = %video_device_node_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cx231xx_uninit_bulk(ptr noundef nonnull %1) #9
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then9
  %wait_frame = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 43
  tail call void @__wake_up(ptr noundef %wait_frame, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %wait_stream = getelementptr inbounds %struct.cx231xx, ptr %1, i32 0, i32 44
  tail call void @__wake_up(ptr noundef %wait_stream, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  br label %if.end12

if.end12:                                         ; preds = %if.end10, %if.end3.if.end12_crit_edge
  tail call void @cx231xx_close_extension(ptr noundef nonnull %1) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %16 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %users, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool15.not = icmp eq i32 %17, 0
  br i1 %tobool15.not, label %if.then16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @cx231xx_release_resources(ptr noundef nonnull %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cx231xx_init_v4l2(ptr nocapture noundef %dev, ptr noundef %udev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %video_index = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 71, i32 12, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %video_index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %video_index, align 1
  %conv = zext i8 %1 to i32
  %add = add nuw nsw i32 %conv, 1
  %max_iad_interface_count = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 74
  %2 = ptrtoint ptr %max_iad_interface_count to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %max_iad_interface_count, align 2
  %conv1 = zext i8 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %conv1)
  %cmp.not = icmp ult i32 %add, %conv1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.117, i32 noundef %add) #12
  br label %cleanup317

if.end:                                           ; preds = %entry
  %actconfig = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 20
  %6 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %actconfig, align 4
  %arrayidx5 = getelementptr %struct.usb_host_config, ptr %7, i32 0, i32 3, i32 %add
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx5, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bNumEndpoints, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp9 = icmp eq i8 %13, 0
  br i1 %cmp9, label %if.end.cleanup317_crit_edge, label %if.end12

if.end.cleanup317_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup317

if.end12:                                         ; preds = %if.end
  %endpoint = getelementptr inbounds %struct.usb_host_interface, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bEndpointAddress, align 2
  %conv17 = zext i8 %17 to i16
  %end_point_addr = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 55, i32 8
  %18 = ptrtoint ptr %end_point_addr to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv17, ptr %end_point_addr, align 4
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %9, i32 0, i32 2
  %19 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_altsetting, align 8
  %num_alt = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 55, i32 6
  %21 = ptrtoint ptr %num_alt to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %num_alt, align 4
  %dev22 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 3
  %22 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev22, align 8
  %conv25 = zext i8 %17 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.120, i32 noundef %conv25, i32 noundef %20) #12
  %dev28 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  %24 = ptrtoint ptr %num_alt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_alt, align 4
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 32) #9
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %devm_kmalloc_array.exit.thread, label %devm_kmalloc_array.exit, !prof !289

devm_kmalloc_array.exit.thread:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %alt_max_pkt_size22 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 55, i32 7
  %28 = ptrtoint ptr %alt_max_pkt_size22 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %alt_max_pkt_size22, align 4
  br label %cleanup317

devm_kmalloc_array.exit:                          ; preds = %if.end12
  %29 = extractvalue { i32, i1 } %26, 0
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev28, i32 noundef %29, i32 noundef 3264) #9
  %alt_max_pkt_size = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 55, i32 7
  %30 = ptrtoint ptr %alt_max_pkt_size to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call5.i, ptr %alt_max_pkt_size, align 4
  %cmp34 = icmp eq ptr %call5.i, null
  br i1 %cmp34, label %devm_kmalloc_array.exit.cleanup317_crit_edge, label %for.cond.preheader

devm_kmalloc_array.exit.cleanup317_crit_edge:     ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup317

for.cond.preheader:                               ; preds = %devm_kmalloc_array.exit
  %31 = ptrtoint ptr %num_alt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_alt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp4035 = icmp sgt i32 %32, 0
  br i1 %cmp4035, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.036 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %33 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %9, align 8
  %bNumEndpoints45 = getelementptr %struct.usb_host_interface, ptr %34, i32 %i.036, i32 0, i32 4
  %35 = ptrtoint ptr %bNumEndpoints45 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bNumEndpoints45, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp48 = icmp eq i8 %36, 0
  br i1 %cmp48, label %for.body.cleanup317_crit_edge, label %if.end51

for.body.cleanup317_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup317

if.end51:                                         ; preds = %for.body
  %endpoint54 = getelementptr %struct.usb_host_interface, ptr %34, i32 %i.036, i32 3
  %37 = ptrtoint ptr %endpoint54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %endpoint54, align 4
  %wMaxPacketSize = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %wMaxPacketSize to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %wMaxPacketSize, align 4
  %41 = tail call i16 @llvm.bswap.i16(i16 %40)
  %conv57 = zext i16 %41 to i32
  %and = and i32 %conv57, 2047
  %and59 = lshr i32 %conv57, 11
  %42 = and i32 %and59, 3
  %add60 = add nuw nsw i32 %42, 1
  %mul = mul nuw nsw i32 %add60, %and
  %43 = ptrtoint ptr %alt_max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %alt_max_pkt_size, align 4
  %arrayidx63 = getelementptr i32, ptr %44, i32 %i.036
  %45 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul, ptr %arrayidx63, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_init_v4l2.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_init_v4l2, %if.then69)) #9
          to label %for.inc [label %if.then69], !srcloc !288

if.then69:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev22, align 8
  %48 = ptrtoint ptr %alt_max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %alt_max_pkt_size, align 4
  %arrayidx73 = getelementptr i32, ptr %49, i32 %i.036
  %50 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx73, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_init_v4l2.__UNIQUE_ID_ddebug336, ptr noundef %47, ptr noundef nonnull @.str.80, i32 noundef %i.036, i32 noundef %51) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then69, %if.end51
  %inc = add nuw nsw i32 %i.036, 1
  %52 = ptrtoint ptr %num_alt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_alt, align 4
  %cmp40 = icmp slt i32 %inc, %53
  br i1 %cmp40, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %vanc_index = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 71, i32 12, i32 0, i32 1, i32 5
  %54 = ptrtoint ptr %vanc_index to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %vanc_index, align 1
  %conv81 = zext i8 %55 to i32
  %add82 = add nuw nsw i32 %conv81, 1
  %56 = ptrtoint ptr %max_iad_interface_count to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %max_iad_interface_count, align 2
  %conv84 = zext i8 %57 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add82, i32 %conv84)
  %cmp85.not = icmp ult i32 %add82, %conv84
  br i1 %cmp85.not, label %if.end92, label %do.end90

do.end90:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev22, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.123, i32 noundef %add82) #12
  br label %cleanup317

if.end92:                                         ; preds = %for.end
  %60 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %actconfig, align 4
  %arrayidx95 = getelementptr %struct.usb_host_config, ptr %61, i32 0, i32 3, i32 %add82
  %62 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx95, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 8
  %bNumEndpoints99 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %65, i32 0, i32 4
  %66 = ptrtoint ptr %bNumEndpoints99 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bNumEndpoints99, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp102 = icmp eq i8 %67, 0
  br i1 %cmp102, label %if.end92.cleanup317_crit_edge, label %if.end105

if.end92.cleanup317_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup317

if.end105:                                        ; preds = %if.end92
  %endpoint108 = getelementptr inbounds %struct.usb_host_interface, ptr %65, i32 0, i32 3
  %68 = ptrtoint ptr %endpoint108 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %endpoint108, align 4
  %bEndpointAddress111 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %bEndpointAddress111 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %bEndpointAddress111, align 2
  %conv112 = zext i8 %71 to i16
  %end_point_addr113 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 8
  %72 = ptrtoint ptr %end_point_addr113 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv112, ptr %end_point_addr113, align 8
  %num_altsetting114 = getelementptr inbounds %struct.usb_interface, ptr %63, i32 0, i32 2
  %73 = ptrtoint ptr %num_altsetting114 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_altsetting114, align 8
  %num_alt116 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 6
  %75 = ptrtoint ptr %num_alt116 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %num_alt116, align 8
  %76 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev22, align 8
  %conv123 = zext i8 %71 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.126, i32 noundef %conv123, i32 noundef %74) #12
  %78 = ptrtoint ptr %num_alt116 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_alt116, align 8
  %80 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %79, i32 32) #9
  %81 = extractvalue { i32, i1 } %80, 1
  br i1 %81, label %devm_kmalloc_array.exit16.thread, label %devm_kmalloc_array.exit16, !prof !289

devm_kmalloc_array.exit16.thread:                 ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  %alt_max_pkt_size13126 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 7
  %82 = ptrtoint ptr %alt_max_pkt_size13126 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %alt_max_pkt_size13126, align 4
  br label %cleanup317

devm_kmalloc_array.exit16:                        ; preds = %if.end105
  %83 = extractvalue { i32, i1 } %80, 0
  %call5.i13 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev28, i32 noundef %83, i32 noundef 3264) #9
  %alt_max_pkt_size131 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 56, i32 7
  %84 = ptrtoint ptr %alt_max_pkt_size131 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call5.i13, ptr %alt_max_pkt_size131, align 4
  %cmp134 = icmp eq ptr %call5.i13, null
  br i1 %cmp134, label %devm_kmalloc_array.exit16.cleanup317_crit_edge, label %for.cond138.preheader

devm_kmalloc_array.exit16.cleanup317_crit_edge:   ; preds = %devm_kmalloc_array.exit16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup317

for.cond138.preheader:                            ; preds = %devm_kmalloc_array.exit16
  %85 = ptrtoint ptr %num_alt116 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %num_alt116, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp14137 = icmp sgt i32 %86, 0
  br i1 %cmp14137, label %for.cond138.preheader.for.body143_crit_edge, label %for.cond138.preheader.for.end196_crit_edge

for.cond138.preheader.for.end196_crit_edge:       ; preds = %for.cond138.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end196

for.cond138.preheader.for.body143_crit_edge:      ; preds = %for.cond138.preheader
  br label %for.body143

for.body143:                                      ; preds = %for.inc194.for.body143_crit_edge, %for.cond138.preheader.for.body143_crit_edge
  %i.138 = phi i32 [ %inc195, %for.inc194.for.body143_crit_edge ], [ 0, %for.cond138.preheader.for.body143_crit_edge ]
  %87 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %63, align 8
  %bNumEndpoints148 = getelementptr %struct.usb_host_interface, ptr %88, i32 %i.138, i32 0, i32 4
  %89 = ptrtoint ptr %bNumEndpoints148 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %bNumEndpoints148, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %cmp151 = icmp eq i8 %90, 0
  br i1 %cmp151, label %for.body143.cleanup317_crit_edge, label %if.end154

for.body143.cleanup317_crit_edge:                 ; preds = %for.body143
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup317

if.end154:                                        ; preds = %for.body143
  %endpoint157 = getelementptr %struct.usb_host_interface, ptr %88, i32 %i.138, i32 3
  %91 = ptrtoint ptr %endpoint157 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %endpoint157, align 4
  %wMaxPacketSize160 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %92, i32 0, i32 4
  %93 = ptrtoint ptr %wMaxPacketSize160 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %wMaxPacketSize160, align 4
  %95 = tail call i16 @llvm.bswap.i16(i16 %94)
  %conv161 = zext i16 %95 to i32
  %and162 = and i32 %conv161, 2047
  %and164 = lshr i32 %conv161, 11
  %96 = and i32 %and164, 3
  %add166 = add nuw nsw i32 %96, 1
  %mul167 = mul nuw nsw i32 %add166, %and162
  %97 = ptrtoint ptr %alt_max_pkt_size131 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %alt_max_pkt_size131, align 4
  %arrayidx170 = getelementptr i32, ptr %98, i32 %i.138
  %99 = ptrtoint ptr %arrayidx170 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %mul167, ptr %arrayidx170, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_init_v4l2.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_init_v4l2, %if.then183)) #9
          to label %for.inc194 [label %if.then183], !srcloc !288

if.then183:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev22, align 8
  %102 = ptrtoint ptr %alt_max_pkt_size131 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %alt_max_pkt_size131, align 4
  %arrayidx187 = getelementptr i32, ptr %103, i32 %i.138
  %104 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx187, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_init_v4l2.__UNIQUE_ID_ddebug337, ptr noundef %101, ptr noundef nonnull @.str.80, i32 noundef %i.138, i32 noundef %105) #9
  br label %for.inc194

for.inc194:                                       ; preds = %if.then183, %if.end154
  %inc195 = add nuw nsw i32 %i.138, 1
  %106 = ptrtoint ptr %num_alt116 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %num_alt116, align 8
  %cmp141 = icmp slt i32 %inc195, %107
  br i1 %cmp141, label %for.inc194.for.body143_crit_edge, label %for.inc194.for.end196_crit_edge

for.inc194.for.end196_crit_edge:                  ; preds = %for.inc194
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end196

for.inc194.for.body143_crit_edge:                 ; preds = %for.inc194
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body143

for.end196:                                       ; preds = %for.inc194.for.end196_crit_edge, %for.cond138.preheader.for.end196_crit_edge
  %hanc_index = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 71, i32 12, i32 0, i32 1, i32 6
  %108 = ptrtoint ptr %hanc_index to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %hanc_index, align 1
  %conv201 = zext i8 %109 to i32
  %add202 = add nuw nsw i32 %conv201, 1
  %110 = ptrtoint ptr %max_iad_interface_count to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %max_iad_interface_count, align 2
  %conv204 = zext i8 %111 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add202, i32 %conv204)
  %cmp205.not = icmp ult i32 %add202, %conv204
  br i1 %cmp205.not, label %if.end212, label %do.end210

do.end210:                                        ; preds = %for.end196
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev22, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.129, i32 noundef %add202) #12
  br label %cleanup317

if.end212:                                        ; preds = %for.end196
  %114 = ptrtoint ptr %actconfig to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %actconfig, align 4
  %arrayidx215 = getelementptr %struct.usb_host_config, ptr %115, i32 0, i32 3, i32 %add202
  %116 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx215, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %117, align 8
  %bNumEndpoints219 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %bNumEndpoints219 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %bNumEndpoints219, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %cmp222 = icmp eq i8 %121, 0
  br i1 %cmp222, label %if.end212.cleanup317_crit_edge, label %if.end225

if.end212.cleanup317_crit_edge:                   ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup317

if.end225:                                        ; preds = %if.end212
  %endpoint228 = getelementptr inbounds %struct.usb_host_interface, ptr %119, i32 0, i32 3
  %122 = ptrtoint ptr %endpoint228 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %endpoint228, align 4
  %bEndpointAddress231 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %123, i32 0, i32 2
  %124 = ptrtoint ptr %bEndpointAddress231 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %bEndpointAddress231, align 2
  %conv232 = zext i8 %125 to i16
  %end_point_addr233 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 57, i32 8
  %126 = ptrtoint ptr %end_point_addr233 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %conv232, ptr %end_point_addr233, align 4
  %num_altsetting234 = getelementptr inbounds %struct.usb_interface, ptr %117, i32 0, i32 2
  %127 = ptrtoint ptr %num_altsetting234 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %num_altsetting234, align 8
  %num_alt236 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 57, i32 6
  %129 = ptrtoint ptr %num_alt236 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %num_alt236, align 4
  %130 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev22, align 8
  %conv243 = zext i8 %125 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %131, ptr noundef nonnull @.str.132, i32 noundef %conv243, i32 noundef %128) #12
  %132 = ptrtoint ptr %num_alt236 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %num_alt236, align 4
  %134 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %133, i32 32) #9
  %135 = extractvalue { i32, i1 } %134, 1
  br i1 %135, label %devm_kmalloc_array.exit20.thread, label %devm_kmalloc_array.exit20, !prof !289

devm_kmalloc_array.exit20.thread:                 ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #11
  %alt_max_pkt_size25130 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 57, i32 7
  %136 = ptrtoint ptr %alt_max_pkt_size25130 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr null, ptr %alt_max_pkt_size25130, align 4
  br label %cleanup317

devm_kmalloc_array.exit20:                        ; preds = %if.end225
  %137 = extractvalue { i32, i1 } %134, 0
  %call5.i17 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev28, i32 noundef %137, i32 noundef 3264) #9
  %alt_max_pkt_size251 = getelementptr inbounds %struct.cx231xx, ptr %dev, i32 0, i32 57, i32 7
  %138 = ptrtoint ptr %alt_max_pkt_size251 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %call5.i17, ptr %alt_max_pkt_size251, align 4
  %cmp254 = icmp eq ptr %call5.i17, null
  br i1 %cmp254, label %devm_kmalloc_array.exit20.cleanup317_crit_edge, label %for.cond258.preheader

devm_kmalloc_array.exit20.cleanup317_crit_edge:   ; preds = %devm_kmalloc_array.exit20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup317

for.cond258.preheader:                            ; preds = %devm_kmalloc_array.exit20
  %139 = ptrtoint ptr %num_alt236 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %num_alt236, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp26139 = icmp sgt i32 %140, 0
  br i1 %cmp26139, label %for.cond258.preheader.for.body263_crit_edge, label %for.cond258.preheader.cleanup317_crit_edge

for.cond258.preheader.cleanup317_crit_edge:       ; preds = %for.cond258.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup317

for.cond258.preheader.for.body263_crit_edge:      ; preds = %for.cond258.preheader
  br label %for.body263

for.body263:                                      ; preds = %for.inc314.for.body263_crit_edge, %for.cond258.preheader.for.body263_crit_edge
  %i.240 = phi i32 [ %inc315, %for.inc314.for.body263_crit_edge ], [ 0, %for.cond258.preheader.for.body263_crit_edge ]
  %141 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %117, align 8
  %bNumEndpoints268 = getelementptr %struct.usb_host_interface, ptr %142, i32 %i.240, i32 0, i32 4
  %143 = ptrtoint ptr %bNumEndpoints268 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %bNumEndpoints268, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %cmp271 = icmp eq i8 %144, 0
  br i1 %cmp271, label %for.body263.cleanup317_crit_edge, label %if.end274

for.body263.cleanup317_crit_edge:                 ; preds = %for.body263
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup317

if.end274:                                        ; preds = %for.body263
  %endpoint277 = getelementptr %struct.usb_host_interface, ptr %142, i32 %i.240, i32 3
  %145 = ptrtoint ptr %endpoint277 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %endpoint277, align 4
  %wMaxPacketSize280 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %146, i32 0, i32 4
  %147 = ptrtoint ptr %wMaxPacketSize280 to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %wMaxPacketSize280, align 4
  %149 = tail call i16 @llvm.bswap.i16(i16 %148)
  %conv281 = zext i16 %149 to i32
  %and282 = and i32 %conv281, 2047
  %and284 = lshr i32 %conv281, 11
  %150 = and i32 %and284, 3
  %add286 = add nuw nsw i32 %150, 1
  %mul287 = mul nuw nsw i32 %add286, %and282
  %151 = ptrtoint ptr %alt_max_pkt_size251 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %alt_max_pkt_size251, align 4
  %arrayidx290 = getelementptr i32, ptr %152, i32 %i.240
  %153 = ptrtoint ptr %arrayidx290 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %mul287, ptr %arrayidx290, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cx231xx_init_v4l2.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cx231xx_init_v4l2, %if.then303)) #9
          to label %for.inc314 [label %if.then303], !srcloc !288

if.then303:                                       ; preds = %if.end274
  call void @__sanitizer_cov_trace_pc() #11
  %154 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev22, align 8
  %156 = ptrtoint ptr %alt_max_pkt_size251 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %alt_max_pkt_size251, align 4
  %arrayidx307 = getelementptr i32, ptr %157, i32 %i.240
  %158 = ptrtoint ptr %arrayidx307 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx307, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cx231xx_init_v4l2.__UNIQUE_ID_ddebug338, ptr noundef %155, ptr noundef nonnull @.str.80, i32 noundef %i.240, i32 noundef %159) #9
  br label %for.inc314

for.inc314:                                       ; preds = %if.then303, %if.end274
  %inc315 = add nuw nsw i32 %i.240, 1
  %160 = ptrtoint ptr %num_alt236 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %num_alt236, align 4
  %cmp261 = icmp slt i32 %inc315, %161
  br i1 %cmp261, label %for.inc314.for.body263_crit_edge, label %for.inc314.cleanup317_crit_edge

for.inc314.cleanup317_crit_edge:                  ; preds = %for.inc314
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup317

for.inc314.for.body263_crit_edge:                 ; preds = %for.inc314
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body263

cleanup317:                                       ; preds = %for.inc314.cleanup317_crit_edge, %for.body263.cleanup317_crit_edge, %for.cond258.preheader.cleanup317_crit_edge, %devm_kmalloc_array.exit20.cleanup317_crit_edge, %devm_kmalloc_array.exit20.thread, %if.end212.cleanup317_crit_edge, %do.end210, %for.body143.cleanup317_crit_edge, %devm_kmalloc_array.exit16.cleanup317_crit_edge, %devm_kmalloc_array.exit16.thread, %if.end92.cleanup317_crit_edge, %do.end90, %for.body.cleanup317_crit_edge, %devm_kmalloc_array.exit.cleanup317_crit_edge, %devm_kmalloc_array.exit.thread, %if.end.cleanup317_crit_edge, %do.end
  %retval.6 = phi i32 [ -19, %do.end ], [ -19, %do.end90 ], [ -19, %do.end210 ], [ -19, %if.end.cleanup317_crit_edge ], [ -12, %devm_kmalloc_array.exit.cleanup317_crit_edge ], [ -19, %if.end92.cleanup317_crit_edge ], [ -12, %devm_kmalloc_array.exit16.cleanup317_crit_edge ], [ -19, %if.end212.cleanup317_crit_edge ], [ -12, %devm_kmalloc_array.exit20.cleanup317_crit_edge ], [ -12, %devm_kmalloc_array.exit.thread ], [ -12, %devm_kmalloc_array.exit16.thread ], [ -12, %devm_kmalloc_array.exit20.thread ], [ 0, %for.cond258.preheader.cleanup317_crit_edge ], [ 0, %for.inc314.cleanup317_crit_edge ], [ -19, %for.body263.cleanup317_crit_edge ], [ -19, %for.body143.cleanup317_crit_edge ], [ -19, %for.body.cleanup317_crit_edge ]
  ret i32 %retval.6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cx231xx_reset_out(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cx231xx_set_gpio_value(ptr noundef %dev, i32 noundef 9, i32 noundef 1) #9
  tail call void @msleep(i32 noundef 200) #9
  %call1 = tail call i32 @cx231xx_set_gpio_value(ptr noundef %dev, i32 noundef 9, i32 noundef 0) #9
  tail call void @msleep(i32 noundef 200) #9
  %call2 = tail call i32 @cx231xx_set_gpio_value(ptr noundef %dev, i32 noundef 9, i32 noundef 1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_set_alt_setting(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_v4l2_create_entities(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_mc_create_media_graph(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_close_extension(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_417_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__media_device_usb_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_read_ctrl_reg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_write_ctrl_reg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_send_usb_command(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_gpio_i2c_read(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_gpio_i2c_write(ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @initialize_cx231xx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_dev_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_add_into_devlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_417_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_register_analog_devices(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cx231xx_ir_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_init_extension(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_uninit_isoc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cx231xx_uninit_bulk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !85, !87, !89, !90, !91, !92, !93, !94, !96, !98, !99, !100, !101, !102, !104, !106, !107, !108, !110, !111, !112, !114, !115, !117, !119, !120, !122, !123, !125, !126, !128, !130, !131, !132, !133, !135, !136, !138, !139, !141, !143, !144, !145, !146, !148, !150, !152, !154, !156, !158, !159, !160, !161, !163, !164, !165, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !247, !249, !250, !251, !253, !255, !256, !257, !259, !260, !261, !263, !265, !266, !267, !269, !270, !271, !273, !275, !276, !277, !278}
!llvm.module.flags = !{!279, !280, !281, !282, !283, !284, !285, !286}
!llvm.ident = !{!287}

!0 = !{ptr @__param_tuner, !1, !"__param_tuner", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_tunertype328, !1, !"__UNIQUE_ID_tunertype328", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_tuner329, !4, !"__UNIQUE_ID_tuner329", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 29, i32 1}
!5 = !{ptr @__param_transfer_mode, !6, !"__param_transfer_mode", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 32, i32 1}
!7 = !{ptr @__UNIQUE_ID_transfer_modetype330, !6, !"__UNIQUE_ID_transfer_modetype330", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_transfer_mode331, !9, !"__UNIQUE_ID_transfer_mode331", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 33, i32 1}
!10 = !{ptr @__param_disable_ir, !11, !"__param_disable_ir", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 36, i32 1}
!12 = !{ptr @__UNIQUE_ID_disable_irtype332, !11, !"__UNIQUE_ID_disable_irtype332", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_disable_ir333, !14, !"__UNIQUE_ID_disable_ir333", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 37, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 58, i32 11}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 81, i32 11}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 121, i32 11}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 161, i32 11}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 202, i32 11}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 242, i32 11}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 273, i32 11}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 301, i32 11}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 329, i32 11}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 368, i32 11}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 470, i32 11}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 485, i32 18}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 509, i32 11}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 394, i32 11}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 538, i32 11}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 562, i32 11}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 597, i32 11}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 632, i32 11}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 658, i32 11}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 432, i32 11}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 690, i32 11}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 729, i32 11}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 768, i32 11}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 807, i32 11}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 833, i32 11}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 860, i32 11}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 888, i32 11}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 914, i32 11}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 953, i32 11}
!73 = !{ptr @cx231xx_boards, !74, !"cx231xx_boards", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 56, i32 22}
!75 = !{ptr @cx231xx_bcount, !76, !"cx231xx_bcount", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 993, i32 20}
!77 = !{ptr @cx231xx_id_table, !78, !"cx231xx_id_table", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 996, i32 22}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1090, i32 4}
!81 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @cx231xx_tuner_callback.__UNIQUE_ID_ddebug334, !80, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!85 = !{ptr @__ksymtab_cx231xx_tuner_callback, !86, !"__ksymtab_cx231xx_tuner_callback", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1116, i32 1}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1147, i32 2}
!89 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @cx231xx_pre_card_setup._entry, !88, !"_entry", i1 false, i1 false}
!93 = !{ptr @cx231xx_pre_card_setup._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1263, i32 6}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1265, i32 4}
!98 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @cx231xx_card_setup._entry, !97, !"_entry", i1 false, i1 false}
!101 = !{ptr @cx231xx_card_setup._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1277, i32 11}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1280, i32 4}
!106 = !{ptr @cx231xx_card_setup._entry.42, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @cx231xx_card_setup._entry_ptr.44, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1301, i32 5}
!110 = !{ptr @cx231xx_card_setup._entry.45, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @cx231xx_card_setup._entry_ptr.47, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @__initcall__kmod_cx231xx__341_1983_cx231xx_usb_driver_init6, !113, !"__initcall__kmod_cx231xx__341_1983_cx231xx_usb_driver_init6", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1983, i32 1}
!114 = !{ptr @__exitcall_cx231xx_usb_driver_exit, !113, !"__exitcall_cx231xx_usb_driver_exit", i1 false, i1 false}
!115 = !{ptr @disable_ir, !116, !"disable_ir", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 35, i32 21}
!117 = !{ptr @cx231xx_devused, !118, !"cx231xx_devused", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 40, i32 22}
!119 = !{ptr @__param_str_tuner, !1, !"__param_str_tuner", i1 false, i1 false}
!120 = !{ptr @tuner, !121, !"tuner", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 27, i32 12}
!122 = !{ptr @__param_str_transfer_mode, !6, !"__param_str_transfer_mode", i1 false, i1 false}
!123 = !{ptr @transfer_mode, !124, !"transfer_mode", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 31, i32 12}
!125 = !{ptr @__param_str_disable_ir, !11, !"__param_str_disable_ir", i1 false, i1 false}
!126 = !{ptr @RDE250_XCV_TUNER, !127, !"RDE250_XCV_TUNER", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 46, i32 31}
!128 = !{ptr @.str.48, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1226, i32 3}
!130 = !{ptr @.str.49, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @read_eeprom._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @read_eeprom._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @read_eeprom._entry.50, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1236, i32 4}
!135 = !{ptr @read_eeprom._entry_ptr.51, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.52, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1244, i32 3}
!138 = !{ptr @read_eeprom.__UNIQUE_ID_ddebug335, !137, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!139 = !{ptr @cx231xx_usb_driver, !140, !"cx231xx_usb_driver", i1 false, i1 false}
!140 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1976, i32 26}
!141 = !{ptr @.str.53, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1715, i32 4}
!143 = !{ptr @.str.54, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @cx231xx_usb_probe._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @cx231xx_usb_probe._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.55, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1731, i32 26}
!148 = !{ptr @.str.56, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1763, i32 11}
!150 = !{ptr @.str.57, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1767, i32 11}
!152 = !{ptr @.str.58, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1770, i32 11}
!154 = !{ptr @.str.59, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1773, i32 11}
!156 = !{ptr @.str.61, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1776, i32 2}
!158 = !{ptr @cx231xx_usb_probe._entry.60, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @cx231xx_usb_probe._entry_ptr.62, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.63, !157, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1793, i32 3}
!163 = !{ptr @cx231xx_usb_probe._entry.64, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @cx231xx_usb_probe._entry_ptr.66, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.67, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1798, i32 2}
!167 = !{ptr @cx231xx_usb_probe.__UNIQUE_ID_ddebug339, !166, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!168 = !{ptr @.str.69, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1806, i32 3}
!170 = !{ptr @cx231xx_usb_probe._entry.68, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @cx231xx_usb_probe._entry_ptr.70, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.72, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1816, i32 3}
!174 = !{ptr @cx231xx_usb_probe._entry.71, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @cx231xx_usb_probe._entry_ptr.73, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.75, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1833, i32 4}
!178 = !{ptr @cx231xx_usb_probe._entry.74, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @cx231xx_usb_probe._entry_ptr.76, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.78, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1850, i32 3}
!182 = !{ptr @cx231xx_usb_probe._entry.77, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @cx231xx_usb_probe._entry_ptr.79, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1874, i32 4}
!186 = !{ptr @cx231xx_usb_probe.__UNIQUE_ID_ddebug340, !185, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!187 = !{ptr @cx231xx_init_dev.__key, !188, !"__key", i1 false, i1 false}
!188 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1406, i32 2}
!189 = !{ptr @.str.81, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @cx231xx_init_dev.__key.82, !191, !"__key", i1 false, i1 false}
!191 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1407, i32 2}
!192 = !{ptr @.str.83, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @cx231xx_init_dev.__key.84, !194, !"__key", i1 false, i1 false}
!194 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1408, i32 2}
!195 = !{ptr @.str.85, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @cx231xx_init_dev.__key.86, !197, !"__key", i1 false, i1 false}
!197 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1409, i32 2}
!198 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @cx231xx_init_dev.__key.88, !200, !"__key", i1 false, i1 false}
!200 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1411, i32 2}
!201 = !{ptr @.str.89, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @cx231xx_init_dev.__key.90, !203, !"__key", i1 false, i1 false}
!203 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1412, i32 2}
!204 = !{ptr @.str.91, !203, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @cx231xx_init_dev.__key.92, !206, !"__key", i1 false, i1 false}
!206 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1413, i32 2}
!207 = !{ptr @.str.93, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @cx231xx_init_dev.__key.94, !209, !"__key", i1 false, i1 false}
!209 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1415, i32 2}
!210 = !{ptr @.str.95, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @cx231xx_init_dev.__key.96, !212, !"__key", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1416, i32 2}
!213 = !{ptr @.str.97, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @cx231xx_init_dev.__key.98, !215, !"__key", i1 false, i1 false}
!215 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1417, i32 2}
!216 = !{ptr @.str.99, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.100, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1428, i32 3}
!219 = !{ptr @.str.101, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @cx231xx_init_dev._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @cx231xx_init_dev._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.103, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1444, i32 3}
!224 = !{ptr @cx231xx_init_dev._entry.102, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @cx231xx_init_dev._entry_ptr.104, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.106, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1454, i32 3}
!228 = !{ptr @cx231xx_init_dev._entry.105, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @cx231xx_init_dev._entry_ptr.107, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.109, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1477, i32 3}
!232 = !{ptr @cx231xx_init_dev._entry.108, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @cx231xx_init_dev._entry_ptr.110, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.112, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1492, i32 3}
!236 = !{ptr @cx231xx_init_dev._entry.111, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @cx231xx_init_dev._entry_ptr.113, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.115, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1494, i32 4}
!240 = !{ptr @cx231xx_init_dev._entry.114, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @cx231xx_init_dev._entry_ptr.116, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.117, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1560, i32 3}
!244 = !{ptr @.str.118, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @cx231xx_init_v4l2._entry, !243, !"_entry", i1 false, i1 false}
!246 = !{ptr @cx231xx_init_v4l2._entry_ptr, !243, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.120, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1573, i32 2}
!249 = !{ptr @cx231xx_init_v4l2._entry.119, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @cx231xx_init_v4l2._entry_ptr.121, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @cx231xx_init_v4l2.__UNIQUE_ID_ddebug336, !252, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!252 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1590, i32 3}
!253 = !{ptr @.str.123, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1599, i32 3}
!255 = !{ptr @cx231xx_init_v4l2._entry.122, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @cx231xx_init_v4l2._entry_ptr.124, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.126, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1613, i32 2}
!259 = !{ptr @cx231xx_init_v4l2._entry.125, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @cx231xx_init_v4l2._entry_ptr.127, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @cx231xx_init_v4l2.__UNIQUE_ID_ddebug337, !262, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!262 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1633, i32 3}
!263 = !{ptr @.str.129, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1643, i32 3}
!265 = !{ptr @cx231xx_init_v4l2._entry.128, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @cx231xx_init_v4l2._entry_ptr.130, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.132, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1657, i32 2}
!269 = !{ptr @cx231xx_init_v4l2._entry.131, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @cx231xx_init_v4l2._entry_ptr.133, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @cx231xx_init_v4l2.__UNIQUE_ID_ddebug338, !272, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!272 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1675, i32 3}
!273 = !{ptr @.str.134, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/usb/cx231xx/cx231xx-cards.c", i32 1952, i32 3}
!275 = !{ptr @.str.135, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @.str.136, !274, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @cx231xx_usb_disconnect._entry, !274, !"_entry", i1 false, i1 false}
!278 = !{ptr @cx231xx_usb_disconnect._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!279 = !{i32 1, !"wchar_size", i32 2}
!280 = !{i32 1, !"min_enum_size", i32 4}
!281 = !{i32 8, !"branch-target-enforcement", i32 0}
!282 = !{i32 8, !"sign-return-address", i32 0}
!283 = !{i32 8, !"sign-return-address-all", i32 0}
!284 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!285 = !{i32 7, !"uwtable", i32 1}
!286 = !{i32 7, !"frame-pointer", i32 2}
!287 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!288 = !{i64 2148836696, i64 2148836701, i64 2148836714, i64 2148836758, i64 2148836792, i64 2148836813}
!289 = !{!"branch_weights", i32 1, i32 2000}
