; ModuleID = '/llk/IR_all_yes/drivers/media/usb/au0828/au0828-input.c_pt.bc'
source_filename = "../drivers/media/usb/au0828/au0828-input.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.au0828_dev = type { %struct.mutex, ptr, i32, %struct.au0828_board, [64 x i8], %struct.i2c_adapter, %struct.i2c_algorithm, %struct.i2c_client, i32, %struct.au0828_dvb, %struct.work_struct, %struct.timer_list, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.video_device, %struct.video_device, %struct.vb2_queue, %struct.vb2_queue, %struct.mutex, %struct.mutex, i32, i32, %struct.timer_list, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.mutex, %struct.au0828_dmaqueue, %struct.au0828_dmaqueue, %struct.au0828_usb_isoc_ctl, %struct.spinlock, i32, i32, i32, ptr, [12 x ptr], [12 x ptr], i8, i8, [16 x ptr], [16 x ptr], ptr, %struct.media_pad, %struct.media_pad, ptr, [4 x %struct.media_entity], [4 x %struct.media_pad], %struct.media_entity_notify, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.au0828_board = type { ptr, i32, i8, i8, i8, [4 x %struct.au0828_input] }
%struct.au0828_input = type { i32, i32, i32, ptr }
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
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.127 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, i32 }
%struct.media_pipeline = type { i32, %struct.media_graph }
%struct.media_graph = type { [16 x %struct.anon.124], %struct.media_entity_enum, i32 }
%struct.anon.124 = type { ptr, ptr }
%struct.media_entity_enum = type { ptr, i32 }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.au0828_dmaqueue = type { %struct.list_head, i32 }
%struct.au0828_usb_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_entity_notify = type { %struct.list_head, ptr, ptr }
%struct.au0828_rc = type { ptr, ptr, [32 x i8], [32 x i8], i32, %struct.delayed_work, i16, ptr }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.ir_raw_event = type { %union.anon.149, i8, i8 }
%union.anon.149 = type { i32 }

