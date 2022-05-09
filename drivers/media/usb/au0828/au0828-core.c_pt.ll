; ModuleID = '/llk/IR_all_yes/drivers/media/usb/au0828/au0828-core.c_pt.bc'
source_filename = "../drivers/media/usb/au0828/au0828-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.au0828_board = type { ptr, i32, i8, i8, i8, [4 x %struct.au0828_input] }
%struct.au0828_input = type { i32, i32, i32, ptr }
%struct.atomic_t = type { i32 }
%struct.au0828_dev = type { %struct.mutex, ptr, i32, %struct.au0828_board, [64 x i8], %struct.i2c_adapter, %struct.i2c_algorithm, %struct.i2c_client, i32, %struct.au0828_dvb, %struct.work_struct, %struct.timer_list, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.video_device, %struct.video_device, %struct.vb2_queue, %struct.vb2_queue, %struct.mutex, %struct.mutex, i32, i32, %struct.timer_list, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.mutex, %struct.au0828_dmaqueue, %struct.au0828_dmaqueue, %struct.au0828_usb_isoc_ctl, %struct.spinlock, i32, i32, i32, ptr, [12 x ptr], [12 x ptr], i8, i8, [16 x ptr], [16 x ptr], ptr, %struct.media_pad, %struct.media_pad, ptr, [4 x %struct.media_entity], [4 x %struct.media_pad], %struct.media_entity_notify, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_entity_notify = type { %struct.list_head, ptr, ptr }
%struct.media_device = type { ptr, ptr, [32 x i8], [32 x i8], [40 x i8], [32 x i8], i32, i64, i32, %struct.ida, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.media_graph, ptr, ptr, ptr, ptr, %struct.mutex, %struct.atomic_t }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.media_devnode = type { ptr, ptr, %struct.device, %struct.cdev, ptr, i32, i32, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.media_link = type { %struct.media_gobj, %struct.list_head, %union.anon.125, %union.anon.126, ptr, i32, i8 }
%union.anon.125 = type { ptr }
%union.anon.126 = type { ptr }

@__param_str_debug = internal constant [13 x i8] c"au0828.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@au0828_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @au0828_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype388 = internal constant [26 x i8] c"au0828.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug389 = internal constant [78 x i8] c"au0828.parm=debug:set debug bitmask: 1=general, 2=USB, 4=I2C, 8=bridge, 16=IR\00", section ".modinfo", align 1
@__param_str_disable_usb_speed_check = internal constant [31 x i8] c"au0828.disable_usb_speed_check\00", align 1
@disable_usb_speed_check = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_usb_speed_check = internal constant %struct.kernel_param { ptr @__param_str_disable_usb_speed_check, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @disable_usb_speed_check } }, section "__param", align 4
@__UNIQUE_ID_disable_usb_speed_checktype390 = internal constant [44 x i8] c"au0828.parmtype=disable_usb_speed_check:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_usb_speed_check391 = internal constant [83 x i8] c"au0828.parm=disable_usb_speed_check:override min bandwidth requirement of 480M bps\00", section ".modinfo", align 1
@au0828_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 54, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017au0828: %s(0x%04x) = 0x%02x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"au0828_readreg\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/usb/au0828/au0828-core.c\00", [57 x i8] zeroinitializer }, align 32
@au0828_readreg._entry_ptr = internal global ptr @au0828_readreg._entry, section ".printk_index", align 4
@au0828_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017au0828: %s(0x%04x, 0x%02x)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"au0828_writereg\00", [16 x i8] zeroinitializer }, align 32
@au0828_writereg._entry_ptr = internal global ptr @au0828_writereg._entry, section ".printk_index", align 4
@au0828_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.6, ptr @au0828_usb_probe, ptr @au0828_usb_disconnect, ptr null, ptr @au0828_suspend, ptr @au0828_resume, ptr @au0828_resume, ptr null, ptr null, ptr @au0828_usb_id_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_au0828__403_847_au0828_init6 = internal global ptr @au0828_init, section ".initcall6.init", align 4
@__exitcall_au0828_exit = internal global ptr @au0828_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description404 = internal constant [60 x i8] c"au0828.description=Driver for Auvitek AU0828 based products\00", section ".modinfo", align 1
@__UNIQUE_ID_author405 = internal constant [46 x i8] c"au0828.author=Steven Toth <stoth@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file406 = internal constant [44 x i8] c"au0828.file=drivers/media/usb/au0828/au0828\00", section ".modinfo", align 1
@__UNIQUE_ID_license407 = internal constant [19 x i8] c"au0828.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version408 = internal constant [21 x i8] c"au0828.version=0.0.3\00", section ".modinfo", align 1
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"au0828\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.3\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.6, ptr @.str.7 }, section "__modver", align 4
@send_control_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 84, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013au0828: %s() Failed sending control message, error %d.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"send_control_msg\00", [47 x i8] zeroinitializer }, align 32
@send_control_msg._entry_ptr = internal global ptr @send_control_msg._entry, section ".printk_index", align 4
@recv_control_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013au0828: %s() Failed receiving control message, error %d.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"recv_control_msg\00", [47 x i8] zeroinitializer }, align 32
@recv_control_msg._entry_ptr = internal global ptr @recv_control_msg._entry, section ".printk_index", align 4
@au0828_media_graph_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 261, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Mixer Pad Link Create Error: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"au0828_media_graph_notify\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@au0828_media_graph_notify._entry_ptr = internal global ptr @au0828_media_graph_notify._entry, section ".printk_index", align 4
@au0828_usb_id_table = external dso_local global [0 x %struct.usb_device_id], align 4
@au0828_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017au0828: %s() vendor id 0x%x device id 0x%x ifnum:%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"au0828_usb_probe\00", [47 x i8] zeroinitializer }, align 32
@au0828_usb_probe._entry_ptr = internal global ptr @au0828_usb_probe._entry, section ".printk_index", align 4
@au0828_usb_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013au0828: au0828: Device initialization failed.\0A\00", [47 x i8] zeroinitializer }, align 32
@au0828_usb_probe._entry_ptr.20 = internal global ptr @au0828_usb_probe._entry.18, section ".printk_index", align 4
@au0828_usb_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013au0828: au0828: Device must be connected to a high-speed USB 2.0 port.\0A\00", [54 x i8] zeroinitializer }, align 32
@au0828_usb_probe._entry_ptr.23 = internal global ptr @au0828_usb_probe._entry.21, section ".printk_index", align 4
@au0828_usb_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.2, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013au0828: %s() Unable to allocate memory\0A\00", [54 x i8] zeroinitializer }, align 32
@au0828_usb_probe._entry_ptr.26 = internal global ptr @au0828_usb_probe._entry.24, section ".printk_index", align 4
@au0828_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@au0828_usb_probe.__key.28 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->mutex\00", [20 x i8] zeroinitializer }, align 32
@au0828_usb_probe.__key.30 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&dev->dvb.lock\00", [17 x i8] zeroinitializer }, align 32
@au0828_boards = external dso_local local_unnamed_addr global [0 x %struct.au0828_board], align 4
@au0828_usb_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.17, ptr @.str.2, i32 696, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013au0828: %s() au0828_media_device_init failed\0A\00", [48 x i8] zeroinitializer }, align 32
@au0828_usb_probe._entry_ptr.34 = internal global ptr @au0828_usb_probe._entry.32, section ".printk_index", align 4
@au0828_usb_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.17, ptr @.str.2, i32 732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013au0828: %s() au0828_analog_register failed to register on V4L2\0A\00", [62 x i8] zeroinitializer }, align 32
@au0828_usb_probe._entry_ptr.37 = internal global ptr @au0828_usb_probe._entry.35, section ".printk_index", align 4
@au0828_usb_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.17, ptr @.str.2, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013au0828: %s() au0828_dvb_register failed\0A\00", [53 x i8] zeroinitializer }, align 32
@au0828_usb_probe._entry_ptr.40 = internal global ptr @au0828_usb_probe._entry.38, section ".printk_index", align 4
@au0828_usb_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.17, ptr @.str.2, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016au0828: Registered device AU0828 [%s]\0A\00", [55 x i8] zeroinitializer }, align 32
@au0828_usb_probe._entry_ptr.43 = internal global ptr @au0828_usb_probe._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Unset\00", [26 x i8] zeroinitializer }, align 32
@au0828_media_device_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 578, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Media Device Register Error: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"au0828_media_device_register\00", [35 x i8] zeroinitializer }, align 32
@au0828_media_device_register._entry_ptr = internal global ptr @au0828_media_device_register._entry, section ".printk_index", align 4
@au0828_media_device_register._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.2, i32 635, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Media Device register entity_notify Error: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@au0828_media_device_register._entry_ptr.49 = internal global ptr @au0828_media_device_register._entry.47, section ".printk_index", align 4
@au0828_enable_source.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 90, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"au0828_enable_source\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s already owns the tuner\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"au0828: %s already owns the tuner\0A\00", [61 x i8] zeroinitializer }, align 32
@au0828_enable_source.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.50, ptr @.str.2, ptr @.str.53, i8 0, i8 95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s owns the tuner %s can share!\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"au0828: %s owns the tuner %s can share!\0A\00", [55 x i8] zeroinitializer }, align 32
@au0828_enable_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013au0828: Activate link from %s->%s. Error %d\0A\00", [49 x i8] zeroinitializer }, align 32
@au0828_enable_source._entry_ptr = internal global ptr @au0828_enable_source._entry, section ".printk_index", align 4
@au0828_enable_source._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.50, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013au0828: Start Pipeline: %s->%s Error %d\0A\00", [53 x i8] zeroinitializer }, align 32
@au0828_enable_source._entry_ptr.58 = internal global ptr @au0828_enable_source._entry.56, section ".printk_index", align 4
@au0828_enable_source._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.50, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013au0828: Deactivate link Error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@au0828_enable_source._entry_ptr.61 = internal global ptr @au0828_enable_source._entry.59, section ".printk_index", align 4
@au0828_enable_source._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.50, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016au0828: Enabled Source: %s->%s->%s Ret %d\0A\00", [51 x i8] zeroinitializer }, align 32
@au0828_enable_source._entry_ptr.64 = internal global ptr @au0828_enable_source._entry.62, section ".printk_index", align 4
@au0828_enable_source.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.50, ptr @.str.2, ptr @.str.65, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s end: ent:%s fnc:%d ret %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"au0828: %s end: ent:%s fnc:%d ret %d\0A\00", [58 x i8] zeroinitializer }, align 32
@au0828_disable_source.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"au0828_disable_source\00", [42 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Shared link owner %s user %s %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"au0828: Shared link owner %s user %s %d\0A\00", [55 x i8] zeroinitializer }, align 32
@au0828_disable_source.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.67, ptr @.str.2, ptr @.str.70, i8 0, i8 126, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Pipeline stop for %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"au0828: Pipeline stop for %s\0A\00", [34 x i8] zeroinitializer }, align 32
@au0828_disable_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013au0828: Start Pipeline: %s->%s %d\0A\00", [59 x i8] zeroinitializer }, align 32
@au0828_disable_source._entry_ptr = internal global ptr @au0828_disable_source._entry, section ".printk_index", align 4
@au0828_disable_source.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.67, ptr @.str.2, ptr @.str.73, i8 0, i8 -125, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Pipeline started for %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"au0828: Pipeline started for %s\0A\00", [63 x i8] zeroinitializer }, align 32
@au0828_disable_source.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.67, ptr @.str.2, ptr @.str.70, i8 0, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@au0828_disable_source._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.67, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@au0828_disable_source._entry_ptr.76 = internal global ptr @au0828_disable_source._entry.75, section ".printk_index", align 4
@au0828_disable_source._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.2, i32 546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016au0828: Disabled Source: %s->%s->%s Ret %d\0A\00", [50 x i8] zeroinitializer }, align 32
@au0828_disable_source._entry_ptr.79 = internal global ptr @au0828_disable_source._entry.77, section ".printk_index", align 4
@au0828_usb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017au0828: %s()\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"au0828_usb_disconnect\00", [42 x i8] zeroinitializer }, align 32
@au0828_usb_disconnect._entry_ptr = internal global ptr @au0828_usb_disconnect._entry, section ".printk_index", align 4
@au0828_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.83, ptr @.str.2, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016au0828: Suspend\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"au0828_suspend\00", [17 x i8] zeroinitializer }, align 32
@au0828_suspend._entry_ptr = internal global ptr @au0828_suspend._entry, section ".printk_index", align 4
@au0828_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016au0828: Resume\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"au0828_resume\00", [18 x i8] zeroinitializer }, align 32
@au0828_resume._entry_ptr = internal global ptr @au0828_resume._entry, section ".printk_index", align 4
@au0828_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016au0828: %s() Debugging is enabled\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"au0828_init\00", [20 x i8] zeroinitializer }, align 32
@au0828_init._entry_ptr = internal global ptr @au0828_init._entry, section ".printk_index", align 4
@au0828_init._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.87, ptr @.str.2, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016au0828: %s() USB Debugging is enabled\0A\00", [55 x i8] zeroinitializer }, align 32
@au0828_init._entry_ptr.90 = internal global ptr @au0828_init._entry.88, section ".printk_index", align 4
@au0828_init._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.87, ptr @.str.2, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016au0828: %s() I2C Debugging is enabled\0A\00", [55 x i8] zeroinitializer }, align 32
@au0828_init._entry_ptr.93 = internal global ptr @au0828_init._entry.91, section ".printk_index", align 4
@au0828_init._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.87, ptr @.str.2, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016au0828: %s() Bridge Debugging is enabled\0A\00", [52 x i8] zeroinitializer }, align 32
@au0828_init._entry_ptr.96 = internal global ptr @au0828_init._entry.94, section ".printk_index", align 4
@au0828_init._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.87, ptr @.str.2, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016au0828: %s() IR Debugging is enabled\0A\00", [56 x i8] zeroinitializer }, align 32
@au0828_init._entry_ptr.99 = internal global ptr @au0828_init._entry.97, section ".printk_index", align 4
@au0828_init._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.87, ptr @.str.2, i32 833, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016au0828: au0828 driver loaded\0A\00", [32 x i8] zeroinitializer }, align 32
@au0828_init._entry_ptr.102 = internal global ptr @au0828_init._entry.100, section ".printk_index", align 4
@au0828_init._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.87, ptr @.str.2, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013au0828: usb_register failed, error = %d\0A\00", [53 x i8] zeroinitializer }, align 32
@au0828_init._entry_ptr.105 = internal global ptr @au0828_init._entry.103, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 12291, i64 131076]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 12291, i64 131076]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 12291, i64 131076]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 131076, i64 131077]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 32, i64 4098, i64 12289, i64 65537]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 32, i64 4098, i64 12289, i64 65537]
@___asan_gen_.112 = private unnamed_addr constant [13 x i8] c"au0828_debug\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 27, i32 5 }
@___asan_gen_.115 = private unnamed_addr constant [24 x i8] c"disable_usb_speed_check\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 32, i32 21 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 54, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 61, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [18 x i8] c"au0828_usb_driver\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 802, i32 26 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 853, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 83, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 108, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 260, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 662, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 673, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 674, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 680, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 684, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 686, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 687, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 695, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 731, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 740, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 746, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 577, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 633, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 362, i32 4 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 379, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 408, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 415, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 419, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 432, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 436, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 476, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 505, i32 4 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 512, i32 5 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 524, i32 4 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 542, i32 4 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 544, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 167, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 768, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 785, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 817, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 820, i32 3 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 823, i32 3 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 826, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 830, i32 3 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 833, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.422 = private constant [42 x i8] c"../drivers/media/usb/au0828/au0828-core.c\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 837, i32 3 }
@llvm.compiler.used = appending global [151 x ptr] [ptr @__UNIQUE_ID_author405, ptr @__UNIQUE_ID_debug389, ptr @__UNIQUE_ID_debugtype388, ptr @__UNIQUE_ID_description404, ptr @__UNIQUE_ID_disable_usb_speed_check391, ptr @__UNIQUE_ID_disable_usb_speed_checktype390, ptr @__UNIQUE_ID_file406, ptr @__UNIQUE_ID_license407, ptr @__UNIQUE_ID_version408, ptr @__exitcall_au0828_exit, ptr @__initcall__kmod_au0828__403_847_au0828_init6, ptr @__modver_attr, ptr @__param_debug, ptr @__param_disable_usb_speed_check, ptr @au0828_disable_source._entry, ptr @au0828_disable_source._entry.75, ptr @au0828_disable_source._entry.77, ptr @au0828_disable_source._entry_ptr, ptr @au0828_disable_source._entry_ptr.76, ptr @au0828_disable_source._entry_ptr.79, ptr @au0828_enable_source._entry, ptr @au0828_enable_source._entry.56, ptr @au0828_enable_source._entry.59, ptr @au0828_enable_source._entry.62, ptr @au0828_enable_source._entry_ptr, ptr @au0828_enable_source._entry_ptr.58, ptr @au0828_enable_source._entry_ptr.61, ptr @au0828_enable_source._entry_ptr.64, ptr @au0828_exit, ptr @au0828_init._entry, ptr @au0828_init._entry.100, ptr @au0828_init._entry.103, ptr @au0828_init._entry.88, ptr @au0828_init._entry.91, ptr @au0828_init._entry.94, ptr @au0828_init._entry.97, ptr @au0828_init._entry_ptr, ptr @au0828_init._entry_ptr.102, ptr @au0828_init._entry_ptr.105, ptr @au0828_init._entry_ptr.90, ptr @au0828_init._entry_ptr.93, ptr @au0828_init._entry_ptr.96, ptr @au0828_init._entry_ptr.99, ptr @au0828_media_device_register._entry, ptr @au0828_media_device_register._entry.47, ptr @au0828_media_device_register._entry_ptr, ptr @au0828_media_device_register._entry_ptr.49, ptr @au0828_media_graph_notify._entry, ptr @au0828_media_graph_notify._entry_ptr, ptr @au0828_readreg._entry, ptr @au0828_readreg._entry_ptr, ptr @au0828_resume._entry, ptr @au0828_resume._entry_ptr, ptr @au0828_suspend._entry, ptr @au0828_suspend._entry_ptr, ptr @au0828_usb_disconnect._entry, ptr @au0828_usb_disconnect._entry_ptr, ptr @au0828_usb_probe._entry, ptr @au0828_usb_probe._entry.18, ptr @au0828_usb_probe._entry.21, ptr @au0828_usb_probe._entry.24, ptr @au0828_usb_probe._entry.32, ptr @au0828_usb_probe._entry.35, ptr @au0828_usb_probe._entry.38, ptr @au0828_usb_probe._entry.41, ptr @au0828_usb_probe._entry_ptr, ptr @au0828_usb_probe._entry_ptr.20, ptr @au0828_usb_probe._entry_ptr.23, ptr @au0828_usb_probe._entry_ptr.26, ptr @au0828_usb_probe._entry_ptr.34, ptr @au0828_usb_probe._entry_ptr.37, ptr @au0828_usb_probe._entry_ptr.40, ptr @au0828_usb_probe._entry_ptr.43, ptr @au0828_writereg._entry, ptr @au0828_writereg._entry_ptr, ptr @recv_control_msg._entry, ptr @recv_control_msg._entry_ptr, ptr @send_control_msg._entry, ptr @send_control_msg._entry_ptr, ptr @au0828_debug, ptr @disable_usb_speed_check, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @au0828_usb_driver, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @au0828_usb_probe.__key, ptr @.str.27, ptr @au0828_usb_probe.__key.28, ptr @.str.29, ptr @au0828_usb_probe.__key.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104], section "llvm.metadata"
@0 = internal global [104 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_usb_speed_check to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_control_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @recv_control_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_media_graph_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_usb_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_usb_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_usb_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_usb_probe.__key.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_usb_probe.__key.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_usb_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_usb_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_usb_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_usb_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_media_device_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_media_device_register._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_enable_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_enable_source._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_enable_source._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_enable_source._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_disable_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_disable_source._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_disable_source._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_usb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_init._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_init._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_init._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_init._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_init._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_init._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @au0828_readreg(ptr noundef %dev, i16 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef %dev, i32 noundef 0) #6
  %usbdev.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %usbdev.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.recv_control_msg.exit_crit_edge, label %if.then.i

entry.recv_control_msg.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %recv_control_msg.exit

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %shl.i.i = shl i32 %3, 8
  %or3.i = or i32 %shl.i.i, -2147483520
  %ctrlmsg.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 4
  %call5.i = tail call i32 @usb_control_msg(ptr noundef nonnull %1, i32 noundef %or3.i, i8 noundef zeroext 0, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext %reg, ptr noundef %ctrlmsg.i, i16 noundef zeroext 1, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %call5.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %4 = ptrtoint ptr %ctrlmsg.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctrlmsg.i, align 8
  %phi.cast = zext i8 %5 to i32
  br label %recv_control_msg.exit

recv_control_msg.exit:                            ; preds = %if.end.i, %entry.recv_control_msg.exit_crit_edge
  %result.0 = phi i32 [ 0, %entry.recv_control_msg.exit_crit_edge ], [ %phi.cast, %if.end.i ]
  tail call void @mutex_unlock(ptr noundef %dev) #6
  %6 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %recv_control_msg.exit.do.end5_crit_edge, label %do.end

recv_control_msg.exit.do.end5_crit_edge:          ; preds = %recv_control_msg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %recv_control_msg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %reg to i32
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %result.0) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %recv_control_msg.exit.do.end5_crit_edge
  ret i32 %result.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @au0828_writereg(ptr nocapture noundef readonly %dev, i16 noundef zeroext %reg, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i16 %reg to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %conv, i32 noundef %val) #9
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %usbdev.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %usbdev.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %do.end2.send_control_msg.exit_crit_edge, label %if.then.i

do.end2.send_control_msg.exit_crit_edge:          ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %send_control_msg.exit

if.then.i:                                        ; preds = %do.end2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 8
  %shl.i.i = shl i32 %4, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %conv3.i = trunc i32 %val to i16
  %call4.i = tail call i32 @usb_control_msg(ptr noundef nonnull %2, i32 noundef %or.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext %conv3.i, i16 noundef zeroext %reg, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.then.i.send_control_msg.exit_crit_edge

if.then.i.send_control_msg.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %send_control_msg.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %call4.i) #9
  br label %send_control_msg.exit

send_control_msg.exit:                            ; preds = %do.end.i, %if.then.i.send_control_msg.exit_crit_edge, %do.end2.send_control_msg.exit_crit_edge
  %status.0.i = phi i32 [ %call4.i, %do.end.i ], [ 0, %if.then.i.send_control_msg.exit_crit_edge ], [ -19, %do.end2.send_control_msg.exit_crit_edge ]
  ret i32 %status.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @au0828_usb_release(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %media_dev.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 66
  %0 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %media_dev.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.au0828_unregister_media_device.exit_crit_edge, label %lor.lhs.false.i

entry.au0828_unregister_media_device.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %au0828_unregister_media_device.exit

lor.lhs.false.i:                                  ; preds = %entry
  %devnode.i = getelementptr inbounds %struct.media_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %devnode.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devnode.i, align 4
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.au0828_unregister_media_device.exit_crit_edge, label %media_devnode_is_registered.exit.i

lor.lhs.false.i.au0828_unregister_media_device.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %au0828_unregister_media_device.exit

media_devnode_is_registered.exit.i:               ; preds = %lor.lhs.false.i
  %flags.i.i = getelementptr inbounds %struct.media_devnode, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool1.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool1.not.i, label %media_devnode_is_registered.exit.i.au0828_unregister_media_device.exit_crit_edge, label %if.end.i

media_devnode_is_registered.exit.i.au0828_unregister_media_device.exit_crit_edge: ; preds = %media_devnode_is_registered.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %au0828_unregister_media_device.exit

if.end.i:                                         ; preds = %media_devnode_is_registered.exit.i
  %entity_notify.i = getelementptr inbounds %struct.media_device, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %entity_notify.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %entity_notify.i, align 4
  %cmp.not43.i = icmp eq ptr %7, %entity_notify.i
  br i1 %cmp.not43.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %notify.044.i = phi ptr [ %nextp.045.i, %for.inc.i.for.body.i_crit_edge ], [ %7, %if.end.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %notify.044.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %nextp.045.i = load ptr, ptr %notify.044.i, align 4
  %notify8.i = getelementptr inbounds %struct.media_entity_notify, ptr %notify.044.i, i32 0, i32 2
  %9 = ptrtoint ptr %notify8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %notify8.i, align 4
  %cmp9.not.i = icmp eq ptr %10, @au0828_media_graph_notify
  br i1 %cmp9.not.i, label %if.end11.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end11.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @media_device_unregister_entity_notify(ptr noundef nonnull %1, ptr noundef %notify.044.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %nextp.045.i, %entity_notify.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %graph_mutex.i = getelementptr inbounds %struct.media_device, ptr %1, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex.i, i32 noundef 0) #6
  %11 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %media_dev.i, align 4
  %source_priv.i = getelementptr inbounds %struct.media_device, ptr %12, i32 0, i32 18
  %13 = ptrtoint ptr %source_priv.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %source_priv.i, align 4
  %14 = load ptr, ptr %media_dev.i, align 4
  %enable_source.i = getelementptr inbounds %struct.media_device, ptr %14, i32 0, i32 19
  %15 = ptrtoint ptr %enable_source.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %enable_source.i, align 8
  %16 = load ptr, ptr %media_dev.i, align 4
  %disable_source.i = getelementptr inbounds %struct.media_device, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %disable_source.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %disable_source.i, align 4
  tail call void @mutex_unlock(ptr noundef %graph_mutex.i) #6
  %18 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %media_dev.i, align 4
  tail call void @media_device_delete(ptr noundef %19, ptr noundef nonnull @.str.6, ptr noundef null) #6
  %20 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %media_dev.i, align 4
  br label %au0828_unregister_media_device.exit

au0828_unregister_media_device.exit:              ; preds = %for.end.i, %media_devnode_is_registered.exit.i.au0828_unregister_media_device.exit_crit_edge, %lor.lhs.false.i.au0828_unregister_media_device.exit_crit_edge, %entry.au0828_unregister_media_device.exit_crit_edge
  %call = tail call i32 @au0828_i2c_unregister(ptr noundef %dev) #6
  tail call void @kfree(ptr noundef %dev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au0828_i2c_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @au0828_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @au0828_usb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @au0828_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.87) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = load i32, ptr @au0828_debug, align 4
  %and1 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %do.end6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.87) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  %2 = load i32, ptr @au0828_debug, align 4
  %and10 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end18_crit_edge, label %do.end15

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.87) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end15, %if.end9.if.end18_crit_edge
  %3 = load i32, ptr @au0828_debug, align 4
  %and19 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end27_crit_edge, label %do.end24

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.87) #9
  br label %if.end27

