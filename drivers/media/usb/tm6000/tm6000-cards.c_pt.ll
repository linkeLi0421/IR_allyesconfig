; ModuleID = '/llk/IR_all_yes/drivers/media/usb/tm6000/tm6000-cards.c_pt.bc'
source_filename = "../drivers/media/usb/tm6000/tm6000-cards.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+tm6000_xc5000_callback\22, \22a\22\09"
module asm "\09.weak\09__crc_tm6000_xc5000_callback\09\09\09\09"
module asm "\09.long\09__crc_tm6000_xc5000_callback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tm6000_xc5000_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22tm6000_xc5000_callback\22\09\09\09\09\09"
module asm "__kstrtabns_tm6000_xc5000_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+tm6000_tuner_callback\22, \22a\22\09"
module asm "\09.weak\09__crc_tm6000_tuner_callback\09\09\09\09"
module asm "\09.long\09__crc_tm6000_tuner_callback\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tm6000_tuner_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22tm6000_tuner_callback\22\09\09\09\09\09"
module asm "__kstrtabns_tm6000_tuner_callback:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tm6000_board = type { ptr, [16 x i8], i32, i32, %struct.tm6000_capabilities, i32, i32, i32, i32, %struct.tm6000_gpio, [3 x %struct.tm6000_input], %struct.tm6000_input, ptr }
%struct.tm6000_capabilities = type { i8, [3 x i8] }
%struct.tm6000_gpio = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.tm6000_input = type { i32, i32, i32, i32, i32 }
%struct.tm6000_core = type { [30 x i8], i32, i32, i32, [256 x i8], i32, i64, i32, i32, i32, %struct.tm6000_capabilities, %struct.work_struct, i32, i32, %struct.tm6000_gpio, ptr, i8, i32, i32, %struct.i2c_adapter, %struct.i2c_client, %struct.list_head, i32, ptr, i8, %struct.video_device, %struct.video_device, %struct.tm6000_dmaqueue, %struct.v4l2_device, %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler, i32, [3 x %struct.tm6000_input], %struct.tm6000_input, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.work_struct, %struct.atomic_t, ptr, %struct.mutex, %struct.mutex, ptr, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, %struct.tm6000_endpoint, i32, %struct.usb_isoc_ctl, %struct.spinlock, ptr, ptr, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.87 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.87 = type { %struct.anon.88 }
%struct.anon.88 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.84], %struct.media_entity_enum, i32 }
%struct.anon.84 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.tm6000_dmaqueue = type { %struct.list_head, %struct.list_head, ptr, %struct.wait_queue_head, i32, i32 }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tm6000_endpoint = type { ptr, i8, i8, i32 }
%struct.usb_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.tuner_setup = type { i16, i32, i32, ptr, ptr }
%struct.v4l2_priv_tun_config = type { i32, ptr }
%struct.xc2028_ctrl = type { ptr, i32, i32, i32, i8, i32, i8 }
%struct.xc5000_config = type { i8, i32, i8, i16, i16, i32 }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_card = internal constant [12 x i8] c"tm6000.card\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_card = internal constant %struct.kparam_array { i32 16, i32 4, ptr null, ptr @param_ops_int, ptr @card }, align 4
@__param_card = internal constant %struct.kernel_param { ptr @__param_str_card, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_card } }, section "__param", align 4
@__UNIQUE_ID_cardtype305 = internal constant [34 x i8] c"tm6000.parmtype=card:array of int\00", section ".modinfo", align 1
@__kstrtab_tm6000_xc5000_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_tm6000_xc5000_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_tm6000_xc5000_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tm6000_xc5000_callback to i32), ptr @__kstrtab_tm6000_xc5000_callback, ptr @__kstrtabns_tm6000_xc5000_callback }, section "___ksymtab_gpl+tm6000_xc5000_callback", align 4
@__kstrtab_tm6000_tuner_callback = external dso_local constant [0 x i8], align 1
@__kstrtabns_tm6000_tuner_callback = external dso_local constant [0 x i8], align 1
@__ksymtab_tm6000_tuner_callback = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tm6000_tuner_callback to i32), ptr @__kstrtab_tm6000_tuner_callback, ptr @__kstrtabns_tm6000_tuner_callback }, section "___ksymtab_gpl+tm6000_tuner_callback", align 4
@tm6000_cards_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Error %i doing tuner reset\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tm6000_cards_setup\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/tm6000/tm6000-cards.c\00", [56 x i8] zeroinitializer }, align 32
@tm6000_cards_setup._entry_ptr = internal global ptr @tm6000_cards_setup._entry, section ".printk_index", align 4
@tm6000_cards_setup._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tm6000_cards_setup._entry_ptr.4 = internal global ptr @tm6000_cards_setup._entry.3, section ".printk_index", align 4
@tm6000_cards_setup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 878, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Tuner reset is not configured\0A\00", [63 x i8] zeroinitializer }, align 32
@tm6000_cards_setup._entry_ptr.7 = internal global ptr @tm6000_cards_setup._entry.5, section ".printk_index", align 4
@__initcall__kmod_tm6000__306_1393_tm6000_usb_driver_init6 = internal global ptr @tm6000_usb_driver_init, section ".initcall6.init", align 4
@tm6000_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.8, ptr @tm6000_usb_probe, ptr @tm6000_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tm6000_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_tm6000_usb_driver_exit = internal global ptr @tm6000_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description307 = internal constant [70 x i8] c"tm6000.description=Trident TVMaster TM5600/TM6000/TM6010 USB2 adapter\00", section ".modinfo", align 1
@__UNIQUE_ID_author308 = internal constant [36 x i8] c"tm6000.author=Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [44 x i8] c"tm6000.file=drivers/media/usb/tm6000/tm6000\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [22 x i8] c"tm6000.license=GPL v2\00", section ".modinfo", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@card = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tm6000\00", [25 x i8] zeroinitializer }, align 32
@tm6000_id_table = internal constant { [21 x %struct.usb_device_id], [104 x i8] } { [21 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 24576, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1 }, %struct.usb_device_id { i16 3, i16 24576, i16 2, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 3 }, %struct.usb_device_id { i16 3, i16 1761, i16 -3278, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 6 }, %struct.usb_device_id { i16 3, i16 5290, i16 1568, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 7 }, %struct.usb_device_id { i16 3, i16 1761, i16 -19655, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 8 }, %struct.usb_device_id { i16 3, i16 8256, i16 26112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 8256, i16 26113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 8256, i16 26128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 8256, i16 26129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 9 }, %struct.usb_device_id { i16 3, i16 24576, i16 -8512, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 10 }, %struct.usb_device_id { i16 3, i16 24576, i16 -8511, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 11 }, %struct.usb_device_id { i16 3, i16 3277, i16 134, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 12 }, %struct.usb_device_id { i16 3, i16 3277, i16 165, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 12 }, %struct.usb_device_id { i16 3, i16 3277, i16 121, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 16 }, %struct.usb_device_id { i16 3, i16 5075, i16 12864, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 13 }, %struct.usb_device_id { i16 3, i16 5075, i16 12865, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 13 }, %struct.usb_device_id { i16 3, i16 5075, i16 12867, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 13 }, %struct.usb_device_id { i16 3, i16 5075, i16 12900, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 13 }, %struct.usb_device_id { i16 3, i16 24576, i16 -8510, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 14 }, %struct.usb_device_id { i16 3, i16 24576, i16 -8509, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 15 }, %struct.usb_device_id zeroinitializer], [104 x i8] zeroinitializer }, align 32
@tm6000_devused = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tm6000_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013tm6000: Supports only %i tm60xx boards.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tm6000_usb_probe\00", [47 x i8] zeroinitializer }, align 32
@tm6000_usb_probe._entry_ptr = internal global ptr @tm6000_usb_probe._entry, section ".printk_index", align 4
@tm6000_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->slock\00", [20 x i8] zeroinitializer }, align 32
@tm6000_usb_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->usb_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tm6000 #%d\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.5\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"12\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"480\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@tm6000_usb_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str.2, i32 1247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016tm6000: alt %d, interface %i, class %i\0A\00", [54 x i8] zeroinitializer }, align 32
@tm6000_usb_probe._entry_ptr.21 = internal global ptr @tm6000_usb_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Bulk IN\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Bulk OUT\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ISOC IN\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ISOC OUT\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"INT IN\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INT OUT\00", [24 x i8] zeroinitializer }, align 32
@tm6000_usb_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.10, ptr @.str.2, i32 1298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016tm6000: New video device @ %s Mbps (%04x:%04x, ifnum %d)\0A\00", [36 x i8] zeroinitializer }, align 32
@tm6000_usb_probe._entry_ptr.30 = internal global ptr @tm6000_usb_probe._entry.28, section ".printk_index", align 4
@tm6000_usb_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.10, ptr @.str.2, i32 1302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013tm6000: probing error: no IN ISOC endpoint!\0A\00", [49 x i8] zeroinitializer }, align 32
@tm6000_usb_probe._entry_ptr.33 = internal global ptr @tm6000_usb_probe._entry.31, section ".printk_index", align 4
@tm6000_usb_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.10, ptr @.str.2, i32 1310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\016tm6000: Found %s\0A\00", [44 x i8] zeroinitializer }, align 32
@tm6000_usb_probe._entry_ptr.36 = internal global ptr @tm6000_usb_probe._entry.34, section ".printk_index", align 4
@tm6000_boards = internal global { [17 x %struct.tm6000_board], [672 x i8] } { [17 x %struct.tm6000_board] [%struct.tm6000_board { ptr @.str.42, [16 x i8] zeroinitializer, i32 0, i32 0, %struct.tm6000_capabilities { i8 -120, [3 x i8] undef }, i32 0, i32 0, i32 0, i32 0, %struct.tm6000_gpio { i32 258, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [3 x %struct.tm6000_input] [%struct.tm6000_input { i32 1, i32 2, i32 4, i32 0, i32 0 }, %struct.tm6000_input { i32 2, i32 1, i32 5, i32 0, i32 0 }, %struct.tm6000_input { i32 4, i32 3, i32 5, i32 0, i32 0 }], %struct.tm6000_input zeroinitializer, ptr null }, %struct.tm6000_board { ptr @.str.43, [16 x i8] zeroinitializer, i32 0, i32 0, %struct.tm6000_capabilities { i8 -120, [3 x i8] undef }, i32 1, i32 71, i32 97, i32 0, %struct.tm6000_gpio { i32 258, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [3 x %struct.tm6000_input] [%struct.tm6000_input { i32 1, i32 2, i32 4, i32 0, i32 0 }, %struct.tm6000_input { i32 2, i32 1, i32 5, i32 0, i32 0 }, %struct.tm6000_input { i32 4, i32 3, i32 5, i32 0, i32 0 }], %struct.tm6000_input zeroinitializer, ptr null }, %struct.tm6000_board { ptr @.str.44, [16 x i8] zeroinitializer, i32 0, i32 0, %struct.tm6000_capabilities { i8 -120, [3 x i8] undef }, i32 0, i32 71, i32 97, i32 0, %struct.tm6000_gpio { i32 258, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [3 x %struct.tm6000_input] [%struct.tm6000_input { i32 1, i32 2, i32 4, i32 0, i32 0 }, %struct.tm6000_input { i32 2, i32 1, i32 5, i32 0, i32 0 }, %struct.tm6000_input { i32 4, i32 3, i32 5, i32 0, i32 0 }], %struct.tm6000_input zeroinitializer, ptr null }, %struct.tm6000_board { ptr @.str.45, [16 x i8] zeroinitializer, i32 0, i32 0, %struct.tm6000_capabilities { i8 -68, [3 x i8] undef }, i32 2, i32 71, i32 97, i32 15, %struct.tm6000_gpio { i32 260, i32 261, i32 259, i32 262, i32 769, i32 263, i32 258 }, [3 x %struct.tm6000_input] [%struct.tm6000_input { i32 1, i32 2, i32 6, i32 0, i32 0 }, %struct.tm6000_input { i32 2, i32 1, i32 5, i32 0, i32 0 }, %struct.tm6000_input { i32 4, i32 3, i32 5, i32 0, i32 0 }], %struct.tm6000_input zeroinitializer, ptr null }, %struct.tm6000_board { ptr @.str.46, [16 x i8] c"10MOONS5600\FFE[\00\00", i32 14, i32 20, %struct.tm6000_capabilities { i8 -120, [3 x i8] undef }, i32 1, i32 71, i32 97, i32 0, %struct.tm6000_gpio { i32 258, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [3 x %struct.tm6000_input] [%struct.tm6000_input { i32 1, i32 2, i32 4, i32 0, i32 0 }, %struct.tm6000_input { i32 2, i32 1, i32 5, i32 0, i32 0 }, %struct.tm6000_input { i32 4, i32 3, i32 5, i32 0, i32 0 }], %struct.tm6000_input zeroinitializer, ptr null }, %struct.tm6000_board { ptr @.str.47, [16 x i8] zeroinitializer, i32 0, i32 0, %struct.tm6000_capabilities { i8 -120, [3 x i8] undef }, i32 0, i32 56, i32 100, i32 0, %struct.tm6000_gpio zeroinitializer, [3 x %struct.tm6000_input] [%struct.tm6000_input { i32 1, i32 2, i32 4, i32 0, i32 0 }, %struct.tm6000_input { i32 2, i32 1, i32 5, i32 0, i32 0 }, %struct.tm6000_input { i32 4, i32 3, i32 5, i32 0, i32 0 }], %struct.tm6000_input zeroinitializer, ptr null }, %struct.tm6000_board { ptr @.str.48, [16 x i8] zeroinitializer, i32 0, i32 0, %struct.tm6000_capabilities { i8 -8, [3 x i8] undef }, i32 0, i32 71, i32 100, i32 0, %struct.tm6000_gpio zeroinitializer, [3 x %struct.tm6000_input] [%struct.tm6000_input { i32 1, i32 2, i32 4, i32 0, i32 0 }, %struct.tm6000_input { i32 2, i32 1, i32 5, i32 0, i32 0 }, %struct.tm6000_input { i32 4, i32 3, i32 5, i32 0, i32 0 }], %struct.tm6000_input zeroinitializer, ptr null }, %struct.tm6000_board { ptr @.str.49, [16 x i8] zeroinitializer, i32 0, i32 0, %struct.tm6000_capabilities { i8 -76, [3 x i8] undef }, i32 0, i32 71, i32 97, i32 15, %struct.tm6000_gpio { i32 768, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [3 x %struct.tm6000_input] [%struct.tm6000_input { i32 1, i32 2, i32 4, i32 0, i32 0 }, %struct.tm6000_input { i32 2, i32 1, i32 5, i32 0, i32 0 }, %struct.tm6000_input { i32 4, i32 3, i32 5, i32 0, i32 0 }], %struct.tm6000_input zeroinitializer, ptr null }, %struct.tm6000_board { ptr @.str.50, [16 x i8] zeroinitializer, i32 0, i32 0, %struct.tm6000_capabilities { i8 -80, [3 x i8] undef }, i32 0, i32 71, i32 100, i32 15, %struct.tm6000_gpio { i32 768, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [3 x %struct.tm6000_input] [%struct.tm6000_input { i32 1, i32 2, i32 4, i32 0, i32 0 }, %struct.tm6000_input { i32 2, i32 1, i32 5, i32 0, i32 0 }, %struct.tm6000_input { i32 4, i32 3, i32 5, i32 0, i32 0 }], %struct.tm6000_input zeroinitializer, ptr null }, %struct.tm6000_board { ptr @.str.51, [16 x i8] c"H\00V\00R\009\000\000\00H\00\00\00", i32 14, i32 66, %struct.tm6000_capabilities { i8 -68, [3 x i8] undef }, i32 2, i32 71, i32 97, i32 15, %struct.tm6000_gpio { i32 260, i32 261, i32 259, i32 262, i32 769, i32 263, i32 258 }, [3 x %struct.tm6000_input] [%struct.tm6000_input { i32 1, i32 2, i32 6, i32 0, i32 0 }, %struct.tm6000_input { i32 2, i32 1, i32 5, i32 0, i32 0 }, %struct.tm6000_input { i32 4, i32 3, i32 5, i32 0, i32 0 }], %struct.tm6000_input zeroinitializer, ptr @.str.52 }, %struct.tm6000_board { ptr @.str.53, [16 x i8] zeroinitializer, i32 0, i32 0, %struct.tm6000_capabilities { i8 -66, [3 x i8] undef }, i32 2, i32 76, i32 97, i32 15, %struct.tm6000_gpio { i32 258, i32 0, i32 259, i32 0, i32 768, i32 0, i32 0 }, [3 x %struct.tm6000_input] [%struct.tm6000_input { i32 1, i32 2, i32 6, i32 0, i32 0 }, %struct.tm6000_input { i32 2, i32 1, i32 5, i32 0, i32 0 }, %struct.tm6000_input { i32 4, i32 3, i32 5, i32 0, i32 0 }], %struct.tm6000_input { i32 6, i32 0, i32 4, i32 0, i32 0 }, ptr null }, %struct.tm6000_board { ptr @.str.54, [16 x i8] zeroinitializer, i32 0, i32 0, %struct.tm6000_capabilities { i8 -114, [3 x i8] undef }, i32 2, i32 76, i32 97, i32 0, %struct.tm6000_gpio { i32 258, i32 0, i32 0, i32 0, i32 768, i32 0, i32 0 }, [3 x %struct.tm6000_input] [%struct.tm6000_input { i32 1, i32 2, i32 6, i32 0, i32 0 }, %struct.tm6000_input { i32 2, i32 1, i32 5, i32 0, i32 0 }, %struct.tm6000_input { i32 4, i32 3, i32 5, i32 0, i32 0 }], %struct.tm6000_input { i32 6, i32 0, i32 4, i32 0, i32 0 }, ptr null }, %struct.tm6000_board { ptr @.str.55, [16 x i8] zeroinitializer, i32 0, i32 0, %struct.tm6000_capabilities { i8 -66, [3 x i8] undef }, i32 2, i32 71, i32 97, i32 15, %struct.tm6000_gpio { i32 260, i32 261, i32 259, i32 262, i32 769, i32 263, i32 258 }, [3 x %struct.tm6000_input] [%struct.tm6000_input { i32 1, i32 2, i32 6, i32 0, i32 0 }, %struct.tm6000_input { i32 2, i32 1, i32 5, i32 0, i32 0 }, %struct.tm6000_input { i32 4, i32 3, i32 5, i32 0, i32 0 }], %struct.tm6000_input { i32 6, i32 0, i32 6, i32 0, i32 0 }, ptr @.str.56 }, %struct.tm6000_board { ptr @.str.57, [16 x i8] zeroinitializer, i32 0, i32 0, %struct.tm6000_capabilities { i8 -68, [3 x i8] undef }, i32 2, i32 71, i32 97, i32 15, %struct.tm6000_gpio { i32 260, i32 261, i32 259, i32 262, i32 769, i32 263, i32 258 }, [3 x %struct.tm6000_input] [%struct.tm6000_input { i32 1, i32 2, i32 6, i32 0, i32 0 }, %struct.tm6000_input { i32 2, i32 1, i32 5, i32 0, i32 0 }, %struct.tm6000_input { i32 4, i32 3, i32 5, i32 0, i32 0 }], %struct.tm6000_input zeroinitializer, ptr null }, %struct.tm6000_board { ptr @.str.58, [16 x i8] zeroinitializer, i32 0, i32 0, %struct.tm6000_capabilities { i8 -70, [3 x i8] undef }, i32 2, i32 76, i32 97, i32 15, %struct.tm6000_gpio { i32 258, i32 0, i32 259, i32 0, i32 768, i32 0, i32 0 }, [3 x %struct.tm6000_input] [%struct.tm6000_input { i32 1, i32 2, i32 6, i32 0, i32 0 }, %struct.tm6000_input zeroinitializer, %struct.tm6000_input zeroinitializer], %struct.tm6000_input { i32 6, i32 0, i32 4, i32 0, i32 0 }, ptr null }, %struct.tm6000_board { ptr @.str.59, [16 x i8] zeroinitializer, i32 0, i32 0, %struct.tm6000_capabilities { i8 -118, [3 x i8] undef }, i32 2, i32 76, i32 97, i32 0, %struct.tm6000_gpio { i32 258, i32 0, i32 0, i32 0, i32 768, i32 0, i32 0 }, [3 x %struct.tm6000_input] [%struct.tm6000_input { i32 1, i32 2, i32 6, i32 0, i32 0 }, %struct.tm6000_input zeroinitializer, %struct.tm6000_input zeroinitializer], %struct.tm6000_input { i32 6, i32 0, i32 4, i32 0, i32 0 }, ptr null }, %struct.tm6000_board { ptr @.str.60, [16 x i8] zeroinitializer, i32 0, i32 0, %struct.tm6000_capabilities zeroinitializer, i32 1, i32 4, i32 0, i32 0, %struct.tm6000_gpio zeroinitializer, [3 x %struct.tm6000_input] [%struct.tm6000_input { i32 1, i32 2, i32 4, i32 0, i32 0 }, %struct.tm6000_input { i32 2, i32 1, i32 5, i32 0, i32 0 }, %struct.tm6000_input { i32 4, i32 3, i32 5, i32 0, i32 0 }], %struct.tm6000_input zeroinitializer, ptr null }], [672 x i8] zeroinitializer }, align 32
@tm6000_usb_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.10, ptr @.str.2, i32 1321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013tm6000: Error %d while registering\0A\00", [58 x i8] zeroinitializer }, align 32
@tm6000_usb_probe._entry_ptr.39 = internal global ptr @tm6000_usb_probe._entry.37, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@get_max_endpoint._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 1164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016tm6000: %s endpoint: 0x%02x (max size=%u bytes)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get_max_endpoint\00", [47 x i8] zeroinitializer }, align 32
@get_max_endpoint._entry_ptr = internal global ptr @get_max_endpoint._entry, section ".printk_index", align 4
@.str.42 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unknown tm6000 video grabber\00", [35 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Generic tm5600 board\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Generic tm6000 board\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Generic tm6010 board\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"10Moons UT 821\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"10Moons UT 330\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADSTECH Dual TV USB\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Freecom Hybrid Stick / Moka DVB-T Receiver Dual\00", [48 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ADSTECH Mini Dual TV USB\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Hauppauge WinTV HVR-900H / WinTV USB2-Stick\00", [52 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Beholder Wander DVB-T/TV/FM USB2.0\00", [61 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Beholder Voyager TV/FM USB2.0\00", [34 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Terratec Cinergy Hybrid XE / Cinergy Hybrid-Stick\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rc-nec-terratec-cinergy-xs\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Twinhan TU501(704D1)\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Beholder Wander Lite DVB-T/TV/FM USB2.0\00", [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Beholder Voyager Lite TV/FM USB2.0\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Terratec Grabster AV 150/250 MX\00", [32 x i8] zeroinitializer }, align 32
@tm6000_init_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tvaudio\00", [24 x i8] zeroinitializer }, align 32
@use_alternative_detection_method._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 1032, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016Device has eeprom but is currently unknown\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"use_alternative_detection_method\00", [63 x i8] zeroinitializer }, align 32
@use_alternative_detection_method._entry_ptr = internal global ptr @use_alternative_detection_method._entry, section ".printk_index", align 4
@use_alternative_detection_method._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 1039, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016Device identified via eeprom as %s (type = %d)\0A\00", [46 x i8] zeroinitializer }, align 32
@use_alternative_detection_method._entry_ptr.67 = internal global ptr @use_alternative_detection_method._entry.65, section ".printk_index", align 4
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tuner\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xc3028L-v36.fw\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc3028-v27.fw\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc3028-v24.fw\00", [18 x i8] zeroinitializer }, align 32
@tm6000_config_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 941, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016Setting firmware parameters for xc2028\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tm6000_config_tuner\00", [44 x i8] zeroinitializer }, align 32
@tm6000_config_tuner._entry_ptr = internal global ptr @tm6000_config_tuner._entry, section ".printk_index", align 4
@tm6000_config_tuner._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.73, ptr @.str.2, i32 964, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016Unknown tuner type. Tuner is not configured.\0A\00", [48 x i8] zeroinitializer }, align 32
@tm6000_config_tuner._entry_ptr.77 = internal global ptr @tm6000_config_tuner._entry.75, section ".printk_index", align 4
@tm6000_usb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016tm6000: disconnecting %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tm6000_usb_disconnect\00", [42 x i8] zeroinitializer }, align 32
@tm6000_usb_disconnect._entry_ptr = internal global ptr @tm6000_usb_disconnect._entry, section ".printk_index", align 4
@switch.table.tm6000_flash_led = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 0, i16 1, i16 1, i16 0, i16 0, i16 1, i16 1], [18 x i8] zeroinitializer }, align 32
@switch.table.tm6000_flash_led.80 = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 1, i16 0, i16 0, i16 1, i16 1, i16 0, i16 0], [18 x i8] zeroinitializer }, align 32
@switch.table.tm6000_usb_probe = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.16, ptr @.str.15, ptr @.str.16, ptr @.str.17], [16 x i8] zeroinitializer }, align 32
@switch.table.tm6000_usb_disconnect = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 1, i16 0, i16 0, i16 1, i16 1, i16 0, i16 0], [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 9, i64 12, i64 13]
@__sancov_gen_cov_switch_values.83 = internal global [10 x i64] [i64 8, i64 32, i64 3, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 71, i64 76]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 32, i64 71, i64 76]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 12, i64 13]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 12]
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 865, i32 5 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 873, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 878, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"tm6000_usb_driver\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1386, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant [5 x i8] c"card\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 47, i32 21 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1393, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [16 x i8] c"tm6000_id_table\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 605, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant [15 x i8] c"tm6000_devused\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 51, i32 22 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1191, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1202, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1203, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1207, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1218, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1222, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1225, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1228, i32 11 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1244, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1254, i32 9 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1259, i32 9 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1267, i32 9 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1272, i32 9 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1280, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1285, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1294, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1302, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1310, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [14 x i8] c"tm6000_boards\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 75, i32 28 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1321, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1162, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 77, i32 19 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 101, i32 19 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 128, i32 19 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 154, i32 19 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 191, i32 19 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 221, i32 19 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 246, i32 19 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 272, i32 19 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 302, i32 19 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 331, i32 19 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 339, i32 15 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 372, i32 19 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 410, i32 19 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 446, i32 19 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 468, i32 15 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 508, i32 19 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 545, i32 19 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 575, i32 19 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 489, i32 19 }
@___asan_gen_.278 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1074, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1119, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1032, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1038, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 893, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 932, i32 16 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 936, i32 17 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 938, i32 17 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 941, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 964, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.336 = private constant [43 x i8] c"../drivers/media/usb/tm6000/tm6000-cards.c\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.336, i32 1342, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant [30 x i8] c"switch.table.tm6000_flash_led\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [33 x i8] c"switch.table.tm6000_flash_led.80\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [30 x i8] c"switch.table.tm6000_usb_probe\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [35 x i8] c"switch.table.tm6000_usb_disconnect\00", align 1
@llvm.compiler.used = appending global [113 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_cardtype305, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_tm6000_usb_driver_exit, ptr @__initcall__kmod_tm6000__306_1393_tm6000_usb_driver_init6, ptr @__ksymtab_tm6000_tuner_callback, ptr @__ksymtab_tm6000_xc5000_callback, ptr @__param_card, ptr @get_max_endpoint._entry, ptr @get_max_endpoint._entry_ptr, ptr @tm6000_cards_setup._entry, ptr @tm6000_cards_setup._entry.3, ptr @tm6000_cards_setup._entry.5, ptr @tm6000_cards_setup._entry_ptr, ptr @tm6000_cards_setup._entry_ptr.4, ptr @tm6000_cards_setup._entry_ptr.7, ptr @tm6000_config_tuner._entry, ptr @tm6000_config_tuner._entry.75, ptr @tm6000_config_tuner._entry_ptr, ptr @tm6000_config_tuner._entry_ptr.77, ptr @tm6000_usb_disconnect._entry, ptr @tm6000_usb_disconnect._entry_ptr, ptr @tm6000_usb_driver_exit, ptr @tm6000_usb_probe._entry, ptr @tm6000_usb_probe._entry.19, ptr @tm6000_usb_probe._entry.28, ptr @tm6000_usb_probe._entry.31, ptr @tm6000_usb_probe._entry.34, ptr @tm6000_usb_probe._entry.37, ptr @tm6000_usb_probe._entry_ptr, ptr @tm6000_usb_probe._entry_ptr.21, ptr @tm6000_usb_probe._entry_ptr.30, ptr @tm6000_usb_probe._entry_ptr.33, ptr @tm6000_usb_probe._entry_ptr.36, ptr @tm6000_usb_probe._entry_ptr.39, ptr @use_alternative_detection_method._entry, ptr @use_alternative_detection_method._entry.65, ptr @use_alternative_detection_method._entry_ptr, ptr @use_alternative_detection_method._entry_ptr.67, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, ptr @tm6000_usb_driver, ptr @card, ptr @.str.8, ptr @tm6000_id_table, ptr @tm6000_devused, ptr @.str.9, ptr @.str.10, ptr @tm6000_usb_probe.__key, ptr @.str.11, ptr @tm6000_usb_probe.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @tm6000_boards, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @tm6000_init_dev.__key, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.76, ptr @.str.78, ptr @.str.79, ptr @switch.table.tm6000_flash_led, ptr @switch.table.tm6000_flash_led.80, ptr @switch.table.tm6000_usb_probe, ptr @switch.table.tm6000_usb_disconnect], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_cards_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_cards_setup._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_cards_setup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_id_table to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_devused to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_usb_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_usb_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_usb_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_usb_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_usb_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_boards to i32), i32 2720, i32 3392, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_usb_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_max_endpoint._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_init_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_alternative_detection_method._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @use_alternative_detection_method._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_config_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_config_tuner._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tm6000_usb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tm6000_flash_led to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tm6000_flash_led.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tm6000_usb_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tm6000_usb_disconnect to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tm6000_flash_led(ptr noundef %dev, i8 noundef zeroext %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %power_led = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 14, i32 4
  %0 = ptrtoint ptr %power_led to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %power_led, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.end

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end:                                           ; preds = %entry
  %model10 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %model10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %model10, align 8
  %switch.tableidx34 = add i32 %3, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx34)
  %4 = icmp ult i32 %switch.tableidx34, 7
  br i1 %4, label %if.end22.sink.split, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end22.sink.split:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state)
  %tobool1.not = icmp eq i8 %state, 0
  %switch.table.tm6000_flash_led.80.switch.table.tm6000_flash_led = select i1 %tobool1.not, ptr @switch.table.tm6000_flash_led.80, ptr @switch.table.tm6000_flash_led
  %switch.gep35 = getelementptr inbounds [7 x i16], ptr %switch.table.tm6000_flash_led.80.switch.table.tm6000_flash_led, i32 0, i32 %switch.tableidx34
  %5 = ptrtoint ptr %switch.gep35 to i32
  call void @__asan_load2_noabort(i32 %5)
  %switch.load36 = load i16, ptr %switch.gep35, align 2
  %conv14 = trunc i32 %1 to i16
  %call15 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv14, i16 noundef zeroext %switch.load36) #9
  br label %if.end22