@__param_str_disable_ir = internal constant [18 x i8] c"au0828.disable_ir\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@disable_ir = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_ir = internal constant %struct.kernel_param { ptr @__param_str_disable_ir, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @disable_ir } }, section "__param", align 4
@__UNIQUE_ID_disable_irtype388 = internal constant [31 x i8] c"au0828.parmtype=disable_ir:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_ir389 = internal constant [55 x i8] c"au0828.parm=disable_ir:disable infrared remote support\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rc-hauppauge\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"au0828 IR (%s)\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"/input0\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"au0828-input\00", [19 x i8] zeroinitializer }, align 32
@au0828_rc_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016au0828: Remote controller %s initialized\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"au0828_rc_register\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/au0828/au0828-input.c\00", [56 x i8] zeroinitializer }, align 32
@au0828_rc_register._entry_ptr = internal global ptr @au0828_rc_register._entry, section ".printk_index", align 4
@au0828_rc_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.6, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016au0828: Stopping RC\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"au0828_rc_suspend\00", [46 x i8] zeroinitializer }, align 32
@au0828_rc_suspend._entry_ptr = internal global ptr @au0828_rc_suspend._entry, section ".printk_index", align 4
@au0828_rc_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016au0828: Restarting RC\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"au0828_rc_resume\00", [47 x i8] zeroinitializer }, align 32
@au0828_rc_resume._entry_ptr = internal global ptr @au0828_rc_resume._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@au0828_rc_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"(work_completion)(&(&ir->work)->work)\00", [58 x i8] zeroinitializer }, align 32
@au0828_rc_start.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&(&ir->work)->timer\00", [44 x i8] zeroinitializer }, align 32
@au0828_rc_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.6, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016au0828: Error while getting RC scancode\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"au0828_rc_work\00", [17 x i8] zeroinitializer }, align 32
@au0828_rc_work._entry_ptr = internal global ptr @au0828_rc_work._entry, section ".printk_index", align 4
@au0828_debug = external dso_local local_unnamed_addr global i32, align 4
@au0828_get_key_au8522._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 146, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017au0828: RC data received: %*ph\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"au0828_get_key_au8522\00", [42 x i8] zeroinitializer }, align 32
@au0828_get_key_au8522._entry_ptr = internal global ptr @au0828_get_key_au8522._entry, section ".printk_index", align 4
@au0828_get_key_au8522._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.6, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017au0828: Storing NEC start %s with duration %d\00", [48 x i8] zeroinitializer }, align 32
@au0828_get_key_au8522._entry_ptr.20 = internal global ptr @au0828_get_key_au8522._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pulse\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"space\00", [26 x i8] zeroinitializer }, align 32
@au0828_get_key_au8522._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.6, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017au0828: Storing RC5 start %s with duration %d\00", [48 x i8] zeroinitializer }, align 32
@au0828_get_key_au8522._entry_ptr.25 = internal global ptr @au0828_get_key_au8522._entry.23, section ".printk_index", align 4
@au0828_get_key_au8522._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.17, ptr @.str.6, i32 192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017au0828: Storing %s with duration %d\00", [58 x i8] zeroinitializer }, align 32
@au0828_get_key_au8522._entry_ptr.28 = internal global ptr @au0828_get_key_au8522._entry.26, section ".printk_index", align 4
@au0828_get_key_au8522._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.17, ptr @.str.6, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017au0828: Storing end %s with duration %d\00", [54 x i8] zeroinitializer }, align 32
@au0828_get_key_au8522._entry_ptr.31 = internal global ptr @au0828_get_key_au8522._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"disable_ir\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 19, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 303, i32 19 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 318, i32 39 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 322, i32 20 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 331, i32 20 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 340, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 373, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 390, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 232, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 223, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 146, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 175, i32 6 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 181, i32 6 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 190, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private constant [43 x i8] c"../drivers/media/usb/au0828/au0828-input.c\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 202, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 912, i32 31 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_disable_ir389, ptr @__UNIQUE_ID_disable_irtype388, ptr @__param_disable_ir, ptr @au0828_get_key_au8522._entry, ptr @au0828_get_key_au8522._entry.18, ptr @au0828_get_key_au8522._entry.23, ptr @au0828_get_key_au8522._entry.26, ptr @au0828_get_key_au8522._entry.29, ptr @au0828_get_key_au8522._entry_ptr, ptr @au0828_get_key_au8522._entry_ptr.20, ptr @au0828_get_key_au8522._entry_ptr.25, ptr @au0828_get_key_au8522._entry_ptr.28, ptr @au0828_get_key_au8522._entry_ptr.31, ptr @au0828_rc_register._entry, ptr @au0828_rc_register._entry_ptr, ptr @au0828_rc_resume._entry, ptr @au0828_rc_resume._entry_ptr, ptr @au0828_rc_suspend._entry, ptr @au0828_rc_suspend._entry_ptr, ptr @au0828_rc_work._entry, ptr @au0828_rc_work._entry_ptr, ptr @disable_ir, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @au0828_rc_start.__key, ptr @.str.11, ptr @au0828_rc_start.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_ir to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_rc_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_rc_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_rc_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_rc_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_rc_start.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_rc_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_get_key_au8522._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_get_key_au8522._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_get_key_au8522._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_get_key_au8522._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_get_key_au8522._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @au0828_rc_register(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %board = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 3
  %has_ir_i2c = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 3, i32 4
  %0 = ptrtoint ptr %has_ir_i2c to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %has_ir_i2c, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @disable_ir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.end4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  %adapter.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 7, i32 3
  %2 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter.i, align 8
  %call.i = tail call i32 @i2c_probe_func_quick_read(ptr noundef %3, i16 noundef zeroext 71) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp3.i = icmp eq i32 %call.i, 1
  %conv = select i1 %cmp3.i, i16 71, i16 -19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 184) #11
  %call6 = tail call ptr @rc_allocate_device(i32 noundef 1) #8
  %tobool7.not = icmp eq ptr %call7.i.i, null
  %tobool9.not = icmp eq ptr %call6, null
  %or.cond = select i1 %tobool7.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.end4.error_crit_edge, label %if.end11

