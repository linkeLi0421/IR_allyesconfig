; ModuleID = '/llk/IR_all_yes/drivers/media/usb/au0828/au0828-i2c.c_pt.bc'
source_filename = "../drivers/media/usb/au0828/au0828-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.au0828_dev = type { %struct.mutex, ptr, i32, %struct.au0828_board, [64 x i8], %struct.i2c_adapter, %struct.i2c_algorithm, %struct.i2c_client, i32, %struct.au0828_dvb, %struct.work_struct, %struct.timer_list, i32, %struct.v4l2_device, %struct.v4l2_ctrl_handler, ptr, %struct.video_device, %struct.video_device, %struct.vb2_queue, %struct.vb2_queue, %struct.mutex, %struct.mutex, i32, i32, %struct.timer_list, i32, %struct.timer_list, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, %struct.wait_queue_head, %struct.mutex, %struct.au0828_dmaqueue, %struct.au0828_dmaqueue, %struct.au0828_usb_isoc_ctl, %struct.spinlock, i32, i32, i32, ptr, [12 x ptr], [12 x ptr], i8, i8, [16 x ptr], [16 x ptr], ptr, %struct.media_pad, %struct.media_pad, ptr, [4 x %struct.media_entity], [4 x %struct.media_pad], %struct.media_entity_notify, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.au0828_board = type { ptr, i32, i8, i8, i8, [4 x %struct.au0828_input] }
%struct.au0828_input = type { i32, i32, i32, ptr }
%struct.au0828_dvb = type { %struct.mutex, %struct.dvb_adapter, ptr, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, %struct.dvb_net, i32, i32, i32, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
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
%struct.au0828_dmaqueue = type { %struct.list_head, i32 }
%struct.au0828_usb_isoc_ctl = type { i32, i32, ptr, ptr, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_entity_notify = type { %struct.list_head, ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_i2c_scan = internal constant [16 x i8] c"au0828.i2c_scan\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@i2c_scan = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_i2c_scan = internal constant %struct.kernel_param { ptr @__param_str_i2c_scan, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @i2c_scan } }, section "__param", align 4
@__UNIQUE_ID_i2c_scantype388 = internal constant [29 x i8] c"au0828.parmtype=i2c_scan:int\00", section ".modinfo", align 1
@__UNIQUE_ID_i2c_scan389 = internal constant [49 x i8] c"au0828.parm=i2c_scan:scan i2c bus at insmod time\00", section ".modinfo", align 1
@au0828_debug = external dso_local local_unnamed_addr global i32, align 4
@au0828_i2c_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017au0828: %s()\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"au0828_i2c_register\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/usb/au0828/au0828-i2c.c\00", [58 x i8] zeroinitializer }, align 32
@au0828_i2c_register._entry_ptr = internal global ptr @au0828_i2c_register._entry, section ".printk_index", align 4
@au0828_i2c_adap_template = internal constant { %struct.i2c_adapter, [336 x i8] } { %struct.i2c_adapter { ptr null, i32 0, ptr @au0828_i2c_algo_template, ptr null, ptr null, %struct.rt_mutex zeroinitializer, %struct.rt_mutex zeroinitializer, i32 0, i32 0, %struct.device zeroinitializer, i32 0, i32 0, [48 x i8] c"au0828\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.completion zeroinitializer, %struct.mutex zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null }, [336 x i8] zeroinitializer }, align 32
@au0828_i2c_algo_template = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @i2c_xfer, ptr null, ptr null, ptr null, ptr @au0828_functionality, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@au0828_i2c_client_template = internal constant { %struct.i2c_client, [232 x i8] } { %struct.i2c_client { i16 0, i16 0, [20 x i8] c"au0828 internal\00\00\00\00\00", ptr null, %struct.device zeroinitializer, i32 0, i32 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [232 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"au0828\00", [25 x i8] zeroinitializer }, align 32
@au0828_i2c_register._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016au0828: i2c bus registered\0A\00", [34 x i8] zeroinitializer }, align 32
@au0828_i2c_register._entry_ptr.6 = internal global ptr @au0828_i2c_register._entry.4, section ".printk_index", align 4
@au0828_i2c_register._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016au0828: i2c bus register FAILED\0A\00", [61 x i8] zeroinitializer }, align 32
@au0828_i2c_register._entry_ptr.9 = internal global ptr @au0828_i2c_register._entry.7, section ".printk_index", align 4
@i2c_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017au0828: %s(num = %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_xfer\00", [23 x i8] zeroinitializer }, align 32
@i2c_xfer._entry_ptr = internal global ptr @i2c_xfer._entry, section ".printk_index", align 4
@i2c_xfer._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017au0828: %s(num = %d) addr = 0x%02x  len = 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@i2c_xfer._entry_ptr.14 = internal global ptr @i2c_xfer._entry.12, section ".printk_index", align 4
@i2c_readbytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.15, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_readbytes\00", [18 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr = internal global ptr @i2c_readbytes._entry, section ".printk_index", align 4
@i2c_readbytes._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017au0828:  RECV:\0A\00", [46 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr.18 = internal global ptr @i2c_readbytes._entry.16, section ".printk_index", align 4
@i2c_readbytes._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.2, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017au0828:  %02x\0A\00", [47 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr.21 = internal global ptr @i2c_readbytes._entry.19, section ".printk_index", align 4
@i2c_readbytes._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.2, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017au0828: \0A\00", [20 x i8] zeroinitializer }, align 32
@i2c_readbytes._entry_ptr.24 = internal global ptr @i2c_readbytes._entry.22, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@i2c_sendbytes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.25, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"i2c_sendbytes\00", [18 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr = internal global ptr @i2c_sendbytes._entry, section ".printk_index", align 4
@i2c_sendbytes._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 149, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017au0828: SEND: %02x\0A\00", [42 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr.28 = internal global ptr @i2c_sendbytes._entry.26, section ".printk_index", align 4
@i2c_sendbytes._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.25, ptr @.str.2, i32 173, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr.30 = internal global ptr @i2c_sendbytes._entry.29, section ".printk_index", align 4
@i2c_sendbytes._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.25, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@i2c_sendbytes._entry_ptr.32 = internal global ptr @i2c_sendbytes._entry.31, section ".printk_index", align 4
@do_i2c_scan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016au0828: %s: i2c scan: found device @ 0x%x  [%s]\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"do_i2c_scan\00", [20 x i8] zeroinitializer }, align 32
@do_i2c_scan._entry_ptr = internal global ptr @do_i2c_scan._entry, section ".printk_index", align 4
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"???\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"au8522\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tuner/xc5000\00", [19 x i8] zeroinitializer }, align 32
@i2c_devs = internal constant { <{ [98 x ptr], [30 x ptr] }>, [128 x i8] } { <{ [98 x ptr], [30 x ptr] }> <{ [98 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.36, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.37, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.38], [30 x ptr] zeroinitializer }>, [128 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 76, i64 88]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 76, i64 88]
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"i2c_scan\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 19, i32 12 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 356, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [25 x i8] c"au0828_i2c_adap_template\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 322, i32 33 }
@___asan_gen_.59 = private unnamed_addr constant [25 x i8] c"au0828_i2c_algo_template\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 315, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"au0828_i2c_client_template\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 328, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 364, i32 30 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 379, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 383, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 280, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 283, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 216, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 235, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 265, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 270, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 126, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 149, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 173, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 203, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 348, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 333, i32 16 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 334, i32 16 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 335, i32 16 }
@___asan_gen_.158 = private unnamed_addr constant [9 x i8] c"i2c_devs\00", align 1
@___asan_gen_.159 = private constant [41 x i8] c"../drivers/media/usb/au0828/au0828-i2c.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 332, i32 14 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_i2c_scan389, ptr @__UNIQUE_ID_i2c_scantype388, ptr @__param_i2c_scan, ptr @au0828_i2c_register._entry, ptr @au0828_i2c_register._entry.4, ptr @au0828_i2c_register._entry.7, ptr @au0828_i2c_register._entry_ptr, ptr @au0828_i2c_register._entry_ptr.6, ptr @au0828_i2c_register._entry_ptr.9, ptr @do_i2c_scan._entry, ptr @do_i2c_scan._entry_ptr, ptr @i2c_readbytes._entry, ptr @i2c_readbytes._entry.16, ptr @i2c_readbytes._entry.19, ptr @i2c_readbytes._entry.22, ptr @i2c_readbytes._entry_ptr, ptr @i2c_readbytes._entry_ptr.18, ptr @i2c_readbytes._entry_ptr.21, ptr @i2c_readbytes._entry_ptr.24, ptr @i2c_sendbytes._entry, ptr @i2c_sendbytes._entry.26, ptr @i2c_sendbytes._entry.29, ptr @i2c_sendbytes._entry.31, ptr @i2c_sendbytes._entry_ptr, ptr @i2c_sendbytes._entry_ptr.28, ptr @i2c_sendbytes._entry_ptr.30, ptr @i2c_sendbytes._entry_ptr.32, ptr @i2c_xfer._entry, ptr @i2c_xfer._entry.12, ptr @i2c_xfer._entry_ptr, ptr @i2c_xfer._entry_ptr.14, ptr @i2c_scan, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @au0828_i2c_adap_template, ptr @au0828_i2c_algo_template, ptr @au0828_i2c_client_template, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @i2c_devs], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_scan to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_i2c_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_i2c_adap_template to i32), i32 1360, i32 1696, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_i2c_algo_template to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_i2c_client_template to i32), i32 984, i32 1216, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_i2c_register._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au0828_i2c_register._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_xfer._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_readbytes._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sendbytes._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_i2c_scan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_devs to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @au0828_i2c_register(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %i2c_adap = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 5
  %1 = call ptr @memcpy(ptr %i2c_adap, ptr @au0828_i2c_adap_template, i32 1360)
  %i2c_algo = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 6
  %2 = call ptr @memcpy(ptr %i2c_algo, ptr @au0828_i2c_algo_template, i32 28)
  %i2c_client = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 7
  %3 = call ptr @memcpy(ptr %i2c_client, ptr @au0828_i2c_client_template, i32 984)
  %usbdev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %usbdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usbdev, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %parent = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 5, i32 9, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev3, ptr %parent, align 8
  %name = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 5, i32 12
  %call7 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.3, i32 noundef 48) #5
  %algo = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 5, i32 2
  %7 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %i2c_algo, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 5, i32 3
  %8 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %algo_data, align 4
  %v4l2_dev = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 13
  %driver_data.i.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 5, i32 9, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %v4l2_dev, ptr %driver_data.i.i, align 4
  %call13 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adap) #5
  %adapter = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %i2c_adap, ptr %adapter, align 8
  %i2c_rc = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 8
  %11 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i2c_rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %do.end18, label %do.end26

do.end18:                                         ; preds = %do.end2
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  %13 = load i32, ptr @i2c_scan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %do.end18.if.end29_crit_edge, label %if.then22

do.end18.if.end29_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then22:                                        ; preds = %do.end18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #5
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %buf.i, align 1, !annotation !92
  %addr.i = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 7, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then22
  %i.01.i = phi i32 [ 0, %if.then22 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.01.i to i16
  %15 = ptrtoint ptr %addr.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %addr.i, align 2
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %i2c_client, ptr noundef nonnull %buf.i, i32 noundef 0, i16 noundef zeroext 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %do.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i = shl nuw i32 %i.01.i, 1
  %arrayidx.i = getelementptr [128 x ptr], ptr @i2c_devs, i32 0, i32 %i.01.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.35, ptr %17
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.3, i32 noundef %shl.i, ptr noundef nonnull %spec.select.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %do_i2c_scan.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

do_i2c_scan.exit:                                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #5
  br label %if.end29

do.end26:                                         ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %if.end29

if.end29:                                         ; preds = %do.end26, %do_i2c_scan.exit, %do.end18.if.end29_crit_edge
  %18 = ptrtoint ptr %i2c_rc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i2c_rc, align 8
  ret i32 %19
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @au0828_i2c_unregister(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c_adap = getelementptr inbounds %struct.au0828_dev, ptr %dev, i32 0, i32 5
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msgs, i32 noundef %num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %0 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %num) #8
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp101 = icmp sgt i32 %num, 0
  br i1 %cmp101, label %do.end4.do.body5_crit_edge, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end4.do.body5_crit_edge:                       ; preds = %do.end4
  br label %do.body5

for.cond:                                         ; preds = %if.end61
  %inc66 = add nsw i32 %i.1, 1
  %cmp = icmp slt i32 %inc66, %num
  br i1 %cmp, label %for.cond.do.body5_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.do.body5_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5

do.body5:                                         ; preds = %for.cond.do.body5_crit_edge, %do.end4.do.body5_crit_edge
  %i.0102 = phi i32 [ %inc66, %for.cond.do.body5_crit_edge ], [ 0, %do.end4.do.body5_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %1 = load i32, ptr @au0828_debug, align 4
  %and6 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body5.do.end18_crit_edge, label %do.end11

do.body5.do.end18_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0102
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %3 to i32
  %len = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0102, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  %conv14 = zext i16 %5 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, i32 noundef %num, i32 noundef %conv, i32 noundef %conv14) #8
  br label %do.end18

do.end18:                                         ; preds = %do.end11, %do.body5.do.end18_crit_edge
  %arrayidx19 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0102
  %flags = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0102, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool22.not = icmp eq i16 %8, 0
  br i1 %tobool22.not, label %if.else, label %if.then23

if.then23:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #7
  %call25 = tail call fastcc i32 @i2c_readbytes(ptr noundef %i2c_adap, ptr noundef %arrayidx19)
  br label %if.end61

if.else:                                          ; preds = %do.end18
  %add = add nsw i32 %i.0102, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp26 = icmp slt i32 %add, %num
  br i1 %cmp26, label %land.lhs.true, label %if.else.if.else57_crit_edge

if.else.if.else57_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else57

land.lhs.true:                                    ; preds = %if.else
  %arrayidx29 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add
  %flags30 = getelementptr %struct.i2c_msg, ptr %msgs, i32 %add, i32 1
  %9 = ptrtoint ptr %flags30 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags30, align 2
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool33.not = icmp eq i16 %11, 0
  br i1 %tobool33.not, label %land.lhs.true.if.else57_crit_edge, label %land.lhs.true34

land.lhs.true.if.else57_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else57

land.lhs.true34:                                  ; preds = %land.lhs.true
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx19, align 4
  %14 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp42 = icmp eq i16 %13, %15
  br i1 %cmp42, label %if.then44, label %land.lhs.true34.if.else57_crit_edge

land.lhs.true34.if.else57_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else57

if.then44:                                        ; preds = %land.lhs.true34
  %call50 = tail call fastcc i32 @i2c_sendbytes(ptr noundef %i2c_adap, ptr noundef %arrayidx19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.then44.cleanup_crit_edge, label %if.end54

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end54:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  %call56 = tail call fastcc i32 @i2c_readbytes(ptr noundef %i2c_adap, ptr noundef %arrayidx29)
  br label %if.end61

if.else57:                                        ; preds = %land.lhs.true34.if.else57_crit_edge, %land.lhs.true.if.else57_crit_edge, %if.else.if.else57_crit_edge
  %call59 = tail call fastcc i32 @i2c_sendbytes(ptr noundef %i2c_adap, ptr noundef %arrayidx19)
  br label %if.end61

if.end61:                                         ; preds = %if.else57, %if.end54, %if.then23
  %retval1.0 = phi i32 [ %call25, %if.then23 ], [ %call56, %if.end54 ], [ %call59, %if.else57 ]
  %i.1 = phi i32 [ %i.0102, %if.then23 ], [ %add, %if.end54 ], [ %i.0102, %if.else57 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.0)
  %cmp62 = icmp slt i32 %retval1.0, 0
  br i1 %cmp62, label %if.end61.cleanup_crit_edge, label %for.cond

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end61.cleanup_crit_edge, %if.then44.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %num, %do.end4.cleanup_crit_edge ], [ %call50, %if.then44.cleanup_crit_edge ], [ %retval1.0, %if.end61.cleanup_crit_edge ], [ %num, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @au0828_functionality(ptr nocapture noundef readnone %adap) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592713
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_readbytes(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %i2c_clk_divider = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %i2c_clk_divider to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i2c_clk_divider, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %4 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @au0828_writereg(ptr noundef %1, i16 noundef zeroext 767, i32 noundef 1) #5
  %tuner_type = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tuner_type, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end3.if.end14_crit_edge [
    i32 76, label %do.end3.land.lhs.true_crit_edge
    i32 88, label %do.end3.land.lhs.true_crit_edge62
  ]

do.end3.land.lhs.true_crit_edge62:                ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

do.end3.land.lhs.true_crit_edge:                  ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

do.end3.if.end14_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

land.lhs.true:                                    ; preds = %do.end3.land.lhs.true_crit_edge, %do.end3.land.lhs.true_crit_edge62
  %tuner_addr = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %tuner_addr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tuner_addr, align 4
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %msg, align 4
  %12 = zext i8 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %12)
  %cmp11 = icmp eq i16 %11, %12
  %spec.select = select i1 %cmp11, i8 96, i8 %3
  br label %if.end14

if.end14:                                         ; preds = %land.lhs.true, %do.end3.if.end14_crit_edge
  %i2c_speed.0 = phi i8 [ %3, %do.end3.if.end14_crit_edge ], [ %spec.select, %land.lhs.true ]
  %conv15 = zext i8 %i2c_speed.0 to i32
  %call16 = tail call i32 @au0828_writereg(ptr noundef %1, i16 noundef zeroext 514, i32 noundef %conv15) #5
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %msg, align 4
  %conv18 = zext i16 %14 to i32
  %shl = shl nuw nsw i32 %conv18, 1
  %call19 = tail call i32 @au0828_writereg(ptr noundef %1, i16 noundef zeroext 515, i32 noundef %shl) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %15 = load i32, ptr @au0828_debug, align 4
  %and21 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end14.do.end31_crit_edge, label %do.end26

if.end14.do.end31_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end31

do.end26:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #8
  br label %do.end31

do.end31:                                         ; preds = %do.end26, %if.end14.do.end31_crit_edge
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp33 = icmp eq i16 %17, 0
  br i1 %cmp33, label %if.then35, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end31
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp4435.not = icmp eq i16 %19, 0
  br i1 %cmp4435.not, label %for.cond.preheader.for.body.i15.preheader_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.body.i15.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i15.preheader

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %conv4334 = zext i16 %19 to i32
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  br label %for.body

if.then35:                                        ; preds = %do.end31
  %call36 = tail call i32 @au0828_writereg(ptr noundef %1, i16 noundef zeroext 512, i32 noundef 32) #5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then35
  %count.06.i = phi i32 [ 0, %if.then35 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %20 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %algo_data, align 4
  %call.i.i = tail call i32 @au0828_readreg(ptr noundef %21, i16 noundef zeroext 513) #5
  %22 = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.not.i, label %if.end.i, label %i2c_wait_read_ack.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 5368700) #5
  %inc.i = add nuw nsw i32 %count.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %if.end.i.i2c_wait_read_ack.exit.thread_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end.i.i2c_wait_read_ack.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_wait_read_ack.exit.thread

i2c_wait_read_ack.exit:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.06.i)
  %cmp1.i.not = icmp eq i32 %count.06.i, 1000
  br i1 %cmp1.i.not, label %i2c_wait_read_ack.exit.i2c_wait_read_ack.exit.thread_crit_edge, label %i2c_wait_read_ack.exit.cleanup_crit_edge

i2c_wait_read_ack.exit.cleanup_crit_edge:         ; preds = %i2c_wait_read_ack.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

i2c_wait_read_ack.exit.i2c_wait_read_ack.exit.thread_crit_edge: ; preds = %i2c_wait_read_ack.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_wait_read_ack.exit.thread

i2c_wait_read_ack.exit.thread:                    ; preds = %i2c_wait_read_ack.exit.i2c_wait_read_ack.exit.thread_crit_edge, %if.end.i.i2c_wait_read_ack.exit.thread_crit_edge
  br label %cleanup

for.body:                                         ; preds = %do.end76.for.body_crit_edge, %for.body.lr.ph
  %conv4337 = phi i32 [ %conv4334, %for.body.lr.ph ], [ %conv43, %do.end76.for.body_crit_edge ]
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.end76.for.body_crit_edge ]
  %inc = add nuw nsw i32 %i.036, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv4337)
  %cmp48 = icmp ult i32 %inc, %conv4337
  %. = select i1 %cmp48, i32 96, i32 32
  %call52 = tail call i32 @au0828_writereg(ptr noundef %1, i16 noundef zeroext 512, i32 noundef %.) #5
  br label %for.body.i5

for.body.i5:                                      ; preds = %if.end.i8.for.body.i5_crit_edge, %for.body
  %count.06.i2 = phi i32 [ 0, %for.body ], [ %inc.i6, %if.end.i8.for.body.i5_crit_edge ]
  %24 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %algo_data, align 4
  %call.i.i3 = tail call i32 @au0828_readreg(ptr noundef %25, i16 noundef zeroext 513) #5
  %and.i.i = and i32 %call.i.i3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.not.i4 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.not.i4, label %if.end.i8, label %i2c_wait_read_done.exit

if.end.i8:                                        ; preds = %for.body.i5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 5368700) #5
  %inc.i6 = add nuw nsw i32 %count.06.i2, 1
  %exitcond.not.i7 = icmp eq i32 %inc.i6, 1000
  br i1 %exitcond.not.i7, label %if.end.i8.cleanup_crit_edge, label %if.end.i8.for.body.i5_crit_edge

if.end.i8.for.body.i5_crit_edge:                  ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i5

if.end.i8.cleanup_crit_edge:                      ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

i2c_wait_read_done.exit:                          ; preds = %for.body.i5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.06.i2)
  %cmp1.i10.not = icmp eq i32 %count.06.i2, 1000
  br i1 %cmp1.i10.not, label %i2c_wait_read_done.exit.cleanup_crit_edge, label %if.end57