if.end22:                                         ; preds = %if.end22.sink.split, %if.end.if.end22_crit_edge, %entry.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_set_reg(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tm6000_xc5000_callback(ptr noundef %ptr, i32 %component, i32 noundef %command, i32 %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_type = getelementptr inbounds %struct.tm6000_core, ptr %ptr, i32 0, i32 12
  %0 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %1)
  %cmp.not = icmp eq i32 %1, 76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %command)
  %cond = icmp eq i32 %command, 0
  %or.cond = and i1 %cond, %cmp.not
  br i1 %or.cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %gpio = getelementptr inbounds %struct.tm6000_core, ptr %ptr, i32 0, i32 14
  %2 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio, align 4
  %conv = trunc i32 %3 to i16
  %call = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 3, i16 noundef zeroext %conv, i16 noundef zeroext 1) #9
  tail call void @msleep(i32 noundef 15) #9
  %4 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio, align 4
  %conv3 = trunc i32 %5 to i16
  %call4 = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 3, i16 noundef zeroext %conv3, i16 noundef zeroext 0) #9
  tail call void @msleep(i32 noundef 15) #9
  %6 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpio, align 4
  %conv7 = trunc i32 %7 to i16
  %call8 = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 3, i16 noundef zeroext %conv7, i16 noundef zeroext 1) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tm6000_tuner_callback(ptr noundef %ptr, i32 %component, i32 noundef %command, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_type = getelementptr inbounds %struct.tm6000_core, ptr %ptr, i32 0, i32 12
  %0 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tuner_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %1)
  %cmp.not = icmp eq i32 %1, 71
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %command, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb2
    i32 2, label %sw.bb44
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @tm6000_ir_wait(ptr noundef %ptr, i8 noundef zeroext 0) #9
  %conv = trunc i32 %arg to i16
  %call = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 4, i16 noundef zeroext 2, i16 noundef zeroext %conv) #9
  tail call void @msleep(i32 noundef 10) #9
  %call1 = tail call i32 @tm6000_i2c_reset(ptr noundef %ptr, i16 noundef zeroext 10) #9
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %3 = zext i32 %arg to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %arg, label %sw.bb2.cleanup_crit_edge [
    i32 0, label %sw.bb3
    i32 1, label %sw.bb39
    i32 2, label %sw.bb41
  ]

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb2
  %model = getelementptr inbounds %struct.tm6000_core, ptr %ptr, i32 0, i32 1
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %5, label %sw.default [
    i32 4, label %sw.bb4
    i32 9, label %sw.bb3.sw.bb18_crit_edge
    i32 12, label %sw.bb3.sw.bb18_crit_edge78
    i32 13, label %sw.bb3.sw.bb18_crit_edge79
  ]

