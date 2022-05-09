; ModuleID = '/llk/IR_all_yes/drivers/media/usb/b2c2/flexcop-usb.c_pt.bc'
source_filename = "../drivers/media/usb/b2c2/flexcop-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.flexcop_device = type { ptr, i32, i32, i32, i32, i32, %struct.dvb_adapter, ptr, %struct.dvb_net, %struct.dvb_demux, %struct.dmxdev, %struct.dmx_frontend, %struct.dmx_frontend, ptr, [3 x %struct.flexcop_i2c_adapter], %struct.mutex, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dmx_frontend = type { %struct.list_head, i32 }
%struct.flexcop_i2c_adapter = type { ptr, %struct.i2c_adapter, i8, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.flexcop_usb = type { ptr, ptr, ptr, i32, i32, [4 x ptr], ptr, [1213 x i8], i32, [80 x i8], %struct.mutex }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.usb_host_interface = type { %struct.usb_interface_descriptor, i32, ptr, ptr, ptr }
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%union.flexcop_ibi_value = type { %struct.anon.183 }
%struct.anon.183 = type { i32, i16 }

@__param_str_debug = internal constant [23 x i8] c"b2c2_flexcop_usb.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype388 = internal constant [36 x i8] c"b2c2_flexcop_usb.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug389 = internal constant [95 x i8] c"b2c2_flexcop_usb.parm=debug:set debugging level (1=info,ts=2,ctrl=4,i2c=8,v8mem=16 (or-able)).\00", section ".modinfo", align 1
@__initcall__kmod_b2c2_flexcop_usb__390_623_flexcop_usb_driver_init6 = internal global ptr @flexcop_usb_driver_init, section ".initcall6.init", align 4
@flexcop_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @flexcop_usb_probe, ptr @flexcop_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @flexcop_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_flexcop_usb_driver_exit = internal global ptr @flexcop_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author391 = internal constant [72 x i8] c"b2c2_flexcop_usb.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description392 = internal constant [85 x i8] c"b2c2_flexcop_usb.description=Technisat/B2C2 FlexCop II/IIb/III Digital TV USB Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file393 = internal constant [62 x i8] c"b2c2_flexcop_usb.file=drivers/media/usb/b2c2/b2c2-flexcop-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license394 = internal constant [29 x i8] c"b2c2_flexcop_usb.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"b2c2_flexcop_usb\00", [47 x i8] zeroinitializer }, align 32
@flexcop_usb_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 2807, i16 257, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@flexcop_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013flexcop_usb: out of memory\0A\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"flexcop_usb_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/usb/b2c2/flexcop-usb.c\00", [59 x i8] zeroinitializer }, align 32
@flexcop_usb_probe._entry_ptr = internal global ptr @flexcop_usb_probe._entry, section ".printk_index", align 4
@flexcop_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&fc_usb->data_mutex\00", [44 x i8] zeroinitializer }, align 32
@flexcop_usb_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016flexcop_usb: %s successfully initialized and connected.\0A\00", [37 x i8] zeroinitializer }, align 32
@flexcop_usb_probe._entry_ptr.7 = internal global ptr @flexcop_usb_probe._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Technisat/B2C2 FlexCop II/IIb/III Digital TV USB Driver\00", [40 x i8] zeroinitializer }, align 32
@flexcop_usb_readwrite_dw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013flexcop_usb: error while %s dword from %d (%d).\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"flexcop_usb_readwrite_dw\00", [39 x i8] zeroinitializer }, align 32
@flexcop_usb_readwrite_dw._entry_ptr = internal global ptr @flexcop_usb_readwrite_dw._entry, section ".printk_index", align 4
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reading\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"writing\00", [24 x i8] zeroinitializer }, align 32
@flexcop_usb_i2c_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 240, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013flexcop_usb: Buffer size bigger than max URB control message\0A\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"flexcop_usb_i2c_req\00", [44 x i8] zeroinitializer }, align 32
@flexcop_usb_i2c_req._entry_ptr = internal global ptr @flexcop_usb_i2c_req._entry, section ".printk_index", align 4
@flexcop_usb_i2c_req._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.3, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unsupported function for i2c_req %x\0A\00", [59 x i8] zeroinitializer }, align 32
@flexcop_usb_i2c_req._entry_ptr.17 = internal global ptr @flexcop_usb_i2c_req._entry.15, section ".printk_index", align 4
@flexcop_usb_i2c_req._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.3, i32 270, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"i2c %2d: %02x %02x %02x %02x %02x %02x\0A\00", [56 x i8] zeroinitializer }, align 32
@flexcop_usb_i2c_req._entry_ptr.20 = internal global ptr @flexcop_usb_i2c_req._entry.18, section ".printk_index", align 4
@flexcop_usb_memory_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"flexcop_usb_memory_req\00", [41 x i8] zeroinitializer }, align 32
@flexcop_usb_memory_req._entry_ptr = internal global ptr @flexcop_usb_memory_req._entry, section ".printk_index", align 4
@flexcop_usb_v8_memory_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.23, ptr @.str.3, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"flexcop_usb_v8_memory_req\00", [38 x i8] zeroinitializer }, align 32
@flexcop_usb_v8_memory_req._entry_ptr = internal global ptr @flexcop_usb_v8_memory_req._entry, section ".printk_index", align 4
@flexcop_usb_v8_memory_req._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unsupported request for v8_mem_req %x.\0A\00", [56 x i8] zeroinitializer }, align 32
@flexcop_usb_v8_memory_req._entry_ptr.26 = internal global ptr @flexcop_usb_v8_memory_req._entry.24, section ".printk_index", align 4
@flexcop_usb_v8_memory_req._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.3, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"v8mem: %02x %02x %04x %04x, len: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@flexcop_usb_v8_memory_req._entry_ptr.29 = internal global ptr @flexcop_usb_v8_memory_req._entry.27, section ".printk_index", align 4
@flexcop_usb_v8_memory_req._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.3, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x \00", [26 x i8] zeroinitializer }, align 32
@flexcop_usb_v8_memory_req._entry_ptr.32 = internal global ptr @flexcop_usb_v8_memory_req._entry.30, section ".printk_index", align 4
@flexcop_usb_v8_memory_req._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.23, ptr @.str.3, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@flexcop_usb_v8_memory_req._entry_ptr.35 = internal global ptr @flexcop_usb_v8_memory_req._entry.33, section ".printk_index", align 4
@flexcop_usb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.3, i32 508, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013flexcop_usb: set interface failed.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"flexcop_usb_init\00", [47 x i8] zeroinitializer }, align 32
@flexcop_usb_init._entry_ptr = internal global ptr @flexcop_usb_init._entry, section ".printk_index", align 4
@flexcop_usb_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013flexcop_usb: cannot handle USB speed because it is too slow.\0A\00", [32 x i8] zeroinitializer }, align 32
@flexcop_usb_init._entry_ptr.40 = internal global ptr @flexcop_usb_init._entry.38, section ".printk_index", align 4
@flexcop_usb_init._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.3, i32 523, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016flexcop_usb: running at FULL speed.\0A\00", [57 x i8] zeroinitializer }, align 32
@flexcop_usb_init._entry_ptr.43 = internal global ptr @flexcop_usb_init._entry.41, section ".printk_index", align 4
@flexcop_usb_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.3, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016flexcop_usb: running at HIGH speed.\0A\00", [57 x i8] zeroinitializer }, align 32
@flexcop_usb_init._entry_ptr.46 = internal global ptr @flexcop_usb_init._entry.44, section ".printk_index", align 4
@flexcop_usb_init._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.37, ptr @.str.3, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013flexcop_usb: cannot handle USB speed because it is unknown.\0A\00", [33 x i8] zeroinitializer }, align 32
@flexcop_usb_init._entry_ptr.49 = internal global ptr @flexcop_usb_init._entry.47, section ".printk_index", align 4
@flexcop_usb_transfer_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"creating %d iso-urbs with %d frames each of %d bytes size = %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"flexcop_usb_transfer_init\00", [38 x i8] zeroinitializer }, align 32
@flexcop_usb_transfer_init._entry_ptr = internal global ptr @flexcop_usb_transfer_init._entry, section ".printk_index", align 4
@flexcop_usb_transfer_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.3, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"initializing and submitting urb no. %d (buf_offset: %d).\0A\00", [38 x i8] zeroinitializer }, align 32
@flexcop_usb_transfer_init._entry_ptr.54 = internal global ptr @flexcop_usb_transfer_init._entry.52, section ".printk_index", align 4
@flexcop_usb_transfer_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.3, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"urb no: %d, frame: %d, frame_offset: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@flexcop_usb_transfer_init._entry_ptr.57 = internal global ptr @flexcop_usb_transfer_init._entry.55, section ".printk_index", align 4
@flexcop_usb_transfer_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.51, ptr @.str.3, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013flexcop_usb: submitting urb %d failed with %d.\0A\00", [46 x i8] zeroinitializer }, align 32
@flexcop_usb_transfer_init._entry_ptr.60 = internal global ptr @flexcop_usb_transfer_init._entry.58, section ".printk_index", align 4
@flexcop_usb_transfer_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.51, ptr @.str.3, i32 486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"submitted urb no. %d.\0A\00", [41 x i8] zeroinitializer }, align 32
@flexcop_usb_transfer_init._entry_ptr.63 = internal global ptr @flexcop_usb_transfer_init._entry.61, section ".printk_index", align 4
@flexcop_usb_urb_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"urb completed, bufsize: %d actlen; %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"flexcop_usb_urb_complete\00", [39 x i8] zeroinitializer }, align 32
@flexcop_usb_urb_complete._entry_ptr = internal global ptr @flexcop_usb_urb_complete._entry, section ".printk_index", align 4
@flexcop_usb_urb_complete._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.3, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013flexcop_usb: iso frame descriptor %d has an error: %d\0A\0A\00", [38 x i8] zeroinitializer }, align 32
@flexcop_usb_urb_complete._entry_ptr.68 = internal global ptr @flexcop_usb_urb_complete._entry.66, section ".printk_index", align 4
@flexcop_usb_urb_complete._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.3, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"passed %d bytes to the demux\0A\00", [34 x i8] zeroinitializer }, align 32
@flexcop_usb_urb_complete._entry_ptr.71 = internal global ptr @flexcop_usb_urb_complete._entry.69, section ".printk_index", align 4
@flexcop_usb_process_frame._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"tmp_buffer_length=%d, buffer_length=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"flexcop_usb_process_frame\00", [38 x i8] zeroinitializer }, align 32
@flexcop_usb_process_frame._entry_ptr = internal global ptr @flexcop_usb_process_frame._entry, section ".printk_index", align 4
@flexcop_usb_process_frame._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.3, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"not ts packet %*ph\0A\00", [44 x i8] zeroinitializer }, align 32
@flexcop_usb_process_frame._entry_ptr.76 = internal global ptr @flexcop_usb_process_frame._entry.74, section ".printk_index", align 4
@flexcop_usb_process_frame._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.73, ptr @.str.3, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wrong packet type\0A\00", [45 x i8] zeroinitializer }, align 32
@flexcop_usb_process_frame._entry_ptr.79 = internal global ptr @flexcop_usb_process_frame._entry.77, section ".printk_index", align 4
@flexcop_usb_process_frame._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.73, ptr @.str.3, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wrong header\0A\00", [18 x i8] zeroinitializer }, align 32
@flexcop_usb_process_frame._entry_ptr.82 = internal global ptr @flexcop_usb_process_frame._entry.80, section ".printk_index", align 4
@flexcop_usb_transfer_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unlinking/killing urb no. %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"flexcop_usb_transfer_exit\00", [38 x i8] zeroinitializer }, align 32
@flexcop_usb_transfer_exit._entry_ptr = internal global ptr @flexcop_usb_transfer_exit._entry, section ".printk_index", align 4
@flexcop_usb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.3, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016flexcop_usb: %s successfully deinitialized and disconnected.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"flexcop_usb_disconnect\00", [41 x i8] zeroinitializer }, align 32
@flexcop_usb_disconnect._entry_ptr = internal global ptr @flexcop_usb_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.87 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7]
@___asan_gen_.88 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 35, i32 12 }
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"flexcop_usb_driver\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 616, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 623, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"flexcop_usb_table\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 609, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 551, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 558, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 587, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 93, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 240, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 261, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 267, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 204, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 118, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 140, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 143, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 170, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 508, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 519, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 523, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 526, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 530, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 434, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 460, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 475, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 483, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 486, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 382, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 387, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 391, i32 5 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 334, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 356, i32 6 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 361, i32 5 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 366, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 416, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.332 = private constant [40 x i8] c"../drivers/media/usb/b2c2/flexcop-usb.c\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 606, i32 2 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @__UNIQUE_ID_author391, ptr @__UNIQUE_ID_debug389, ptr @__UNIQUE_ID_debugtype388, ptr @__UNIQUE_ID_description392, ptr @__UNIQUE_ID_file393, ptr @__UNIQUE_ID_license394, ptr @__exitcall_flexcop_usb_driver_exit, ptr @__initcall__kmod_b2c2_flexcop_usb__390_623_flexcop_usb_driver_init6, ptr @__param_debug, ptr @flexcop_usb_disconnect._entry, ptr @flexcop_usb_disconnect._entry_ptr, ptr @flexcop_usb_driver_exit, ptr @flexcop_usb_i2c_req._entry, ptr @flexcop_usb_i2c_req._entry.15, ptr @flexcop_usb_i2c_req._entry.18, ptr @flexcop_usb_i2c_req._entry_ptr, ptr @flexcop_usb_i2c_req._entry_ptr.17, ptr @flexcop_usb_i2c_req._entry_ptr.20, ptr @flexcop_usb_init._entry, ptr @flexcop_usb_init._entry.38, ptr @flexcop_usb_init._entry.41, ptr @flexcop_usb_init._entry.44, ptr @flexcop_usb_init._entry.47, ptr @flexcop_usb_init._entry_ptr, ptr @flexcop_usb_init._entry_ptr.40, ptr @flexcop_usb_init._entry_ptr.43, ptr @flexcop_usb_init._entry_ptr.46, ptr @flexcop_usb_init._entry_ptr.49, ptr @flexcop_usb_memory_req._entry, ptr @flexcop_usb_memory_req._entry_ptr, ptr @flexcop_usb_probe._entry, ptr @flexcop_usb_probe._entry.5, ptr @flexcop_usb_probe._entry_ptr, ptr @flexcop_usb_probe._entry_ptr.7, ptr @flexcop_usb_process_frame._entry, ptr @flexcop_usb_process_frame._entry.74, ptr @flexcop_usb_process_frame._entry.77, ptr @flexcop_usb_process_frame._entry.80, ptr @flexcop_usb_process_frame._entry_ptr, ptr @flexcop_usb_process_frame._entry_ptr.76, ptr @flexcop_usb_process_frame._entry_ptr.79, ptr @flexcop_usb_process_frame._entry_ptr.82, ptr @flexcop_usb_readwrite_dw._entry, ptr @flexcop_usb_readwrite_dw._entry_ptr, ptr @flexcop_usb_transfer_exit._entry, ptr @flexcop_usb_transfer_exit._entry_ptr, ptr @flexcop_usb_transfer_init._entry, ptr @flexcop_usb_transfer_init._entry.52, ptr @flexcop_usb_transfer_init._entry.55, ptr @flexcop_usb_transfer_init._entry.58, ptr @flexcop_usb_transfer_init._entry.61, ptr @flexcop_usb_transfer_init._entry_ptr, ptr @flexcop_usb_transfer_init._entry_ptr.54, ptr @flexcop_usb_transfer_init._entry_ptr.57, ptr @flexcop_usb_transfer_init._entry_ptr.60, ptr @flexcop_usb_transfer_init._entry_ptr.63, ptr @flexcop_usb_urb_complete._entry, ptr @flexcop_usb_urb_complete._entry.66, ptr @flexcop_usb_urb_complete._entry.69, ptr @flexcop_usb_urb_complete._entry_ptr, ptr @flexcop_usb_urb_complete._entry_ptr.68, ptr @flexcop_usb_urb_complete._entry_ptr.71, ptr @flexcop_usb_v8_memory_req._entry, ptr @flexcop_usb_v8_memory_req._entry.24, ptr @flexcop_usb_v8_memory_req._entry.27, ptr @flexcop_usb_v8_memory_req._entry.30, ptr @flexcop_usb_v8_memory_req._entry.33, ptr @flexcop_usb_v8_memory_req._entry_ptr, ptr @flexcop_usb_v8_memory_req._entry_ptr.26, ptr @flexcop_usb_v8_memory_req._entry_ptr.29, ptr @flexcop_usb_v8_memory_req._entry_ptr.32, ptr @flexcop_usb_v8_memory_req._entry_ptr.35, ptr @debug, ptr @flexcop_usb_driver, ptr @.str, ptr @flexcop_usb_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @flexcop_usb_probe.__key, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_readwrite_dw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_i2c_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_i2c_req._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_i2c_req._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_memory_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_v8_memory_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_v8_memory_req._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_v8_memory_req._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_v8_memory_req._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_v8_memory_req._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_init._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_init._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_transfer_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_transfer_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_transfer_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_transfer_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_transfer_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_urb_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_urb_complete._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_urb_complete._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_process_frame._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_process_frame._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_process_frame._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_process_frame._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_transfer_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flexcop_usb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcop_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @flexcop_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @flexcop_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb_deregister(ptr noundef nonnull @flexcop_usb_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcop_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %call1 = tail call ptr @flexcop_device_kmalloc(i32 noundef 1432) #6
  %cmp = icmp eq ptr %call1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %bus_specific = getelementptr inbounds %struct.flexcop_device, ptr %call1, i32 0, i32 27
  %2 = ptrtoint ptr %bus_specific to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_specific, align 8
  %fc_dev = getelementptr inbounds %struct.flexcop_usb, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %fc_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %fc_dev, align 4
  %data_mutex = getelementptr inbounds %struct.flexcop_usb, ptr %3, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %data_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @flexcop_usb_probe.__key) #6
  %read_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %call1, i32 0, i32 22
  %5 = ptrtoint ptr %read_ibi_reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @flexcop_usb_read_ibi_reg, ptr %read_ibi_reg, align 4
  %write_ibi_reg = getelementptr inbounds %struct.flexcop_device, ptr %call1, i32 0, i32 23
  %6 = ptrtoint ptr %write_ibi_reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @flexcop_usb_write_ibi_reg, ptr %write_ibi_reg, align 8
  %i2c_request = getelementptr inbounds %struct.flexcop_device, ptr %call1, i32 0, i32 24
  %7 = ptrtoint ptr %i2c_request to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @flexcop_usb_i2c_request, ptr %i2c_request, align 4
  %get_mac_addr = getelementptr inbounds %struct.flexcop_device, ptr %call1, i32 0, i32 26
  %8 = ptrtoint ptr %get_mac_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @flexcop_usb_get_mac_addr, ptr %get_mac_addr, align 4
  %stream_control = getelementptr inbounds %struct.flexcop_device, ptr %call1, i32 0, i32 25
  %9 = ptrtoint ptr %stream_control to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @flexcop_usb_stream_control, ptr %stream_control, align 8
  %pid_filtering = getelementptr inbounds %struct.flexcop_device, ptr %call1, i32 0, i32 19
  %10 = ptrtoint ptr %pid_filtering to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %pid_filtering, align 8
  %bus_type = getelementptr inbounds %struct.flexcop_device, ptr %call1, i32 0, i32 5
  %11 = ptrtoint ptr %bus_type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bus_type, align 4
  %12 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %1, ptr %call1, align 8
  %owner = getelementptr inbounds %struct.flexcop_device, ptr %call1, i32 0, i32 16
  %13 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %owner, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr.i, ptr %3, align 4
  %uintf = getelementptr inbounds %struct.flexcop_usb, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %uintf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %intf, ptr %uintf, align 4
  %call.i = tail call i32 @usb_set_interface(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #9
  br label %err_kfree

if.end.i:                                         ; preds = %if.end
  %16 = ptrtoint ptr %uintf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %uintf, align 4
  %cur_altsetting.i = getelementptr inbounds %struct.usb_interface, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %cur_altsetting.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cur_altsetting.i, align 4
  %bNumEndpoints.i = getelementptr inbounds %struct.usb_interface_descriptor, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %bNumEndpoints.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bNumEndpoints.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %cmp.i = icmp eq i8 %21, 0
  br i1 %cmp.i, label %if.end.i.err_kfree_crit_edge, label %if.end4.i

if.end.i.err_kfree_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_kfree

if.end4.i:                                        ; preds = %if.end.i
  %endpoint.i = getelementptr inbounds %struct.usb_host_interface, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %endpoint.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %endpoint.i, align 4
  %bmAttributes.i.i.i = getelementptr %struct.usb_host_endpoint, ptr %23, i32 1, i32 0, i32 3
  %24 = ptrtoint ptr %bmAttributes.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %bmAttributes.i.i.i, align 1
  %26 = and i8 %25, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %26)
  %cmp.i.not.i.i = icmp eq i8 %26, 1
  br i1 %cmp.i.not.i.i, label %usb_endpoint_is_isoc_in.exit.i, label %if.end4.i.err_kfree_crit_edge

