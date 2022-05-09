; ModuleID = '/llk/IR_all_yes/drivers/media/usb/stk1160/stk1160-core.c_pt.bc'
source_filename = "../drivers/media/usb/stk1160/stk1160-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.regval = type { i16, i16 }
%struct.stk1160 = type { %struct.v4l2_device, %struct.video_device, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, %struct.list_head, %struct.vb2_queue, i32, ptr, i32, i32, %struct.stk1160_isoc_ctl, i32, i32, i32, i64, ptr, i32, %struct.i2c_adapter, %struct.i2c_client, %struct.mutex, %struct.mutex, %struct.spinlock, ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.atomic_t = type { i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.video_device = type { %struct.media_entity, ptr, %struct.media_pipeline, ptr, i32, %struct.device, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i32, i32, i32, i16, i32, i32, %struct.spinlock, %struct.list_head, i32, i64, ptr, ptr, [6 x i32], ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.88 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.85], %struct.media_entity_enum, i32 }
%struct.anon.85 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.stk1160_isoc_ctl = type { i32, i32, ptr, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_input = internal constant [14 x i8] c"stk1160.input\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@input = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_input = internal constant %struct.kernel_param { ptr @__param_str_input, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @input } }, section "__param", align 4
@__UNIQUE_ID_inputtype309 = internal constant [27 x i8] c"stk1160.parmtype=input:int\00", section ".modinfo", align 1
@__UNIQUE_ID_input310 = internal constant [37 x i8] c"stk1160.parm=input:Set default input\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [47 x i8] c"stk1160.file=drivers/media/usb/stk1160/stk1160\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [20 x i8] c"stk1160.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author313 = internal constant [31 x i8] c"stk1160.author=Ezequiel Garcia\00", section ".modinfo", align 1
@__UNIQUE_ID_description314 = internal constant [35 x i8] c"stk1160.description=STK1160 driver\00", section ".modinfo", align 1
@stk1160_read_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013stk1160: read failed on reg 0x%x (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stk1160_read_reg\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/usb/stk1160/stk1160-core.c\00", [55 x i8] zeroinitializer }, align 32
@stk1160_read_reg._entry_ptr = internal global ptr @stk1160_read_reg._entry, section ".printk_index", align 4
@stk1160_write_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013stk1160: write failed on reg 0x%x (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stk1160_write_reg\00", [46 x i8] zeroinitializer }, align 32
@stk1160_write_reg._entry_ptr = internal global ptr @stk1160_write_reg._entry, section ".printk_index", align 4
@stk1160_select_input.gctrl = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\98\90\88\80\98", [27 x i8] zeroinitializer }, align 32
@__initcall__kmod_stk1160__315_431_stk1160_usb_driver_init6 = internal global ptr @stk1160_usb_driver_init, section ".initcall6.init", align 4
@stk1160_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.5, ptr @stk1160_probe, ptr @stk1160_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stk1160_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_stk1160_usb_driver_exit = internal global ptr @stk1160_usb_driver_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stk1160\00", [24 x i8] zeroinitializer }, align 32
@stk1160_id_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1505, i16 1032, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@stk1160_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->buf_lock\00", [17 x i8] zeroinitializer }, align 32
@stk1160_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->v4l_lock\00", [17 x i8] zeroinitializer }, align 32
@stk1160_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&dev->vb_queue_lock\00", [44 x i8] zeroinitializer }, align 32
@stk1160_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"stk1160_core:328:(&dev->ctrl_handler)->_lock\00", [51 x i8] zeroinitializer }, align 32
@stk1160_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013stk1160: v4l2_ctrl_handler_init failed (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stk1160_probe\00", [18 x i8] zeroinitializer }, align 32
@stk1160_probe._entry_ptr = internal global ptr @stk1160_probe._entry, section ".printk_index", align 4
@stk1160_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013stk1160: v4l2_device_register failed (%d)\0A\00", [51 x i8] zeroinitializer }, align 32
@stk1160_probe._entry_ptr.16 = internal global ptr @stk1160_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"saa7115_auto\00", [19 x i8] zeroinitializer }, align 32
@saa7113_addrs = internal global { [2 x i16], [28 x i8] } { [2 x i16] [i16 37, i16 -2], [28 x i8] zeroinitializer }, align 32
@stk1160_scan_usb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 215, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no audio or video endpoints found\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stk1160_scan_usb\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stk1160_scan_usb._entry_ptr = internal global ptr @stk1160_scan_usb._entry, section ".printk_index", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.5\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"12\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"480\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@stk1160_scan_usb._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.2, i32 240, ptr @.str.28, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"New device %s %s @ %s Mbps (%04x:%04x, interface %d, class %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stk1160_scan_usb._entry_ptr.29 = internal global ptr @stk1160_scan_usb._entry.26, section ".printk_index", align 4
@.str.30 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@stk1160_scan_usb._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.19, ptr @.str.2, i32 246, ptr @.str.33, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"audio interface %d found.\0A\09\09\09\09This is not implemented by this driver,\09\09\09\09you should use snd-usb-audio instead\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stk1160_scan_usb._entry_ptr.34 = internal global ptr @stk1160_scan_usb._entry.31, section ".printk_index", align 4
@stk1160_scan_usb._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.19, ptr @.str.2, i32 250, ptr @.str.28, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"video interface %d found\0A\00", [38 x i8] zeroinitializer }, align 32
@stk1160_scan_usb._entry_ptr.37 = internal global ptr @stk1160_scan_usb._entry.35, section ".printk_index", align 4
@stk1160_scan_usb._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.19, ptr @.str.2, i32 259, ptr @.str.33, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"must be connected to a high-speed USB 2.0 port\0A\09\09\09\09You may not be able to stream video smoothly\0A\00", [63 x i8] zeroinitializer }, align 32
@stk1160_scan_usb._entry_ptr.40 = internal global ptr @stk1160_scan_usb._entry.38, section ".printk_index", align 4
@stk1160_reg_reset.ctl = internal constant { [15 x %struct.regval], [36 x i8] } { [15 x %struct.regval] [%struct.regval { i16 2, i16 120 }, %struct.regval { i16 13, i16 0 }, %struct.regval { i16 15, i16 2 }, %struct.regval { i16 24, i16 16 }, %struct.regval { i16 25, i16 0 }, %struct.regval { i16 26, i16 20 }, %struct.regval { i16 27, i16 14 }, %struct.regval { i16 28, i16 70 }, %struct.regval { i16 768, i16 18 }, %struct.regval { i16 848, i16 45 }, %struct.regval { i16 849, i16 1 }, %struct.regval { i16 850, i16 0 }, %struct.regval { i16 851, i16 0 }, %struct.regval { i16 768, i16 128 }, %struct.regval { i16 -1, i16 -1 }], [36 x i8] zeroinitializer }, align 32
@switch.table.stk1160_probe = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 129, i64 130]
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 31, i32 21 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 70, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 90, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"gctrl\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 101, i32 18 }
@___asan_gen_.68 = private unnamed_addr constant [19 x i8] c"stk1160_usb_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 424, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 431, i32 1 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"stk1160_id_table\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 40, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 324, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 325, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 326, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 328, i32 7 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 330, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 343, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 356, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [14 x i8] c"saa7113_addrs\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 47, i32 23 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 215, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 221, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 224, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 227, i32 11 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 230, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 233, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 244, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 249, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 258, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [4 x i8] c"ctl\00", align 1
@___asan_gen_.183 = private constant [44 x i8] c"../drivers/media/usb/stk1160/stk1160-core.c\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 122, i32 29 }
@___asan_gen_.185 = private unnamed_addr constant [27 x i8] c"switch.table.stk1160_probe\00", align 1
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_input310, ptr @__UNIQUE_ID_inputtype309, ptr @__UNIQUE_ID_license312, ptr @__exitcall_stk1160_usb_driver_exit, ptr @__initcall__kmod_stk1160__315_431_stk1160_usb_driver_init6, ptr @__param_input, ptr @stk1160_probe._entry, ptr @stk1160_probe._entry.14, ptr @stk1160_probe._entry_ptr, ptr @stk1160_probe._entry_ptr.16, ptr @stk1160_read_reg._entry, ptr @stk1160_read_reg._entry_ptr, ptr @stk1160_scan_usb._entry, ptr @stk1160_scan_usb._entry.26, ptr @stk1160_scan_usb._entry.31, ptr @stk1160_scan_usb._entry.35, ptr @stk1160_scan_usb._entry.38, ptr @stk1160_scan_usb._entry_ptr, ptr @stk1160_scan_usb._entry_ptr.29, ptr @stk1160_scan_usb._entry_ptr.34, ptr @stk1160_scan_usb._entry_ptr.37, ptr @stk1160_scan_usb._entry_ptr.40, ptr @stk1160_usb_driver_exit, ptr @stk1160_write_reg._entry, ptr @stk1160_write_reg._entry_ptr, ptr @input, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @stk1160_select_input.gctrl, ptr @stk1160_usb_driver, ptr @.str.5, ptr @stk1160_id_table, ptr @stk1160_probe.__key, ptr @.str.6, ptr @stk1160_probe.__key.7, ptr @.str.8, ptr @stk1160_probe.__key.9, ptr @.str.10, ptr @stk1160_probe._key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @saa7113_addrs, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @stk1160_reg_reset.ctl, ptr @switch.table.stk1160_probe], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_read_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_write_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_select_input.gctrl to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7113_addrs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_scan_usb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_scan_usb._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_scan_usb._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_scan_usb._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_scan_usb._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stk1160_reg_reset.ctl to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stk1160_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stk1160_read_reg(ptr nocapture noundef readonly %dev, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %udev = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %value, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 1) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl.i = shl i32 %3, 8
  %or1 = or i32 %shl.i, -2147483520
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %call4 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or1, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %reg, ptr noundef nonnull %call7.i, i16 noundef zeroext 1, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %reg to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv, i32 noundef %call4) #11
  br label %cleanup.sink.split

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call7.i, align 8
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %value, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end7, %do.end
  %retval.0.ph = phi i32 [ 0, %if.end7 ], [ %call4, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stk1160_write_reg(ptr nocapture noundef readonly %dev, i16 noundef zeroext %reg, i16 noundef zeroext %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %udev = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i = shl i32 %3, 8
  %or = or i32 %shl.i, -2147483648
  %call2 = tail call i32 @usb_control_msg(ptr noundef %1, i32 noundef %or, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %value, i16 noundef zeroext %reg, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %reg to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %call2) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stk1160_select_input(ptr noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ctl_input = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %ctl_input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ctl_input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  %. = select i1 %cmp, i32 9, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %1)
  %cmp2 = icmp ult i32 %1, 5
  br i1 %cmp2, label %do.body, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.body:                                          ; preds = %entry
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn37 = load ptr, ptr %subdevs, align 4
  %cmp7.not39 = icmp eq ptr %.pn37, %subdevs
  br i1 %cmp7.not39, label %do.body.do.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  br label %for.body

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body.for.body_crit_edge
  %.pn40 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn37, %do.body.for.body_crit_edge ]
  %__sd.041 = getelementptr i8, ptr %.pn40, i32 -80
  %ops = getelementptr i8, ptr %.pn40, i32 24
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %video, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %tobool10.not = icmp eq ptr %8, null
  br i1 %tobool10.not, label %land.lhs.true.for.inc_crit_edge, label %if.then11

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %8(ptr noundef %__sd.041, i32 noundef %., i32 noundef 0, i32 noundef 0) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn40 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn40, align 4
  %cmp7.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp7.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %do.body.do.end_crit_edge
  %10 = ptrtoint ptr %ctl_input to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctl_input, align 8
  %arrayidx = getelementptr [5 x i8], ptr @stk1160_select_input.gctrl, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %13 to i16
  %udev.i = getelementptr inbounds %struct.stk1160, ptr %dev, i32 0, i32 4
  %14 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 8
  %shl.i.i = shl i32 %17, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call2.i = tail call i32 @usb_control_msg(ptr noundef %15, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv, i16 noundef zeroext 0, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %do.end.i, label %do.end.if.end25_crit_edge

do.end.if.end25_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef %call2.i) #11
  br label %if.end25

if.end25:                                         ; preds = %do.end.i, %do.end.if.end25_crit_edge, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stk1160_usb_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @stk1160_usb_driver, ptr noundef null, ptr noundef nonnull @.str.5) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stk1160_usb_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @stk1160_usb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stk1160_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 8
  %bInterfaceClass = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bInterfaceClass to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceClass, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 2
  %6 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_altsetting, align 8
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 4) #7
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %if.end.cleanup_crit_edge, label %if.end7.i, !prof !106

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i:                                        ; preds = %if.end
  %10 = extractvalue { i32, i1 } %8, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3264) #12
  %cmp3 = icmp eq ptr %call8.i, null
  br i1 %cmp3, label %if.end7.i.cleanup_crit_edge, label %if.end6

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end7.i
  %11 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interface, align 8
  %bInterfaceNumber.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %bInterfaceNumber.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bInterfaceNumber.i, align 2
  %conv.i = zext i8 %14 to i32
  %15 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_altsetting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp143.not.i = icmp eq i32 %16, 0
  br i1 %cmp143.not.i, label %if.end6.for.end29.i_crit_edge, label %for.cond3.preheader.lr.ph.i