sw.bb3.sw.bb18_crit_edge79:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

sw.bb3.sw.bb18_crit_edge78:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

sw.bb3.sw.bb18_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb18

sw.bb4:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %gpio = getelementptr inbounds %struct.tm6000_core, ptr %ptr, i32 0, i32 14
  %7 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpio, align 4
  %conv5 = trunc i32 %8 to i16
  %call6 = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 3, i16 noundef zeroext %conv5, i16 noundef zeroext 1) #9
  %call7 = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 3, i16 noundef zeroext 768, i16 noundef zeroext 1) #9
  tail call void @msleep(i32 noundef 10) #9
  %9 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpio, align 4
  %conv10 = trunc i32 %10 to i16
  %call11 = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 3, i16 noundef zeroext %conv10, i16 noundef zeroext 0) #9
  %call12 = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 3, i16 noundef zeroext 768, i16 noundef zeroext 0) #9
  tail call void @msleep(i32 noundef 10) #9
  %11 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gpio, align 4
  %conv15 = trunc i32 %12 to i16
  %call16 = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 3, i16 noundef zeroext %conv15, i16 noundef zeroext 1) #9
  %call17 = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 3, i16 noundef zeroext 768, i16 noundef zeroext 1) #9
  br label %sw.epilog

sw.bb18:                                          ; preds = %sw.bb3.sw.bb18_crit_edge, %sw.bb3.sw.bb18_crit_edge78, %sw.bb3.sw.bb18_crit_edge79
  %gpio19 = getelementptr inbounds %struct.tm6000_core, ptr %ptr, i32 0, i32 14
  %13 = ptrtoint ptr %gpio19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gpio19, align 4
  %conv21 = trunc i32 %14 to i16
  %call22 = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 3, i16 noundef zeroext %conv21, i16 noundef zeroext 1) #9
  tail call void @msleep(i32 noundef 60) #9
  %15 = ptrtoint ptr %gpio19 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gpio19, align 4
  %conv25 = trunc i32 %16 to i16
  %call26 = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 3, i16 noundef zeroext %conv25, i16 noundef zeroext 0) #9
  tail call void @msleep(i32 noundef 75) #9
  %17 = ptrtoint ptr %gpio19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gpio19, align 4
  %conv29 = trunc i32 %18 to i16
  %call30 = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 3, i16 noundef zeroext %conv29, i16 noundef zeroext 1) #9
  tail call void @msleep(i32 noundef 60) #9
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  %gpio31 = getelementptr inbounds %struct.tm6000_core, ptr %ptr, i32 0, i32 14
  %19 = ptrtoint ptr %gpio31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gpio31, align 4
  %conv33 = trunc i32 %20 to i16
  %call34 = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 3, i16 noundef zeroext %conv33, i16 noundef zeroext 0) #9
  tail call void @msleep(i32 noundef 130) #9
  %21 = ptrtoint ptr %gpio31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gpio31, align 4
  %conv37 = trunc i32 %22 to i16
  %call38 = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 3, i16 noundef zeroext %conv37, i16 noundef zeroext 1) #9
  tail call void @msleep(i32 noundef 130) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb18, %sw.bb4
  tail call void @tm6000_ir_wait(ptr noundef %ptr, i8 noundef zeroext 1) #9
  br label %cleanup

sw.bb39:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %call40 = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 4, i16 noundef zeroext 2, i16 noundef zeroext 1) #9
  tail call void @msleep(i32 noundef 10) #9
  br label %cleanup

sw.bb41:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %call42 = tail call i32 @tm6000_i2c_reset(ptr noundef %ptr, i16 noundef zeroext 100) #9
  br label %cleanup

sw.bb44:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 50, i16 noundef zeroext 0, i16 noundef zeroext 0) #9
  %call46 = tail call i32 @tm6000_set_reg(ptr noundef %ptr, i8 noundef zeroext 51, i16 noundef zeroext 0, i16 noundef zeroext 0) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb44, %sw.bb41, %sw.bb39, %sw.epilog, %sw.bb2.cleanup_crit_edge, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb44 ], [ 0, %sw.bb2.cleanup_crit_edge ], [ %call42, %sw.bb41 ], [ 0, %sw.bb39 ], [ 0, %sw.epilog ], [ %call1, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tm6000_ir_wait(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_i2c_reset(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tm6000_cards_setup(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %model, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 9, label %entry.sw.bb_crit_edge
    i32 12, label %entry.sw.bb_crit_edge121
    i32 13, label %entry.sw.bb_crit_edge122
    i32 3, label %entry.sw.bb_crit_edge123
    i32 10, label %entry.sw.bb28_crit_edge
    i32 14, label %entry.sw.bb28_crit_edge124
    i32 11, label %entry.sw.bb41_crit_edge
    i32 15, label %entry.sw.bb41_crit_edge125
  ]

entry.sw.bb41_crit_edge125:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb41

entry.sw.bb41_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb41

entry.sw.bb28_crit_edge124:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb28

entry.sw.bb28_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb28

entry.sw.bb_crit_edge123:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge122:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge121:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge121, %entry.sw.bb_crit_edge122, %entry.sw.bb_crit_edge123
  %tuner_on = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 14, i32 1
  %3 = ptrtoint ptr %tuner_on to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tuner_on, align 4
  %conv = trunc i32 %4 to i16
  %call = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv, i16 noundef zeroext 1) #9
  tail call void @msleep(i32 noundef 15) #9
  %demod_on = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 14, i32 3
  %5 = ptrtoint ptr %demod_on to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %demod_on, align 4
  %conv2 = trunc i32 %6 to i16
  %call3 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv2, i16 noundef zeroext 0) #9
  tail call void @msleep(i32 noundef 15) #9
  %demod_reset = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 14, i32 2
  %7 = ptrtoint ptr %demod_reset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %demod_reset, align 4
  %conv5 = trunc i32 %8 to i16
  %call6 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv5, i16 noundef zeroext 0) #9
  tail call void @msleep(i32 noundef 50) #9
  %9 = ptrtoint ptr %demod_reset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %demod_reset, align 4
  %conv9 = trunc i32 %10 to i16
  %call10 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv9, i16 noundef zeroext 1) #9
  tail call void @msleep(i32 noundef 15) #9
  %11 = ptrtoint ptr %demod_on to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %demod_on, align 4
  %conv13 = trunc i32 %12 to i16
  %call14 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv13, i16 noundef zeroext 1) #9
  tail call void @msleep(i32 noundef 15) #9
  %ir = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 14, i32 6
  %13 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ir, align 4
  %conv16 = trunc i32 %14 to i16
  %call17 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv16, i16 noundef zeroext 1) #9
  tail call void @msleep(i32 noundef 15) #9
  %power_led = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 14, i32 4
  %15 = ptrtoint ptr %power_led to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %power_led, align 4
  %conv19 = trunc i32 %16 to i16
  %call20 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv19, i16 noundef zeroext 0) #9
  tail call void @msleep(i32 noundef 15) #9
  %dvb_led = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 14, i32 5
  %17 = ptrtoint ptr %dvb_led to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dvb_led, align 4
  %conv22 = trunc i32 %18 to i16
  %call23 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv22, i16 noundef zeroext 1) #9
  tail call void @msleep(i32 noundef 15) #9
  br label %sw.epilog.sink.split

sw.bb28:                                          ; preds = %entry.sw.bb28_crit_edge, %entry.sw.bb28_crit_edge124
  %power_led30 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 14, i32 4
  %19 = ptrtoint ptr %power_led30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %power_led30, align 4
  %conv31 = trunc i32 %20 to i16
  %call32 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv31, i16 noundef zeroext 1) #9
  tail call void @msleep(i32 noundef 15) #9
  %demod_reset34 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 14, i32 2
  %21 = ptrtoint ptr %demod_reset34 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %demod_reset34, align 4
  %conv35 = trunc i32 %22 to i16
  %call36 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv35, i16 noundef zeroext 0) #9
  tail call void @msleep(i32 noundef 50) #9
  br label %sw.epilog.sink.split

sw.bb41:                                          ; preds = %entry.sw.bb41_crit_edge, %entry.sw.bb41_crit_edge125
  %power_led43 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 14, i32 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb41, %sw.bb28, %sw.bb
  %power_led43.sink = phi ptr [ %power_led43, %sw.bb41 ], [ %demod_reset34, %sw.bb28 ], [ %demod_on, %sw.bb ]
  %.sink = phi i16 [ 1, %sw.bb41 ], [ 1, %sw.bb28 ], [ 0, %sw.bb ]
  %23 = ptrtoint ptr %power_led43.sink to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %power_led43.sink, align 4
  %conv44 = trunc i32 %24 to i16
  %call45 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv44, i16 noundef zeroext %.sink) #9
  tail call void @msleep(i32 noundef 15) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %gpio46 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 14
  %25 = ptrtoint ptr %gpio46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gpio46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %do.end72, label %for.body.preheader