if.end4.i.err_kfree_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_kfree

usb_endpoint_is_isoc_in.exit.i:                   ; preds = %if.end4.i
  %bEndpointAddress.i.i.i = getelementptr %struct.usb_host_endpoint, ptr %23, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %bEndpointAddress.i.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bEndpointAddress.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %28)
  %tobool9.not.i = icmp sgt i8 %28, -1
  br i1 %tobool9.not.i, label %usb_endpoint_is_isoc_in.exit.i.err_kfree_crit_edge, label %if.end11.i

usb_endpoint_is_isoc_in.exit.i.err_kfree_crit_edge: ; preds = %usb_endpoint_is_isoc_in.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_kfree

if.end11.i:                                       ; preds = %usb_endpoint_is_isoc_in.exit.i
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %speed.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %32, label %do.end33.i [
    i32 1, label %do.end15.i
    i32 2, label %if.end11.i.if.end11_crit_edge
    i32 3, label %do.end27.i
  ]

if.end11.i.if.end11_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.end15.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #9
  br label %err_kfree

do.end27.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.end33.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #9
  br label %err_kfree

if.end11:                                         ; preds = %do.end27.i, %if.end11.i.if.end11_crit_edge
  %.str.45.sink.i = phi ptr [ @.str.45, %do.end27.i ], [ @.str.42, %if.end11.i.if.end11_crit_edge ]
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.45.sink.i) #9
  %34 = ptrtoint ptr %uintf to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %uintf, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %35, i32 0, i32 7, i32 8
  %36 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %3, ptr %driver_data.i.i.i, align 4
  %call12 = tail call i32 @flexcop_device_initialize(ptr noundef nonnull %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %if.end11.err_usb_exit_crit_edge

if.end11.err_usb_exit_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_usb_exit

if.end15:                                         ; preds = %if.end11
  %37 = ptrtoint ptr %uintf to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %uintf, align 4
  %cur_altsetting.i50 = getelementptr inbounds %struct.usb_interface, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %cur_altsetting.i50 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %cur_altsetting.i50, align 4
  %endpoint.i51 = getelementptr inbounds %struct.usb_host_interface, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %endpoint.i51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %endpoint.i51, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %wMaxPacketSize.i, align 4
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #6
  %conv.i = zext i16 %45 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 4
  %46 = load i32, ptr @debug, align 4
  %and.i = and i32 %46, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i52 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i52, label %if.end15.do.end4.i_crit_edge, label %do.end.i54

if.end15.do.end4.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4.i

do.end.i54:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %call.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef 4, i32 noundef 4, i32 noundef %conv.i, i32 noundef %mul.i) #9
  br label %do.end4.i

