; ModuleID = '/llk/IR_all_yes/drivers/media/usb/em28xx/em28xx-cards.c_pt.bc'
source_filename = "../drivers/media/usb/em28xx/em28xx-cards.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+em28xx_boards\22, \22a\22\09"
module asm "\09.weak\09__crc_em28xx_boards\09\09\09\09"
module asm "\09.long\09__crc_em28xx_boards\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_em28xx_boards:\09\09\09\09\09"
module asm "\09.asciz \09\22em28xx_boards\22\09\09\09\09\09"
module asm "__kstrtabns_em28xx_boards:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+em28xx_tuner_callback\22, \22a\22\09"
module asm "\09.weak\09__crc_em28xx_tuner_callback\09\09\09\09"
module asm "\09.long\09__crc_em28xx_tuner_callback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_em28xx_tuner_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22em28xx_tuner_callback\22\09\09\09\09\09"
module asm "__kstrtabns_em28xx_tuner_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+em28xx_setup_xc3028\22, \22a\22\09"
module asm "\09.weak\09__crc_em28xx_setup_xc3028\09\09\09\09"
module asm "\09.long\09__crc_em28xx_setup_xc3028\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_em28xx_setup_xc3028:\09\09\09\09\09"
module asm "\09.asciz \09\22em28xx_setup_xc3028\22\09\09\09\09\09"
module asm "__kstrtabns_em28xx_setup_xc3028:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+em28xx_free_device\22, \22a\22\09"
module asm "\09.weak\09__crc_em28xx_free_device\09\09\09\09"
module asm "\09.long\09__crc_em28xx_free_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_em28xx_free_device:\09\09\09\09\09"
module asm "\09.asciz \09\22em28xx_free_device\22\09\09\09\09\09"
module asm "__kstrtabns_em28xx_free_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.em28xx_reg_seq = type { i32, i8, i8, i32 }
%struct.em28xx_button = type { i32, i8, i8, i8, i8 }
%struct.em28xx_led = type { i32, i8, i8, i8 }
%struct.em28xx_input = type { i32, i32, i32, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.em28xx_hash_table = type { i32, i32, i32 }
%struct.em28xx = type { %struct.kref, ptr, ptr, %struct.em28xx_audio, ptr, i32, i32, i32, i8, i32, i32, [32 x i8], %struct.em28xx_board, i32, i32, %struct.list_head, i32, %struct.em28xx_audio_mode, i32, [2 x %struct.i2c_adapter], [2 x %struct.i2c_client], [2 x %struct.em28xx_i2c_bus], i8, i32, i32, %struct.rt_mutex, i32, i32, i32, [4 x i32], i32, i32, i32, i32, %struct.work_struct, %struct.mutex, %struct.mutex, i32, ptr, i16, %struct.em28xx_dmaqueue, %struct.em28xx_dmaqueue, %struct.em28xx_usb_ctl, %struct.spinlock, ptr, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, ptr, i8, i32, i32, i32, i8, [80 x i8], ptr, ptr, ptr, ptr, ptr, i32, %struct.delayed_work, [5 x i8], [5 x i8], i8, i16, [30 x i8], ptr, ptr, [4 x %struct.media_entity], [4 x %struct.media_pad], ptr, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.em28xx_audio = type { [50 x i8], i32, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, %struct.spinlock, %struct.work_struct, %struct.atomic_t }
%struct.em28xx_board = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i16, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr }
%struct.em28xx_audio_mode = type { i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.em28xx_i2c_bus = type { ptr, i32, i32 }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.em28xx_dmaqueue = type { %struct.list_head, %struct.wait_queue_head }
%struct.em28xx_usb_ctl = type { %struct.em28xx_usb_bufs, %struct.em28xx_usb_bufs, ptr, ptr, ptr }
%struct.em28xx_usb_bufs = type { i32, i32, i32, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.xc2028_ctrl = type { ptr, i32, i32, i32, i8, i32, i8 }
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
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_config_descriptor = type <{ i8, i8, i16, i8, i8, i8, i8, i8 }>
%struct.usb_host_config = type { %struct.usb_config_descriptor, ptr, [16 x ptr], [32 x ptr], [32 x ptr], ptr, i32 }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [6 x i8] }

@__param_str_tuner = internal constant [13 x i8] c"em28xx.tuner\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@tuner = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_tuner = internal constant %struct.kernel_param { ptr @__param_str_tuner, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @tuner } }, section "__param", align 4
@__UNIQUE_ID_tunertype334 = internal constant [26 x i8] c"em28xx.parmtype=tuner:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tuner335 = internal constant [29 x i8] c"em28xx.parm=tuner:tuner type\00", section ".modinfo", align 1
@__param_str_disable_ir = internal constant [18 x i8] c"em28xx.disable_ir\00", align 1
@disable_ir = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_ir = internal constant %struct.kernel_param { ptr @__param_str_disable_ir, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @disable_ir } }, section "__param", align 4
@__UNIQUE_ID_disable_irtype336 = internal constant [31 x i8] c"em28xx.parmtype=disable_ir:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_ir337 = internal constant [55 x i8] c"em28xx.parm=disable_ir:disable infrared remote support\00", section ".modinfo", align 1
@__param_str_disable_usb_speed_check = internal constant [31 x i8] c"em28xx.disable_usb_speed_check\00", align 1
@disable_usb_speed_check = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_usb_speed_check = internal constant %struct.kernel_param { ptr @__param_str_disable_usb_speed_check, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @disable_usb_speed_check } }, section "__param", align 4
@__UNIQUE_ID_disable_usb_speed_checktype338 = internal constant [44 x i8] c"em28xx.parmtype=disable_usb_speed_check:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_usb_speed_check339 = internal constant [83 x i8] c"em28xx.parm=disable_usb_speed_check:override min bandwidth requirement of 480M bps\00", section ".modinfo", align 1
@__param_str_card = internal constant [12 x i8] c"em28xx.card\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_card = internal constant %struct.kparam_array { i32 16, i32 4, ptr null, ptr @param_ops_int, ptr @card }, align 4
@__param_card = internal constant %struct.kernel_param { ptr @__param_str_card, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_card } }, section "__param", align 4
@__UNIQUE_ID_cardtype340 = internal constant [34 x i8] c"em28xx.parmtype=card:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_card341 = internal constant [27 x i8] c"em28xx.parm=card:card type\00", section ".modinfo", align 1
@__param_str_usb_xfer_mode = internal constant [21 x i8] c"em28xx.usb_xfer_mode\00", align 1
@usb_xfer_mode = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_usb_xfer_mode = internal constant %struct.kernel_param { ptr @__param_str_usb_xfer_mode, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @usb_xfer_mode } }, section "__param", align 4
@__UNIQUE_ID_usb_xfer_modetype342 = internal constant [34 x i8] c"em28xx.parmtype=usb_xfer_mode:int\00", section ".modinfo", align 1
@__UNIQUE_ID_usb_xfer_mode343 = internal constant [105 x i8] c"em28xx.parm=usb_xfer_mode:USB transfer mode for frame data (-1 = auto, 0 = prefer isoc, 1 = prefer bulk)\00", section ".modinfo", align 1
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unknown EM2800 video grabber\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unknown EM2750/28xx video grabber\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Terratec Cinergy 250 USB\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Pinnacle PCTV USB 2\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Hauppauge WinTV USB 2\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MSI VOX USB 2.0\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Terratec Cinergy 200 USB\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Leadtek Winfast USB II\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Kworld USB2800\00", [17 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [118 x i8], [42 x i8] } { [118 x i8] c"Pinnacle Dazzle DVC 90/100/101/107 / Kaiser Baas Video to DVD maker / Kworld DVD Maker 2 / Plextor ConvertX PX-AV100U\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV HVR 900\00", [40 x i8] zeroinitializer }, align 32
@hauppauge_wintv_hvr_900_digital = internal constant { [4 x %struct.em28xx_reg_seq], [48 x i8] } { [4 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 46, i8 -17, i32 10 }, %struct.em28xx_reg_seq { i32 4, i8 4, i8 15, i32 10 }, %struct.em28xx_reg_seq { i32 4, i8 12, i8 15, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [48 x i8] zeroinitializer }, align 32
@default_tuner_gpio = internal constant { [4 x %struct.em28xx_reg_seq], [48 x i8] } { [4 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 16, i8 16, i32 10 }, %struct.em28xx_reg_seq { i32 8, i8 0, i8 16, i32 10 }, %struct.em28xx_reg_seq { i32 8, i8 16, i8 16, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [48 x i8] zeroinitializer }, align 32
@hauppauge_wintv_hvr_900_analog = internal constant { [3 x %struct.em28xx_reg_seq], [60 x i8] } { [3 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 45, i8 -17, i32 10 }, %struct.em28xx_reg_seq { i32 5, i8 -1, i8 16, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Terratec Hybrid XS\00", [45 x i8] zeroinitializer }, align 32
@default_digital = internal constant { [2 x %struct.em28xx_reg_seq], [40 x i8] } { [2 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 110, i8 -17, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [40 x i8] zeroinitializer }, align 32
@default_analog = internal constant { [2 x %struct.em28xx_reg_seq], [40 x i8] } { [2 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 109, i8 -17, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rc-terratec-cinergy-xs\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Kworld PVR TV 2800 RF\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Terratec Prodigy XS\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"SIIG AVTuner-PVR / Pixelview Prolink PlayTV USB 2.0\00", [44 x i8] zeroinitializer }, align 32
@std_snapshot_button = internal constant { [2 x %struct.em28xx_button], [16 x i8] } { [2 x %struct.em28xx_button] [%struct.em28xx_button { i32 0, i8 12, i8 12, i8 32, i8 0 }, %struct.em28xx_button { i32 -1, i8 0, i8 0, i8 0, i8 0 }], [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"V-Gear PocketTV\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV HVR 950\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Pinnacle PCTV HD Pro Stick\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rc-pinnacle-pctv-hd\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Hauppauge WinTV HVR 900 (R2)\00", [35 x i8] zeroinitializer }, align 32
@hauppauge_wintv_hvr_900R2_digital = internal constant { [3 x %struct.em28xx_reg_seq], [60 x i8] } { [3 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 46, i8 -17, i32 10 }, %struct.em28xx_reg_seq { i32 4, i8 12, i8 15, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"EM2860/SAA711X Reference Design\00", [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"AMD ATI TV Wonder HD 600\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rc-ati-tv-wonder-hd-600\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"eMPIA Technology, Inc. GrabBeeX+ Video Encoder\00", [49 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"EM2710/EM2750/EM2751 webcam grabber\00", [60 x i8] zeroinitializer }, align 32
@silvercrest_reg_seq = internal constant { [3 x %struct.em28xx_reg_seq], [60 x i8] } { [3 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 -1, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 8, i8 1, i8 -9, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Huaqi DLCW-130\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"D-Link DUB-T210 TV Tuner\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Gadmei UTV310\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Hercules Smart TV USB 2.0\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Pinnacle PCTV USB 2 (Philips FM1216ME)\00", [57 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Leadtek Winfast USB II Deluxe\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"EM2860/TVP5150 Reference Design\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Videology 20K14XUSB USB2.0\00", [37 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Usbgear VD204v9\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Supercomp USB 2.0 TV\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Elgato Video Capture\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Terratec Cinergy A Hybrid XS\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Typhoon DVD Maker\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"NetGMBH Cam\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Gadmei UTV330\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Yakumo MovieMixer\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"KWorld PVRTV 300U\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Plextor ConvertX PX-TV100U\00", [37 x i8] zeroinitializer }, align 32
@pinnacle_hybrid_pro_analog = internal constant { [2 x %struct.em28xx_reg_seq], [40 x i8] } { [2 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 -3, i8 -17, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Kworld 350 U DVB-T\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Kworld 355 U DVB-T\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Terratec Cinergy T XS\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Terratec Cinergy T XS (MT2060)\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Pinnacle PCTV DVB-T\00", [44 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Compro, VideoMate U3\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"KWorld DVB-T 305U\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"KWorld DVB-T 310U\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MSI DigiVox A/D\00", [16 x i8] zeroinitializer }, align 32
@em2880_msi_digivox_ad_analog = internal constant { [2 x %struct.em28xx_reg_seq], [40 x i8] } { [2 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 105, i8 -17, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MSI DigiVox A/D II\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Terratec Hybrid XS Secam\00", [39 x i8] zeroinitializer }, align 32
@terratec_cinergy_USB_XS_FR_digital = internal constant { [3 x %struct.em28xx_reg_seq], [60 x i8] } { [3 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 110, i8 -17, i32 10 }, %struct.em28xx_reg_seq { i32 4, i8 8, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@terratec_cinergy_USB_XS_FR_analog = internal constant { [3 x %struct.em28xx_reg_seq], [60 x i8] } { [3 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 109, i8 -17, i32 10 }, %struct.em28xx_reg_seq { i32 4, i8 0, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DNT DA2 Hybrid\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Pinnacle Hybrid Pro\00", [44 x i8] zeroinitializer }, align 32
@pinnacle_hybrid_pro_digital = internal constant { [4 x %struct.em28xx_reg_seq], [48 x i8] } { [4 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 110, i8 -17, i32 10 }, %struct.em28xx_reg_seq { i32 4, i8 4, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 4, i8 12, i8 -1, i32 1 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [48 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Kworld VS-DVB-T 323UR\00", [42 x i8] zeroinitializer }, align 32
@kworld_330u_digital = internal constant { [3 x %struct.em28xx_reg_seq], [60 x i8] } { [3 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 110, i8 -17, i32 10 }, %struct.em28xx_reg_seq { i32 4, i8 8, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rc-kworld-315u\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Terratec Cinergy Hybrid T USB XS (em2882)\00", [54 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Pinnacle Hybrid Pro (330e)\00", [37 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Kworld PlusTV HD Hybrid 330\00", [36 x i8] zeroinitializer }, align 32
@kworld_330u_analog = internal constant { [3 x %struct.em28xx_reg_seq], [60 x i8] } { [3 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 109, i8 -17, i32 10 }, %struct.em28xx_reg_seq { i32 4, i8 0, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Compro VideoMate ForYou/Stereo\00", [33 x i8] zeroinitializer }, align 32
@compro_mute_gpio = internal constant { [2 x %struct.em28xx_reg_seq], [40 x i8] } { [2 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 6, i8 7, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [40 x i8] zeroinitializer }, align 32
@compro_unmute_tv_gpio = internal constant { [2 x %struct.em28xx_reg_seq], [40 x i8] } { [2 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 5, i8 7, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [40 x i8] zeroinitializer }, align 32
@compro_unmute_svid_gpio = internal constant { [2 x %struct.em28xx_reg_seq], [40 x i8] } { [2 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 4, i8 7, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Pinnacle PCTV HD Mini\00", [42 x i8] zeroinitializer }, align 32
@em2874_pctv_80e_digital = internal constant { [4 x %struct.em28xx_reg_seq], [48 x i8] } { [4 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 6, i8 69, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 128, i8 0, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 64, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [48 x i8] zeroinitializer }, align 32
@pctv_80e_leds = internal global { [2 x %struct.em28xx_led], [16 x i8] } { [2 x %struct.em28xx_led] [%struct.em28xx_led { i32 1, i8 -128, i8 -128, i8 0 }, %struct.em28xx_led { i32 -1, i8 0, i8 0, i8 0 }], [16 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Hauppauge WinTV HVR 850\00", [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Pixelview PlayTV Box 4 USB 2.0\00", [33 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Gadmei TVR200\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Kaiomy TVnPC U2\00", [16 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rc-kaiomy\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Easy Cap Capture DC-60\00", [41 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IO-DATA GV-MVP/SZ\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Empire dual TV\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Terratec Grabby\00", [16 x i8] zeroinitializer }, align 32
@terratec_grabby_leds = internal global { [2 x %struct.em28xx_led], [16 x i8] } { [2 x %struct.em28xx_led] [%struct.em28xx_led { i32 0, i8 8, i8 8, i8 1 }, %struct.em28xx_led { i32 -1, i8 0, i8 0, i8 0 }], [16 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Terratec AV350\00", [17 x i8] zeroinitializer }, align 32
@terratec_av350_mute_gpio = internal constant { [2 x %struct.em28xx_reg_seq], [40 x i8] } { [2 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 -1, i8 127, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [40 x i8] zeroinitializer }, align 32
@terratec_av350_unmute_gpio = internal constant { [2 x %struct.em28xx_reg_seq], [40 x i8] } { [2 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 -1, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"KWorld ATSC 315U HDTV TV Box\00", [35 x i8] zeroinitializer }, align 32
@em2882_kworld_315u_digital = internal constant { [6 x %struct.em28xx_reg_seq], [56 x i8] } { [6 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 -1, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 8, i8 -2, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 4, i8 4, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 4, i8 12, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 8, i8 126, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [56 x i8] zeroinitializer }, align 32
@em2882_kworld_315u_tuner_gpio = internal constant { [5 x %struct.em28xx_reg_seq], [36 x i8] } { [5 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 4, i8 8, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 4, i8 12, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 4, i8 8, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 4, i8 12, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Evga inDtube\00", [19 x i8] zeroinitializer }, align 32
@evga_indtube_digital = internal constant { [4 x %struct.em28xx_reg_seq], [48 x i8] } { [4 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 122, i8 -1, i32 1 }, %struct.em28xx_reg_seq { i32 4, i8 4, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 4, i8 12, i8 -1, i32 1 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [48 x i8] zeroinitializer }, align 32
@evga_indtube_analog = internal constant { [2 x %struct.em28xx_reg_seq], [40 x i8] } { [2 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 121, i8 -1, i32 60 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rc-evga-indtube\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Silvercrest Webcam 1.3mpix\00", [37 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Gadmei UTV330+\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rc-gadmei-rm008z\00", [47 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Reddo DVB-C USB TV Box\00", [41 x i8] zeroinitializer }, align 32
@reddo_dvb_c_usb_box = internal constant { [8 x %struct.em28xx_reg_seq], [32 x i8] } { [8 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 -2, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 8, i8 -34, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 8, i8 -2, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 8, i8 -1, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 8, i8 127, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 8, i8 111, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 8, i8 -1, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Actionmaster/LinXcel/Digitus VC211A\00", [60 x i8] zeroinitializer }, align 32
@vc211a_enable = internal constant { [4 x %struct.em28xx_reg_seq], [48 x i8] } { [4 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 -1, i8 7, i32 10 }, %struct.em28xx_reg_seq { i32 8, i8 -1, i8 15, i32 10 }, %struct.em28xx_reg_seq { i32 8, i8 -1, i8 11, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [48 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Dikom DK300\00", [20 x i8] zeroinitializer }, align 32
@dikom_dk300_digital = internal constant { [3 x %struct.em28xx_reg_seq], [60 x i8] } { [3 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 110, i8 -17, i32 10 }, %struct.em28xx_reg_seq { i32 4, i8 8, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"KWorld PlusTV 340U or UB435-Q (ATSC)\00", [59 x i8] zeroinitializer }, align 32
@kworld_a340_digital = internal constant { [2 x %struct.em28xx_reg_seq], [40 x i8] } { [2 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 109, i8 -17, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"EM2874 Leadership ISDBT\00", [40 x i8] zeroinitializer }, align 32
@leadership_digital = internal constant { [2 x %struct.em28xx_reg_seq], [40 x i8] } { [2 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 112, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [40 x i8] zeroinitializer }, align 32
@leadership_reset = internal constant { [4 x %struct.em28xx_reg_seq], [48 x i8] } { [4 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 -16, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 128, i8 -80, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 128, i8 -16, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [48 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"PCTV nanoStick T2 290e\00", [41 x i8] zeroinitializer }, align 32
@pctv_290e = internal constant { [4 x %struct.em28xx_reg_seq], [48 x i8] } { [4 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 0, i8 -1, i32 80 }, %struct.em28xx_reg_seq { i32 128, i8 64, i8 -1, i32 80 }, %struct.em28xx_reg_seq { i32 128, i8 -64, i8 -1, i32 80 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [48 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Terratec Cinergy H5\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCTV DVB-S2 Stick (460e)\00", [39 x i8] zeroinitializer }, align 32
@pctv_460e = internal constant { [6 x %struct.em28xx_reg_seq], [56 x i8] } { [6 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 1, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 13, i8 -1, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 128, i8 65, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 13, i8 66, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 128, i8 97, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Hauppauge WinTV HVR 930C\00", [39 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Terratec Cinergy HTC Stick\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rc-nec-terratec-cinergy-xs\00", [37 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Honestech Vidbox NW03\00", [42 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MaxMedia UB425-TC\00", [46 x i8] zeroinitializer }, align 32
@maxmedia_ub425_tc = internal constant { [4 x %struct.em28xx_reg_seq], [48 x i8] } { [4 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 -125, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -61, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 67, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [48 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-reddo\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCTV QuatroStick (510e)\00", [40 x i8] zeroinitializer }, align 32
@pctv_510e = internal constant { [4 x %struct.em28xx_reg_seq], [48 x i8] } { [4 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 16, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 20, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 84, i8 -1, i32 40 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [48 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PCTV QuatroStick nano (520e)\00", [35 x i8] zeroinitializer }, align 32
@pctv_520e = internal constant { [5 x %struct.em28xx_reg_seq], [36 x i8] } { [5 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 16, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 20, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 84, i8 -1, i32 40 }, %struct.em28xx_reg_seq { i32 128, i8 -44, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [36 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Terratec Cinergy HTC USB XS\00", [36 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"C3 Tech Digital Duo HDTV/SDTV USB\00", [62 x i8] zeroinitializer }, align 32
@c3tech_digital_duo_digital = internal constant { [9 x %struct.em28xx_reg_seq], [52 x i8] } { [9 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 -1, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 128, i8 -3, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 128, i8 -7, i8 -1, i32 35 }, %struct.em28xx_reg_seq { i32 128, i8 -3, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 128, i8 -1, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 128, i8 -2, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 128, i8 -66, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 128, i8 -2, i8 -1, i32 20 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [52 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rc-empty\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Delock 61959\00", [19 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rc-delock-61959\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"KWorld USB ATSC TV Stick UB435-Q V2\00", [60 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"SpeedLink Vicious And Devine Laplace webcam\00", [52 x i8] zeroinitializer }, align 32
@speedlink_vad_laplace_reg_seq = internal constant { [3 x %struct.em28xx_reg_seq], [60 x i8] } { [3 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 -9, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 128, i8 -1, i8 -78, i32 10 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@speedlink_vad_laplace_leds = internal global { [3 x %struct.em28xx_led], [40 x i8] } { [3 x %struct.em28xx_led] [%struct.em28xx_led { i32 0, i8 -128, i8 1, i8 1 }, %struct.em28xx_led { i32 3, i8 -128, i8 64, i8 1 }, %struct.em28xx_led { i32 -1, i8 0, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@speedlink_vad_laplace_buttons = internal constant { [3 x %struct.em28xx_button], [40 x i8] } { [3 x %struct.em28xx_button] [%struct.em28xx_button { i32 0, i8 -123, i8 0, i8 -128, i8 1 }, %struct.em28xx_button { i32 1, i8 -124, i8 0, i8 8, i8 1 }, %struct.em28xx_button { i32 -1, i8 0, i8 0, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PCTV DVB-S2 Stick (461e)\00", [39 x i8] zeroinitializer }, align 32
@pctv_461e = internal constant { [8 x %struct.em28xx_reg_seq], [32 x i8] } { [8 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 127, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 13, i8 -1, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 128, i8 63, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 127, i8 -1, i32 200 }, %struct.em28xx_reg_seq { i32 13, i8 66, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 128, i8 -21, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 95, i8 -124, i8 -124, i32 0 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"KWorld USB ATSC TV Stick UB435-Q V3\00", [60 x i8] zeroinitializer }, align 32
@kworld_ub435q_v3_digital = internal constant { [5 x %struct.em28xx_reg_seq], [36 x i8] } { [5 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 -1, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -2, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -66, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -2, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [36 x i8] zeroinitializer }, align 32
@kworld_ub435q_v3_leds = internal global { [2 x %struct.em28xx_led], [16 x i8] } { [2 x %struct.em28xx_led] [%struct.em28xx_led { i32 1, i8 -128, i8 -128, i8 1 }, %struct.em28xx_led { i32 -1, i8 0, i8 0, i8 0 }], [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PCTV tripleStick (292e)\00", [40 x i8] zeroinitializer }, align 32
@pctv_292e = internal constant { [9 x %struct.em28xx_reg_seq], [52 x i8] } { [9 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 -1, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 13, i8 -1, i8 -1, i32 950 }, %struct.em28xx_reg_seq { i32 128, i8 -67, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -3, i8 -1, i32 410 }, %struct.em28xx_reg_seq { i32 128, i8 125, i8 -1, i32 300 }, %struct.em28xx_reg_seq { i32 128, i8 124, i8 -1, i32 60 }, %struct.em28xx_reg_seq { i32 13, i8 66, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 95, i8 -123, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [52 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Leadtek VC100\00", [18 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Terratec Cinergy T2 Stick HD\00", [35 x i8] zeroinitializer }, align 32
@terratec_t2_stick_hd = internal constant { [11 x %struct.em28xx_reg_seq], [60 x i8] } { [11 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 -1, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 13, i8 -1, i8 -1, i32 600 }, %struct.em28xx_reg_seq { i32 128, i8 -4, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 128, i8 -68, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -4, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 0, i8 -1, i32 300 }, %struct.em28xx_reg_seq { i32 128, i8 -8, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -4, i8 -1, i32 300 }, %struct.em28xx_reg_seq { i32 13, i8 66, i8 -1, i32 1000 }, %struct.em28xx_reg_seq { i32 95, i8 -123, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rc-terratec-slim-2\00", [45 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Elgato EyeTV Hybrid 2008 INT\00", [35 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PLEX PX-BCUD\00", [19 x i8] zeroinitializer }, align 32
@plex_px_bcud = internal constant { [11 x %struct.em28xx_reg_seq], [60 x i8] } { [11 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 -1, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 13, i8 -1, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 80, i8 1, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 6, i8 64, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 128, i8 -3, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 18, i8 32, i8 32, i32 0 }, %struct.em28xx_reg_seq { i32 13, i8 66, i8 -1, i32 1000 }, %struct.em28xx_reg_seq { i32 128, i8 -4, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 128, i8 -3, i8 -1, i32 10 }, %struct.em28xx_reg_seq { i32 115, i8 -3, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Hauppauge WinTV-dualHD DVB\00", [37 x i8] zeroinitializer }, align 32
@hauppauge_dualhd_dvb = internal constant { [11 x %struct.em28xx_reg_seq], [60 x i8] } { [11 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 -1, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 13, i8 -1, i8 -1, i32 200 }, %struct.em28xx_reg_seq { i32 80, i8 4, i8 -1, i32 300 }, %struct.em28xx_reg_seq { i32 128, i8 -65, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -1, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -33, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -1, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 95, i8 0, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 93, i8 5, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 94, i8 5, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@hauppauge_dualhd_leds = internal global { [3 x %struct.em28xx_led], [40 x i8] } { [3 x %struct.em28xx_led] [%struct.em28xx_led { i32 1, i8 -128, i8 2, i8 1 }, %struct.em28xx_led { i32 2, i8 -128, i8 8, i8 1 }, %struct.em28xx_led { i32 -1, i8 0, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Hauppauge WinTV-dualHD 01595 ATSC/QAM\00", [58 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Terratec Cinergy H6 rev. 2\00", [37 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c":ZOLID HYBRID TV STICK\00", [41 x i8] zeroinitializer }, align 32
@zolid_digital = internal global { [5 x %struct.em28xx_reg_seq], [36 x i8] } { [5 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 106, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 8, i8 122, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 4, i8 4, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 4, i8 12, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [36 x i8] zeroinitializer }, align 32
@zolid_tuner = internal global { [3 x %struct.em28xx_reg_seq], [60 x i8] } { [3 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 8, i8 -3, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 8, i8 -2, i8 -1, i32 100 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Magix USB Videowandler-2\00", [39 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PCTV DVB-S2 Stick (461e v2)\00", [36 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"MyGica iGrabber\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Hauppauge USB QuadHD ATSC\00", [38 x i8] zeroinitializer }, align 32
@hauppauge_usb_quadhd_atsc_reg_seq = internal global { [11 x %struct.em28xx_reg_seq], [60 x i8] } { [11 x %struct.em28xx_reg_seq] [%struct.em28xx_reg_seq { i32 128, i8 -1, i8 -1, i32 0 }, %struct.em28xx_reg_seq { i32 13, i8 -1, i8 -1, i32 200 }, %struct.em28xx_reg_seq { i32 80, i8 4, i8 -1, i32 300 }, %struct.em28xx_reg_seq { i32 128, i8 -80, i8 -16, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -16, i8 -16, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -48, i8 -16, i32 100 }, %struct.em28xx_reg_seq { i32 128, i8 -16, i8 -16, i32 100 }, %struct.em28xx_reg_seq { i32 95, i8 68, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 93, i8 5, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 94, i8 5, i8 -1, i32 50 }, %struct.em28xx_reg_seq { i32 -1, i8 -1, i8 -1, i32 -1 }], [60 x i8] zeroinitializer }, align 32
@hauppauge_usb_quadhd_leds = internal global { [3 x %struct.em28xx_led], [40 x i8] } { [3 x %struct.em28xx_led] [%struct.em28xx_led { i32 1, i8 -128, i8 4, i8 1 }, %struct.em28xx_led { i32 2, i8 -128, i8 1, i8 1 }, %struct.em28xx_led { i32 -1, i8 0, i8 0, i8 0 }], [40 x i8] zeroinitializer }, align 32
@em28xx_boards = dso_local constant { [107 x { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr }], [4488 x i8] } { [107 x { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr }] [{ ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str, i32 0, i32 4, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.1, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 2, i8 0, i8 0, i8 0, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.2, i32 0, i32 37, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -128, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 2, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.3, i32 0, i32 37, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 0, i8 -128, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 2, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.4, i32 0, i32 43, i32 0, i32 0, i32 97, ptr null, ptr null, ptr null, ptr null, i8 64, i8 -128, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 2, i32 2236960, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.5, i32 0, i32 37, i32 0, i32 0, i32 97, ptr null, ptr null, ptr null, ptr null, i8 16, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 4, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.6, i32 0, i32 66, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 -128, i8 -128, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 2, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.7, i32 0, i32 37, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 2, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.8, i32 0, i32 42, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 2, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.9, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.10, i32 0, i32 71, i32 0, i32 0, i32 1, ptr @hauppauge_wintv_hvr_900_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 40, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr @.str.11, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.12, i32 0, i32 71, i32 0, i32 0, i32 0, ptr @default_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 8, i8 0, i8 7, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @default_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @default_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @default_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr @.str.13, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.14, i32 0, i32 0, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.15, i32 0, i32 71, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @default_tuner_gpio, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.16, i32 0, i32 59, i32 96, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 2, i32 0, i32 5, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr @std_snapshot_button }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.17, i32 0, i32 37, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 2, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.18, i32 0, i32 71, i32 0, i32 0, i32 0, ptr @hauppauge_wintv_hvr_900_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 40, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr @.str.11, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.19, i32 0, i32 71, i32 0, i32 0, i32 0, ptr @hauppauge_wintv_hvr_900_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 40, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr @.str.20, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.21, i32 0, i32 71, i32 0, i32 0, i32 1, ptr @hauppauge_wintv_hvr_900R2_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 40, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr @.str.11, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.22, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 2, i32 9, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 0, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr @std_snapshot_button }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.23, i32 0, i32 71, i32 0, i32 0, i32 0, ptr @hauppauge_wintv_hvr_900_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 40, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr @.str.24, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.25, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.26, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 2, i8 0, i8 8, i8 0, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 0, i32 0, ptr @silvercrest_reg_seq }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.27, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 3, i8 0, i8 10, i8 0, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 0, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.28, i32 0, i32 37, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 2, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.29, i32 0, i32 69, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 1, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.30, i32 0, i32 37, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 2, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.31, i32 0, i32 38, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 2, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.32, i32 0, i32 38, i32 0, i32 0, i32 73, ptr null, ptr null, ptr null, ptr null, i8 1, i8 -128, i8 0, i8 0, i8 0, i16 88, i32 2, i32 1, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 4, i32 6, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 5, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input { i32 4, i32 0, i32 6, i32 0, ptr null }, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.33, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.34, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 3, i8 0, i8 0, i8 0, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 0, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.35, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.36, i32 0, i32 43, i32 0, i32 0, i32 97, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 2, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.37, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.38, i32 0, i32 71, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @default_tuner_gpio, ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.39, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.40, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 3, i8 0, i8 0, i8 0, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 0, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.41, i32 0, i32 69, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 2, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.42, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.43, i32 0, i32 71, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @default_tuner_gpio, ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.44, i32 0, i32 69, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 64, i8 0, i8 71, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 1, i32 0, ptr @pinnacle_hybrid_pro_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @pinnacle_hybrid_pro_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @pinnacle_hybrid_pro_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.45, i32 0, i32 71, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @default_tuner_gpio, ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.46, i32 0, i32 4, i32 0, i32 0, i32 0, ptr @default_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 9, i8 0, i8 0, i8 0, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.47, i32 0, i32 71, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @default_tuner_gpio, ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.48, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @default_tuner_gpio, ptr null, i8 8, i8 0, i8 39, i8 64, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.49, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 34, i8 0, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.50, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.51, i32 0, i32 71, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @default_tuner_gpio, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.52, i32 0, i32 71, i32 0, i32 0, i32 0, ptr @default_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 40, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @default_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @default_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @default_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.53, i32 0, i32 71, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @default_tuner_gpio, ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @em2880_msi_digivox_ad_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @em2880_msi_digivox_ad_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @em2880_msi_digivox_ad_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.54, i32 0, i32 71, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @default_tuner_gpio, ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @em2880_msi_digivox_ad_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @em2880_msi_digivox_ad_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @em2880_msi_digivox_ad_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.55, i32 0, i32 71, i32 0, i32 0, i32 0, ptr @terratec_cinergy_USB_XS_FR_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 72, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @terratec_cinergy_USB_XS_FR_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @terratec_cinergy_USB_XS_FR_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @terratec_cinergy_USB_XS_FR_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.56, i32 0, i32 71, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @default_tuner_gpio, ptr null, i8 1, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @default_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @default_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @default_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.57, i32 0, i32 71, i32 0, i32 0, i32 0, ptr @pinnacle_hybrid_pro_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 8, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @pinnacle_hybrid_pro_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @pinnacle_hybrid_pro_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @pinnacle_hybrid_pro_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.58, i32 0, i32 71, i32 0, i32 0, i32 0, ptr @kworld_330u_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 40, i8 0, i8 7, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr @.str.59, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.60, i32 0, i32 71, i32 0, i32 0, i32 0, ptr @hauppauge_wintv_hvr_900_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 40, i8 0, i8 7, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr @.str.13, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.61, i32 0, i32 71, i32 0, i32 0, i32 0, ptr @hauppauge_wintv_hvr_900R2_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 40, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr @.str.20, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.62, i32 0, i32 71, i32 0, i32 0, i32 0, ptr @kworld_330u_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 40, i8 0, i8 7, i8 76, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 1408, ptr @kworld_330u_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 1408, ptr @kworld_330u_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @kworld_330u_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.63, i32 0, i32 37, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr @compro_mute_gpio, i8 0, i8 0, i8 0, i8 0, i8 0, i16 176, i32 1, i32 1, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @compro_unmute_tv_gpio }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @compro_unmute_svid_gpio }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.64, i32 0, i32 4, i32 0, i32 0, i32 0, ptr @em2874_pctv_80e_digital, ptr null, ptr null, ptr null, i8 8, i8 0, i8 0, i8 0, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.20, ptr @pctv_80e_leds, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.65, i32 0, i32 71, i32 0, i32 0, i32 0, ptr @hauppauge_wintv_hvr_900_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 40, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @hauppauge_wintv_hvr_900_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr @.str.11, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.66, i32 0, i32 59, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 2, i32 0, i32 5, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.67, i32 0, i32 37, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 2, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.68, i32 3, i32 71, i32 97, i32 0, i32 0, ptr null, ptr null, ptr @default_tuner_gpio, ptr null, i8 32, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input { i32 4, i32 0, i32 1, i32 0, ptr null }, ptr @.str.69, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.70, i32 2, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.71, i32 0, i32 43, i32 0, i32 0, i32 1, ptr null, ptr null, ptr @default_tuner_gpio, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 1, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 2, i32 0, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.72, i32 0, i32 71, i32 0, i32 0, i32 0, ptr @default_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 40, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @default_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @default_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @default_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.73, i32 2, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 7, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr @terratec_grabby_leds, ptr @std_snapshot_button }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.74, i32 2, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr @terratec_av350_mute_gpio, i8 0, i8 0, i8 7, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @terratec_av350_unmute_gpio }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @terratec_av350_unmute_gpio }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.75, i32 0, i32 60, i32 0, i32 0, i32 1, ptr @em2882_kworld_315u_digital, ptr null, ptr @em2882_kworld_315u_tuner_gpio, ptr null, i8 9, i8 0, i8 7, i8 64, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.59, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.76, i32 0, i32 71, i32 0, i32 0, i32 0, ptr @evga_indtube_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 40, i8 0, i8 7, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @evga_indtube_analog }, %struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr @evga_indtube_analog }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr @evga_indtube_analog }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr @.str.77, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.78, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 2, i8 0, i8 0, i8 0, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 0, i32 0, ptr @silvercrest_reg_seq }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.79, i32 0, i32 69, i32 0, i32 0, i32 1, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 7, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 2, i32 0, i32 0, ptr null }, %struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr @.str.80, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.81, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr @reddo_dvb_c_usb_box, ptr null, i8 8, i8 0, i8 0, i8 0, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.82, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 -128, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr @vc211a_enable }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr @vc211a_enable }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.83, i32 0, i32 71, i32 0, i32 0, i32 0, ptr @dikom_dk300_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 40, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 3, i32 0, i32 0, i32 0, ptr @default_analog }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.84, i32 0, i32 4, i32 0, i32 0, i32 0, ptr @kworld_a340_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 8, i8 0, i8 0, i8 0, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.85, i32 0, i32 4, i32 0, i32 1, i32 0, ptr @leadership_digital, ptr null, ptr @leadership_reset, ptr null, i8 8, i8 0, i8 2, i8 64, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.86, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr @pctv_290e, ptr null, i8 8, i8 0, i8 0, i8 64, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.20, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.87, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, i8 8, i8 0, i8 0, i8 65, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.88, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr @pctv_460e, ptr null, i8 8, i8 0, i8 0, i8 65, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.20, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.89, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, i8 8, i8 0, i8 0, i8 65, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.11, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.90, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, i8 8, i8 0, i8 0, i8 65, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.91, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.92, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.93, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr @maxmedia_ub425_tc, ptr null, i8 8, i8 0, i8 0, i8 65, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.94, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.95, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr @pctv_510e, ptr null, i8 8, i8 0, i8 0, i8 65, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.20, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.96, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr @pctv_520e, ptr null, i8 8, i8 0, i8 0, i8 65, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.20, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.97, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, i8 8, i8 0, i8 0, i8 65, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.91, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.98, i32 0, i32 4, i32 0, i32 1, i32 0, ptr @c3tech_digital_duo_digital, ptr null, ptr null, ptr null, i8 8, i8 0, i8 0, i8 64, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.99, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.100, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr @maxmedia_ub425_tc, ptr null, i8 8, i8 0, i8 0, i8 65, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.101, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.102, i32 0, i32 4, i32 0, i32 1, i32 0, ptr @kworld_a340_digital, ptr null, ptr @default_tuner_gpio, ptr null, i8 8, i8 0, i8 0, i8 0, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.103, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, i8 2, i8 0, i8 11, i8 64, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 0, i32 0, ptr @speedlink_vad_laplace_reg_seq }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr @speedlink_vad_laplace_leds, ptr @speedlink_vad_laplace_buttons }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.104, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr @pctv_461e, ptr null, i8 8, i8 0, i8 0, i8 65, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.20, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.105, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr @kworld_ub435q_v3_digital, ptr null, i8 8, i8 0, i8 0, i8 64, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr null, ptr @kworld_ub435q_v3_leds, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.106, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr @pctv_292e, ptr null, i8 8, i8 0, i8 0, i8 65, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.20, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.107, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 2, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.108, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr @terratec_t2_stick_hd, ptr null, i8 8, i8 0, i8 0, i8 65, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.109, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.110, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, i8 8, i8 0, i8 0, i8 65, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.91, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.111, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr @plex_px_bcud, ptr null, i8 8, i8 0, i8 6, i8 64, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.112, i32 0, i32 92, i32 0, i32 1, i32 0, ptr null, ptr null, ptr @hauppauge_dualhd_dvb, ptr null, i8 12, i8 0, i8 0, i8 65, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 1, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr @.str.11, ptr @hauppauge_dualhd_leds, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.113, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr @hauppauge_dualhd_dvb, ptr null, i8 12, i8 0, i8 0, i8 65, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.11, ptr @hauppauge_dualhd_leds, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.114, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr null, ptr null, i8 8, i8 0, i8 0, i8 65, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.91, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.115, i32 0, i32 71, i32 0, i32 0, i32 0, ptr @zolid_digital, ptr null, ptr @zolid_tuner, ptr null, i8 40, i8 0, i8 7, i8 0, i8 0, i16 0, i32 1, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.116, i32 0, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.117, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr @pctv_461e, ptr null, i8 8, i8 0, i8 0, i8 65, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr @.str.20, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.118, i32 2, i32 4, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, i8 0, i8 0, i16 0, i32 2, i32 0, [4 x %struct.em28xx_input] [%struct.em28xx_input { i32 1, i32 0, i32 1, i32 0, ptr null }, %struct.em28xx_input { i32 2, i32 9, i32 1, i32 0, ptr null }, %struct.em28xx_input zeroinitializer, %struct.em28xx_input zeroinitializer], %struct.em28xx_input zeroinitializer, ptr null, ptr null, ptr null }, { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i16, i32, i32, [4 x %struct.em28xx_input], %struct.em28xx_input, ptr, ptr, ptr } { ptr @.str.119, i32 0, i32 4, i32 0, i32 1, i32 0, ptr null, ptr null, ptr @hauppauge_usb_quadhd_atsc_reg_seq, ptr null, i8 12, i8 0, i8 0, i8 64, i8 0, i16 0, i32 0, i32 0, [4 x %struct.em28xx_input] zeroinitializer, %struct.em28xx_input zeroinitializer, ptr null, ptr @hauppauge_usb_quadhd_leds, ptr null }], [4488 x i8] zeroinitializer }, align 32
@__kstrtab_em28xx_boards = external dso_local constant [0 x i8], align 1
@__kstrtabns_em28xx_boards = external dso_local constant [0 x i8], align 1
@__ksymtab_em28xx_boards = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @em28xx_boards to i32), ptr @__kstrtab_em28xx_boards, ptr @__kstrtabns_em28xx_boards }, section "___ksymtab_gpl+em28xx_boards", align 4
@em28xx_id_table = dso_local global { [109 x %struct.usb_device_id], [648 x i8] } { [109 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 -5350, i16 10064, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 22 }, %struct.usb_device_id { i16 3, i16 -5350, i16 10065, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 22 }, %struct.usb_device_id { i16 3, i16 -5350, i16 10240, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 -5350, i16 10000, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 -5350, i16 10272, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 -5350, i16 10273, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 -5350, i16 10336, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 -5350, i16 10337, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 -5350, i16 10338, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 -5350, i16 10339, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 -5350, i16 10352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 -5350, i16 10369, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 -5350, i16 10371, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 -5350, i16 10344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 -5350, i16 10357, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 -5350, i16 10373, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 79 }, %struct.usb_device_id { i16 3, i16 -5350, i16 -7424, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 39 }, %struct.usb_device_id { i16 3, i16 -5350, i16 -7421, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 63 }, %struct.usb_device_id { i16 3, i16 -5350, i16 -7419, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 47 }, %struct.usb_device_id { i16 3, i16 -5350, i16 -7408, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 49 }, %struct.usb_device_id { i16 3, i16 -5350, i16 -23789, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 69 }, %struct.usb_device_id { i16 3, i16 -5350, i16 -23786, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 57 }, %struct.usb_device_id { i16 3, i16 -5350, i16 -7392, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 50 }, %struct.usb_device_id { i16 3, i16 -5350, i16 -7389, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 54 }, %struct.usb_device_id { i16 3, i16 -5350, i16 -7344, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 41 }, %struct.usb_device_id { i16 3, i16 -5350, i16 -7339, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 42 }, %struct.usb_device_id { i16 3, i16 -5350, i16 10241, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 21 }, %struct.usb_device_id { i16 3, i16 -5350, i16 -7337, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 42 }, %struct.usb_device_id { i16 3, i16 -5350, i16 -7335, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 42 }, %struct.usb_device_id { i16 3, i16 7040, i16 -7422, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 7040, i16 -7420, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 3277, i16 54, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 2 }, %struct.usb_device_id { i16 3, i16 3277, i16 76, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 51 }, %struct.usb_device_id { i16 3, i16 3277, i16 79, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 34 }, %struct.usb_device_id { i16 3, i16 3277, i16 94, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 55 }, %struct.usb_device_id { i16 3, i16 3277, i16 66, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 55 }, %struct.usb_device_id { i16 3, i16 3277, i16 67, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 44 }, %struct.usb_device_id { i16 3, i16 3277, i16 142, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 87 }, %struct.usb_device_id { i16 3, i16 3277, i16 172, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 87 }, %struct.usb_device_id { i16 3, i16 3277, i16 4258, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 79 }, %struct.usb_device_id { i16 3, i16 3277, i16 4269, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 79 }, %struct.usb_device_id { i16 3, i16 3277, i16 4278, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 79 }, %struct.usb_device_id { i16 3, i16 3277, i16 4274, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 101 }, %struct.usb_device_id { i16 3, i16 3277, i16 132, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 68 }, %struct.usb_device_id { i16 3, i16 3277, i16 150, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 67 }, %struct.usb_device_id { i16 3, i16 3277, i16 4271, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 67 }, %struct.usb_device_id { i16 3, i16 3277, i16 178, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 82 }, %struct.usb_device_id { i16 3, i16 4057, i16 24, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 97 }, %struct.usb_device_id { i16 3, i16 4057, i16 51, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 33 }, %struct.usb_device_id { i16 3, i16 6235, i16 10352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 46 }, %struct.usb_device_id { i16 3, i16 6235, i16 8257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 58 }, %struct.usb_device_id { i16 3, i16 8256, i16 16896, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 8256, i16 16897, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 4 }, %struct.usb_device_id { i16 3, i16 8256, i16 25856, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 10 }, %struct.usb_device_id { i16 3, i16 8256, i16 25858, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 18 }, %struct.usb_device_id { i16 3, i16 8256, i16 25875, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 16 }, %struct.usb_device_id { i16 3, i16 8256, i16 25879, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 16 }, %struct.usb_device_id { i16 3, i16 8256, i16 25883, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 16 }, %struct.usb_device_id { i16 3, i16 8256, i16 25887, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 60 }, %struct.usb_device_id { i16 3, i16 8256, i16 613, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 99 }, %struct.usb_device_id { i16 3, i16 8256, i16 -32155, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 99 }, %struct.usb_device_id { i16 3, i16 8256, i16 621, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 100 }, %struct.usb_device_id { i16 3, i16 8256, i16 -32147, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 100 }, %struct.usb_device_id { i16 3, i16 8256, i16 -31635, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 106 }, %struct.usb_device_id { i16 3, i16 1080, i16 -20478, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 20 }, %struct.usb_device_id { i16 3, i16 8193, i16 -3822, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 24 }, %struct.usb_device_id { i16 3, i16 8964, i16 519, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 8964, i16 520, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 8964, i16 538, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 8964, i16 550, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 56 }, %struct.usb_device_id { i16 3, i16 8964, i16 551, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 17 }, %struct.usb_device_id { i16 3, i16 8964, i16 575, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 59 }, %struct.usb_device_id { i16 3, i16 1043, i16 24611, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 7 }, %struct.usb_device_id { i16 3, i16 2363, i16 -24573, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 2363, i16 -24571, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 40 }, %struct.usb_device_id { i16 3, i16 1211, i16 1301, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 65 }, %struct.usb_device_id { i16 3, i16 -5350, i16 20646, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 37 }, %struct.usb_device_id { i16 3, i16 7040, i16 -23744, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 76 }, %struct.usb_device_id { i16 3, i16 7040, i16 -7354, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 90 }, %struct.usb_device_id { i16 3, i16 7040, i16 -7348, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 93 }, %struct.usb_device_id { i16 3, i16 8211, i16 591, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 78 }, %struct.usb_device_id { i16 3, i16 8211, i16 588, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 80 }, %struct.usb_device_id { i16 3, i16 8256, i16 5637, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 81 }, %struct.usb_device_id { i16 3, i16 7040, i16 -6315, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 88 }, %struct.usb_device_id { i16 3, i16 -5350, i16 20486, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 83 }, %struct.usb_device_id { i16 3, i16 7040, i16 -7415, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 64 }, %struct.usb_device_id { i16 3, i16 7040, i16 -7131, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 84 }, %struct.usb_device_id { i16 3, i16 8013, i16 6846, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 105 }, %struct.usb_device_id { i16 3, i16 8964, i16 578, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 85 }, %struct.usb_device_id { i16 3, i16 8211, i16 593, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 86 }, %struct.usb_device_id { i16 3, i16 7040, i16 -7732, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 89 }, %struct.usb_device_id { i16 3, i16 6887, i16 -28669, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 91 }, %struct.usb_device_id { i16 3, i16 6887, i16 -28668, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 91 }, %struct.usb_device_id { i16 3, i16 8211, i16 600, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 92 }, %struct.usb_device_id { i16 3, i16 8211, i16 -32168, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 92 }, %struct.usb_device_id { i16 3, i16 8211, i16 1121, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 104 }, %struct.usb_device_id { i16 3, i16 8211, i16 -31647, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 104 }, %struct.usb_device_id { i16 3, i16 8211, i16 601, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 104 }, %struct.usb_device_id { i16 3, i16 8211, i16 607, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 94 }, %struct.usb_device_id { i16 3, i16 8211, i16 612, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 94 }, %struct.usb_device_id { i16 3, i16 8256, i16 612, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 94 }, %struct.usb_device_id { i16 3, i16 8256, i16 -32156, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 94 }, %struct.usb_device_id { i16 3, i16 8256, i16 -32152, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 94 }, %struct.usb_device_id { i16 3, i16 1043, i16 28423, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 95 }, %struct.usb_device_id { i16 3, i16 -5350, i16 -32391, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 96 }, %struct.usb_device_id { i16 3, i16 12917, i16 133, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 98 }, %struct.usb_device_id { i16 3, i16 -5350, i16 20561, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 29 }, %struct.usb_device_id { i16 3, i16 7040, i16 -7351, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 103 }, %struct.usb_device_id zeroinitializer], [648 x i8] zeroinitializer }, align 32
@__kstrtab_em28xx_tuner_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_em28xx_tuner_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_em28xx_tuner_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @em28xx_tuner_callback to i32), ptr @__kstrtab_em28xx_tuner_callback, ptr @__kstrtabns_em28xx_tuner_callback }, section "___ksymtab_gpl+em28xx_tuner_callback", align 4
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc3028-v27.fw\00", [18 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xc3028L-v36.fw\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_em28xx_setup_xc3028 = external dso_local constant [0 x i8], align 1
@__kstrtabns_em28xx_setup_xc3028 = external dso_local constant [0 x i8], align 1
@__ksymtab_em28xx_setup_xc3028 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @em28xx_setup_xc3028 to i32), ptr @__kstrtab_em28xx_setup_xc3028, ptr @__kstrtabns_em28xx_setup_xc3028 }, section "___ksymtab_gpl+em28xx_setup_xc3028", align 4
@em28xx_free_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.123, ptr @.str.124, i32 3516, ptr @.str.125, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Freeing device\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"em28xx_free_device\00", [45 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/em28xx/em28xx-cards.c\00", [56 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@em28xx_free_device._entry_ptr = internal global ptr @em28xx_free_device._entry, section ".printk_index", align 4
@__kstrtab_em28xx_free_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_em28xx_free_device = external dso_local constant [0 x i8], align 1
@__ksymtab_em28xx_free_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @em28xx_free_device to i32), ptr @__kstrtab_em28xx_free_device, ptr @__kstrtabns_em28xx_free_device }, section "___ksymtab_gpl+em28xx_free_device", align 4
@__initcall__kmod_em28xx__344_4200_em28xx_usb_driver_init6 = internal global ptr @em28xx_usb_driver_init, section ".initcall6.init", align 4
@em28xx_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.127, ptr @em28xx_usb_probe, ptr @em28xx_usb_disconnect, ptr null, ptr @em28xx_usb_suspend, ptr @em28xx_usb_resume, ptr @em28xx_usb_resume, ptr null, ptr null, ptr @em28xx_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_em28xx_usb_driver_exit = internal global ptr @em28xx_usb_driver_exit, section ".exitcall.exit", align 4
@card = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@em28xx_devused = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@.str.127 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"em28xx\00", [25 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.124, i32 3846, ptr @.str.130, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Driver supports up to %i em28xx boards.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"em28xx_usb_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry_ptr = internal global ptr @em28xx_usb_probe._entry, section ".printk_index", align 4
@em28xx_usb_probe._entry.131 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.129, ptr @.str.124, i32 3859, ptr @.str.125, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"audio device (%04x:%04x): interface %i, class %i\0A\00", [46 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry_ptr.133 = internal global ptr @em28xx_usb_probe._entry.131, section ".printk_index", align 4
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.5\00", [28 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"12\00", [29 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"480\00", [28 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.129, ptr @.str.124, i32 3924, ptr @.str.125, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"New device %s %s @ %s Mbps (%04x:%04x, interface %d, class %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry_ptr.140 = internal global ptr @em28xx_usb_probe._entry.138, section ".printk_index", align 4
@.str.141 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@em28xx_usb_probe._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.129, ptr @.str.124, i32 3932, ptr @.str.130, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Device initialization failed.\0A\00", [33 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry_ptr.144 = internal global ptr @em28xx_usb_probe._entry.142, section ".printk_index", align 4
@em28xx_usb_probe._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.129, ptr @.str.124, i32 3934, ptr @.str.130, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Device must be connected to a high-speed USB 2.0 port.\0A\00", [40 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry_ptr.147 = internal global ptr @em28xx_usb_probe._entry.145, section ".printk_index", align 4
@em28xx_usb_probe._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.129, ptr @.str.124, i32 3952, ptr @.str.125, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Audio interface %i found (Vendor Class)\0A\00", [55 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry_ptr.150 = internal global ptr @em28xx_usb_probe._entry.148, section ".printk_index", align 4
@em28xx_usb_probe._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.129, ptr @.str.124, i32 3963, ptr @.str.130, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [170 x i8], [54 x i8] } { [170 x i8] c"em28xx: device seems to have vendor AND usb audio class interfaces !\0A\09\09The vendor interface will be ignored. Please contact the developers <linux-media@vger.kernel.org>\0A\00", [54 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry_ptr.153 = internal global ptr @em28xx_usb_probe._entry.151, section ".printk_index", align 4
@em28xx_usb_probe._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.129, ptr @.str.124, i32 3973, ptr @.str.125, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Video interface %i found:%s%s\0A\00", [33 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry_ptr.156 = internal global ptr @em28xx_usb_probe._entry.154, section ".printk_index", align 4
@.str.157 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" bulk\00", [26 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" isoc\00", [26 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.129, ptr @.str.124, i32 3978, ptr @.str.125, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DVB interface %i found:%s%s\0A\00", [35 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry_ptr.161 = internal global ptr @em28xx_usb_probe._entry.159, section ".printk_index", align 4
@em28xx_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.162 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.129, ptr @.str.124, i32 4008, ptr @.str.130, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Currently, V4L2 is not supported on this model\0A\00", [48 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry_ptr.165 = internal global ptr @em28xx_usb_probe._entry.163, section ".printk_index", align 4
@em28xx_usb_probe._entry.166 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.167, ptr @.str.129, ptr @.str.124, i32 4020, ptr @.str.130, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"We currently don't support analog TV or stream capture on dual tuners.\0A\00", [56 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry_ptr.168 = internal global ptr @em28xx_usb_probe._entry.166, section ".printk_index", align 4
@em28xx_usb_probe._entry.169 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.129, ptr @.str.124, i32 4029, ptr @.str.125, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"analog set to %s mode.\0A\00", [40 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry_ptr.171 = internal global ptr @em28xx_usb_probe._entry.169, section ".printk_index", align 4
@.str.172 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bulk\00", [27 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"isoc\00", [27 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.129, ptr @.str.124, i32 4035, ptr @.str.125, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb set to %s mode.\0A\00", [43 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry_ptr.176 = internal global ptr @em28xx_usb_probe._entry.174, section ".printk_index", align 4
@em28xx_usb_probe.__key.177 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.178 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&dev->dev_next->lock\00", [43 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.129, ptr @.str.124, i32 4071, ptr @.str.125, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dvb ts2 set to %s mode.\0A\00", [39 x i8] zeroinitializer }, align 32
@em28xx_usb_probe._entry_ptr.181 = internal global ptr @em28xx_usb_probe._entry.179, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@em28xx_check_usb_descriptor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.182, ptr @.str.183, ptr @.str.124, i32 3782, ptr @.str.130, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"error: skipping audio endpoint 0x83, because it uses bulk transfers !\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"em28xx_check_usb_descriptor\00", [36 x i8] zeroinitializer }, align 32
@em28xx_check_usb_descriptor._entry_ptr = internal global ptr @em28xx_check_usb_descriptor._entry, section ".printk_index", align 4
@em28xx_init_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.184 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->ctrl_urb_lock\00", [44 x i8] zeroinitializer }, align 32
@em28xx_init_dev.__key.185 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.186 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->slock\00", [20 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"em2800\00", [25 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"em2710\00", [25 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"em2750\00", [25 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"em2765\00", [25 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"em2710/2820\00", [20 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"em2820\00", [25 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"em2840\00", [25 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"em2860\00", [25 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"em2870\00", [25 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"em2874\00", [25 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"em28174\00", [24 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"em28178\00", [24 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"em2882/3\00", [23 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"em2884\00", [25 x i8] zeroinitializer }, align 32
@em28xx_init_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.202, ptr @.str.124, i32 3625, ptr @.str.125, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unknown em28xx chip ID (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"em28xx_init_dev\00", [16 x i8] zeroinitializer }, align 32
@em28xx_init_dev._entry_ptr = internal global ptr @em28xx_init_dev._entry, section ".printk_index", align 4
@em28xx_init_dev._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.202, ptr @.str.124, i32 3627, ptr @.str.125, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"chip ID is %s\0A\00", [17 x i8] zeroinitializer }, align 32
@em28xx_init_dev._entry_ptr.205 = internal global ptr @em28xx_init_dev._entry.203, section ".printk_index", align 4
@em28xx_init_dev.__key.206 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@em28xx_init_dev._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.202, ptr @.str.124, i32 3654, ptr @.str.130, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: em28xx_i2c_register bus 0 - error [%d]!\0A\00", [51 x i8] zeroinitializer }, align 32
@em28xx_init_dev._entry_ptr.209 = internal global ptr @em28xx_init_dev._entry.207, section ".printk_index", align 4
@em28xx_init_dev._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.202, ptr @.str.124, i32 3669, ptr @.str.130, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: em28xx_i2c_register bus 1 - error [%d]!\0A\00", [51 x i8] zeroinitializer }, align 32
@em28xx_init_dev._entry_ptr.212 = internal global ptr @em28xx_init_dev._entry.210, section ".printk_index", align 4
@.str.213 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\07\00", [30 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"@\00", [30 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FD\00", [30 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\FF\00", [30 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\7F\00", [30 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"k\00", [30 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F8\00", [30 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@em28xx_wait_until_ac97_features_equals._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.222, ptr @.str.124, i32 2931, ptr @.str.223, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"AC97 registers access is not reliable !\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"em28xx_wait_until_ac97_features_equals\00", [57 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@em28xx_wait_until_ac97_features_equals._entry_ptr = internal global ptr @em28xx_wait_until_ac97_features_equals._entry, section ".printk_index", align 4
@em28xx_card_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.225, ptr @.str.124, i32 3189, ptr @.str.130, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Board not discovered\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"em28xx_card_setup\00", [46 x i8] zeroinitializer }, align 32
@em28xx_card_setup._entry_ptr = internal global ptr @em28xx_card_setup._entry, section ".printk_index", align 4
@em28xx_card_setup._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.225, ptr @.str.124, i32 3200, ptr @.str.125, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Identified as %s (card=%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@em28xx_card_setup._entry_ptr.228 = internal global ptr @em28xx_card_setup._entry.226, section ".printk_index", align 4
@em28xx_card_setup._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.225, ptr @.str.124, i32 3306, ptr @.str.130, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [146 x i8], [46 x i8] } { [146 x i8] c"\0A\0AThe support for this board weren't valid yet.\0APlease send a report of having this working\0Anot to V4L mailing list (and/or to other addresses)\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@em28xx_card_setup._entry_ptr.231 = internal global ptr @em28xx_card_setup._entry.229, section ".printk_index", align 4
@em28xx_eeprom_hash = internal constant { [9 x %struct.em28xx_hash_table], [52 x i8] } { [9 x %struct.em28xx_hash_table] [%struct.em28xx_hash_table { i32 1826642575, i32 14, i32 59 }, %struct.em28xx_hash_table { i32 1925995147, i32 61, i32 59 }, %struct.em28xx_hash_table { i32 -1771436991, i32 48, i32 71 }, %struct.em28xx_hash_table { i32 376046657, i32 66, i32 71 }, %struct.em28xx_hash_table { i32 -823899495, i32 70, i32 71 }, %struct.em28xx_hash_table { i32 -1199281376, i32 53, i32 71 }, %struct.em28xx_hash_table { i32 1677087677, i32 73, i32 4 }, %struct.em28xx_hash_table { i32 1318138946, i32 75, i32 71 }, %struct.em28xx_hash_table { i32 -2049079522, i32 102, i32 71 }], [52 x i8] zeroinitializer }, align 32
@em28xx_hint_board._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.233, ptr @.str.124, i32 3100, ptr @.str.130, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [250 x i8], [38 x i8] } { [250 x i8] c"Your board has no unique USB ID.\0AA hint were successfully done, based on eeprom hash.\0AThis method is not 100%% failproof.\0AIf the board were misdetected, please email this log to:\0A\09V4L Mailing List  <linux-media@vger.kernel.org>\0ABoard detected as %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"em28xx_hint_board\00", [46 x i8] zeroinitializer }, align 32
@em28xx_hint_board._entry_ptr = internal global ptr @em28xx_hint_board._entry, section ".printk_index", align 4
@em28xx_i2c_hash = internal constant { [8 x %struct.em28xx_hash_table], [32 x i8] } { [8 x %struct.em28xx_hash_table] [%struct.em28xx_hash_table { i32 -1335217469, i32 6, i32 37 }, %struct.em28xx_hash_table { i32 -183369501, i32 15, i32 37 }, %struct.em28xx_hash_table { i32 463798400, i32 19, i32 4 }, %struct.em28xx_hash_table { i32 2004877440, i32 29, i32 4 }, %struct.em28xx_hash_table { i32 -988675869, i32 62, i32 37 }, %struct.em28xx_hash_table { i32 1269104768, i32 72, i32 69 }, %struct.em28xx_hash_table { i32 1803550848, i32 77, i32 4 }, %struct.em28xx_hash_table { i32 669057152, i32 102, i32 71 }], [32 x i8] zeroinitializer }, align 32
@em28xx_hint_board._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.233, ptr @.str.124, i32 3131, ptr @.str.130, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [258 x i8], [94 x i8] } { [258 x i8] c"Your board has no unique USB ID.\0AA hint were successfully done, based on i2c devicelist hash.\0AThis method is not 100%% failproof.\0AIf the board were misdetected, please email this log to:\0A\09V4L Mailing List  <linux-media@vger.kernel.org>\0ABoard detected as %s\0A\00", [94 x i8] zeroinitializer }, align 32
@em28xx_hint_board._entry_ptr.236 = internal global ptr @em28xx_hint_board._entry.234, section ".printk_index", align 4
@em28xx_hint_board._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.233, ptr @.str.124, i32 3144, ptr @.str.130, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [285 x i8], [67 x i8] } { [285 x i8] c"Your board has no unique USB ID and thus need a hint to be detected.\0AYou may try to use card=<n> insmod option to workaround that.\0APlease send an email with this log to:\0A\09V4L Mailing List <linux-media@vger.kernel.org>\0ABoard eeprom hash is 0x%08lx\0ABoard i2c devicelist hash is 0x%08lx\0A\00", [67 x i8] zeroinitializer }, align 32
@em28xx_hint_board._entry_ptr.239 = internal global ptr @em28xx_hint_board._entry.237, section ".printk_index", align 4
@em28xx_hint_board._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.233, ptr @.str.124, i32 3147, ptr @.str.130, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Here is a list of valid choices for the card=<n> insmod option:\0A\00", [63 x i8] zeroinitializer }, align 32
@em28xx_hint_board._entry_ptr.242 = internal global ptr @em28xx_hint_board._entry.240, section ".printk_index", align 4
@em28xx_hint_board._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.233, ptr @.str.124, i32 3150, ptr @.str.130, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"    card=%d -> %s\0A\00", [45 x i8] zeroinitializer }, align 32
@em28xx_hint_board._entry_ptr.245 = internal global ptr @em28xx_hint_board._entry.243, section ".printk_index", align 4
@em28xx_duplicate_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.247, ptr @.str.124, i32 3702, ptr @.str.223, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c": Supports only %i em28xx boards.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"em28xx_duplicate_dev\00", [43 x i8] zeroinitializer }, align 32
@em28xx_duplicate_dev._entry_ptr = internal global ptr @em28xx_duplicate_dev._entry, section ".printk_index", align 4
@.str.248 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"em28xx #%d\00", [21 x i8] zeroinitializer }, align 32
@request_modules.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.249 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&dev->request_module_wk)\00", [53 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@em28xx_usb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.124, i32 4142, ptr @.str.125, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Disconnecting %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"em28xx_usb_disconnect\00", [42 x i8] zeroinitializer }, align 32
@em28xx_usb_disconnect._entry_ptr = internal global ptr @em28xx_usb_disconnect._entry, section ".printk_index", align 4
@em28xx_usb_disconnect._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.251, ptr @.str.124, i32 4147, ptr @.str.125, ptr @.str.126 }, [40 x i8] zeroinitializer }, align 32
@em28xx_usb_disconnect._entry_ptr.253 = internal global ptr @em28xx_usb_disconnect._entry.252, section ".printk_index", align 4
@switch.table.em28xx_usb_probe = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.135, ptr @.str.134, ptr @.str.135, ptr @.str.136], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 71, i64 76]
@__sancov_gen_cov_switch_values.254 = internal global [19 x i64] [i64 17, i64 32, i64 10, i64 11, i64 16, i64 17, i64 18, i64 20, i64 51, i64 53, i64 54, i64 55, i64 56, i64 57, i64 60, i64 66, i64 70, i64 75, i64 102]
@__sancov_gen_cov_switch_values.255 = internal global [6 x i64] [i64 4, i64 8, i64 130, i64 131, i64 132, i64 133]
@__sancov_gen_cov_switch_values.256 = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@__sancov_gen_cov_switch_values.257 = internal global [15 x i64] [i64 13, i64 32, i64 7, i64 17, i64 18, i64 20, i64 33, i64 34, i64 35, i64 36, i64 54, i64 65, i64 68, i64 113, i64 114]
@__sancov_gen_cov_switch_values.258 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 22]
@__sancov_gen_cov_switch_values.259 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 1, i64 4, i64 10, i64 12, i64 16, i64 18, i64 49, i64 54, i64 60, i64 69, i64 81, i64 99, i64 100]
@__sancov_gen_cov_switch_values.260 = internal global [15 x i64] [i64 13, i64 32, i64 5, i64 25, i64 39, i64 40, i64 44, i64 45, i64 46, i64 47, i64 63, i64 64, i64 65, i64 67, i64 69]
@__sancov_gen_cov_switch_values.261 = internal global [11 x i64] [i64 9, i64 32, i64 376046657, i64 1318138946, i64 1677087677, i64 1826642575, i64 1925995147, i64 2245887774, i64 2523530305, i64 3095685920, i64 3471067801]
@__sancov_gen_cov_switch_values.262 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.263 = internal global [10 x i64] [i64 8, i64 32, i64 463798400, i64 669057152, i64 1269104768, i64 1803550848, i64 2004877440, i64 2959749827, i64 3306291427, i64 4111597795]
@___asan_gen_.264 = private unnamed_addr constant [6 x i8] c"tuner\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 41, i32 12 }
@___asan_gen_.267 = private unnamed_addr constant [11 x i8] c"disable_ir\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 45, i32 21 }
@___asan_gen_.270 = private unnamed_addr constant [24 x i8] c"disable_usb_speed_check\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 49, i32 21 }
@___asan_gen_.273 = private unnamed_addr constant [14 x i8] c"usb_xfer_mode\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 58, i32 12 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 695, i32 19 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 711, i32 20 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 773, i32 19 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 793, i32 19 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 813, i32 19 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1526, i32 15 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1548, i32 19 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1601, i32 19 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1621, i32 19 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1641, i32 17 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1315, i32 19 }
@___asan_gen_.309 = private unnamed_addr constant [32 x i8] c"hauppauge_wintv_hvr_900_digital\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 113, i32 36 }
@___asan_gen_.312 = private unnamed_addr constant [19 x i8] c"default_tuner_gpio\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 261, i32 36 }
@___asan_gen_.315 = private unnamed_addr constant [31 x i8] c"hauppauge_wintv_hvr_900_analog\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 106, i32 36 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1322, i32 19 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1473, i32 21 }
@___asan_gen_.324 = private unnamed_addr constant [16 x i8] c"default_digital\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 85, i32 36 }
@___asan_gen_.327 = private unnamed_addr constant [15 x i8] c"default_analog\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 79, i32 36 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1479, i32 21 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 739, i32 19 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1504, i32 19 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1696, i32 19 }
@___asan_gen_.342 = private unnamed_addr constant [20 x i8] c"std_snapshot_button\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 570, i32 35 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1655, i32 19 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1395, i32 21 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1421, i32 21 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1427, i32 21 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1342, i32 19 }
@___asan_gen_.360 = private unnamed_addr constant [34 x i8] c"hauppauge_wintv_hvr_900R2_digital\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 121, i32 36 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1719, i32 26 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1447, i32 21 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1453, i32 21 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1569, i32 17 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 683, i32 20 }
@___asan_gen_.378 = private unnamed_addr constant [20 x i8] c"silvercrest_reg_seq\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 295, i32 36 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 727, i32 20 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 833, i32 19 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 893, i32 19 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 853, i32 19 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 873, i32 19 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 913, i32 19 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1130, i32 20 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 942, i32 19 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 986, i32 19 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 964, i32 19 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2187, i32 19 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1068, i32 19 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1013, i32 19 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1002, i32 19 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1027, i32 19 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1112, i32 20 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1092, i32 17 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1144, i32 19 }
@___asan_gen_.435 = private unnamed_addr constant [27 x i8] c"pinnacle_hybrid_pro_analog\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 207, i32 36 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1187, i32 19 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1193, i32 19 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1172, i32 19 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1178, i32 19 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1201, i32 19 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1209, i32 19 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1791, i32 17 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1810, i32 17 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1745, i32 19 }
@___asan_gen_.465 = private unnamed_addr constant [29 x i8] c"em2880_msi_digivox_ad_analog\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 128, i32 36 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1768, i32 19 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1215, i32 19 }
@___asan_gen_.474 = private unnamed_addr constant [35 x i8] c"terratec_cinergy_USB_XS_FR_digital\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 225, i32 36 }
@___asan_gen_.477 = private unnamed_addr constant [34 x i8] c"terratec_cinergy_USB_XS_FR_analog\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 219, i32 36 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1895, i32 19 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1918, i32 19 }
@___asan_gen_.486 = private unnamed_addr constant [28 x i8] c"pinnacle_hybrid_pro_digital\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 212, i32 36 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1968, i32 19 }
@___asan_gen_.492 = private unnamed_addr constant [20 x i8] c"kworld_330u_digital\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 157, i32 36 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1976, i32 19 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1992, i32 19 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1942, i32 19 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2034, i32 19 }
@___asan_gen_.507 = private unnamed_addr constant [19 x i8] c"kworld_330u_analog\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 151, i32 36 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2065, i32 19 }
@___asan_gen_.513 = private unnamed_addr constant [17 x i8] c"compro_mute_gpio\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 279, i32 36 }
@___asan_gen_.516 = private unnamed_addr constant [22 x i8] c"compro_unmute_tv_gpio\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 269, i32 36 }
@___asan_gen_.519 = private unnamed_addr constant [24 x i8] c"compro_unmute_svid_gpio\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 274, i32 36 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2389, i32 19 }
@___asan_gen_.525 = private unnamed_addr constant [24 x i8] c"em2874_pctv_80e_digital\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 237, i32 36 }
@___asan_gen_.528 = private unnamed_addr constant [14 x i8] c"pctv_80e_leds\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 626, i32 26 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1369, i32 21 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1675, i32 19 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 754, i32 19 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2085, i32 17 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2092, i32 19 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2113, i32 19 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2128, i32 17 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1870, i32 11 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2148, i32 22 }
@___asan_gen_.558 = private unnamed_addr constant [21 x i8] c"terratec_grabby_leds\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 636, i32 26 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2166, i32 22 }
@___asan_gen_.564 = private unnamed_addr constant [25 x i8] c"terratec_av350_mute_gpio\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 285, i32 36 }
@___asan_gen_.567 = private unnamed_addr constant [27 x i8] c"terratec_av350_unmute_gpio\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 290, i32 36 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1835, i32 12 }
@___asan_gen_.573 = private unnamed_addr constant [27 x i8] c"em2882_kworld_315u_digital\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 134, i32 36 }
@___asan_gen_.576 = private unnamed_addr constant [30 x i8] c"em2882_kworld_315u_tuner_gpio\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 143, i32 36 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2202, i32 19 }
@___asan_gen_.582 = private unnamed_addr constant [21 x i8] c"evga_indtube_digital\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 175, i32 36 }
@___asan_gen_.585 = private unnamed_addr constant [20 x i8] c"evga_indtube_analog\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 170, i32 36 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2210, i32 19 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 953, i32 19 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1047, i32 19 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1050, i32 19 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2233, i32 20 }
@___asan_gen_.603 = private unnamed_addr constant [20 x i8] c"reddo_dvb_c_usb_box\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 249, i32 36 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1584, i32 19 }
@___asan_gen_.609 = private unnamed_addr constant [14 x i8] c"vc211a_enable\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 301, i32 36 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2019, i32 19 }
@___asan_gen_.615 = private unnamed_addr constant [20 x i8] c"dikom_dk300_digital\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 308, i32 36 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2244, i32 17 }
@___asan_gen_.621 = private unnamed_addr constant [20 x i8] c"kworld_a340_digital\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 193, i32 36 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1737, i32 12 }
@___asan_gen_.627 = private unnamed_addr constant [19 x i8] c"leadership_digital\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 315, i32 36 }
@___asan_gen_.630 = private unnamed_addr constant [17 x i8] c"leadership_reset\00", align 1
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 320, i32 36 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2255, i32 20 }
@___asan_gen_.636 = private unnamed_addr constant [10 x i8] c"pctv_290e\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 332, i32 36 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1240, i32 19 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2272, i32 20 }
@___asan_gen_.645 = private unnamed_addr constant [10 x i8] c"pctv_460e\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 367, i32 36 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1271, i32 19 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1297, i32 19 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1299, i32 19 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2283, i32 26 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2301, i32 20 }
@___asan_gen_.663 = private unnamed_addr constant [18 x i8] c"maxmedia_ub425_tc\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 433, i32 36 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2305, i32 20 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2315, i32 20 }
@___asan_gen_.672 = private unnamed_addr constant [10 x i8] c"pctv_510e\00", align 1
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 447, i32 36 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2329, i32 20 }
@___asan_gen_.678 = private unnamed_addr constant [10 x i8] c"pctv_520e\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 461, i32 36 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2339, i32 19 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1287, i32 19 }
@___asan_gen_.687 = private unnamed_addr constant [27 x i8] c"c3tech_digital_duo_digital\00", align 1
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 376, i32 36 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1291, i32 19 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2353, i32 20 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2357, i32 20 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2367, i32 12 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2402, i32 19 }
@___asan_gen_.705 = private unnamed_addr constant [30 x i8] c"speedlink_vad_laplace_reg_seq\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 479, i32 36 }
@___asan_gen_.708 = private unnamed_addr constant [27 x i8] c"speedlink_vad_laplace_leds\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 600, i32 26 }
@___asan_gen_.711 = private unnamed_addr constant [30 x i8] c"speedlink_vad_laplace_buttons\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 581, i32 35 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2425, i32 20 }
@___asan_gen_.717 = private unnamed_addr constant [10 x i8] c"pctv_461e\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 399, i32 36 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2379, i32 12 }
@___asan_gen_.723 = private unnamed_addr constant [25 x i8] c"kworld_ub435q_v3_digital\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 198, i32 36 }
@___asan_gen_.726 = private unnamed_addr constant [22 x i8] c"kworld_ub435q_v3_leds\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 616, i32 26 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2450, i32 20 }
@___asan_gen_.732 = private unnamed_addr constant [10 x i8] c"pctv_292e\00", align 1
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 485, i32 36 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2460, i32 20 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2478, i32 20 }
@___asan_gen_.741 = private unnamed_addr constant [21 x i8] c"terratec_t2_stick_hd\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 497, i32 36 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2485, i32 20 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1306, i32 19 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2493, i32 20 }
@___asan_gen_.753 = private unnamed_addr constant [13 x i8] c"plex_px_bcud\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 511, i32 36 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2507, i32 20 }
@___asan_gen_.759 = private unnamed_addr constant [21 x i8] c"hauppauge_dualhd_dvb\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 538, i32 36 }
@___asan_gen_.762 = private unnamed_addr constant [22 x i8] c"hauppauge_dualhd_leds\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 646, i32 26 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2529, i32 20 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 1255, i32 19 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 716, i32 13 }
@___asan_gen_.774 = private unnamed_addr constant [14 x i8] c"zolid_digital\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 97, i32 30 }
@___asan_gen_.777 = private unnamed_addr constant [12 x i8] c"zolid_tuner\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 91, i32 30 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2546, i32 26 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2439, i32 20 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2564, i32 19 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2582, i32 20 }
@___asan_gen_.792 = private unnamed_addr constant [34 x i8] c"hauppauge_usb_quadhd_atsc_reg_seq\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 553, i32 30 }
@___asan_gen_.795 = private unnamed_addr constant [26 x i8] c"hauppauge_usb_quadhd_leds\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 662, i32 26 }
@___asan_gen_.798 = private unnamed_addr constant [14 x i8] c"em28xx_boards\00", align 1
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 681, i32 27 }
@___asan_gen_.801 = private unnamed_addr constant [16 x i8] c"em28xx_id_table\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2597, i32 22 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3348, i32 17 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3368, i32 16 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3516, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant [18 x i8] c"em28xx_usb_driver\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 4190, i32 26 }
@___asan_gen_.831 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 54, i32 21 }
@___asan_gen_.834 = private unnamed_addr constant [15 x i8] c"em28xx_devused\00", align 1
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 64, i32 8 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 4200, i32 1 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3844, i32 4 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3854, i32 3 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3903, i32 11 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3907, i32 11 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3910, i32 11 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3913, i32 11 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3916, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3932, i32 3 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3933, i32 3 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3951, i32 3 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3961, i32 5 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3970, i32 3 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3975, i32 3 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3989, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 4007, i32 3 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 4019, i32 3 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 4028, i32 3 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 4034, i32 3 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 4047, i32 3 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 4070, i32 4 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3781, i32 4 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3540, i32 2 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3541, i32 2 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3561, i32 16 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3564, i32 16 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3567, i32 16 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3570, i32 16 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3576, i32 16 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3583, i32 18 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3588, i32 16 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3591, i32 16 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3594, i32 16 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3598, i32 16 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3603, i32 16 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3608, i32 16 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3613, i32 16 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3617, i32 16 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3624, i32 3 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3627, i32 3 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3644, i32 2 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3652, i32 3 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3667, i32 4 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3020, i32 43 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3021, i32 46 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3022, i32 32 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3023, i32 32 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3025, i32 32 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3027, i32 32 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3029, i32 32 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3033, i32 32 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2931, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3189, i32 4 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3199, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3302, i32 3 }
@___asan_gen_.1119 = private unnamed_addr constant [19 x i8] c"em28xx_eeprom_hash\00", align 1
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2821, i32 39 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3093, i32 4 }
@___asan_gen_.1131 = private unnamed_addr constant [16 x i8] c"em28xx_i2c_hash\00", align 1
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 2835, i32 39 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3124, i32 4 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3137, i32 2 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3146, i32 2 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3149, i32 3 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3701, i32 4 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3709, i32 30 }
@___asan_gen_.1170 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 3434, i32 2 }
@___asan_gen_.1182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 4141, i32 3 }
@___asan_gen_.1185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1186 = private constant [43 x i8] c"../drivers/media/usb/em28xx/em28xx-cards.c\00", align 1
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1186, i32 4147, i32 2 }
@___asan_gen_.1188 = private unnamed_addr constant [30 x i8] c"switch.table.em28xx_usb_probe\00", align 1
@llvm.compiler.used = appending global [363 x ptr] [ptr @__UNIQUE_ID_card341, ptr @__UNIQUE_ID_cardtype340, ptr @__UNIQUE_ID_disable_ir337, ptr @__UNIQUE_ID_disable_irtype336, ptr @__UNIQUE_ID_disable_usb_speed_check339, ptr @__UNIQUE_ID_disable_usb_speed_checktype338, ptr @__UNIQUE_ID_tuner335, ptr @__UNIQUE_ID_tunertype334, ptr @__UNIQUE_ID_usb_xfer_mode343, ptr @__UNIQUE_ID_usb_xfer_modetype342, ptr @__exitcall_em28xx_usb_driver_exit, ptr @__initcall__kmod_em28xx__344_4200_em28xx_usb_driver_init6, ptr @__ksymtab_em28xx_boards, ptr @__ksymtab_em28xx_free_device, ptr @__ksymtab_em28xx_setup_xc3028, ptr @__ksymtab_em28xx_tuner_callback, ptr @__param_card, ptr @__param_disable_ir, ptr @__param_disable_usb_speed_check, ptr @__param_tuner, ptr @__param_usb_xfer_mode, ptr @em28xx_card_setup._entry, ptr @em28xx_card_setup._entry.226, ptr @em28xx_card_setup._entry.229, ptr @em28xx_card_setup._entry_ptr, ptr @em28xx_card_setup._entry_ptr.228, ptr @em28xx_card_setup._entry_ptr.231, ptr @em28xx_check_usb_descriptor._entry, ptr @em28xx_check_usb_descriptor._entry_ptr, ptr @em28xx_duplicate_dev._entry, ptr @em28xx_duplicate_dev._entry_ptr, ptr @em28xx_free_device._entry, ptr @em28xx_free_device._entry_ptr, ptr @em28xx_hint_board._entry, ptr @em28xx_hint_board._entry.234, ptr @em28xx_hint_board._entry.237, ptr @em28xx_hint_board._entry.240, ptr @em28xx_hint_board._entry.243, ptr @em28xx_hint_board._entry_ptr, ptr @em28xx_hint_board._entry_ptr.236, ptr @em28xx_hint_board._entry_ptr.239, ptr @em28xx_hint_board._entry_ptr.242, ptr @em28xx_hint_board._entry_ptr.245, ptr @em28xx_init_dev._entry, ptr @em28xx_init_dev._entry.203, ptr @em28xx_init_dev._entry.207, ptr @em28xx_init_dev._entry.210, ptr @em28xx_init_dev._entry_ptr, ptr @em28xx_init_dev._entry_ptr.205, ptr @em28xx_init_dev._entry_ptr.209, ptr @em28xx_init_dev._entry_ptr.212, ptr @em28xx_usb_disconnect._entry, ptr @em28xx_usb_disconnect._entry.252, ptr @em28xx_usb_disconnect._entry_ptr, ptr @em28xx_usb_disconnect._entry_ptr.253, ptr @em28xx_usb_driver_exit, ptr @em28xx_usb_probe._entry, ptr @em28xx_usb_probe._entry.131, ptr @em28xx_usb_probe._entry.138, ptr @em28xx_usb_probe._entry.142, ptr @em28xx_usb_probe._entry.145, ptr @em28xx_usb_probe._entry.148, ptr @em28xx_usb_probe._entry.151, ptr @em28xx_usb_probe._entry.154, ptr @em28xx_usb_probe._entry.159, ptr @em28xx_usb_probe._entry.163, ptr @em28xx_usb_probe._entry.166, ptr @em28xx_usb_probe._entry.169, ptr @em28xx_usb_probe._entry.174, ptr @em28xx_usb_probe._entry.179, ptr @em28xx_usb_probe._entry_ptr, ptr @em28xx_usb_probe._entry_ptr.133, ptr @em28xx_usb_probe._entry_ptr.140, ptr @em28xx_usb_probe._entry_ptr.144, ptr @em28xx_usb_probe._entry_ptr.147, ptr @em28xx_usb_probe._entry_ptr.150, ptr @em28xx_usb_probe._entry_ptr.153, ptr @em28xx_usb_probe._entry_ptr.156, ptr @em28xx_usb_probe._entry_ptr.161, ptr @em28xx_usb_probe._entry_ptr.165, ptr @em28xx_usb_probe._entry_ptr.168, ptr @em28xx_usb_probe._entry_ptr.171, ptr @em28xx_usb_probe._entry_ptr.176, ptr @em28xx_usb_probe._entry_ptr.181, ptr @em28xx_wait_until_ac97_features_equals._entry, ptr @em28xx_wait_until_ac97_features_equals._entry_ptr, ptr @tuner, ptr @disable_ir, ptr @disable_usb_speed_check, ptr @usb_xfer_mode, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @hauppauge_wintv_hvr_900_digital, ptr @default_tuner_gpio, ptr @hauppauge_wintv_hvr_900_analog, ptr @.str.11, ptr @.str.12, ptr @default_digital, ptr @default_analog, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @std_snapshot_button, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @hauppauge_wintv_hvr_900R2_digital, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @silvercrest_reg_seq, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @pinnacle_hybrid_pro_analog, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @em2880_msi_digivox_ad_analog, ptr @.str.54, ptr @.str.55, ptr @terratec_cinergy_USB_XS_FR_digital, ptr @terratec_cinergy_USB_XS_FR_analog, ptr @.str.56, ptr @.str.57, ptr @pinnacle_hybrid_pro_digital, ptr @.str.58, ptr @kworld_330u_digital, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @kworld_330u_analog, ptr @.str.63, ptr @compro_mute_gpio, ptr @compro_unmute_tv_gpio, ptr @compro_unmute_svid_gpio, ptr @.str.64, ptr @em2874_pctv_80e_digital, ptr @pctv_80e_leds, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @terratec_grabby_leds, ptr @.str.74, ptr @terratec_av350_mute_gpio, ptr @terratec_av350_unmute_gpio, ptr @.str.75, ptr @em2882_kworld_315u_digital, ptr @em2882_kworld_315u_tuner_gpio, ptr @.str.76, ptr @evga_indtube_digital, ptr @evga_indtube_analog, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @reddo_dvb_c_usb_box, ptr @.str.82, ptr @vc211a_enable, ptr @.str.83, ptr @dikom_dk300_digital, ptr @.str.84, ptr @kworld_a340_digital, ptr @.str.85, ptr @leadership_digital, ptr @leadership_reset, ptr @.str.86, ptr @pctv_290e, ptr @.str.87, ptr @.str.88, ptr @pctv_460e, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @maxmedia_ub425_tc, ptr @.str.94, ptr @.str.95, ptr @pctv_510e, ptr @.str.96, ptr @pctv_520e, ptr @.str.97, ptr @.str.98, ptr @c3tech_digital_duo_digital, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @speedlink_vad_laplace_reg_seq, ptr @speedlink_vad_laplace_leds, ptr @speedlink_vad_laplace_buttons, ptr @.str.104, ptr @pctv_461e, ptr @.str.105, ptr @kworld_ub435q_v3_digital, ptr @kworld_ub435q_v3_leds, ptr @.str.106, ptr @pctv_292e, ptr @.str.107, ptr @.str.108, ptr @terratec_t2_stick_hd, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @plex_px_bcud, ptr @.str.112, ptr @hauppauge_dualhd_dvb, ptr @hauppauge_dualhd_leds, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @zolid_digital, ptr @zolid_tuner, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @hauppauge_usb_quadhd_atsc_reg_seq, ptr @hauppauge_usb_quadhd_leds, ptr @em28xx_boards, ptr @em28xx_id_table, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @em28xx_usb_driver, ptr @card, ptr @em28xx_devused, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.141, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.155, ptr @.str.157, ptr @.str.158, ptr @.str.160, ptr @em28xx_usb_probe.__key, ptr @.str.162, ptr @.str.164, ptr @.str.167, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @.str.175, ptr @em28xx_usb_probe.__key.177, ptr @.str.178, ptr @.str.180, ptr @.str.182, ptr @.str.183, ptr @em28xx_init_dev.__key, ptr @.str.184, ptr @em28xx_init_dev.__key.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.204, ptr @em28xx_init_dev.__key.206, ptr @.str.208, ptr @.str.211, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.227, ptr @.str.230, ptr @em28xx_eeprom_hash, ptr @.str.232, ptr @.str.233, ptr @em28xx_i2c_hash, ptr @.str.235, ptr @.str.238, ptr @.str.241, ptr @.str.244, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @request_modules.__key, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @switch.table.em28xx_usb_probe], section "llvm.metadata"
@0 = internal global [309 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_ir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_usb_speed_check to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_xfer_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 118, i32 160, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_wintv_hvr_900_digital to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_tuner_gpio to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_wintv_hvr_900_analog to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_digital to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_analog to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @std_snapshot_button to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_wintv_hvr_900R2_digital to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @silvercrest_reg_seq to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinnacle_hybrid_pro_analog to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em2880_msi_digivox_ad_analog to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_cinergy_USB_XS_FR_digital to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_cinergy_USB_XS_FR_analog to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinnacle_hybrid_pro_digital to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_330u_digital to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_330u_analog to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compro_mute_gpio to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compro_unmute_tv_gpio to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @compro_unmute_svid_gpio to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em2874_pctv_80e_digital to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv_80e_leds to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_grabby_leds to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_av350_mute_gpio to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_av350_unmute_gpio to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em2882_kworld_315u_digital to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em2882_kworld_315u_tuner_gpio to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evga_indtube_digital to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @evga_indtube_analog to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reddo_dvb_c_usb_box to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vc211a_enable to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dikom_dk300_digital to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_a340_digital to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @leadership_digital to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @leadership_reset to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv_290e to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv_460e to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @maxmedia_ub425_tc to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv_510e to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv_520e to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c3tech_digital_duo_digital to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedlink_vad_laplace_reg_seq to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedlink_vad_laplace_leds to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedlink_vad_laplace_buttons to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv_461e to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_ub435q_v3_digital to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kworld_ub435q_v3_leds to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv_292e to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @terratec_t2_stick_hd to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plex_px_bcud to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_dualhd_dvb to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_dualhd_leds to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zolid_digital to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zolid_tuner to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_usb_quadhd_atsc_reg_seq to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hauppauge_usb_quadhd_leds to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_boards to i32), i32 17976, i32 22464, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_id_table to i32), i32 2616, i32 3264, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_free_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_devused to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_probe._entry.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_probe._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_probe._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_probe._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_probe._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_probe._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 170, i32 224, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_probe._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_probe._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_probe._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_probe._entry.166 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_probe._entry.169 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_probe._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_probe.__key.177 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_probe._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_check_usb_descriptor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_init_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_init_dev.__key.185 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_init_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_init_dev._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_init_dev.__key.206 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_init_dev._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_init_dev._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_wait_until_ac97_features_equals._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_card_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_card_setup._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_card_setup._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 146, i32 192, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_eeprom_hash to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_hint_board._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 250, i32 288, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_i2c_hash to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_hint_board._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 258, i32 352, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_hint_board._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 285, i32 352, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_hint_board._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_hint_board._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_duplicate_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @request_modules.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em28xx_usb_disconnect._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.em28xx_usb_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @em28xx_tuner_callback(ptr nocapture noundef readonly %ptr, i32 %component, i32 noundef %command, i32 %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %tuner_type = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tuner_type, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 71, label %entry.if.end_crit_edge
    i32 76, label %entry.if.end_crit_edge15
  ]

entry.if.end_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cmp4.not = icmp eq i32 %command, 0
  br i1 %cmp4.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tuner_gpio = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 12, i32 8
  %5 = ptrtoint ptr %tuner_gpio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tuner_gpio, align 8
  %call = tail call i32 @em28xx_gpio_set(ptr noundef %1, ptr noundef %6) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_gpio_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @em28xx_setup_xc3028(ptr nocapture noundef readonly %dev, ptr nocapture noundef %ctl) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds i8, ptr %ctl, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %2 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.120, ptr %ctl, align 4
  %max_len = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 1
  %3 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 64, ptr %max_len, align 4
  %model = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 8
  %mts_firmware = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %5, i32 10
  %6 = ptrtoint ptr %mts_firmware to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %mts_firmware, align 4
  %mts = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 4
  %sh.diff = lshr i16 %bf.load, 6
  %tr.sh.diff = trunc i16 %sh.diff to i8
  %bf.shl = and i8 %tr.sh.diff, -128
  %7 = ptrtoint ptr %mts to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bf.shl, ptr %mts, align 4
  %8 = load i32, ptr %model, align 8
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.254)
  switch i32 %8, label %sw.default [
    i32 66, label %entry.sw.bb_crit_edge
    i32 10, label %entry.sw.bb_crit_edge32
    i32 55, label %entry.sw.bb_crit_edge33
    i32 11, label %entry.sw.bb_crit_edge34
    i32 51, label %entry.sw.bb_crit_edge35
    i32 53, label %entry.sw.bb_crit_edge36
    i32 102, label %entry.sw.bb_crit_edge37
    i32 18, label %entry.sw.bb4_crit_edge
    i32 56, label %entry.sw.bb4_crit_edge38
    i32 20, label %sw.bb6
    i32 60, label %entry.sw.bb9_crit_edge
    i32 16, label %entry.sw.bb9_crit_edge39
    i32 17, label %entry.sw.bb9_crit_edge40
    i32 57, label %entry.sw.bb11_crit_edge
    i32 75, label %entry.sw.bb11_crit_edge41
    i32 54, label %entry.sw.bb11_crit_edge42
    i32 70, label %sw.bb14
  ]

entry.sw.bb11_crit_edge42:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11

entry.sw.bb11_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb11

entry.sw.bb9_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

entry.sw.bb9_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

entry.sw.bb9_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb9

entry.sw.bb4_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4

entry.sw.bb_crit_edge37:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge36:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge35:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge34:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge33:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge32:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge32, %entry.sw.bb_crit_edge33, %entry.sw.bb_crit_edge34, %entry.sw.bb_crit_edge35, %entry.sw.bb_crit_edge36, %entry.sw.bb_crit_edge37
  %demod = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 5
  %10 = ptrtoint ptr %demod to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4560, ptr %demod, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge38
  %demod5 = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 5
  %11 = ptrtoint ptr %demod5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %demod5, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %demod7 = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 5
  %12 = ptrtoint ptr %demod7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %demod7, align 4
  %13 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.121, ptr %ctl, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry.sw.bb9_crit_edge, %entry.sw.bb9_crit_edge39, %entry.sw.bb9_crit_edge40
  %demod10 = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 5
  %14 = ptrtoint ptr %demod10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %demod10, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge41, %entry.sw.bb11_crit_edge42
  %demod12 = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 5
  %15 = ptrtoint ptr %demod12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5200, ptr %demod12, align 4
  %16 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.120, ptr %ctl, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %demod15 = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 5
  %17 = ptrtoint ptr %demod15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 5200, ptr %demod15, align 4
  %18 = ptrtoint ptr %ctl to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.121, ptr %ctl, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %demod17 = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl, i32 0, i32 5
  %19 = ptrtoint ptr %demod17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 5380, ptr %demod17, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb14, %sw.bb11, %sw.bb9, %sw.bb6, %sw.bb4, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @em28xx_free_device(ptr noundef %ref) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.em28xx, ptr %ref, i32 0, i32 44
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev1 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.122) #14
  %disconnected = getelementptr inbounds %struct.em28xx, ptr %ref, i32 0, i32 8
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @em28xx_release_resources(ptr noundef %ref)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ts = getelementptr inbounds %struct.em28xx, ptr %ref, i32 0, i32 80
  %4 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %alt_max_pkt_size_isoc = getelementptr inbounds %struct.em28xx, ptr %ref, i32 0, i32 56
  %6 = ptrtoint ptr %alt_max_pkt_size_isoc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alt_max_pkt_size_isoc, align 8
  tail call void @kfree(ptr noundef %7) #11
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  tail call void @kfree(ptr noundef %ref) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @em28xx_release_resources(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 -128
  %lock = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #11
  %media_dev.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 76
  %4 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %media_dev.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.em28xx_unregister_media_device.exit_crit_edge, label %if.then.i

entry.em28xx_unregister_media_device.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %em28xx_unregister_media_device.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @media_device_unregister(ptr noundef nonnull %5) #11
  %6 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %media_dev.i, align 4
  tail call void @media_device_cleanup(ptr noundef %7) #11
  %8 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %media_dev.i, align 4
  tail call void @kfree(ptr noundef %9) #11
  %10 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %media_dev.i, align 4
  br label %em28xx_unregister_media_device.exit

em28xx_unregister_media_device.exit:              ; preds = %if.then.i, %entry.em28xx_unregister_media_device.exit_crit_edge
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %11 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %def_i2c_bus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %em28xx_unregister_media_device.exit.if.end_crit_edge, label %if.then

em28xx_unregister_media_device.exit.if.end_crit_edge: ; preds = %em28xx_unregister_media_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %em28xx_unregister_media_device.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @em28xx_i2c_unregister(ptr noundef %dev, i32 noundef 1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %em28xx_unregister_media_device.exit.if.end_crit_edge
  %call2 = tail call i32 @em28xx_i2c_unregister(ptr noundef %dev, i32 noundef 0) #11
  %ts = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 80
  %13 = ptrtoint ptr %ts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  br i1 %cmp, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_put_dev(ptr noundef %add.ptr.i) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %devno = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 6
  %15 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devno, align 4
  tail call void @_clear_bit(i32 noundef %16, ptr noundef nonnull @em28xx_devused) #11
  tail call void @mutex_unlock(ptr noundef %lock) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_usb_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @em28xx_usb_driver, ptr noundef null, ptr noundef nonnull @.str.127) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @em28xx_usb_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @usb_deregister(ptr noundef nonnull @em28xx_usb_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_i2c_unregister(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_usb_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %3 to i32
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 -128
  %call2 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #11
  br label %do.body

do.body:                                          ; preds = %do.cond7.do.body_crit_edge, %entry
  %call3 = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull @em28xx_devused, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call3)
  %cmp = icmp sgt i32 %call3, 15
  br i1 %cmp, label %do.end, label %do.cond7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %dev6 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.128, i32 noundef 16) #14
  br label %err_no_slot

do.cond7:                                         ; preds = %do.body
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef %call3, ptr noundef nonnull @em28xx_devused) #11
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %do.end9, label %do.cond7.do.body_crit_edge

do.cond7.do.body_crit_edge:                       ; preds = %do.cond7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end9:                                          ; preds = %do.cond7
  %6 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %intf, align 8
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp14 = icmp eq i8 %9, 1
  br i1 %cmp14, label %do.end19, label %if.end29

do.end19:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #13
  %dev20 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 16, i32 7
  %10 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %idVendor, align 8
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv21 = zext i16 %12 to i32
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 16, i32 8
  %13 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %idProduct, align 2
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv23 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev20, ptr noundef nonnull @.str.132, i32 noundef %conv21, i32 noundef %conv23, i32 noundef %conv, i32 noundef 1) #14
  br label %err

if.end29:                                         ; preds = %do.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 6528) #15
  %tobool31.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool31.not, label %if.end29.err_crit_edge, label %if.end33

if.end29.err_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end33:                                         ; preds = %if.end29
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 2
  %17 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_altsetting, align 8
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 4) #11
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !643

kcalloc.exit.thread:                              ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  %alt_max_pkt_size_isoc630 = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 56
  %21 = ptrtoint ptr %alt_max_pkt_size_isoc630 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %alt_max_pkt_size_isoc630, align 8
  br label %if.then37

if.end7.i.i:                                      ; preds = %if.end33
  %22 = extractvalue { i32, i1 } %19, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #16
  %alt_max_pkt_size_isoc = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 56
  %23 = ptrtoint ptr %alt_max_pkt_size_isoc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i.i, ptr %alt_max_pkt_size_isoc, align 8
  %tobool36.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool36.not, label %if.end7.i.i.if.then37_crit_edge, label %for.cond.preheader

if.end7.i.i.if.then37_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

for.cond.preheader:                               ; preds = %if.end7.i.i
  %24 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp40673.not = icmp eq i32 %25, 0
  br i1 %cmp40673.not, label %for.cond.preheader.for.end52_crit_edge, label %for.cond42.preheader.lr.ph

for.cond.preheader.for.end52_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end52

for.cond42.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 4
  %dvb_ep_bulk_ts2.i = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 49
  %dvb_max_pkt_size_isoc_ts2.i = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 60
  %dvb_ep_isoc_ts2.i = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 48
  %dvb_alt_isoc56.i = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 58
  %analog_ep_bulk32.i = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 47
  %dvb_ep_bulk.i = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 51
  %dvb_max_pkt_size_isoc.i = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 59
  %dvb_ep_isoc.i = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 50
  %dev23.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %analog_ep_isoc.i = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 46
  br label %for.cond42.preheader

if.then37:                                        ; preds = %if.end7.i.i.if.then37_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %err

for.cond42.preheader:                             ; preds = %for.end.for.cond42.preheader_crit_edge, %for.cond42.preheader.lr.ph
  %i.0677 = phi i32 [ 0, %for.cond42.preheader.lr.ph ], [ %inc51, %for.end.for.cond42.preheader_crit_edge ]
  %has_dvb.0676 = phi i8 [ 0, %for.cond42.preheader.lr.ph ], [ %has_dvb.1.lcssa, %for.end.for.cond42.preheader_crit_edge ]
  %has_video.0675 = phi i8 [ 0, %for.cond42.preheader.lr.ph ], [ %has_video.1.lcssa, %for.end.for.cond42.preheader_crit_edge ]
  %has_vendor_audio.0674 = phi i8 [ 0, %for.cond42.preheader.lr.ph ], [ %has_vendor_audio.1.lcssa, %for.end.for.cond42.preheader_crit_edge ]
  %26 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %intf, align 8
  %bNumEndpoints661 = getelementptr %struct.usb_host_interface, ptr %27, i32 %i.0677, i32 0, i32 4
  %28 = ptrtoint ptr %bNumEndpoints661 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bNumEndpoints661, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp47663.not = icmp eq i8 %29, 0
  br i1 %cmp47663.not, label %for.cond42.preheader.for.end_crit_edge, label %for.cond42.preheader.for.body49_crit_edge

for.cond42.preheader.for.body49_crit_edge:        ; preds = %for.cond42.preheader
  br label %for.body49

for.cond42.preheader.for.end_crit_edge:           ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body49:                                       ; preds = %em28xx_check_usb_descriptor.exit.for.body49_crit_edge, %for.cond42.preheader.for.body49_crit_edge
  %30 = phi ptr [ %76, %em28xx_check_usb_descriptor.exit.for.body49_crit_edge ], [ %27, %for.cond42.preheader.for.body49_crit_edge ]
  %ep.0670 = phi i32 [ %inc, %em28xx_check_usb_descriptor.exit.for.body49_crit_edge ], [ 0, %for.cond42.preheader.for.body49_crit_edge ]
  %has_dvb.1668 = phi i8 [ %has_dvb.2, %em28xx_check_usb_descriptor.exit.for.body49_crit_edge ], [ %has_dvb.0676, %for.cond42.preheader.for.body49_crit_edge ]
  %has_video.1666 = phi i8 [ %has_video.2, %em28xx_check_usb_descriptor.exit.for.body49_crit_edge ], [ %has_video.0675, %for.cond42.preheader.for.body49_crit_edge ]
  %has_vendor_audio.1664 = phi i8 [ %has_vendor_audio.2, %em28xx_check_usb_descriptor.exit.for.body49_crit_edge ], [ %has_vendor_audio.0674, %for.cond42.preheader.for.body49_crit_edge ]
  %endpoint.i = getelementptr %struct.usb_host_interface, ptr %30, i32 %i.0677, i32 3
  %31 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %endpoint.i, align 4
  %arrayidx1.i = getelementptr %struct.usb_host_endpoint, ptr %32, i32 %ep.0670
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx1.i, i32 0, i32 2
  %33 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %tobool.not.i = icmp sgt i8 %34, -1
  br i1 %tobool.not.i, label %for.body49.em28xx_check_usb_descriptor.exit_crit_edge, label %if.end.i

for.body49.em28xx_check_usb_descriptor.exit_crit_edge: ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #13
  br label %em28xx_check_usb_descriptor.exit

if.end.i:                                         ; preds = %for.body49
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx1.i, i32 0, i32 4
  %35 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 2)
  %36 = load i16, ptr %wMaxPacketSize.i, align 1
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #11
  %conv.i = zext i16 %37 to i32
  %and.i = and i32 %conv.i, 2047
  %38 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %39)
  %cmp.i = icmp eq i32 %39, 3
  %40 = lshr i32 %conv.i, 11
  %and4.i = and i32 %40, 3
  %add.i = add nuw nsw i32 %and4.i, 1
  %mul.i = select i1 %cmp.i, i32 %add.i, i32 1
  %size.0.i = mul nuw nsw i32 %mul.i, %and.i
  %41 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.255)
  switch i8 %34, label %if.end.i.em28xx_check_usb_descriptor.exit_crit_edge [
    i8 -126, label %sw.bb.i
    i8 -125, label %sw.bb18.i
    i8 -124, label %sw.bb25.i
    i8 -123, label %sw.bb47.i
  ]

if.end.i.em28xx_check_usb_descriptor.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %em28xx_check_usb_descriptor.exit

sw.bb.i:                                          ; preds = %if.end.i
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx1.i, i32 0, i32 3
  %42 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %bmAttributes.i.i, align 1
  %trunc.i = trunc i8 %43 to i2
  %44 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.256)
  switch i2 %trunc.i, label %sw.bb.i.em28xx_check_usb_descriptor.exit_crit_edge [
    i2 1, label %if.then9.i
    i2 -2, label %if.then14.i
  ]

sw.bb.i.em28xx_check_usb_descriptor.exit_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %em28xx_check_usb_descriptor.exit

if.then9.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %analog_ep_isoc.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -126, ptr %analog_ep_isoc.i, align 1
  %46 = ptrtoint ptr %alt_max_pkt_size_isoc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %alt_max_pkt_size_isoc, align 8
  %arrayidx11.i = getelementptr i32, ptr %47, i32 %i.0677
  %48 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %size.0.i, ptr %arrayidx11.i, align 4
  br label %em28xx_check_usb_descriptor.exit

if.then14.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %analog_ep_bulk32.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 -126, ptr %analog_ep_bulk32.i, align 2
  br label %em28xx_check_usb_descriptor.exit

sw.bb18.i:                                        ; preds = %if.end.i
  %bmAttributes.i106.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx1.i, i32 0, i32 3
  %50 = ptrtoint ptr %bmAttributes.i106.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bmAttributes.i106.i, align 1
  %52 = and i8 %51, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp.i107.not.i = icmp eq i8 %52, 1
  br i1 %cmp.i107.not.i, label %sw.bb18.i.em28xx_check_usb_descriptor.exit_crit_edge, label %do.end.i

sw.bb18.i.em28xx_check_usb_descriptor.exit_crit_edge: ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %em28xx_check_usb_descriptor.exit

do.end.i:                                         ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23.i, ptr noundef nonnull @.str.182) #14
  br label %em28xx_check_usb_descriptor.exit

sw.bb25.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %has_video.1666)
  %tobool26.not.i = icmp eq i8 %has_video.1666, 0
  br i1 %tobool26.not.i, label %sw.bb25.i.if.else33.i_crit_edge, label %land.lhs.true.i

sw.bb25.i.if.else33.i_crit_edge:                  ; preds = %sw.bb25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else33.i

land.lhs.true.i:                                  ; preds = %sw.bb25.i
  %bmAttributes.i109.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx1.i, i32 0, i32 3
  %53 = ptrtoint ptr %bmAttributes.i109.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %bmAttributes.i109.i, align 1
  %55 = and i8 %54, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %55)
  %cmp.i110.not.i = icmp eq i8 %55, 2
  br i1 %cmp.i110.not.i, label %if.then30.i, label %land.lhs.true.i.if.else33.i_crit_edge

land.lhs.true.i.if.else33.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else33.i

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %analog_ep_bulk32.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 -124, ptr %analog_ep_bulk32.i, align 2
  br label %em28xx_check_usb_descriptor.exit

if.else33.i:                                      ; preds = %land.lhs.true.i.if.else33.i_crit_edge, %sw.bb25.i.if.else33.i_crit_edge
  %bmAttributes.i112.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx1.i, i32 0, i32 3
  %57 = ptrtoint ptr %bmAttributes.i112.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bmAttributes.i112.i, align 1
  %59 = and i8 %58, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %59)
  %cmp.i113.not.i = icmp eq i8 %59, 1
  br i1 %cmp.i113.not.i, label %if.then36.i, label %if.else43.i

if.then36.i:                                      ; preds = %if.else33.i
  %60 = ptrtoint ptr %dvb_max_pkt_size_isoc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dvb_max_pkt_size_isoc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.i, i32 %61)
  %cmp37.i = icmp ugt i32 %size.0.i, %61
  br i1 %cmp37.i, label %if.then39.i, label %if.then36.i.em28xx_check_usb_descriptor.exit_crit_edge

if.then36.i.em28xx_check_usb_descriptor.exit_crit_edge: ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %em28xx_check_usb_descriptor.exit

if.then39.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #13
  %62 = ptrtoint ptr %dvb_ep_isoc.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 -124, ptr %dvb_ep_isoc.i, align 1
  %63 = ptrtoint ptr %dvb_max_pkt_size_isoc.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %size.0.i, ptr %dvb_max_pkt_size_isoc.i, align 4
  %64 = ptrtoint ptr %dvb_alt_isoc56.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %i.0677, ptr %dvb_alt_isoc56.i, align 8
  br label %em28xx_check_usb_descriptor.exit

if.else43.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %dvb_ep_bulk.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 -124, ptr %dvb_ep_bulk.i, align 2
  br label %em28xx_check_usb_descriptor.exit

sw.bb47.i:                                        ; preds = %if.end.i
  %bmAttributes.i115.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx1.i, i32 0, i32 3
  %66 = ptrtoint ptr %bmAttributes.i115.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %bmAttributes.i115.i, align 1
  %68 = and i8 %67, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %68)
  %cmp.i116.not.i = icmp eq i8 %68, 1
  br i1 %cmp.i116.not.i, label %if.then50.i, label %if.else58.i

if.then50.i:                                      ; preds = %sw.bb47.i
  %69 = ptrtoint ptr %dvb_max_pkt_size_isoc_ts2.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dvb_max_pkt_size_isoc_ts2.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.i, i32 %70)
  %cmp51.i = icmp ugt i32 %size.0.i, %70
  br i1 %cmp51.i, label %if.then53.i, label %if.then50.i.em28xx_check_usb_descriptor.exit_crit_edge

if.then50.i.em28xx_check_usb_descriptor.exit_crit_edge: ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %em28xx_check_usb_descriptor.exit

if.then53.i:                                      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %dvb_ep_isoc_ts2.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -123, ptr %dvb_ep_isoc_ts2.i, align 1
  %72 = ptrtoint ptr %dvb_max_pkt_size_isoc_ts2.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %size.0.i, ptr %dvb_max_pkt_size_isoc_ts2.i, align 8
  %73 = ptrtoint ptr %dvb_alt_isoc56.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %i.0677, ptr %dvb_alt_isoc56.i, align 8
  br label %em28xx_check_usb_descriptor.exit

if.else58.i:                                      ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #13
  %74 = ptrtoint ptr %dvb_ep_bulk_ts2.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 -123, ptr %dvb_ep_bulk_ts2.i, align 4
  br label %em28xx_check_usb_descriptor.exit

em28xx_check_usb_descriptor.exit:                 ; preds = %if.else58.i, %if.then53.i, %if.then50.i.em28xx_check_usb_descriptor.exit_crit_edge, %if.else43.i, %if.then39.i, %if.then36.i.em28xx_check_usb_descriptor.exit_crit_edge, %if.then30.i, %do.end.i, %sw.bb18.i.em28xx_check_usb_descriptor.exit_crit_edge, %if.then14.i, %if.then9.i, %sw.bb.i.em28xx_check_usb_descriptor.exit_crit_edge, %if.end.i.em28xx_check_usb_descriptor.exit_crit_edge, %for.body49.em28xx_check_usb_descriptor.exit_crit_edge
  %has_vendor_audio.2 = phi i8 [ %has_vendor_audio.1664, %for.body49.em28xx_check_usb_descriptor.exit_crit_edge ], [ %has_vendor_audio.1664, %if.end.i.em28xx_check_usb_descriptor.exit_crit_edge ], [ %has_vendor_audio.1664, %if.then53.i ], [ %has_vendor_audio.1664, %if.then50.i.em28xx_check_usb_descriptor.exit_crit_edge ], [ %has_vendor_audio.1664, %if.else58.i ], [ %has_vendor_audio.1664, %if.then39.i ], [ %has_vendor_audio.1664, %if.then36.i.em28xx_check_usb_descriptor.exit_crit_edge ], [ %has_vendor_audio.1664, %if.else43.i ], [ %has_vendor_audio.1664, %if.then30.i ], [ %has_vendor_audio.1664, %do.end.i ], [ %has_vendor_audio.1664, %sw.bb.i.em28xx_check_usb_descriptor.exit_crit_edge ], [ %has_vendor_audio.1664, %if.then14.i ], [ %has_vendor_audio.1664, %if.then9.i ], [ 1, %sw.bb18.i.em28xx_check_usb_descriptor.exit_crit_edge ]
  %has_video.2 = phi i8 [ %has_video.1666, %for.body49.em28xx_check_usb_descriptor.exit_crit_edge ], [ %has_video.1666, %if.end.i.em28xx_check_usb_descriptor.exit_crit_edge ], [ %has_video.1666, %if.then53.i ], [ %has_video.1666, %if.then50.i.em28xx_check_usb_descriptor.exit_crit_edge ], [ %has_video.1666, %if.else58.i ], [ %has_video.1666, %if.then39.i ], [ %has_video.1666, %if.then36.i.em28xx_check_usb_descriptor.exit_crit_edge ], [ %has_video.1666, %if.else43.i ], [ %has_video.1666, %if.then30.i ], [ %has_video.1666, %do.end.i ], [ 1, %sw.bb.i.em28xx_check_usb_descriptor.exit_crit_edge ], [ 1, %if.then14.i ], [ 1, %if.then9.i ], [ %has_video.1666, %sw.bb18.i.em28xx_check_usb_descriptor.exit_crit_edge ]
  %has_dvb.2 = phi i8 [ %has_dvb.1668, %for.body49.em28xx_check_usb_descriptor.exit_crit_edge ], [ %has_dvb.1668, %if.end.i.em28xx_check_usb_descriptor.exit_crit_edge ], [ %has_dvb.1668, %if.then53.i ], [ %has_dvb.1668, %if.then50.i.em28xx_check_usb_descriptor.exit_crit_edge ], [ %has_dvb.1668, %if.else58.i ], [ 1, %if.then39.i ], [ %has_dvb.1668, %if.then36.i.em28xx_check_usb_descriptor.exit_crit_edge ], [ 1, %if.else43.i ], [ %has_dvb.1668, %if.then30.i ], [ %has_dvb.1668, %do.end.i ], [ %has_dvb.1668, %sw.bb.i.em28xx_check_usb_descriptor.exit_crit_edge ], [ %has_dvb.1668, %if.then14.i ], [ %has_dvb.1668, %if.then9.i ], [ %has_dvb.1668, %sw.bb18.i.em28xx_check_usb_descriptor.exit_crit_edge ]
  %inc = add nuw nsw i32 %ep.0670, 1
  %75 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %intf, align 8
  %bNumEndpoints = getelementptr %struct.usb_host_interface, ptr %76, i32 %i.0677, i32 0, i32 4
  %77 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %bNumEndpoints, align 4
  %conv46 = zext i8 %78 to i32
  %cmp47 = icmp ult i32 %inc, %conv46
  br i1 %cmp47, label %em28xx_check_usb_descriptor.exit.for.body49_crit_edge, label %em28xx_check_usb_descriptor.exit.for.end_crit_edge

em28xx_check_usb_descriptor.exit.for.end_crit_edge: ; preds = %em28xx_check_usb_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

em28xx_check_usb_descriptor.exit.for.body49_crit_edge: ; preds = %em28xx_check_usb_descriptor.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body49

for.end:                                          ; preds = %em28xx_check_usb_descriptor.exit.for.end_crit_edge, %for.cond42.preheader.for.end_crit_edge
  %has_vendor_audio.1.lcssa = phi i8 [ %has_vendor_audio.0674, %for.cond42.preheader.for.end_crit_edge ], [ %has_vendor_audio.2, %em28xx_check_usb_descriptor.exit.for.end_crit_edge ]
  %has_video.1.lcssa = phi i8 [ %has_video.0675, %for.cond42.preheader.for.end_crit_edge ], [ %has_video.2, %em28xx_check_usb_descriptor.exit.for.end_crit_edge ]
  %has_dvb.1.lcssa = phi i8 [ %has_dvb.0676, %for.cond42.preheader.for.end_crit_edge ], [ %has_dvb.2, %em28xx_check_usb_descriptor.exit.for.end_crit_edge ]
  %inc51 = add nuw i32 %i.0677, 1
  %79 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_altsetting, align 8
  %cmp40 = icmp ult i32 %inc51, %80
  br i1 %cmp40, label %for.end.for.cond42.preheader_crit_edge, label %for.end.for.end52_crit_edge

for.end.for.end52_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end52

for.end.for.cond42.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond42.preheader

for.end52:                                        ; preds = %for.end.for.end52_crit_edge, %for.cond.preheader.for.end52_crit_edge
  %has_vendor_audio.0.lcssa = phi i8 [ 0, %for.cond.preheader.for.end52_crit_edge ], [ %has_vendor_audio.1.lcssa, %for.end.for.end52_crit_edge ]
  %has_video.0.lcssa = phi i8 [ 0, %for.cond.preheader.for.end52_crit_edge ], [ %has_video.1.lcssa, %for.end.for.end52_crit_edge ]
  %has_dvb.0.lcssa = phi i8 [ 0, %for.cond.preheader.for.end52_crit_edge ], [ %has_dvb.1.lcssa, %for.end.for.end52_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %has_vendor_audio.0.lcssa)
  %tobool53.not = icmp eq i8 %has_vendor_audio.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %has_video.0.lcssa)
  %tobool55.not = icmp eq i8 %has_video.0.lcssa, 0
  %or.cond = select i1 %tobool53.not, i1 %tobool55.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %has_dvb.0.lcssa)
  %tobool58.not = icmp eq i8 %has_dvb.0.lcssa, 0
  %or.cond654 = select i1 %or.cond, i1 %tobool58.not, i1 false
  br i1 %or.cond654, label %for.end52.err_free_crit_edge, label %if.end61

for.end52.err_free_crit_edge:                     ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

if.end61:                                         ; preds = %for.end52
  %speed62 = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 4
  %81 = ptrtoint ptr %speed62 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %speed62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %82)
  %83 = icmp ult i32 %82, 4
  br i1 %83, label %switch.lookup, label %if.end61.do.end67_crit_edge

if.end61.do.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end67

switch.lookup:                                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.em28xx_usb_probe, i32 0, i32 %82
  %84 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %84)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end67

do.end67:                                         ; preds = %switch.lookup, %if.end61.do.end67_crit_edge
  %speed.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.137, %if.end61.do.end67_crit_edge ]
  %dev68 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  %manufacturer = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 32
  %85 = ptrtoint ptr %manufacturer to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %manufacturer, align 4
  %tobool69.not = icmp eq ptr %86, null
  %spec.select = select i1 %tobool69.not, ptr @.str.141, ptr %86
  %product = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 31
  %87 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %product, align 8
  %tobool71.not = icmp eq ptr %88, null
  %cond76 = select i1 %tobool71.not, ptr @.str.141, ptr %88
  %idVendor78 = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 16, i32 7
  %89 = ptrtoint ptr %idVendor78 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %idVendor78, align 8
  %91 = tail call i16 @llvm.bswap.i16(i16 %90)
  %conv79 = zext i16 %91 to i32
  %idProduct81 = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 16, i32 8
  %92 = ptrtoint ptr %idProduct81 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %idProduct81, align 2
  %94 = tail call i16 @llvm.bswap.i16(i16 %93)
  %conv82 = zext i16 %94 to i32
  %95 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %intf, align 8
  %bInterfaceNumber85 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %96, i32 0, i32 2
  %97 = ptrtoint ptr %bInterfaceNumber85 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %bInterfaceNumber85, align 2
  %conv86 = zext i8 %98 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev68, ptr noundef nonnull @.str.139, ptr noundef nonnull %spec.select, ptr noundef nonnull %cond76, ptr noundef nonnull %speed.0, i32 noundef %conv79, i32 noundef %conv82, i32 noundef %conv, i32 noundef %conv86) #14
  %99 = ptrtoint ptr %speed62 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %speed62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %100)
  %cmp88.not = icmp eq i32 %100, 3
  br i1 %cmp88.not, label %do.end67.if.end101_crit_edge, label %land.lhs.true

do.end67.if.end101_crit_edge:                     ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

land.lhs.true:                                    ; preds = %do.end67
  %101 = load i32, ptr @disable_usb_speed_check, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %cmp90 = icmp eq i32 %101, 0
  br i1 %cmp90, label %do.end95, label %land.lhs.true.if.end101_crit_edge

land.lhs.true.if.end101_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end101

do.end95:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.143) #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.146) #14
  br label %err_free

if.end101:                                        ; preds = %land.lhs.true.if.end101_crit_edge, %do.end67.if.end101_crit_edge
  %devno = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 6
  %102 = ptrtoint ptr %devno to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %call3, ptr %devno, align 4
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %103 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %driver_info, align 4
  %model = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 5
  %105 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %model, align 8
  %alt = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 52
  %106 = ptrtoint ptr %alt to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %alt, align 8
  %tobool53.not.not = xor i1 %tobool53.not, true
  %or.cond658 = select i1 %tobool53.not.not, i1 %tobool55.not, i1 false
  %107 = select i1 %or.cond658, i1 %tobool58.not, i1 false
  %108 = select i1 %107, i8 16, i8 0
  %is_audio_only634 = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 8
  %109 = ptrtoint ptr %is_audio_only634 to i32
  call void @__asan_load1_noabort(i32 %109)
  %bf.load636 = load i8, ptr %is_audio_only634, align 4
  %bf.clear = and i8 %bf.load636, -49
  %bf.shl113 = shl nuw nsw i8 %has_video.0.lcssa, 5
  %bf.set = or i8 %108, %bf.shl113
  %bf.set115 = or i8 %bf.set, %bf.clear
  store i8 %bf.set115, ptr %is_audio_only634, align 4
  %ifnum118 = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 45
  %110 = ptrtoint ptr %ifnum118 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %3, ptr %ifnum118, align 8
  %ts = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 80
  %111 = ptrtoint ptr %ts to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %ts, align 4
  %name = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 11
  %112 = call ptr @memcpy(ptr %name, ptr @.str.127, i32 7)
  %dev_next = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 79
  %113 = ptrtoint ptr %dev_next to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %dev_next, align 8
  br i1 %tobool53.not, label %if.end101.if.end126_crit_edge, label %do.end124

if.end101.if.end126_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end126

do.end124:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev68, ptr noundef nonnull @.str.149, i32 noundef %conv) #14
  %usb_audio_type = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 10
  %114 = ptrtoint ptr %usb_audio_type to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2, ptr %usb_audio_type, align 4
  br label %if.end126

if.end126:                                        ; preds = %do.end124, %if.end101.if.end126_crit_edge
  %config = getelementptr inbounds %struct.usb_device, ptr %call2, i32 0, i32 19
  %115 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %config, align 8
  %bNumInterfaces = getelementptr inbounds %struct.usb_config_descriptor, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %bNumInterfaces to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %bNumInterfaces, align 4
  %conv129 = zext i8 %118 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp130682.not = icmp eq i8 %118, 0
  br i1 %cmp130682.not, label %if.end126.for.end154_crit_edge, label %if.end126.for.body132_crit_edge

if.end126.for.body132_crit_edge:                  ; preds = %if.end126
  br label %for.body132

if.end126.for.end154_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end154

for.cond127:                                      ; preds = %for.body132
  %inc153 = add nuw nsw i32 %i.1683, 1
  %exitcond.not = icmp eq i32 %inc153, %conv129
  br i1 %exitcond.not, label %for.cond127.for.end154_crit_edge, label %for.cond127.for.body132_crit_edge

for.cond127.for.body132_crit_edge:                ; preds = %for.cond127
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body132

for.cond127.for.end154_crit_edge:                 ; preds = %for.cond127
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end154

for.body132:                                      ; preds = %for.cond127.for.body132_crit_edge, %if.end126.for.body132_crit_edge
  %i.1683 = phi i32 [ %inc153, %for.cond127.for.body132_crit_edge ], [ 0, %if.end126.for.body132_crit_edge ]
  %arrayidx134 = getelementptr %struct.usb_host_config, ptr %116, i32 0, i32 3, i32 %i.1683
  %119 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx134, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 8
  %bInterfaceClass138 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %bInterfaceClass138 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %bInterfaceClass138, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %124)
  %cmp140 = icmp eq i8 %124, 1
  br i1 %cmp140, label %if.then142, label %for.cond127

if.then142:                                       ; preds = %for.body132
  br i1 %tobool53.not, label %if.then142.cleanup_crit_edge, label %do.end147

if.then142.cleanup_crit_edge:                     ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end147:                                        ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.152) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end147, %if.then142.cleanup_crit_edge
  %usb_audio_type150 = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 10
  %125 = ptrtoint ptr %usb_audio_type150 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %usb_audio_type150, align 4
  br label %for.end154

for.end154:                                       ; preds = %cleanup, %for.cond127.for.end154_crit_edge, %if.end126.for.end154_crit_edge
  br i1 %tobool55.not, label %for.end154.if.end167_crit_edge, label %do.end159

for.end154.if.end167_crit_edge:                   ; preds = %for.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end167

do.end159:                                        ; preds = %for.end154
  call void @__sanitizer_cov_trace_pc() #13
  %analog_ep_bulk = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 47
  %126 = ptrtoint ptr %analog_ep_bulk to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %analog_ep_bulk, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool162.not = icmp eq i8 %127, 0
  %cond163 = select i1 %tobool162.not, ptr @.str.141, ptr @.str.157
  %analog_ep_isoc = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 46
  %128 = ptrtoint ptr %analog_ep_isoc to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %analog_ep_isoc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool165.not = icmp eq i8 %129, 0
  %cond166 = select i1 %tobool165.not, ptr @.str.141, ptr @.str.158
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev68, ptr noundef nonnull @.str.155, i32 noundef %conv, ptr noundef nonnull %cond163, ptr noundef nonnull %cond166) #14
  br label %if.end167

if.end167:                                        ; preds = %do.end159, %for.end154.if.end167_crit_edge
  br i1 %tobool58.not, label %if.end167.if.end180_crit_edge, label %do.end172

if.end167.if.end180_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end180

do.end172:                                        ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #13
  %dvb_ep_bulk = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 51
  %130 = ptrtoint ptr %dvb_ep_bulk to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %dvb_ep_bulk, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool175.not = icmp eq i8 %131, 0
  %cond176 = select i1 %tobool175.not, ptr @.str.141, ptr @.str.157
  %dvb_ep_isoc = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 50
  %132 = ptrtoint ptr %dvb_ep_isoc to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %dvb_ep_isoc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool178.not = icmp eq i8 %133, 0
  %cond179 = select i1 %tobool178.not, ptr @.str.141, ptr @.str.158
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev68, ptr noundef nonnull @.str.160, i32 noundef %conv, ptr noundef nonnull %cond176, ptr noundef nonnull %cond179) #14
  br label %if.end180

if.end180:                                        ; preds = %do.end172, %if.end167.if.end180_crit_edge
  %134 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %num_altsetting, align 8
  %num_alt = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 55
  %136 = ptrtoint ptr %num_alt to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %135, ptr %num_alt, align 4
  %arrayidx182 = getelementptr [16 x i32], ptr @card, i32 0, i32 %call3
  %137 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 107, i32 %138)
  %cmp183 = icmp ult i32 %138, 107
  br i1 %cmp183, label %if.then185, label %if.end180.if.end188_crit_edge

if.end180.if.end188_crit_edge:                    ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end188

if.then185:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #13
  %139 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %model, align 8
  br label %if.end188

if.end188:                                        ; preds = %if.then185, %if.end180.if.end188_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %140 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 35
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.162, ptr noundef nonnull @em28xx_usb_probe.__key) #11
  %call192 = tail call fastcc i32 @em28xx_init_dev(ptr noundef nonnull %call7.i.i, ptr noundef %call2, ptr noundef %intf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call192)
  %tobool193.not = icmp eq i32 %call192, 0
  br i1 %tobool193.not, label %if.end195, label %if.end188.err_free_crit_edge

if.end188.err_free_crit_edge:                     ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

if.end195:                                        ; preds = %if.end188
  %141 = load i32, ptr @usb_xfer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp196 = icmp slt i32 %141, 0
  br i1 %cmp196, label %if.then198, label %if.else204

if.then198:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #13
  %142 = ptrtoint ptr %is_audio_only634 to i32
  call void @__asan_load1_noabort(i32 %142)
  %bf.load199 = load i8, ptr %is_audio_only634, align 4
  %143 = lshr i8 %bf.load199, 3
  %.lobit657 = and i8 %143, 1
  %144 = zext i8 %.lobit657 to i32
  br label %if.end207

if.else204:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp205 = icmp ne i32 %141, 0
  %conv206 = zext i1 %cmp205 to i32
  br label %if.end207

if.end207:                                        ; preds = %if.else204, %if.then198
  %try_bulk.0 = phi i32 [ %conv206, %if.else204 ], [ %144, %if.then198 ]
  br i1 %tobool55.not, label %if.end207.if.end225_crit_edge, label %land.lhs.true210

if.end207.if.end225_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225

land.lhs.true210:                                 ; preds = %if.end207
  %decoder = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 12, i32 15
  %145 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %decoder, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp211 = icmp eq i32 %146, 0
  br i1 %cmp211, label %land.lhs.true213, label %land.lhs.true210.if.end225_crit_edge

land.lhs.true210.if.end225_crit_edge:             ; preds = %land.lhs.true210
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225

land.lhs.true213:                                 ; preds = %land.lhs.true210
  %em28xx_sensor = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 13
  %147 = ptrtoint ptr %em28xx_sensor to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %em28xx_sensor, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp214 = icmp eq i32 %148, 0
  br i1 %cmp214, label %do.end219, label %land.lhs.true213.if.end225_crit_edge

land.lhs.true213.if.end225_crit_edge:             ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end225

do.end219:                                        ; preds = %land.lhs.true213
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.164) #14
  %149 = ptrtoint ptr %is_audio_only634 to i32
  call void @__asan_load1_noabort(i32 %149)
  %bf.load222 = load i8, ptr %is_audio_only634, align 4
  %bf.clear223 = and i8 %bf.load222, -33
  store i8 %bf.clear223, ptr %is_audio_only634, align 4
  br label %if.end225

if.end225:                                        ; preds = %do.end219, %land.lhs.true213.if.end225_crit_edge, %land.lhs.true210.if.end225_crit_edge, %if.end207.if.end225_crit_edge
  %tobool246.not = phi i1 [ true, %do.end219 ], [ false, %land.lhs.true213.if.end225_crit_edge ], [ false, %land.lhs.true210.if.end225_crit_edge ], [ true, %if.end207.if.end225_crit_edge ]
  %has_dual_ts = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 12, i32 10
  %150 = ptrtoint ptr %has_dual_ts to i32
  call void @__asan_load2_noabort(i32 %150)
  %bf.load227 = load i16, ptr %has_dual_ts, align 8
  %151 = and i16 %bf.load227, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %151)
  %tobool231.not = icmp eq i16 %151, 0
  br i1 %tobool231.not, label %if.end225.if.end245_crit_edge, label %land.lhs.true232

if.end225.if.end245_crit_edge:                    ; preds = %if.end225
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end245

land.lhs.true232:                                 ; preds = %if.end225
  %tuner_type = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 18
  %152 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %tuner_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %153)
  %cmp233.not = icmp eq i32 %153, 4
  br i1 %cmp233.not, label %lor.lhs.false235, label %land.lhs.true232.if.end245.thread_crit_edge

land.lhs.true232.if.end245.thread_crit_edge:      ; preds = %land.lhs.true232
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end245.thread

lor.lhs.false235:                                 ; preds = %land.lhs.true232
  %154 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %model, align 8
  %input = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %155, i32 17
  %156 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %input, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool239.not = icmp eq i32 %157, 0
  br i1 %tobool239.not, label %lor.lhs.false235.if.end245_crit_edge, label %lor.lhs.false235.if.end245.thread_crit_edge

lor.lhs.false235.if.end245.thread_crit_edge:      ; preds = %lor.lhs.false235
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end245.thread

lor.lhs.false235.if.end245_crit_edge:             ; preds = %lor.lhs.false235
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end245

if.end245.thread:                                 ; preds = %lor.lhs.false235.if.end245.thread_crit_edge, %land.lhs.true232.if.end245.thread_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.167) #14
  br label %if.end271

if.end245:                                        ; preds = %lor.lhs.false235.if.end245_crit_edge, %if.end225.if.end245_crit_edge
  br i1 %tobool246.not, label %if.end245.if.end271_crit_edge, label %if.then247

if.end245.if.end271_crit_edge:                    ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end271

if.then247:                                       ; preds = %if.end245
  %analog_ep_isoc248 = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 46
  %158 = ptrtoint ptr %analog_ep_isoc248 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %analog_ep_isoc248, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool249.not = icmp eq i8 %159, 0
  br i1 %tobool249.not, label %if.then247.if.then256_crit_edge, label %lor.lhs.false250

if.then247.if.then256_crit_edge:                  ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then256

lor.lhs.false250:                                 ; preds = %if.then247
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try_bulk.0)
  %tobool251.not = icmp eq i32 %try_bulk.0, 0
  br i1 %tobool251.not, label %lor.lhs.false250.do.end263_crit_edge, label %land.lhs.true252

lor.lhs.false250.do.end263_crit_edge:             ; preds = %lor.lhs.false250
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end263

land.lhs.true252:                                 ; preds = %lor.lhs.false250
  %analog_ep_bulk253 = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 47
  %160 = ptrtoint ptr %analog_ep_bulk253 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %analog_ep_bulk253, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool255.not = icmp eq i8 %161, 0
  br i1 %tobool255.not, label %land.lhs.true252.do.end263_crit_edge, label %land.lhs.true252.if.then256_crit_edge

land.lhs.true252.if.then256_crit_edge:            ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then256

land.lhs.true252.do.end263_crit_edge:             ; preds = %land.lhs.true252
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end263

if.then256:                                       ; preds = %land.lhs.true252.if.then256_crit_edge, %if.then247.if.then256_crit_edge
  %analog_xfer_bulk = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 57
  %162 = ptrtoint ptr %analog_xfer_bulk to i32
  call void @__asan_load1_noabort(i32 %162)
  %bf.load257 = load i8, ptr %analog_xfer_bulk, align 4
  %bf.set259 = or i8 %bf.load257, -128
  store i8 %bf.set259, ptr %analog_xfer_bulk, align 4
  br label %do.end263

do.end263:                                        ; preds = %if.then256, %land.lhs.true252.do.end263_crit_edge, %lor.lhs.false250.do.end263_crit_edge
  %analog_xfer_bulk265 = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 57
  %163 = ptrtoint ptr %analog_xfer_bulk265 to i32
  call void @__asan_load1_noabort(i32 %163)
  %bf.load266 = load i8, ptr %analog_xfer_bulk265, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load266)
  %tobool269.not = icmp sgt i8 %bf.load266, -1
  %cond270 = select i1 %tobool269.not, ptr @.str.173, ptr @.str.172
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev68, ptr noundef nonnull @.str.170, ptr noundef nonnull %cond270) #14
  br label %if.end271

if.end271:                                        ; preds = %do.end263, %if.end245.if.end271_crit_edge, %if.end245.thread
  %tobool246.not645 = phi i1 [ true, %if.end245.thread ], [ false, %do.end263 ], [ true, %if.end245.if.end271_crit_edge ]
  br i1 %tobool58.not, label %if.end271.if.end297_crit_edge, label %if.then273

if.end271.if.end297_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end297

if.then273:                                       ; preds = %if.end271
  %dvb_ep_isoc274 = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 50
  %164 = ptrtoint ptr %dvb_ep_isoc274 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %dvb_ep_isoc274, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool275.not = icmp eq i8 %165, 0
  br i1 %tobool275.not, label %if.then273.if.then282_crit_edge, label %lor.lhs.false276

if.then273.if.then282_crit_edge:                  ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then282

lor.lhs.false276:                                 ; preds = %if.then273
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try_bulk.0)
  %tobool277.not = icmp eq i32 %try_bulk.0, 0
  br i1 %tobool277.not, label %lor.lhs.false276.do.end289_crit_edge, label %land.lhs.true278

lor.lhs.false276.do.end289_crit_edge:             ; preds = %lor.lhs.false276
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end289

land.lhs.true278:                                 ; preds = %lor.lhs.false276
  %dvb_ep_bulk279 = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 51
  %166 = ptrtoint ptr %dvb_ep_bulk279 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %dvb_ep_bulk279, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool281.not = icmp eq i8 %167, 0
  br i1 %tobool281.not, label %land.lhs.true278.do.end289_crit_edge, label %land.lhs.true278.if.then282_crit_edge

land.lhs.true278.if.then282_crit_edge:            ; preds = %land.lhs.true278
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then282

land.lhs.true278.do.end289_crit_edge:             ; preds = %land.lhs.true278
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end289

if.then282:                                       ; preds = %land.lhs.true278.if.then282_crit_edge, %if.then273.if.then282_crit_edge
  %dvb_xfer_bulk = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 61
  %168 = ptrtoint ptr %dvb_xfer_bulk to i32
  call void @__asan_load1_noabort(i32 %168)
  %bf.load283 = load i8, ptr %dvb_xfer_bulk, align 4
  %bf.set285 = or i8 %bf.load283, -128
  store i8 %bf.set285, ptr %dvb_xfer_bulk, align 4
  br label %do.end289

do.end289:                                        ; preds = %if.then282, %land.lhs.true278.do.end289_crit_edge, %lor.lhs.false276.do.end289_crit_edge
  %dvb_xfer_bulk291 = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 61
  %169 = ptrtoint ptr %dvb_xfer_bulk291 to i32
  call void @__asan_load1_noabort(i32 %169)
  %bf.load292 = load i8, ptr %dvb_xfer_bulk291, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load292)
  %tobool295.not = icmp sgt i8 %bf.load292, -1
  %cond296 = select i1 %tobool295.not, ptr @.str.173, ptr @.str.172
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev68, ptr noundef nonnull @.str.175, ptr noundef nonnull %cond296) #14
  br label %if.end297

if.end297:                                        ; preds = %do.end289, %if.end271.if.end297_crit_edge
  %170 = ptrtoint ptr %has_dual_ts to i32
  call void @__asan_load2_noabort(i32 %170)
  %bf.load300 = load i16, ptr %has_dual_ts, align 8
  %171 = and i16 %bf.load300, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %171)
  %tobool304.not = icmp eq i16 %171, 0
  br i1 %tobool304.not, label %if.end297.if.end450_crit_edge, label %land.lhs.true305

if.end297.if.end450_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end450

land.lhs.true305:                                 ; preds = %if.end297
  %call306 = tail call fastcc i32 @em28xx_duplicate_dev(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call306)
  %cmp307 = icmp eq i32 %call306, 0
  br i1 %cmp307, label %if.then309, label %land.lhs.true305.if.end450_crit_edge

land.lhs.true305.if.end450_crit_edge:             ; preds = %land.lhs.true305
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end450

if.then309:                                       ; preds = %land.lhs.true305
  %172 = ptrtoint ptr %dev_next to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev_next, align 8
  %ts311 = getelementptr inbounds %struct.em28xx, ptr %173, i32 0, i32 80
  %174 = ptrtoint ptr %ts311 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 1, ptr %ts311, align 4
  %175 = load ptr, ptr %dev_next, align 8
  %alt313 = getelementptr inbounds %struct.em28xx, ptr %175, i32 0, i32 52
  %176 = ptrtoint ptr %alt313 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 -1, ptr %alt313, align 8
  %177 = load ptr, ptr %dev_next, align 8
  %is_audio_only327646 = getelementptr inbounds %struct.em28xx, ptr %177, i32 0, i32 8
  %178 = select i1 %tobool246.not645, i1 %tobool58.not, i1 false
  %spec.select697 = select i1 %178, i8 16, i8 0
  %179 = select i1 %tobool53.not, i8 0, i8 %spec.select697
  %180 = ptrtoint ptr %is_audio_only327646 to i32
  call void @__asan_load1_noabort(i32 %180)
  %bf.load328649 = load i8, ptr %is_audio_only327646, align 4
  %bf.clear331 = and i8 %bf.load328649, -17
  %bf.set332 = or i8 %bf.clear331, %179
  store i8 %bf.set332, ptr %is_audio_only327646, align 4
  %181 = load ptr, ptr %dev_next, align 8
  %has_video335 = getelementptr inbounds %struct.em28xx, ptr %181, i32 0, i32 8
  %182 = ptrtoint ptr %has_video335 to i32
  call void @__asan_load1_noabort(i32 %182)
  %bf.load336 = load i8, ptr %has_video335, align 4
  %bf.clear337 = and i8 %bf.load336, -33
  store i8 %bf.clear337, ptr %has_video335, align 4
  %183 = load ptr, ptr %dev_next, align 8
  %ifnum341 = getelementptr inbounds %struct.em28xx, ptr %183, i32 0, i32 45
  %184 = ptrtoint ptr %ifnum341 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %3, ptr %ifnum341, align 8
  %185 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %driver_info, align 4
  %187 = load ptr, ptr %dev_next, align 8
  %model344 = getelementptr inbounds %struct.em28xx, ptr %187, i32 0, i32 5
  %188 = ptrtoint ptr %model344 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %186, ptr %model344, align 8
  %189 = load ptr, ptr %dev_next, align 8
  %lock347 = getelementptr inbounds %struct.em28xx, ptr %189, i32 0, i32 35
  tail call void @__mutex_init(ptr noundef %lock347, ptr noundef nonnull @.str.178, ptr noundef nonnull @em28xx_usb_probe.__key.177) #11
  %190 = ptrtoint ptr %dev_next to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %dev_next, align 8
  %call353 = tail call fastcc i32 @em28xx_init_dev(ptr noundef %191, ptr noundef %call2, ptr noundef %intf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call353)
  %tobool354.not = icmp eq i32 %call353, 0
  br i1 %tobool354.not, label %if.end356, label %if.then309.err_free_crit_edge

if.then309.err_free_crit_edge:                    ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_free

if.end356:                                        ; preds = %if.then309
  %192 = ptrtoint ptr %dev_next to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev_next, align 8
  %ir_codes = getelementptr inbounds %struct.em28xx, ptr %193, i32 0, i32 12, i32 19
  %194 = ptrtoint ptr %ir_codes to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr null, ptr %ir_codes, align 4
  %195 = load ptr, ptr %dev_next, align 8
  %has_ir_i2c = getelementptr inbounds %struct.em28xx, ptr %195, i32 0, i32 12, i32 10
  %196 = ptrtoint ptr %has_ir_i2c to i32
  call void @__asan_load2_noabort(i32 %196)
  %bf.load361 = load i16, ptr %has_ir_i2c, align 8
  %bf.clear362 = and i16 %bf.load361, -129
  store i16 %bf.clear362, ptr %has_ir_i2c, align 8
  %197 = load i32, ptr @usb_xfer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp364 = icmp slt i32 %197, 0
  br i1 %cmp364, label %if.then366, label %if.else377

if.then366:                                       ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #13
  %198 = ptrtoint ptr %dev_next to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev_next, align 8
  %is_webcam368 = getelementptr inbounds %struct.em28xx, ptr %199, i32 0, i32 8
  %200 = ptrtoint ptr %is_webcam368 to i32
  call void @__asan_load1_noabort(i32 %200)
  %bf.load369 = load i8, ptr %is_webcam368, align 4
  %201 = lshr i8 %bf.load369, 3
  %.lobit = and i8 %201, 1
  %202 = zext i8 %.lobit to i32
  br label %if.end380

if.else377:                                       ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp378 = icmp ne i32 %197, 0
  %conv379 = zext i1 %cmp378 to i32
  br label %if.end380

if.end380:                                        ; preds = %if.else377, %if.then366
  %try_bulk.1 = phi i32 [ %conv379, %if.else377 ], [ %202, %if.then366 ]
  br i1 %tobool58.not, label %if.end380.if.end408_crit_edge, label %if.then382

if.end380.if.end408_crit_edge:                    ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end408

if.then382:                                       ; preds = %if.end380
  %dvb_ep_isoc_ts2 = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 48
  %203 = ptrtoint ptr %dvb_ep_isoc_ts2 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %dvb_ep_isoc_ts2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool383.not = icmp eq i8 %204, 0
  br i1 %tobool383.not, label %if.then382.if.then389_crit_edge, label %lor.lhs.false384

if.then382.if.then389_crit_edge:                  ; preds = %if.then382
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then389

lor.lhs.false384:                                 ; preds = %if.then382
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %try_bulk.1)
  %tobool385.not = icmp eq i32 %try_bulk.1, 0
  br i1 %tobool385.not, label %lor.lhs.false384.do.end398_crit_edge, label %land.lhs.true386

lor.lhs.false384.do.end398_crit_edge:             ; preds = %lor.lhs.false384
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end398

land.lhs.true386:                                 ; preds = %lor.lhs.false384
  %dvb_ep_bulk_ts2 = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 49
  %205 = ptrtoint ptr %dvb_ep_bulk_ts2 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %dvb_ep_bulk_ts2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %206)
  %tobool388.not = icmp eq i8 %206, 0
  br i1 %tobool388.not, label %land.lhs.true386.do.end398_crit_edge, label %land.lhs.true386.if.then389_crit_edge

land.lhs.true386.if.then389_crit_edge:            ; preds = %land.lhs.true386
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then389

land.lhs.true386.do.end398_crit_edge:             ; preds = %land.lhs.true386
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end398

if.then389:                                       ; preds = %land.lhs.true386.if.then389_crit_edge, %if.then382.if.then389_crit_edge
  %207 = ptrtoint ptr %dev_next to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %dev_next, align 8
  %dvb_xfer_bulk391 = getelementptr inbounds %struct.em28xx, ptr %208, i32 0, i32 61
  %209 = ptrtoint ptr %dvb_xfer_bulk391 to i32
  call void @__asan_load1_noabort(i32 %209)
  %bf.load392 = load i8, ptr %dvb_xfer_bulk391, align 4
  %bf.set394 = or i8 %bf.load392, -128
  store i8 %bf.set394, ptr %dvb_xfer_bulk391, align 4
  br label %do.end398

do.end398:                                        ; preds = %if.then389, %land.lhs.true386.do.end398_crit_edge, %lor.lhs.false384.do.end398_crit_edge
  %intf399 = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 44
  %210 = ptrtoint ptr %intf399 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %intf399, align 4
  %dev400 = getelementptr inbounds %struct.usb_interface, ptr %211, i32 0, i32 7
  %212 = ptrtoint ptr %dev_next to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev_next, align 8
  %dvb_xfer_bulk402 = getelementptr inbounds %struct.em28xx, ptr %213, i32 0, i32 61
  %214 = ptrtoint ptr %dvb_xfer_bulk402 to i32
  call void @__asan_load1_noabort(i32 %214)
  %bf.load403 = load i8, ptr %dvb_xfer_bulk402, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load403)
  %tobool406.not = icmp sgt i8 %bf.load403, -1
  %cond407 = select i1 %tobool406.not, ptr @.str.173, ptr @.str.172
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev400, ptr noundef nonnull @.str.180, ptr noundef nonnull %cond407) #14
  br label %if.end408

if.end408:                                        ; preds = %do.end398, %if.end380.if.end408_crit_edge
  %dvb_ep_isoc_ts2409 = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 48
  %215 = ptrtoint ptr %dvb_ep_isoc_ts2409 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %dvb_ep_isoc_ts2409, align 1
  %217 = ptrtoint ptr %dev_next to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev_next, align 8
  %dvb_ep_isoc411 = getelementptr inbounds %struct.em28xx, ptr %218, i32 0, i32 50
  %219 = ptrtoint ptr %dvb_ep_isoc411 to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %216, ptr %dvb_ep_isoc411, align 1
  %dvb_ep_bulk_ts2412 = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 49
  %220 = ptrtoint ptr %dvb_ep_bulk_ts2412 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %dvb_ep_bulk_ts2412, align 4
  %222 = load ptr, ptr %dev_next, align 8
  %dvb_ep_bulk414 = getelementptr inbounds %struct.em28xx, ptr %222, i32 0, i32 51
  %223 = ptrtoint ptr %dvb_ep_bulk414 to i32
  call void @__asan_store1_noabort(i32 %223)
  store i8 %221, ptr %dvb_ep_bulk414, align 2
  %dvb_max_pkt_size_isoc_ts2 = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 60
  %224 = ptrtoint ptr %dvb_max_pkt_size_isoc_ts2 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %dvb_max_pkt_size_isoc_ts2, align 8
  %226 = load ptr, ptr %dev_next, align 8
  %dvb_max_pkt_size_isoc = getelementptr inbounds %struct.em28xx, ptr %226, i32 0, i32 59
  %227 = ptrtoint ptr %dvb_max_pkt_size_isoc to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %225, ptr %dvb_max_pkt_size_isoc, align 4
  %dvb_alt_isoc = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 58
  %228 = ptrtoint ptr %dvb_alt_isoc to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %dvb_alt_isoc, align 8
  %230 = load ptr, ptr %dev_next, align 8
  %dvb_alt_isoc417 = getelementptr inbounds %struct.em28xx, ptr %230, i32 0, i32 58
  %231 = ptrtoint ptr %dvb_alt_isoc417 to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %229, ptr %dvb_alt_isoc417, align 8
  %dvb_xfer_bulk418 = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 61
  %232 = ptrtoint ptr %dvb_xfer_bulk418 to i32
  call void @__asan_load1_noabort(i32 %232)
  %bf.load419 = load i8, ptr %dvb_xfer_bulk418, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load419)
  %tobool422.not = icmp sgt i8 %bf.load419, -1
  %call434 = tail call i32 @em28xx_write_reg(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 11, i8 noundef zeroext -106) #11
  br i1 %tobool422.not, label %if.end408.while.body439_crit_edge, label %if.end408.while.body_crit_edge

if.end408.while.body_crit_edge:                   ; preds = %if.end408
  br label %while.body

if.end408.while.body439_crit_edge:                ; preds = %if.end408
  br label %while.body439

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end408.while.body_crit_edge
  %__ms.0684 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 100, %if.end408.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.0684, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %233 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %233(i32 noundef 214748000) #11
  %tobool425.not = icmp eq i32 %dec, 0
  br i1 %tobool425.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %while.body
  %call426 = tail call i32 @em28xx_write_reg(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 11, i8 noundef zeroext -128) #11
  br label %while.body431

while.body431:                                    ; preds = %while.body431.while.body431_crit_edge, %while.end
  %__ms427.0685 = phi i32 [ 100, %while.end ], [ %dec429, %while.body431.while.body431_crit_edge ]
  %dec429 = add nsw i32 %__ms427.0685, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %234 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %234(i32 noundef 214748000) #11
  %tobool430.not = icmp eq i32 %dec429, 0
  br i1 %tobool430.not, label %while.body431.if.end448_crit_edge, label %while.body431.while.body431_crit_edge

while.body431.while.body431_crit_edge:            ; preds = %while.body431
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body431

while.body431.if.end448_crit_edge:                ; preds = %while.body431
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end448

while.body439:                                    ; preds = %while.body439.while.body439_crit_edge, %if.end408.while.body439_crit_edge
  %__ms435.0686 = phi i32 [ %dec437, %while.body439.while.body439_crit_edge ], [ 100, %if.end408.while.body439_crit_edge ]
  %dec437 = add nsw i32 %__ms435.0686, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %235 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %235(i32 noundef 214748000) #11
  %tobool438.not = icmp eq i32 %dec437, 0
  br i1 %tobool438.not, label %while.end440, label %while.body439.while.body439_crit_edge

while.body439.while.body439_crit_edge:            ; preds = %while.body439
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body439

while.end440:                                     ; preds = %while.body439
  %call441 = tail call i32 @em28xx_write_reg(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 11, i8 noundef zeroext -126) #11
  br label %while.body446

while.body446:                                    ; preds = %while.body446.while.body446_crit_edge, %while.end440
  %__ms442.0687 = phi i32 [ 100, %while.end440 ], [ %dec444, %while.body446.while.body446_crit_edge ]
  %dec444 = add nsw i32 %__ms442.0687, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %236 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %236(i32 noundef 214748000) #11
  %tobool445.not = icmp eq i32 %dec444, 0
  br i1 %tobool445.not, label %while.body446.if.end448_crit_edge, label %while.body446.while.body446_crit_edge

while.body446.while.body446_crit_edge:            ; preds = %while.body446
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body446

while.body446.if.end448_crit_edge:                ; preds = %while.body446
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end448

if.end448:                                        ; preds = %while.body446.if.end448_crit_edge, %while.body431.if.end448_crit_edge
  %237 = ptrtoint ptr %dev_next to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dev_next, align 8
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %238, i32 noundef 4) #11
  %239 = ptrtoint ptr %238 to i32
  call void @__asan_store4_noabort(i32 %239)
  store volatile i32 1, ptr %238, align 4
  br label %if.end450

if.end450:                                        ; preds = %if.end448, %land.lhs.true305.if.end450_crit_edge, %if.end297.if.end450_crit_edge
  %call.i.i.i.i612 = tail call zeroext i1 @__kasan_check_write(ptr noundef %call7.i.i, i32 noundef 4) #11
  %240 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store volatile i32 1, ptr %call7.i.i, align 8
  tail call fastcc void @request_modules(ptr noundef nonnull %call7.i.i)
  %media_dev = getelementptr inbounds %struct.em28xx, ptr %call7.i.i, i32 0, i32 76
  %241 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %media_dev, align 4
  %call452 = tail call i32 @__media_device_register(ptr noundef %242, ptr noundef null) #11
  br label %cleanup454

err_free:                                         ; preds = %if.then309.err_free_crit_edge, %if.end188.err_free_crit_edge, %do.end95, %for.end52.err_free_crit_edge
  %retval1.0 = phi i32 [ -19, %do.end95 ], [ %call192, %if.end188.err_free_crit_edge ], [ %call353, %if.then309.err_free_crit_edge ], [ -19, %for.end52.err_free_crit_edge ]
  %243 = ptrtoint ptr %alt_max_pkt_size_isoc to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %alt_max_pkt_size_isoc, align 8
  tail call void @kfree(ptr noundef %244) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %err

err:                                              ; preds = %err_free, %if.then37, %if.end29.err_crit_edge, %do.end19
  %retval1.1 = phi i32 [ -19, %do.end19 ], [ %retval1.0, %err_free ], [ -12, %if.then37 ], [ -12, %if.end29.err_crit_edge ]
  tail call void @_clear_bit(i32 noundef %call3, ptr noundef nonnull @em28xx_devused) #11
  br label %err_no_slot

err_no_slot:                                      ; preds = %err, %do.end
  %retval1.2 = phi i32 [ -12, %do.end ], [ %retval1.1, %err ]
  tail call void @usb_put_dev(ptr noundef %call2) #11
  br label %cleanup454

cleanup454:                                       ; preds = %err_no_slot, %if.end450
  %retval.0 = phi i32 [ %retval1.2, %err_no_slot ], [ 0, %if.end450 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @em28xx_usb_disconnect(ptr nocapture noundef %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_next = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %dev_next to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_next, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %disconnected = getelementptr inbounds %struct.em28xx, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %disconnected, align 4
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %disconnected, align 4
  %intf4 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %5 = ptrtoint ptr %intf4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf4, align 4
  %dev5 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %dev_next to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_next, align 8
  %name = getelementptr inbounds %struct.em28xx, ptr %8, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5, ptr noundef nonnull @.str.250, ptr noundef %name) #14
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  %disconnected8 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %disconnected8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load9 = load i8, ptr %disconnected8, align 4
  %bf.set11 = or i8 %bf.load9, 64
  store i8 %bf.set11, ptr %disconnected8, align 4
  %intf15 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 44
  %10 = ptrtoint ptr %intf15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %intf15, align 4
  %dev16 = getelementptr inbounds %struct.usb_interface, ptr %11, i32 0, i32 7
  %name17 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev16, ptr noundef nonnull @.str.250, ptr noundef %name17) #14
  %request_module_wk.i = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 34
  %call.i = tail call zeroext i1 @flush_work(ptr noundef %request_module_wk.i) #11
  tail call void @em28xx_close_extension(ptr noundef nonnull %1) #11
  %12 = ptrtoint ptr %dev_next to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_next, align 8
  %tobool20.not = icmp eq ptr %13, null
  br i1 %tobool20.not, label %if.end7.if.end24_crit_edge, label %if.then21

if.end7.if.end24_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then21:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @em28xx_close_extension(ptr noundef nonnull %13) #11
  %14 = ptrtoint ptr %dev_next to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_next, align 8
  tail call fastcc void @em28xx_release_resources(ptr noundef %15)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end7.if.end24_crit_edge
  tail call fastcc void @em28xx_release_resources(ptr noundef nonnull %1)
  %16 = ptrtoint ptr %dev_next to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_next, align 8
  %tobool26.not = icmp eq ptr %17, null
  br i1 %tobool26.not, label %if.end24.if.end31_crit_edge, label %if.then27

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31

if.then27:                                        ; preds = %if.end24
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %17, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !644
  tail call void @llvm.prefetch.p0(ptr nonnull %17, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %17, ptr nonnull %17, i32 1, ptr nonnull elementtype(i32) %17) #11, !srcloc !645
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !646

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %17, i32 noundef 3) #11
  br label %kref_put.exit

if.then.i:                                        ; preds = %if.then27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !647
  %intf.i.i = getelementptr inbounds %struct.em28xx, ptr %17, i32 0, i32 44
  %19 = ptrtoint ptr %intf.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %intf.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.usb_interface, ptr %20, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.122) #14
  %disconnected.i.i = getelementptr inbounds %struct.em28xx, ptr %17, i32 0, i32 8
  %21 = ptrtoint ptr %disconnected.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i.i = load i8, ptr %disconnected.i.i, align 4
  %22 = and i8 %bf.load.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.if.end.i.i_crit_edge

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @em28xx_release_resources(ptr noundef nonnull %17) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %ts.i.i = getelementptr inbounds %struct.em28xx, ptr %17, i32 0, i32 80
  %23 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ts.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i = icmp eq i32 %24, 0
  br i1 %cmp.i.i, label %if.then2.i.i, label %if.end.i.i.em28xx_free_device.exit.i_crit_edge

if.end.i.i.em28xx_free_device.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %em28xx_free_device.exit.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %alt_max_pkt_size_isoc.i.i = getelementptr inbounds %struct.em28xx, ptr %17, i32 0, i32 56
  %25 = ptrtoint ptr %alt_max_pkt_size_isoc.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %alt_max_pkt_size_isoc.i.i, align 8
  tail call void @kfree(ptr noundef %26) #11
  br label %em28xx_free_device.exit.i

em28xx_free_device.exit.i:                        ; preds = %if.then2.i.i, %if.end.i.i.em28xx_free_device.exit.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %17) #11
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %em28xx_free_device.exit.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  %27 = ptrtoint ptr %dev_next to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %dev_next, align 8
  br label %if.end31

if.end31:                                         ; preds = %kref_put.exit, %if.end24.if.end31_crit_edge
  %call.i.i.i.i.i.i55 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %1, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !644
  tail call void @llvm.prefetch.p0(ptr nonnull %1, i32 1, i32 3, i32 1) #11
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %1, ptr nonnull %1, i32 1, ptr nonnull elementtype(i32) %1) #11, !srcloc !645
  %asmresult.i.i.i.i.i.i.i56 = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i56)
  %cmp.i.i.i.i57 = icmp eq i32 %asmresult.i.i.i.i.i.i.i56, 1
  br i1 %cmp.i.i.i.i57, label %if.then.i66, label %if.end5.i.i.i.i59

if.end5.i.i.i.i59:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i56)
  %.not.i.i.i.i58 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i56, 0
  br i1 %.not.i.i.i.i58, label %if.end5.i.i.i.i59.cleanup_crit_edge, label %if.then10.i.i.i.i60, !prof !646

if.end5.i.i.i.i59.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i59
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i60:                              ; preds = %if.end5.i.i.i.i59
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef nonnull %1, i32 noundef 3) #11
  br label %cleanup

if.then.i66:                                      ; preds = %if.end31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !647
  %29 = ptrtoint ptr %intf15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %intf15, align 4
  %dev1.i.i62 = getelementptr inbounds %struct.usb_interface, ptr %30, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i.i62, ptr noundef nonnull @.str.122) #14
  %31 = ptrtoint ptr %disconnected8 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load.i.i64 = load i8, ptr %disconnected8, align 4
  %32 = and i8 %bf.load.i.i64, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i.i65 = icmp eq i8 %32, 0
  br i1 %tobool.not.i.i65, label %if.then.i.i67, label %if.then.i66.if.end.i.i70_crit_edge

if.then.i66.if.end.i.i70_crit_edge:               ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i70

if.then.i.i67:                                    ; preds = %if.then.i66
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @em28xx_release_resources(ptr noundef nonnull %1) #11
  br label %if.end.i.i70

if.end.i.i70:                                     ; preds = %if.then.i.i67, %if.then.i66.if.end.i.i70_crit_edge
  %ts.i.i68 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 80
  %33 = ptrtoint ptr %ts.i.i68 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ts.i.i68, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i69 = icmp eq i32 %34, 0
  br i1 %cmp.i.i69, label %if.then2.i.i72, label %if.end.i.i70.em28xx_free_device.exit.i73_crit_edge

if.end.i.i70.em28xx_free_device.exit.i73_crit_edge: ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %em28xx_free_device.exit.i73

if.then2.i.i72:                                   ; preds = %if.end.i.i70
  call void @__sanitizer_cov_trace_pc() #13
  %alt_max_pkt_size_isoc.i.i71 = getelementptr inbounds %struct.em28xx, ptr %1, i32 0, i32 56
  %35 = ptrtoint ptr %alt_max_pkt_size_isoc.i.i71 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %alt_max_pkt_size_isoc.i.i71, align 8
  tail call void @kfree(ptr noundef %36) #11
  br label %em28xx_free_device.exit.i73

em28xx_free_device.exit.i73:                      ; preds = %if.then2.i.i72, %if.end.i.i70.em28xx_free_device.exit.i73_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %em28xx_free_device.exit.i73, %if.then10.i.i.i.i60, %if.end5.i.i.i.i59.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_usb_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %message.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @em28xx_suspend_extension(ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em28xx_usb_resume(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @em28xx_resume_extension(ptr noundef nonnull %1) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em28xx_init_dev(ptr noundef %dev, ptr noundef %udev, ptr noundef %intf) unnamed_addr #0 align 64 {
entry:
  %tv.i = alloca %struct.tveeprom, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %intf2 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %intf2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %intf, ptr %intf2, align 4
  %ctrl_urb_lock = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 36
  tail call void @__mutex_init(ptr noundef %ctrl_urb_lock, ptr noundef nonnull @.str.184, ptr noundef nonnull @em28xx_init_dev.__key) #11
  %slock = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 43
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.186, ptr noundef nonnull @em28xx_init_dev.__key.185, i16 noundef signext 3) #11
  %em28xx_write_regs = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 63
  %1 = ptrtoint ptr %em28xx_write_regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @em28xx_write_regs, ptr %em28xx_write_regs, align 8
  %em28xx_read_reg = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 64
  %2 = ptrtoint ptr %em28xx_read_reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @em28xx_read_reg, ptr %em28xx_read_reg, align 4
  %em28xx_read_reg_req_len = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 65
  %3 = ptrtoint ptr %em28xx_read_reg_req_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @em28xx_read_reg_req_len, ptr %em28xx_read_reg_req_len, align 8
  %em28xx_write_regs_req = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 66
  %4 = ptrtoint ptr %em28xx_write_regs_req to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @em28xx_write_regs_req, ptr %em28xx_write_regs_req, align 4
  %em28xx_read_reg_req = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 67
  %5 = ptrtoint ptr %em28xx_read_reg_req to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @em28xx_read_reg_req, ptr %em28xx_read_reg_req, align 8
  %model = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 5
  %6 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %model, align 8
  %is_em2800 = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %7, i32 10
  %8 = ptrtoint ptr %is_em2800 to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %is_em2800, align 4
  %bf.lshr = and i16 %bf.load, -32768
  %is_em28006 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 10
  %9 = ptrtoint ptr %is_em28006 to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load7 = load i16, ptr %is_em28006, align 8
  %bf.clear = and i16 %bf.load7, 32767
  %bf.set = or i16 %bf.clear, %bf.lshr
  store i16 %bf.set, ptr %is_em28006, align 8
  %board.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12
  %arrayidx.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %7
  %10 = call ptr @memcpy(ptr %board.i, ptr %arrayidx.i, i32 168)
  %bf.load.i = load i16, ptr %is_em28006, align 8
  %has_msp34xx2.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %11 = ptrtoint ptr %has_msp34xx2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load3.i = load i8, ptr %has_msp34xx2.i, align 4
  %sh.diff.i = lshr i16 %bf.load.i, 12
  %tr.sh.diff.i = trunc i16 %sh.diff.i to i8
  %bf.shl.i = and i8 %tr.sh.diff.i, 4
  %bf.clear4.i = and i8 %bf.load3.i, -13
  %bf.set.i = or i8 %bf.shl.i, %bf.clear4.i
  %sh.diff27.i = lshr i16 %bf.load.i, 6
  %tr.sh.diff28.i = trunc i16 %sh.diff27.i to i8
  %bf.shl13.i = and i8 %tr.sh.diff28.i, 8
  %bf.set15.i = or i8 %bf.set.i, %bf.shl13.i
  store i8 %bf.set15.i, ptr %has_msp34xx2.i, align 4
  %xclk1.i.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %7, i32 11
  %12 = ptrtoint ptr %xclk1.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %xclk1.i.i, align 2
  %i2c_speed2.i.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %7, i32 12
  %14 = ptrtoint ptr %i2c_speed2.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %i2c_speed2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  %spec.store.select.i.i = select i1 %tobool.not.i.i, i8 39, i8 %13
  %call.i.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 15, i8 noundef zeroext %spec.store.select.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not.i.i = icmp eq i8 %15, 0
  %spec.store.select13.i.i = select i1 %tobool3.not.i.i, i8 64, i8 %15
  %16 = and i8 %spec.store.select13.i.i, 3
  %17 = ptrtoint ptr %has_msp34xx2.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i.i = load i8, ptr %has_msp34xx2.i, align 4
  %bf.clear.i.i = and i8 %bf.load.i.i, -4
  %bf.set.i.i = or i8 %bf.clear.i.i, %16
  store i8 %bf.set.i.i, ptr %has_msp34xx2.i, align 4
  %18 = ptrtoint ptr %is_em28006 to i32
  call void @__asan_load2_noabort(i32 %18)
  %bf.load8.i.i = load i16, ptr %is_em28006, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load8.i.i)
  %tobool9.not.i.i = icmp sgt i16 %bf.load8.i.i, -1
  br i1 %tobool9.not.i.i, label %if.then10.i.i, label %entry.em28xx_set_model.exit_crit_edge

entry.em28xx_set_model.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %em28xx_set_model.exit

if.then10.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext %spec.store.select13.i.i) #11
  br label %em28xx_set_model.exit

em28xx_set_model.exit:                            ; preds = %if.then10.i.i, %entry.em28xx_set_model.exit_crit_edge
  tail call void @msleep(i32 noundef 50) #11
  %def_i2c_bus.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 4
  %19 = ptrtoint ptr %def_i2c_bus.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %def_i2c_bus.i, align 8
  %def_i2c_bus18.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %21 = ptrtoint ptr %def_i2c_bus18.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %def_i2c_bus18.i, align 4
  %wait_after_write = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 14
  %22 = ptrtoint ptr %wait_after_write to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %wait_after_write, align 4
  %call8 = tail call i32 @em28xx_read_reg(ptr noundef %dev, i16 noundef zeroext 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp sgt i32 %call8, 0
  br i1 %cmp, label %if.then, label %em28xx_set_model.exit.do.end69_crit_edge

em28xx_set_model.exit.do.end69_crit_edge:         ; preds = %em28xx_set_model.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69

if.then:                                          ; preds = %em28xx_set_model.exit
  %chip_id = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 7
  %23 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call8, ptr %chip_id, align 8
  %24 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.257)
  switch i32 %call8, label %if.then.do.end69_crit_edge [
    i32 7, label %if.then.do.end76_crit_edge
    i32 17, label %sw.bb10
    i32 33, label %sw.bb11
    i32 54, label %sw.bb12
    i32 18, label %sw.bb20
    i32 20, label %sw.bb35
    i32 34, label %sw.bb36
    i32 35, label %sw.bb37
    i32 65, label %sw.bb39
    i32 113, label %sw.bb45
    i32 114, label %sw.bb51
    i32 36, label %sw.bb57
    i32 68, label %sw.bb59
  ]

if.then.do.end76_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end76

if.then.do.end69_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end69

sw.bb10:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end76

sw.bb11:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end76

sw.bb12:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %wait_after_write to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %wait_after_write, align 4
  %26 = ptrtoint ptr %has_msp34xx2.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load14 = load i8, ptr %has_msp34xx2.i, align 4
  %bf.set16 = or i8 %bf.load14, -128
  store i8 %bf.set16, ptr %has_msp34xx2.i, align 4
  %eeprom_addrwidth_16bit = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 22
  %27 = ptrtoint ptr %eeprom_addrwidth_16bit to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load17 = load i8, ptr %eeprom_addrwidth_16bit, align 8
  %bf.set19 = or i8 %bf.load17, -128
  store i8 %bf.set19, ptr %eeprom_addrwidth_16bit, align 8
  br label %do.end76

sw.bb20:                                          ; preds = %if.then
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 7
  %28 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6891, i16 %29)
  %cmp21 = icmp eq i16 %29, 6891
  br i1 %cmp21, label %if.then23, label %sw.bb20.do.end76_crit_edge

sw.bb20.do.end76_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end76

if.then23:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 16, i32 8
  %30 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %idProduct, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8232, i16 %31)
  %switch.selectcmp = icmp eq i16 %31, 8232
  %switch.select = select i1 %switch.selectcmp, ptr @.str.192, ptr @.str.191
  call void @__sanitizer_cov_trace_const_cmp2(i16 4135, i16 %31)
  %switch.selectcmp1 = icmp eq i16 %31, 4135
  %spec.select = select i1 %switch.selectcmp1, ptr @.str.188, ptr %switch.select
  br label %do.end76

sw.bb35:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end76

sw.bb36:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end76

sw.bb37:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %wait_after_write to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %wait_after_write, align 4
  br label %do.end76

sw.bb39:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %wait_after_write to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %wait_after_write, align 4
  %eeprom_addrwidth_16bit41 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 22
  %34 = ptrtoint ptr %eeprom_addrwidth_16bit41 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load42 = load i8, ptr %eeprom_addrwidth_16bit41, align 8
  %bf.set44 = or i8 %bf.load42, -128
  store i8 %bf.set44, ptr %eeprom_addrwidth_16bit41, align 8
  br label %do.end76

sw.bb45:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %wait_after_write to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %wait_after_write, align 4
  %eeprom_addrwidth_16bit47 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 22
  %36 = ptrtoint ptr %eeprom_addrwidth_16bit47 to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load48 = load i8, ptr %eeprom_addrwidth_16bit47, align 8
  %bf.set50 = or i8 %bf.load48, -128
  store i8 %bf.set50, ptr %eeprom_addrwidth_16bit47, align 8
  br label %do.end76

sw.bb51:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %wait_after_write to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %wait_after_write, align 4
  %eeprom_addrwidth_16bit53 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 22
  %38 = ptrtoint ptr %eeprom_addrwidth_16bit53 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load54 = load i8, ptr %eeprom_addrwidth_16bit53, align 8
  %bf.set56 = or i8 %bf.load54, -128
  store i8 %bf.set56, ptr %eeprom_addrwidth_16bit53, align 8
  br label %do.end76

sw.bb57:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %wait_after_write to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %wait_after_write, align 4
  br label %do.end76

sw.bb59:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %wait_after_write to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %wait_after_write, align 4
  %eeprom_addrwidth_16bit61 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 22
  %41 = ptrtoint ptr %eeprom_addrwidth_16bit61 to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load62 = load i8, ptr %eeprom_addrwidth_16bit61, align 8
  %bf.set64 = or i8 %bf.load62, -128
  store i8 %bf.set64, ptr %eeprom_addrwidth_16bit61, align 8
  br label %do.end76

do.end69:                                         ; preds = %if.then.do.end69_crit_edge, %em28xx_set_model.exit.do.end69_crit_edge
  %42 = ptrtoint ptr %intf2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %intf2, align 4
  %dev71 = getelementptr inbounds %struct.usb_interface, ptr %43, i32 0, i32 7
  %chip_id72 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 7
  %44 = ptrtoint ptr %chip_id72 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %chip_id72, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev71, ptr noundef nonnull @.str.201, i32 noundef %45) #14
  br label %if.end79

do.end76:                                         ; preds = %sw.bb59, %sw.bb57, %sw.bb51, %sw.bb45, %sw.bb39, %sw.bb37, %sw.bb36, %sw.bb35, %if.then23, %sw.bb20.do.end76_crit_edge, %sw.bb12, %sw.bb11, %sw.bb10, %if.then.do.end76_crit_edge
  %chip_name.1.ph = phi ptr [ @.str.188, %sw.bb10 ], [ @.str.189, %sw.bb11 ], [ @.str.190, %sw.bb12 ], [ @.str.191, %sw.bb20.do.end76_crit_edge ], [ @.str.193, %sw.bb35 ], [ @.str.194, %sw.bb36 ], [ @.str.195, %sw.bb37 ], [ @.str.196, %sw.bb39 ], [ @.str.197, %sw.bb45 ], [ @.str.198, %sw.bb51 ], [ @.str.199, %sw.bb57 ], [ @.str.200, %sw.bb59 ], [ @.str.187, %if.then.do.end76_crit_edge ], [ %spec.select, %if.then23 ]
  %46 = ptrtoint ptr %intf2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %intf2, align 4
  %dev78 = getelementptr inbounds %struct.usb_interface, ptr %47, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev78, ptr noundef nonnull @.str.204, ptr noundef nonnull %chip_name.1.ph) #14
  br label %if.end79

if.end79:                                         ; preds = %do.end76, %do.end69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %48 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %48, i32 noundef 3520, i32 noundef 608) #15
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end79.em28xx_media_device_init.exit_crit_edge, label %if.end.i

if.end79.em28xx_media_device_init.exit_crit_edge: ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #13
  br label %em28xx_media_device_init.exit

if.end.i:                                         ; preds = %if.end79
  %product.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 31
  %49 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %product.i, align 8
  %tobool1.not.i = icmp eq ptr %50, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__media_device_usb_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %udev, ptr noundef nonnull %50, ptr noundef nonnull @.str.127) #11
  br label %if.end11.i