if.end27:                                         ; preds = %do.end24, %if.end18.if.end27_crit_edge
  %4 = load i32, ptr @au0828_debug, align 4
  %and28 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.do.end39_crit_edge, label %do.end33

if.end27.do.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end39

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.87) #9
  br label %do.end39

do.end39:                                         ; preds = %do.end33, %if.end27.do.end39_crit_edge
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #9
  %call42 = tail call i32 @usb_register_driver(ptr noundef nonnull @au0828_usb_driver, ptr noundef null, ptr noundef nonnull @.str.6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.end39.if.end50_crit_edge, label %do.end47

do.end39.if.end50_crit_edge:                      ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end50

do.end47:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #8
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, i32 noundef %call42) #9
  br label %if.end50

if.end50:                                         ; preds = %do.end47, %do.end39.if.end50_crit_edge
  ret i32 %call42
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @au0828_media_graph_notify(ptr noundef %new, ptr nocapture noundef readonly %notify_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %new, null
  br i1 %tobool.not, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %media_dev = getelementptr inbounds %struct.au0828_dev, ptr %notify_data, i32 0, i32 66
  %0 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %media_dev, align 4
  %entities = getelementptr inbounds %struct.media_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn102 = load ptr, ptr %entities, align 4
  %cmp.not104 = icmp eq ptr %.pn102, %entities
  br i1 %cmp.not104, label %if.then.if.end61_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end61_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then.for.body_crit_edge
  %.pn107 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn102, %if.then.for.body_crit_edge ]
  %mixer.0106 = phi ptr [ %mixer.1, %for.inc.for.body_crit_edge ], [ null, %if.then.for.body_crit_edge ]
  %decoder.0105 = phi ptr [ %decoder.1, %for.inc.for.body_crit_edge ], [ null, %if.then.for.body_crit_edge ]
  %entity.0108 = getelementptr i8, ptr %.pn107, i32 -8
  %function = getelementptr i8, ptr %.pn107, i32 16
  %3 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %function, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %for.inc.fold.split [
    i32 12291, label %for.body.for.inc_crit_edge
    i32 131076, label %if.then7
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc.fold.split:                               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %for.inc.fold.split, %if.then7, %for.body.for.inc_crit_edge
  %decoder.1 = phi ptr [ %entity.0108, %if.then7 ], [ %decoder.0105, %for.body.for.inc_crit_edge ], [ %decoder.0105, %for.inc.fold.split ]
  %mixer.1 = phi ptr [ %mixer.0106, %if.then7 ], [ %entity.0108, %for.body.for.inc_crit_edge ], [ %mixer.0106, %for.inc.fold.split ]
  %6 = ptrtoint ptr %.pn107 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn107, align 4
  %cmp.not = icmp eq ptr %.pn, %entities
  br i1 %cmp.not, label %for.inc.create_link_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.create_link_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_link

if.end15:                                         ; preds = %entry
  %function16 = getelementptr inbounds %struct.media_entity, ptr %new, i32 0, i32 3
  %7 = ptrtoint ptr %function16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %function16, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %8, label %if.end15.if.end61_crit_edge [
    i32 12291, label %sw.bb
    i32 131076, label %sw.bb22
  ]

if.end15.if.end61_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %decoder17 = getelementptr inbounds %struct.au0828_dev, ptr %notify_data, i32 0, i32 69
  %10 = ptrtoint ptr %decoder17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %decoder17, align 8
  br label %create_link

sw.bb22:                                          ; preds = %if.end15
  %media_dev24 = getelementptr inbounds %struct.au0828_dev, ptr %notify_data, i32 0, i32 66
  %12 = ptrtoint ptr %media_dev24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %media_dev24, align 4
  %entities25 = getelementptr inbounds %struct.media_device, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %entities25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn8798 = load ptr, ptr %entities25, align 4
  %cmp34.not99 = icmp eq ptr %.pn8798, %entities25
  br i1 %cmp34.not99, label %sw.bb22.if.end61_crit_edge, label %sw.bb22.for.body36_crit_edge

sw.bb22.for.body36_crit_edge:                     ; preds = %sw.bb22
  br label %for.body36

sw.bb22.if.end61_crit_edge:                       ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %sw.bb22.for.body36_crit_edge
  %.pn87101 = phi ptr [ %.pn87, %for.body36.for.body36_crit_edge ], [ %.pn8798, %sw.bb22.for.body36_crit_edge ]
  %mixer.2100 = phi ptr [ %spec.select88, %for.body36.for.body36_crit_edge ], [ null, %sw.bb22.for.body36_crit_edge ]
  %entity.1 = getelementptr i8, ptr %.pn87101, i32 -8
  %function37 = getelementptr i8, ptr %.pn87101, i32 16
  %15 = ptrtoint ptr %function37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %function37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12291, i32 %16)
  %cmp38 = icmp eq i32 %16, 12291
  %spec.select88 = select i1 %cmp38, ptr %entity.1, ptr %mixer.2100
  %17 = ptrtoint ptr %.pn87101 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn87 = load ptr, ptr %.pn87101, align 4
  %cmp34.not = icmp eq ptr %.pn87, %entities25
  br i1 %cmp34.not, label %for.body36.create_link_crit_edge, label %for.body36.for.body36_crit_edge

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body36