i2c_wait_read_done.exit.cleanup_crit_edge:        ; preds = %i2c_wait_read_done.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end57:                                         ; preds = %i2c_wait_read_done.exit
  %call58 = tail call i32 @au0828_readreg(ptr noundef %1, i16 noundef zeroext 521) #5
  %conv60 = trunc i32 %call58 to i8
  %27 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %28, i32 %i.036
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv60, ptr %arrayidx, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %30 = load i32, ptr @au0828_debug, align 4
  %and62 = and i32 %30, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end57.do.end76_crit_edge, label %do.end67

if.end57.do.end76_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end76

do.end67:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf, align 4
  %arrayidx71 = getelementptr i8, ptr %32, i32 %i.036
  %33 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %34 to i32
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv72) #8
  br label %do.end76

do.end76:                                         ; preds = %do.end67, %if.end57.do.end76_crit_edge
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %len, align 4
  %conv43 = zext i16 %36 to i32
  %cmp44 = icmp ult i32 %inc, %conv43
  br i1 %cmp44, label %do.end76.for.body_crit_edge, label %do.end76.for.body.i15.preheader_crit_edge

do.end76.for.body.i15.preheader_crit_edge:        ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i15.preheader

do.end76.for.body_crit_edge:                      ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.i15.preheader:                           ; preds = %do.end76.for.body.i15.preheader_crit_edge, %for.cond.preheader.for.body.i15.preheader_crit_edge
  br label %for.body.i15