do.end4.i:                                        ; preds = %do.end.i54, %if.end15.do.end4.i_crit_edge
  %47 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %3, align 4
  %dma_addr.i = getelementptr inbounds %struct.flexcop_usb, ptr %3, i32 0, i32 4
  %call5.i = tail call ptr @usb_alloc_coherent(ptr noundef %48, i32 noundef %mul.i, i32 noundef 3264, ptr noundef %dma_addr.i) #6
  %iso_buffer.i = getelementptr inbounds %struct.flexcop_usb, ptr %3, i32 0, i32 2
  %49 = ptrtoint ptr %iso_buffer.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call5.i, ptr %iso_buffer.i, align 4
  %cmp.i55 = icmp eq ptr %call5.i, null
  br i1 %cmp.i55, label %do.end4.i.err_fc_exit_crit_edge, label %if.end9.i

do.end4.i.err_fc_exit_crit_edge:                  ; preds = %do.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_fc_exit

if.end9.i:                                        ; preds = %do.end4.i
  %50 = call ptr @memset(ptr %call5.i, i32 0, i32 %mul.i)
  %buffer_size.i = getelementptr inbounds %struct.flexcop_usb, ptr %3, i32 0, i32 3
  %51 = ptrtoint ptr %buffer_size.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul.i, ptr %buffer_size.i, align 4
  %call13.i = tail call ptr @usb_alloc_urb(i32 noundef 4, i32 noundef 2592) #6
  %arrayidx14.i = getelementptr %struct.flexcop_usb, ptr %3, i32 0, i32 5, i32 0
  %52 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call13.i, ptr %arrayidx14.i, align 4
  %cmp17.i = icmp eq ptr %call13.i, null
  br i1 %cmp17.i, label %if.end9.i.urb_error.i_crit_edge, label %for.cond.i

if.end9.i.urb_error.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %urb_error.i

for.cond.i:                                       ; preds = %if.end9.i
  %call13.1.i = tail call ptr @usb_alloc_urb(i32 noundef 4, i32 noundef 2592) #6
  %arrayidx14.1.i = getelementptr %struct.flexcop_usb, ptr %3, i32 0, i32 5, i32 1
  %53 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call13.1.i, ptr %arrayidx14.1.i, align 4
  %cmp17.1.i = icmp eq ptr %call13.1.i, null
  br i1 %cmp17.1.i, label %for.cond.i.urb_error.i_crit_edge, label %for.cond.1.i

for.cond.i.urb_error.i_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %urb_error.i

for.cond.1.i:                                     ; preds = %for.cond.i
  %call13.2.i = tail call ptr @usb_alloc_urb(i32 noundef 4, i32 noundef 2592) #6
  %arrayidx14.2.i = getelementptr %struct.flexcop_usb, ptr %3, i32 0, i32 5, i32 2
  %54 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call13.2.i, ptr %arrayidx14.2.i, align 4
  %cmp17.2.i = icmp eq ptr %call13.2.i, null
  br i1 %cmp17.2.i, label %for.cond.1.i.urb_error.i_crit_edge, label %for.cond.2.i

for.cond.1.i.urb_error.i_crit_edge:               ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %urb_error.i

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %call13.3.i = tail call ptr @usb_alloc_urb(i32 noundef 4, i32 noundef 2592) #6
  %arrayidx14.3.i = getelementptr %struct.flexcop_usb, ptr %3, i32 0, i32 5, i32 3
  %55 = ptrtoint ptr %arrayidx14.3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call13.3.i, ptr %arrayidx14.3.i, align 4
  %cmp17.3.i = icmp eq ptr %call13.3.i, null
  br i1 %cmp17.3.i, label %for.cond.2.i.urb_error.i_crit_edge, label %for.cond.3.i

for.cond.2.i.urb_error.i_crit_edge:               ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %urb_error.i

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %mul44.i = shl nuw nsw i32 %conv.i, 2
  %add69.1.i = shl nuw nsw i32 %conv.i, 1
  %add69.2.i = mul nuw nsw i32 %conv.i, 3
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.inc97.i.for.body24.i_crit_edge, %for.cond.3.i
  %i.1171.i = phi i32 [ 0, %for.cond.3.i ], [ %inc98.i, %for.inc97.i.for.body24.i_crit_edge ]
  %buffer_offset.0170.i = phi i32 [ 0, %for.cond.3.i ], [ %add.i, %for.inc97.i.for.body24.i_crit_edge ]
  %arrayidx26.i = getelementptr %struct.flexcop_usb, ptr %3, i32 0, i32 5, i32 %i.1171.i
  %56 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx26.i, align 4
  %58 = load i32, ptr @debug, align 4
  %and28.i = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %for.body24.i.do.end38.i_crit_edge, label %do.end33.i57

for.body24.i.do.end38.i_crit_edge:                ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end38.i

do.end33.i57:                                     ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #8
  %call35.i56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %i.1171.i, i32 noundef %buffer_offset.0170.i) #9
  br label %do.end38.i