for.body36.create_link_crit_edge:                 ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %create_link

create_link:                                      ; preds = %for.body36.create_link_crit_edge, %sw.bb, %for.inc.create_link_crit_edge
  %decoder.2 = phi ptr [ %11, %sw.bb ], [ %decoder.1, %for.inc.create_link_crit_edge ], [ %new, %for.body36.create_link_crit_edge ]
  %mixer.4 = phi ptr [ %new, %sw.bb ], [ %mixer.1, %for.inc.create_link_crit_edge ], [ %spec.select88, %for.body36.create_link_crit_edge ]
  %tobool49.not = icmp eq ptr %decoder.2, null
  %tobool50.not = icmp eq ptr %mixer.4, null
  %or.cond = select i1 %tobool49.not, i1 true, i1 %tobool50.not
  br i1 %or.cond, label %create_link.if.end61_crit_edge, label %if.then51

create_link.if.end61_crit_edge:                   ; preds = %create_link
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then51:                                        ; preds = %create_link
  %call = tail call i32 @media_get_pad_index(ptr noundef nonnull %decoder.2, i1 noundef zeroext false, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp52 = icmp sgt i32 %call, -1
  br i1 %cmp52, label %if.end55, label %if.then51.do.end_crit_edge

if.then51.do.end_crit_edge:                       ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end55:                                         ; preds = %if.then51
  %conv = trunc i32 %call to i16
  %call54 = tail call i32 @media_create_pad_link(ptr noundef nonnull %decoder.2, i16 noundef zeroext %conv, ptr noundef nonnull %mixer.4, i16 noundef zeroext 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp56 = icmp slt i32 %call54, 0
  br i1 %cmp56, label %if.end55.do.end_crit_edge, label %if.end55.if.end61_crit_edge

if.end55.if.end61_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.end55.do.end_crit_edge:                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end55.do.end_crit_edge, %if.then51.do.end_crit_edge
  %ret.096 = phi i32 [ %call54, %if.end55.do.end_crit_edge ], [ %call, %if.then51.do.end_crit_edge ]
  %usbdev = getelementptr inbounds %struct.au0828_dev, ptr %notify_data, i32 0, i32 1
  %18 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %usbdev, align 4
  %dev59 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59, ptr noundef nonnull @.str.12, i32 noundef %ret.096) #9
  br label %if.end61

if.end61:                                         ; preds = %do.end, %if.end55.if.end61_crit_edge, %create_link.if.end61_crit_edge, %sw.bb22.if.end61_crit_edge, %if.end15.if.end61_crit_edge, %if.then.if.end61_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister_entity_notify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_delete(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_get_pad_index(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_create_pad_link(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au0828_usb_probe(ptr noundef %interface, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %2 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %interface, align 8
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bInterfaceNumber, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not = icmp eq i8 %5, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  %6 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end11_crit_edge, label %do.end

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %idVendor = getelementptr i8, ptr %1, i32 936
  %7 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %idVendor, align 8
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv5 = zext i16 %9 to i32
  %idProduct = getelementptr i8, ptr %1, i32 938
  %10 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %idProduct, align 2
  %12 = tail call i16 @llvm.bswap.i16(i16 %11)
  %conv7 = zext i16 %12 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %conv5, i32 noundef %conv7, i32 noundef 0) #9
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  %speed = getelementptr i8, ptr %1, i32 -100
  %13 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp12.not = icmp eq i32 %14, 3
  br i1 %cmp12.not, label %do.end11.if.end27_crit_edge, label %land.lhs.true

do.end11.if.end27_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

land.lhs.true:                                    ; preds = %do.end11
  %15 = load i32, ptr @disable_usb_speed_check, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp14 = icmp eq i32 %15, 0
  br i1 %cmp14, label %do.end19, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.end19:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #9
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end27:                                         ; preds = %land.lhs.true.if.end27_crit_edge, %do.end11.if.end27_crit_edge
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 10432, i32 noundef 3520, i32 noundef 2) #10
  %cmp29 = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp29, label %do.end34, label %do.body38

do.end34:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.17) #9
  br label %cleanup

do.body38:                                        ; preds = %if.end27
  %lock = getelementptr inbounds %struct.au0828_dev, ptr %call1.i.i.i, i32 0, i32 51
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @au0828_usb_probe.__key) #6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  tail call void @__mutex_init(ptr noundef nonnull %call1.i.i.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @au0828_usb_probe.__key.28) #6
  %dvb = getelementptr inbounds %struct.au0828_dev, ptr %call1.i.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %dvb, ptr noundef nonnull @.str.31, ptr noundef nonnull @au0828_usb_probe.__key.30) #6
  %usbdev49 = getelementptr inbounds %struct.au0828_dev, ptr %call1.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %usbdev49 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr.i, ptr %usbdev49, align 4
  %driver_info = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %17 = ptrtoint ptr %driver_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %driver_info, align 4
  %boardnr = getelementptr inbounds %struct.au0828_dev, ptr %call1.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %boardnr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %boardnr, align 32
  %board = getelementptr inbounds %struct.au0828_dev, ptr %call1.i.i.i, i32 0, i32 3
  %arrayidx = getelementptr [0 x %struct.au0828_board], ptr @au0828_boards, i32 0, i32 %18
  %20 = call ptr @memcpy(ptr %board, ptr %arrayidx, i32 76)
  %call.i = tail call ptr @media_device_usb_allocate(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.6, ptr noundef null) #6
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end56, label %au0828_media_device_init.exit.thread