if.else.i:                                        ; preds = %if.end.i
  %manufacturer.i = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 32
  %51 = ptrtoint ptr %manufacturer.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %manufacturer.i, align 4
  %tobool4.not.i = icmp eq ptr %52, null
  br i1 %tobool4.not.i, label %if.else7.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__media_device_usb_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %udev, ptr noundef nonnull %52, ptr noundef nonnull @.str.127) #11
  br label %if.end11.i

if.else7.i:                                       ; preds = %if.else.i
  %53 = ptrtoint ptr %intf2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %intf2, align 4
  %init_name.i.i = getelementptr inbounds %struct.usb_interface, ptr %54, i32 0, i32 7, i32 3
  %55 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i3 = icmp eq ptr %56, null
  br i1 %tobool.not.i.i3, label %if.end.i.i, label %if.else7.i.dev_name.exit.i_crit_edge

if.else7.i.dev_name.exit.i_crit_edge:             ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev8.i = getelementptr inbounds %struct.usb_interface, ptr %54, i32 0, i32 7
  %57 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev8.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.else7.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %58, %if.end.i.i ], [ %56, %if.else7.i.dev_name.exit.i_crit_edge ]
  tail call void @__media_device_usb_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %udev, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.127) #11
  br label %if.end11.i

if.end11.i:                                       ; preds = %dev_name.exit.i, %if.then5.i, %if.then2.i
  %media_dev.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 76
  %59 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call7.i.i.i, ptr %media_dev.i, align 4
  br label %em28xx_media_device_init.exit