for.body.preheader:                               ; preds = %sw.epilog
  %27 = ptrtoint ptr %gpio46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gpio46, align 4
  %conv50 = trunc i32 %28 to i16
  %call51 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv50, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %for.body.preheader.do.end_crit_edge, label %if.end

for.body.preheader.do.end_crit_edge:              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.cond:                                         ; preds = %if.end
  %29 = ptrtoint ptr %gpio46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gpio46, align 4
  %conv50.1 = trunc i32 %30 to i16
  %call51.1 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv50.1, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.1)
  %cmp52.1 = icmp slt i32 %call51.1, 0
  br i1 %cmp52.1, label %for.cond.do.end_crit_edge, label %if.end.1

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.1:                                         ; preds = %for.cond
  tail call void @msleep(i32 noundef 10) #9
  %31 = ptrtoint ptr %gpio46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gpio46, align 4
  %conv58.1 = trunc i32 %32 to i16
  %call59.1 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv58.1, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.1)
  %cmp60.1 = icmp slt i32 %call59.1, 0
  br i1 %cmp60.1, label %if.end.1.do.end65_crit_edge, label %for.cond.1

if.end.1.do.end65_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

for.cond.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @msleep(i32 noundef 50) #9
  br label %return

do.end:                                           ; preds = %for.cond.do.end_crit_edge, %for.body.preheader.do.end_crit_edge
  %call51.lcssa = phi i32 [ %call51, %for.body.preheader.do.end_crit_edge ], [ %call51.1, %for.cond.do.end_crit_edge ]
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call51.lcssa) #12
  br label %return

if.end:                                           ; preds = %for.body.preheader
  tail call void @msleep(i32 noundef 10) #9
  %33 = ptrtoint ptr %gpio46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gpio46, align 4
  %conv58 = trunc i32 %34 to i16
  %call59 = tail call i32 @tm6000_set_reg(ptr noundef %dev, i8 noundef zeroext 3, i16 noundef zeroext %conv58, i16 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end.do.end65_crit_edge, label %for.cond

if.end.do.end65_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end65

do.end65:                                         ; preds = %if.end.do.end65_crit_edge, %if.end.1.do.end65_crit_edge
  %call59.lcssa = phi i32 [ %call59, %if.end.do.end65_crit_edge ], [ %call59.1, %if.end.1.do.end65_crit_edge ]
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call59.lcssa) #12
  br label %return

do.end72:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #12
  br label %return

return:                                           ; preds = %do.end72, %do.end65, %do.end, %for.cond.1
  %retval.1 = phi i32 [ 0, %for.cond.1 ], [ -1, %do.end72 ], [ %call59.lcssa, %do.end65 ], [ %call51.lcssa, %do.end ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_usb_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @tm6000_usb_driver, ptr noundef null, ptr noundef nonnull @.str.8) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tm6000_usb_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @tm6000_usb_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tm6000_usb_probe(ptr nocapture noundef %interface, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  %tun_setup.i.i = alloca %struct.tuner_setup, align 4
  %xc2028_cfg.i.i = alloca %struct.v4l2_priv_tun_config, align 8
  %ctl.i.i = alloca %struct.xc2028_ctrl, align 4
  %xc5000_cfg.i.i = alloca %struct.v4l2_priv_tun_config, align 4
  %ctl87.i.i = alloca %struct.xc5000_config, align 4
  %f.i = alloca %struct.v4l2_frequency, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %call1 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #9
  %call2 = tail call i32 @usb_set_interface(ptr noundef %call1, i32 noundef 0, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.do.end123_crit_edge, label %if.end

entry.do.end123_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end123

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull @tm6000_devused, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call3)
  %cmp4 = icmp sgt i32 %call3, 15
  br i1 %cmp4, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 16) #12
  br label %put_device

if.end7:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 6616) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end7.put_device_crit_edge, label %do.body11

if.end7.put_device_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_device

do.body11:                                        ; preds = %if.end7
  %slock = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 56
  tail call void @__raw_spin_lock_init(ptr noundef %slock, ptr noundef nonnull @.str.11, ptr noundef nonnull @tm6000_usb_probe.__key, i16 noundef signext 3) #9
  %usb_lock = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 46
  tail call void @__mutex_init(ptr noundef %usb_lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @tm6000_usb_probe.__key.12) #9
  tail call void @_set_bit(i32 noundef %call3, ptr noundef nonnull @tm6000_devused) #9
  %call18 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 29, ptr noundef nonnull @.str.14, i32 noundef %call3)
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %3 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_info, align 4
  %model = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 1
  %arrayidx = getelementptr [16 x i32], ptr @card, i32 0, i32 %call3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %6)
  %cmp19 = icmp ult i32 %6, 17
  %spec.store.select = select i1 %cmp19, i32 %6, i32 %4
  %7 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.store.select, ptr %model, align 8
  %udev = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 47
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call1, ptr %udev, align 8
  %devno = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %devno to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call3, ptr %devno, align 4
  %speed24 = getelementptr inbounds %struct.usb_device, ptr %call1, i32 0, i32 4
  %10 = ptrtoint ptr %speed24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %12 = icmp ult i32 %11, 4
  br i1 %12, label %switch.lookup, label %do.body11.sw.epilog_crit_edge

do.body11.sw.epilog_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.tm6000_usb_probe, i32 0, i32 %11
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %do.body11.sw.epilog_crit_edge
  %speed.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.18, %do.body11.sw.epilog_crit_edge ]
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 2
  %14 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp27315.not = icmp eq i32 %15, 0
  br i1 %cmp27315.not, label %sw.epilog.do.end87_crit_edge, label %for.cond28.preheader.lr.ph

sw.epilog.do.end87_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end87

for.cond28.preheader.lr.ph:                       ; preds = %sw.epilog
  %maxsize.i274 = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 52, i32 3
  %int_in = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 52
  %bInterfaceNumber9.i277 = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 52, i32 1
  %bAlternateSetting11.i279 = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 52, i32 2
  %maxsize.i294 = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 53, i32 3
  %int_out = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 53
  %bInterfaceNumber9.i297 = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 53, i32 1
  %bAlternateSetting11.i299 = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 53, i32 2
  %maxsize.i234 = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 50, i32 3
  %isoc_in = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 50
  %bInterfaceNumber9.i237 = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 50, i32 1
  %bAlternateSetting11.i239 = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 50, i32 2
  %maxsize.i254 = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 51, i32 3
  %isoc_out = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 51
  %bInterfaceNumber9.i257 = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 51, i32 1
  %bAlternateSetting11.i259 = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 51, i32 2
  %maxsize.i = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 48, i32 3
  %bulk_in = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 48
  %bInterfaceNumber9.i = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 48, i32 1
  %bAlternateSetting11.i = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 48, i32 2
  %maxsize.i214 = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 49, i32 3
  %bulk_out = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 49
  %bInterfaceNumber9.i217 = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 49, i32 1
  %bAlternateSetting11.i219 = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 49, i32 2
  br label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %for.end.for.cond28.preheader_crit_edge, %for.cond28.preheader.lr.ph
  %i.0316 = phi i32 [ 0, %for.cond28.preheader.lr.ph ], [ %inc83, %for.end.for.cond28.preheader_crit_edge ]
  %16 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interface, align 8
  %arrayidx29309 = getelementptr %struct.usb_host_interface, ptr %17, i32 %i.0316
  %bNumEndpoints310 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx29309, i32 0, i32 4
  %18 = ptrtoint ptr %bNumEndpoints310 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bNumEndpoints310, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp30312.not = icmp eq i8 %19, 0
  br i1 %cmp30312.not, label %for.cond28.preheader.for.end_crit_edge, label %for.cond28.preheader.for.body32_crit_edge

for.cond28.preheader.for.body32_crit_edge:        ; preds = %for.cond28.preheader
  br label %for.body32

for.cond28.preheader.for.end_crit_edge:           ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body32:                                       ; preds = %sw.epilog81.for.body32_crit_edge, %for.cond28.preheader.for.body32_crit_edge
  %arrayidx29314 = phi ptr [ %arrayidx29, %sw.epilog81.for.body32_crit_edge ], [ %arrayidx29309, %for.cond28.preheader.for.body32_crit_edge ]
  %20 = phi ptr [ %135, %sw.epilog81.for.body32_crit_edge ], [ %17, %for.cond28.preheader.for.body32_crit_edge ]
  %ep.0313 = phi i32 [ %inc, %sw.epilog81.for.body32_crit_edge ], [ 0, %for.cond28.preheader.for.body32_crit_edge ]
  %endpoint = getelementptr %struct.usb_host_interface, ptr %20, i32 %i.0316, i32 3
  %21 = ptrtoint ptr %endpoint to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %endpoint, align 4
  %arrayidx35 = getelementptr %struct.usb_host_endpoint, ptr %22, i32 %ep.0313
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx35, i32 0, i32 2
  %23 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %bEndpointAddress, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp38 = icmp sgt i8 %24, -1
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx29314, i32 0, i32 2
  %25 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bInterfaceNumber, align 2
  %conv47 = zext i8 %26 to i32
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx29314, i32 0, i32 5
  %27 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bInterfaceClass, align 1
  %conv51 = zext i8 %28 to i32
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %i.0316, i32 noundef %conv47, i32 noundef %conv51) #12
  %bmAttributes = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx35, i32 0, i32 3
  %29 = ptrtoint ptr %bmAttributes to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %bmAttributes, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %30, label %for.body32.sw.epilog81_crit_edge [
    i8 2, label %sw.bb55
    i8 1, label %sw.bb63
    i8 3, label %sw.bb72
  ]

for.body32.sw.epilog81_crit_edge:                 ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog81

sw.bb55:                                          ; preds = %for.body32
  %wMaxPacketSize.i205 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx35, i32 0, i32 4
  %32 = ptrtoint ptr %wMaxPacketSize.i205 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %wMaxPacketSize.i205, align 4
  %34 = tail call i16 @llvm.bswap.i16(i16 %33) #9
  %conv.i206 = zext i16 %34 to i32
  %and.i207 = and i32 %conv.i206, 2047
  %35 = ptrtoint ptr %speed24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %speed24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp.i209 = icmp eq i32 %36, 3
  %37 = lshr i32 %conv.i206, 11
  %and3.i210 = and i32 %37, 3
  %add.i211 = add nuw nsw i32 %and3.i210, 1
  %mul.i212 = select i1 %cmp.i209, i32 %add.i211, i32 1
  %size.0.i213 = mul nuw nsw i32 %mul.i212, %and.i207
  br i1 %cmp38, label %if.else, label %if.then57

if.then57:                                        ; preds = %sw.bb55
  %38 = ptrtoint ptr %maxsize.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %maxsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.i213, i32 %39)
  %cmp4.i = icmp ugt i32 %size.0.i213, %39
  br i1 %cmp4.i, label %if.then6.i, label %if.then57.sw.epilog81_crit_edge

if.then57.sw.epilog81_crit_edge:                  ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog81

if.then6.i:                                       ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %interface, align 8
  %arrayidx59 = getelementptr %struct.usb_host_interface, ptr %41, i32 %i.0316
  %42 = ptrtoint ptr %bulk_in to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx35, ptr %bulk_in, align 4
  %43 = ptrtoint ptr %maxsize.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %size.0.i213, ptr %maxsize.i, align 4
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx59, i32 0, i32 2
  %44 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %bInterfaceNumber.i, align 2
  %46 = ptrtoint ptr %bInterfaceNumber9.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %bInterfaceNumber9.i, align 8
  %bAlternateSetting.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx59, i32 0, i32 3
  %47 = ptrtoint ptr %bAlternateSetting.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bAlternateSetting.i, align 1
  %49 = ptrtoint ptr %bAlternateSetting11.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %bAlternateSetting11.i, align 1
  %50 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %bEndpointAddress, align 2
  %conv14.i = zext i8 %51 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.22, i32 noundef %conv14.i, i32 noundef %size.0.i213) #12
  br label %sw.epilog81

if.else:                                          ; preds = %sw.bb55
  %52 = ptrtoint ptr %maxsize.i214 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %maxsize.i214, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.i213, i32 %53)
  %cmp4.i215 = icmp ugt i32 %size.0.i213, %53
  br i1 %cmp4.i215, label %if.then6.i223, label %if.else.sw.epilog81_crit_edge

if.else.sw.epilog81_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog81

if.then6.i223:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %interface, align 8
  %arrayidx61 = getelementptr %struct.usb_host_interface, ptr %55, i32 %i.0316
  %56 = ptrtoint ptr %bulk_out to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %arrayidx35, ptr %bulk_out, align 8
  %57 = ptrtoint ptr %maxsize.i214 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %size.0.i213, ptr %maxsize.i214, align 8
  %bInterfaceNumber.i216 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx61, i32 0, i32 2
  %58 = ptrtoint ptr %bInterfaceNumber.i216 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bInterfaceNumber.i216, align 2
  %60 = ptrtoint ptr %bInterfaceNumber9.i217 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %bInterfaceNumber9.i217, align 4
  %bAlternateSetting.i218 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx61, i32 0, i32 3
  %61 = ptrtoint ptr %bAlternateSetting.i218 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %bAlternateSetting.i218, align 1
  %63 = ptrtoint ptr %bAlternateSetting11.i219 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %bAlternateSetting11.i219, align 1
  %64 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bEndpointAddress, align 2
  %conv14.i221 = zext i8 %65 to i32
  %call.i222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.23, i32 noundef %conv14.i221, i32 noundef %size.0.i213) #12
  br label %sw.epilog81