au0828_media_device_init.exit.thread:             ; preds = %do.body38
  %media_dev.i = getelementptr inbounds %struct.au0828_dev, ptr %call1.i.i.i, i32 0, i32 66
  %21 = ptrtoint ptr %media_dev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %media_dev.i, align 4
  %call61 = tail call i32 @au0828_v4l2_device_register(ptr noundef %interface, ptr noundef nonnull %call1.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end65, label %if.then63

do.end56:                                         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call.i to i32
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.17) #9
  tail call void @mutex_unlock(ptr noundef %lock) #6
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #6
  br label %cleanup

if.then63:                                        ; preds = %au0828_media_device_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @au0828_usb_v4l2_media_release(ptr noundef nonnull %call1.i.i.i) #6
  tail call void @mutex_unlock(ptr noundef %lock) #6
  tail call void @kfree(ptr noundef nonnull %call1.i.i.i) #6
  br label %cleanup

if.end65:                                         ; preds = %au0828_media_device_init.exit.thread
  %call66 = tail call i32 @au0828_writereg(ptr noundef nonnull %call1.i.i.i, i16 noundef zeroext 1536, i32 noundef 16)
  tail call void @au0828_gpio_setup(ptr noundef nonnull %call1.i.i.i) #6
  %call67 = tail call i32 @au0828_i2c_register(ptr noundef nonnull %call1.i.i.i) #6
  tail call void @au0828_card_setup(ptr noundef nonnull %call1.i.i.i) #6
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call1.i.i.i, ptr %driver_data.i.i, align 4
  %call68 = tail call i32 @au0828_analog_register(ptr noundef nonnull %call1.i.i.i, ptr noundef %interface) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end77, label %do.end73

do.end73:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.17) #9
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %done

if.end77:                                         ; preds = %if.end65
  %call78 = tail call i32 @au0828_dvb_register(ptr noundef nonnull %call1.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end77.if.end86_crit_edge, label %do.end83

if.end77.if.end86_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

do.end83:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.17) #9
  br label %if.end86

if.end86:                                         ; preds = %do.end83, %if.end77.if.end86_crit_edge
  %call87 = tail call i32 @au0828_rc_register(ptr noundef nonnull %call1.i.i.i) #6
  %24 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %board, align 4
  %cmp93 = icmp eq ptr %25, null
  %spec.select = select i1 %cmp93, ptr @.str.44, ptr %25
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull %spec.select) #9
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %call99 = tail call fastcc i32 @au0828_media_device_register(ptr noundef nonnull %call1.i.i.i, ptr noundef %add.ptr.i)
  br label %done