for.body.i15:                                     ; preds = %if.end.i18.for.body.i15_crit_edge, %for.body.i15.preheader
  %count.06.i13 = phi i32 [ %inc.i16, %if.end.i18.for.body.i15_crit_edge ], [ 0, %for.body.i15.preheader ]
  %37 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %algo_data, align 4
  %call.i.i14 = tail call i32 @au0828_readreg(ptr noundef %38, i16 noundef zeroext 513) #5
  %39 = and i32 %call.i.i14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %i2c_wait_done.exit, label %if.end.i18

if.end.i18:                                       ; preds = %for.body.i15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 5368700) #5
  %inc.i16 = add nuw nsw i32 %count.06.i13, 1
  %exitcond.not.i17 = icmp eq i32 %inc.i16, 1000
  br i1 %exitcond.not.i17, label %if.end.i18.cleanup_crit_edge, label %if.end.i18.for.body.i15_crit_edge

if.end.i18.for.body.i15_crit_edge:                ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i15

if.end.i18.cleanup_crit_edge:                     ; preds = %if.end.i18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

i2c_wait_done.exit:                               ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.06.i13)
  %cmp1.i20.not = icmp eq i32 %count.06.i13, 1000
  br i1 %cmp1.i20.not, label %i2c_wait_done.exit.cleanup_crit_edge, label %do.body81