do.end38.i:                                       ; preds = %do.end33.i57, %for.body24.i.do.end38.i_crit_edge
  %59 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %3, align 4
  %dev.i = getelementptr inbounds %struct.urb, ptr %57, i32 0, i32 8
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %dev.i, align 4
  %context.i = getelementptr inbounds %struct.urb, ptr %57, i32 0, i32 27
  %62 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %3, ptr %context.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %57, i32 0, i32 28
  %63 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @flexcop_usb_urb_complete, ptr %complete.i, align 4
  %64 = load ptr, ptr %3, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 8
  %shl.i.i = shl i32 %66, 8
  %or42.i = or i32 %shl.i.i, 32896
  %pipe.i = getelementptr inbounds %struct.urb, ptr %57, i32 0, i32 10
  %67 = ptrtoint ptr %pipe.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or42.i, ptr %pipe.i, align 4
  %transfer_flags.i = getelementptr inbounds %struct.urb, ptr %57, i32 0, i32 13
  %68 = ptrtoint ptr %transfer_flags.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %transfer_flags.i, align 4
  %interval.i = getelementptr inbounds %struct.urb, ptr %57, i32 0, i32 25
  %69 = ptrtoint ptr %interval.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %interval.i, align 4
  %number_of_packets.i = getelementptr inbounds %struct.urb, ptr %57, i32 0, i32 24
  %70 = ptrtoint ptr %number_of_packets.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 4, ptr %number_of_packets.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %57, i32 0, i32 19
  %71 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %mul44.i, ptr %transfer_buffer_length.i, align 4
  %72 = ptrtoint ptr %iso_buffer.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %iso_buffer.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %73, i32 %buffer_offset.0170.i
  %transfer_buffer.i = getelementptr inbounds %struct.urb, ptr %57, i32 0, i32 14
  %74 = ptrtoint ptr %transfer_buffer.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr.i58, ptr %transfer_buffer.i, align 4
  %75 = load i32, ptr @debug, align 4
  %and53.i = and i32 %75, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.i)
  %tobool54.not.i = icmp eq i32 %and53.i, 0
  br i1 %tobool54.not.i, label %do.end38.i.do.end63.i_crit_edge, label %do.end58.i

do.end38.i.do.end63.i_crit_edge:                  ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63.i

do.end58.i:                                       ; preds = %do.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  %call60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %i.1171.i, i32 noundef 0, i32 noundef 0) #9
  br label %do.end63.i

do.end63.i:                                       ; preds = %do.end58.i, %do.end38.i.do.end63.i_crit_edge
  %arrayidx64.i = getelementptr %struct.urb, ptr %57, i32 0, i32 29, i32 0
  %76 = ptrtoint ptr %arrayidx64.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %arrayidx64.i, align 4
  %length.i = getelementptr %struct.urb, ptr %57, i32 0, i32 29, i32 0, i32 1
  %77 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %conv.i, ptr %length.i, align 4
  %78 = load i32, ptr @debug, align 4
  %and53.1.i = and i32 %78, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.1.i)
  %tobool54.not.1.i = icmp eq i32 %and53.1.i, 0
  br i1 %tobool54.not.1.i, label %do.end63.i.do.end63.1.i_crit_edge, label %do.end58.1.i

do.end63.i.do.end63.1.i_crit_edge:                ; preds = %do.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63.1.i

do.end58.1.i:                                     ; preds = %do.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  %call60.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %i.1171.i, i32 noundef 1, i32 noundef %conv.i) #9
  br label %do.end63.1.i

do.end63.1.i:                                     ; preds = %do.end58.1.i, %do.end63.i.do.end63.1.i_crit_edge
  %arrayidx64.1.i = getelementptr %struct.urb, ptr %57, i32 0, i32 29, i32 1
  %79 = ptrtoint ptr %arrayidx64.1.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %conv.i, ptr %arrayidx64.1.i, align 4
  %length.1.i = getelementptr %struct.urb, ptr %57, i32 0, i32 29, i32 1, i32 1
  %80 = ptrtoint ptr %length.1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv.i, ptr %length.1.i, align 4
  %81 = load i32, ptr @debug, align 4
  %and53.2.i = and i32 %81, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.2.i)
  %tobool54.not.2.i = icmp eq i32 %and53.2.i, 0
  br i1 %tobool54.not.2.i, label %do.end63.1.i.do.end63.2.i_crit_edge, label %do.end58.2.i

do.end63.1.i.do.end63.2.i_crit_edge:              ; preds = %do.end63.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63.2.i

do.end58.2.i:                                     ; preds = %do.end63.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %call60.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %i.1171.i, i32 noundef 2, i32 noundef %add69.1.i) #9
  br label %do.end63.2.i

do.end63.2.i:                                     ; preds = %do.end58.2.i, %do.end63.1.i.do.end63.2.i_crit_edge
  %arrayidx64.2.i = getelementptr %struct.urb, ptr %57, i32 0, i32 29, i32 2
  %82 = ptrtoint ptr %arrayidx64.2.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %add69.1.i, ptr %arrayidx64.2.i, align 4
  %length.2.i = getelementptr %struct.urb, ptr %57, i32 0, i32 29, i32 2, i32 1
  %83 = ptrtoint ptr %length.2.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %conv.i, ptr %length.2.i, align 4
  %84 = load i32, ptr @debug, align 4
  %and53.3.i = and i32 %84, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53.3.i)
  %tobool54.not.3.i = icmp eq i32 %and53.3.i, 0
  br i1 %tobool54.not.3.i, label %do.end63.2.i.do.end63.3.i_crit_edge, label %do.end58.3.i

do.end63.2.i.do.end63.3.i_crit_edge:              ; preds = %do.end63.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63.3.i

do.end58.3.i:                                     ; preds = %do.end63.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %call60.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %i.1171.i, i32 noundef 3, i32 noundef %add69.2.i) #9
  br label %do.end63.3.i

do.end63.3.i:                                     ; preds = %do.end58.3.i, %do.end63.2.i.do.end63.3.i_crit_edge
  %arrayidx64.3.i = getelementptr %struct.urb, ptr %57, i32 0, i32 29, i32 3
  %85 = ptrtoint ptr %arrayidx64.3.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %add69.2.i, ptr %arrayidx64.3.i, align 4
  %length.3.i = getelementptr %struct.urb, ptr %57, i32 0, i32 29, i32 3, i32 1
  %86 = ptrtoint ptr %length.3.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %conv.i, ptr %length.3.i, align 4
  %add.i = add nuw nsw i32 %buffer_offset.0170.i, %mul44.i
  %87 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx26.i, align 4
  %call75.i = tail call i32 @usb_submit_urb(ptr noundef %88, i32 noundef 2592) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %do.body84.i, label %cleanup.i

do.body84.i:                                      ; preds = %do.end63.3.i
  %89 = load i32, ptr @debug, align 4
  %and85.i = and i32 %89, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %do.body84.i.for.inc97.i_crit_edge, label %do.end90.i

do.body84.i.for.inc97.i_crit_edge:                ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc97.i

do.end90.i:                                       ; preds = %do.body84.i
  call void @__sanitizer_cov_trace_pc() #8
  %call92.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %i.1171.i) #9
  br label %for.inc97.i

cleanup.i:                                        ; preds = %do.end63.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %call82.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %i.1171.i, i32 noundef %call75.i) #9
  br label %urb_error.i

for.inc97.i:                                      ; preds = %do.end90.i, %do.body84.i.for.inc97.i_crit_edge
  %inc98.i = add nuw nsw i32 %i.1171.i, 1
  %exitcond.not.i = icmp eq i32 %inc98.i, 4
  br i1 %exitcond.not.i, label %do.end22, label %for.inc97.i.for.body24.i_crit_edge

for.inc97.i.for.body24.i_crit_edge:               ; preds = %for.inc97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body24.i

urb_error.i:                                      ; preds = %cleanup.i, %for.cond.2.i.urb_error.i_crit_edge, %for.cond.1.i.urb_error.i_crit_edge, %for.cond.i.urb_error.i_crit_edge, %if.end9.i.urb_error.i_crit_edge
  %ret.0.i = phi i32 [ %call75.i, %cleanup.i ], [ -12, %for.cond.2.i.urb_error.i_crit_edge ], [ -12, %for.cond.1.i.urb_error.i_crit_edge ], [ -12, %for.cond.i.urb_error.i_crit_edge ], [ -12, %if.end9.i.urb_error.i_crit_edge ]
  tail call fastcc void @flexcop_usb_transfer_exit(ptr noundef %3) #6
  br label %err_fc_exit

do.end22:                                         ; preds = %for.inc97.i
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %fc_dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %fc_dev, align 4
  %call100.i = tail call i32 @flexcop_sram_set_dest(ptr noundef %91, i32 noundef 15, i32 noundef 0) #6
  %92 = ptrtoint ptr %fc_dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %fc_dev, align 4
  tail call void @flexcop_wan_set_speed(ptr noundef %93, i32 noundef 1) #6
  %94 = ptrtoint ptr %fc_dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %fc_dev, align 4
  tail call void @flexcop_sram_ctrl(ptr noundef %95, i32 noundef 1, i32 noundef 1, i32 noundef 1) #6
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8) #9
  br label %cleanup

err_fc_exit:                                      ; preds = %urb_error.i, %do.end4.i.err_fc_exit_crit_edge
  %retval.0.i59.ph = phi i32 [ -12, %do.end4.i.err_fc_exit_crit_edge ], [ %ret.0.i, %urb_error.i ]
  tail call void @flexcop_device_exit(ptr noundef nonnull %call1) #6
  br label %err_usb_exit