done:                                             ; preds = %if.end86, %do.end73
  %retval1.0 = phi i32 [ %call68, %do.end73 ], [ %call99, %if.end86 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %cmp100 = icmp slt i32 %retval1.0, 0
  br i1 %cmp100, label %if.then102, label %done.cleanup_crit_edge

done.cleanup_crit_edge:                           ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then102:                                       ; preds = %done
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @au0828_usb_disconnect(ptr noundef %interface)
  br label %cleanup

cleanup:                                          ; preds = %if.then102, %done.cleanup_crit_edge, %if.then63, %do.end56, %do.end34, %do.end19, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end19 ], [ -12, %do.end34 ], [ %22, %do.end56 ], [ %call61, %if.then63 ], [ -19, %entry.cleanup_crit_edge ], [ %retval1.0, %if.then102 ], [ %retval1.0, %done.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @au0828_usb_disconnect(ptr nocapture noundef %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %dev_state = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 48
  tail call void @_set_bit(i32 noundef 1, ptr noundef %dev_state) #6
  tail call void @au0828_rc_unregister(ptr noundef %1) #6
  tail call void @au0828_dvb_unregister(ptr noundef %1) #6
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #6
  %usbdev = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %usbdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %usbdev, align 4
  tail call void @mutex_unlock(ptr noundef %1) #6
  %call6 = tail call i32 @au0828_analog_unregister(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @au0828_usb_release(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end4.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au0828_suspend(ptr nocapture noundef readonly %interface, [1 x i32] %message.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82) #9
  %call2 = tail call i32 @au0828_rc_suspend(ptr noundef nonnull %1) #6
  tail call void @au0828_v4l2_suspend(ptr noundef nonnull %1) #6
  tail call void @au0828_dvb_suspend(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au0828_resume(ptr nocapture noundef readonly %interface) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84) #9
  %2 = load i32, ptr @au0828_debug, align 4
  %and.i = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.do.end2.i_crit_edge, label %do.end.i

do.end.do.end2.i_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end2.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef 1536, i32 noundef 16) #9
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %do.end.do.end2.i_crit_edge
  %usbdev.i.i = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %usbdev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usbdev.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %do.end2.i.au0828_writereg.exit_crit_edge, label %if.then.i.i

do.end2.i.au0828_writereg.exit_crit_edge:         ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %au0828_writereg.exit

if.then.i.i:                                      ; preds = %do.end2.i
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i.i = shl i32 %6, 8
  %or.i.i = or i32 %shl.i.i.i, -2147483648
  %call4.i.i = tail call i32 @usb_control_msg(ptr noundef nonnull %4, i32 noundef %or.i.i, i8 noundef zeroext 1, i8 noundef zeroext 64, i16 noundef zeroext 16, i16 noundef zeroext 1536, ptr noundef null, i16 noundef zeroext 0, i32 noundef 1000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.au0828_writereg.exit_crit_edge

if.then.i.i.au0828_writereg.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %au0828_writereg.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call10.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %call4.i.i) #9
  br label %au0828_writereg.exit

au0828_writereg.exit:                             ; preds = %do.end.i.i, %if.then.i.i.au0828_writereg.exit_crit_edge, %do.end2.i.au0828_writereg.exit_crit_edge
  tail call void @au0828_gpio_setup(ptr noundef nonnull %1) #6
  %call3 = tail call i32 @au0828_rc_resume(ptr noundef nonnull %1) #6
  tail call void @au0828_v4l2_resume(ptr noundef nonnull %1) #6
  tail call void @au0828_dvb_resume(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %au0828_writereg.exit, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au0828_v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @au0828_usb_v4l2_media_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @au0828_gpio_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au0828_i2c_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @au0828_card_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au0828_analog_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au0828_dvb_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au0828_rc_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @au0828_media_device_register(ptr noundef %dev, ptr noundef %udev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %media_dev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 66
  %0 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %media_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %devnode = getelementptr inbounds %struct.media_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %devnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devnode, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.if.then3_crit_edge, label %media_devnode_is_registered.exit

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

media_devnode_is_registered.exit:                 ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.media_devnode, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not, label %media_devnode_is_registered.exit.if.then3_crit_edge, label %if.else

media_devnode_is_registered.exit.if.then3_crit_edge: ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then3

if.then3:                                         ; preds = %media_devnode_is_registered.exit.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %call5 = tail call i32 @__media_device_register(ptr noundef nonnull %1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then3.if.end12_crit_edge, label %if.then7

if.then3.if.end12_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then7:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %media_dev, align 4
  tail call void @media_device_delete(ptr noundef %7, ptr noundef nonnull @.str.6, ptr noundef null) #6
  %8 = ptrtoint ptr %media_dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %media_dev, align 4
  %dev10 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.45, i32 noundef %call5) #9
  br label %cleanup

if.else:                                          ; preds = %media_devnode_is_registered.exit
  %entities.i = getelementptr inbounds %struct.media_device, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %entities.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn102.i = load ptr, ptr %entities.i, align 4
  %cmp.not104.i = icmp eq ptr %.pn102.i, %entities.i
  br i1 %cmp.not104.i, label %if.else.if.end12_crit_edge, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %.pn107.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn102.i, %if.else.for.body.i_crit_edge ]
  %mixer.0106.i = phi ptr [ %mixer.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.else.for.body.i_crit_edge ]
  %decoder.0105.i = phi ptr [ %decoder.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %if.else.for.body.i_crit_edge ]
  %entity.0108.i = getelementptr i8, ptr %.pn107.i, i32 -8
  %function.i = getelementptr i8, ptr %.pn107.i, i32 16
  %10 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %function.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %11, label %for.inc.fold.split.i [
    i32 12291, label %for.body.i.for.inc.i_crit_edge
    i32 131076, label %if.then7.i
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then7.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.fold.split.i:                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.fold.split.i, %if.then7.i, %for.body.i.for.inc.i_crit_edge
  %decoder.1.i = phi ptr [ %entity.0108.i, %if.then7.i ], [ %decoder.0105.i, %for.body.i.for.inc.i_crit_edge ], [ %decoder.0105.i, %for.inc.fold.split.i ]
  %mixer.1.i = phi ptr [ %mixer.0106.i, %if.then7.i ], [ %entity.0108.i, %for.body.i.for.inc.i_crit_edge ], [ %mixer.0106.i, %for.inc.fold.split.i ]
  %13 = ptrtoint ptr %.pn107.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn.i = load ptr, ptr %.pn107.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %entities.i
  br i1 %cmp.not.i, label %create_link.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

create_link.i:                                    ; preds = %for.inc.i
  %tobool49.not.i = icmp eq ptr %decoder.1.i, null
  %tobool50.not.i = icmp eq ptr %mixer.1.i, null
  %or.cond.i = select i1 %tobool49.not.i, i1 true, i1 %tobool50.not.i
  br i1 %or.cond.i, label %create_link.i.if.end12_crit_edge, label %if.then51.i

create_link.i.if.end12_crit_edge:                 ; preds = %create_link.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then51.i:                                      ; preds = %create_link.i
  %call.i = tail call i32 @media_get_pad_index(ptr noundef nonnull %decoder.1.i, i1 noundef zeroext false, i32 noundef 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp52.i = icmp sgt i32 %call.i, -1
  br i1 %cmp52.i, label %if.end55.i, label %if.then51.i.do.end.i_crit_edge

if.then51.i.do.end.i_crit_edge:                   ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end55.i:                                       ; preds = %if.then51.i
  %conv.i = trunc i32 %call.i to i16
  %call54.i = tail call i32 @media_create_pad_link(ptr noundef nonnull %decoder.1.i, i16 noundef zeroext %conv.i, ptr noundef nonnull %mixer.1.i, i16 noundef zeroext 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp56.i = icmp slt i32 %call54.i, 0
  br i1 %cmp56.i, label %if.end55.i.do.end.i_crit_edge, label %if.end55.i.if.end12_crit_edge

if.end55.i.if.end12_crit_edge:                    ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end55.i.do.end.i_crit_edge:                    ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.end55.i.do.end.i_crit_edge, %if.then51.i.do.end.i_crit_edge
  %ret.096.i = phi i32 [ %call54.i, %if.end55.i.do.end.i_crit_edge ], [ %call.i, %if.then51.i.do.end.i_crit_edge ]
  %usbdev.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 1
  %14 = ptrtoint ptr %usbdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %usbdev.i, align 4
  %dev59.i = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev59.i, ptr noundef nonnull @.str.12, i32 noundef %ret.096.i) #9
  br label %if.end12

if.end12:                                         ; preds = %do.end.i, %if.end55.i.if.end12_crit_edge, %create_link.i.if.end12_crit_edge, %if.else.if.end12_crit_edge, %if.then3.if.end12_crit_edge
  %16 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %media_dev, align 4
  %entities = getelementptr inbounds %struct.media_device, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %entities to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn129 = load ptr, ptr %entities, align 4
  %cmp.not131 = icmp eq ptr %.pn129, %entities
  br i1 %cmp.not131, label %if.end12.for.end_crit_edge, label %for.body.lr.ph

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end12
  %decoder = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 69
  %tuner = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 73
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn133 = phi ptr [ %.pn129, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %demod.0132 = phi ptr [ null, %for.body.lr.ph ], [ %demod.1, %for.inc.for.body_crit_edge ]
  %entity.0134 = getelementptr i8, ptr %.pn133, i32 -8
  %function = getelementptr i8, ptr %.pn133, i32 16
  %19 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %function, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %20, label %for.body.for.inc_crit_edge [
    i32 131077, label %sw.bb
    i32 131076, label %sw.bb16
    i32 1, label %sw.bb17
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %tuner to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entity.0134, ptr %tuner, align 4
  br label %for.inc

sw.bb16:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %decoder to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entity.0134, ptr %decoder, align 8
  br label %for.inc

sw.bb17:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %sw.bb17, %sw.bb16, %sw.bb, %for.body.for.inc_crit_edge
  %demod.1 = phi ptr [ %demod.0132, %for.body.for.inc_crit_edge ], [ %entity.0134, %sw.bb17 ], [ %demod.0132, %sw.bb16 ], [ %demod.0132, %sw.bb ]
  %24 = ptrtoint ptr %.pn133 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load ptr, ptr %.pn133, align 4
  %cmp.not = icmp eq ptr %.pn, %entities
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end12.for.end_crit_edge
  %demod.0.lcssa = phi ptr [ null, %if.end12.for.end_crit_edge ], [ %demod.1, %for.inc.for.end_crit_edge ]
  %tuner24 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 73
  %25 = ptrtoint ptr %tuner24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tuner24, align 4
  %tobool25.not = icmp eq ptr %26, null
  br i1 %tobool25.not, label %for.end.if.end61_crit_edge, label %if.then26

for.end.if.end61_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.then26:                                        ; preds = %for.end
  %links = getelementptr inbounds %struct.media_entity, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %links to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn126135 = load ptr, ptr %links, align 4
  %28 = ptrtoint ptr %tuner24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tuner24, align 4
  %links35137 = getelementptr inbounds %struct.media_entity, ptr %29, i32 0, i32 10
  %cmp36.not138 = icmp eq ptr %.pn126135, %links35137
  br i1 %cmp36.not138, label %if.then26.if.end61_crit_edge, label %for.body38.lr.ph

if.then26.if.end61_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

for.body38.lr.ph:                                 ; preds = %if.then26
  %tobool39.not = icmp eq ptr %demod.0.lcssa, null
  %decoder45 = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 69
  br label %for.body38

for.body38:                                       ; preds = %for.inc54.for.body38_crit_edge, %for.body38.lr.ph
  %.pn126139 = phi ptr [ %.pn126135, %for.body38.lr.ph ], [ %.pn126, %for.inc54.for.body38_crit_edge ]
  %link.0140 = getelementptr i8, ptr %.pn126139, i32 -16
  br i1 %tobool39.not, label %for.body38.if.end44_crit_edge, label %land.lhs.true

for.body38.if.end44_crit_edge:                    ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

land.lhs.true:                                    ; preds = %for.body38
  %30 = getelementptr i8, ptr %.pn126139, i32 12
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %entity40 = getelementptr inbounds %struct.media_pad, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %entity40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %entity40, align 4
  %cmp41 = icmp eq ptr %34, %demod.0.lcssa
  br i1 %cmp41, label %if.then42, label %land.lhs.true.if.end44_crit_edge

land.lhs.true.if.end44_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call43 = tail call i32 @media_entity_setup_link(ptr noundef %link.0140, i32 noundef 0) #6
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %land.lhs.true.if.end44_crit_edge, %for.body38.if.end44_crit_edge
  %35 = ptrtoint ptr %decoder45 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %decoder45, align 8
  %tobool46.not = icmp eq ptr %36, null
  br i1 %tobool46.not, label %if.end44.for.inc54_crit_edge, label %land.lhs.true47

if.end44.for.inc54_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc54

land.lhs.true47:                                  ; preds = %if.end44
  %37 = getelementptr i8, ptr %.pn126139, i32 12
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %entity48 = getelementptr inbounds %struct.media_pad, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %entity48 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %entity48, align 4
  %cmp50 = icmp eq ptr %41, %36
  br i1 %cmp50, label %if.then51, label %land.lhs.true47.for.inc54_crit_edge

land.lhs.true47.for.inc54_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc54

if.then51:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #8
  %call52 = tail call i32 @media_entity_setup_link(ptr noundef %link.0140, i32 noundef 0) #6
  br label %for.inc54

for.inc54:                                        ; preds = %if.then51, %land.lhs.true47.for.inc54_crit_edge, %if.end44.for.inc54_crit_edge
  %42 = ptrtoint ptr %.pn126139 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn126 = load ptr, ptr %.pn126139, align 4
  %43 = ptrtoint ptr %tuner24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tuner24, align 4
  %links35 = getelementptr inbounds %struct.media_entity, ptr %44, i32 0, i32 10
  %cmp36.not = icmp eq ptr %.pn126, %links35
  br i1 %cmp36.not, label %for.inc54.if.end61_crit_edge, label %for.inc54.for.body38_crit_edge

for.inc54.for.body38_crit_edge:                   ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body38

for.inc54.if.end61_crit_edge:                     ; preds = %for.inc54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end61

if.end61:                                         ; preds = %for.inc54.if.end61_crit_edge, %if.then26.if.end61_crit_edge, %for.end.if.end61_crit_edge
  %entity_notify = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 72
  %notify_data = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 72, i32 1
  %45 = ptrtoint ptr %notify_data to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev, ptr %notify_data, align 4
  %notify = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 72, i32 2
  %46 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @au0828_media_graph_notify, ptr %notify, align 4
  %47 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %media_dev, align 4
  %call65 = tail call i32 @media_device_register_entity_notify(ptr noundef %48, ptr noundef %entity_notify) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end72, label %do.end70

do.end70:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %dev71 = getelementptr inbounds %struct.usb_device, ptr %udev, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev71, ptr noundef nonnull @.str.48, i32 noundef %call65) #9
  br label %cleanup

if.end72:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %media_dev, align 4
  %graph_mutex = getelementptr inbounds %struct.media_device, ptr %50, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %graph_mutex, i32 noundef 0) #6
  %51 = ptrtoint ptr %media_dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %media_dev, align 4
  %source_priv = getelementptr inbounds %struct.media_device, ptr %52, i32 0, i32 18
  %53 = ptrtoint ptr %source_priv to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev, ptr %source_priv, align 4
  %54 = load ptr, ptr %media_dev, align 4
  %enable_source = getelementptr inbounds %struct.media_device, ptr %54, i32 0, i32 19
  %55 = ptrtoint ptr %enable_source to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @au0828_enable_source, ptr %enable_source, align 8
  %56 = load ptr, ptr %media_dev, align 4
  %disable_source = getelementptr inbounds %struct.media_device, ptr %56, i32 0, i32 20
  %57 = ptrtoint ptr %disable_source to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @au0828_disable_source, ptr %disable_source, align 4
  %58 = load ptr, ptr %media_dev, align 4
  %graph_mutex78 = getelementptr inbounds %struct.media_device, ptr %58, i32 0, i32 16
  tail call void @mutex_unlock(ptr noundef %graph_mutex78) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %do.end70, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call65, %do.end70 ], [ 0, %if.end72 ], [ %call5, %if.then7 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @media_device_usb_allocate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_setup_link(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_device_register_entity_notify(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au0828_enable_source(ptr noundef %entity, ptr noundef %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entity, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %source_priv = getelementptr inbounds %struct.media_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %source_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %source_priv, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %entity, i32 0, i32 3
  %4 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %function, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tuner = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 73
  %6 = ptrtoint ptr %tuner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner, align 4
  br label %if.end20

if.else:                                          ; preds = %if.end
  %decoder = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 69
  %8 = ptrtoint ptr %decoder to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %decoder, align 8
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.else.do.body119_crit_edge, label %if.end5

if.else.do.body119_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body119

if.end5:                                          ; preds = %if.else
  %input_type = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 45
  %10 = ptrtoint ptr %input_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %input_type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %11, label %if.end5.do.body119_crit_edge [
    i32 4, label %if.then8
    i32 2, label %if.end5.if.then15_crit_edge
    i32 1, label %if.end5.if.then15_crit_edge228
  ]

if.end5.if.then15_crit_edge228:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.end5.if.then15_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then15

if.end5.do.body119_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body119

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %tuner9 = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 73
  %13 = ptrtoint ptr %tuner9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tuner9, align 4
  br label %if.end20

if.then15:                                        ; preds = %if.end5.if.then15_crit_edge, %if.end5.if.then15_crit_edge228
  %arrayidx = getelementptr %struct.au0828_dev, ptr %3, i32 0, i32 70, i32 %11
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.then8, %if.then2
  %sink.0 = phi ptr [ %entity, %if.then2 ], [ %9, %if.then8 ], [ %9, %if.then15 ]
  %find_source.0 = phi ptr [ %7, %if.then2 ], [ %14, %if.then8 ], [ %arrayidx, %if.then15 ]
  %active_link = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 74
  %15 = ptrtoint ptr %active_link to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %active_link, align 8
  %tobool21.not = icmp eq ptr %16, null
  br i1 %tobool21.not, label %if.end54, label %if.then22

if.then22:                                        ; preds = %if.end20
  %active_link_owner = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 77
  %17 = ptrtoint ptr %active_link_owner to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %active_link_owner, align 4
  %cmp23 = icmp eq ptr %18, %entity
  br i1 %cmp23, label %do.body, label %if.else30

do.body:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @au0828_enable_source.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@au0828_enable_source, %if.then28)) #6
          to label %do.body119 [label %if.then28], !srcloc !223

if.then28:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.media_entity, ptr %entity, i32 0, i32 1
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @au0828_enable_source.__UNIQUE_ID_ddebug396, ptr noundef nonnull @.str.52, ptr noundef %20) #6
  br label %do.body119

if.else30:                                        ; preds = %if.then22
  %function.i = getelementptr inbounds %struct.media_entity, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %function.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %22, label %if.else30.do.body119_crit_edge [
    i32 65537, label %if.else30.sw.bb.i_crit_edge
    i32 12289, label %if.else30.sw.bb.i_crit_edge229
    i32 4098, label %if.else30.sw.bb.i_crit_edge230
  ]

if.else30.sw.bb.i_crit_edge230:                   ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.else30.sw.bb.i_crit_edge229:                   ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.else30.sw.bb.i_crit_edge:                      ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.else30.do.body119_crit_edge:                   ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body119

sw.bb.i:                                          ; preds = %if.else30.sw.bb.i_crit_edge, %if.else30.sw.bb.i_crit_edge229, %if.else30.sw.bb.i_crit_edge230
  %24 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %5, label %sw.bb.i.do.body119_crit_edge [
    i32 65537, label %sw.bb.i.if.then33_crit_edge
    i32 12289, label %sw.bb.i.if.then33_crit_edge231
    i32 4098, label %sw.bb.i.if.then33_crit_edge232
  ]

sw.bb.i.if.then33_crit_edge232:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

sw.bb.i.if.then33_crit_edge231:                   ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

sw.bb.i.if.then33_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then33

sw.bb.i.do.body119_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body119

if.then33:                                        ; preds = %sw.bb.i.if.then33_crit_edge, %sw.bb.i.if.then33_crit_edge231, %sw.bb.i.if.then33_crit_edge232
  %active_link_shared = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 80
  %25 = ptrtoint ptr %active_link_shared to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %active_link_shared, align 8
  %active_link_user = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 78
  %26 = ptrtoint ptr %active_link_user to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entity, ptr %active_link_user, align 8
  %active_link_user_pipe = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 79
  %27 = ptrtoint ptr %active_link_user_pipe to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pipe, ptr %active_link_user_pipe, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @au0828_enable_source.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@au0828_enable_source, %if.then46)) #6
          to label %do.body119 [label %if.then46], !srcloc !223

if.then46:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %active_link_owner to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %active_link_owner, align 4
  %name48 = getelementptr inbounds %struct.media_entity, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %name48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name48, align 4
  %name49 = getelementptr inbounds %struct.media_entity, ptr %entity, i32 0, i32 1
  %32 = ptrtoint ptr %name49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name49, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @au0828_enable_source.__UNIQUE_ID_ddebug397, ptr noundef nonnull @.str.54, ptr noundef %31, ptr noundef %33) #6
  br label %do.body119

if.end54:                                         ; preds = %if.end20
  %links = getelementptr inbounds %struct.media_entity, ptr %sink.0, i32 0, i32 10
  %34 = ptrtoint ptr %links to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn219 = load ptr, ptr %links, align 4
  %cmp57.not220 = icmp eq ptr %.pn219, %links
  br i1 %cmp57.not220, label %if.end54.do.body119_crit_edge, label %if.end54.for.body_crit_edge

if.end54.for.body_crit_edge:                      ; preds = %if.end54
  br label %for.body

if.end54.do.body119_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body119

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end54.for.body_crit_edge
  %.pn221 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn219, %if.end54.for.body_crit_edge ]
  %35 = getelementptr i8, ptr %.pn221, i32 12
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %entity60 = getelementptr inbounds %struct.media_pad, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %entity60 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %entity60, align 4
  %cmp61 = icmp eq ptr %39, %sink.0
  br i1 %cmp61, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %40 = getelementptr i8, ptr %.pn221, i32 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %entity62 = getelementptr inbounds %struct.media_pad, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %entity62 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %entity62, align 4
  %cmp63 = icmp eq ptr %44, %find_source.0
  br i1 %cmp63, label %for.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %45 = ptrtoint ptr %.pn221 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn = load ptr, ptr %.pn221, align 4
  %cmp57.not = icmp eq ptr %.pn, %links
  br i1 %cmp57.not, label %for.inc.do.body119_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.body119_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body119

for.end:                                          ; preds = %land.lhs.true
  %link.0.le = getelementptr i8, ptr %.pn221, i32 -16
  %tobool71.not = icmp eq ptr %link.0.le, null
  br i1 %tobool71.not, label %for.end.do.body119_crit_edge, label %if.end73

for.end.do.body119_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body119

if.end73:                                         ; preds = %for.end
  %46 = getelementptr i8, ptr %.pn221, i32 8
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %entity74 = getelementptr inbounds %struct.media_pad, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %entity74 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %entity74, align 4
  %call75 = tail call i32 @__media_entity_setup_link(ptr noundef nonnull %link.0.le, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end85, label %do.end80

do.end80:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %name82 = getelementptr inbounds %struct.media_entity, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %name82 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %name82, align 4
  %name83 = getelementptr inbounds %struct.media_entity, ptr %sink.0, i32 0, i32 1
  %53 = ptrtoint ptr %name83 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name83, align 4
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %52, ptr noundef %54, i32 noundef %call75) #9
  br label %do.body119

if.end85:                                         ; preds = %if.end73
  %call86 = tail call i32 @__media_pipeline_start(ptr noundef %entity, ptr noundef %pipe) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end105, label %do.end91

do.end91:                                         ; preds = %if.end85
  %name93 = getelementptr inbounds %struct.media_entity, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %name93 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name93, align 4
  %name94 = getelementptr inbounds %struct.media_entity, ptr %entity, i32 0, i32 1
  %57 = ptrtoint ptr %name94 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name94, align 4
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %56, ptr noundef %58, i32 noundef %call86) #9
  %call96 = tail call i32 @__media_entity_setup_link(ptr noundef nonnull %link.0.le, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %do.end91.do.body119_crit_edge, label %do.end101

do.end91.do.body119_crit_edge:                    ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body119

do.end101:                                        ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #8
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %call96) #9
  br label %do.body119

if.end105:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %active_link to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %link.0.le, ptr %active_link, align 8
  %active_link_owner107 = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 77
  %60 = ptrtoint ptr %active_link_owner107 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %entity, ptr %active_link_owner107, align 4
  %active_source = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 75
  %61 = ptrtoint ptr %active_source to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %50, ptr %active_source, align 4
  %active_sink = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 76
  %62 = ptrtoint ptr %active_sink to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %sink.0, ptr %active_sink, align 8
  %name113 = getelementptr inbounds %struct.media_entity, ptr %50, i32 0, i32 1
  %63 = ptrtoint ptr %name113 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name113, align 4
  %name115 = getelementptr inbounds %struct.media_entity, ptr %sink.0, i32 0, i32 1
  %65 = ptrtoint ptr %name115 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name115, align 4
  %name117 = getelementptr inbounds %struct.media_entity, ptr %entity, i32 0, i32 1
  %67 = ptrtoint ptr %name117 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %name117, align 4
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %64, ptr noundef %66, ptr noundef %68, i32 noundef 0) #9
  br label %do.body119