sw.bb63:                                          ; preds = %for.body32
  %wMaxPacketSize.i245 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx35, i32 0, i32 4
  %66 = ptrtoint ptr %wMaxPacketSize.i245 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %wMaxPacketSize.i245, align 4
  %68 = tail call i16 @llvm.bswap.i16(i16 %67) #9
  %conv.i246 = zext i16 %68 to i32
  %and.i247 = and i32 %conv.i246, 2047
  %69 = ptrtoint ptr %speed24 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %speed24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %70)
  %cmp.i249 = icmp eq i32 %70, 3
  %71 = lshr i32 %conv.i246, 11
  %and3.i250 = and i32 %71, 3
  %add.i251 = add nuw nsw i32 %and3.i250, 1
  %mul.i252 = select i1 %cmp.i249, i32 %add.i251, i32 1
  %size.0.i253 = mul nuw nsw i32 %mul.i252, %and.i247
  br i1 %cmp38, label %if.else68, label %if.then65

if.then65:                                        ; preds = %sw.bb63
  %72 = ptrtoint ptr %maxsize.i234 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %maxsize.i234, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.i253, i32 %73)
  %cmp4.i235 = icmp ugt i32 %size.0.i253, %73
  br i1 %cmp4.i235, label %if.then6.i243, label %if.then65.sw.epilog81_crit_edge

if.then65.sw.epilog81_crit_edge:                  ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog81

if.then6.i243:                                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %interface, align 8
  %arrayidx67 = getelementptr %struct.usb_host_interface, ptr %75, i32 %i.0316
  %76 = ptrtoint ptr %isoc_in to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %arrayidx35, ptr %isoc_in, align 4
  %77 = ptrtoint ptr %maxsize.i234 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %size.0.i253, ptr %maxsize.i234, align 4
  %bInterfaceNumber.i236 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx67, i32 0, i32 2
  %78 = ptrtoint ptr %bInterfaceNumber.i236 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %bInterfaceNumber.i236, align 2
  %80 = ptrtoint ptr %bInterfaceNumber9.i237 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %bInterfaceNumber9.i237, align 8
  %bAlternateSetting.i238 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx67, i32 0, i32 3
  %81 = ptrtoint ptr %bAlternateSetting.i238 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %bAlternateSetting.i238, align 1
  %83 = ptrtoint ptr %bAlternateSetting11.i239 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %bAlternateSetting11.i239, align 1
  %84 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %bEndpointAddress, align 2
  %conv14.i241 = zext i8 %85 to i32
  %call.i242 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.24, i32 noundef %conv14.i241, i32 noundef %size.0.i253) #12
  br label %sw.epilog81

if.else68:                                        ; preds = %sw.bb63
  %86 = ptrtoint ptr %maxsize.i254 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %maxsize.i254, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.i253, i32 %87)
  %cmp4.i255 = icmp ugt i32 %size.0.i253, %87
  br i1 %cmp4.i255, label %if.then6.i263, label %if.else68.sw.epilog81_crit_edge

if.else68.sw.epilog81_crit_edge:                  ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog81

if.then6.i263:                                    ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %interface, align 8
  %arrayidx70 = getelementptr %struct.usb_host_interface, ptr %89, i32 %i.0316
  %90 = ptrtoint ptr %isoc_out to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %arrayidx35, ptr %isoc_out, align 8
  %91 = ptrtoint ptr %maxsize.i254 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %size.0.i253, ptr %maxsize.i254, align 8
  %bInterfaceNumber.i256 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx70, i32 0, i32 2
  %92 = ptrtoint ptr %bInterfaceNumber.i256 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %bInterfaceNumber.i256, align 2
  %94 = ptrtoint ptr %bInterfaceNumber9.i257 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %bInterfaceNumber9.i257, align 4
  %bAlternateSetting.i258 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx70, i32 0, i32 3
  %95 = ptrtoint ptr %bAlternateSetting.i258 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %bAlternateSetting.i258, align 1
  %97 = ptrtoint ptr %bAlternateSetting11.i259 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %bAlternateSetting11.i259, align 1
  %98 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %bEndpointAddress, align 2
  %conv14.i261 = zext i8 %99 to i32
  %call.i262 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.25, i32 noundef %conv14.i261, i32 noundef %size.0.i253) #12
  br label %sw.epilog81

sw.bb72:                                          ; preds = %for.body32
  %wMaxPacketSize.i285 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx35, i32 0, i32 4
  %100 = ptrtoint ptr %wMaxPacketSize.i285 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %wMaxPacketSize.i285, align 4
  %102 = tail call i16 @llvm.bswap.i16(i16 %101) #9
  %conv.i286 = zext i16 %102 to i32
  %and.i287 = and i32 %conv.i286, 2047
  %103 = ptrtoint ptr %speed24 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %speed24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %104)
  %cmp.i289 = icmp eq i32 %104, 3
  %105 = lshr i32 %conv.i286, 11
  %and3.i290 = and i32 %105, 3
  %add.i291 = add nuw nsw i32 %and3.i290, 1
  %mul.i292 = select i1 %cmp.i289, i32 %add.i291, i32 1
  %size.0.i293 = mul nuw nsw i32 %mul.i292, %and.i287
  br i1 %cmp38, label %if.else77, label %if.then74

if.then74:                                        ; preds = %sw.bb72
  %106 = ptrtoint ptr %maxsize.i274 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %maxsize.i274, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.i293, i32 %107)
  %cmp4.i275 = icmp ugt i32 %size.0.i293, %107
  br i1 %cmp4.i275, label %if.then6.i283, label %if.then74.sw.epilog81_crit_edge

if.then74.sw.epilog81_crit_edge:                  ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog81

if.then6.i283:                                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %interface, align 8
  %arrayidx76 = getelementptr %struct.usb_host_interface, ptr %109, i32 %i.0316
  %110 = ptrtoint ptr %int_in to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %arrayidx35, ptr %int_in, align 4
  %111 = ptrtoint ptr %maxsize.i274 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %size.0.i293, ptr %maxsize.i274, align 4
  %bInterfaceNumber.i276 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx76, i32 0, i32 2
  %112 = ptrtoint ptr %bInterfaceNumber.i276 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %bInterfaceNumber.i276, align 2
  %114 = ptrtoint ptr %bInterfaceNumber9.i277 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %113, ptr %bInterfaceNumber9.i277, align 8
  %bAlternateSetting.i278 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx76, i32 0, i32 3
  %115 = ptrtoint ptr %bAlternateSetting.i278 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %bAlternateSetting.i278, align 1
  %117 = ptrtoint ptr %bAlternateSetting11.i279 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %116, ptr %bAlternateSetting11.i279, align 1
  %118 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %bEndpointAddress, align 2
  %conv14.i281 = zext i8 %119 to i32
  %call.i282 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.26, i32 noundef %conv14.i281, i32 noundef %size.0.i293) #12
  br label %sw.epilog81

if.else77:                                        ; preds = %sw.bb72
  %120 = ptrtoint ptr %maxsize.i294 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %maxsize.i294, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %size.0.i293, i32 %121)
  %cmp4.i295 = icmp ugt i32 %size.0.i293, %121
  br i1 %cmp4.i295, label %if.then6.i303, label %if.else77.sw.epilog81_crit_edge

if.else77.sw.epilog81_crit_edge:                  ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog81

if.then6.i303:                                    ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %interface, align 8
  %arrayidx79 = getelementptr %struct.usb_host_interface, ptr %123, i32 %i.0316
  %124 = ptrtoint ptr %int_out to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %arrayidx35, ptr %int_out, align 8
  %125 = ptrtoint ptr %maxsize.i294 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %size.0.i293, ptr %maxsize.i294, align 8
  %bInterfaceNumber.i296 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx79, i32 0, i32 2
  %126 = ptrtoint ptr %bInterfaceNumber.i296 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %bInterfaceNumber.i296, align 2
  %128 = ptrtoint ptr %bInterfaceNumber9.i297 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %127, ptr %bInterfaceNumber9.i297, align 4
  %bAlternateSetting.i298 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx79, i32 0, i32 3
  %129 = ptrtoint ptr %bAlternateSetting.i298 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %bAlternateSetting.i298, align 1
  %131 = ptrtoint ptr %bAlternateSetting11.i299 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %130, ptr %bAlternateSetting11.i299, align 1
  %132 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %bEndpointAddress, align 2
  %conv14.i301 = zext i8 %133 to i32
  %call.i302 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.27, i32 noundef %conv14.i301, i32 noundef %size.0.i293) #12
  br label %sw.epilog81

sw.epilog81:                                      ; preds = %if.then6.i303, %if.else77.sw.epilog81_crit_edge, %if.then6.i283, %if.then74.sw.epilog81_crit_edge, %if.then6.i263, %if.else68.sw.epilog81_crit_edge, %if.then6.i243, %if.then65.sw.epilog81_crit_edge, %if.then6.i223, %if.else.sw.epilog81_crit_edge, %if.then6.i, %if.then57.sw.epilog81_crit_edge, %for.body32.sw.epilog81_crit_edge
  %inc = add nuw nsw i32 %ep.0313, 1
  %134 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %interface, align 8
  %arrayidx29 = getelementptr %struct.usb_host_interface, ptr %135, i32 %i.0316
  %bNumEndpoints = getelementptr inbounds %struct.usb_interface_descriptor, ptr %arrayidx29, i32 0, i32 4
  %136 = ptrtoint ptr %bNumEndpoints to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %bNumEndpoints, align 4
  %conv = zext i8 %137 to i32
  %cmp30 = icmp ult i32 %inc, %conv
  br i1 %cmp30, label %sw.epilog81.for.body32_crit_edge, label %sw.epilog81.for.end_crit_edge

sw.epilog81.for.end_crit_edge:                    ; preds = %sw.epilog81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

sw.epilog81.for.body32_crit_edge:                 ; preds = %sw.epilog81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body32

for.end:                                          ; preds = %sw.epilog81.for.end_crit_edge, %for.cond28.preheader.for.end_crit_edge
  %inc83 = add nuw i32 %i.0316, 1
  %138 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %num_altsetting, align 8
  %cmp27 = icmp ult i32 %inc83, %139
  br i1 %cmp27, label %for.end.for.cond28.preheader_crit_edge, label %for.end.do.end87_crit_edge

for.end.do.end87_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end87

for.end.for.cond28.preheader_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond28.preheader

do.end87:                                         ; preds = %for.end.do.end87_crit_edge, %sw.epilog.do.end87_crit_edge
  %140 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %udev, align 8
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %141, i32 0, i32 16, i32 7
  %142 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %idVendor, align 8
  %144 = tail call i16 @llvm.bswap.i16(i16 %143)
  %conv90 = zext i16 %144 to i32
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %141, i32 0, i32 16, i32 8
  %145 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %idProduct, align 2
  %147 = tail call i16 @llvm.bswap.i16(i16 %146)
  %conv93 = zext i16 %147 to i32
  %148 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %interface, align 8
  %bInterfaceNumber96 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %149, i32 0, i32 2
  %150 = ptrtoint ptr %bInterfaceNumber96 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %bInterfaceNumber96, align 2
  %conv97 = zext i8 %151 to i32
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull %speed.0, i32 noundef %conv90, i32 noundef %conv93, i32 noundef %conv97) #12
  %isoc_in99 = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 50
  %152 = ptrtoint ptr %isoc_in99 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %isoc_in99, align 4
  %tobool100.not = icmp eq ptr %153, null
  br i1 %tobool100.not, label %do.end104, label %if.end107

do.end104:                                        ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #11
  %call106 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #12
  br label %free_device

if.end107:                                        ; preds = %do.end87
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %154 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %155 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %model, align 8
  %arrayidx113 = getelementptr [17 x %struct.tm6000_board], ptr @tm6000_boards, i32 0, i32 %156
  %157 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %arrayidx113, align 4
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %158) #12
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %f.i) #9
  %159 = call ptr @memset(ptr %f.i, i32 255, i32 44)
  %lock.i = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 45
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.61, ptr noundef nonnull @tm6000_init_dev.__key) #9
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %160 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %model, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %161)
  %switch.i = icmp ult i32 %161, 4
  br i1 %switch.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end107
  %call.i305 = tail call fastcc i32 @fill_board_specific_data(ptr noundef %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i305)
  %cmp10.i = icmp slt i32 %call.i305, 0
  br i1 %cmp10.i, label %if.then.i.tm6000_init_dev.exit.thread_crit_edge, label %if.end.i

if.then.i.tm6000_init_dev.exit.thread_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tm6000_init_dev.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %call12.i = tail call i32 @tm6000_i2c_register(ptr noundef %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end.i.tm6000_init_dev.exit.thread_crit_edge, label %if.end.i.if.end24.i_crit_edge

if.end.i.if.end24.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

if.end.i.tm6000_init_dev.exit.thread_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tm6000_init_dev.exit.thread

if.else.i:                                        ; preds = %if.end107
  %call16.i = tail call i32 @tm6000_i2c_register(ptr noundef %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %if.else.i.tm6000_init_dev.exit.thread_crit_edge, label %if.end19.i

if.else.i.tm6000_init_dev.exit.thread_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tm6000_init_dev.exit.thread

if.end19.i:                                       ; preds = %if.else.i
  %eedata_size.i.i = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 5
  %162 = ptrtoint ptr %eedata_size.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %eedata_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool.not.i.i = icmp eq i32 %163, 0
  br i1 %tobool.not.i.i, label %if.end19.i.use_alternative_detection_method.exit.i_crit_edge, label %if.end19.i.for.body.i.i_crit_edge

if.end19.i.for.body.i.i_crit_edge:                ; preds = %if.end19.i
  br label %for.body.i.i

if.end19.i.use_alternative_detection_method.exit.i_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %use_alternative_detection_method.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end19.i.for.body.i.i_crit_edge
  %i.049.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end19.i.for.body.i.i_crit_edge ]
  %eename_size.i.i = getelementptr [17 x %struct.tm6000_board], ptr @tm6000_boards, i32 0, i32 %i.049.i.i, i32 2
  %164 = ptrtoint ptr %eename_size.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %eename_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool1.not.i.i = icmp eq i32 %165, 0
  br i1 %tobool1.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end3.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end3.i.i:                                      ; preds = %for.body.i.i
  %eename_pos.i.i = getelementptr [17 x %struct.tm6000_board], ptr @tm6000_boards, i32 0, i32 %i.049.i.i, i32 3
  %166 = ptrtoint ptr %eename_pos.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %eename_pos.i.i, align 4
  %add.i.i = add i32 %167, %165
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %add.i.i)
  %cmp8.i.i = icmp ult i32 %163, %add.i.i
  br i1 %cmp8.i.i, label %if.end3.i.i.for.inc.i.i_crit_edge, label %if.end10.i.i