err_usb_exit:                                     ; preds = %err_fc_exit, %if.end11.err_usb_exit_crit_edge
  %ret.0 = phi i32 [ %call12, %if.end11.err_usb_exit_crit_edge ], [ %retval.0.i59.ph, %err_fc_exit ]
  %96 = ptrtoint ptr %uintf to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %uintf, align 4
  %driver_data.i.i.i61 = getelementptr inbounds %struct.usb_interface, ptr %97, i32 0, i32 7, i32 8
  %98 = ptrtoint ptr %driver_data.i.i.i61 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %driver_data.i.i.i61, align 4
  br label %err_kfree

err_kfree:                                        ; preds = %err_usb_exit, %do.end33.i, %do.end15.i, %usb_endpoint_is_isoc_in.exit.i.err_kfree_crit_edge, %if.end4.i.err_kfree_crit_edge, %if.end.i.err_kfree_crit_edge, %do.end.i
  %ret.1 = phi i32 [ %ret.0, %err_usb_exit ], [ -19, %if.end4.i.err_kfree_crit_edge ], [ -19, %usb_endpoint_is_isoc_in.exit.i.err_kfree_crit_edge ], [ -19, %if.end.i.err_kfree_crit_edge ], [ -19, %do.end15.i ], [ -19, %do.end33.i ], [ %call.i, %do.end.i ]
  tail call void @flexcop_device_kfree(ptr noundef nonnull %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %err_kfree, %do.end22, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %ret.1, %err_kfree ], [ 0, %do.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flexcop_usb_disconnect(ptr nocapture noundef readonly %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @flexcop_usb_transfer_exit(ptr noundef %1)
  %fc_dev = getelementptr inbounds %struct.flexcop_usb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %fc_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fc_dev, align 4
  tail call void @flexcop_device_exit(ptr noundef %3) #6
  %uintf.i = getelementptr inbounds %struct.flexcop_usb, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %uintf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %uintf.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.usb_interface, ptr %5, i32 0, i32 7, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i.i, align 4
  %7 = ptrtoint ptr %fc_dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fc_dev, align 4
  tail call void @flexcop_device_kfree(ptr noundef %8) #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.8) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @flexcop_device_kmalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flexcop_usb_read_ibi_reg(ptr noalias nocapture sret(%union.flexcop_ibi_value) align 4 %agg.result, ptr nocapture noundef readonly %fc, i32 noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %agg.result to i32
  call void @__asan_storeN_noabort(i32 %0, i32 8)
  store i64 4294967295, ptr %agg.result, align 4, !annotation !172
  %conv = trunc i32 %reg to i16
  %call = tail call fastcc i32 @flexcop_usb_readwrite_dw(ptr noundef %fc, i16 noundef zeroext %conv, ptr noundef %agg.result, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcop_usb_write_ibi_reg(ptr nocapture noundef readonly %fc, i32 noundef %reg, [2 x i32] %val.coerce) #2 align 64 {
entry:
  %val = alloca %union.flexcop_ibi_value, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %val.coerce.fca.0.extract = extractvalue [2 x i32] %val.coerce, 0
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val.coerce.fca.0.extract, ptr %val, align 4
  %val.coerce.fca.1.extract = extractvalue [2 x i32] %val.coerce, 1
  %val.coerce.fca.1.gep = getelementptr inbounds [2 x i32], ptr %val, i32 0, i32 1
  %1 = ptrtoint ptr %val.coerce.fca.1.gep to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %val.coerce.fca.1.extract, ptr %val.coerce.fca.1.gep, align 4
  %conv = trunc i32 %reg to i16
  %call = call fastcc i32 @flexcop_usb_readwrite_dw(ptr noundef %fc, i16 noundef zeroext %conv, ptr noundef nonnull %val, i8 noundef zeroext 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcop_usb_i2c_request(ptr nocapture noundef readonly %i2c, i32 noundef %op, i8 noundef zeroext %chipaddr, i8 noundef zeroext %addr, ptr nocapture noundef %buf, i16 noundef zeroext %len) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %op)
  %cmp = icmp eq i32 %op, 1
  %conv = trunc i16 %len to i8
  %. = select i1 %cmp, i32 3, i32 1
  %call2 = tail call fastcc i32 @flexcop_usb_i2c_req(ptr noundef %i2c, i32 noundef %., i8 noundef zeroext %chipaddr, i8 noundef zeroext %addr, ptr noundef %buf, i8 noundef zeroext %conv)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @flexcop_usb_get_mac_addr(ptr nocapture noundef %fc, i32 noundef %extended) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_specific = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 27
  %0 = ptrtoint ptr %bus_specific to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_specific, align 8
  %proposed_mac = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 6, i32 4
  %data_mutex.i.i = getelementptr inbounds %struct.flexcop_usb, ptr %1, i32 0, i32 10
  %data59.i.i = getelementptr inbounds %struct.flexcop_usb, ptr %1, i32 0, i32 9
  %2 = load i32, ptr @debug, align 4
  %and24.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool.not.i, label %entry.sw.bb.i.i_crit_edge, label %do.end.i

entry.sw.bb.i.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef 61456) #9
  br label %sw.bb.i.i

sw.bb.i.i:                                        ; preds = %do.end.i, %entry.sw.bb.i.i_crit_edge
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 8
  %shl.i.i.i = shl i32 %6, 8
  %or7.i.i = or i32 %shl.i.i.i, -2147483520
  %7 = load i32, ptr @debug, align 4
  %and37.i.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i.i)
  %tobool38.not.i.i = icmp eq i32 %and37.i.i, 0
  br i1 %tobool38.not.i.i, label %sw.bb.i.i.do.end50.i.i_crit_edge, label %do.end42.i.i

sw.bb.i.i.do.end50.i.i_crit_edge:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end50.i.i

do.end42.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call47.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef 192, i32 noundef 5, i32 noundef 61456, i32 noundef 33536, i32 noundef 6) #9
  br label %do.end50.i.i

do.end50.i.i:                                     ; preds = %do.end42.i.i, %sw.bb.i.i.do.end50.i.i_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %data_mutex.i.i, i32 noundef 0) #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call62.i.i = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or7.i.i, i8 noundef zeroext 5, i8 noundef zeroext -64, i16 noundef zeroext -4080, i16 noundef zeroext -32000, ptr noundef %data59.i.i, i16 noundef zeroext 6, i32 noundef 3000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call62.i.i)
  %cmp63.not.i.i = icmp eq i32 %call62.i.i, 6
  br i1 %cmp63.not.i.i, label %if.then74.i.i, label %do.end50.i.i.if.end78.i.i_crit_edge

do.end50.i.i.if.end78.i.i_crit_edge:              ; preds = %do.end50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78.i.i

if.then74.i.i:                                    ; preds = %do.end50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = call ptr @memcpy(ptr %proposed_mac, ptr %data59.i.i, i32 6)
  br label %if.end78.i.i

if.end78.i.i:                                     ; preds = %if.then74.i.i, %do.end50.i.i.if.end78.i.i_crit_edge
  %spec.select.i = phi i32 [ 0, %if.then74.i.i ], [ -5, %do.end50.i.i.if.end78.i.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %data_mutex.i.i) #6
  %11 = load i32, ptr @debug, align 4
  %and98.i.i = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98.i.i)
  %tobool99.not.i.i = icmp eq i32 %and98.i.i, 0
  br i1 %tobool99.not.i.i, label %if.end78.i.i.flexcop_usb_memory_req.exit_crit_edge, label %cleanup.sink.split.i.i

if.end78.i.i.flexcop_usb_memory_req.exit_crit_edge: ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flexcop_usb_memory_req.exit

cleanup.sink.split.i.i:                           ; preds = %if.end78.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call105.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #9
  br label %flexcop_usb_memory_req.exit

flexcop_usb_memory_req.exit:                      ; preds = %cleanup.sink.split.i.i, %if.end78.i.i.flexcop_usb_memory_req.exit_crit_edge
  ret i32 %spec.select.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @flexcop_usb_stream_control(ptr nocapture noundef readnone %fc, i32 noundef %onoff) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flexcop_device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flexcop_device_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flexcop_device_kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flexcop_usb_readwrite_dw(ptr nocapture noundef readonly %fc, i16 noundef zeroext %wRegOffsPCI, ptr nocapture noundef %val, i8 noundef zeroext %read) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_specific = getelementptr inbounds %struct.flexcop_device, ptr %fc, i32 0, i32 27
  %0 = ptrtoint ptr %bus_specific to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_specific, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %read)
  %tobool.not = icmp eq i8 %read, 0
  %conv1 = select i1 %tobool.not, i8 10, i8 8
  %cond4 = select i1 %tobool.not, i32 0, i32 128
  %2 = trunc i32 %cond4 to i8
  %conv5 = or i8 %2, 64
  %conv6 = zext i16 %wRegOffsPCI to i32
  %3 = lshr i16 %wRegOffsPCI, 2
  %and = and i16 %3, 7
  %4 = lshr i16 %wRegOffsPCI, 4
  %and9 = and i16 %4, 112
  %add = or i16 %and, %and9
  %conv10 = zext i16 %add to i32
  %or15 = or i32 %cond4, %conv10
  %data_mutex = getelementptr inbounds %struct.flexcop_usb, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #6
  br i1 %tobool.not, label %cond.end, label %cond.end.thread