if.end4.error_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end11:                                         ; preds = %if.end4
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call7.i.i, align 8
  %ir13 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 15
  %6 = ptrtoint ptr %ir13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %ir13, align 8
  %rc14 = getelementptr inbounds %struct.au0828_rc, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %rc14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %rc14, align 4
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call6, i32 0, i32 24
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %priv, align 4
  %open = getelementptr inbounds %struct.rc_dev, ptr %call6, i32 0, i32 48
  %9 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @au0828_rc_start, ptr %open, align 8
  %close = getelementptr inbounds %struct.rc_dev, ptr %call6, i32 0, i32 49
  %10 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @au0828_rc_stop, ptr %close, align 4
  %11 = ptrtoint ptr %has_ir_i2c to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load17 = load i8, ptr %has_ir_i2c, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load17)
  %tobool19.not = icmp sgt i8 %bf.load17, -1
  br i1 %tobool19.not, label %if.end11.if.end21_crit_edge, label %if.then20

if.end11.if.end21_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then20:                                        ; preds = %if.end11
  %boardnr = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 2
  %12 = ptrtoint ptr %boardnr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %boardnr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cond = icmp eq i32 %13, 1
  br i1 %cond, label %sw.bb, label %if.then20.error_crit_edge

if.then20.error_crit_edge:                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

sw.bb:                                            ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %map_name = getelementptr inbounds %struct.rc_dev, ptr %call6, i32 0, i32 7
  %14 = ptrtoint ptr %map_name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str, ptr %map_name, align 4
  %get_key_i2c = getelementptr inbounds %struct.au0828_rc, ptr %call7.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %get_key_i2c to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @au0828_get_key_au8522, ptr %get_key_i2c, align 4
  %i2c_dev_addr = getelementptr inbounds %struct.au0828_rc, ptr %call7.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %i2c_dev_addr to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %i2c_dev_addr, align 8
  br label %if.end21

if.end21:                                         ; preds = %sw.bb, %if.end11.if.end21_crit_edge
  %polling = getelementptr inbounds %struct.au0828_rc, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %polling to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 100, ptr %polling, align 8
  %name = getelementptr inbounds %struct.au0828_rc, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %board, align 4
  %call24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 32, ptr noundef nonnull @.str.1, ptr noundef %19)
  %usbdev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 1
  %20 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %usbdev, align 4
  %phys = getelementptr inbounds %struct.au0828_rc, ptr %call7.i.i, i32 0, i32 3
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 12
  %22 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 1
  %call.i97 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.32, ptr noundef %25, ptr noundef %devpath.i) #8
  %call29 = tail call i32 @strlcat(ptr noundef %phys, ptr noundef nonnull @.str.2, i32 noundef 32) #8
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call6, i32 0, i32 3
  %26 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %name, ptr %device_name, align 8
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call6, i32 0, i32 4
  %27 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %phys, ptr %input_phys, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call6, i32 0, i32 5
  %28 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 3, ptr %input_id, align 8
  %version = getelementptr inbounds %struct.rc_dev, ptr %call6, i32 0, i32 5, i32 3
  %29 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %version, align 2
  %30 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usbdev, align 4
  %idVendor = getelementptr inbounds %struct.usb_device, ptr %31, i32 0, i32 16, i32 7
  %32 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %idVendor, align 8
  %34 = tail call i16 @llvm.bswap.i16(i16 %33)
  %vendor = getelementptr inbounds %struct.rc_dev, ptr %call6, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %vendor, align 2
  %36 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usbdev, align 4
  %idProduct = getelementptr inbounds %struct.usb_device, ptr %37, i32 0, i32 16, i32 8
  %38 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %idProduct, align 2
  %40 = tail call i16 @llvm.bswap.i16(i16 %39)
  %product = getelementptr inbounds %struct.rc_dev, ptr %call6, i32 0, i32 5, i32 2
  %41 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %product, align 4
  %42 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %usbdev, align 4
  %dev41 = getelementptr inbounds %struct.usb_device, ptr %43, i32 0, i32 15
  %parent = getelementptr inbounds %struct.device, ptr %call6, i32 0, i32 1
  %44 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dev41, ptr %parent, align 8
  %driver_name = getelementptr inbounds %struct.rc_dev, ptr %call6, i32 0, i32 6
  %45 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.3, ptr %driver_name, align 8
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call6, i32 0, i32 16
  %46 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 3588, ptr %allowed_protocols, align 8
  %call43 = tail call i32 @rc_register_device(ptr noundef nonnull %call6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.end, label %if.end21.error_crit_edge

if.end21.error_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %name) #12
  br label %cleanup