em28xx_media_device_init.exit:                    ; preds = %if.end11.i, %if.end79.em28xx_media_device_init.exit_crit_edge
  %60 = ptrtoint ptr %has_msp34xx2.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load81 = load i8, ptr %has_msp34xx2.i, align 4
  %61 = and i8 %bf.load81, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool85.not = icmp eq i8 %61, 0
  br i1 %tobool85.not, label %if.end91, label %if.then86

if.then86:                                        ; preds = %em28xx_media_device_init.exit
  %call87 = tail call i32 @em28xx_audio_setup(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.then86.err_deinit_media_crit_edge

if.then86.err_deinit_media_crit_edge:             ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_deinit_media

if.end90:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @em28xx_init_extension(ptr noundef %dev) #11
  br label %cleanup

if.end91:                                         ; preds = %em28xx_media_device_init.exit
  tail call fastcc void @em28xx_pre_card_setup(ptr noundef %dev)
  %i2c_bus_lock = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 25
  tail call void @__rt_mutex_init(ptr noundef %i2c_bus_lock, ptr noundef nonnull @.str.202, ptr noundef nonnull @em28xx_init_dev.__key.206) #11
  %62 = ptrtoint ptr %is_em28006 to i32
  call void @__asan_load2_noabort(i32 %62)
  %bf.load97 = load i16, ptr %is_em28006, align 8
  %bf.load97.lobit = lshr i16 %bf.load97, 15
  %63 = zext i16 %bf.load97.lobit to i32
  %call104 = tail call i32 @em28xx_i2c_register(ptr noundef %dev, i32 noundef 0, i32 noundef %63) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp106 = icmp slt i32 %call104, 0
  br i1 %cmp106, label %do.end111, label %if.end114

do.end111:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %intf2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %intf2, align 4
  %dev113 = getelementptr inbounds %struct.usb_interface, ptr %65, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev113, ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.202, i32 noundef %call104) #14
  br label %err_deinit_media