i2c_wait_done.exit.cleanup_crit_edge:             ; preds = %i2c_wait_done.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body81:                                        ; preds = %i2c_wait_done.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %41 = load i32, ptr @au0828_debug, align 4
  %and82 = and i32 %41, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %do.body81.do.end92_crit_edge, label %do.end87

do.body81.do.end92_crit_edge:                     ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end92

do.end87:                                         ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #7
  %call89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #8
  br label %do.end92

do.end92:                                         ; preds = %do.end87, %do.body81.do.end92_crit_edge
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %len, align 4
  %conv94 = zext i16 %43 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end92, %i2c_wait_done.exit.cleanup_crit_edge, %if.end.i18.cleanup_crit_edge, %i2c_wait_read_done.exit.cleanup_crit_edge, %if.end.i8.cleanup_crit_edge, %i2c_wait_read_ack.exit.thread, %i2c_wait_read_ack.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv94, %do.end92 ], [ -5, %i2c_wait_done.exit.cleanup_crit_edge ], [ 0, %i2c_wait_read_ack.exit.thread ], [ -5, %i2c_wait_read_ack.exit.cleanup_crit_edge ], [ -5, %if.end.i18.cleanup_crit_edge ], [ -5, %if.end.i8.cleanup_crit_edge ], [ -5, %i2c_wait_read_done.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @i2c_sendbytes(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %i2c_clk_divider = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %i2c_clk_divider to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %i2c_clk_divider, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %4 = load i32, ptr @au0828_debug, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.25) #8
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call i32 @au0828_writereg(ptr noundef %1, i16 noundef zeroext 767, i32 noundef 1) #5
  %tuner_type = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %tuner_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tuner_type, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %6, label %do.end3.if.end19_crit_edge [
    i32 76, label %do.end3.land.lhs.true_crit_edge
    i32 88, label %do.end3.land.lhs.true_crit_edge92
  ]

do.end3.land.lhs.true_crit_edge92:                ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

do.end3.land.lhs.true_crit_edge:                  ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

do.end3.if.end19_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

land.lhs.true:                                    ; preds = %do.end3.land.lhs.true_crit_edge, %do.end3.land.lhs.true_crit_edge92
  %tuner_addr = getelementptr inbounds %struct.au0828_dev, ptr %1, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %tuner_addr to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tuner_addr, align 4
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %msg, align 4
  %12 = zext i8 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %11, i16 %12)
  %cmp11 = icmp eq i16 %11, %12
  br i1 %cmp11, label %if.then13, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %14)
  %cmp15 = icmp eq i16 %14, 64
  %. = select i1 %cmp15, i8 7, i8 96
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %land.lhs.true.if.end19_crit_edge, %do.end3.if.end19_crit_edge
  %i2c_speed.0 = phi i8 [ %3, %land.lhs.true.if.end19_crit_edge ], [ %3, %do.end3.if.end19_crit_edge ], [ %., %if.then13 ]
  %conv20 = zext i8 %i2c_speed.0 to i32
  %call21 = tail call i32 @au0828_writereg(ptr noundef %1, i16 noundef zeroext 514, i32 noundef %conv20) #5
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %msg, align 4
  %conv23 = zext i16 %16 to i32
  %shl = shl nuw nsw i32 %conv23, 1
  %call24 = tail call i32 @au0828_writereg(ptr noundef %1, i16 noundef zeroext 515, i32 noundef %shl) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %17 = load i32, ptr @au0828_debug, align 4
  %and26 = and i32 %17, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end19.do.end38_crit_edge, label %do.end31