do.body119:                                       ; preds = %if.end105, %do.end101, %do.end91.do.body119_crit_edge, %do.end80, %for.end.do.body119_crit_edge, %for.inc.do.body119_crit_edge, %if.end54.do.body119_crit_edge, %if.then46, %if.then33, %sw.bb.i.do.body119_crit_edge, %if.else30.do.body119_crit_edge, %if.then28, %do.body, %if.end5.do.body119_crit_edge, %if.else.do.body119_crit_edge
  %ret.0 = phi i32 [ %call75, %do.end80 ], [ %call96, %do.end101 ], [ 0, %do.end91.do.body119_crit_edge ], [ 0, %if.end105 ], [ -19, %if.else.do.body119_crit_edge ], [ 0, %if.end5.do.body119_crit_edge ], [ 0, %if.then28 ], [ 0, %if.then46 ], [ -19, %for.end.do.body119_crit_edge ], [ 0, %do.body ], [ 0, %if.then33 ], [ -16, %if.else30.do.body119_crit_edge ], [ -16, %sw.bb.i.do.body119_crit_edge ], [ -19, %if.end54.do.body119_crit_edge ], [ -19, %for.inc.do.body119_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @au0828_enable_source.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@au0828_enable_source, %if.then131)) #6
          to label %cleanup [label %if.then131], !srcloc !223

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #8
  %name132 = getelementptr inbounds %struct.media_entity, ptr %entity, i32 0, i32 1
  %69 = ptrtoint ptr %name132 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name132, align 4
  %71 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %function, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @au0828_enable_source.__UNIQUE_ID_ddebug398, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.50, ptr noundef %70, i32 noundef %72, i32 noundef %ret.0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then131, %do.body119, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %ret.0, %if.then131 ], [ %ret.0, %do.body119 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @au0828_disable_source(ptr noundef readonly %entity) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %entity to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entity, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup155_crit_edge, label %if.end

entry.cleanup155_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup155

if.end:                                           ; preds = %entry
  %source_priv = getelementptr inbounds %struct.media_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %source_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %source_priv, align 4
  %active_link = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 74
  %4 = ptrtoint ptr %active_link to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_link, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.cleanup155_crit_edge, label %if.end4

if.end.cleanup155_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup155

if.end4:                                          ; preds = %if.end
  %6 = getelementptr inbounds %struct.media_link, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %entity6 = getelementptr inbounds %struct.media_pad, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %entity6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entity6, align 4
  %active_sink = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 76
  %11 = ptrtoint ptr %active_sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %active_sink, align 8
  %cmp = icmp eq ptr %10, %12
  br i1 %cmp, label %land.lhs.true, label %if.end4.cleanup155_crit_edge

if.end4.cleanup155_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup155

land.lhs.true:                                    ; preds = %if.end4
  %13 = getelementptr inbounds %struct.media_link, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %entity8 = getelementptr inbounds %struct.media_pad, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %entity8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %entity8, align 4
  %active_source = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 75
  %18 = ptrtoint ptr %active_source to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %active_source, align 4
  %cmp9 = icmp eq ptr %17, %19
  br i1 %cmp9, label %if.then10, label %land.lhs.true.cleanup155_crit_edge

land.lhs.true.cleanup155_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup155

if.then10:                                        ; preds = %land.lhs.true
  %active_link_owner = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 77
  %20 = ptrtoint ptr %active_link_owner to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %active_link_owner, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %function, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12289, i32 %23)
  %cmp11 = icmp eq i32 %23, 12289
  %active_link_shared = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 80
  %24 = ptrtoint ptr %active_link_shared to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %active_link_shared, align 8, !range !224
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool14.not = icmp eq i8 %25, 0
  br i1 %tobool14.not, label %if.else, label %do.body