if.end114:                                        ; preds = %if.end91
  %66 = ptrtoint ptr %def_i2c_bus18.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %def_i2c_bus18.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool115.not = icmp eq i32 %67, 0
  br i1 %tobool115.not, label %if.end114.if.end136_crit_edge, label %if.then116

if.end114.if.end136_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

if.then116:                                       ; preds = %if.end114
  %68 = ptrtoint ptr %has_msp34xx2.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %bf.load118 = load i8, ptr %has_msp34xx2.i, align 4
  %69 = lshr i8 %bf.load118, 6
  %70 = and i8 %69, 2
  %71 = zext i8 %70 to i32
  %call125 = tail call i32 @em28xx_i2c_register(ptr noundef %dev, i32 noundef 1, i32 noundef %71) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %cmp127 = icmp slt i32 %call125, 0
  br i1 %cmp127, label %do.end132, label %if.then116.if.end136_crit_edge

if.then116.if.end136_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

do.end132:                                        ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %intf2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %intf2, align 4
  %dev134 = getelementptr inbounds %struct.usb_interface, ptr %73, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev134, ptr noundef nonnull @.str.211, ptr noundef nonnull @.str.202, i32 noundef %call125) #14
  %call137 = tail call i32 @em28xx_i2c_unregister(ptr noundef %dev, i32 noundef 0) #11
  br label %err_deinit_media