if.end6.for.end29.i_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end29.i

for.cond3.preheader.lr.ph.i:                      ; preds = %if.end6
  %speed16.i = getelementptr i8, ptr %1, i32 -100
  %17 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %interface, align 8
  %19 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_altsetting, align 8
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.inc27.i.for.cond3.preheader.i_crit_edge, %for.cond3.preheader.lr.ph.i
  %has_audio.0.off0147.i = phi i1 [ false, %for.cond3.preheader.lr.ph.i ], [ %has_audio.1.off0.lcssa.i, %for.inc27.i.for.cond3.preheader.i_crit_edge ]
  %has_video.0.off0146.i = phi i1 [ false, %for.cond3.preheader.lr.ph.i ], [ %has_video.1.off0.lcssa.i, %for.inc27.i.for.cond3.preheader.i_crit_edge ]
  %i.0144.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i ], [ %inc28.i, %for.inc27.i.for.cond3.preheader.i_crit_edge ]
  %bNumEndpoints136.i = getelementptr %struct.usb_host_interface, ptr %18, i32 %i.0144.i, i32 0, i32 4
  %21 = ptrtoint ptr %bNumEndpoints136.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bNumEndpoints136.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp8138.not.i = icmp eq i8 %22, 0
  br i1 %cmp8138.not.i, label %for.cond3.preheader.i.for.inc27.i_crit_edge, label %for.body10.lr.ph.i