error:                                            ; preds = %if.end21.error_crit_edge, %if.then20.error_crit_edge, %if.end4.error_crit_edge
  %err.0 = phi i32 [ %call43, %if.end21.error_crit_edge ], [ -12, %if.end4.error_crit_edge ], [ -19, %if.then20.error_crit_edge ]
  %ir50 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 15
  %47 = ptrtoint ptr %ir50 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %ir50, align 8
  tail call void @rc_free_device(ptr noundef %call6) #8
  tail call void @kfree(ptr noundef %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au0828_rc_start(ptr nocapture noundef readonly %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %work = getelementptr inbounds %struct.au0828_rc, ptr %1, i32 0, i32 5
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %2 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.au0828_rc, ptr %1, i32 0, i32 5, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.11, ptr noundef nonnull @au0828_rc_start.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry9 = getelementptr inbounds %struct.au0828_rc, ptr %1, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.au0828_rc, ptr %1, i32 0, i32 5, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.au0828_rc, ptr %1, i32 0, i32 5, i32 0, i32 2
  %5 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @au0828_rc_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.au0828_rc, ptr %1, i32 0, i32 5, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.13, ptr noundef nonnull @au0828_rc_start.__key.12) #8
  tail call fastcc void @au8522_rc_andor(ptr noundef %1, i8 noundef zeroext 16)
  %polling = getelementptr inbounds %struct.au0828_rc, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %polling, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %7) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %8 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %8, ptr noundef %work, i32 noundef %call2.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @au0828_rc_stop(ptr nocapture noundef readonly %rc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.rc_dev, ptr %rc, i32 0, i32 24
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %work = getelementptr inbounds %struct.au0828_rc, ptr %1, i32 0, i32 5
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dev_state, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @au8522_rc_andor(ptr noundef %1, i8 noundef zeroext 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au0828_get_key_au8522(ptr nocapture noundef readonly %ir) #0 align 64 {
entry:
  %obuf.i179 = alloca [3 x i8], align 1
  %msg.i180 = alloca [2 x %struct.i2c_msg], align 4
  %obuf.i = alloca [3 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [40 x i8], align 1
  %rawir = alloca %struct.ir_raw_event, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf) #8
  %0 = call ptr @memset(ptr %buf, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rawir) #8
  %1 = ptrtoint ptr %rawir to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %rawir, align 8
  %2 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ir, align 4
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 48
  %4 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %dev_state, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %obuf.i) #8
  %7 = getelementptr inbounds [3 x i8], ptr %obuf.i, i32 0, i32 1
  %8 = getelementptr inbounds [3 x i8], ptr %obuf.i, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !78
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %10 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 255, i32 16)
  %i2c_dev_addr.i = getelementptr inbounds %struct.au0828_rc, ptr %ir, i32 0, i32 6
  %12 = ptrtoint ptr %i2c_dev_addr.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %i2c_dev_addr.i, align 4
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %10, align 4
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %obuf.i, ptr %buf1.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %18 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %13, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %19 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %20 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf, ptr %buf6.i, align 4
  %22 = ptrtoint ptr %obuf.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 64, ptr %obuf.i, align 1
  %23 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -31, ptr %7, align 1
  %adapter.i = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 7, i32 3
  %24 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18.i = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp22.i = icmp eq i32 %call.i, 2
  %cond.i = select i1 %cmp22.i, i32 2, i32 -2147483648
  %retval.0.i = select i1 %cmp18.i, i32 %call.i, i32 %cond.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %obuf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %if.end.if.then3_crit_edge, label %lor.lhs.false

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %buf, align 1
  %28 = and i8 %27, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool2.not = icmp eq i8 %28, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then3_crit_edge, label %if.end5

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  call fastcc void @au8522_rc_andor(ptr noundef %ir, i8 noundef zeroext 16)
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %obuf.i179) #8
  %29 = getelementptr inbounds [3 x i8], ptr %obuf.i179, i32 0, i32 1
  %30 = getelementptr inbounds [3 x i8], ptr %obuf.i179, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i180) #8
  %31 = getelementptr inbounds i8, ptr %msg.i180, i32 4
  %32 = call ptr @memset(ptr %31, i32 255, i32 16)
  %33 = ptrtoint ptr %i2c_dev_addr.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %i2c_dev_addr.i, align 4
  %35 = ptrtoint ptr %msg.i180 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %msg.i180, align 4
  %flags.i182 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i180, i32 0, i32 1
  %36 = ptrtoint ptr %flags.i182 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i182, align 2
  %buf1.i184 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i180, i32 0, i32 3
  %37 = ptrtoint ptr %buf1.i184 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %obuf.i179, ptr %buf1.i184, align 4
  %arrayinit.element.i185 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i180, i32 1
  %38 = ptrtoint ptr %arrayinit.element.i185 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %34, ptr %arrayinit.element.i185, align 4
  %flags4.i186 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i180, i32 1, i32 1
  %39 = ptrtoint ptr %flags4.i186 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 1, ptr %flags4.i186, align 2
  %len5.i187 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i180, i32 1, i32 2
  %40 = ptrtoint ptr %len5.i187 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 40, ptr %len5.i187, align 4
  %buf6.i188 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i180, i32 1, i32 3
  %41 = ptrtoint ptr %buf6.i188 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %buf, ptr %buf6.i188, align 4
  %42 = ptrtoint ptr %obuf.i179 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 64, ptr %obuf.i179, align 1
  %43 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -29, ptr %29, align 1
  %44 = ptrtoint ptr %30 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 17, ptr %30, align 1
  %45 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 3, ptr %31, align 4
  %46 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ir, align 4
  %adapter.i189 = getelementptr inbounds %struct.au0828_dev, ptr %47, i32 0, i32 7, i32 3
  %48 = ptrtoint ptr %adapter.i189 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adapter.i189, align 8
  %call.i190 = call i32 @i2c_transfer(ptr noundef %49, ptr noundef nonnull %msg.i180, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %cmp18.i191 = icmp slt i32 %call.i190, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i190)
  %cmp22.i192 = icmp eq i32 %call.i190, 2
  %cond.i193 = select i1 %cmp22.i192, i32 0, i32 -5
  %retval.0.i194 = select i1 %cmp18.i191, i32 %call.i190, i32 %cond.i193
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i180) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %obuf.i179) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i194)
  %cmp8 = icmp slt i32 %retval.0.i194, 0
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call fastcc void @au8522_rc_andor(ptr noundef %ir, i8 noundef zeroext 0)
  call fastcc void @au8522_rc_andor(ptr noundef %ir, i8 noundef zeroext 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %50 = load i32, ptr @au0828_debug, align 4
  %and14 = and i32 %50, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end11.do.end22_crit_edge, label %do.end

if.end11.do.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef 40, ptr noundef nonnull %buf) #12
  br label %do.end22