if.end136:                                        ; preds = %if.then116.if.end136_crit_edge, %if.end114.if.end136_crit_edge
  %74 = ptrtoint ptr %has_msp34xx2.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %bf.load.i4 = load i8, ptr %has_msp34xx2.i, align 4
  %75 = and i8 %bf.load.i4, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i5 = icmp eq i8 %75, 0
  br i1 %tobool.not.i5, label %if.end136.if.end5.i_crit_edge, label %if.then.i

if.end136.if.end5.i_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end136
  %call.i = tail call i32 @em28xx_detect_sensor(ptr noundef %dev) #11
  %em28xx_sensor.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 13
  %76 = ptrtoint ptr %em28xx_sensor.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %em28xx_sensor.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp.i = icmp eq i32 %77, 0
  br i1 %cmp.i, label %if.then1.i, label %if.then.i.if.end5.i_crit_edge

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %78 = ptrtoint ptr %has_msp34xx2.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %bf.load3.i6 = load i8, ptr %has_msp34xx2.i, align 4
  %bf.clear4.i7 = and i8 %bf.load3.i6, -9
  store i8 %bf.clear4.i7, ptr %has_msp34xx2.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then1.i, %if.then.i.if.end5.i_crit_edge, %if.end136.if.end5.i_crit_edge
  %79 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %model, align 8
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.258)
  switch i32 %80, label %sw.default.i [
    i32 22, label %if.end5.i.sw.bb.i_crit_edge
    i32 1, label %if.end5.i.sw.bb.i_crit_edge23
    i32 0, label %if.end5.i.sw.bb.i_crit_edge24
  ]