for.cond3.preheader.i.for.inc27.i_crit_edge:      ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc27.i

for.body10.lr.ph.i:                               ; preds = %for.cond3.preheader.i
  %arrayidx25.i = getelementptr i32, ptr %call8.i, i32 %i.0144.i
  %23 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %interface, align 8
  %bNumEndpoints.i = getelementptr %struct.usb_host_interface, ptr %24, i32 %i.0144.i, i32 0, i32 4
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %25 = phi ptr [ %18, %for.body10.lr.ph.i ], [ %24, %for.inc.i.for.body10.i_crit_edge ]
  %has_audio.1.off0141.i = phi i1 [ %has_audio.0.off0147.i, %for.body10.lr.ph.i ], [ %has_audio.2.off0.i, %for.inc.i.for.body10.i_crit_edge ]
  %has_video.1.off0140.i = phi i1 [ %has_video.0.off0146.i, %for.body10.lr.ph.i ], [ %has_video.2.off0.i, %for.inc.i.for.body10.i_crit_edge ]
  %e.0139.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc.i, %for.inc.i.for.body10.i_crit_edge ]
  %endpoint.i = getelementptr %struct.usb_host_interface, ptr %25, i32 %i.0144.i, i32 3
  %26 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %endpoint.i, align 4
  %arrayidx13.i = getelementptr %struct.usb_host_endpoint, ptr %27, i32 %e.0139.i
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx13.i, i32 0, i32 4
  %28 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %wMaxPacketSize.i, align 1
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #7
  %conv15.i = zext i16 %30 to i32
  %and.i = and i32 %conv15.i, 2047
  %31 = ptrtoint ptr %speed16.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %speed16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %32)
  %cmp17.i = icmp eq i32 %32, 3
  %33 = lshr i32 %conv15.i, 11
  %and19.i = and i32 %33, 3
  %add.i = add nuw nsw i32 %and19.i, 1
  %mul.i = select i1 %cmp17.i, i32 %add.i, i32 1
  %size.0.i = mul nuw nsw i32 %mul.i, %and.i
  %bmAttributes.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx13.i, i32 0, i32 3
  %34 = ptrtoint ptr %bmAttributes.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %bmAttributes.i.i, align 1
  %36 = and i8 %35, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %cmp.i.not.i = icmp eq i8 %36, 1
  br i1 %cmp.i.not.i, label %land.lhs.true.i, label %for.body10.i.for.inc.i_crit_edge