if.end19.do.end38_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end38

do.end31:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %msg, align 4
  %conv34 = zext i16 %19 to i32
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %conv34) #8
  br label %do.end38

do.end38:                                         ; preds = %do.end31, %if.end19.do.end38_crit_edge
  %len39 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %20 = ptrtoint ptr %len39 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len39, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp41 = icmp eq i16 %21, 0
  br i1 %cmp41, label %if.then43, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end38
  %22 = ptrtoint ptr %len39 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %len39, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp5654.not = icmp eq i16 %23, 0
  br i1 %cmp5654.not, label %for.cond.preheader.for.body.i27.preheader_crit_edge, label %do.body58.lr.ph

for.cond.preheader.for.body.i27.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i27.preheader

do.body58.lr.ph:                                  ; preds = %for.cond.preheader
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  br label %do.body58

if.then43:                                        ; preds = %do.end38
  %call44 = tail call i32 @au0828_writereg(ptr noundef %1, i16 noundef zeroext 512, i32 noundef 32) #5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.then43
  %count.06.i = phi i32 [ 0, %if.then43 ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %algo_data, align 4
  %call.i.i = tail call i32 @au0828_readreg(ptr noundef %25, i16 noundef zeroext 513) #5
  %26 = and i32 %call.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i, label %i2c_wait_done.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 5368700) #5
  %inc.i = add nuw nsw i32 %count.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