if.end5.i.sw.bb.i_crit_edge24:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end5.i.sw.bb.i_crit_edge23:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

if.end5.i.sw.bb.i_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end5.i.sw.bb.i_crit_edge, %if.end5.i.sw.bb.i_crit_edge23, %if.end5.i.sw.bb.i_crit_edge24
  %call6.i = tail call fastcc i32 @em28xx_hint_board(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %do.end.i, label %if.else.i12

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %82 = ptrtoint ptr %intf2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %intf2, align 4
  %dev9.i = getelementptr inbounds %struct.usb_interface, ptr %83, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.224) #14
  br label %do.end13.i

if.else.i12:                                      ; preds = %sw.bb.i
  %84 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %model, align 8
  %arrayidx.i.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %85
  %86 = call ptr @memcpy(ptr %board.i, ptr %arrayidx.i.i, i32 168)
  %87 = ptrtoint ptr %is_em28006 to i32
  call void @__asan_load2_noabort(i32 %87)
  %bf.load.i.i10 = load i16, ptr %is_em28006, align 8
  %88 = ptrtoint ptr %has_msp34xx2.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %bf.load3.i.i = load i8, ptr %has_msp34xx2.i, align 4
  %sh.diff.i.i = lshr i16 %bf.load.i.i10, 12
  %tr.sh.diff.i.i = trunc i16 %sh.diff.i.i to i8
  %bf.shl.i.i = and i8 %tr.sh.diff.i.i, 4
  %bf.clear4.i.i = and i8 %bf.load3.i.i, -13
  %bf.set.i.i11 = or i8 %bf.shl.i.i, %bf.clear4.i.i
  %sh.diff27.i.i = lshr i16 %bf.load.i.i10, 6
  %tr.sh.diff28.i.i = trunc i16 %sh.diff27.i.i to i8
  %bf.shl13.i.i = and i8 %tr.sh.diff28.i.i, 8
  %bf.set15.i.i = or i8 %bf.set.i.i11, %bf.shl13.i.i
  store i8 %bf.set15.i.i, ptr %has_msp34xx2.i, align 4
  %xclk1.i.i.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %85, i32 11
  %89 = ptrtoint ptr %xclk1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %xclk1.i.i.i, align 2
  %i2c_speed2.i.i.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %85, i32 12
  %91 = ptrtoint ptr %i2c_speed2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %i2c_speed2.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool.not.i.i.i = icmp eq i8 %90, 0
  %spec.store.select.i.i.i = select i1 %tobool.not.i.i.i, i8 39, i8 %90
  %call.i.i.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 15, i8 noundef zeroext %spec.store.select.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool3.not.i.i.i = icmp eq i8 %92, 0
  %spec.store.select13.i.i.i = select i1 %tobool3.not.i.i.i, i8 64, i8 %92
  %93 = and i8 %spec.store.select13.i.i.i, 3
  %94 = ptrtoint ptr %has_msp34xx2.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load.i.i.i = load i8, ptr %has_msp34xx2.i, align 4
  %bf.clear.i.i.i = and i8 %bf.load.i.i.i, -4
  %bf.set.i.i.i = or i8 %bf.clear.i.i.i, %93
  store i8 %bf.set.i.i.i, ptr %has_msp34xx2.i, align 4
  %95 = ptrtoint ptr %is_em28006 to i32
  call void @__asan_load2_noabort(i32 %95)
  %bf.load8.i.i.i = load i16, ptr %is_em28006, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load8.i.i.i)
  %tobool9.not.i.i.i = icmp sgt i16 %bf.load8.i.i.i, -1
  br i1 %tobool9.not.i.i.i, label %if.then10.i.i.i, label %if.else.i12.em28xx_set_model.exit.i_crit_edge

if.else.i12.em28xx_set_model.exit.i_crit_edge:    ; preds = %if.else.i12
  call void @__sanitizer_cov_trace_pc() #13
  br label %em28xx_set_model.exit.i

if.then10.i.i.i:                                  ; preds = %if.else.i12
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i.i.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext %spec.store.select13.i.i.i) #11
  br label %em28xx_set_model.exit.i

em28xx_set_model.exit.i:                          ; preds = %if.then10.i.i.i, %if.else.i12.em28xx_set_model.exit.i_crit_edge
  tail call void @msleep(i32 noundef 50) #11
  %96 = ptrtoint ptr %def_i2c_bus.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %def_i2c_bus.i, align 8
  %98 = ptrtoint ptr %def_i2c_bus18.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %97, ptr %def_i2c_bus18.i, align 4
  tail call fastcc void @em28xx_pre_card_setup(ptr noundef %dev) #11
  br label %do.end13.i

sw.default.i:                                     ; preds = %if.end5.i
  %arrayidx.i172.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %80
  %99 = call ptr @memcpy(ptr %board.i, ptr %arrayidx.i172.i, i32 168)
  %100 = ptrtoint ptr %is_em28006 to i32
  call void @__asan_load2_noabort(i32 %100)
  %bf.load.i174.i = load i16, ptr %is_em28006, align 8
  %101 = ptrtoint ptr %has_msp34xx2.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %bf.load3.i176.i = load i8, ptr %has_msp34xx2.i, align 4
  %sh.diff.i177.i = lshr i16 %bf.load.i174.i, 12
  %tr.sh.diff.i178.i = trunc i16 %sh.diff.i177.i to i8
  %bf.shl.i179.i = and i8 %tr.sh.diff.i178.i, 4
  %bf.clear4.i180.i = and i8 %bf.load3.i176.i, -13
  %bf.set.i181.i = or i8 %bf.shl.i179.i, %bf.clear4.i180.i
  %sh.diff27.i182.i = lshr i16 %bf.load.i174.i, 6
  %tr.sh.diff28.i183.i = trunc i16 %sh.diff27.i182.i to i8
  %bf.shl13.i184.i = and i8 %tr.sh.diff28.i183.i, 8
  %bf.set15.i185.i = or i8 %bf.set.i181.i, %bf.shl13.i184.i
  store i8 %bf.set15.i185.i, ptr %has_msp34xx2.i, align 4
  %xclk1.i.i186.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %80, i32 11
  %102 = ptrtoint ptr %xclk1.i.i186.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %xclk1.i.i186.i, align 2
  %i2c_speed2.i.i187.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %80, i32 12
  %104 = ptrtoint ptr %i2c_speed2.i.i187.i to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %i2c_speed2.i.i187.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool.not.i.i188.i = icmp eq i8 %103, 0
  %spec.store.select.i.i189.i = select i1 %tobool.not.i.i188.i, i8 39, i8 %103
  %call.i.i190.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 15, i8 noundef zeroext %spec.store.select.i.i189.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool3.not.i.i191.i = icmp eq i8 %105, 0
  %spec.store.select13.i.i192.i = select i1 %tobool3.not.i.i191.i, i8 64, i8 %105
  %106 = and i8 %spec.store.select13.i.i192.i, 3
  %107 = ptrtoint ptr %has_msp34xx2.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %bf.load.i.i193.i = load i8, ptr %has_msp34xx2.i, align 4
  %bf.clear.i.i194.i = and i8 %bf.load.i.i193.i, -4
  %bf.set.i.i195.i = or i8 %bf.clear.i.i194.i, %106
  store i8 %bf.set.i.i195.i, ptr %has_msp34xx2.i, align 4
  %108 = ptrtoint ptr %is_em28006 to i32
  call void @__asan_load2_noabort(i32 %108)
  %bf.load8.i.i196.i = load i16, ptr %is_em28006, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load8.i.i196.i)
  %tobool9.not.i.i197.i = icmp sgt i16 %bf.load8.i.i196.i, -1
  br i1 %tobool9.not.i.i197.i, label %if.then10.i.i199.i, label %sw.default.i.em28xx_set_model.exit202.i_crit_edge

sw.default.i.em28xx_set_model.exit202.i_crit_edge: ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %em28xx_set_model.exit202.i

if.then10.i.i199.i:                               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i.i198.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext %spec.store.select13.i.i192.i) #11
  br label %em28xx_set_model.exit202.i

em28xx_set_model.exit202.i:                       ; preds = %if.then10.i.i199.i, %sw.default.i.em28xx_set_model.exit202.i_crit_edge
  tail call void @msleep(i32 noundef 50) #11
  %109 = ptrtoint ptr %def_i2c_bus.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %def_i2c_bus.i, align 8
  %111 = ptrtoint ptr %def_i2c_bus18.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %def_i2c_bus18.i, align 4
  br label %do.end13.i

do.end13.i:                                       ; preds = %em28xx_set_model.exit202.i, %em28xx_set_model.exit.i, %do.end.i
  %112 = ptrtoint ptr %intf2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %intf2, align 4
  %dev15.i = getelementptr inbounds %struct.usb_interface, ptr %113, i32 0, i32 7
  %114 = ptrtoint ptr %board.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %board.i, align 8
  %116 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %model, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15.i, ptr noundef nonnull @.str.227, ptr noundef %115, i32 noundef %117) #14
  %118 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %model, align 8
  %tuner_type.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %119, i32 2
  %120 = ptrtoint ptr %tuner_type.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %tuner_type.i, align 4
  %tuner_type18.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 18
  %122 = ptrtoint ptr %tuner_type18.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %tuner_type18.i, align 8
  %123 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.259)
  switch i32 %119, label %do.end13.i.sw.epilog55.i_crit_edge [
    i32 4, label %do.end13.i.sw.bb20.i_crit_edge
    i32 10, label %do.end13.i.sw.bb20.i_crit_edge25
    i32 18, label %do.end13.i.sw.bb20.i_crit_edge26
    i32 60, label %do.end13.i.sw.bb20.i_crit_edge27
    i32 16, label %do.end13.i.sw.bb20.i_crit_edge28
    i32 81, label %do.end13.i.sw.bb20.i_crit_edge29
    i32 99, label %do.end13.i.sw.bb20.i_crit_edge30
    i32 100, label %do.end13.i.sw.bb20.i_crit_edge31
    i32 69, label %sw.bb33.i
    i32 12, label %sw.bb36.i
    i32 1, label %do.end13.i.sw.bb38.i_crit_edge
    i32 0, label %do.end13.i.sw.bb38.i_crit_edge32
    i32 49, label %do.end13.i.sw.bb38.i_crit_edge33
    i32 54, label %sw.bb46.i
  ]

do.end13.i.sw.bb38.i_crit_edge33:                 ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb38.i

do.end13.i.sw.bb38.i_crit_edge32:                 ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb38.i

do.end13.i.sw.bb38.i_crit_edge:                   ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb38.i

do.end13.i.sw.bb20.i_crit_edge31:                 ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb20.i

do.end13.i.sw.bb20.i_crit_edge30:                 ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb20.i

do.end13.i.sw.bb20.i_crit_edge29:                 ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb20.i

do.end13.i.sw.bb20.i_crit_edge28:                 ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb20.i

do.end13.i.sw.bb20.i_crit_edge27:                 ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb20.i

do.end13.i.sw.bb20.i_crit_edge26:                 ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb20.i

do.end13.i.sw.bb20.i_crit_edge25:                 ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb20.i

do.end13.i.sw.bb20.i_crit_edge:                   ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb20.i

do.end13.i.sw.epilog55.i_crit_edge:               ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog55.i

sw.bb20.i:                                        ; preds = %do.end13.i.sw.bb20.i_crit_edge, %do.end13.i.sw.bb20.i_crit_edge25, %do.end13.i.sw.bb20.i_crit_edge26, %do.end13.i.sw.bb20.i_crit_edge27, %do.end13.i.sw.bb20.i_crit_edge28, %do.end13.i.sw.bb20.i_crit_edge29, %do.end13.i.sw.bb20.i_crit_edge30, %do.end13.i.sw.bb20.i_crit_edge31
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %tv.i) #11
  %124 = call ptr @memset(ptr %tv.i, i32 255, i32 68)
  %eedata.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 38
  %125 = ptrtoint ptr %eedata.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %eedata.i, align 4
  %tobool21.not.i = icmp eq ptr %126, null
  br i1 %tobool21.not.i, label %sw.bb20.i.cleanup.i_crit_edge, label %if.end23.i

sw.bb20.i.cleanup.i_crit_edge:                    ; preds = %sw.bb20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.end23.i:                                       ; preds = %sw.bb20.i
  call void @tveeprom_hauppauge_analog(ptr noundef nonnull %tv.i, ptr noundef nonnull %126) #11
  %tuner_type25.i = getelementptr inbounds %struct.tveeprom, ptr %tv.i, i32 0, i32 3
  %127 = ptrtoint ptr %tuner_type25.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %tuner_type25.i, align 4
  %129 = ptrtoint ptr %tuner_type18.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %tuner_type18.i, align 8
  %audio_processor.i = getelementptr inbounds %struct.tveeprom, ptr %tv.i, i32 0, i32 9
  %130 = ptrtoint ptr %audio_processor.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %audio_processor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %131)
  %cmp27.i = icmp eq i32 %131, 2
  br i1 %cmp27.i, label %if.then28.i, label %if.end23.i.cleanup.i_crit_edge

if.end23.i.cleanup.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

if.then28.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #13
  %i2s_speed.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 16
  %132 = ptrtoint ptr %i2s_speed.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 2048000, ptr %i2s_speed.i, align 8
  %133 = ptrtoint ptr %has_msp34xx2.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %bf.load29.i = load i8, ptr %has_msp34xx2.i, align 4
  %bf.set31.i = or i8 %bf.load29.i, 4
  store i8 %bf.set31.i, ptr %has_msp34xx2.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then28.i, %if.end23.i.cleanup.i_crit_edge, %sw.bb20.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %tv.i) #11
  br label %sw.epilog55.i

sw.bb33.i:                                        ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %call34.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 13, i8 noundef zeroext 66) #11
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %call35.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -3) #11
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  br label %sw.epilog55.i

sw.bb36.i:                                        ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %call37.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -7) #11
  br label %sw.epilog55.i

sw.bb38.i:                                        ; preds = %do.end13.i.sw.bb38.i_crit_edge, %do.end13.i.sw.bb38.i_crit_edge32, %do.end13.i.sw.bb38.i_crit_edge33
  %call39.i = tail call fastcc i32 @em28xx_hint_board(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.then41.i, label %sw.bb38.i.if.end42.i_crit_edge

sw.bb38.i.if.end42.i_crit_edge:                   ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.then41.i:                                      ; preds = %sw.bb38.i
  %134 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %model, align 8
  %arrayidx.i205.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %135
  %136 = call ptr @memcpy(ptr %board.i, ptr %arrayidx.i205.i, i32 168)
  %137 = ptrtoint ptr %is_em28006 to i32
  call void @__asan_load2_noabort(i32 %137)
  %bf.load.i207.i = load i16, ptr %is_em28006, align 8
  %138 = ptrtoint ptr %has_msp34xx2.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %bf.load3.i209.i = load i8, ptr %has_msp34xx2.i, align 4
  %sh.diff.i210.i = lshr i16 %bf.load.i207.i, 12
  %tr.sh.diff.i211.i = trunc i16 %sh.diff.i210.i to i8
  %bf.shl.i212.i = and i8 %tr.sh.diff.i211.i, 4
  %bf.clear4.i213.i = and i8 %bf.load3.i209.i, -13
  %bf.set.i214.i = or i8 %bf.shl.i212.i, %bf.clear4.i213.i
  %sh.diff27.i215.i = lshr i16 %bf.load.i207.i, 6
  %tr.sh.diff28.i216.i = trunc i16 %sh.diff27.i215.i to i8
  %bf.shl13.i217.i = and i8 %tr.sh.diff28.i216.i, 8
  %bf.set15.i218.i = or i8 %bf.set.i214.i, %bf.shl13.i217.i
  store i8 %bf.set15.i218.i, ptr %has_msp34xx2.i, align 4
  %xclk1.i.i219.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %135, i32 11
  %139 = ptrtoint ptr %xclk1.i.i219.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %xclk1.i.i219.i, align 2
  %i2c_speed2.i.i220.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %135, i32 12
  %141 = ptrtoint ptr %i2c_speed2.i.i220.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %i2c_speed2.i.i220.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %140)
  %tobool.not.i.i221.i = icmp eq i8 %140, 0
  %spec.store.select.i.i222.i = select i1 %tobool.not.i.i221.i, i8 39, i8 %140
  %call.i.i223.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 15, i8 noundef zeroext %spec.store.select.i.i222.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %142)
  %tobool3.not.i.i224.i = icmp eq i8 %142, 0
  %spec.store.select13.i.i225.i = select i1 %tobool3.not.i.i224.i, i8 64, i8 %142
  %143 = and i8 %spec.store.select13.i.i225.i, 3
  %144 = ptrtoint ptr %has_msp34xx2.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %bf.load.i.i226.i = load i8, ptr %has_msp34xx2.i, align 4
  %bf.clear.i.i227.i = and i8 %bf.load.i.i226.i, -4
  %bf.set.i.i228.i = or i8 %bf.clear.i.i227.i, %143
  store i8 %bf.set.i.i228.i, ptr %has_msp34xx2.i, align 4
  %145 = ptrtoint ptr %is_em28006 to i32
  call void @__asan_load2_noabort(i32 %145)
  %bf.load8.i.i229.i = load i16, ptr %is_em28006, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load8.i.i229.i)
  %tobool9.not.i.i230.i = icmp sgt i16 %bf.load8.i.i229.i, -1
  br i1 %tobool9.not.i.i230.i, label %if.then10.i.i232.i, label %if.then41.i.em28xx_set_model.exit235.i_crit_edge

if.then41.i.em28xx_set_model.exit235.i_crit_edge: ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %em28xx_set_model.exit235.i

if.then10.i.i232.i:                               ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i.i231.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext %spec.store.select13.i.i225.i) #11
  br label %em28xx_set_model.exit235.i

em28xx_set_model.exit235.i:                       ; preds = %if.then10.i.i232.i, %if.then41.i.em28xx_set_model.exit235.i_crit_edge
  tail call void @msleep(i32 noundef 50) #11
  %146 = ptrtoint ptr %def_i2c_bus.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %def_i2c_bus.i, align 8
  %148 = ptrtoint ptr %def_i2c_bus18.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %def_i2c_bus18.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %em28xx_set_model.exit235.i, %sw.bb38.i.if.end42.i_crit_edge
  %tuner_gpio.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 8
  %149 = ptrtoint ptr %tuner_gpio.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %tuner_gpio.i, align 8
  %call44.i = tail call i32 @em28xx_gpio_set(ptr noundef %dev, ptr noundef %150) #11
  %call45.i = tail call i32 @em28xx_set_mode(ptr noundef %dev, i32 noundef 1) #11
  br label %sw.epilog55.i

sw.bb46.i:                                        ; preds = %do.end13.i
  %call47.i = tail call fastcc i32 @em28xx_hint_board(ptr noundef %dev) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.then49.i, label %sw.bb46.i.if.end50.i_crit_edge

sw.bb46.i.if.end50.i_crit_edge:                   ; preds = %sw.bb46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end50.i

if.then49.i:                                      ; preds = %sw.bb46.i
  %151 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %model, align 8
  %arrayidx.i238.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %152
  %153 = call ptr @memcpy(ptr %board.i, ptr %arrayidx.i238.i, i32 168)
  %154 = ptrtoint ptr %is_em28006 to i32
  call void @__asan_load2_noabort(i32 %154)
  %bf.load.i240.i = load i16, ptr %is_em28006, align 8
  %155 = ptrtoint ptr %has_msp34xx2.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %bf.load3.i242.i = load i8, ptr %has_msp34xx2.i, align 4
  %sh.diff.i243.i = lshr i16 %bf.load.i240.i, 12
  %tr.sh.diff.i244.i = trunc i16 %sh.diff.i243.i to i8
  %bf.shl.i245.i = and i8 %tr.sh.diff.i244.i, 4
  %bf.clear4.i246.i = and i8 %bf.load3.i242.i, -13
  %bf.set.i247.i = or i8 %bf.shl.i245.i, %bf.clear4.i246.i
  %sh.diff27.i248.i = lshr i16 %bf.load.i240.i, 6
  %tr.sh.diff28.i249.i = trunc i16 %sh.diff27.i248.i to i8
  %bf.shl13.i250.i = and i8 %tr.sh.diff28.i249.i, 8
  %bf.set15.i251.i = or i8 %bf.set.i247.i, %bf.shl13.i250.i
  store i8 %bf.set15.i251.i, ptr %has_msp34xx2.i, align 4
  %xclk1.i.i252.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %152, i32 11
  %156 = ptrtoint ptr %xclk1.i.i252.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %xclk1.i.i252.i, align 2
  %i2c_speed2.i.i253.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %152, i32 12
  %158 = ptrtoint ptr %i2c_speed2.i.i253.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %i2c_speed2.i.i253.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %157)
  %tobool.not.i.i254.i = icmp eq i8 %157, 0
  %spec.store.select.i.i255.i = select i1 %tobool.not.i.i254.i, i8 39, i8 %157
  %call.i.i256.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 15, i8 noundef zeroext %spec.store.select.i.i255.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool3.not.i.i257.i = icmp eq i8 %159, 0
  %spec.store.select13.i.i258.i = select i1 %tobool3.not.i.i257.i, i8 64, i8 %159
  %160 = and i8 %spec.store.select13.i.i258.i, 3
  %161 = ptrtoint ptr %has_msp34xx2.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %bf.load.i.i259.i = load i8, ptr %has_msp34xx2.i, align 4
  %bf.clear.i.i260.i = and i8 %bf.load.i.i259.i, -4
  %bf.set.i.i261.i = or i8 %bf.clear.i.i260.i, %160
  store i8 %bf.set.i.i261.i, ptr %has_msp34xx2.i, align 4
  %162 = ptrtoint ptr %is_em28006 to i32
  call void @__asan_load2_noabort(i32 %162)
  %bf.load8.i.i262.i = load i16, ptr %is_em28006, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load8.i.i262.i)
  %tobool9.not.i.i263.i = icmp sgt i16 %bf.load8.i.i262.i, -1
  br i1 %tobool9.not.i.i263.i, label %if.then10.i.i265.i, label %if.then49.i.em28xx_set_model.exit268.i_crit_edge

if.then49.i.em28xx_set_model.exit268.i_crit_edge: ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %em28xx_set_model.exit268.i

if.then10.i.i265.i:                               ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i.i264.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext %spec.store.select13.i.i258.i) #11
  br label %em28xx_set_model.exit268.i

em28xx_set_model.exit268.i:                       ; preds = %if.then10.i.i265.i, %if.then49.i.em28xx_set_model.exit268.i_crit_edge
  tail call void @msleep(i32 noundef 50) #11
  %163 = ptrtoint ptr %def_i2c_bus.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %def_i2c_bus.i, align 8
  %165 = ptrtoint ptr %def_i2c_bus18.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %164, ptr %def_i2c_bus18.i, align 4
  br label %if.end50.i

if.end50.i:                                       ; preds = %em28xx_set_model.exit268.i, %sw.bb46.i.if.end50.i_crit_edge
  %tuner_gpio52.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 8
  %166 = ptrtoint ptr %tuner_gpio52.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %tuner_gpio52.i, align 8
  %call53.i = tail call i32 @em28xx_gpio_set(ptr noundef %dev, ptr noundef %167) #11
  %call54.i = tail call i32 @em28xx_set_mode(ptr noundef %dev, i32 noundef 1) #11
  br label %sw.epilog55.i

sw.epilog55.i:                                    ; preds = %if.end50.i, %if.end42.i, %sw.bb36.i, %sw.bb33.i, %cleanup.i, %do.end13.i.sw.epilog55.i_crit_edge
  %168 = ptrtoint ptr %is_em28006 to i32
  call void @__asan_load2_noabort(i32 %168)
  %bf.load57.i = load i16, ptr %is_em28006, align 8
  %169 = and i16 %bf.load57.i, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %169)
  %cmp61.not.i = icmp eq i16 %169, 0
  br i1 %cmp61.not.i, label %sw.epilog55.i.if.end68.i_crit_edge, label %do.end65.i

sw.epilog55.i.if.end68.i_crit_edge:               ; preds = %sw.epilog55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68.i

do.end65.i:                                       ; preds = %sw.epilog55.i
  call void @__sanitizer_cov_trace_pc() #13
  %170 = ptrtoint ptr %intf2 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %intf2, align 4
  %dev67.i = getelementptr inbounds %struct.usb_interface, ptr %171, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev67.i, ptr noundef nonnull @.str.230) #14
  br label %if.end68.i

if.end68.i:                                       ; preds = %do.end65.i, %sw.epilog55.i.if.end68.i_crit_edge
  %eedata69.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 38
  %172 = ptrtoint ptr %eedata69.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %eedata69.i, align 4
  call void @kfree(ptr noundef %173) #11
  %174 = ptrtoint ptr %eedata69.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr null, ptr %eedata69.i, align 4
  %175 = load i32, ptr @tuner, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %175)
  %cmp71.i = icmp sgt i32 %175, -1
  br i1 %cmp71.i, label %if.then72.i, label %if.end68.i.if.end74.i_crit_edge

if.end68.i.if.end74.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74.i

if.then72.i:                                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #13
  %176 = ptrtoint ptr %tuner_type18.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 %175, ptr %tuner_type18.i, align 8
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.then72.i, %if.end68.i.if.end74.i_crit_edge
  %177 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %model, align 8
  %arrayidx78.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %178, i32 17, i32 0
  %179 = ptrtoint ptr %arrayidx78.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %arrayidx78.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool79.not.i = icmp eq i32 %180, 0
  br i1 %tobool79.not.i, label %for.inc104.thread.i, label %for.inc104.i

for.body109.preheader.i:                          ; preds = %for.inc104.3.i.for.body109.preheader.i_crit_edge, %for.inc104.2.thread.i.for.body109.preheader.i_crit_edge
  %idx.1.3304.i = phi i32 [ %idx.1.3.i, %for.inc104.3.i.for.body109.preheader.i_crit_edge ], [ 0, %for.inc104.2.thread.i.for.body109.preheader.i_crit_edge ]
  %181 = shl nuw nsw i32 %idx.1.3304.i, 2
  %182 = add nuw nsw i32 %181, 5276
  %uglygep.i = getelementptr i8, ptr %dev, i32 %182
  %183 = sub i32 16, %181
  %184 = call ptr @memset(ptr %uglygep.i, i32 255, i32 %183)
  br label %cleanup

for.inc104.i:                                     ; preds = %if.end74.i
  %amux100.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %178, i32 17, i32 0, i32 2
  %185 = ptrtoint ptr %amux100.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %amux100.i, align 4
  %arrayidx103.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 29, i32 0
  %187 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %arrayidx103.i, align 4
  %arrayidx78.1.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %178, i32 17, i32 1
  %188 = ptrtoint ptr %arrayidx78.1.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx78.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool79.not.1.i = icmp eq i32 %189, 0
  br i1 %tobool79.not.1.i, label %for.inc104.i.for.inc104.1.i_crit_edge, label %for.body84.lr.ph.1.i

for.inc104.i.for.inc104.1.i_crit_edge:            ; preds = %for.inc104.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc104.1.i

for.inc104.thread.i:                              ; preds = %if.end74.i
  %arrayidx78.1281.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %178, i32 17, i32 1
  %190 = ptrtoint ptr %arrayidx78.1281.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %arrayidx78.1281.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %191)
  %tobool79.not.1282.i = icmp eq i32 %191, 0
  br i1 %tobool79.not.1282.i, label %for.inc104.1.thread.i, label %for.inc104.thread.i.if.end95.critedge.1.i_crit_edge

for.inc104.thread.i.if.end95.critedge.1.i_crit_edge: ; preds = %for.inc104.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.critedge.1.i

for.body84.lr.ph.1.i:                             ; preds = %for.inc104.i
  %amux.1.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %178, i32 17, i32 1, i32 2
  %192 = ptrtoint ptr %amux.1.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %amux.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %193, i32 %186)
  %cmp90.1.i = icmp eq i32 %193, %186
  br i1 %cmp90.1.i, label %for.body84.lr.ph.1.i.for.inc104.1.i_crit_edge, label %for.body84.lr.ph.1.i.if.end95.critedge.1.i_crit_edge

for.body84.lr.ph.1.i.if.end95.critedge.1.i_crit_edge: ; preds = %for.body84.lr.ph.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.critedge.1.i

for.body84.lr.ph.1.i.for.inc104.1.i_crit_edge:    ; preds = %for.body84.lr.ph.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc104.1.i