for.body10.i.for.inc.i_crit_edge:                 ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body10.i
  %bEndpointAddress.i.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %arrayidx13.i, i32 0, i32 2
  %37 = ptrtoint ptr %bEndpointAddress.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %bEndpointAddress.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %38)
  %tobool21.not.i = icmp sgt i8 %38, -1
  br i1 %tobool21.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %if.then22.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then22.i:                                      ; preds = %land.lhs.true.i
  %39 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i8 %38, label %if.then22.i.for.inc.i_crit_edge [
    i8 -127, label %sw.bb.i
    i8 -126, label %sw.bb24.i
  ]

if.then22.i.for.inc.i_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb.i:                                          ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

sw.bb24.i:                                        ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %size.0.i, ptr %arrayidx25.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.bb24.i, %sw.bb.i, %if.then22.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body10.i.for.inc.i_crit_edge
  %has_video.2.off0.i = phi i1 [ %has_video.1.off0140.i, %if.then22.i.for.inc.i_crit_edge ], [ true, %sw.bb24.i ], [ %has_video.1.off0140.i, %sw.bb.i ], [ %has_video.1.off0140.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %has_video.1.off0140.i, %for.body10.i.for.inc.i_crit_edge ]
  %has_audio.2.off0.i = phi i1 [ %has_audio.1.off0141.i, %if.then22.i.for.inc.i_crit_edge ], [ %has_audio.1.off0141.i, %sw.bb24.i ], [ true, %sw.bb.i ], [ %has_audio.1.off0141.i, %land.lhs.true.i.for.inc.i_crit_edge ], [ %has_audio.1.off0141.i, %for.body10.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %e.0139.i, 1
  %41 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bNumEndpoints.i, align 4
  %conv7.i = zext i8 %42 to i32
  %cmp8.i = icmp ult i32 %inc.i, %conv7.i
  br i1 %cmp8.i, label %for.inc.i.for.body10.i_crit_edge, label %for.inc.i.for.inc27.i_crit_edge

for.inc.i.for.inc27.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc27.i

for.inc.i.for.body10.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i

for.inc27.i:                                      ; preds = %for.inc.i.for.inc27.i_crit_edge, %for.cond3.preheader.i.for.inc27.i_crit_edge
  %has_video.1.off0.lcssa.i = phi i1 [ %has_video.0.off0146.i, %for.cond3.preheader.i.for.inc27.i_crit_edge ], [ %has_video.2.off0.i, %for.inc.i.for.inc27.i_crit_edge ]
  %has_audio.1.off0.lcssa.i = phi i1 [ %has_audio.0.off0147.i, %for.cond3.preheader.i.for.inc27.i_crit_edge ], [ %has_audio.2.off0.i, %for.inc.i.for.inc27.i_crit_edge ]
  %inc28.i = add nuw i32 %i.0144.i, 1
  %cmp.i = icmp ult i32 %inc28.i, %20
  br i1 %cmp.i, label %for.inc27.i.for.cond3.preheader.i_crit_edge, label %for.inc27.i.for.end29.i_crit_edge

for.inc27.i.for.end29.i_crit_edge:                ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end29.i

for.inc27.i.for.cond3.preheader.i_crit_edge:      ; preds = %for.inc27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond3.preheader.i

for.end29.i:                                      ; preds = %for.inc27.i.for.end29.i_crit_edge, %if.end6.for.end29.i_crit_edge
  %has_video.0.off0.lcssa.i = phi i1 [ false, %if.end6.for.end29.i_crit_edge ], [ %has_video.1.off0.lcssa.i, %for.inc27.i.for.end29.i_crit_edge ]
  %has_audio.0.off0.lcssa.i = phi i1 [ false, %if.end6.for.end29.i_crit_edge ], [ %has_audio.1.off0.lcssa.i, %for.inc27.i.for.end29.i_crit_edge ]
  %brmerge.i = select i1 %has_audio.0.off0.lcssa.i, i1 true, i1 %has_video.0.off0.lcssa.i
  br i1 %brmerge.i, label %if.end35.i, label %if.then10

if.end35.i:                                       ; preds = %for.end29.i
  %speed36.i = getelementptr i8, ptr %1, i32 -100
  %43 = ptrtoint ptr %speed36.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %speed36.i, align 4
  %switch.tableidx = add i32 %44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %45 = icmp ult i32 %switch.tableidx, 3
  br i1 %45, label %switch.lookup, label %if.end35.i.do.end43.i_crit_edge

if.end35.i.do.end43.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end43.i

switch.lookup:                                    ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.stk1160_probe, i32 0, i32 %switch.tableidx
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end43.i

do.end43.i:                                       ; preds = %switch.lookup, %if.end35.i.do.end43.i_crit_edge
  %speed.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.25, %if.end35.i.do.end43.i_crit_edge ]
  %manufacturer.i = getelementptr i8, ptr %1, i32 1108
  %47 = ptrtoint ptr %manufacturer.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %manufacturer.i, align 4
  %tobool45.not.i = icmp eq ptr %48, null
  %spec.select.i = select i1 %tobool45.not.i, ptr @.str.30, ptr %48
  %product.i = getelementptr i8, ptr %1, i32 1104
  %49 = ptrtoint ptr %product.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %product.i, align 8
  %tobool47.not.i = icmp eq ptr %50, null
  %cond52.i = select i1 %tobool47.not.i, ptr @.str.30, ptr %50
  %idVendor.i = getelementptr i8, ptr %1, i32 936
  %51 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %idVendor.i, align 8
  %53 = tail call i16 @llvm.bswap.i16(i16 %52) #7
  %conv53.i = zext i16 %53 to i32
  %idProduct.i = getelementptr i8, ptr %1, i32 938
  %54 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %idProduct.i, align 2
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #7
  %conv55.i = zext i16 %56 to i32
  %57 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %interface, align 8
  %bInterfaceNumber58.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %bInterfaceNumber58.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %bInterfaceNumber58.i, align 2
  %conv59.i = zext i8 %60 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef nonnull %spec.select.i, ptr noundef nonnull %cond52.i, ptr noundef nonnull %speed.0.i, i32 noundef %conv53.i, i32 noundef %conv55.i, i32 noundef %conv.i, i32 noundef %conv59.i) #11
  br i1 %has_audio.0.off0.lcssa.i, label %do.end64.i, label %do.end43.i.if.end66.i_crit_edge