if.end3.i.i.for.inc.i.i_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end10.i.i:                                     ; preds = %if.end3.i.i
  %arrayidx13.i.i = getelementptr %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 4, i32 %167
  %eename.i.i = getelementptr [17 x %struct.tm6000_board], ptr @tm6000_boards, i32 0, i32 %i.049.i.i, i32 1
  %bcmp.i.i = tail call i32 @bcmp(ptr %arrayidx13.i.i, ptr %eename.i.i, i32 %165) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool17.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end23.i.i, label %if.end10.i.i.for.inc.i.i_crit_edge

if.end10.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end10.i.i.for.inc.i.i_crit_edge, %if.end3.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.049.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 17
  br i1 %exitcond.not.i.i, label %do.end.i.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call22.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #12
  br label %use_alternative_detection_method.exit.i

if.end23.i.i:                                     ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %168 = ptrtoint ptr %model to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %i.049.i.i, ptr %model, align 8
  %arrayidx29.i.i = getelementptr [17 x %struct.tm6000_board], ptr @tm6000_boards, i32 0, i32 %i.049.i.i
  %169 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %arrayidx29.i.i, align 4
  %call30.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %170, i32 noundef %i.049.i.i) #12
  br label %use_alternative_detection_method.exit.i

use_alternative_detection_method.exit.i:          ; preds = %if.end23.i.i, %do.end.i.i, %if.end19.i.use_alternative_detection_method.exit.i_crit_edge
  %call20.i = tail call fastcc i32 @fill_board_specific_data(ptr noundef %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %use_alternative_detection_method.exit.i.tm6000_init_dev.exit.thread_crit_edge, label %use_alternative_detection_method.exit.i.if.end24.i_crit_edge

use_alternative_detection_method.exit.i.if.end24.i_crit_edge: ; preds = %use_alternative_detection_method.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

use_alternative_detection_method.exit.i.tm6000_init_dev.exit.thread_crit_edge: ; preds = %use_alternative_detection_method.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tm6000_init_dev.exit.thread

if.end24.i:                                       ; preds = %use_alternative_detection_method.exit.i.if.end24.i_crit_edge, %if.end.i.if.end24.i_crit_edge
  %width.i = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 7
  %171 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 720, ptr %width.i, align 8
  %height.i = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 8
  %172 = ptrtoint ptr %height.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 480, ptr %height.i, align 4
  %norm.i = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 6
  %173 = ptrtoint ptr %norm.i to i32
  call void @__asan_store8_noabort(i32 %173)
  store i64 4096, ptr %norm.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tun_setup.i.i) #9
  %v4l2_dev.i.i = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 28
  %i2c_adap.i.i = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 19
  %tuner_addr.i.i = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 13
  %174 = ptrtoint ptr %tuner_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %tuner_addr.i.i, align 8
  %conv.i.i = trunc i32 %175 to i8
  %call.i.i = tail call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev.i.i, ptr noundef %i2c_adap.i.i, ptr noundef nonnull @.str.68, i8 noundef zeroext %conv.i.i, ptr noundef null) #9
  %176 = call ptr @memset(ptr %tun_setup.i.i, i32 0, i32 20)
  %tuner_type.i.i = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 12
  %177 = ptrtoint ptr %tuner_type.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %tuner_type.i.i, align 4
  %type.i.i = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup.i.i, i32 0, i32 1
  %179 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %type.i.i, align 4
  %180 = ptrtoint ptr %tuner_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %tuner_addr.i.i, align 8
  %conv2.i.i = trunc i32 %181 to i16
  %182 = ptrtoint ptr %tun_setup.i.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %conv2.i.i, ptr %tun_setup.i.i, align 4
  %mode_mask.i.i = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup.i.i, i32 0, i32 2
  %caps.i.i = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 10
  %183 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load1_noabort(i32 %183)
  %bf.load.i.i = load i8, ptr %caps.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i152.i = icmp sgt i8 %bf.load.i.i, -1
  %spec.store.select.i.i = select i1 %tobool.not.i152.i, i32 0, i32 6
  %184 = ptrtoint ptr %mode_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %spec.store.select.i.i, ptr %mode_mask.i.i, align 4
  %185 = zext i32 %178 to i64
  call void @__sanitizer_cov_trace_switch(i64 %185, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %178, label %if.end24.i.do.body.i.i_crit_edge [
    i32 71, label %if.end24.i.do.body.sink.split.i.i_crit_edge
    i32 76, label %sw.bb5.i.i
  ]

if.end24.i.do.body.sink.split.i.i_crit_edge:      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split.i.i

if.end24.i.do.body.i.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

sw.bb5.i.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split.i.i

do.body.sink.split.i.i:                           ; preds = %sw.bb5.i.i, %if.end24.i.do.body.sink.split.i.i_crit_edge
  %tm6000_tuner_callback.sink.i.i = phi ptr [ @tm6000_xc5000_callback, %sw.bb5.i.i ], [ @tm6000_tuner_callback, %if.end24.i.do.body.sink.split.i.i_crit_edge ]
  %tuner_callback.i.i = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup.i.i, i32 0, i32 4
  %186 = ptrtoint ptr %tuner_callback.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %tm6000_tuner_callback.sink.i.i, ptr %tuner_callback.i.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.sink.split.i.i, %if.end24.i.do.body.i.i_crit_edge
  %subdevs.i.i = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 28, i32 2
  %187 = ptrtoint ptr %subdevs.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %.pn179.i.i = load ptr, ptr %subdevs.i.i, align 8
  %cmp.not181.i.i = icmp eq ptr %.pn179.i.i, %subdevs.i.i
  br i1 %cmp.not181.i.i, label %do.body.i.i.do.end.i155.i_crit_edge, label %do.body.i.i.for.body.i153.i_crit_edge

do.body.i.i.for.body.i153.i_crit_edge:            ; preds = %do.body.i.i
  br label %for.body.i153.i

do.body.i.i.do.end.i155.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i155.i

for.body.i153.i:                                  ; preds = %for.inc.i154.i.for.body.i153.i_crit_edge, %do.body.i.i.for.body.i153.i_crit_edge
  %.pn182.i.i = phi ptr [ %.pn.i.i, %for.inc.i154.i.for.body.i153.i_crit_edge ], [ %.pn179.i.i, %do.body.i.i.for.body.i153.i_crit_edge ]
  %__sd.0183.i.i = getelementptr i8, ptr %.pn182.i.i, i32 -80
  %ops.i.i = getelementptr i8, ptr %.pn182.i.i, i32 24
  %188 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %ops.i.i, align 4
  %tuner.i.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %189, i32 0, i32 1
  %190 = ptrtoint ptr %tuner.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %tuner.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %191, null
  br i1 %tobool12.not.i.i, label %for.body.i153.i.for.inc.i154.i_crit_edge, label %land.lhs.true.i.i

for.body.i153.i.for.inc.i154.i_crit_edge:         ; preds = %for.body.i153.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i154.i

land.lhs.true.i.i:                                ; preds = %for.body.i153.i
  %s_type_addr.i.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %191, i32 0, i32 9
  %192 = ptrtoint ptr %s_type_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %s_type_addr.i.i, align 4
  %tobool15.not.i.i = icmp eq ptr %193, null
  br i1 %tobool15.not.i.i, label %land.lhs.true.i.i.for.inc.i154.i_crit_edge, label %if.then16.i.i

land.lhs.true.i.i.for.inc.i154.i_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i154.i

if.then16.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i.i = call i32 %193(ptr noundef %__sd.0183.i.i, ptr noundef nonnull %tun_setup.i.i) #9
  br label %for.inc.i154.i

for.inc.i154.i:                                   ; preds = %if.then16.i.i, %land.lhs.true.i.i.for.inc.i154.i_crit_edge, %for.body.i153.i.for.inc.i154.i_crit_edge
  %194 = ptrtoint ptr %.pn182.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %.pn.i.i = load ptr, ptr %.pn182.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %subdevs.i.i
  br i1 %cmp.not.i.i, label %for.inc.i154.i.do.end.i155.i_crit_edge, label %for.inc.i154.i.for.body.i153.i_crit_edge

for.inc.i154.i.for.body.i153.i_crit_edge:         ; preds = %for.inc.i154.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i153.i

for.inc.i154.i.do.end.i155.i_crit_edge:           ; preds = %for.inc.i154.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i155.i

do.end.i155.i:                                    ; preds = %for.inc.i154.i.do.end.i155.i_crit_edge, %do.body.i.i.do.end.i155.i_crit_edge
  %195 = ptrtoint ptr %tuner_type.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %tuner_type.i.i, align 4
  %197 = zext i32 %196 to i64
  call void @__sanitizer_cov_trace_switch(i64 %197, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %196, label %do.end137.i.i [
    i32 71, label %sw.bb30.i.i
    i32 76, label %sw.bb86.i.i
  ]

sw.bb30.i.i:                                      ; preds = %do.end.i155.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xc2028_cfg.i.i) #9
  %198 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %xc2028_cfg.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ctl.i.i) #9
  %199 = ptrtoint ptr %xc2028_cfg.i.i to i32
  call void @__asan_store8_noabort(i32 %199)
  store i64 304942678016, ptr %xc2028_cfg.i.i, align 8
  %200 = call ptr @memset(ptr %ctl.i.i, i32 0, i32 28)
  %demod.i.i = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl.i.i, i32 0, i32 5
  %201 = ptrtoint ptr %demod.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 4560, ptr %demod.i.i, align 4
  %202 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %ctl.i.i, ptr %198, align 4
  %203 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %model, align 8
  %205 = zext i32 %204 to i64
  call void @__sanitizer_cov_trace_switch(i64 %205, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %204, label %sw.default.i.i [
    i32 9, label %sw.bb30.i.i.sw.bb32.i.i_crit_edge
    i32 12, label %sw.bb30.i.i.sw.bb32.i.i_crit_edge323
    i32 13, label %sw.bb30.i.i.sw.bb32.i.i_crit_edge324
  ]

sw.bb30.i.i.sw.bb32.i.i_crit_edge324:             ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32.i.i

sw.bb30.i.i.sw.bb32.i.i_crit_edge323:             ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32.i.i

sw.bb30.i.i.sw.bb32.i.i_crit_edge:                ; preds = %sw.bb30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32.i.i

sw.bb32.i.i:                                      ; preds = %sw.bb30.i.i.sw.bb32.i.i_crit_edge, %sw.bb30.i.i.sw.bb32.i.i_crit_edge323, %sw.bb30.i.i.sw.bb32.i.i_crit_edge324
  %max_len.i.i = getelementptr inbounds %struct.xc2028_ctrl, ptr %ctl.i.i, i32 0, i32 1
  %206 = ptrtoint ptr %max_len.i.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 80, ptr %max_len.i.i, align 4
  %207 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @.str.69, ptr %ctl.i.i, align 4
  br label %do.end42.i.i

sw.default.i.i:                                   ; preds = %sw.bb30.i.i
  %dev_type.i.i = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 3
  %208 = ptrtoint ptr %dev_type.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %dev_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %209)
  %cmp33.i.i = icmp eq i32 %209, 2
  br i1 %cmp33.i.i, label %if.then35.i.i, label %if.else.i.i

if.then35.i.i:                                    ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %210 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr @.str.70, ptr %ctl.i.i, align 4
  br label %do.end42.i.i

if.else.i.i:                                      ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %211 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr @.str.71, ptr %ctl.i.i, align 4
  br label %do.end42.i.i

do.end42.i.i:                                     ; preds = %if.else.i.i, %if.then35.i.i, %sw.bb32.i.i
  %call44.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72) #12
  %212 = ptrtoint ptr %subdevs.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %.pn178189.i.i = load ptr, ptr %subdevs.i.i, align 8
  %cmp58.not191.i.i = icmp eq ptr %.pn178189.i.i, %subdevs.i.i
  br i1 %cmp58.not191.i.i, label %do.end42.i.i.do.end83.i.i_crit_edge, label %do.end42.i.i.for.body61.i.i_crit_edge

do.end42.i.i.for.body61.i.i_crit_edge:            ; preds = %do.end42.i.i
  br label %for.body61.i.i

do.end42.i.i.do.end83.i.i_crit_edge:              ; preds = %do.end42.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end83.i.i

for.body61.i.i:                                   ; preds = %for.inc75.i.i.for.body61.i.i_crit_edge, %do.end42.i.i.for.body61.i.i_crit_edge
  %.pn178192.i.i = phi ptr [ %.pn178.i.i, %for.inc75.i.i.for.body61.i.i_crit_edge ], [ %.pn178189.i.i, %do.end42.i.i.for.body61.i.i_crit_edge ]
  %__sd46.0193.i.i = getelementptr i8, ptr %.pn178192.i.i, i32 -80
  %ops62.i.i = getelementptr i8, ptr %.pn178192.i.i, i32 24
  %213 = ptrtoint ptr %ops62.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %ops62.i.i, align 4
  %tuner63.i.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %214, i32 0, i32 1
  %215 = ptrtoint ptr %tuner63.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %tuner63.i.i, align 4
  %tobool64.not.i.i = icmp eq ptr %216, null
  br i1 %tobool64.not.i.i, label %for.body61.i.i.for.inc75.i.i_crit_edge, label %land.lhs.true65.i.i

for.body61.i.i.for.inc75.i.i_crit_edge:           ; preds = %for.body61.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc75.i.i

land.lhs.true65.i.i:                              ; preds = %for.body61.i.i
  %s_config.i.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %216, i32 0, i32 10
  %217 = ptrtoint ptr %s_config.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %s_config.i.i, align 4
  %tobool68.not.i.i = icmp eq ptr %218, null
  br i1 %tobool68.not.i.i, label %land.lhs.true65.i.i.for.inc75.i.i_crit_edge, label %if.then69.i.i

land.lhs.true65.i.i.for.inc75.i.i_crit_edge:      ; preds = %land.lhs.true65.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc75.i.i

if.then69.i.i:                                    ; preds = %land.lhs.true65.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call73.i.i = call i32 %218(ptr noundef %__sd46.0193.i.i, ptr noundef nonnull %xc2028_cfg.i.i) #9
  br label %for.inc75.i.i