if.end95.critedge.1.i:                            ; preds = %for.body84.lr.ph.1.i.if.end95.critedge.1.i_crit_edge, %for.inc104.thread.i.if.end95.critedge.1.i_crit_edge
  %idx.1284287.i = phi i32 [ 1, %for.body84.lr.ph.1.i.if.end95.critedge.1.i_crit_edge ], [ 0, %for.inc104.thread.i.if.end95.critedge.1.i_crit_edge ]
  %amux100.1.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %178, i32 17, i32 1, i32 2
  %194 = ptrtoint ptr %amux100.1.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %amux100.1.i, align 4
  %inc102.1.i = add nuw nsw i32 %idx.1284287.i, 1
  %arrayidx103.1.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 29, i32 %idx.1284287.i
  %196 = ptrtoint ptr %arrayidx103.1.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %195, ptr %arrayidx103.1.i, align 4
  br label %for.inc104.1.i

for.inc104.1.i:                                   ; preds = %if.end95.critedge.1.i, %for.body84.lr.ph.1.i.for.inc104.1.i_crit_edge, %for.inc104.i.for.inc104.1.i_crit_edge
  %idx.1.1.i = phi i32 [ %inc102.1.i, %if.end95.critedge.1.i ], [ 1, %for.inc104.i.for.inc104.1.i_crit_edge ], [ 1, %for.body84.lr.ph.1.i.for.inc104.1.i_crit_edge ]
  %arrayidx78.2.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %178, i32 17, i32 2
  %197 = ptrtoint ptr %arrayidx78.2.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx78.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %198)
  %tobool79.not.2.i = icmp eq i32 %198, 0
  br i1 %tobool79.not.2.i, label %for.inc104.1.i.for.inc104.2.i_crit_edge, label %for.cond82.preheader.2.i

for.inc104.1.i.for.inc104.2.i_crit_edge:          ; preds = %for.inc104.1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc104.2.i

for.inc104.1.thread.i:                            ; preds = %for.inc104.thread.i
  %arrayidx78.2289.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %178, i32 17, i32 2
  %199 = ptrtoint ptr %arrayidx78.2289.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx78.2289.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool79.not.2290.i = icmp eq i32 %200, 0
  br i1 %tobool79.not.2290.i, label %for.inc104.2.thread.i, label %for.inc104.1.thread.i.if.end95.critedge.2.i_crit_edge

for.inc104.1.thread.i.if.end95.critedge.2.i_crit_edge: ; preds = %for.inc104.1.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.critedge.2.i

for.cond82.preheader.2.i:                         ; preds = %for.inc104.1.i
  %amux.2.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %178, i32 17, i32 2, i32 2
  %201 = ptrtoint ptr %amux.2.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %amux.2.i, align 4
  %arrayidx89.2.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 29, i32 0
  %203 = ptrtoint ptr %arrayidx89.2.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx89.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %204)
  %cmp90.2.i = icmp eq i32 %202, %204
  br i1 %cmp90.2.i, label %for.cond82.preheader.2.i.for.inc104.2.i_crit_edge, label %for.cond82.2.i

for.cond82.preheader.2.i.for.inc104.2.i_crit_edge: ; preds = %for.cond82.preheader.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc104.2.i

for.cond82.2.i:                                   ; preds = %for.cond82.preheader.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %idx.1.1.i)
  %exitcond.2.not.i = icmp eq i32 %idx.1.1.i, 1
  br i1 %exitcond.2.not.i, label %for.cond82.2.i.if.end95.critedge.2.i_crit_edge, label %for.body84.2.i.1

for.cond82.2.i.if.end95.critedge.2.i_crit_edge:   ; preds = %for.cond82.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.critedge.2.i

for.body84.2.i.1:                                 ; preds = %for.cond82.2.i
  %arrayidx89.2.i.1 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 29, i32 1
  %205 = ptrtoint ptr %arrayidx89.2.i.1 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx89.2.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %202, i32 %206)
  %cmp90.2.i.1 = icmp eq i32 %202, %206
  br i1 %cmp90.2.i.1, label %for.body84.2.i.1.for.inc104.2.i_crit_edge, label %for.body84.2.i.1.if.end95.critedge.2.i_crit_edge

for.body84.2.i.1.if.end95.critedge.2.i_crit_edge: ; preds = %for.body84.2.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.critedge.2.i

for.body84.2.i.1.for.inc104.2.i_crit_edge:        ; preds = %for.body84.2.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc104.2.i

if.end95.critedge.2.i:                            ; preds = %for.body84.2.i.1.if.end95.critedge.2.i_crit_edge, %for.cond82.2.i.if.end95.critedge.2.i_crit_edge, %for.inc104.1.thread.i.if.end95.critedge.2.i_crit_edge
  %idx.1.1292.i = phi i32 [ 0, %for.inc104.1.thread.i.if.end95.critedge.2.i_crit_edge ], [ %idx.1.1.i, %for.body84.2.i.1.if.end95.critedge.2.i_crit_edge ], [ %idx.1.1.i, %for.cond82.2.i.if.end95.critedge.2.i_crit_edge ]
  %amux100.2.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %178, i32 17, i32 2, i32 2
  %207 = ptrtoint ptr %amux100.2.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %amux100.2.i, align 4
  %inc102.2.i = add nsw i32 %idx.1.1292.i, 1
  %arrayidx103.2.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 29, i32 %idx.1.1292.i
  %209 = ptrtoint ptr %arrayidx103.2.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %208, ptr %arrayidx103.2.i, align 4
  br label %for.inc104.2.i

for.inc104.2.i:                                   ; preds = %if.end95.critedge.2.i, %for.body84.2.i.1.for.inc104.2.i_crit_edge, %for.cond82.preheader.2.i.for.inc104.2.i_crit_edge, %for.inc104.1.i.for.inc104.2.i_crit_edge
  %idx.1.2.i = phi i32 [ %inc102.2.i, %if.end95.critedge.2.i ], [ %idx.1.1.i, %for.inc104.1.i.for.inc104.2.i_crit_edge ], [ %idx.1.1.i, %for.body84.2.i.1.for.inc104.2.i_crit_edge ], [ %idx.1.1.i, %for.cond82.preheader.2.i.for.inc104.2.i_crit_edge ]
  %210 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %model, align 8
  %arrayidx78.3.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %211, i32 17, i32 3
  %212 = ptrtoint ptr %arrayidx78.3.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx78.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %tobool79.not.3.i = icmp eq i32 %213, 0
  br i1 %tobool79.not.3.i, label %for.inc104.2.i.for.inc104.3.i_crit_edge, label %for.cond82.preheader.3.i

for.inc104.2.i.for.inc104.3.i_crit_edge:          ; preds = %for.inc104.2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc104.3.i

for.inc104.2.thread.i:                            ; preds = %for.inc104.1.thread.i
  %arrayidx78.3296.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %178, i32 17, i32 3
  %214 = ptrtoint ptr %arrayidx78.3296.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx78.3296.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool79.not.3297.i = icmp eq i32 %215, 0
  br i1 %tobool79.not.3297.i, label %for.inc104.2.thread.i.for.body109.preheader.i_crit_edge, label %for.inc104.2.thread.i.if.end95.critedge.3.i_crit_edge

for.inc104.2.thread.i.if.end95.critedge.3.i_crit_edge: ; preds = %for.inc104.2.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.critedge.3.i

for.inc104.2.thread.i.for.body109.preheader.i_crit_edge: ; preds = %for.inc104.2.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body109.preheader.i

for.cond82.preheader.3.i:                         ; preds = %for.inc104.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.1.2.i)
  %cmp83269.3.i = icmp sgt i32 %idx.1.2.i, 0
  br i1 %cmp83269.3.i, label %for.body84.lr.ph.3.i, label %for.cond82.preheader.3.i.if.end95.critedge.3.i_crit_edge

for.cond82.preheader.3.i.if.end95.critedge.3.i_crit_edge: ; preds = %for.cond82.preheader.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.critedge.3.i

for.body84.lr.ph.3.i:                             ; preds = %for.cond82.preheader.3.i
  %amux.3.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %211, i32 17, i32 3, i32 2
  %216 = ptrtoint ptr %amux.3.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %amux.3.i, align 4
  %arrayidx89.3.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 29, i32 0
  %218 = ptrtoint ptr %arrayidx89.3.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx89.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %217, i32 %219)
  %cmp90.3.i = icmp eq i32 %217, %219
  br i1 %cmp90.3.i, label %for.body84.lr.ph.3.i.for.inc104.3.i_crit_edge, label %for.cond82.3.i

for.body84.lr.ph.3.i.for.inc104.3.i_crit_edge:    ; preds = %for.body84.lr.ph.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc104.3.i

for.cond82.3.i:                                   ; preds = %for.body84.lr.ph.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %idx.1.2.i)
  %exitcond.3.not.i = icmp eq i32 %idx.1.2.i, 1
  br i1 %exitcond.3.not.i, label %for.cond82.3.i.if.end95.critedge.3.i_crit_edge, label %for.body84.3.i.1

for.cond82.3.i.if.end95.critedge.3.i_crit_edge:   ; preds = %for.cond82.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.critedge.3.i

for.body84.3.i.1:                                 ; preds = %for.cond82.3.i
  %arrayidx89.3.i.1 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 29, i32 1
  %220 = ptrtoint ptr %arrayidx89.3.i.1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx89.3.i.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %217, i32 %221)
  %cmp90.3.i.1 = icmp eq i32 %217, %221
  br i1 %cmp90.3.i.1, label %for.body84.3.i.1.for.inc104.3.i_crit_edge, label %for.cond82.3.i.1

for.body84.3.i.1.for.inc104.3.i_crit_edge:        ; preds = %for.body84.3.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc104.3.i

for.cond82.3.i.1:                                 ; preds = %for.body84.3.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %idx.1.2.i)
  %exitcond.3.not.i.1 = icmp eq i32 %idx.1.2.i, 2
  br i1 %exitcond.3.not.i.1, label %for.cond82.3.i.1.if.end95.critedge.3.i_crit_edge, label %for.body84.3.i.2

for.cond82.3.i.1.if.end95.critedge.3.i_crit_edge: ; preds = %for.cond82.3.i.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.critedge.3.i

for.body84.3.i.2:                                 ; preds = %for.cond82.3.i.1
  %arrayidx89.3.i.2 = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 29, i32 2
  %222 = ptrtoint ptr %arrayidx89.3.i.2 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx89.3.i.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %217, i32 %223)
  %cmp90.3.i.2 = icmp eq i32 %217, %223
  br i1 %cmp90.3.i.2, label %for.body84.3.i.2.for.inc104.3.i_crit_edge, label %for.body84.3.i.2.if.end95.critedge.3.i_crit_edge

for.body84.3.i.2.if.end95.critedge.3.i_crit_edge: ; preds = %for.body84.3.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.critedge.3.i

for.body84.3.i.2.for.inc104.3.i_crit_edge:        ; preds = %for.body84.3.i.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc104.3.i

if.end95.critedge.3.i:                            ; preds = %for.body84.3.i.2.if.end95.critedge.3.i_crit_edge, %for.cond82.3.i.1.if.end95.critedge.3.i_crit_edge, %for.cond82.3.i.if.end95.critedge.3.i_crit_edge, %for.cond82.preheader.3.i.if.end95.critedge.3.i_crit_edge, %for.inc104.2.thread.i.if.end95.critedge.3.i_crit_edge
  %224 = phi i32 [ %211, %for.cond82.preheader.3.i.if.end95.critedge.3.i_crit_edge ], [ %178, %for.inc104.2.thread.i.if.end95.critedge.3.i_crit_edge ], [ %211, %for.body84.3.i.2.if.end95.critedge.3.i_crit_edge ], [ %211, %for.cond82.3.i.1.if.end95.critedge.3.i_crit_edge ], [ %211, %for.cond82.3.i.if.end95.critedge.3.i_crit_edge ]
  %idx.1.2299.i = phi i32 [ %idx.1.2.i, %for.cond82.preheader.3.i.if.end95.critedge.3.i_crit_edge ], [ 0, %for.inc104.2.thread.i.if.end95.critedge.3.i_crit_edge ], [ %idx.1.2.i, %for.body84.3.i.2.if.end95.critedge.3.i_crit_edge ], [ %idx.1.2.i, %for.cond82.3.i.1.if.end95.critedge.3.i_crit_edge ], [ %idx.1.2.i, %for.cond82.3.i.if.end95.critedge.3.i_crit_edge ]
  %amux100.3.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %224, i32 17, i32 3, i32 2
  %225 = ptrtoint ptr %amux100.3.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %amux100.3.i, align 4
  %inc102.3.i = add i32 %idx.1.2299.i, 1
  %arrayidx103.3.i = getelementptr %struct.em28xx, ptr %dev, i32 0, i32 29, i32 %idx.1.2299.i
  %227 = ptrtoint ptr %arrayidx103.3.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %226, ptr %arrayidx103.3.i, align 4
  br label %for.inc104.3.i

for.inc104.3.i:                                   ; preds = %if.end95.critedge.3.i, %for.body84.3.i.2.for.inc104.3.i_crit_edge, %for.body84.3.i.1.for.inc104.3.i_crit_edge, %for.body84.lr.ph.3.i.for.inc104.3.i_crit_edge, %for.inc104.2.i.for.inc104.3.i_crit_edge
  %idx.1.3.i = phi i32 [ %inc102.3.i, %if.end95.critedge.3.i ], [ %idx.1.2.i, %for.inc104.2.i.for.inc104.3.i_crit_edge ], [ %idx.1.2.i, %for.body84.3.i.2.for.inc104.3.i_crit_edge ], [ %idx.1.2.i, %for.body84.3.i.1.for.inc104.3.i_crit_edge ], [ %idx.1.2.i, %for.body84.lr.ph.3.i.for.inc104.3.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %idx.1.3.i)
  %cmp108276.i = icmp slt i32 %idx.1.3.i, 4
  br i1 %cmp108276.i, label %for.inc104.3.i.for.body109.preheader.i_crit_edge, label %for.inc104.3.i.cleanup_crit_edge

for.inc104.3.i.cleanup_crit_edge:                 ; preds = %for.inc104.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc104.3.i.for.body109.preheader.i_crit_edge: ; preds = %for.inc104.3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body109.preheader.i

err_deinit_media:                                 ; preds = %do.end132, %do.end111, %if.then86.err_deinit_media_crit_edge
  %retval1.2 = phi i32 [ %call104, %do.end111 ], [ %call125, %do.end132 ], [ -19, %if.then86.err_deinit_media_crit_edge ]
  %media_dev.i14 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 76
  %228 = ptrtoint ptr %media_dev.i14 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %media_dev.i14, align 4
  %tobool.not.i15 = icmp eq ptr %229, null
  br i1 %tobool.not.i15, label %err_deinit_media.cleanup_crit_edge, label %if.then.i16

err_deinit_media.cleanup_crit_edge:               ; preds = %err_deinit_media
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i16:                                      ; preds = %err_deinit_media
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @media_device_unregister(ptr noundef nonnull %229) #11
  %230 = ptrtoint ptr %media_dev.i14 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %media_dev.i14, align 4
  tail call void @media_device_cleanup(ptr noundef %231) #11
  %232 = ptrtoint ptr %media_dev.i14 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %media_dev.i14, align 4
  tail call void @kfree(ptr noundef %233) #11
  %234 = ptrtoint ptr %media_dev.i14 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr null, ptr %media_dev.i14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i16, %err_deinit_media.cleanup_crit_edge, %for.inc104.3.i.cleanup_crit_edge, %for.body109.preheader.i, %if.end90
  %retval.0 = phi i32 [ 0, %if.end90 ], [ 0, %for.body109.preheader.i ], [ 0, %for.inc104.3.i.cleanup_crit_edge ], [ %retval1.2, %err_deinit_media.cleanup_crit_edge ], [ %retval1.2, %if.then.i16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em28xx_duplicate_dev(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmemdup(ptr noundef %dev, i32 noundef 6528, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %do.cond7.do.body_crit_edge, %entry.do.body_crit_edge
  %call1 = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull @em28xx_devused, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call1)
  %cmp = icmp sgt i32 %call1, 15
  br i1 %cmp, label %do.end, label %do.cond7

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %0 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intf, align 4
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %1, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.246, i32 noundef 16) #14
  tail call void @kfree(ptr noundef nonnull %call) #11
  br label %cleanup

do.cond7:                                         ; preds = %do.body
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef %call1, ptr noundef nonnull @em28xx_devused) #11
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end10, label %do.cond7.do.body_crit_edge

do.cond7.do.body_crit_edge:                       ; preds = %do.cond7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.end10:                                         ; preds = %do.cond7
  call void @__sanitizer_cov_trace_pc() #13
  %devno = getelementptr inbounds %struct.em28xx, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %devno to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %devno, align 4
  %name = getelementptr inbounds %struct.em28xx, ptr %call, i32 0, i32 11
  %call11 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 28, ptr noundef nonnull @.str.248, i32 noundef %call1)
  %dev_next12 = getelementptr inbounds %struct.em28xx, ptr %call, i32 0, i32 79
  %3 = ptrtoint ptr %dev_next12 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %dev_next12, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end10, %do.end, %entry.cleanup_crit_edge
  %call.sink = phi ptr [ %call, %do.end10 ], [ null, %do.end ], [ null, %entry.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %do.end10 ], [ -12, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  %dev_next13 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 79
  %4 = ptrtoint ptr %dev_next13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.sink, ptr %dev_next13, align 8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_write_reg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @request_modules(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %request_module_wk = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 34
  tail call void @__init_work(ptr noundef %request_module_wk, i32 noundef 0) #11
  %0 = ptrtoint ptr %request_module_wk to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %request_module_wk, align 4
  %lockdep_map = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 34, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.249, ptr noundef nonnull @request_modules.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry4 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 34, i32 1
  %1 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 34, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 34, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @request_module_async, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %request_module_wk) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_write_regs(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_read_reg(ptr noundef, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_read_reg_req_len(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_write_regs_req(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_read_reg_req(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_audio_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @em28xx_init_extension(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @em28xx_pre_card_setup(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %model.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %model.i, align 8
  %xclk1.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %1, i32 11
  %2 = ptrtoint ptr %xclk1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %xclk1.i, align 2
  %i2c_speed2.i = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %1, i32 12
  %4 = ptrtoint ptr %i2c_speed2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %i2c_speed2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %spec.store.select.i = select i1 %tobool.not.i, i8 39, i8 %3
  %call.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 15, i8 noundef zeroext %spec.store.select.i) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not.i = icmp eq i8 %5, 0
  %spec.store.select13.i = select i1 %tobool3.not.i, i8 64, i8 %5
  %6 = and i8 %spec.store.select13.i, 3
  %i2c_speed6.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %i2c_speed6.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %i2c_speed6.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -4
  %bf.set.i = or i8 %bf.clear.i, %6
  store i8 %bf.set.i, ptr %i2c_speed6.i, align 4
  %is_em2800.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 10
  %8 = ptrtoint ptr %is_em2800.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load8.i = load i16, ptr %is_em2800.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load8.i)
  %tobool9.not.i = icmp sgt i16 %bf.load8.i, -1
  br i1 %tobool9.not.i, label %if.then10.i, label %entry.em28xx_set_xclk_i2c_speed.exit_crit_edge

entry.em28xx_set_xclk_i2c_speed.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %em28xx_set_xclk_i2c_speed.exit

if.then10.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call11.i = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 6, i8 noundef zeroext %spec.store.select13.i) #11
  br label %em28xx_set_xclk_i2c_speed.exit

em28xx_set_xclk_i2c_speed.exit:                   ; preds = %if.then10.i, %entry.em28xx_set_xclk_i2c_speed.exit_crit_edge
  tail call void @msleep(i32 noundef 50) #11
  %9 = ptrtoint ptr %model.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %model.i, align 8
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.260)
  switch i32 %10, label %em28xx_set_xclk_i2c_speed.exit.sw.epilog_crit_edge [
    i32 40, label %sw.bb
    i32 39, label %em28xx_set_xclk_i2c_speed.exit.sw.bb1_crit_edge
    i32 47, label %em28xx_set_xclk_i2c_speed.exit.sw.bb1_crit_edge83
    i32 46, label %sw.bb3
    i32 44, label %sw.bb10
    i32 45, label %sw.bb14
    i32 25, label %em28xx_set_xclk_i2c_speed.exit.sw.bb18_crit_edge
    i32 5, label %em28xx_set_xclk_i2c_speed.exit.sw.bb18_crit_edge84
    i32 69, label %sw.bb20
    i32 63, label %sw.bb25
    i32 64, label %sw.bb33
    i32 65, label %sw.bb35
    i32 67, label %sw.bb40
  ]

em28xx_set_xclk_i2c_speed.exit.sw.bb18_crit_edge84: ; preds = %em28xx_set_xclk_i2c_speed.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb18

em28xx_set_xclk_i2c_speed.exit.sw.bb18_crit_edge: ; preds = %em28xx_set_xclk_i2c_speed.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb18

em28xx_set_xclk_i2c_speed.exit.sw.bb1_crit_edge83: ; preds = %em28xx_set_xclk_i2c_speed.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

em28xx_set_xclk_i2c_speed.exit.sw.bb1_crit_edge:  ; preds = %em28xx_set_xclk_i2c_speed.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1

em28xx_set_xclk_i2c_speed.exit.sw.epilog_crit_edge: ; preds = %em28xx_set_xclk_i2c_speed.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %em28xx_set_xclk_i2c_speed.exit
  call void @__sanitizer_cov_trace_pc() #13
  %i2s_speed = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 16
  %12 = ptrtoint ptr %i2s_speed to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2048000, ptr %i2s_speed, align 8
  br label %sw.epilog

sw.bb1:                                           ; preds = %em28xx_set_xclk_i2c_speed.exit.sw.bb1_crit_edge, %em28xx_set_xclk_i2c_speed.exit.sw.bb1_crit_edge83
  %call = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext 109) #11
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %call2 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext 125) #11
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %em28xx_set_xclk_i2c_speed.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 4, i8 noundef zeroext 0) #11
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %call5 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 4, i8 noundef zeroext 1) #11
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %call6 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -3) #11
  tail call void @msleep(i32 noundef 70) #11
  %call7 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -4) #11
  tail call void @msleep(i32 noundef 70) #11
  %call8 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -36) #11
  tail call void @msleep(i32 noundef 70) #11
  %call9 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -4) #11
  tail call void @msleep(i32 noundef 70) #11
  br label %sw.epilog

sw.bb10:                                          ; preds = %em28xx_set_xclk_i2c_speed.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call11 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -2) #11
  tail call void @msleep(i32 noundef 70) #11
  %call12 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -34) #11
  tail call void @msleep(i32 noundef 70) #11
  %call13 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -2) #11
  tail call void @msleep(i32 noundef 70) #11
  br label %sw.epilog

sw.bb14:                                          ; preds = %em28xx_set_xclk_i2c_speed.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call15 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -2) #11
  tail call void @msleep(i32 noundef 70) #11
  %call16 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -34) #11
  tail call void @msleep(i32 noundef 70) #11
  %call17 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -2) #11
  tail call void @msleep(i32 noundef 70) #11
  br label %sw.epilog

sw.bb18:                                          ; preds = %em28xx_set_xclk_i2c_speed.exit.sw.bb18_crit_edge, %em28xx_set_xclk_i2c_speed.exit.sw.bb18_crit_edge84
  %call19 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -3) #11
  br label %sw.epilog

sw.bb20:                                          ; preds = %em28xx_set_xclk_i2c_speed.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call21 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -1) #11
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %call22 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -2) #11
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %call23 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 4, i8 noundef zeroext 0) #11
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %call24 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 4, i8 noundef zeroext 8) #11
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  br label %sw.epilog

sw.bb25:                                          ; preds = %em28xx_set_xclk_i2c_speed.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call26 = tail call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 15, ptr noundef nonnull @.str.213, i32 noundef 1) #11
  %call27 = tail call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 6, ptr noundef nonnull @.str.214, i32 noundef 1) #11
  %call28 = tail call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 13, ptr noundef nonnull @.str.215, i32 noundef 1) #11
  %call29 = tail call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 8, ptr noundef nonnull @.str.216, i32 noundef 1) #11
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %call30 = tail call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 8, ptr noundef nonnull @.str.217, i32 noundef 1) #11
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %call31 = tail call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 8, ptr noundef nonnull @.str.218, i32 noundef 1) #11
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %call32 = tail call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 8, ptr noundef nonnull @.str.219, i32 noundef 1) #11
  br label %sw.epilog

sw.bb33:                                          ; preds = %em28xx_set_xclk_i2c_speed.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call i32 @em28xx_write_regs(ptr noundef %dev, i16 noundef zeroext 8, ptr noundef nonnull @.str.220, i32 noundef 1) #11
  br label %sw.epilog

sw.bb35:                                          ; preds = %em28xx_set_xclk_i2c_speed.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call36 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -1) #11
  tail call void @msleep(i32 noundef 70) #11
  %call37 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -9) #11
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #11
  %call38 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -2) #11
  tail call void @msleep(i32 noundef 70) #11
  %call39 = tail call i32 @em28xx_write_reg(ptr noundef %dev, i16 noundef zeroext 8, i8 noundef zeroext -3) #11
  tail call void @msleep(i32 noundef 70) #11
  br label %sw.epilog

sw.bb40:                                          ; preds = %em28xx_set_xclk_i2c_speed.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add.neg.i = sub i32 -200, %13
  %14 = load volatile i32, ptr @jiffies, align 128
  %sub1.i = add i32 %add.neg.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp3.i = icmp slt i32 %sub1.i, 0
  br i1 %cmp3.i, label %sw.bb40.while.body.i_crit_edge, label %sw.bb40.do.end.i_crit_edge

sw.bb40.do.end.i_crit_edge:                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

sw.bb40.while.body.i_crit_edge:                   ; preds = %sw.bb40
  br label %while.body.i

while.body.i:                                     ; preds = %if.end10.i.while.body.i_crit_edge, %sw.bb40.while.body.i_crit_edge
  %call1.i = tail call i32 @em28xx_read_ac97(ptr noundef %dev, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %while.body.i.sw.epilog_crit_edge, label %if.end.i

while.body.i.sw.epilog_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end.i:                                         ; preds = %while.body.i
  %call3.i = tail call i32 @em28xx_read_ac97(ptr noundef %dev, i8 noundef zeroext 38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.sw.epilog_crit_edge, label %if.end6.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 27280, i32 %call1.i)
  %cmp7.i = icmp ne i32 %call1.i, 27280
  call void @__sanitizer_cov_trace_const_cmp4(i32 27280, i32 %call3.i)
  %cmp8.not.i = icmp eq i32 %call3.i, 27280
  %or.cond.i = select i1 %cmp7.i, i1 true, i1 %cmp8.not.i
  br i1 %or.cond.i, label %if.end10.i, label %if.end6.i.sw.epilog_crit_edge

if.end6.i.sw.epilog_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.end10.i:                                       ; preds = %if.end6.i
  tail call void @msleep(i32 noundef 50) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %15, %add.neg.i
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %if.end10.i.while.body.i_crit_edge, label %if.end10.i.do.end.i_crit_edge

if.end10.i.do.end.i_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.end10.i.while.body.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

do.end.i:                                         ; preds = %if.end10.i.do.end.i_crit_edge, %sw.bb40.do.end.i_crit_edge
  %intf.i = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %16 = ptrtoint ptr %intf.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intf.i, align 4
  %dev11.i = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev11.i, ptr noundef nonnull @.str.221) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i, %if.end6.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %while.body.i.sw.epilog_crit_edge, %sw.bb35, %sw.bb33, %sw.bb25, %sw.bb20, %sw.bb18, %sw.bb14, %sw.bb10, %sw.bb3, %sw.bb1, %sw.bb, %em28xx_set_xclk_i2c_speed.exit.sw.epilog_crit_edge
  %tuner_gpio = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 12, i32 8
  %18 = ptrtoint ptr %tuner_gpio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tuner_gpio, align 8
  %call42 = tail call i32 @em28xx_gpio_set(ptr noundef %dev, ptr noundef %19) #11
  %call43 = tail call i32 @em28xx_set_mode(ptr noundef %dev, i32 noundef 1) #11
  %call44 = tail call i32 @em28xx_set_mode(ptr noundef %dev, i32 noundef 0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rt_mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_i2c_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__media_device_usb_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_read_ac97(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_detect_sensor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @em28xx_hint_board(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %is_webcam = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %is_webcam to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_webcam, align 4
  %1 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %hash = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 32
  %2 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hash, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.261)
  switch i32 %3, label %for.inc.8 [
    i32 1826642575, label %for.cond.preheader.if.then13_crit_edge
    i32 1925995147, label %if.then13.fold.split
    i32 -1771436991, label %if.then13.fold.split119
    i32 376046657, label %if.then13.fold.split120
    i32 -823899495, label %if.then13.fold.split121
    i32 -1199281376, label %if.then13.fold.split122
    i32 1677087677, label %if.then13.fold.split123
    i32 1318138946, label %if.then13.fold.split124
    i32 -2049079522, label %if.then13.fold.split125
  ]

for.cond.preheader.if.then13_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then:                                          ; preds = %entry
  %em28xx_sensor = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 13
  %5 = ptrtoint ptr %em28xx_sensor to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %em28xx_sensor, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.262)
  switch i32 %6, label %if.then.cleanup_crit_edge [
    i32 1, label %if.then1
    i32 2, label %if.then.if.then6_crit_edge
    i32 3, label %if.then.if.then6_crit_edge132
  ]

if.then.if.then6_crit_edge132:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %model = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 71, ptr %model, align 8
  br label %cleanup

if.then6:                                         ; preds = %if.then.if.then6_crit_edge, %if.then.if.then6_crit_edge132
  %model7 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 5
  %9 = ptrtoint ptr %model7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 22, ptr %model7, align 8
  br label %cleanup

if.then13.fold.split:                             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then13.fold.split119:                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then13.fold.split120:                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then13.fold.split121:                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then13.fold.split122:                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then13.fold.split123:                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then13.fold.split124:                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then13.fold.split125:                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then13

if.then13:                                        ; preds = %if.then13.fold.split125, %if.then13.fold.split124, %if.then13.fold.split123, %if.then13.fold.split122, %if.then13.fold.split121, %if.then13.fold.split120, %if.then13.fold.split119, %if.then13.fold.split, %for.cond.preheader.if.then13_crit_edge
  %i.0114.lcssa = phi i32 [ 0, %for.cond.preheader.if.then13_crit_edge ], [ 1, %if.then13.fold.split ], [ 2, %if.then13.fold.split119 ], [ 3, %if.then13.fold.split120 ], [ 4, %if.then13.fold.split121 ], [ 5, %if.then13.fold.split122 ], [ 6, %if.then13.fold.split123 ], [ 7, %if.then13.fold.split124 ], [ 8, %if.then13.fold.split125 ]
  %model15 = getelementptr [9 x %struct.em28xx_hash_table], ptr @em28xx_eeprom_hash, i32 0, i32 %i.0114.lcssa, i32 1
  %10 = ptrtoint ptr %model15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %model15, align 4
  %model16 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 5
  %12 = ptrtoint ptr %model16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %model16, align 8
  %tuner = getelementptr [9 x %struct.em28xx_hash_table], ptr @em28xx_eeprom_hash, i32 0, i32 %i.0114.lcssa, i32 2
  %13 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tuner, align 4
  %tuner_type = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 18
  %15 = ptrtoint ptr %tuner_type to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tuner_type, align 8
  %intf = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %16 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %intf, align 4
  %dev18 = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 7
  %arrayidx20 = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %11
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev18, ptr noundef nonnull @.str.232, ptr noundef %19) #14
  br label %cleanup

for.inc.8:                                        ; preds = %for.cond.preheader
  %i2c_hash = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 33
  %20 = ptrtoint ptr %i2c_hash to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i2c_hash, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool22.not = icmp eq i32 %21, 0
  br i1 %tobool22.not, label %if.then23, label %for.inc.8.if.end24_crit_edge

for.inc.8.if.end24_crit_edge:                     ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then23:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  %def_i2c_bus = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 23
  %22 = ptrtoint ptr %def_i2c_bus to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %def_i2c_bus, align 4
  tail call void @em28xx_do_i2c_scan(ptr noundef %dev, i32 noundef %23) #11
  %24 = ptrtoint ptr %i2c_hash to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %i2c_hash, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.inc.8.if.end24_crit_edge
  %25 = phi i32 [ %.pr, %if.then23 ], [ %21, %for.inc.8.if.end24_crit_edge ]
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %25, label %for.inc48.7 [
    i32 -1335217469, label %if.end24.if.then32_crit_edge
    i32 -183369501, label %if.then32.fold.split
    i32 463798400, label %if.then32.fold.split126
    i32 2004877440, label %if.then32.fold.split127
    i32 -988675869, label %if.then32.fold.split128
    i32 1269104768, label %if.then32.fold.split129
    i32 1803550848, label %if.then32.fold.split130
    i32 669057152, label %if.then32.fold.split131
  ]

if.end24.if.then32_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.then32.fold.split:                             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.then32.fold.split126:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.then32.fold.split127:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.then32.fold.split128:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.then32.fold.split129:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.then32.fold.split130:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.then32.fold.split131:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then32

if.then32:                                        ; preds = %if.then32.fold.split131, %if.then32.fold.split130, %if.then32.fold.split129, %if.then32.fold.split128, %if.then32.fold.split127, %if.then32.fold.split126, %if.then32.fold.split, %if.end24.if.then32_crit_edge
  %i.1115.lcssa = phi i32 [ 0, %if.end24.if.then32_crit_edge ], [ 1, %if.then32.fold.split ], [ 2, %if.then32.fold.split126 ], [ 3, %if.then32.fold.split127 ], [ 4, %if.then32.fold.split128 ], [ 5, %if.then32.fold.split129 ], [ 6, %if.then32.fold.split130 ], [ 7, %if.then32.fold.split131 ]
  %model34 = getelementptr [8 x %struct.em28xx_hash_table], ptr @em28xx_i2c_hash, i32 0, i32 %i.1115.lcssa, i32 1
  %27 = ptrtoint ptr %model34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %model34, align 4
  %model35 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 5
  %29 = ptrtoint ptr %model35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %model35, align 8
  %tuner37 = getelementptr [8 x %struct.em28xx_hash_table], ptr @em28xx_i2c_hash, i32 0, i32 %i.1115.lcssa, i32 2
  %30 = ptrtoint ptr %tuner37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tuner37, align 4
  %tuner_type38 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 18
  %32 = ptrtoint ptr %tuner_type38 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %tuner_type38, align 8
  %intf42 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %33 = ptrtoint ptr %intf42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %intf42, align 4
  %dev43 = getelementptr inbounds %struct.usb_interface, ptr %34, i32 0, i32 7
  %arrayidx45 = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %28
  %35 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx45, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev43, ptr noundef nonnull @.str.235, ptr noundef %36) #14
  br label %cleanup

for.inc48.7:                                      ; preds = %if.end24
  %intf54 = getelementptr inbounds %struct.em28xx, ptr %dev, i32 0, i32 44
  %37 = ptrtoint ptr %intf54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %intf54, align 4
  %dev55 = getelementptr inbounds %struct.usb_interface, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hash, align 4
  %41 = ptrtoint ptr %i2c_hash to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %i2c_hash, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.238, i32 noundef %40, i32 noundef %42) #14
  %43 = ptrtoint ptr %intf54 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %intf54, align 4
  %dev62 = getelementptr inbounds %struct.usb_interface, ptr %44, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev62, ptr noundef nonnull @.str.241) #14
  br label %do.end68