do.body:                                          ; preds = %if.then10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @au0828_disable_source.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@au0828_disable_source, %if.then19)) #6
          to label %do.end [label %if.then19], !srcloc !223

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %active_link_owner to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %active_link_owner, align 4
  %name = getelementptr inbounds %struct.media_entity, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name, align 4
  %name21 = getelementptr inbounds %struct.media_entity, ptr %entity, i32 0, i32 1
  %30 = ptrtoint ptr %name21 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name21, align 4
  %users = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 28
  %32 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %users, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @au0828_disable_source.__UNIQUE_ID_ddebug399, ptr noundef nonnull @.str.69, ptr noundef %29, ptr noundef %31, i32 noundef %33) #6
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body
  %34 = ptrtoint ptr %active_link_owner to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %active_link_owner, align 4
  %cmp24.not = icmp eq ptr %35, %entity
  br i1 %cmp24.not, label %if.end33, label %if.then25

if.then25:                                        ; preds = %do.end
  br i1 %cmp11, label %land.lhs.true27, label %if.then25.if.end31_crit_edge

if.then25.if.end31_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true27:                                  ; preds = %if.then25
  %users28 = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 28
  %36 = ptrtoint ptr %users28 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %users28, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp29 = icmp sgt i32 %37, 1
  br i1 %cmp29, label %land.lhs.true27.cleanup155_crit_edge, label %land.lhs.true27.if.end31_crit_edge

land.lhs.true27.if.end31_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

land.lhs.true27.cleanup155_crit_edge:             ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup155

if.end31:                                         ; preds = %land.lhs.true27.if.end31_crit_edge, %if.then25.if.end31_crit_edge
  %active_link_user = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 78
  %38 = ptrtoint ptr %active_link_user to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %active_link_user, align 8
  %active_link_user_pipe = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 79
  %39 = ptrtoint ptr %active_link_user_pipe to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %active_link_user_pipe, align 4
  %40 = ptrtoint ptr %active_link_shared to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %active_link_shared, align 8
  br label %cleanup155

if.end33:                                         ; preds = %do.end
  br i1 %cmp11, label %if.end33.if.end39_crit_edge, label %land.lhs.true35

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true35:                                  ; preds = %if.end33
  %users36 = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 28
  %41 = ptrtoint ptr %users36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %users36, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp37 = icmp sgt i32 %42, 1
  br i1 %cmp37, label %land.lhs.true35.cleanup155_crit_edge, label %land.lhs.true35.if.end39_crit_edge

land.lhs.true35.if.end39_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true35.cleanup155_crit_edge:             ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup155

if.end39:                                         ; preds = %land.lhs.true35.if.end39_crit_edge, %if.end33.if.end39_crit_edge
  tail call void @__media_pipeline_stop(ptr noundef %entity) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @au0828_disable_source.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@au0828_disable_source, %if.then53)) #6
          to label %do.end58 [label %if.then53], !srcloc !223

if.then53:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %active_link_owner to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %active_link_owner, align 4
  %name55 = getelementptr inbounds %struct.media_entity, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %name55 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name55, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @au0828_disable_source.__UNIQUE_ID_ddebug400, ptr noundef nonnull @.str.71, ptr noundef %46) #6
  br label %do.end58

do.end58:                                         ; preds = %if.then53, %if.end39
  %active_link_user59 = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 78
  %47 = ptrtoint ptr %active_link_user59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %active_link_user59, align 8
  %active_link_user_pipe60 = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 79
  %49 = ptrtoint ptr %active_link_user_pipe60 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %active_link_user_pipe60, align 4
  %call61 = tail call i32 @__media_pipeline_start(ptr noundef %48, ptr noundef %50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end73, label %do.end66

do.end66:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %active_source to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %active_source, align 4
  %name69 = getelementptr inbounds %struct.media_entity, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %name69 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %name69, align 4
  %55 = ptrtoint ptr %active_link_user59 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %active_link_user59, align 8
  %name71 = getelementptr inbounds %struct.media_entity, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %name71 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name71, align 4
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %54, ptr noundef %58, i32 noundef %call61) #9
  br label %deactivate_link

if.end73:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %active_link_user59 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %active_link_user59, align 8
  %61 = ptrtoint ptr %active_link_owner to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %active_link_owner, align 4
  store ptr null, ptr %active_link_user59, align 8
  %62 = ptrtoint ptr %active_link_user_pipe60 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %active_link_user_pipe60, align 4
  %63 = ptrtoint ptr %active_link_shared to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 0, ptr %active_link_shared, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @au0828_disable_source.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@au0828_disable_source, %if.then91)) #6
          to label %cleanup155 [label %if.then91], !srcloc !223

if.then91:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %active_link_owner to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %active_link_owner, align 4
  %name93 = getelementptr inbounds %struct.media_entity, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %name93 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name93, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @au0828_disable_source.__UNIQUE_ID_ddebug401, ptr noundef nonnull @.str.74, ptr noundef %67) #6
  br label %cleanup155

if.else:                                          ; preds = %if.then10
  br i1 %cmp11, label %if.end103, label %land.lhs.true98

land.lhs.true98:                                  ; preds = %if.else
  %users99 = getelementptr inbounds %struct.au0828_dev, ptr %3, i32 0, i32 28
  %68 = ptrtoint ptr %users99 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %users99, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %69)
  %cmp100 = icmp slt i32 %69, 2
  %cmp105.not = icmp eq ptr %21, %entity
  %or.cond = select i1 %cmp100, i1 %cmp105.not, i1 false
  br i1 %or.cond, label %land.lhs.true98.if.end107_crit_edge, label %land.lhs.true98.cleanup155_crit_edge

land.lhs.true98.cleanup155_crit_edge:             ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup155

land.lhs.true98.if.end107_crit_edge:              ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.end103:                                        ; preds = %if.else
  %cmp105.not.old = icmp eq ptr %21, %entity
  br i1 %cmp105.not.old, label %if.end103.if.end107_crit_edge, label %if.end103.cleanup155_crit_edge

if.end103.cleanup155_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup155

if.end103.if.end107_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.end107:                                        ; preds = %if.end103.if.end107_crit_edge, %land.lhs.true98.if.end107_crit_edge
  tail call void @__media_pipeline_stop(ptr noundef %21) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @au0828_disable_source.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@au0828_disable_source, %if.then121)) #6
          to label %deactivate_link [label %if.then121], !srcloc !223