for.inc75.i.i:                                    ; preds = %if.then69.i.i, %land.lhs.true65.i.i.for.inc75.i.i_crit_edge, %for.body61.i.i.for.inc75.i.i_crit_edge
  %219 = ptrtoint ptr %.pn178192.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %.pn178.i.i = load ptr, ptr %.pn178192.i.i, align 4
  %cmp58.not.i.i = icmp eq ptr %.pn178.i.i, %subdevs.i.i
  br i1 %cmp58.not.i.i, label %for.inc75.i.i.do.end83.i.i_crit_edge, label %for.inc75.i.i.for.body61.i.i_crit_edge

for.inc75.i.i.for.body61.i.i_crit_edge:           ; preds = %for.inc75.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body61.i.i

for.inc75.i.i.do.end83.i.i_crit_edge:             ; preds = %for.inc75.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end83.i.i

do.end83.i.i:                                     ; preds = %for.inc75.i.i.do.end83.i.i_crit_edge, %do.end42.i.i.do.end83.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ctl.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xc2028_cfg.i.i) #9
  br label %tm6000_config_tuner.exit.i

sw.bb86.i.i:                                      ; preds = %do.end.i155.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xc5000_cfg.i.i) #9
  %220 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %xc5000_cfg.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %ctl87.i.i) #9
  %221 = call ptr @memset(ptr %ctl87.i.i, i32 255, i32 16)
  %222 = ptrtoint ptr %tuner_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %tuner_addr.i.i, align 8
  %conv89.i.i = trunc i32 %223 to i8
  %224 = ptrtoint ptr %ctl87.i.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %conv89.i.i, ptr %ctl87.i.i, align 4
  %if_khz.i.i = getelementptr inbounds %struct.xc5000_config, ptr %ctl87.i.i, i32 0, i32 1
  %225 = ptrtoint ptr %if_khz.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 4570, ptr %if_khz.i.i, align 4
  %radio_input.i.i = getelementptr inbounds %struct.xc5000_config, ptr %ctl87.i.i, i32 0, i32 2
  %226 = ptrtoint ptr %radio_input.i.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 3, ptr %radio_input.i.i, align 4
  %xtal_khz.i.i = getelementptr inbounds %struct.xc5000_config, ptr %ctl87.i.i, i32 0, i32 3
  %227 = ptrtoint ptr %xtal_khz.i.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 0, ptr %xtal_khz.i.i, align 2
  %output_amp.i.i = getelementptr inbounds %struct.xc5000_config, ptr %ctl87.i.i, i32 0, i32 4
  %228 = ptrtoint ptr %output_amp.i.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 0, ptr %output_amp.i.i, align 4
  %chip_id.i.i = getelementptr inbounds %struct.xc5000_config, ptr %ctl87.i.i, i32 0, i32 5
  %229 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 0, ptr %chip_id.i.i, align 4
  %230 = ptrtoint ptr %xc5000_cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 76, ptr %xc5000_cfg.i.i, align 4
  %231 = ptrtoint ptr %220 to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %ctl87.i.i, ptr %220, align 4
  %232 = ptrtoint ptr %subdevs.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %.pn177184.i.i = load ptr, ptr %subdevs.i.i, align 8
  %cmp105.not186.i.i = icmp eq ptr %.pn177184.i.i, %subdevs.i.i
  br i1 %cmp105.not186.i.i, label %sw.bb86.i.i.do.end131.i.i_crit_edge, label %sw.bb86.i.i.for.body108.i.i_crit_edge

sw.bb86.i.i.for.body108.i.i_crit_edge:            ; preds = %sw.bb86.i.i
  br label %for.body108.i.i

sw.bb86.i.i.do.end131.i.i_crit_edge:              ; preds = %sw.bb86.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end131.i.i

for.body108.i.i:                                  ; preds = %for.inc123.i.i.for.body108.i.i_crit_edge, %sw.bb86.i.i.for.body108.i.i_crit_edge
  %.pn177187.i.i = phi ptr [ %.pn177.i.i, %for.inc123.i.i.for.body108.i.i_crit_edge ], [ %.pn177184.i.i, %sw.bb86.i.i.for.body108.i.i_crit_edge ]
  %__sd93.0188.i.i = getelementptr i8, ptr %.pn177187.i.i, i32 -80
  %ops109.i.i = getelementptr i8, ptr %.pn177187.i.i, i32 24
  %233 = ptrtoint ptr %ops109.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %ops109.i.i, align 4
  %tuner110.i.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %234, i32 0, i32 1
  %235 = ptrtoint ptr %tuner110.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %tuner110.i.i, align 4
  %tobool111.not.i.i = icmp eq ptr %236, null
  br i1 %tobool111.not.i.i, label %for.body108.i.i.for.inc123.i.i_crit_edge, label %land.lhs.true112.i.i

for.body108.i.i.for.inc123.i.i_crit_edge:         ; preds = %for.body108.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc123.i.i

land.lhs.true112.i.i:                             ; preds = %for.body108.i.i
  %s_config115.i.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %236, i32 0, i32 10
  %237 = ptrtoint ptr %s_config115.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %s_config115.i.i, align 4
  %tobool116.not.i.i = icmp eq ptr %238, null
  br i1 %tobool116.not.i.i, label %land.lhs.true112.i.i.for.inc123.i.i_crit_edge, label %if.then117.i.i

land.lhs.true112.i.i.for.inc123.i.i_crit_edge:    ; preds = %land.lhs.true112.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc123.i.i

if.then117.i.i:                                   ; preds = %land.lhs.true112.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call121.i.i = call i32 %238(ptr noundef %__sd93.0188.i.i, ptr noundef nonnull %xc5000_cfg.i.i) #9
  br label %for.inc123.i.i

for.inc123.i.i:                                   ; preds = %if.then117.i.i, %land.lhs.true112.i.i.for.inc123.i.i_crit_edge, %for.body108.i.i.for.inc123.i.i_crit_edge
  %239 = ptrtoint ptr %.pn177187.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %.pn177.i.i = load ptr, ptr %.pn177187.i.i, align 4
  %cmp105.not.i.i = icmp eq ptr %.pn177.i.i, %subdevs.i.i
  br i1 %cmp105.not.i.i, label %for.inc123.i.i.do.end131.i.i_crit_edge, label %for.inc123.i.i.for.body108.i.i_crit_edge

for.inc123.i.i.for.body108.i.i_crit_edge:         ; preds = %for.inc123.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body108.i.i

for.inc123.i.i.do.end131.i.i_crit_edge:           ; preds = %for.inc123.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end131.i.i

do.end131.i.i:                                    ; preds = %for.inc123.i.i.do.end131.i.i_crit_edge, %sw.bb86.i.i.do.end131.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %ctl87.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xc5000_cfg.i.i) #9
  br label %tm6000_config_tuner.exit.i

do.end137.i.i:                                    ; preds = %do.end.i155.i
  call void @__sanitizer_cov_trace_pc() #11
  %call139.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #12
  br label %tm6000_config_tuner.exit.i

tm6000_config_tuner.exit.i:                       ; preds = %do.end137.i.i, %do.end131.i.i, %do.end83.i.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tun_setup.i.i) #9
  %240 = ptrtoint ptr %subdevs.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %.pn157.i = load ptr, ptr %subdevs.i.i, align 8
  %cmp29.not159.i = icmp eq ptr %.pn157.i, %subdevs.i.i
  br i1 %cmp29.not159.i, label %tm6000_config_tuner.exit.i.do.end46.i_crit_edge, label %tm6000_config_tuner.exit.i.for.body.i_crit_edge

tm6000_config_tuner.exit.i.for.body.i_crit_edge:  ; preds = %tm6000_config_tuner.exit.i
  br label %for.body.i

tm6000_config_tuner.exit.i.do.end46.i_crit_edge:  ; preds = %tm6000_config_tuner.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %tm6000_config_tuner.exit.i.for.body.i_crit_edge
  %.pn160.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn157.i, %tm6000_config_tuner.exit.i.for.body.i_crit_edge ]
  %__sd.0161.i = getelementptr i8, ptr %.pn160.i, i32 -80
  %ops.i = getelementptr i8, ptr %.pn160.i, i32 24
  %241 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ops.i, align 4
  %video.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %242, i32 0, i32 3
  %243 = ptrtoint ptr %video.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %video.i, align 4
  %tobool.not.i = icmp eq ptr %244, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %s_std.i = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %244, i32 0, i32 3
  %245 = ptrtoint ptr %s_std.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %s_std.i, align 4
  %tobool32.not.i = icmp eq ptr %246, null
  br i1 %tobool32.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then33.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then33.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %247 = ptrtoint ptr %norm.i to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %norm.i, align 8
  %call38.i = call i32 %246(ptr noundef %__sd.0161.i, i64 noundef %248) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then33.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %249 = ptrtoint ptr %.pn160.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %.pn.i = load ptr, ptr %.pn160.i, align 4
  %cmp29.not.i = icmp eq ptr %.pn.i, %subdevs.i.i
  br i1 %cmp29.not.i, label %for.inc.i.do.end46.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.end46.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end46.i

do.end46.i:                                       ; preds = %for.inc.i.do.end46.i_crit_edge, %tm6000_config_tuner.exit.i.do.end46.i_crit_edge
  %250 = ptrtoint ptr %f.i to i32
  call void @__asan_store4_noabort(i32 %250)
  store i32 0, ptr %f.i, align 4
  %type.i = getelementptr inbounds %struct.v4l2_frequency, ptr %f.i, i32 0, i32 1
  %251 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 2, ptr %type.i, align 4
  %frequency.i = getelementptr inbounds %struct.v4l2_frequency, ptr %f.i, i32 0, i32 2
  %252 = ptrtoint ptr %frequency.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 3092, ptr %frequency.i, align 4
  %freq.i = getelementptr inbounds %struct.tm6000_core, ptr %call7.i.i, i32 0, i32 34
  %253 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 3092, ptr %freq.i, align 4
  %254 = ptrtoint ptr %subdevs.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %.pn151162.i = load ptr, ptr %subdevs.i.i, align 8
  %cmp63.not164.i = icmp eq ptr %.pn151162.i, %subdevs.i.i
  br i1 %cmp63.not164.i, label %do.end46.i.do.end87.i_crit_edge, label %do.end46.i.for.body65.i_crit_edge

do.end46.i.for.body65.i_crit_edge:                ; preds = %do.end46.i
  br label %for.body65.i

do.end46.i.do.end87.i_crit_edge:                  ; preds = %do.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end87.i

for.body65.i:                                     ; preds = %for.inc79.i.for.body65.i_crit_edge, %do.end46.i.for.body65.i_crit_edge
  %.pn151165.i = phi ptr [ %.pn151.i, %for.inc79.i.for.body65.i_crit_edge ], [ %.pn151162.i, %do.end46.i.for.body65.i_crit_edge ]
  %__sd51.0166.i = getelementptr i8, ptr %.pn151165.i, i32 -80
  %ops66.i = getelementptr i8, ptr %.pn151165.i, i32 24
  %255 = ptrtoint ptr %ops66.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %ops66.i, align 4
  %tuner67.i = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %256, i32 0, i32 1
  %257 = ptrtoint ptr %tuner67.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %tuner67.i, align 4
  %tobool68.not.i = icmp eq ptr %258, null
  br i1 %tobool68.not.i, label %for.body65.i.for.inc79.i_crit_edge, label %land.lhs.true69.i

for.body65.i.for.inc79.i_crit_edge:               ; preds = %for.body65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc79.i

land.lhs.true69.i:                                ; preds = %for.body65.i
  %s_frequency.i = getelementptr inbounds %struct.v4l2_subdev_tuner_ops, ptr %258, i32 0, i32 2
  %259 = ptrtoint ptr %s_frequency.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %s_frequency.i, align 4
  %tobool72.not.i = icmp eq ptr %260, null
  br i1 %tobool72.not.i, label %land.lhs.true69.i.for.inc79.i_crit_edge, label %if.then73.i

land.lhs.true69.i.for.inc79.i_crit_edge:          ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc79.i

if.then73.i:                                      ; preds = %land.lhs.true69.i
  call void @__sanitizer_cov_trace_pc() #11
  %call77.i = call i32 %260(ptr noundef %__sd51.0166.i, ptr noundef nonnull %f.i) #9
  br label %for.inc79.i

for.inc79.i:                                      ; preds = %if.then73.i, %land.lhs.true69.i.for.inc79.i_crit_edge, %for.body65.i.for.inc79.i_crit_edge
  %261 = ptrtoint ptr %.pn151165.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %.pn151.i = load ptr, ptr %.pn151165.i, align 4
  %cmp63.not.i = icmp eq ptr %.pn151.i, %subdevs.i.i
  br i1 %cmp63.not.i, label %for.inc79.i.do.end87.i_crit_edge, label %for.inc79.i.for.body65.i_crit_edge

for.inc79.i.for.body65.i_crit_edge:               ; preds = %for.inc79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body65.i

for.inc79.i.do.end87.i_crit_edge:                 ; preds = %for.inc79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end87.i

do.end87.i:                                       ; preds = %for.inc79.i.do.end87.i_crit_edge, %do.end46.i.do.end87.i_crit_edge
  %262 = ptrtoint ptr %caps.i.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %bf.load.i = load i8, ptr %caps.i.i, align 4
  %263 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %263)
  %tobool90.not.i = icmp eq i8 %263, 0
  br i1 %tobool90.not.i, label %do.end87.i.if.end94.i_crit_edge, label %if.then91.i

do.end87.i.if.end94.i_crit_edge:                  ; preds = %do.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94.i