do.end43.i.if.end66.i_crit_edge:                  ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i

do.end64.i:                                       ; preds = %do.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.32, i32 noundef %conv.i) #11
  br label %if.end66.i

if.end66.i:                                       ; preds = %do.end64.i, %do.end43.i.if.end66.i_crit_edge
  br i1 %has_video.0.off0.lcssa.i, label %do.end71.i, label %if.end66.i.if.end73.i_crit_edge

if.end66.i.if.end73.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73.i

do.end71.i:                                       ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.36, i32 noundef %conv.i) #11
  br label %if.end73.i

if.end73.i:                                       ; preds = %do.end71.i, %if.end66.i.if.end73.i_crit_edge
  %61 = ptrtoint ptr %speed36.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %speed36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %cmp75.not.i = icmp eq i32 %62, 3
  br i1 %cmp75.not.i, label %if.end73.i.if.end11_crit_edge, label %do.end80.i

if.end73.i.if.end11_crit_edge:                    ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end80.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.39) #11
  br label %if.end11

if.then10:                                        ; preds = %for.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.18) #11
  br label %cleanup.sink.split

if.end11:                                         ; preds = %do.end80.i, %if.end73.i.if.end11_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %63 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i209 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %63, i32 noundef 3520, i32 noundef 4848) #10
  %cmp13 = icmp eq ptr %call7.i.i209, null
  br i1 %cmp13, label %if.end11.cleanup.sink.split_crit_edge, label %if.end16

if.end11.cleanup.sink.split_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end11
  %alt_max_pkt_size17 = getelementptr inbounds %struct.stk1160, ptr %call7.i.i209, i32 0, i32 9
  %64 = ptrtoint ptr %alt_max_pkt_size17 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call8.i, ptr %alt_max_pkt_size17, align 8
  %udev18 = getelementptr inbounds %struct.stk1160, ptr %call7.i.i209, i32 0, i32 4
  %65 = ptrtoint ptr %udev18 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr.i, ptr %udev18, align 4
  %66 = ptrtoint ptr %num_altsetting to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_altsetting, align 8
  %num_alt = getelementptr inbounds %struct.stk1160, ptr %call7.i.i209, i32 0, i32 11
  %68 = ptrtoint ptr %num_alt to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %num_alt, align 8
  %69 = load i32, ptr @input, align 4
  %ctl_input = getelementptr inbounds %struct.stk1160, ptr %call7.i.i209, i32 0, i32 15
  %70 = ptrtoint ptr %ctl_input to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %ctl_input, align 8
  %dev20 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %dev21 = getelementptr inbounds %struct.stk1160, ptr %call7.i.i209, i32 0, i32 3
  %71 = ptrtoint ptr %dev21 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %dev20, ptr %dev21, align 8
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %72 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call7.i.i209, ptr %driver_data.i.i, align 4
  %call22 = tail call i32 @stk1160_vb2_setup(ptr noundef nonnull %call7.i.i209) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end16.free_err_crit_edge, label %do.body

if.end16.free_err_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_err

do.body:                                          ; preds = %if.end16
  %buf_lock = getelementptr inbounds %struct.stk1160, ptr %call7.i.i209, i32 0, i32 23
  tail call void @__raw_spin_lock_init(ptr noundef %buf_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @stk1160_probe.__key, i16 noundef signext 3) #7
  %v4l_lock = getelementptr inbounds %struct.stk1160, ptr %call7.i.i209, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %v4l_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @stk1160_probe.__key.7) #7
  %vb_queue_lock = getelementptr inbounds %struct.stk1160, ptr %call7.i.i209, i32 0, i32 22
  tail call void @__mutex_init(ptr noundef %vb_queue_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @stk1160_probe.__key.9) #7
  %ctrl_handler = getelementptr inbounds %struct.stk1160, ptr %call7.i.i209, i32 0, i32 2
  %call34 = tail call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_handler, i32 noundef 0, ptr noundef nonnull @stk1160_probe._key, ptr noundef nonnull @.str.11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool.not = icmp eq i32 %call34, 0
  br i1 %tobool.not, label %if.end41, label %do.end38