do.end22:                                         ; preds = %do.end, %if.end11.do.end22_crit_edge
  %51 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %buf, align 1
  %53 = lshr i8 %52, 7
  %54 = zext i8 %53 to i32
  %pulse = getelementptr inbounds %struct.ir_raw_event, ptr %rawir, i32 0, i32 2
  %rc81 = getelementptr inbounds %struct.au0828_rc, ptr %ir, i32 0, i32 1
  br label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %for.inc110.for.cond28.preheader_crit_edge, %do.end22
  %i.0203 = phi i32 [ 0, %do.end22 ], [ %inc111, %for.inc110.for.cond28.preheader_crit_edge ]
  %prv_bit.0202 = phi i32 [ %54, %do.end22 ], [ %prv_bit.2, %for.inc110.for.cond28.preheader_crit_edge ]
  %first.0.off0201 = phi i1 [ true, %do.end22 ], [ %first.3.off0, %for.inc110.for.cond28.preheader_crit_edge ]
  %width.0200 = phi i32 [ 0, %do.end22 ], [ %width.2, %for.inc110.for.cond28.preheader_crit_edge ]
  %arrayidx32 = getelementptr [40 x i8], ptr %buf, i32 0, i32 %i.0203
  br label %for.body31

for.body31:                                       ; preds = %for.inc.for.body31_crit_edge, %for.cond28.preheader
  %j.0199 = phi i32 [ 7, %for.cond28.preheader ], [ %dec, %for.inc.for.body31_crit_edge ]
  %prv_bit.1198 = phi i32 [ %prv_bit.0202, %for.cond28.preheader ], [ %prv_bit.2, %for.inc.for.body31_crit_edge ]
  %first.1.off0197 = phi i1 [ %first.0.off0201, %for.cond28.preheader ], [ %first.3.off0, %for.inc.for.body31_crit_edge ]
  %width.1195 = phi i32 [ %width.0200, %for.cond28.preheader ], [ %width.2, %for.inc.for.body31_crit_edge ]
  %55 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %56 to i32
  %shr34 = lshr i32 %conv33, %j.0199
  %and35 = and i32 %shr34, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and35, i32 %prv_bit.1198)
  %cmp36 = icmp eq i32 %and35, %prv_bit.1198
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #10
  %inc = add i32 %width.1195, 1
  br label %for.inc