if.then91.i:                                      ; preds = %do.end87.i
  call void @__sanitizer_cov_trace_pc() #11
  %call93.i = call ptr @v4l2_i2c_new_subdev(ptr noundef %v4l2_dev.i.i, ptr noundef %i2c_adap.i.i, ptr noundef nonnull @.str.62, i8 noundef zeroext -80, ptr noundef null) #9
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then91.i, %do.end87.i.if.end94.i_crit_edge
  %call95.i = call i32 @tm6000_v4l2_register(ptr noundef %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %cmp96.i = icmp slt i32 %call95.i, 0
  br i1 %cmp96.i, label %if.end94.i.tm6000_init_dev.exit.thread_crit_edge, label %tm6000_init_dev.exit

if.end94.i.tm6000_init_dev.exit.thread_crit_edge: ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tm6000_init_dev.exit.thread

tm6000_init_dev.exit.thread:                      ; preds = %if.end94.i.tm6000_init_dev.exit.thread_crit_edge, %use_alternative_detection_method.exit.i.tm6000_init_dev.exit.thread_crit_edge, %if.else.i.tm6000_init_dev.exit.thread_crit_edge, %if.end.i.tm6000_init_dev.exit.thread_crit_edge, %if.then.i.tm6000_init_dev.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call12.i, %if.end.i.tm6000_init_dev.exit.thread_crit_edge ], [ %call.i305, %if.then.i.tm6000_init_dev.exit.thread_crit_edge ], [ %call95.i, %if.end94.i.tm6000_init_dev.exit.thread_crit_edge ], [ %call20.i, %use_alternative_detection_method.exit.i.tm6000_init_dev.exit.thread_crit_edge ], [ %call16.i, %if.else.i.tm6000_init_dev.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %f.i) #9
  br label %free_device

tm6000_init_dev.exit:                             ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @tm6000_add_into_devlist(ptr noundef %call7.i.i) #9
  call void @tm6000_init_extension(ptr noundef %call7.i.i) #9
  %call99.i = call i32 @tm6000_ir_init(ptr noundef %call7.i.i) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %f.i) #9
  br label %cleanup

free_device:                                      ; preds = %tm6000_init_dev.exit.thread, %do.end104
  %rc.0 = phi i32 [ -19, %do.end104 ], [ %retval.0.i.ph, %tm6000_init_dev.exit.thread ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %do.end123

do.end123:                                        ; preds = %free_device, %entry.do.end123_crit_edge
  %nr.0 = phi i32 [ 0, %entry.do.end123_crit_edge ], [ %call3, %free_device ]
  %rc.1 = phi i32 [ %call2, %entry.do.end123_crit_edge ], [ %rc.0, %free_device ]
  %call125 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %rc.1) #12
  call void @_clear_bit(i32 noundef %nr.0, ptr noundef nonnull @tm6000_devused) #9
  br label %put_device

put_device:                                       ; preds = %do.end123, %if.end7.put_device_crit_edge, %do.end
  %rc.2 = phi i32 [ %rc.1, %do.end123 ], [ -12, %do.end ], [ -12, %if.end7.put_device_crit_edge ]
  call void @usb_put_dev(ptr noundef %call1) #9
  br label %cleanup

cleanup:                                          ; preds = %put_device, %tm6000_init_dev.exit
  %retval.0 = phi i32 [ %rc.2, %put_device ], [ 0, %tm6000_init_dev.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tm6000_usb_disconnect(ptr nocapture noundef %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull %1) #12
  %call2 = tail call i32 @tm6000_ir_fini(ptr noundef nonnull %1) #9
  %power_led = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 14, i32 4
  %2 = ptrtoint ptr %power_led to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power_led, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %do.end.if.end13_crit_edge, label %if.then4

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then4:                                         ; preds = %do.end
  %model = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %model, align 8
  %switch.tableidx = add i32 %5, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 7
  br i1 %6, label %switch.lookup, label %if.then4.if.end13_crit_edge

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

switch.lookup:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [7 x i16], ptr @switch.table.tm6000_usb_disconnect, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %7)
  %switch.load = load i16, ptr %switch.gep, align 2
  %conv = trunc i32 %3 to i16
  %call7 = tail call i32 @tm6000_set_reg(ptr noundef nonnull %1, i8 noundef zeroext 3, i16 noundef zeroext %conv, i16 noundef zeroext %switch.load) #9
  tail call void @msleep(i32 noundef 15) #9
  br label %if.end13

if.end13:                                         ; preds = %switch.lookup, %if.then4.if.end13_crit_edge, %do.end.if.end13_crit_edge
  %call14 = tail call i32 @tm6000_v4l2_unregister(ptr noundef nonnull %1) #9
  %call15 = tail call i32 @tm6000_i2c_unregister(ptr noundef nonnull %1) #9
  %v4l2_dev = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 28
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #9
  %state = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  %or = or i32 %9, 2
  store i32 %or, ptr %state, align 8
  %udev = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 47
  %10 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev, align 8
  tail call void @usb_put_dev(ptr noundef %11) #9
  tail call void @tm6000_close_extension(ptr noundef nonnull %1) #9
  tail call void @tm6000_remove_from_devlist(ptr noundef nonnull %1) #9
  %devno = getelementptr inbounds %struct.tm6000_core, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %devno, align 4
  tail call void @_clear_bit(i32 noundef %13, ptr noundef nonnull @tm6000_devused) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill_board_specific_data(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %model = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %model, align 8
  %type = getelementptr [17 x %struct.tm6000_board], ptr @tm6000_boards, i32 0, i32 %1, i32 5
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  %dev_type = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %dev_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dev_type, align 8
  %tuner_type = getelementptr [17 x %struct.tm6000_board], ptr @tm6000_boards, i32 0, i32 %1, i32 6
  %5 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tuner_type, align 4
  %tuner_type3 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 12
  %7 = ptrtoint ptr %tuner_type3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tuner_type3, align 4
  %tuner_addr = getelementptr [17 x %struct.tm6000_board], ptr @tm6000_boards, i32 0, i32 %1, i32 7
  %8 = ptrtoint ptr %tuner_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tuner_addr, align 4
  %tuner_addr6 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 13
  %10 = ptrtoint ptr %tuner_addr6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tuner_addr6, align 8
  %gpio = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 14
  %gpio9 = getelementptr [17 x %struct.tm6000_board], ptr @tm6000_boards, i32 0, i32 %1, i32 9
  %11 = call ptr @memcpy(ptr %gpio, ptr %gpio9, i32 28)
  %ir_codes = getelementptr [17 x %struct.tm6000_board], ptr @tm6000_boards, i32 0, i32 %1, i32 12
  %12 = ptrtoint ptr %ir_codes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ir_codes, align 4
  %ir_codes12 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 15
  %14 = ptrtoint ptr %ir_codes12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %ir_codes12, align 8
  %demod_addr = getelementptr [17 x %struct.tm6000_board], ptr @tm6000_boards, i32 0, i32 %1, i32 8
  %15 = ptrtoint ptr %demod_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %demod_addr, align 4
  %demod_addr15 = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 17
  %17 = ptrtoint ptr %demod_addr15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %demod_addr15, align 8
  %caps = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 10
  %caps18 = getelementptr [17 x %struct.tm6000_board], ptr @tm6000_boards, i32 0, i32 %1, i32 4
  %18 = ptrtoint ptr %caps18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %caps18, align 4
  %20 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %caps, align 4
  %vinput = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 32
  %vinput22 = getelementptr [17 x %struct.tm6000_board], ptr @tm6000_boards, i32 0, i32 %1, i32 10
  %21 = call ptr @memcpy(ptr %vinput, ptr %vinput22, i32 20)
  %arrayidx25 = getelementptr %struct.tm6000_core, ptr %dev, i32 0, i32 32, i32 1
  %arrayidx29 = getelementptr [17 x %struct.tm6000_board], ptr @tm6000_boards, i32 0, i32 %1, i32 10, i32 1
  %22 = call ptr @memcpy(ptr %arrayidx25, ptr %arrayidx29, i32 20)
  %arrayidx31 = getelementptr %struct.tm6000_core, ptr %dev, i32 0, i32 32, i32 2
  %arrayidx35 = getelementptr [17 x %struct.tm6000_board], ptr @tm6000_boards, i32 0, i32 %1, i32 10, i32 2
  %23 = call ptr @memcpy(ptr %arrayidx31, ptr %arrayidx35, i32 20)
  %rinput = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 33
  %rinput38 = getelementptr [17 x %struct.tm6000_board], ptr @tm6000_boards, i32 0, i32 %1, i32 11
  %24 = call ptr @memcpy(ptr %rinput, ptr %rinput38, i32 20)
  %25 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 12, label %entry.sw.bb_crit_edge
    i32 9, label %entry.sw.bb_crit_edge69
  ]

entry.sw.bb_crit_edge69:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge69
  %quirks = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 60
  %26 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %quirks, align 4
  %or = or i32 %27, 1
  store i32 %or, ptr %quirks, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %call = tail call i32 @tm6000_init(ptr noundef %dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 47
  %28 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %udev, align 8
  %dev40 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  %v4l2_dev = getelementptr inbounds %struct.tm6000_core, ptr %dev, i32 0, i32 28
  %call41 = tail call i32 @v4l2_device_register(ptr noundef %dev40, ptr noundef %v4l2_dev) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ %call41, %if.end ], [ %call, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_i2c_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_v4l2_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tm6000_add_into_devlist(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tm6000_init_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_ir_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_ir_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_v4l2_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tm6000_i2c_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tm6000_close_extension(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tm6000_remove_from_devlist(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !19, !20, !22, !23, !25, !27, !29, !30, !31, !32, !34, !35, !37, !39, !40, !41, !42, !44, !45, !47, !48, !50, !52, !54, !56, !58, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !94, !95, !96, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !140, !142, !144, !145, !146, !147, !149, !150, !151, !153, !155, !157, !159, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !173}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @__param_card, !1, !"__param_card", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 49, i32 1}
!2 = !{ptr @__UNIQUE_ID_cardtype305, !1, !"__UNIQUE_ID_cardtype305", i1 false, i1 false}
!3 = !{ptr @__ksymtab_tm6000_xc5000_callback, !4, !"__ksymtab_tm6000_xc5000_callback", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 698, i32 1}
!5 = !{ptr @__ksymtab_tm6000_tuner_callback, !6, !"__ksymtab_tm6000_tuner_callback", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 783, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 865, i32 5}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @tm6000_cards_setup._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @tm6000_cards_setup._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @tm6000_cards_setup._entry.3, !14, !"_entry", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 873, i32 5}
!15 = !{ptr @tm6000_cards_setup._entry_ptr.4, !14, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 878, i32 3}
!18 = !{ptr @tm6000_cards_setup._entry.5, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @tm6000_cards_setup._entry_ptr.7, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__initcall__kmod_tm6000__306_1393_tm6000_usb_driver_init6, !21, !"__initcall__kmod_tm6000__306_1393_tm6000_usb_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1393, i32 1}
!22 = !{ptr @__exitcall_tm6000_usb_driver_exit, !21, !"__exitcall_tm6000_usb_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_description307, !24, !"__UNIQUE_ID_description307", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1395, i32 1}
!25 = !{ptr @__UNIQUE_ID_author308, !26, !"__UNIQUE_ID_author308", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1396, i32 1}
!27 = !{ptr @__UNIQUE_ID_file309, !28, !"__UNIQUE_ID_file309", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1397, i32 1}
!29 = !{ptr @__UNIQUE_ID_license310, !28, !"__UNIQUE_ID_license310", i1 false, i1 false}
!30 = !{ptr @__param_str_card, !1, !"__param_str_card", i1 false, i1 false}
!31 = !{ptr @__param_arr_card, !1, !"__param_arr_card", i1 false, i1 false}
!32 = !{ptr @card, !33, !"card", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 47, i32 21}
!34 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tm6000_usb_driver, !36, !"tm6000_usb_driver", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1386, i32 26}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1191, i32 3}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @tm6000_usb_probe._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @tm6000_usb_probe._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @tm6000_usb_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1202, i32 2}
!44 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @tm6000_usb_probe.__key.12, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1203, i32 2}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1207, i32 26}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1218, i32 11}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1222, i32 11}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1225, i32 11}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1228, i32 11}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1244, i32 4}
!60 = !{ptr @tm6000_usb_probe._entry.19, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @tm6000_usb_probe._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1254, i32 9}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1259, i32 9}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1267, i32 9}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1272, i32 9}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1280, i32 8}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1285, i32 8}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1294, i32 2}
!76 = !{ptr @tm6000_usb_probe._entry.28, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @tm6000_usb_probe._entry_ptr.30, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1302, i32 3}
!80 = !{ptr @tm6000_usb_probe._entry.31, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @tm6000_usb_probe._entry_ptr.33, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1310, i32 2}
!84 = !{ptr @tm6000_usb_probe._entry.34, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @tm6000_usb_probe._entry_ptr.36, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1321, i32 2}
!88 = !{ptr @tm6000_usb_probe._entry.37, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @tm6000_usb_probe._entry_ptr.39, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @tm6000_devused, !91, !"tm6000_devused", i1 false, i1 false}
!91 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 51, i32 22}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1162, i32 3}
!94 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @get_max_endpoint._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @get_max_endpoint._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 77, i32 19}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 101, i32 19}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 128, i32 19}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 154, i32 19}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 191, i32 19}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 221, i32 19}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 246, i32 19}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 272, i32 19}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 302, i32 19}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 331, i32 19}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 339, i32 15}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 372, i32 19}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 410, i32 19}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 446, i32 19}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 468, i32 15}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 508, i32 19}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 545, i32 19}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 575, i32 19}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 489, i32 19}
!135 = !{ptr @tm6000_boards, !136, !"tm6000_boards", i1 false, i1 false}
!136 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 75, i32 28}
!137 = !{ptr @tm6000_init_dev.__key, !138, !"__key", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1074, i32 2}
!139 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1119, i32 4}
!142 = !{ptr @.str.63, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1032, i32 3}
!144 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @use_alternative_detection_method._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @use_alternative_detection_method._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1038, i32 2}
!149 = !{ptr @use_alternative_detection_method._entry.65, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @use_alternative_detection_method._entry_ptr.67, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 893, i32 3}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 932, i32 16}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 936, i32 17}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 938, i32 17}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 941, i32 3}
!161 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @tm6000_config_tuner._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @tm6000_config_tuner._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 964, i32 3}
!166 = !{ptr @tm6000_config_tuner._entry.75, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @tm6000_config_tuner._entry_ptr.77, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 1342, i32 2}
!170 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @tm6000_usb_disconnect._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @tm6000_usb_disconnect._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @tm6000_id_table, !174, !"tm6000_id_table", i1 false, i1 false}
!174 = !{!"../drivers/media/usb/tm6000/tm6000-cards.c", i32 605, i32 35}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