do.end38:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %call34) #11
  br label %free_err

if.end41:                                         ; preds = %do.body
  %release = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i209, i32 0, i32 9
  %73 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @stk1160_release, ptr %release, align 4
  %ctrl_handler44 = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i209, i32 0, i32 6
  %74 = ptrtoint ptr %ctrl_handler44 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %ctrl_handler, ptr %ctrl_handler44, align 4
  %75 = ptrtoint ptr %dev21 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev21, align 8
  %call47 = tail call i32 @v4l2_device_register(ptr noundef %76, ptr noundef nonnull %call7.i.i209) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end55, label %do.end52

do.end52:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %call47) #11
  br label %free_ctrl

if.end55:                                         ; preds = %if.end41
  %call56 = tail call i32 @stk1160_i2c_register(ptr noundef nonnull %call7.i.i209) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.end55.unreg_v4l2_crit_edge, label %if.end60

if.end55.unreg_v4l2_crit_edge:                    ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %unreg_v4l2

if.end60:                                         ; preds = %if.end55
  %i2c_adap = getelementptr inbounds %struct.stk1160, ptr %call7.i.i209, i32 0, i32 19
  %call62 = tail call ptr @v4l2_i2c_new_subdev(ptr noundef nonnull %call7.i.i209, ptr noundef %i2c_adap, ptr noundef nonnull @.str.17, i8 noundef zeroext 0, ptr noundef nonnull @saa7113_addrs) #7
  %sd_saa7115 = getelementptr inbounds %struct.stk1160, ptr %call7.i.i209, i32 0, i32 5
  %77 = ptrtoint ptr %sd_saa7115 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call62, ptr %sd_saa7115, align 8
  %subdevs = getelementptr inbounds %struct.v4l2_device, ptr %call7.i.i209, i32 0, i32 2
  %78 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn220 = load ptr, ptr %subdevs, align 8
  %cmp69.not222 = icmp eq ptr %.pn220, %subdevs
  br i1 %cmp69.not222, label %if.end60.for.cond99.preheader_crit_edge, label %if.end60.for.body_crit_edge

if.end60.for.body_crit_edge:                      ; preds = %if.end60
  br label %for.body

if.end60.for.cond99.preheader_crit_edge:          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond99.preheader

for.cond99.preheader:                             ; preds = %for.inc.for.cond99.preheader_crit_edge, %if.end60.for.cond99.preheader_crit_edge
  %79 = ptrtoint ptr %subdevs to i32
  call void @__asan_load4_noabort(i32 %79)
  %.pn207225 = load ptr, ptr %subdevs, align 8
  %cmp103.not227 = icmp eq ptr %.pn207225, %subdevs
  br i1 %cmp103.not227, label %for.cond99.preheader.for.body.i.preheader_crit_edge, label %for.cond99.preheader.for.body106_crit_edge

for.cond99.preheader.for.body106_crit_edge:       ; preds = %for.cond99.preheader
  br label %for.body106

for.cond99.preheader.for.body.i.preheader_crit_edge: ; preds = %for.cond99.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end60.for.body_crit_edge
  %.pn223 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn220, %if.end60.for.body_crit_edge ]
  %__sd.0224 = getelementptr i8, ptr %.pn223, i32 -80
  %ops = getelementptr i8, ptr %.pn223, i32 24
  %80 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ops, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %tobool71.not = icmp eq ptr %83, null
  br i1 %tobool71.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %reset = getelementptr inbounds %struct.v4l2_subdev_core_ops, ptr %83, i32 0, i32 4
  %84 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %reset, align 4
  %tobool74.not = icmp eq ptr %85, null
  br i1 %tobool74.not, label %land.lhs.true.for.inc_crit_edge, label %if.then75

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then75:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call79 = tail call i32 %85(ptr noundef %__sd.0224, i32 noundef 0) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then75, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %86 = ptrtoint ptr %.pn223 to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pn = load ptr, ptr %.pn223, align 4
  %cmp69.not = icmp eq ptr %.pn, %subdevs
  br i1 %cmp69.not, label %for.inc.for.cond99.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.cond99.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond99.preheader

for.body106:                                      ; preds = %for.inc119.for.body106_crit_edge, %for.cond99.preheader.for.body106_crit_edge
  %.pn207228 = phi ptr [ %.pn207, %for.inc119.for.body106_crit_edge ], [ %.pn207225, %for.cond99.preheader.for.body106_crit_edge ]
  %__sd91.0229 = getelementptr i8, ptr %.pn207228, i32 -80
  %ops107 = getelementptr i8, ptr %.pn207228, i32 24
  %87 = ptrtoint ptr %ops107 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ops107, align 4
  %video = getelementptr inbounds %struct.v4l2_subdev_ops, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %video to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %video, align 4
  %tobool108.not = icmp eq ptr %90, null
  br i1 %tobool108.not, label %for.body106.for.inc119_crit_edge, label %land.lhs.true109

for.body106.for.inc119_crit_edge:                 ; preds = %for.body106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc119