i2c_wait_done.exit:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.06.i)
  %cmp1.i.not = icmp eq i32 %count.06.i, 1000
  br i1 %cmp1.i.not, label %i2c_wait_done.exit.cleanup_crit_edge, label %i2c_wait_done.exit.for.body.i5_crit_edge

i2c_wait_done.exit.for.body.i5_crit_edge:         ; preds = %i2c_wait_done.exit
  br label %for.body.i5

i2c_wait_done.exit.cleanup_crit_edge:             ; preds = %i2c_wait_done.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i5:                                      ; preds = %if.end.i8.for.body.i5_crit_edge, %i2c_wait_done.exit.for.body.i5_crit_edge
  %count.06.i3 = phi i32 [ %inc.i6, %if.end.i8.for.body.i5_crit_edge ], [ 0, %i2c_wait_done.exit.for.body.i5_crit_edge ]
  %28 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %algo_data, align 4
  %call.i.i4 = tail call i32 @au0828_readreg(ptr noundef %29, i16 noundef zeroext 513) #5
  %30 = and i32 %call.i.i4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.not.i, label %if.end.i8, label %i2c_wait_read_ack.exit

if.end.i8:                                        ; preds = %for.body.i5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 5368700) #5
  %inc.i6 = add nuw nsw i32 %count.06.i3, 1
  %exitcond.not.i7 = icmp eq i32 %inc.i6, 1000
  br i1 %exitcond.not.i7, label %if.end.i8.i2c_wait_read_ack.exit.thread_crit_edge, label %if.end.i8.for.body.i5_crit_edge

if.end.i8.for.body.i5_crit_edge:                  ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i5

if.end.i8.i2c_wait_read_ack.exit.thread_crit_edge: ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_wait_read_ack.exit.thread

i2c_wait_read_ack.exit:                           ; preds = %for.body.i5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.06.i3)
  %cmp1.i10.not = icmp eq i32 %count.06.i3, 1000
  br i1 %cmp1.i10.not, label %i2c_wait_read_ack.exit.i2c_wait_read_ack.exit.thread_crit_edge, label %i2c_wait_read_ack.exit.cleanup_crit_edge

i2c_wait_read_ack.exit.cleanup_crit_edge:         ; preds = %i2c_wait_read_ack.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

i2c_wait_read_ack.exit.i2c_wait_read_ack.exit.thread_crit_edge: ; preds = %i2c_wait_read_ack.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %i2c_wait_read_ack.exit.thread

i2c_wait_read_ack.exit.thread:                    ; preds = %i2c_wait_read_ack.exit.i2c_wait_read_ack.exit.thread_crit_edge, %if.end.i8.i2c_wait_read_ack.exit.thread_crit_edge
  br label %cleanup