do.end68:                                         ; preds = %do.end68.do.end68_crit_edge, %for.inc48.7
  %i.2116 = phi i32 [ 0, %for.inc48.7 ], [ %inc74, %do.end68.do.end68_crit_edge ]
  %45 = ptrtoint ptr %intf54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %intf54, align 4
  %dev70 = getelementptr inbounds %struct.usb_interface, ptr %46, i32 0, i32 7
  %arrayidx71 = getelementptr [107 x %struct.em28xx_board], ptr @em28xx_boards, i32 0, i32 %i.2116
  %47 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx71, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev70, ptr noundef nonnull @.str.244, i32 noundef %i.2116, ptr noundef %48) #14
  %inc74 = add nuw nsw i32 %i.2116, 1
  %exitcond.not = icmp eq i32 %inc74, 107
  br i1 %exitcond.not, label %do.end68.cleanup_crit_edge, label %do.end68.do.end68_crit_edge

do.end68.do.end68_crit_edge:                      ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end68

do.end68.cleanup_crit_edge:                       ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %do.end68.cleanup_crit_edge, %if.then32, %if.then13, %if.then6, %if.then1, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then13 ], [ 0, %if.then32 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then6 ], [ 0, %if.then1 ], [ -1, %do.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tveeprom_hauppauge_analog(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @em28xx_do_i2c_scan(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @request_module_async(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %is_audio_only = getelementptr i8, ptr %work, i32 -5096
  %0 = ptrtoint ptr %is_audio_only to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %is_audio_only, align 4
  %1 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr = getelementptr i8, ptr %work, i32 -5308
  tail call void @em28xx_init_extension(ptr noundef %add.ptr) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @em28xx_close_extension(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_suspend_extension(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @em28xx_resume_extension(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 309)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 309)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !282, !283, !284, !285, !286, !287, !289, !291, !292, !294, !296, !297, !299, !300, !301, !302, !303, !305, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !419, !421, !423, !424, !425, !426, !427, !429, !430, !431, !433, !435, !437, !439, !441, !442, !443, !444, !446, !447, !448, !450, !451, !452, !454, !455, !456, !458, !459, !460, !462, !463, !464, !465, !466, !468, !469, !470, !472, !473, !475, !476, !477, !479, !480, !481, !483, !484, !485, !486, !487, !489, !490, !491, !493, !494, !496, !497, !498, !500, !501, !502, !503, !505, !506, !508, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !540, !541, !542, !544, !545, !546, !548, !550, !551, !552, !554, !555, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !575, !576, !577, !578, !580, !581, !582, !583, !585, !586, !587, !589, !590, !591, !593, !594, !595, !596, !598, !599, !600, !602, !603, !604, !606, !607, !608, !610, !611, !612, !614, !616, !618, !619, !620, !621, !623, !625, !626, !628, !629, !630, !631, !633}
!llvm.module.flags = !{!634, !635, !636, !637, !638, !639, !640, !641}
!llvm.ident = !{!642}

!0 = !{ptr @__param_tuner, !1, !"__param_tuner", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 42, i32 1}
!2 = !{ptr @__UNIQUE_ID_tunertype334, !1, !"__UNIQUE_ID_tunertype334", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_tuner335, !4, !"__UNIQUE_ID_tuner335", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 43, i32 1}
!5 = !{ptr @__param_disable_ir, !6, !"__param_disable_ir", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 46, i32 1}
!7 = !{ptr @__UNIQUE_ID_disable_irtype336, !6, !"__UNIQUE_ID_disable_irtype336", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_disable_ir337, !9, !"__UNIQUE_ID_disable_ir337", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 47, i32 1}
!10 = !{ptr @__param_disable_usb_speed_check, !11, !"__param_disable_usb_speed_check", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 50, i32 1}
!12 = !{ptr @__UNIQUE_ID_disable_usb_speed_checktype338, !11, !"__UNIQUE_ID_disable_usb_speed_checktype338", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_disable_usb_speed_check339, !14, !"__UNIQUE_ID_disable_usb_speed_check339", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 51, i32 1}
!15 = !{ptr @__param_card, !16, !"__param_card", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 55, i32 1}
!17 = !{ptr @__UNIQUE_ID_cardtype340, !16, !"__UNIQUE_ID_cardtype340", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_card341, !19, !"__UNIQUE_ID_card341", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 56, i32 1}
!20 = !{ptr @__param_usb_xfer_mode, !21, !"__param_usb_xfer_mode", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 59, i32 1}
!22 = !{ptr @__UNIQUE_ID_usb_xfer_modetype342, !21, !"__UNIQUE_ID_usb_xfer_modetype342", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_usb_xfer_mode343, !24, !"__UNIQUE_ID_usb_xfer_mode343", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 60, i32 1}
!25 = !{ptr @.str, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 695, i32 19}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 711, i32 20}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 773, i32 19}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 793, i32 19}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 813, i32 19}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1526, i32 15}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1548, i32 19}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1601, i32 19}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1621, i32 19}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1641, i32 17}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1315, i32 19}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1322, i32 19}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1473, i32 21}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1479, i32 21}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 739, i32 19}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1504, i32 19}
!57 = !{ptr @.str.16, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1696, i32 19}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1655, i32 19}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1395, i32 21}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1421, i32 21}
!65 = !{ptr @.str.20, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1427, i32 21}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1342, i32 19}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1719, i32 26}
!71 = !{ptr @.str.23, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1447, i32 21}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1453, i32 21}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1569, i32 17}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 683, i32 20}
!79 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 727, i32 20}
!81 = !{ptr @.str.28, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 833, i32 19}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 893, i32 19}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 853, i32 19}
!87 = !{ptr @.str.31, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 873, i32 19}
!89 = !{ptr @.str.32, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 913, i32 19}
!91 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1130, i32 20}
!93 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 942, i32 19}
!95 = !{ptr @.str.35, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 986, i32 19}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 964, i32 19}
!99 = !{ptr @.str.37, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2187, i32 19}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1068, i32 19}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1013, i32 19}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1002, i32 19}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1027, i32 19}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1112, i32 20}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1092, i32 17}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1144, i32 19}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1187, i32 19}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1193, i32 19}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1172, i32 19}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1178, i32 19}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1201, i32 19}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1209, i32 19}
!127 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1791, i32 17}
!129 = !{ptr @.str.52, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1810, i32 17}
!131 = !{ptr @.str.53, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1745, i32 19}
!133 = !{ptr @.str.54, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1768, i32 19}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1215, i32 19}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1895, i32 19}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1918, i32 19}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1968, i32 19}
!143 = !{ptr @.str.59, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1976, i32 19}
!145 = !{ptr @.str.60, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1992, i32 19}
!147 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1942, i32 19}
!149 = !{ptr @.str.62, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2034, i32 19}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2065, i32 19}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2389, i32 19}
!155 = !{ptr @.str.65, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1369, i32 21}
!157 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1675, i32 19}
!159 = !{ptr @.str.67, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 754, i32 19}
!161 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2085, i32 17}
!163 = !{ptr @.str.69, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2092, i32 19}
!165 = !{ptr @.str.70, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2113, i32 19}
!167 = !{ptr @.str.71, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2128, i32 17}
!169 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1870, i32 11}
!171 = !{ptr @.str.73, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2148, i32 22}
!173 = !{ptr @.str.74, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2166, i32 22}
!175 = !{ptr @.str.75, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1835, i32 12}
!177 = !{ptr @.str.76, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2202, i32 19}
!179 = !{ptr @.str.77, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2210, i32 19}
!181 = !{ptr @.str.78, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 953, i32 19}
!183 = !{ptr @.str.79, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1047, i32 19}
!185 = !{ptr @.str.80, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1050, i32 19}
!187 = !{ptr @.str.81, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2233, i32 20}
!189 = !{ptr @.str.82, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1584, i32 19}
!191 = !{ptr @.str.83, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2019, i32 19}
!193 = !{ptr @.str.84, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2244, i32 17}
!195 = !{ptr @.str.85, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1737, i32 12}
!197 = !{ptr @.str.86, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2255, i32 20}
!199 = !{ptr @.str.87, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1240, i32 19}
!201 = !{ptr @.str.88, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2272, i32 20}
!203 = !{ptr @.str.89, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1271, i32 19}
!205 = !{ptr @.str.90, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1297, i32 19}
!207 = !{ptr @.str.91, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1299, i32 19}
!209 = !{ptr @.str.92, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2283, i32 26}
!211 = !{ptr @.str.93, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2301, i32 20}
!213 = !{ptr @.str.94, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2305, i32 20}
!215 = !{ptr @.str.95, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2315, i32 20}
!217 = !{ptr @.str.96, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2329, i32 20}
!219 = !{ptr @.str.97, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2339, i32 19}
!221 = !{ptr @.str.98, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1287, i32 19}
!223 = !{ptr @.str.99, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1291, i32 19}
!225 = !{ptr @.str.100, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2353, i32 20}
!227 = !{ptr @.str.101, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2357, i32 20}
!229 = !{ptr @.str.102, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2367, i32 12}
!231 = !{ptr @.str.103, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2402, i32 19}
!233 = !{ptr @.str.104, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2425, i32 20}
!235 = !{ptr @.str.105, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2379, i32 12}
!237 = !{ptr @.str.106, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2450, i32 20}
!239 = !{ptr @.str.107, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2460, i32 20}
!241 = !{ptr @.str.108, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2478, i32 20}
!243 = !{ptr @.str.109, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2485, i32 20}
!245 = !{ptr @.str.110, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1306, i32 19}
!247 = !{ptr @.str.111, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2493, i32 20}
!249 = !{ptr @.str.112, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2507, i32 20}
!251 = !{ptr @.str.113, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2529, i32 20}
!253 = !{ptr @.str.114, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 1255, i32 19}
!255 = !{ptr @.str.115, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 716, i32 13}
!257 = !{ptr @.str.116, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2546, i32 26}
!259 = !{ptr @.str.117, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2439, i32 20}
!261 = !{ptr @.str.118, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2564, i32 19}
!263 = !{ptr @.str.119, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2582, i32 20}
!265 = !{ptr @em28xx_boards, !266, !"em28xx_boards", i1 false, i1 false}
!266 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 681, i32 27}
!267 = !{ptr @__ksymtab_em28xx_boards, !268, !"__ksymtab_em28xx_boards", i1 false, i1 false}
!268 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2592, i32 1}
!269 = !{ptr @em28xx_id_table, !270, !"em28xx_id_table", i1 false, i1 false}
!270 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2597, i32 22}
!271 = !{ptr @__ksymtab_em28xx_tuner_callback, !272, !"__ksymtab_em28xx_tuner_callback", i1 false, i1 false}
!272 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2864, i32 1}
!273 = !{ptr @.str.120, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3348, i32 17}
!275 = !{ptr @.str.121, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3368, i32 16}
!277 = !{ptr @__ksymtab_em28xx_setup_xc3028, !278, !"__ksymtab_em28xx_setup_xc3028", i1 false, i1 false}
!278 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3390, i32 1}
!279 = !{ptr @.str.122, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3516, i32 2}
!281 = !{ptr @.str.123, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @.str.124, !280, !"<string literal>", i1 false, i1 false}
!283 = !{ptr @.str.125, !280, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.126, !280, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @em28xx_free_device._entry, !280, !"_entry", i1 false, i1 false}
!286 = !{ptr @em28xx_free_device._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @__ksymtab_em28xx_free_device, !288, !"__ksymtab_em28xx_free_device", i1 false, i1 false}
!288 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3526, i32 1}
!289 = !{ptr @__initcall__kmod_em28xx__344_4200_em28xx_usb_driver_init6, !290, !"__initcall__kmod_em28xx__344_4200_em28xx_usb_driver_init6", i1 false, i1 false}
!290 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 4200, i32 1}
!291 = !{ptr @__exitcall_em28xx_usb_driver_exit, !290, !"__exitcall_em28xx_usb_driver_exit", i1 false, i1 false}
!292 = !{ptr @disable_ir, !293, !"disable_ir", i1 false, i1 false}
!293 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 45, i32 21}
!294 = !{ptr @disable_usb_speed_check, !295, !"disable_usb_speed_check", i1 false, i1 false}
!295 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 49, i32 21}
!296 = !{ptr @__param_str_tuner, !1, !"__param_str_tuner", i1 false, i1 false}
!297 = !{ptr @tuner, !298, !"tuner", i1 false, i1 false}
!298 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 41, i32 12}
!299 = !{ptr @__param_str_disable_ir, !6, !"__param_str_disable_ir", i1 false, i1 false}
!300 = !{ptr @__param_str_disable_usb_speed_check, !11, !"__param_str_disable_usb_speed_check", i1 false, i1 false}
!301 = !{ptr @__param_str_card, !16, !"__param_str_card", i1 false, i1 false}
!302 = !{ptr @__param_arr_card, !16, !"__param_arr_card", i1 false, i1 false}
!303 = !{ptr @card, !304, !"card", i1 false, i1 false}
!304 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 54, i32 21}
!305 = !{ptr @__param_str_usb_xfer_mode, !21, !"__param_str_usb_xfer_mode", i1 false, i1 false}
!306 = !{ptr @usb_xfer_mode, !307, !"usb_xfer_mode", i1 false, i1 false}
!307 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 58, i32 12}
!308 = !{ptr @hauppauge_wintv_hvr_900_digital, !309, !"hauppauge_wintv_hvr_900_digital", i1 false, i1 false}
!309 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 113, i32 36}
!310 = !{ptr @default_tuner_gpio, !311, !"default_tuner_gpio", i1 false, i1 false}
!311 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 261, i32 36}
!312 = !{ptr @hauppauge_wintv_hvr_900_analog, !313, !"hauppauge_wintv_hvr_900_analog", i1 false, i1 false}
!313 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 106, i32 36}
!314 = !{ptr @default_digital, !315, !"default_digital", i1 false, i1 false}
!315 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 85, i32 36}
!316 = !{ptr @default_analog, !317, !"default_analog", i1 false, i1 false}
!317 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 79, i32 36}
!318 = !{ptr @std_snapshot_button, !319, !"std_snapshot_button", i1 false, i1 false}
!319 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 570, i32 35}
!320 = !{ptr @hauppauge_wintv_hvr_900R2_digital, !321, !"hauppauge_wintv_hvr_900R2_digital", i1 false, i1 false}
!321 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 121, i32 36}
!322 = !{ptr @silvercrest_reg_seq, !323, !"silvercrest_reg_seq", i1 false, i1 false}
!323 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 295, i32 36}
!324 = !{ptr @pinnacle_hybrid_pro_analog, !325, !"pinnacle_hybrid_pro_analog", i1 false, i1 false}
!325 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 207, i32 36}
!326 = !{ptr @em2880_msi_digivox_ad_analog, !327, !"em2880_msi_digivox_ad_analog", i1 false, i1 false}
!327 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 128, i32 36}
!328 = !{ptr @terratec_cinergy_USB_XS_FR_digital, !329, !"terratec_cinergy_USB_XS_FR_digital", i1 false, i1 false}
!329 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 225, i32 36}
!330 = !{ptr @terratec_cinergy_USB_XS_FR_analog, !331, !"terratec_cinergy_USB_XS_FR_analog", i1 false, i1 false}
!331 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 219, i32 36}
!332 = !{ptr @pinnacle_hybrid_pro_digital, !333, !"pinnacle_hybrid_pro_digital", i1 false, i1 false}
!333 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 212, i32 36}
!334 = !{ptr @kworld_330u_digital, !335, !"kworld_330u_digital", i1 false, i1 false}
!335 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 157, i32 36}
!336 = !{ptr @kworld_330u_analog, !337, !"kworld_330u_analog", i1 false, i1 false}
!337 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 151, i32 36}
!338 = !{ptr @compro_mute_gpio, !339, !"compro_mute_gpio", i1 false, i1 false}
!339 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 279, i32 36}
!340 = !{ptr @compro_unmute_tv_gpio, !341, !"compro_unmute_tv_gpio", i1 false, i1 false}
!341 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 269, i32 36}
!342 = !{ptr @compro_unmute_svid_gpio, !343, !"compro_unmute_svid_gpio", i1 false, i1 false}
!343 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 274, i32 36}
!344 = !{ptr @em2874_pctv_80e_digital, !345, !"em2874_pctv_80e_digital", i1 false, i1 false}
!345 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 237, i32 36}
!346 = !{ptr @pctv_80e_leds, !347, !"pctv_80e_leds", i1 false, i1 false}
!347 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 626, i32 26}
!348 = !{ptr @terratec_grabby_leds, !349, !"terratec_grabby_leds", i1 false, i1 false}
!349 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 636, i32 26}
!350 = !{ptr @terratec_av350_mute_gpio, !351, !"terratec_av350_mute_gpio", i1 false, i1 false}
!351 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 285, i32 36}
!352 = !{ptr @terratec_av350_unmute_gpio, !353, !"terratec_av350_unmute_gpio", i1 false, i1 false}
!353 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 290, i32 36}
!354 = !{ptr @em2882_kworld_315u_digital, !355, !"em2882_kworld_315u_digital", i1 false, i1 false}
!355 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 134, i32 36}
!356 = !{ptr @em2882_kworld_315u_tuner_gpio, !357, !"em2882_kworld_315u_tuner_gpio", i1 false, i1 false}
!357 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 143, i32 36}
!358 = !{ptr @evga_indtube_digital, !359, !"evga_indtube_digital", i1 false, i1 false}
!359 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 175, i32 36}
!360 = !{ptr @evga_indtube_analog, !361, !"evga_indtube_analog", i1 false, i1 false}
!361 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 170, i32 36}
!362 = !{ptr @reddo_dvb_c_usb_box, !363, !"reddo_dvb_c_usb_box", i1 false, i1 false}
!363 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 249, i32 36}
!364 = !{ptr @vc211a_enable, !365, !"vc211a_enable", i1 false, i1 false}
!365 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 301, i32 36}
!366 = !{ptr @dikom_dk300_digital, !367, !"dikom_dk300_digital", i1 false, i1 false}
!367 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 308, i32 36}
!368 = !{ptr @kworld_a340_digital, !369, !"kworld_a340_digital", i1 false, i1 false}
!369 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 193, i32 36}
!370 = !{ptr @leadership_digital, !371, !"leadership_digital", i1 false, i1 false}
!371 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 315, i32 36}
!372 = !{ptr @leadership_reset, !373, !"leadership_reset", i1 false, i1 false}
!373 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 320, i32 36}
!374 = !{ptr @pctv_290e, !375, !"pctv_290e", i1 false, i1 false}
!375 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 332, i32 36}
!376 = !{ptr @pctv_460e, !377, !"pctv_460e", i1 false, i1 false}
!377 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 367, i32 36}
!378 = !{ptr @maxmedia_ub425_tc, !379, !"maxmedia_ub425_tc", i1 false, i1 false}
!379 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 433, i32 36}
!380 = !{ptr @pctv_510e, !381, !"pctv_510e", i1 false, i1 false}
!381 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 447, i32 36}
!382 = !{ptr @pctv_520e, !383, !"pctv_520e", i1 false, i1 false}
!383 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 461, i32 36}
!384 = !{ptr @c3tech_digital_duo_digital, !385, !"c3tech_digital_duo_digital", i1 false, i1 false}
!385 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 376, i32 36}
!386 = !{ptr @speedlink_vad_laplace_reg_seq, !387, !"speedlink_vad_laplace_reg_seq", i1 false, i1 false}
!387 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 479, i32 36}
!388 = !{ptr @speedlink_vad_laplace_leds, !389, !"speedlink_vad_laplace_leds", i1 false, i1 false}
!389 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 600, i32 26}
!390 = !{ptr @speedlink_vad_laplace_buttons, !391, !"speedlink_vad_laplace_buttons", i1 false, i1 false}
!391 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 581, i32 35}
!392 = !{ptr @pctv_461e, !393, !"pctv_461e", i1 false, i1 false}
!393 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 399, i32 36}
!394 = !{ptr @kworld_ub435q_v3_digital, !395, !"kworld_ub435q_v3_digital", i1 false, i1 false}
!395 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 198, i32 36}
!396 = !{ptr @kworld_ub435q_v3_leds, !397, !"kworld_ub435q_v3_leds", i1 false, i1 false}
!397 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 616, i32 26}
!398 = !{ptr @pctv_292e, !399, !"pctv_292e", i1 false, i1 false}
!399 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 485, i32 36}
!400 = !{ptr @terratec_t2_stick_hd, !401, !"terratec_t2_stick_hd", i1 false, i1 false}
!401 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 497, i32 36}
!402 = !{ptr @plex_px_bcud, !403, !"plex_px_bcud", i1 false, i1 false}
!403 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 511, i32 36}
!404 = !{ptr @hauppauge_dualhd_dvb, !405, !"hauppauge_dualhd_dvb", i1 false, i1 false}
!405 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 538, i32 36}
!406 = !{ptr @hauppauge_dualhd_leds, !407, !"hauppauge_dualhd_leds", i1 false, i1 false}
!407 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 646, i32 26}
!408 = !{ptr @zolid_digital, !409, !"zolid_digital", i1 false, i1 false}
!409 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 97, i32 30}
!410 = !{ptr @zolid_tuner, !411, !"zolid_tuner", i1 false, i1 false}
!411 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 91, i32 30}
!412 = !{ptr @hauppauge_usb_quadhd_atsc_reg_seq, !413, !"hauppauge_usb_quadhd_atsc_reg_seq", i1 false, i1 false}
!413 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 553, i32 30}
!414 = !{ptr @hauppauge_usb_quadhd_leds, !415, !"hauppauge_usb_quadhd_leds", i1 false, i1 false}
!415 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 662, i32 26}
!416 = !{ptr @em28xx_devused, !417, !"em28xx_devused", i1 false, i1 false}
!417 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 64, i32 8}
!418 = !{ptr @.str.127, !290, !"<string literal>", i1 false, i1 false}
!419 = !{ptr @em28xx_usb_driver, !420, !"em28xx_usb_driver", i1 false, i1 false}
!420 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 4190, i32 26}
!421 = !{ptr @.str.128, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3844, i32 4}
!423 = !{ptr @.str.129, !422, !"<string literal>", i1 false, i1 false}
!424 = !{ptr @.str.130, !422, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @em28xx_usb_probe._entry, !422, !"_entry", i1 false, i1 false}
!426 = !{ptr @em28xx_usb_probe._entry_ptr, !422, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.132, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3854, i32 3}
!429 = !{ptr @em28xx_usb_probe._entry.131, !428, !"_entry", i1 false, i1 false}
!430 = !{ptr @em28xx_usb_probe._entry_ptr.133, !428, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.134, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3903, i32 11}
!433 = !{ptr @.str.135, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3907, i32 11}
!435 = !{ptr @.str.136, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3910, i32 11}
!437 = !{ptr @.str.137, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3913, i32 11}
!439 = !{ptr @.str.139, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3916, i32 2}
!441 = !{ptr @em28xx_usb_probe._entry.138, !440, !"_entry", i1 false, i1 false}
!442 = !{ptr @em28xx_usb_probe._entry_ptr.140, !440, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.141, !440, !"<string literal>", i1 false, i1 false}
!444 = !{ptr @.str.143, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3932, i32 3}
!446 = !{ptr @em28xx_usb_probe._entry.142, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @em28xx_usb_probe._entry_ptr.144, !445, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.146, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3933, i32 3}
!450 = !{ptr @em28xx_usb_probe._entry.145, !449, !"_entry", i1 false, i1 false}
!451 = !{ptr @em28xx_usb_probe._entry_ptr.147, !449, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.149, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3951, i32 3}
!454 = !{ptr @em28xx_usb_probe._entry.148, !453, !"_entry", i1 false, i1 false}
!455 = !{ptr @em28xx_usb_probe._entry_ptr.150, !453, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.152, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3961, i32 5}
!458 = !{ptr @em28xx_usb_probe._entry.151, !457, !"_entry", i1 false, i1 false}
!459 = !{ptr @em28xx_usb_probe._entry_ptr.153, !457, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.155, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3970, i32 3}
!462 = !{ptr @em28xx_usb_probe._entry.154, !461, !"_entry", i1 false, i1 false}
!463 = !{ptr @em28xx_usb_probe._entry_ptr.156, !461, !"_entry_ptr", i1 false, i1 false}
!464 = !{ptr @.str.157, !461, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @.str.158, !461, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @.str.160, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3975, i32 3}
!468 = !{ptr @em28xx_usb_probe._entry.159, !467, !"_entry", i1 false, i1 false}
!469 = !{ptr @em28xx_usb_probe._entry_ptr.161, !467, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @em28xx_usb_probe.__key, !471, !"__key", i1 false, i1 false}
!471 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3989, i32 2}
!472 = !{ptr @.str.162, !471, !"<string literal>", i1 false, i1 false}
!473 = !{ptr @.str.164, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 4007, i32 3}
!475 = !{ptr @em28xx_usb_probe._entry.163, !474, !"_entry", i1 false, i1 false}
!476 = !{ptr @em28xx_usb_probe._entry_ptr.165, !474, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.167, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 4019, i32 3}
!479 = !{ptr @em28xx_usb_probe._entry.166, !478, !"_entry", i1 false, i1 false}
!480 = !{ptr @em28xx_usb_probe._entry_ptr.168, !478, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @.str.170, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 4028, i32 3}
!483 = !{ptr @em28xx_usb_probe._entry.169, !482, !"_entry", i1 false, i1 false}
!484 = !{ptr @em28xx_usb_probe._entry_ptr.171, !482, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @.str.172, !482, !"<string literal>", i1 false, i1 false}
!486 = !{ptr @.str.173, !482, !"<string literal>", i1 false, i1 false}
!487 = !{ptr @.str.175, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 4034, i32 3}
!489 = !{ptr @em28xx_usb_probe._entry.174, !488, !"_entry", i1 false, i1 false}
!490 = !{ptr @em28xx_usb_probe._entry_ptr.176, !488, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @em28xx_usb_probe.__key.177, !492, !"__key", i1 false, i1 false}
!492 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 4047, i32 3}
!493 = !{ptr @.str.178, !492, !"<string literal>", i1 false, i1 false}
!494 = !{ptr @.str.180, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 4070, i32 4}
!496 = !{ptr @em28xx_usb_probe._entry.179, !495, !"_entry", i1 false, i1 false}
!497 = !{ptr @em28xx_usb_probe._entry_ptr.181, !495, !"_entry_ptr", i1 false, i1 false}
!498 = !{ptr @.str.182, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3781, i32 4}
!500 = !{ptr @.str.183, !499, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @em28xx_check_usb_descriptor._entry, !499, !"_entry", i1 false, i1 false}
!502 = !{ptr @em28xx_check_usb_descriptor._entry_ptr, !499, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @em28xx_init_dev.__key, !504, !"__key", i1 false, i1 false}
!504 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3540, i32 2}
!505 = !{ptr @.str.184, !504, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @em28xx_init_dev.__key.185, !507, !"__key", i1 false, i1 false}
!507 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3541, i32 2}
!508 = !{ptr @.str.186, !507, !"<string literal>", i1 false, i1 false}
!509 = !{ptr @.str.187, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3561, i32 16}
!511 = !{ptr @.str.188, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3564, i32 16}
!513 = !{ptr @.str.189, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3567, i32 16}
!515 = !{ptr @.str.190, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3570, i32 16}
!517 = !{ptr @.str.191, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3576, i32 16}
!519 = !{ptr @.str.192, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3583, i32 18}
!521 = !{ptr @.str.193, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3588, i32 16}
!523 = !{ptr @.str.194, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3591, i32 16}
!525 = !{ptr @.str.195, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3594, i32 16}
!527 = !{ptr @.str.196, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3598, i32 16}
!529 = !{ptr @.str.197, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3603, i32 16}
!531 = !{ptr @.str.198, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3608, i32 16}
!533 = !{ptr @.str.199, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3613, i32 16}
!535 = !{ptr @.str.200, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3617, i32 16}
!537 = !{ptr @.str.201, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3624, i32 3}
!539 = !{ptr @.str.202, !538, !"<string literal>", i1 false, i1 false}
!540 = !{ptr @em28xx_init_dev._entry, !538, !"_entry", i1 false, i1 false}
!541 = !{ptr @em28xx_init_dev._entry_ptr, !538, !"_entry_ptr", i1 false, i1 false}
!542 = !{ptr @.str.204, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3627, i32 3}
!544 = !{ptr @em28xx_init_dev._entry.203, !543, !"_entry", i1 false, i1 false}
!545 = !{ptr @em28xx_init_dev._entry_ptr.205, !543, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @em28xx_init_dev.__key.206, !547, !"__key", i1 false, i1 false}
!547 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3644, i32 2}
!548 = !{ptr @.str.208, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3652, i32 3}
!550 = !{ptr @em28xx_init_dev._entry.207, !549, !"_entry", i1 false, i1 false}
!551 = !{ptr @em28xx_init_dev._entry_ptr.209, !549, !"_entry_ptr", i1 false, i1 false}
!552 = !{ptr @.str.211, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3667, i32 4}
!554 = !{ptr @em28xx_init_dev._entry.210, !553, !"_entry", i1 false, i1 false}
!555 = !{ptr @em28xx_init_dev._entry_ptr.212, !553, !"_entry_ptr", i1 false, i1 false}
!556 = !{ptr @.str.213, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3020, i32 43}
!558 = !{ptr @.str.214, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3021, i32 46}
!560 = !{ptr @.str.215, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3022, i32 32}
!562 = !{ptr @.str.216, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3023, i32 32}
!564 = !{ptr @.str.217, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3025, i32 32}
!566 = !{ptr @.str.218, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3027, i32 32}
!568 = !{ptr @.str.219, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3029, i32 32}
!570 = !{ptr @.str.220, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3033, i32 32}
!572 = !{ptr @.str.221, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2931, i32 2}
!574 = !{ptr @.str.222, !573, !"<string literal>", i1 false, i1 false}
!575 = !{ptr @.str.223, !573, !"<string literal>", i1 false, i1 false}
!576 = !{ptr @em28xx_wait_until_ac97_features_equals._entry, !573, !"_entry", i1 false, i1 false}
!577 = !{ptr @em28xx_wait_until_ac97_features_equals._entry_ptr, !573, !"_entry_ptr", i1 false, i1 false}
!578 = !{ptr @.str.224, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3189, i32 4}
!580 = !{ptr @.str.225, !579, !"<string literal>", i1 false, i1 false}
!581 = !{ptr @em28xx_card_setup._entry, !579, !"_entry", i1 false, i1 false}
!582 = !{ptr @em28xx_card_setup._entry_ptr, !579, !"_entry_ptr", i1 false, i1 false}
!583 = !{ptr @.str.227, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3199, i32 2}
!585 = !{ptr @em28xx_card_setup._entry.226, !584, !"_entry", i1 false, i1 false}
!586 = !{ptr @em28xx_card_setup._entry_ptr.228, !584, !"_entry_ptr", i1 false, i1 false}
!587 = !{ptr @.str.230, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3302, i32 3}
!589 = !{ptr @em28xx_card_setup._entry.229, !588, !"_entry", i1 false, i1 false}
!590 = !{ptr @em28xx_card_setup._entry_ptr.231, !588, !"_entry_ptr", i1 false, i1 false}
!591 = !{ptr @.str.232, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3093, i32 4}
!593 = !{ptr @.str.233, !592, !"<string literal>", i1 false, i1 false}
!594 = !{ptr @em28xx_hint_board._entry, !592, !"_entry", i1 false, i1 false}
!595 = !{ptr @em28xx_hint_board._entry_ptr, !592, !"_entry_ptr", i1 false, i1 false}
!596 = !{ptr @.str.235, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3124, i32 4}
!598 = !{ptr @em28xx_hint_board._entry.234, !597, !"_entry", i1 false, i1 false}
!599 = !{ptr @em28xx_hint_board._entry_ptr.236, !597, !"_entry_ptr", i1 false, i1 false}
!600 = !{ptr @.str.238, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3137, i32 2}
!602 = !{ptr @em28xx_hint_board._entry.237, !601, !"_entry", i1 false, i1 false}
!603 = !{ptr @em28xx_hint_board._entry_ptr.239, !601, !"_entry_ptr", i1 false, i1 false}
!604 = !{ptr @.str.241, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3146, i32 2}
!606 = !{ptr @em28xx_hint_board._entry.240, !605, !"_entry", i1 false, i1 false}
!607 = !{ptr @em28xx_hint_board._entry_ptr.242, !605, !"_entry_ptr", i1 false, i1 false}
!608 = !{ptr @.str.244, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3149, i32 3}
!610 = !{ptr @em28xx_hint_board._entry.243, !609, !"_entry", i1 false, i1 false}
!611 = !{ptr @em28xx_hint_board._entry_ptr.245, !609, !"_entry_ptr", i1 false, i1 false}
!612 = !{ptr @em28xx_eeprom_hash, !613, !"em28xx_eeprom_hash", i1 false, i1 false}
!613 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2821, i32 39}
!614 = !{ptr @em28xx_i2c_hash, !615, !"em28xx_i2c_hash", i1 false, i1 false}
!615 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 2835, i32 39}
!616 = !{ptr @.str.246, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3701, i32 4}
!618 = !{ptr @.str.247, !617, !"<string literal>", i1 false, i1 false}
!619 = !{ptr @em28xx_duplicate_dev._entry, !617, !"_entry", i1 false, i1 false}
!620 = !{ptr @em28xx_duplicate_dev._entry_ptr, !617, !"_entry_ptr", i1 false, i1 false}
!621 = !{ptr @.str.248, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3709, i32 30}
!623 = !{ptr @request_modules.__key, !624, !"__key", i1 false, i1 false}
!624 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 3434, i32 2}
!625 = !{ptr @.str.249, !624, !"<string literal>", i1 false, i1 false}
!626 = !{ptr @.str.250, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 4141, i32 3}
!628 = !{ptr @.str.251, !627, !"<string literal>", i1 false, i1 false}
!629 = !{ptr @em28xx_usb_disconnect._entry, !627, !"_entry", i1 false, i1 false}
!630 = !{ptr @em28xx_usb_disconnect._entry_ptr, !627, !"_entry_ptr", i1 false, i1 false}
!631 = !{ptr @em28xx_usb_disconnect._entry.252, !632, !"_entry", i1 false, i1 false}
!632 = !{!"../drivers/media/usb/em28xx/em28xx-cards.c", i32 4147, i32 2}
!633 = !{ptr @em28xx_usb_disconnect._entry_ptr.253, !632, !"_entry_ptr", i1 false, i1 false}
!634 = !{i32 1, !"wchar_size", i32 2}
!635 = !{i32 1, !"min_enum_size", i32 4}
!636 = !{i32 8, !"branch-target-enforcement", i32 0}
!637 = !{i32 8, !"sign-return-address", i32 0}
!638 = !{i32 8, !"sign-return-address-all", i32 0}
!639 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!640 = !{i32 7, !"uwtable", i32 1}
!641 = !{i32 7, !"frame-pointer", i32 2}
!642 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!643 = !{!"branch_weights", i32 1, i32 2000}
!644 = !{i64 2148642795}
!645 = !{i64 2148553174, i64 2148553206, i64 2148553235, i64 2148553269, i64 2148553300, i64 2148553323}
!646 = !{!"branch_weights", i32 2000, i32 1}
!647 = !{i64 2150425206}