if.end39:                                         ; preds = %for.body31
  br i1 %first.1.off0197, label %if.then41, label %if.end39.if.end83_crit_edge

if.end39.if.end83_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then41:                                        ; preds = %if.end39
  %57 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %57)
  %bf.load = load i8, ptr %pulse, align 1
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %pulse, align 1
  %58 = add i32 %width.1195, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %58)
  %59 = icmp ult i32 %58, 3
  br i1 %59, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.then41
  %60 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 9008, ptr %rawir, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %61 = load i32, ptr @au0828_debug, align 4
  %and48 = and i32 %61, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.then46.if.end80_crit_edge, label %do.end53

if.then46.if.end80_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

do.end53:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #10
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.21, i32 noundef 9008) #12
  br label %if.end80

if.else:                                          ; preds = %if.then41
  %62 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 889, ptr %rawir, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %63 = load i32, ptr @au0828_debug, align 4
  %and63 = and i32 %63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.else.if.end80_crit_edge, label %do.end68

if.else.if.end80_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

do.end68:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21, i32 noundef 889) #12
  br label %if.end80

if.end80:                                         ; preds = %do.end68, %if.else.if.end80_crit_edge, %do.end53, %if.then46.if.end80_crit_edge
  %64 = ptrtoint ptr %rc81 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rc81, align 4
  %call82 = call i32 @ir_raw_event_store(ptr noundef %65, ptr noundef nonnull %rawir) #8
  br label %if.end83

if.end83:                                         ; preds = %if.end80, %if.end39.if.end83_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prv_bit.1198)
  %tobool84.not = icmp eq i32 %prv_bit.1198, 0
  %66 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load87 = load i8, ptr %pulse, align 1
  %bf.shl = select i1 %tobool84.not, i8 -128, i8 0
  %bf.clear88 = and i8 %bf.load87, 127
  %bf.set89 = or i8 %bf.clear88, %bf.shl
  store i8 %bf.set89, ptr %pulse, align 1
  %mul = mul i32 %width.1195, 200
  %67 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %mul, ptr %rawir, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %68 = load i32, ptr @au0828_debug, align 4
  %and91 = and i32 %68, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end83.do.end107_crit_edge, label %do.end96

if.end83.do.end107_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end107

do.end96:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.set89)
  %tobool102.not = icmp sgt i8 %bf.set89, -1
  %cond103 = select i1 %tobool102.not, ptr @.str.22, ptr @.str.21
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull %cond103, i32 noundef %mul) #12
  br label %do.end107

do.end107:                                        ; preds = %do.end96, %if.end83.do.end107_crit_edge
  %69 = ptrtoint ptr %rc81 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rc81, align 4
  %call109 = call i32 @ir_raw_event_store(ptr noundef %70, ptr noundef nonnull %rawir) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end107, %if.then38
  %width.2 = phi i32 [ %inc, %if.then38 ], [ 1, %do.end107 ]
  %first.3.off0 = phi i1 [ %first.1.off0197, %if.then38 ], [ false, %do.end107 ]
  %prv_bit.2 = phi i32 [ %prv_bit.1198, %if.then38 ], [ %and35, %do.end107 ]
  %dec = add nsw i32 %j.0199, -1
  %cmp29.not = icmp eq i32 %j.0199, 0
  br i1 %cmp29.not, label %for.inc110, label %for.inc.for.body31_crit_edge