do.body58:                                        ; preds = %if.end97.do.body58_crit_edge, %do.body58.lr.ph
  %i.056 = phi i32 [ 0, %do.body58.lr.ph ], [ %inc75, %if.end97.do.body58_crit_edge ]
  %strobe.055 = phi i32 [ 0, %do.body58.lr.ph ], [ %strobe.1, %if.end97.do.body58_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %32 = load i32, ptr @au0828_debug, align 4
  %and59 = and i32 %32, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %do.body58.do.end70_crit_edge, label %do.end64

do.body58.do.end70_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end70

do.end64:                                         ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %buf, align 4
  %arrayidx = getelementptr i8, ptr %34, i32 %i.056
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx, align 1
  %conv66 = zext i8 %36 to i32
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv66) #8
  br label %do.end70

do.end70:                                         ; preds = %do.end64, %do.body58.do.end70_crit_edge
  %37 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %buf, align 4
  %arrayidx72 = getelementptr i8, ptr %38, i32 %i.056
  %39 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx72, align 1
  %conv73 = zext i8 %40 to i32
  %call74 = tail call i32 @au0828_writereg(ptr noundef %1, i16 noundef zeroext 517, i32 noundef %conv73) #5
  %inc = add i32 %strobe.055, 1
  %inc75 = add nuw nsw i32 %i.056, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %inc)
  %cmp76 = icmp sgt i32 %inc, 3
  br i1 %cmp76, label %do.end70.if.then83_crit_edge, label %lor.lhs.false78

do.end70.if.then83_crit_edge:                     ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then83

lor.lhs.false78:                                  ; preds = %do.end70
  %41 = ptrtoint ptr %len39 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %len39, align 4
  %conv80 = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc75, i32 %conv80)
  %cmp81.not = icmp ult i32 %inc75, %conv80
  br i1 %cmp81.not, label %lor.lhs.false78.if.end97_crit_edge, label %lor.lhs.false78.if.then83_crit_edge

lor.lhs.false78.if.then83_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then83

lor.lhs.false78.if.end97_crit_edge:               ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then83:                                        ; preds = %lor.lhs.false78.if.then83_crit_edge, %do.end70.if.then83_crit_edge
  %43 = ptrtoint ptr %len39 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %len39, align 4
  %conv85 = zext i16 %44 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc75, i32 %conv85)
  %cmp86 = icmp ult i32 %inc75, %conv85
  %.73 = select i1 %cmp86, i32 65, i32 1
  %call91 = tail call i32 @au0828_writereg(ptr noundef %1, i16 noundef zeroext 512, i32 noundef %.73) #5
  br label %for.body.i16

for.body.i16:                                     ; preds = %if.end.i19.for.body.i16_crit_edge, %if.then83
  %count.06.i13 = phi i32 [ 0, %if.then83 ], [ %inc.i17, %if.end.i19.for.body.i16_crit_edge ]
  %45 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %algo_data, align 4
  %call.i.i14 = tail call i32 @au0828_readreg(ptr noundef %46, i16 noundef zeroext 513) #5
  %47 = and i32 %call.i.i14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i15 = icmp eq i32 %47, 0
  br i1 %tobool.not.i15, label %if.end.i19, label %i2c_wait_write_done.exit

if.end.i19:                                       ; preds = %for.body.i16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 5368700) #5
  %inc.i17 = add nuw nsw i32 %count.06.i13, 1
  %exitcond.not.i18 = icmp eq i32 %inc.i17, 1000
  br i1 %exitcond.not.i18, label %if.end.i19.cleanup_crit_edge, label %if.end.i19.for.body.i16_crit_edge

if.end.i19.for.body.i16_crit_edge:                ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i16

if.end.i19.cleanup_crit_edge:                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

i2c_wait_write_done.exit:                         ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.06.i13)
  %cmp1.i21.not = icmp eq i32 %count.06.i13, 1000
  br i1 %cmp1.i21.not, label %i2c_wait_write_done.exit.cleanup_crit_edge, label %i2c_wait_write_done.exit.if.end97_crit_edge

i2c_wait_write_done.exit.if.end97_crit_edge:      ; preds = %i2c_wait_write_done.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

i2c_wait_write_done.exit.cleanup_crit_edge:       ; preds = %i2c_wait_write_done.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end97:                                         ; preds = %i2c_wait_write_done.exit.if.end97_crit_edge, %lor.lhs.false78.if.end97_crit_edge
  %strobe.1 = phi i32 [ 0, %i2c_wait_write_done.exit.if.end97_crit_edge ], [ %inc, %lor.lhs.false78.if.end97_crit_edge ]
  %49 = ptrtoint ptr %len39 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %len39, align 4
  %conv55 = zext i16 %50 to i32
  %cmp56 = icmp ult i32 %inc75, %conv55
  br i1 %cmp56, label %if.end97.do.body58_crit_edge, label %if.end97.for.body.i27.preheader_crit_edge

if.end97.for.body.i27.preheader_crit_edge:        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i27.preheader

if.end97.do.body58_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body58

for.body.i27.preheader:                           ; preds = %if.end97.for.body.i27.preheader_crit_edge, %for.cond.preheader.for.body.i27.preheader_crit_edge
  br label %for.body.i27