cond.end:                                         ; preds = %entry
  %data = getelementptr inbounds %struct.flexcop_usb, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %data, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 8
  %shl.i73 = shl i32 %11, 8
  %or25 = or i32 %shl.i73, -2147483648
  %12 = trunc i32 %or15 to i16
  %data28 = getelementptr inbounds %struct.flexcop_usb, ptr %1, i32 0, i32 9
  %call30 = tail call i32 @usb_control_msg(ptr noundef %9, i32 noundef %or25, i8 noundef zeroext %conv1, i8 noundef zeroext %conv5, i16 noundef zeroext %12, i16 noundef zeroext 0, ptr noundef %data28, i16 noundef zeroext 4, i32 noundef 3000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call30)
  %cmp.not = icmp eq i32 %call30, 4
  br i1 %cmp.not, label %cond.end.if.end51_crit_edge, label %cond.end.if.end43.thread_crit_edge

cond.end.if.end43.thread_crit_edge:               ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.thread

cond.end.if.end51_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

cond.end.thread:                                  ; preds = %entry
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 8
  %shl.i = shl i32 %16, 8
  %or22 = or i32 %shl.i, -2147483520
  %17 = trunc i32 %or15 to i16
  %data2880 = getelementptr inbounds %struct.flexcop_usb, ptr %1, i32 0, i32 9
  %call3081 = tail call i32 @usb_control_msg(ptr noundef %14, i32 noundef %or22, i8 noundef zeroext %conv1, i8 noundef zeroext %conv5, i16 noundef zeroext %17, i16 noundef zeroext 0, ptr noundef %data2880, i16 noundef zeroext 4, i32 noundef 3000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call3081)
  %cmp.not82 = icmp eq i32 %call3081, 4
  br i1 %cmp.not82, label %if.then48, label %cond.end.thread.if.end43.thread_crit_edge

cond.end.thread.if.end43.thread_crit_edge:        ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.thread

if.end43.thread:                                  ; preds = %cond.end.thread.if.end43.thread_crit_edge, %cond.end.if.end43.thread_crit_edge
  %cond35 = phi ptr [ @.str.11, %cond.end.thread.if.end43.thread_crit_edge ], [ @.str.12, %cond.end.if.end43.thread_crit_edge ]
  %call3084 = phi i32 [ %call3081, %cond.end.thread.if.end43.thread_crit_edge ], [ %call30, %cond.end.if.end43.thread_crit_edge ]
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull %cond35, i32 noundef %or15, i32 noundef %conv6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3084)
  %cmp39 = icmp sgt i32 %call3084, -1
  %spec.store.select = select i1 %cmp39, i32 -5, i32 %call3084
  br label %if.end51

if.then48:                                        ; preds = %cond.end.thread
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %data2880 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data2880, align 4
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end43.thread, %cond.end.if.end51_crit_edge
  %ret.078 = phi i32 [ %spec.store.select, %if.end43.thread ], [ 4, %if.then48 ], [ 4, %cond.end.if.end51_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #6
  ret i32 %ret.078
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @flexcop_usb_i2c_req(ptr nocapture noundef readonly %i2c, i32 noundef %func, i8 noundef zeroext %chipaddr, i8 noundef zeroext %addr, ptr nocapture noundef %buf, i8 noundef zeroext %buflen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 8
  %bus_specific = getelementptr inbounds %struct.flexcop_device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %bus_specific to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus_specific, align 8
  %conv = zext i8 %buflen to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %buflen)
  %cmp = icmp ugt i8 %buflen, 80
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %func to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %func, label %do.body14 [
    i32 1, label %if.end.sw.epilog_crit_edge
    i32 2, label %if.end.sw.epilog_crit_edge4
    i32 4, label %if.end.sw.epilog_crit_edge5
    i32 7, label %if.end.sw.epilog_crit_edge6
    i32 3, label %if.end.sw.bb6_crit_edge
    i32 6, label %if.end.sw.bb6_crit_edge7
  ]

if.end.sw.bb6_crit_edge7:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

if.end.sw.bb6_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb6

if.end.sw.epilog_crit_edge6:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.sw.epilog_crit_edge5:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.sw.epilog_crit_edge4:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end.sw.bb6_crit_edge, %if.end.sw.bb6_crit_edge7
  br label %sw.epilog

do.body14:                                        ; preds = %if.end
  %5 = load i32, ptr @debug, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body14.cleanup_crit_edge, label %do.end18

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end18:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %func) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb6, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge4, %if.end.sw.epilog_crit_edge5, %if.end.sw.epilog_crit_edge6
  %.sink = phi i32 [ -2147483520, %sw.bb6 ], [ -2147483648, %if.end.sw.epilog_crit_edge ], [ -2147483648, %if.end.sw.epilog_crit_edge4 ], [ -2147483648, %if.end.sw.epilog_crit_edge5 ], [ -2147483648, %if.end.sw.epilog_crit_edge6 ]
  %cmp54 = phi i1 [ false, %sw.bb6 ], [ true, %if.end.sw.epilog_crit_edge ], [ true, %if.end.sw.epilog_crit_edge4 ], [ true, %if.end.sw.epilog_crit_edge5 ], [ true, %if.end.sw.epilog_crit_edge6 ]
  %request_type.0 = phi i8 [ -64, %sw.bb6 ], [ 64, %if.end.sw.epilog_crit_edge ], [ 64, %if.end.sw.epilog_crit_edge4 ], [ 64, %if.end.sw.epilog_crit_edge5 ], [ 64, %if.end.sw.epilog_crit_edge6 ]
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i1 = shl i32 %9, 8
  %or10 = or i32 %shl.i1, %.sink
  %shl = shl nuw nsw i32 %func, 8
  %port = getelementptr inbounds %struct.flexcop_i2c_adapter, ptr %i2c, i32 0, i32 3
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %shl24 = shl i32 %11, 4
  %or25 = or i32 %shl24, %shl
  %conv26 = trunc i32 %or25 to i16
  %conv27 = zext i8 %chipaddr to i16
  %shl28 = shl nuw i16 %conv27, 8
  %conv29 = zext i8 %addr to i16
  %or30 = or i16 %shl28, %conv29
  %12 = load i32, ptr @debug, align 4
  %and33 = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %sw.epilog.do.end51_crit_edge, label %do.end38

sw.epilog.do.end51_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end51

do.end38:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %conv40 = zext i8 %request_type.0 to i32
  %and42 = and i32 %shl24, 240
  %conv41 = lshr i32 %or25, 8
  %13 = and i32 %conv41, 255
  %conv44 = zext i16 %or30 to i32
  %and45 = and i32 %conv44, 255
  %14 = lshr i32 %conv44, 8
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %func, i32 noundef %conv40, i32 noundef 17, i32 noundef %and42, i32 noundef %13, i32 noundef %and45, i32 noundef %14) #9
  br label %do.end51

do.end51:                                         ; preds = %do.end38, %sw.epilog.do.end51_crit_edge
  %data_mutex = getelementptr inbounds %struct.flexcop_usb, ptr %3, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %data_mutex, i32 noundef 0) #6
  br i1 %cmp54, label %if.then56, label %do.end51.if.end58_crit_edge

do.end51.if.end58_crit_edge:                      ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then56:                                        ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  %data = getelementptr inbounds %struct.flexcop_usb, ptr %3, i32 0, i32 9
  %15 = call ptr @memcpy(ptr %data, ptr %buf, i32 %conv)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %do.end51.if.end58_crit_edge
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %data61 = getelementptr inbounds %struct.flexcop_usb, ptr %3, i32 0, i32 9
  %conv63 = zext i8 %buflen to i16
  %call64 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or10, i8 noundef zeroext 17, i8 noundef zeroext %request_type.0, i16 noundef zeroext %conv26, i16 noundef zeroext %or30, ptr noundef %data61, i16 noundef zeroext %conv63, i32 noundef 2000) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call64, i32 %conv)
  %cmp66.not = icmp eq i32 %call64, %conv
  %spec.store.select = select i1 %cmp66.not, i32 %call64, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp70 = icmp slt i32 %spec.store.select, 0
  %brmerge = or i1 %cmp54, %cmp70
  %18 = tail call i32 @llvm.smin.i32(i32 %spec.store.select, i32 0)
  br i1 %brmerge, label %if.end58.if.end82_crit_edge, label %if.then77

if.end58.if.end82_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then77:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %19 = call ptr @memcpy(ptr %buf, ptr %data61, i32 %conv)
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.end58.if.end82_crit_edge
  %ret.0 = phi i32 [ 0, %if.then77 ], [ %18, %if.end58.if.end82_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %data_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %do.end18, %do.body14.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %ret.0, %if.end82 ], [ -22, %do.end18 ], [ -22, %do.body14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_coherent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @flexcop_usb_urb_complete(ptr noundef %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %2 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %do.body

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.body:                                          ; preds = %entry
  %4 = load i32, ptr @debug, align 4
  %and = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end6_crit_edge, label %do.end

do.body.if.end6_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %transfer_buffer_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 19
  %5 = ptrtoint ptr %transfer_buffer_length to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %transfer_buffer_length, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %6, i32 noundef %3) #9
  br label %if.end6

if.end6:                                          ; preds = %do.end, %do.body.if.end6_crit_edge, %entry.if.end6_crit_edge
  %number_of_packets = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 24
  %7 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %number_of_packets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp778 = icmp sgt i32 %8, 0
  br i1 %cmp778, label %for.body.lr.ph, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %tmp_buffer_length.i = getelementptr inbounds %struct.flexcop_usb, ptr %1, i32 0, i32 8
  %tmp_buffer.i = getelementptr inbounds %struct.flexcop_usb, ptr %1, i32 0, i32 7
  %fc_dev.i = getelementptr inbounds %struct.flexcop_usb, ptr %1, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %if.end44.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end44.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.079
  %status = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.079, i32 3
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8 = icmp slt i32 %10, 0
  br i1 %cmp8, label %do.end12, label %if.else

do.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef %i.079, i32 noundef %10) #9
  br label %if.end44