if.then121:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %active_link_owner to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %active_link_owner, align 4
  %name123 = getelementptr inbounds %struct.media_entity, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %name123 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %name123, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @au0828_disable_source.__UNIQUE_ID_ddebug402, ptr noundef nonnull @.str.71, ptr noundef %73) #6
  br label %deactivate_link

deactivate_link:                                  ; preds = %if.then121, %if.end107, %do.end66
  %74 = ptrtoint ptr %active_link to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %active_link, align 8
  %call128 = tail call i32 @__media_entity_setup_link(ptr noundef %75, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %deactivate_link.do.end139_crit_edge, label %do.end133

deactivate_link.do.end139_crit_edge:              ; preds = %deactivate_link
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end139

do.end133:                                        ; preds = %deactivate_link
  call void @__sanitizer_cov_trace_pc() #8
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, i32 noundef %call128) #9
  br label %do.end139

do.end139:                                        ; preds = %do.end133, %deactivate_link.do.end139_crit_edge
  %76 = ptrtoint ptr %active_source to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %active_source, align 4
  %name142 = getelementptr inbounds %struct.media_entity, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %name142 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name142, align 4
  %80 = ptrtoint ptr %active_sink to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %active_sink, align 8
  %name144 = getelementptr inbounds %struct.media_entity, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %name144 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name144, align 4
  %84 = ptrtoint ptr %active_link_owner to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %active_link_owner, align 4
  %name146 = getelementptr inbounds %struct.media_entity, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %name146 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name146, align 4
  %call147 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef %79, ptr noundef %83, ptr noundef %87, i32 noundef %call128) #9
  %88 = ptrtoint ptr %active_link_shared to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %active_link_shared, align 8
  %89 = call ptr @memset(ptr %active_link, i32 0, i32 20)
  br label %cleanup155

cleanup155:                                       ; preds = %do.end139, %if.end103.cleanup155_crit_edge, %land.lhs.true98.cleanup155_crit_edge, %if.then91, %if.end73, %land.lhs.true35.cleanup155_crit_edge, %if.end31, %land.lhs.true27.cleanup155_crit_edge, %land.lhs.true.cleanup155_crit_edge, %if.end4.cleanup155_crit_edge, %if.end.cleanup155_crit_edge, %entry.cleanup155_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_entity_setup_link(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_pipeline_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__media_pipeline_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @au0828_rc_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @au0828_dvb_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au0828_analog_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au0828_rc_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @au0828_v4l2_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @au0828_dvb_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au0828_rc_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @au0828_v4l2_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @au0828_dvb_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 104)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !25, !27, !29, !31, !32, !34, !35, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !165, !166, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !180, !182, !183, !184, !185, !187, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213}
!llvm.module.flags = !{!214, !215, !216, !217, !218, !219, !220, !221}
!llvm.ident = !{!222}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype388, !1, !"__UNIQUE_ID_debugtype388", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug389, !4, !"__UNIQUE_ID_debug389", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 29, i32 1}
!5 = !{ptr @__param_disable_usb_speed_check, !6, !"__param_disable_usb_speed_check", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 33, i32 1}
!7 = !{ptr @__UNIQUE_ID_disable_usb_speed_checktype390, !6, !"__UNIQUE_ID_disable_usb_speed_checktype390", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_disable_usb_speed_check391, !9, !"__UNIQUE_ID_disable_usb_speed_check391", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 34, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 54, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @au0828_readreg._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @au0828_readreg._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 61, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @au0828_writereg._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @au0828_writereg._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__initcall__kmod_au0828__403_847_au0828_init6, !22, !"__initcall__kmod_au0828__403_847_au0828_init6", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 847, i32 1}
!23 = !{ptr @__exitcall_au0828_exit, !24, !"__exitcall_au0828_exit", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 848, i32 1}
!25 = !{ptr @__UNIQUE_ID_description404, !26, !"__UNIQUE_ID_description404", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 850, i32 1}
!27 = !{ptr @__UNIQUE_ID_author405, !28, !"__UNIQUE_ID_author405", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 851, i32 1}
!29 = !{ptr @__UNIQUE_ID_file406, !30, !"__UNIQUE_ID_file406", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 852, i32 1}
!31 = !{ptr @__UNIQUE_ID_license407, !30, !"__UNIQUE_ID_license407", i1 false, i1 false}
!32 = !{ptr @__UNIQUE_ID_version408, !33, !"__UNIQUE_ID_version408", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 853, i32 1}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__modver_attr, !33, !"__modver_attr", i1 false, i1 false}
!38 = !{ptr @au0828_debug, !39, !"au0828_debug", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 27, i32 5}
!40 = !{ptr @disable_usb_speed_check, !41, !"disable_usb_speed_check", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 32, i32 21}
!42 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!43 = !{ptr @__param_str_disable_usb_speed_check, !6, !"__param_str_disable_usb_speed_check", i1 false, i1 false}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 83, i32 4}
!46 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @send_control_msg._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @send_control_msg._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.10, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 108, i32 4}
!51 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @recv_control_msg._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @recv_control_msg._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 260, i32 4}
!56 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @au0828_media_graph_notify._entry, !55, !"_entry", i1 false, i1 false}
!60 = !{ptr @au0828_media_graph_notify._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @au0828_usb_driver, !62, !"au0828_usb_driver", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 802, i32 26}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 662, i32 2}
!65 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @au0828_usb_probe._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @au0828_usb_probe._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 673, i32 3}
!70 = !{ptr @au0828_usb_probe._entry.18, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @au0828_usb_probe._entry_ptr.20, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 674, i32 3}
!74 = !{ptr @au0828_usb_probe._entry.21, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @au0828_usb_probe._entry_ptr.23, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 680, i32 3}
!78 = !{ptr @au0828_usb_probe._entry.24, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @au0828_usb_probe._entry_ptr.26, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @au0828_usb_probe.__key, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 684, i32 2}
!82 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @au0828_usb_probe.__key.28, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 686, i32 2}
!85 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @au0828_usb_probe.__key.30, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 687, i32 2}
!88 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 695, i32 3}
!91 = !{ptr @au0828_usb_probe._entry.32, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @au0828_usb_probe._entry_ptr.34, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 731, i32 3}
!95 = !{ptr @au0828_usb_probe._entry.35, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @au0828_usb_probe._entry_ptr.37, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 740, i32 3}
!99 = !{ptr @au0828_usb_probe._entry.38, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @au0828_usb_probe._entry_ptr.40, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 746, i32 2}
!103 = !{ptr @au0828_usb_probe._entry.41, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @au0828_usb_probe._entry_ptr.43, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 577, i32 4}
!108 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @au0828_media_device_register._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @au0828_media_device_register._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 633, i32 3}
!113 = !{ptr @au0828_media_device_register._entry.47, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @au0828_media_device_register._entry_ptr.49, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 362, i32 4}
!117 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @au0828_enable_source.__UNIQUE_ID_ddebug396, !116, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!119 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 379, i32 4}
!122 = !{ptr @au0828_enable_source.__UNIQUE_ID_ddebug397, !121, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!123 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 408, i32 3}
!126 = !{ptr @au0828_enable_source._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @au0828_enable_source._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 415, i32 3}
!130 = !{ptr @au0828_enable_source._entry.56, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @au0828_enable_source._entry_ptr.58, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 419, i32 4}
!134 = !{ptr @au0828_enable_source._entry.59, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @au0828_enable_source._entry_ptr.61, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 432, i32 2}
!138 = !{ptr @au0828_enable_source._entry.62, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @au0828_enable_source._entry_ptr.64, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 436, i32 2}
!142 = !{ptr @au0828_enable_source.__UNIQUE_ID_ddebug398, !141, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!143 = !{ptr @.str.66, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 476, i32 4}
!146 = !{ptr @.str.68, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @au0828_disable_source.__UNIQUE_ID_ddebug399, !145, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!148 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 505, i32 4}
!151 = !{ptr @au0828_disable_source.__UNIQUE_ID_ddebug400, !150, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!152 = !{ptr @.str.71, !150, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.72, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 512, i32 5}
!155 = !{ptr @au0828_disable_source._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @au0828_disable_source._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 524, i32 4}
!159 = !{ptr @au0828_disable_source.__UNIQUE_ID_ddebug401, !158, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!160 = !{ptr @.str.74, !158, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @au0828_disable_source.__UNIQUE_ID_ddebug402, !162, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 536, i32 3}
!163 = !{ptr @au0828_disable_source._entry.75, !164, !"_entry", i1 false, i1 false}
!164 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 542, i32 4}
!165 = !{ptr @au0828_disable_source._entry_ptr.76, !164, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.78, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 544, i32 3}
!168 = !{ptr @au0828_disable_source._entry.77, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @au0828_disable_source._entry_ptr.79, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.80, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 167, i32 2}
!172 = !{ptr @.str.81, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @au0828_usb_disconnect._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @au0828_usb_disconnect._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 768, i32 2}
!177 = !{ptr @.str.83, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @au0828_suspend._entry, !176, !"_entry", i1 false, i1 false}
!179 = !{ptr @au0828_suspend._entry_ptr, !176, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 785, i32 2}
!182 = !{ptr @.str.85, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @au0828_resume._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @au0828_resume._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 817, i32 3}
!187 = !{ptr @.str.87, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @au0828_init._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @au0828_init._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 820, i32 3}
!192 = !{ptr @au0828_init._entry.88, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @au0828_init._entry_ptr.90, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.92, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 823, i32 3}
!196 = !{ptr @au0828_init._entry.91, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @au0828_init._entry_ptr.93, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.95, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 826, i32 3}
!200 = !{ptr @au0828_init._entry.94, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @au0828_init._entry_ptr.96, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.98, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 830, i32 3}
!204 = !{ptr @au0828_init._entry.97, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @au0828_init._entry_ptr.99, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.101, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 833, i32 2}
!208 = !{ptr @au0828_init._entry.100, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @au0828_init._entry_ptr.102, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.104, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/usb/au0828/au0828-core.c", i32 837, i32 3}
!212 = !{ptr @au0828_init._entry.103, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @au0828_init._entry_ptr.105, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{i32 1, !"wchar_size", i32 2}
!215 = !{i32 1, !"min_enum_size", i32 4}
!216 = !{i32 8, !"branch-target-enforcement", i32 0}
!217 = !{i32 8, !"sign-return-address", i32 0}
!218 = !{i32 8, !"sign-return-address-all", i32 0}
!219 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!220 = !{i32 7, !"uwtable", i32 1}
!221 = !{i32 7, !"frame-pointer", i32 2}
!222 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!223 = !{i64 2148963735, i64 2148963740, i64 2148963753, i64 2148963797, i64 2148963831, i64 2148963852}
!224 = !{i8 0, i8 2}