for.body.i27:                                     ; preds = %if.end.i30.for.body.i27_crit_edge, %for.body.i27.preheader
  %count.06.i24 = phi i32 [ %inc.i28, %if.end.i30.for.body.i27_crit_edge ], [ 0, %for.body.i27.preheader ]
  %51 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %algo_data, align 4
  %call.i.i25 = tail call i32 @au0828_readreg(ptr noundef %52, i16 noundef zeroext 513) #5
  %53 = and i32 %call.i.i25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i26 = icmp eq i32 %53, 0
  br i1 %tobool.not.i26, label %i2c_wait_done.exit34, label %if.end.i30

if.end.i30:                                       ; preds = %for.body.i27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 5368700) #5
  %inc.i28 = add nuw nsw i32 %count.06.i24, 1
  %exitcond.not.i29 = icmp eq i32 %inc.i28, 1000
  br i1 %exitcond.not.i29, label %if.end.i30.cleanup_crit_edge, label %if.end.i30.for.body.i27_crit_edge

if.end.i30.for.body.i27_crit_edge:                ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i27

if.end.i30.cleanup_crit_edge:                     ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

i2c_wait_done.exit34:                             ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %count.06.i24)
  %cmp1.i32.not = icmp eq i32 %count.06.i24, 1000
  br i1 %cmp1.i32.not, label %i2c_wait_done.exit34.cleanup_crit_edge, label %do.body102

i2c_wait_done.exit34.cleanup_crit_edge:           ; preds = %i2c_wait_done.exit34
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body102:                                       ; preds = %i2c_wait_done.exit34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @au0828_debug to i32))
  %55 = load i32, ptr @au0828_debug, align 4
  %and103 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %do.body102.do.end113_crit_edge, label %do.end108

do.body102.do.end113_crit_edge:                   ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end113

do.end108:                                        ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #7
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #8
  br label %do.end113

do.end113:                                        ; preds = %do.end108, %do.body102.do.end113_crit_edge
  %56 = ptrtoint ptr %len39 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %len39, align 4
  %conv115 = zext i16 %57 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end113, %i2c_wait_done.exit34.cleanup_crit_edge, %if.end.i30.cleanup_crit_edge, %i2c_wait_write_done.exit.cleanup_crit_edge, %if.end.i19.cleanup_crit_edge, %i2c_wait_read_ack.exit.thread, %i2c_wait_read_ack.exit.cleanup_crit_edge, %i2c_wait_done.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv115, %do.end113 ], [ -5, %i2c_wait_done.exit.cleanup_crit_edge ], [ -5, %i2c_wait_done.exit34.cleanup_crit_edge ], [ 0, %i2c_wait_read_ack.exit.thread ], [ -5, %i2c_wait_read_ack.exit.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ], [ -5, %if.end.i30.cleanup_crit_edge ], [ -5, %if.end.i19.cleanup_crit_edge ], [ -5, %i2c_wait_write_done.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au0828_writereg(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au0828_readreg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !10, !11, !13, !15, !16, !17, !19, !20, !21, !23, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !69, !71, !72, !73, !74, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__param_i2c_scan, !1, !"__param_i2c_scan", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_i2c_scantype388, !1, !"__UNIQUE_ID_i2c_scantype388", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_i2c_scan389, !4, !"__UNIQUE_ID_i2c_scan389", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 21, i32 1}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 356, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @au0828_i2c_register._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @au0828_i2c_register._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 364, i32 30}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 379, i32 3}
!15 = !{ptr @au0828_i2c_register._entry.4, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @au0828_i2c_register._entry_ptr.6, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 383, i32 3}
!19 = !{ptr @au0828_i2c_register._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @au0828_i2c_register._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @i2c_scan, !22, !"i2c_scan", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 19, i32 12}
!23 = !{ptr @__param_str_i2c_scan, !1, !"__param_str_i2c_scan", i1 false, i1 false}
!24 = !{ptr @au0828_i2c_adap_template, !25, !"au0828_i2c_adap_template", i1 false, i1 false}
!25 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 322, i32 33}
!26 = !{ptr @au0828_i2c_algo_template, !27, !"au0828_i2c_algo_template", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 315, i32 35}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 280, i32 2}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @i2c_xfer._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @i2c_xfer._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 283, i32 3}
!35 = !{ptr @i2c_xfer._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @i2c_xfer._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 216, i32 2}
!39 = !{ptr @i2c_readbytes._entry, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @i2c_readbytes._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 235, i32 2}
!43 = !{ptr @i2c_readbytes._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @i2c_readbytes._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 265, i32 3}
!47 = !{ptr @i2c_readbytes._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @i2c_readbytes._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 270, i32 2}
!51 = !{ptr @i2c_readbytes._entry.22, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @i2c_readbytes._entry_ptr.24, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 126, i32 2}
!55 = !{ptr @i2c_sendbytes._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @i2c_sendbytes._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 149, i32 2}
!59 = !{ptr @i2c_sendbytes._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @i2c_sendbytes._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @i2c_sendbytes._entry.29, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 173, i32 3}
!63 = !{ptr @i2c_sendbytes._entry_ptr.30, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @i2c_sendbytes._entry.31, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 203, i32 2}
!66 = !{ptr @i2c_sendbytes._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @au0828_i2c_client_template, !68, !"au0828_i2c_client_template", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 328, i32 32}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 348, i32 3}
!71 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @do_i2c_scan._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @do_i2c_scan._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 333, i32 16}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 334, i32 16}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 335, i32 16}
!81 = !{ptr @i2c_devs, !82, !"i2c_devs", i1 false, i1 false}
!82 = !{!"../drivers/media/usb/au0828/au0828-i2c.c", i32 332, i32 14}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