land.lhs.true109:                                 ; preds = %for.body106
  %s_stream = getelementptr inbounds %struct.v4l2_subdev_video_ops, ptr %90, i32 0, i32 10
  %91 = ptrtoint ptr %s_stream to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %s_stream, align 4
  %tobool112.not = icmp eq ptr %92, null
  br i1 %tobool112.not, label %land.lhs.true109.for.inc119_crit_edge, label %if.then113

land.lhs.true109.for.inc119_crit_edge:            ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc119

if.then113:                                       ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #9
  %call117 = tail call i32 %92(ptr noundef %__sd91.0229, i32 noundef 0) #7
  br label %for.inc119

for.inc119:                                       ; preds = %if.then113, %land.lhs.true109.for.inc119_crit_edge, %for.body106.for.inc119_crit_edge
  %93 = ptrtoint ptr %.pn207228 to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pn207 = load ptr, ptr %.pn207228, align 4
  %cmp103.not = icmp eq ptr %.pn207, %subdevs
  br i1 %cmp103.not, label %for.inc119.for.body.i.preheader_crit_edge, label %for.inc119.for.body106_crit_edge

for.inc119.for.body106_crit_edge:                 ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body106

for.inc119.for.body.i.preheader_crit_edge:        ; preds = %for.inc119
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.inc119.for.body.i.preheader_crit_edge, %for.cond99.preheader.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %stk1160_write_reg.exit.i.for.body.i_crit_edge, %for.body.i.preheader
  %94 = phi i16 [ %102, %stk1160_write_reg.exit.i.for.body.i_crit_edge ], [ 2, %for.body.i.preheader ]
  %i.08.i = phi i32 [ %inc.i211, %stk1160_write_reg.exit.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %val.i = getelementptr [15 x %struct.regval], ptr @stk1160_reg_reset.ctl, i32 0, i32 %i.08.i, i32 1
  %95 = ptrtoint ptr %val.i to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %val.i, align 2
  %97 = ptrtoint ptr %udev18 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %udev18, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 8
  %shl.i.i.i = shl i32 %100, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call2.i.i = tail call i32 @usb_control_msg(ptr noundef %98, i32 noundef %or.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %96, i16 noundef zeroext %94, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i210 = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i.i210, label %do.end.i.i, label %for.body.i.stk1160_write_reg.exit.i_crit_edge

for.body.i.stk1160_write_reg.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stk1160_write_reg.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = zext i16 %94 to i32
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv.i.i, i32 noundef %call2.i.i) #11
  br label %stk1160_write_reg.exit.i

stk1160_write_reg.exit.i:                         ; preds = %do.end.i.i, %for.body.i.stk1160_write_reg.exit.i_crit_edge
  %inc.i211 = add nuw nsw i32 %i.08.i, 1
  %arrayidx.i = getelementptr [15 x %struct.regval], ptr @stk1160_reg_reset.ctl, i32 0, i32 %inc.i211
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx.i, align 2
  %exitcond.i = icmp eq i32 %inc.i211, 14
  br i1 %exitcond.i, label %stk1160_reg_reset.exit, label %stk1160_write_reg.exit.i.for.body.i_crit_edge

stk1160_write_reg.exit.i.for.body.i_crit_edge:    ; preds = %stk1160_write_reg.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

stk1160_reg_reset.exit:                           ; preds = %stk1160_write_reg.exit.i
  tail call void @stk1160_select_input(ptr noundef nonnull %call7.i.i209)
  tail call void @stk1160_ac97_setup(ptr noundef nonnull %call7.i.i209) #7
  %call130 = tail call i32 @stk1160_video_register(ptr noundef nonnull %call7.i.i209) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %cmp131 = icmp slt i32 %call130, 0
  br i1 %cmp131, label %unreg_i2c, label %stk1160_reg_reset.exit.cleanup_crit_edge

stk1160_reg_reset.exit.cleanup_crit_edge:         ; preds = %stk1160_reg_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

unreg_i2c:                                        ; preds = %stk1160_reg_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call135 = tail call i32 @stk1160_i2c_unregister(ptr noundef nonnull %call7.i.i209) #7
  br label %unreg_v4l2

unreg_v4l2:                                       ; preds = %unreg_i2c, %if.end55.unreg_v4l2_crit_edge
  %rc.0 = phi i32 [ %call56, %if.end55.unreg_v4l2_crit_edge ], [ %call130, %unreg_i2c ]
  tail call void @v4l2_device_unregister(ptr noundef nonnull %call7.i.i209) #7
  br label %free_ctrl

free_ctrl:                                        ; preds = %unreg_v4l2, %do.end52
  %rc.1 = phi i32 [ %call47, %do.end52 ], [ %rc.0, %unreg_v4l2 ]
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #7
  br label %free_err

free_err:                                         ; preds = %free_ctrl, %do.end38, %if.end16.free_err_crit_edge
  %rc.2 = phi i32 [ %call22, %if.end16.free_err_crit_edge ], [ %call34, %do.end38 ], [ %rc.1, %free_ctrl ]
  tail call void @kfree(ptr noundef nonnull %call8.i) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %free_err, %if.end11.cleanup.sink.split_crit_edge, %if.then10
  %call7.i.i209.sink = phi ptr [ %call7.i.i209, %free_err ], [ %call8.i, %if.then10 ], [ %call8.i, %if.end11.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %rc.2, %free_err ], [ -19, %if.then10 ], [ -12, %if.end11.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i209.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %stk1160_reg_reset.exit.cleanup_crit_edge, %if.end7.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ 0, %stk1160_reg_reset.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stk1160_disconnect(ptr nocapture noundef %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %vb_queue_lock = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 22
  tail call void @mutex_lock_nested(ptr noundef %vb_queue_lock, i32 noundef 0) #7
  %v4l_lock = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %v4l_lock, i32 noundef 0) #7
  tail call void @stk1160_uninit_isoc(ptr noundef %1) #7
  tail call void @stk1160_clear_queue(ptr noundef %1) #7
  %vdev = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 1
  tail call void @video_unregister_device(ptr noundef %vdev) #7
  tail call void @v4l2_device_disconnect(ptr noundef %1) #7
  %udev = getelementptr inbounds %struct.stk1160, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %udev, align 4
  tail call void @mutex_unlock(ptr noundef %v4l_lock) #7
  tail call void @mutex_unlock(ptr noundef %vb_queue_lock) #7
  %call4 = tail call i32 @v4l2_device_put(ptr noundef %1) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk1160_vb2_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stk1160_release(ptr noundef %v4l2_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stk1160_i2c_unregister(ptr noundef %v4l2_dev) #7
  %ctrl_handler = getelementptr inbounds %struct.stk1160, ptr %v4l2_dev, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_handler) #7
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #7
  %v4l_lock = getelementptr inbounds %struct.stk1160, ptr %v4l2_dev, i32 0, i32 21
  tail call void @mutex_destroy(ptr noundef %v4l_lock) #7
  %vb_queue_lock = getelementptr inbounds %struct.stk1160, ptr %v4l2_dev, i32 0, i32 22
  tail call void @mutex_destroy(ptr noundef %vb_queue_lock) #7
  %alt_max_pkt_size = getelementptr inbounds %struct.stk1160, ptr %v4l2_dev, i32 0, i32 9
  %0 = ptrtoint ptr %alt_max_pkt_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alt_max_pkt_size, align 8
  tail call void @kfree(ptr noundef %1) #7
  tail call void @kfree(ptr noundef %v4l2_dev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk1160_i2c_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_i2c_new_subdev(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stk1160_ac97_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk1160_video_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stk1160_i2c_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stk1160_uninit_isoc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @stk1160_clear_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @video_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !23, !25, !27, !28, !30, !31, !32, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !59, !60, !61, !62, !63, !64, !66, !68, !70, !72, !74, !75, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__param_input, !1, !"__param_input", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 32, i32 1}
!2 = !{ptr @__UNIQUE_ID_inputtype309, !1, !"__UNIQUE_ID_inputtype309", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_input310, !4, !"__UNIQUE_ID_input310", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 33, i32 1}
!5 = !{ptr @__UNIQUE_ID_file311, !6, !"__UNIQUE_ID_file311", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 35, i32 1}
!7 = !{ptr @__UNIQUE_ID_license312, !6, !"__UNIQUE_ID_license312", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author313, !9, !"__UNIQUE_ID_author313", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 36, i32 1}
!10 = !{ptr @__UNIQUE_ID_description314, !11, !"__UNIQUE_ID_description314", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 37, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 70, i32 3}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @stk1160_read_reg._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @stk1160_read_reg._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 90, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @stk1160_write_reg._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @stk1160_write_reg._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @stk1160_select_input.gctrl, !24, !"gctrl", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 101, i32 18}
!25 = !{ptr @__initcall__kmod_stk1160__315_431_stk1160_usb_driver_init6, !26, !"__initcall__kmod_stk1160__315_431_stk1160_usb_driver_init6", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 431, i32 1}
!27 = !{ptr @__exitcall_stk1160_usb_driver_exit, !26, !"__exitcall_stk1160_usb_driver_exit", i1 false, i1 false}
!28 = !{ptr @input, !29, !"input", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 31, i32 21}
!30 = !{ptr @__param_str_input, !1, !"__param_str_input", i1 false, i1 false}
!31 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @stk1160_usb_driver, !33, !"stk1160_usb_driver", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 424, i32 26}
!34 = !{ptr @stk1160_probe.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 324, i32 2}
!36 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @stk1160_probe.__key.7, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 325, i32 2}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @stk1160_probe.__key.9, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 326, i32 2}
!42 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @stk1160_probe._key, !44, !"_key", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 328, i32 7}
!45 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 330, i32 3}
!48 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @stk1160_probe._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @stk1160_probe._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 343, i32 3}
!53 = !{ptr @stk1160_probe._entry.14, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @stk1160_probe._entry_ptr.16, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 356, i32 3}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 215, i32 3}
!59 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @stk1160_scan_usb._entry, !58, !"_entry", i1 false, i1 false}
!63 = !{ptr @stk1160_scan_usb._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 221, i32 11}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 224, i32 11}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 227, i32 11}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 230, i32 11}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 233, i32 2}
!74 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @stk1160_scan_usb._entry.26, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @stk1160_scan_usb._entry_ptr.29, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 244, i32 3}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @stk1160_scan_usb._entry.31, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @stk1160_scan_usb._entry_ptr.34, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 249, i32 3}
!85 = !{ptr @stk1160_scan_usb._entry.35, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @stk1160_scan_usb._entry_ptr.37, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 258, i32 3}
!89 = !{ptr @stk1160_scan_usb._entry.38, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @stk1160_scan_usb._entry_ptr.40, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @saa7113_addrs, !92, !"saa7113_addrs", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 47, i32 23}
!93 = !{ptr @stk1160_reg_reset.ctl, !94, !"ctl", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 122, i32 29}
!95 = !{ptr @stk1160_id_table, !96, !"stk1160_id_table", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/stk1160/stk1160-core.c", i32 40, i32 35}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"branch_weights", i32 1, i32 2000}