for.inc.for.body31_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body31

for.inc110:                                       ; preds = %for.inc
  %inc111 = add nuw nsw i32 %i.0203, 1
  %exitcond.not = icmp eq i32 %inc111, 40
  br i1 %exitcond.not, label %for.end112, label %for.inc110.for.cond28.preheader_crit_edge

for.inc110.for.cond28.preheader_crit_edge:        ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond28.preheader

for.end112:                                       ; preds = %for.inc110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %prv_bit.2)
  %tobool113.not = icmp eq i32 %prv_bit.2, 0
  %71 = ptrtoint ptr %pulse to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load116 = load i8, ptr %pulse, align 1
  %bf.shl118 = select i1 %tobool113.not, i8 -128, i8 0
  %bf.clear119 = and i8 %bf.load116, 127
  %bf.set120 = or i8 %bf.clear119, %bf.shl118
  store i8 %bf.set120, ptr %pulse, align 1
  %mul122 = mul i32 %width.2, 200
  %72 = ptrtoint ptr %rawir to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %mul122, ptr %rawir, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %73 = load i32, ptr @au0828_debug, align 4
  %and124 = and i32 %73, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %for.end112.do.end140_crit_edge, label %do.end129

for.end112.do.end140_crit_edge:                   ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end140

do.end129:                                        ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.set120)
  %tobool135.not = icmp sgt i8 %bf.set120, -1
  %cond136 = select i1 %tobool135.not, ptr @.str.22, ptr @.str.21
  %call137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull %cond136, i32 noundef %mul122) #12
  br label %do.end140