if.else:                                          ; preds = %for.body
  %actual_length20 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.079, i32 2
  %11 = ptrtoint ptr %actual_length20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %actual_length20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp21.not = icmp eq i32 %12, 0
  br i1 %cmp21.not, label %if.else.if.end44_crit_edge, label %do.body23

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44

do.body23:                                        ; preds = %if.else
  %13 = load i32, ptr @debug, align 4
  %and24 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %do.body23.do.end37_crit_edge, label %do.end29

do.body23.do.end37_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

do.end29:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %12) #9
  br label %do.end37

do.end37:                                         ; preds = %do.end29, %do.body23.do.end37_crit_edge
  %14 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %transfer_buffer, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %17
  %18 = ptrtoint ptr %actual_length20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %actual_length20, align 4
  %20 = load i32, ptr @debug, align 4
  %and.i = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end37.do.end3.i_crit_edge, label %do.end.i

do.end37.do.end3.i_crit_edge:                     ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %tmp_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tmp_buffer_length.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %22, i32 noundef %19) #9
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end37.do.end3.i_crit_edge
  %23 = ptrtoint ptr %tmp_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tmp_buffer_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i = icmp sgt i32 %24, 0
  br i1 %cmp.i, label %if.then5.i, label %do.end3.i.if.end11.i_crit_edge

do.end3.i.if.end11.i_crit_edge:                   ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.i

if.then5.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i8, ptr %tmp_buffer.i, i32 %24
  %25 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr, i32 %19)
  %26 = ptrtoint ptr %tmp_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tmp_buffer_length.i, align 4
  %add.i = add i32 %27, %19
  store i32 %add.i, ptr %tmp_buffer_length.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then5.i, %do.end3.i.if.end11.i_crit_edge
  %l.0.i = phi i32 [ %add.i, %if.then5.i ], [ %19, %do.end3.i.if.end11.i_crit_edge ]
  %b.0.i = phi ptr [ %tmp_buffer.i, %if.then5.i ], [ %add.ptr, %do.end3.i.if.end11.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 189, i32 %l.0.i)
  %cmp1297.i = icmp sgt i32 %l.0.i, 189
  br i1 %cmp1297.i, label %if.end11.i.while.body.i_crit_edge, label %if.end11.i.while.end.i_crit_edge

if.end11.i.while.end.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end11.i.while.body.i_crit_edge:                ; preds = %if.end11.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end66.i.while.body.i_crit_edge, %if.end11.i.while.body.i_crit_edge
  %b.199.i = phi ptr [ %add.ptr40.i, %if.end66.i.while.body.i_crit_edge ], [ %b.0.i, %if.end11.i.while.body.i_crit_edge ]
  %l.198.i = phi i32 [ %sub.i, %if.end66.i.while.body.i_crit_edge ], [ %l.0.i, %if.end11.i.while.body.i_crit_edge ]
  %28 = ptrtoint ptr %b.199.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %b.199.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %29)
  %cmp13.i = icmp eq i8 %29, -1
  br i1 %cmp13.i, label %if.then15.i, label %do.body54.i

if.then15.i:                                      ; preds = %while.body.i
  %add.ptr16.i = getelementptr i8, ptr %b.199.i, i32 1
  %30 = ptrtoint ptr %add.ptr16.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr16.i, align 1
  %32 = and i8 %31, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %32)
  %cond.i = icmp eq i8 %32, 1
  br i1 %cond.i, label %sw.bb.i, label %do.body41.i

sw.bb.i:                                          ; preds = %if.then15.i
  %add.ptr19.i = getelementptr i8, ptr %b.199.i, i32 2
  %33 = ptrtoint ptr %add.ptr19.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr19.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 71, i8 %34)
  %cmp21.i = icmp eq i8 %34, 71
  br i1 %cmp21.i, label %if.then23.i, label %do.body26.i

if.then23.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %fc_dev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fc_dev.i, align 4
  tail call void @flexcop_pass_dmx_packets(ptr noundef %36, ptr noundef %add.ptr19.i, i32 noundef 1) #6
  br label %if.end66.i

do.body26.i:                                      ; preds = %sw.bb.i
  %37 = load i32, ptr @debug, align 4
  %and27.i = and i32 %37, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %do.body26.i.if.end66.i_crit_edge, label %do.end32.i

do.body26.i.if.end66.i_crit_edge:                 ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.i

do.end32.i:                                       ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #8
  %call35.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef 4, ptr noundef %add.ptr19.i) #9
  br label %if.end66.i

do.body41.i:                                      ; preds = %if.then15.i
  %38 = load i32, ptr @debug, align 4
  %and42.i = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.not.i = icmp eq i32 %and42.i, 0
  br i1 %tobool43.not.i, label %do.body41.i.flexcop_usb_process_frame.exit_crit_edge, label %do.end47.i

do.body41.i.flexcop_usb_process_frame.exit_crit_edge: ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flexcop_usb_process_frame.exit

do.end47.i:                                       ; preds = %do.body41.i
  call void @__sanitizer_cov_trace_pc() #8
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #9
  br label %flexcop_usb_process_frame.exit

do.body54.i:                                      ; preds = %while.body.i
  %39 = load i32, ptr @debug, align 4
  %and55.i = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %do.body54.i.flexcop_usb_process_frame.exit_crit_edge, label %do.end60.i

do.body54.i.flexcop_usb_process_frame.exit_crit_edge: ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flexcop_usb_process_frame.exit

do.end60.i:                                       ; preds = %do.body54.i
  call void @__sanitizer_cov_trace_pc() #8
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81) #9
  br label %flexcop_usb_process_frame.exit

if.end66.i:                                       ; preds = %do.end32.i, %do.body26.i.if.end66.i_crit_edge, %if.then23.i
  %add.ptr40.i = getelementptr i8, ptr %b.199.i, i32 190
  %sub.i = add nsw i32 %l.198.i, -190
  %cmp12.i = icmp ugt i32 %sub.i, 189
  br i1 %cmp12.i, label %if.end66.i.while.body.i_crit_edge, label %if.end66.i.while.end.i_crit_edge

if.end66.i.while.end.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end66.i.while.body.i_crit_edge:                ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %if.end66.i.while.end.i_crit_edge, %if.end11.i.while.end.i_crit_edge
  %l.1.lcssa.i = phi i32 [ %l.0.i, %if.end11.i.while.end.i_crit_edge ], [ %sub.i, %if.end66.i.while.end.i_crit_edge ]
  %b.1.lcssa.i = phi ptr [ %b.0.i, %if.end11.i.while.end.i_crit_edge ], [ %add.ptr40.i, %if.end66.i.while.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %l.1.lcssa.i)
  %cmp67.i = icmp sgt i32 %l.1.lcssa.i, 0
  br i1 %cmp67.i, label %if.then69.i, label %while.end.i.flexcop_usb_process_frame.exit_crit_edge

while.end.i.flexcop_usb_process_frame.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %flexcop_usb_process_frame.exit

if.then69.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = call ptr @memcpy(ptr %tmp_buffer.i, ptr %b.1.lcssa.i, i32 %l.1.lcssa.i)
  br label %flexcop_usb_process_frame.exit

flexcop_usb_process_frame.exit:                   ; preds = %if.then69.i, %while.end.i.flexcop_usb_process_frame.exit_crit_edge, %do.end60.i, %do.body54.i.flexcop_usb_process_frame.exit_crit_edge, %do.end47.i, %do.body41.i.flexcop_usb_process_frame.exit_crit_edge
  %l.1.lcssa109.i = phi i32 [ %l.1.lcssa.i, %if.then69.i ], [ %l.1.lcssa.i, %while.end.i.flexcop_usb_process_frame.exit_crit_edge ], [ 0, %do.body54.i.flexcop_usb_process_frame.exit_crit_edge ], [ 0, %do.end60.i ], [ 0, %do.body41.i.flexcop_usb_process_frame.exit_crit_edge ], [ 0, %do.end47.i ]
  %41 = ptrtoint ptr %tmp_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %l.1.lcssa109.i, ptr %tmp_buffer_length.i, align 4
  br label %if.end44

if.end44:                                         ; preds = %flexcop_usb_process_frame.exit, %if.else.if.end44_crit_edge, %do.end12
  %42 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %status, align 4
  %actual_length50 = getelementptr %struct.urb, ptr %urb, i32 0, i32 29, i32 %i.079, i32 2
  %43 = ptrtoint ptr %actual_length50 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %actual_length50, align 4
  %inc = add nuw nsw i32 %i.079, 1
  %44 = ptrtoint ptr %number_of_packets to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %number_of_packets, align 4
  %cmp7 = icmp slt i32 %inc, %45
  br i1 %cmp7, label %if.end44.for.body_crit_edge, label %if.end44.for.end_crit_edge