do.end140:                                        ; preds = %do.end129, %for.end112.do.end140_crit_edge
  %74 = ptrtoint ptr %rc81 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rc81, align 4
  %call142 = call i32 @ir_raw_event_store(ptr noundef %75, ptr noundef nonnull %rawir) #8
  %76 = ptrtoint ptr %rc81 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rc81, align 4
  call void @ir_raw_event_handle(ptr noundef %77) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end140, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then3 ], [ 1, %do.end140 ], [ 0, %entry.cleanup_crit_edge ], [ %retval.0.i194, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rawir) #8
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @au0828_rc_unregister(ptr nocapture noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ir1 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %ir1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rc = getelementptr inbounds %struct.au0828_rc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rc, align 4
  tail call void @rc_unregister_device(ptr noundef %3) #8
  tail call void @kfree(ptr noundef nonnull %1) #8
  %4 = ptrtoint ptr %ir1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %ir1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @au0828_rc_suspend(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ir1 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %ir1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  %work = getelementptr inbounds %struct.au0828_rc, ptr %1, i32 0, i32 5
  %call2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #8
  tail call fastcc void @au8522_rc_andor(ptr noundef nonnull %1, i8 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @au8522_rc_andor(ptr nocapture noundef readonly %ir, i8 noundef zeroext %value) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [3 x i8], align 1
  %msg.i1 = alloca %struct.i2c_msg, align 4
  %obuf.i = alloca [3 x i8], align 1
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #8
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !78
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %obuf.i) #8
  %1 = getelementptr inbounds [3 x i8], ptr %obuf.i, i32 0, i32 1
  %2 = getelementptr inbounds [3 x i8], ptr %obuf.i, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !78
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #8
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %i2c_dev_addr.i = getelementptr inbounds %struct.au0828_rc, ptr %ir, i32 0, i32 6
  %6 = ptrtoint ptr %i2c_dev_addr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %i2c_dev_addr.i, align 4
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %4, align 4
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %obuf.i, ptr %buf1.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %7, ptr %arrayinit.element.i, align 4
  %flags4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags4.i, align 2
  %len5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %14 = ptrtoint ptr %len5.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %len5.i, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf, ptr %buf6.i, align 4
  %16 = ptrtoint ptr %obuf.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 64, ptr %obuf.i, align 1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -32, ptr %1, align 1
  %18 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ir, align 4
  %adapter.i = getelementptr inbounds %struct.au0828_dev, ptr %19, i32 0, i32 7, i32 3
  %20 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18.i = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp22.i = icmp eq i32 %call.i, 2
  %cond.i = select i1 %cmp22.i, i32 2, i32 -2147483648
  %retval.0.i = select i1 %cmp18.i, i32 %call.i, i32 %cond.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %obuf.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf, align 1
  %and = and i8 %23, -17
  %24 = and i8 %value, 16
  %or = or i8 %and, %24
  store i8 %or, ptr %buf, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %or, i8 %23)
  %cmp8 = icmp eq i8 %or, %23
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #8
  %25 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %26 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 -128, ptr %buf.i, align 1
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 -32, ptr %25, align 1
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %or, ptr %26, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i1) #8
  %30 = getelementptr inbounds i8, ptr %msg.i1, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 262143, ptr %30, align 4
  %32 = ptrtoint ptr %i2c_dev_addr.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %i2c_dev_addr.i, align 4
  %34 = ptrtoint ptr %msg.i1 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %msg.i1, align 4
  %flags.i3 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i3 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i3, align 2
  %buf5.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i1, i32 0, i32 3
  %36 = ptrtoint ptr %buf5.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i, ptr %buf5.i, align 4
  %37 = ptrtoint ptr %ir to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ir, align 4
  %adapter.i5 = getelementptr inbounds %struct.au0828_dev, ptr %38, i32 0, i32 7, i32 3
  %39 = ptrtoint ptr %adapter.i5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i5, align 8
  %call.i6 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i1, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i1) #8
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @au0828_rc_resume(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ir1 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 15
  %0 = ptrtoint ptr %ir1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ir1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  tail call fastcc void @au8522_rc_andor(ptr noundef nonnull %1, i8 noundef zeroext 16)
  %work = getelementptr inbounds %struct.au0828_rc, ptr %1, i32 0, i32 5
  %polling = getelementptr inbounds %struct.au0828_rc, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %polling, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef %call2.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_probe_func_quick_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @au0828_rc_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -76
  %get_key_i2c = getelementptr i8, ptr %work, i32 104
  %0 = ptrtoint ptr %get_key_i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_key_i2c, align 4
  %call = tail call i32 %1(ptr noundef %add.ptr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.else.i_crit_edge

entry.if.else.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %if.else.i

if.else.i:                                        ; preds = %do.end, %entry.if.else.i_crit_edge
  %polling = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %polling to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %polling, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %3) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef %call2.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ir_raw_event_store(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ir_raw_event_handle(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__param_disable_ir, !1, !"__param_disable_ir", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_disable_irtype388, !1, !"__UNIQUE_ID_disable_irtype388", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_disable_ir389, !4, !"__UNIQUE_ID_disable_ir389", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 21, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 303, i32 19}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 318, i32 39}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 322, i32 20}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 331, i32 20}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 340, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @au0828_rc_register._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @au0828_rc_register._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 373, i32 2}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @au0828_rc_suspend._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @au0828_rc_suspend._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 390, i32 2}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @au0828_rc_resume._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @au0828_rc_resume._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @disable_ir, !30, !"disable_ir", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 19, i32 12}
!31 = !{ptr @__param_str_disable_ir, !1, !"__param_str_disable_ir", i1 false, i1 false}
!32 = distinct !{null, !33, !"addr_list", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 258, i32 30}
!34 = !{ptr @au0828_rc_start.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 232, i32 2}
!36 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @au0828_rc_start.__key.12, !35, !"__key", i1 false, i1 false}
!38 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 223, i32 3}
!41 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @au0828_rc_work._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @au0828_rc_work._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 146, i32 2}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @au0828_get_key_au8522._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @au0828_get_key_au8522._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 175, i32 6}
!51 = !{ptr @au0828_get_key_au8522._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @au0828_get_key_au8522._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 181, i32 6}
!57 = !{ptr @au0828_get_key_au8522._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @au0828_get_key_au8522._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 190, i32 4}
!61 = !{ptr @au0828_get_key_au8522._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @au0828_get_key_au8522._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/au0828/au0828-input.c", i32 202, i32 2}
!65 = !{ptr @au0828_get_key_au8522._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @au0828_get_key_au8522._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/usb.h", i32 912, i32 31}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"auto-init"}