if.end44.for.end_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end44.for.body_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end44.for.end_crit_edge, %if.end6.for.end_crit_edge
  %call51 = tail call i32 @usb_submit_urb(ptr noundef %urb, i32 noundef 2592) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @flexcop_sram_set_dest(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flexcop_wan_set_speed(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flexcop_sram_ctrl(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flexcop_usb_transfer_exit(ptr nocapture noundef readonly %fc_usb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.flexcop_usb, ptr %fc_usb, i32 0, i32 5, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %entry.for.inc_crit_edge, label %do.body

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef 0) #9
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_kill_urb(ptr noundef %4) #6
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  tail call void @usb_free_urb(ptr noundef %6) #6
  br label %for.inc

for.inc:                                          ; preds = %do.end5, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.flexcop_usb, ptr %fc_usb, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.1, align 4
  %cmp1.not.1 = icmp eq ptr %8, null
  br i1 %cmp1.not.1, label %for.inc.for.inc.1_crit_edge, label %do.body.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

do.body.1:                                        ; preds = %for.inc
  %9 = load i32, ptr @debug, align 4
  %and.1 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %do.body.1.do.end5.1_crit_edge, label %do.end.1

do.body.1.do.end5.1_crit_edge:                    ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5.1

do.end.1:                                         ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #8
  %call.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef 1) #9
  br label %do.end5.1

do.end5.1:                                        ; preds = %do.end.1, %do.body.1.do.end5.1_crit_edge
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_kill_urb(ptr noundef %11) #6
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  tail call void @usb_free_urb(ptr noundef %13) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.end5.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.flexcop_usb, ptr %fc_usb, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %cmp1.not.2 = icmp eq ptr %15, null
  br i1 %cmp1.not.2, label %for.inc.1.for.inc.2_crit_edge, label %do.body.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

do.body.2:                                        ; preds = %for.inc.1
  %16 = load i32, ptr @debug, align 4
  %and.2 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %do.body.2.do.end5.2_crit_edge, label %do.end.2

do.body.2.do.end5.2_crit_edge:                    ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5.2

do.end.2:                                         ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #8
  %call.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef 2) #9
  br label %do.end5.2

do.end5.2:                                        ; preds = %do.end.2, %do.body.2.do.end5.2_crit_edge
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_kill_urb(ptr noundef %18) #6
  %19 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.2, align 4
  tail call void @usb_free_urb(ptr noundef %20) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %do.end5.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.flexcop_usb, ptr %fc_usb, i32 0, i32 5, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.3, align 4
  %cmp1.not.3 = icmp eq ptr %22, null
  br i1 %cmp1.not.3, label %for.inc.2.for.inc.3_crit_edge, label %do.body.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

do.body.3:                                        ; preds = %for.inc.2
  %23 = load i32, ptr @debug, align 4
  %and.3 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %do.body.3.do.end5.3_crit_edge, label %do.end.3

do.body.3.do.end5.3_crit_edge:                    ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end5.3

do.end.3:                                         ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #8
  %call.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef 3) #9
  br label %do.end5.3

do.end5.3:                                        ; preds = %do.end.3, %do.body.3.do.end5.3_crit_edge
  %24 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_kill_urb(ptr noundef %25) #6
  %26 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.3, align 4
  tail call void @usb_free_urb(ptr noundef %27) #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %do.end5.3, %for.inc.2.for.inc.3_crit_edge
  %28 = ptrtoint ptr %fc_usb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fc_usb, align 4
  %buffer_size = getelementptr inbounds %struct.flexcop_usb, ptr %fc_usb, i32 0, i32 3
  %30 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %buffer_size, align 4
  %iso_buffer = getelementptr inbounds %struct.flexcop_usb, ptr %fc_usb, i32 0, i32 2
  %32 = ptrtoint ptr %iso_buffer to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iso_buffer, align 4
  %dma_addr = getelementptr inbounds %struct.flexcop_usb, ptr %fc_usb, i32 0, i32 4
  %34 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_addr, align 4
  tail call void @usb_free_coherent(ptr noundef %29, i32 noundef %31, ptr noundef %33, i32 noundef %35) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flexcop_pass_dmx_packets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_coherent(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !21, !23, !24, !25, !26, !27, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !161}
!llvm.module.flags = !{!163, !164, !165, !166, !167, !168, !169, !170}
!llvm.ident = !{!171}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 36, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype388, !1, !"__UNIQUE_ID_debugtype388", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug389, !4, !"__UNIQUE_ID_debug389", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 37, i32 1}
!5 = !{ptr @__initcall__kmod_b2c2_flexcop_usb__390_623_flexcop_usb_driver_init6, !6, !"__initcall__kmod_b2c2_flexcop_usb__390_623_flexcop_usb_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 623, i32 1}
!7 = !{ptr @__exitcall_flexcop_usb_driver_exit, !6, !"__exitcall_flexcop_usb_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author391, !9, !"__UNIQUE_ID_author391", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 625, i32 1}
!10 = !{ptr @__UNIQUE_ID_description392, !11, !"__UNIQUE_ID_description392", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 626, i32 1}
!12 = !{ptr @__UNIQUE_ID_file393, !13, !"__UNIQUE_ID_file393", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 627, i32 1}
!14 = !{ptr @__UNIQUE_ID_license394, !13, !"__UNIQUE_ID_license394", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 35, i32 12}
!17 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @flexcop_usb_driver, !20, !"flexcop_usb_driver", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 616, i32 26}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 551, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @flexcop_usb_probe._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @flexcop_usb_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @flexcop_usb_probe.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 558, i32 2}
!29 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 587, i32 2}
!32 = !{ptr @flexcop_usb_probe._entry.5, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @flexcop_usb_probe._entry_ptr.7, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 93, i32 3}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @flexcop_usb_readwrite_dw._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @flexcop_usb_readwrite_dw._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 240, i32 3}
!44 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @flexcop_usb_i2c_req._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @flexcop_usb_i2c_req._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 261, i32 3}
!49 = !{ptr @flexcop_usb_i2c_req._entry.15, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @flexcop_usb_i2c_req._entry_ptr.17, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 267, i32 2}
!53 = !{ptr @flexcop_usb_i2c_req._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @flexcop_usb_i2c_req._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 204, i32 3}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @flexcop_usb_memory_req._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @flexcop_usb_memory_req._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 118, i32 3}
!62 = !{ptr @flexcop_usb_v8_memory_req._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @flexcop_usb_v8_memory_req._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 140, i32 3}
!66 = !{ptr @flexcop_usb_v8_memory_req._entry.24, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @flexcop_usb_v8_memory_req._entry_ptr.26, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 143, i32 2}
!70 = !{ptr @flexcop_usb_v8_memory_req._entry.27, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @flexcop_usb_v8_memory_req._entry_ptr.29, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 170, i32 2}
!74 = !{ptr @flexcop_usb_v8_memory_req._entry.30, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @flexcop_usb_v8_memory_req._entry_ptr.32, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @flexcop_usb_v8_memory_req._entry.33, !73, !"_entry", i1 false, i1 false}
!78 = !{ptr @flexcop_usb_v8_memory_req._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 508, i32 3}
!81 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @flexcop_usb_init._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @flexcop_usb_init._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 519, i32 3}
!86 = !{ptr @flexcop_usb_init._entry.38, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @flexcop_usb_init._entry_ptr.40, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 523, i32 3}
!90 = !{ptr @flexcop_usb_init._entry.41, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @flexcop_usb_init._entry_ptr.43, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 526, i32 3}
!94 = !{ptr @flexcop_usb_init._entry.44, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @flexcop_usb_init._entry_ptr.46, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 530, i32 3}
!98 = !{ptr @flexcop_usb_init._entry.47, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @flexcop_usb_init._entry_ptr.49, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 434, i32 2}
!102 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @flexcop_usb_transfer_init._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @flexcop_usb_transfer_init._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.53, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 460, i32 3}
!107 = !{ptr @flexcop_usb_transfer_init._entry.52, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @flexcop_usb_transfer_init._entry_ptr.54, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 475, i32 4}
!111 = !{ptr @flexcop_usb_transfer_init._entry.55, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @flexcop_usb_transfer_init._entry_ptr.57, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.59, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 483, i32 4}
!115 = !{ptr @flexcop_usb_transfer_init._entry.58, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @flexcop_usb_transfer_init._entry_ptr.60, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 486, i32 3}
!119 = !{ptr @flexcop_usb_transfer_init._entry.61, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @flexcop_usb_transfer_init._entry_ptr.63, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.64, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 382, i32 3}
!123 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @flexcop_usb_urb_complete._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @flexcop_usb_urb_complete._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.67, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 387, i32 4}
!128 = !{ptr @flexcop_usb_urb_complete._entry.66, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @flexcop_usb_urb_complete._entry_ptr.68, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.70, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 391, i32 5}
!132 = !{ptr @flexcop_usb_urb_complete._entry.69, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @flexcop_usb_urb_complete._entry_ptr.71, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 334, i32 2}
!136 = !{ptr @.str.73, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @flexcop_usb_process_frame._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @flexcop_usb_process_frame._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.75, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 356, i32 6}
!141 = !{ptr @flexcop_usb_process_frame._entry.74, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @flexcop_usb_process_frame._entry_ptr.76, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.78, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 361, i32 5}
!145 = !{ptr @flexcop_usb_process_frame._entry.77, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @flexcop_usb_process_frame._entry_ptr.79, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.81, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 366, i32 4}
!149 = !{ptr @flexcop_usb_process_frame._entry.80, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @flexcop_usb_process_frame._entry_ptr.82, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.83, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 416, i32 4}
!153 = !{ptr @.str.84, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @flexcop_usb_transfer_exit._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @flexcop_usb_transfer_exit._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.85, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 606, i32 2}
!158 = !{ptr @.str.86, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @flexcop_usb_disconnect._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @flexcop_usb_disconnect._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @flexcop_usb_table, !162, !"flexcop_usb_table", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/b2c2/flexcop-usb.c", i32 609, i32 35}
!163 = !{i32 1, !"wchar_size", i32 2}
!164 = !{i32 1, !"min_enum_size", i32 4}
!165 = !{i32 8, !"branch-target-enforcement", i32 0}
!166 = !{i32 8, !"sign-return-address", i32 0}
!167 = !{i32 8, !"sign-return-address-all", i32 0}
!168 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!169 = !{i32 7, !"uwtable", i32 1}
!170 = !{i32 7, !"frame-pointer", i32 2}
!171 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!172 = !{!"auto-init"}
