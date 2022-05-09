; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/dvb-usb-dvb.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/dvb-usb-dvb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_usb_adapter = type { ptr, %struct.dvb_usb_adapter_properties, i32, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x %struct.dvb_usb_fe_adapter], i32, i32, ptr }
%struct.dvb_usb_adapter_properties = type { i32, ptr, i32, [3 x %struct.dvb_usb_adapter_fe_properties] }
%struct.dvb_usb_adapter_fe_properties = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.usb_data_stream_properties, i32 }
%struct.usb_data_stream_properties = type { i32, i32, i32, %union.anon.110 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_usb_fe_adapter = type { ptr, ptr, ptr, %struct.usb_data_stream, i32, i32, ptr }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i32, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.142, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
%struct.anon.142 = type { i32, %struct.dvb_rc_legacy, %struct.dvb_rc }
%struct.dvb_rc_legacy = type { ptr, i32, ptr, i32 }
%struct.dvb_rc = type { ptr, i64, i64, i32, ptr, ptr, ptr, i32, i8, i32 }
%struct.dvb_usb_device_description = type { ptr, [15 x ptr], [15 x ptr] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.dvb_demux_feed = type { %union.anon.119, %union.anon.120, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.119 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.120 = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }

@dvb_usb_debug = external dso_local local_unnamed_addr global i32, align 4
@dvb_usb_adapter_dvb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"dvb_register_adapter failed: error %d\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dvb_usb_adapter_dvb_init\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/media/usb/dvb-usb/dvb-usb-dvb.c\00", [56 x i8] zeroinitializer }, align 32
@dvb_usb_adapter_dvb_init._entry_ptr = internal global ptr @dvb_usb_adapter_dvb_init._entry, section ".printk_index", align 4
@dvb_usb_adapter_dvb_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dvb_usb_media_device_init failed: error %d\00", [53 x i8] zeroinitializer }, align 32
@dvb_usb_adapter_dvb_init._entry_ptr.5 = internal global ptr @dvb_usb_adapter_dvb_init._entry.3, section ".printk_index", align 4
@dvb_usb_adapter_dvb_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016dvb-usb: MAC address: %pM\0A\00", [35 x i8] zeroinitializer }, align 32
@dvb_usb_adapter_dvb_init._entry_ptr.8 = internal global ptr @dvb_usb_adapter_dvb_init._entry.6, section ".printk_index", align 4
@dvb_usb_adapter_dvb_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013dvb-usb: MAC address reading failed.\0A\00", [56 x i8] zeroinitializer }, align 32
@dvb_usb_adapter_dvb_init._entry_ptr.11 = internal global ptr @dvb_usb_adapter_dvb_init._entry.9, section ".printk_index", align 4
@dvb_usb_adapter_dvb_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013dvb-usb: dvb_dmx_init failed: error %d\0A\00", [54 x i8] zeroinitializer }, align 32
@dvb_usb_adapter_dvb_init._entry_ptr.14 = internal global ptr @dvb_usb_adapter_dvb_init._entry.12, section ".printk_index", align 4
@dvb_usb_adapter_dvb_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013dvb-usb: dvb_dmxdev_init failed: error %d\0A\00", [51 x i8] zeroinitializer }, align 32
@dvb_usb_adapter_dvb_init._entry_ptr.17 = internal global ptr @dvb_usb_adapter_dvb_init._entry.15, section ".printk_index", align 4
@dvb_usb_adapter_dvb_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013dvb-usb: dvb_net_init failed: error %d\0A\00", [54 x i8] zeroinitializer }, align 32
@dvb_usb_adapter_dvb_init._entry_ptr.20 = internal global ptr @dvb_usb_adapter_dvb_init._entry.18, section ".printk_index", align 4
@dvb_usb_adapter_dvb_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unregistering DVB part\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dvb_usb_adapter_dvb_exit\00", [39 x i8] zeroinitializer }, align 32
@dvb_usb_adapter_dvb_exit._entry_ptr = internal global ptr @dvb_usb_adapter_dvb_exit._entry, section ".printk_index", align 4
@dvb_usb_adapter_frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013dvb-usb: strange: '%s' #%d,%d doesn't want to attach a frontend.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dvb_usb_adapter_frontend_init\00", [34 x i8] zeroinitializer }, align 32
@dvb_usb_adapter_frontend_init._entry_ptr = internal global ptr @dvb_usb_adapter_frontend_init._entry, section ".printk_index", align 4
@dvb_usb_adapter_frontend_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013dvb-usb: no frontend was attached by '%s'\0A\00", [51 x i8] zeroinitializer }, align 32
@dvb_usb_adapter_frontend_init._entry_ptr.27 = internal global ptr @dvb_usb_adapter_frontend_init._entry.25, section ".printk_index", align 4
@dvb_usb_adapter_frontend_init._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013dvb-usb: Frontend %d registration failed.\0A\00", [51 x i8] zeroinitializer }, align 32
@dvb_usb_adapter_frontend_init._entry_ptr.30 = internal global ptr @dvb_usb_adapter_frontend_init._entry.28, section ".printk_index", align 4
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dvb_usb\00", [24 x i8] zeroinitializer }, align 32
@dvb_usb_media_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 114, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"media controller created\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dvb_usb_media_device_init\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dvb_usb_media_device_init._entry_ptr = internal global ptr @dvb_usb_media_device_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dvb_usb_start_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"start pid: 0x%04x, feedtype: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dvb_usb_start_feed\00", [45 x i8] zeroinitializer }, align 32
@dvb_usb_start_feed._entry_ptr = internal global ptr @dvb_usb_start_feed._entry, section ".printk_index", align 4
@dvb_usb_ctrl_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stop feeding\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb_usb_ctrl_feed\00", [46 x i8] zeroinitializer }, align 32
@dvb_usb_ctrl_feed._entry_ptr = internal global ptr @dvb_usb_ctrl_feed._entry, section ".printk_index", align 4
@dvb_usb_ctrl_feed._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013dvb-usb: error while stopping stream.\0A\00", [55 x i8] zeroinitializer }, align 32
@dvb_usb_ctrl_feed._entry_ptr.42 = internal global ptr @dvb_usb_ctrl_feed._entry.40, section ".printk_index", align 4
@dvb_usb_ctrl_feed._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"setting pid (%s): %5d %04x at index %d '%s'\0A\00", [51 x i8] zeroinitializer }, align 32
@dvb_usb_ctrl_feed._entry_ptr.45 = internal global ptr @dvb_usb_ctrl_feed._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@dvb_usb_ctrl_feed._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.39, ptr @.str.2, i32 59, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"controlling pid parser\0A\00", [40 x i8] zeroinitializer }, align 32
@dvb_usb_ctrl_feed._entry_ptr.52 = internal global ptr @dvb_usb_ctrl_feed._entry.50, section ".printk_index", align 4
@dvb_usb_ctrl_feed._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.39, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013dvb-usb: could not handle pid_parser\0A\00", [56 x i8] zeroinitializer }, align 32
@dvb_usb_ctrl_feed._entry_ptr.55 = internal global ptr @dvb_usb_ctrl_feed._entry.53, section ".printk_index", align 4
@dvb_usb_ctrl_feed._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.39, ptr @.str.2, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"start feeding\0A\00", [17 x i8] zeroinitializer }, align 32
@dvb_usb_ctrl_feed._entry_ptr.58 = internal global ptr @dvb_usb_ctrl_feed._entry.56, section ".printk_index", align 4
@dvb_usb_ctrl_feed._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.39, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013dvb-usb: error while enabling fifo.\0A\00", [57 x i8] zeroinitializer }, align 32
@dvb_usb_ctrl_feed._entry_ptr.61 = internal global ptr @dvb_usb_ctrl_feed._entry.59, section ".printk_index", align 4
@dvb_usb_ctrl_feed._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.39, ptr @.str.2, i32 80, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"submitting all URBs\0A\00", [43 x i8] zeroinitializer }, align 32
@dvb_usb_ctrl_feed._entry_ptr.64 = internal global ptr @dvb_usb_ctrl_feed._entry.62, section ".printk_index", align 4
@dvb_usb_stop_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 95, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"stop pid: 0x%04x, feedtype: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb_usb_stop_feed\00", [46 x i8] zeroinitializer }, align 32
@dvb_usb_stop_feed._entry_ptr = internal global ptr @dvb_usb_stop_feed._entry, section ".printk_index", align 4
@dvb_usb_set_active_fe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013dvb-usb: frontend_ctrl request failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dvb_usb_set_active_fe\00", [42 x i8] zeroinitializer }, align 32
@dvb_usb_set_active_fe._entry_ptr = internal global ptr @dvb_usb_set_active_fe._entry, section ".printk_index", align 4
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 153, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 160, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 166, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 168, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 185, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 193, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 199, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 221, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 284, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 294, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 309, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 110, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 114, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 88, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 31, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 37, i32 5 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 46, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 59, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 67, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 71, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 75, i32 5 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 80, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 95, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.253 = private constant [43 x i8] c"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 241, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @dvb_usb_adapter_dvb_exit._entry, ptr @dvb_usb_adapter_dvb_exit._entry_ptr, ptr @dvb_usb_adapter_dvb_init._entry, ptr @dvb_usb_adapter_dvb_init._entry.12, ptr @dvb_usb_adapter_dvb_init._entry.15, ptr @dvb_usb_adapter_dvb_init._entry.18, ptr @dvb_usb_adapter_dvb_init._entry.3, ptr @dvb_usb_adapter_dvb_init._entry.6, ptr @dvb_usb_adapter_dvb_init._entry.9, ptr @dvb_usb_adapter_dvb_init._entry_ptr, ptr @dvb_usb_adapter_dvb_init._entry_ptr.11, ptr @dvb_usb_adapter_dvb_init._entry_ptr.14, ptr @dvb_usb_adapter_dvb_init._entry_ptr.17, ptr @dvb_usb_adapter_dvb_init._entry_ptr.20, ptr @dvb_usb_adapter_dvb_init._entry_ptr.5, ptr @dvb_usb_adapter_dvb_init._entry_ptr.8, ptr @dvb_usb_adapter_frontend_init._entry, ptr @dvb_usb_adapter_frontend_init._entry.25, ptr @dvb_usb_adapter_frontend_init._entry.28, ptr @dvb_usb_adapter_frontend_init._entry_ptr, ptr @dvb_usb_adapter_frontend_init._entry_ptr.27, ptr @dvb_usb_adapter_frontend_init._entry_ptr.30, ptr @dvb_usb_ctrl_feed._entry, ptr @dvb_usb_ctrl_feed._entry.40, ptr @dvb_usb_ctrl_feed._entry.43, ptr @dvb_usb_ctrl_feed._entry.50, ptr @dvb_usb_ctrl_feed._entry.53, ptr @dvb_usb_ctrl_feed._entry.56, ptr @dvb_usb_ctrl_feed._entry.59, ptr @dvb_usb_ctrl_feed._entry.62, ptr @dvb_usb_ctrl_feed._entry_ptr, ptr @dvb_usb_ctrl_feed._entry_ptr.42, ptr @dvb_usb_ctrl_feed._entry_ptr.45, ptr @dvb_usb_ctrl_feed._entry_ptr.52, ptr @dvb_usb_ctrl_feed._entry_ptr.55, ptr @dvb_usb_ctrl_feed._entry_ptr.58, ptr @dvb_usb_ctrl_feed._entry_ptr.61, ptr @dvb_usb_ctrl_feed._entry_ptr.64, ptr @dvb_usb_media_device_init._entry, ptr @dvb_usb_media_device_init._entry_ptr, ptr @dvb_usb_set_active_fe._entry, ptr @dvb_usb_set_active_fe._entry_ptr, ptr @dvb_usb_start_feed._entry, ptr @dvb_usb_start_feed._entry_ptr, ptr @dvb_usb_stop_feed._entry, ptr @dvb_usb_stop_feed._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_adapter_dvb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_adapter_dvb_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_adapter_dvb_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_adapter_dvb_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_adapter_dvb_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_adapter_dvb_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_adapter_dvb_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_adapter_dvb_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_adapter_frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_adapter_frontend_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_adapter_frontend_init._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_media_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_start_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_ctrl_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_ctrl_feed._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_ctrl_feed._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_ctrl_feed._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_ctrl_feed._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_ctrl_feed._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_ctrl_feed._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_ctrl_feed._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_stop_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_set_active_fe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usb_adapter_dvb_init(ptr noundef %adap, ptr noundef %adapter_nums) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 5
  %0 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adap, align 8
  %desc = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %owner = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %owner, align 4
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 15
  %call = tail call i32 @dvb_register_adapter(ptr noundef %dvb_adap, ptr noundef %5, ptr noundef %7, ptr noundef %dev3, ptr noundef %adapter_nums) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %10 = load i32, ptr @dvb_usb_debug, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #7
  br label %cleanup

if.end9:                                          ; preds = %entry
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 5, i32 5
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %adap, ptr %priv, align 4
  %12 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap, align 8
  %udev1.i = getelementptr inbounds %struct.dvb_usb_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 608) #8
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.body14, label %if.end26

do.body14:                                        ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %17 = load i32, ptr @dvb_usb_debug, align 4
  %and15 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %do.body14.err_mc_crit_edge, label %do.end20

do.body14.err_mc_crit_edge:                       ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_mc

do.end20:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #6
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef -12) #7
  br label %err_mc

if.end26:                                         ; preds = %if.end9
  %desc.i = getelementptr inbounds %struct.dvb_usb_device, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  tail call void @__media_device_usb_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %15, ptr noundef %21, ptr noundef nonnull @.str.31) #4
  %mdev1.i.i = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 5, i32 12
  %22 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i.i.i, ptr %mdev1.i.i, align 4
  %23 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %udev1.i, align 4
  %dev3.i = getelementptr inbounds %struct.usb_device, ptr %24, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev3.i, ptr noundef nonnull @.str.32) #7
  %25 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %adap, align 8
  %read_mac_address = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %26, i32 0, i32 11
  %27 = ptrtoint ptr %read_mac_address to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read_mac_address, align 8
  %tobool28.not = icmp eq ptr %28, null
  br i1 %tobool28.not, label %if.end26.if.end52_crit_edge, label %if.then29

if.end26.if.end52_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end52

if.then29:                                        ; preds = %if.end26
  %proposed_mac = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 5, i32 4
  %call35 = tail call i32 %28(ptr noundef %26, ptr noundef %proposed_mac) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %do.end40, label %do.end48

do.end40:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %proposed_mac) #7
  br label %if.end52

do.end48:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #6
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #7
  br label %if.end52

if.end52:                                         ; preds = %do.end48, %do.end40, %if.end26.if.end52_crit_edge
  %demux = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 7
  %29 = ptrtoint ptr %demux to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 5, ptr %demux, align 8
  %priv54 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %priv54 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %adap, ptr %priv54, align 4
  %filternum = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 7, i32 2
  %31 = ptrtoint ptr %filternum to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %filternum, align 8
  %num_frontends = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_frontends, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp57178 = icmp sgt i32 %33, 0
  br i1 %cmp57178, label %if.end52.for.body_crit_edge, label %if.end52.for.end_crit_edge

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end52.for.body_crit_edge
  %i.0179 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end52.for.body_crit_edge ]
  %34 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %filternum, align 8
  %max_feed_count = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9, i32 %i.0179, i32 5
  %36 = ptrtoint ptr %max_feed_count to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_feed_count, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp60 = icmp slt i32 %35, %37
  br i1 %cmp60, label %if.then61, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then61:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %filternum to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %filternum, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then61, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0179, 1
  %exitcond.not = icmp eq i32 %inc, %33
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end52.for.end_crit_edge
  %39 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %filternum, align 8
  %feednum = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 7, i32 3
  %41 = ptrtoint ptr %feednum to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %feednum, align 4
  %start_feed = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 7, i32 4
  %42 = ptrtoint ptr %start_feed to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @dvb_usb_start_feed, ptr %start_feed, align 8
  %stop_feed = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 7, i32 5
  %43 = ptrtoint ptr %stop_feed to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @dvb_usb_stop_feed, ptr %stop_feed, align 4
  %write_to_decoder = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 7, i32 6
  %44 = ptrtoint ptr %write_to_decoder to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %write_to_decoder, align 8
  %call75 = tail call i32 @dvb_dmx_init(ptr noundef %demux) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %do.end80, label %if.end83

do.end80:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %call82 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %call75) #7
  br label %err_dmx

if.end83:                                         ; preds = %for.end
  %45 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %filternum, align 8
  %dmxdev = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 6
  %filternum86 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 6, i32 4
  %47 = ptrtoint ptr %filternum86 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %filternum86, align 4
  %demux90 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 6, i32 3
  %48 = ptrtoint ptr %demux90 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %demux, ptr %demux90, align 4
  %capabilities92 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 6, i32 5
  %49 = ptrtoint ptr %capabilities92 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %capabilities92, align 4
  %call95 = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev, ptr noundef %dvb_adap) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %cmp96 = icmp slt i32 %call95, 0
  br i1 %cmp96, label %do.end100, label %if.end103

do.end100:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #6
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %call95) #7
  br label %err_dmx_dev

if.end103:                                        ; preds = %if.end83
  %dvb_net = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 8
  %call107 = tail call i32 @dvb_net_init(ptr noundef %dvb_adap, ptr noundef %dvb_net, ptr noundef %demux) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %do.end112, label %if.end115

do.end112:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #6
  %call114 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %call107) #7
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #4
  br label %err_dmx_dev

if.end115:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #6
  %state = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %state, align 8
  %or = or i32 %51, 1
  store i32 %or, ptr %state, align 8
  br label %cleanup

err_dmx_dev:                                      ; preds = %do.end112, %do.end100
  %ret.0 = phi i32 [ %call95, %do.end100 ], [ %call107, %do.end112 ]
  tail call void @dvb_dmx_release(ptr noundef %demux) #4
  br label %err_dmx

err_dmx:                                          ; preds = %err_dmx_dev, %do.end80
  %ret.1 = phi i32 [ %call75, %do.end80 ], [ %ret.0, %err_dmx_dev ]
  %52 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mdev1.i.i, align 4
  %tobool.not.i173 = icmp eq ptr %53, null
  br i1 %tobool.not.i173, label %err_dmx.err_mc_crit_edge, label %if.end.i174

err_dmx.err_mc_crit_edge:                         ; preds = %err_dmx
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_mc

if.end.i174:                                      ; preds = %err_dmx
  call void @__sanitizer_cov_trace_pc() #6
  %mdev_lock.i = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 5, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mdev_lock.i, i32 noundef 0) #4
  %54 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mdev1.i.i, align 4
  tail call void @media_device_unregister(ptr noundef %55) #4
  %56 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mdev1.i.i, align 4
  tail call void @media_device_cleanup(ptr noundef %57) #4
  %58 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mdev1.i.i, align 4
  tail call void @kfree(ptr noundef %59) #4
  %60 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %mdev1.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %mdev_lock.i) #4
  br label %err_mc

err_mc:                                           ; preds = %if.end.i174, %err_dmx.err_mc_crit_edge, %do.end20, %do.body14.err_mc_crit_edge
  %ret.2 = phi i32 [ -12, %do.end20 ], [ -12, %do.body14.err_mc_crit_edge ], [ %ret.1, %err_dmx.err_mc_crit_edge ], [ %ret.1, %if.end.i174 ]
  %call119 = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adap) #4
  br label %cleanup

cleanup:                                          ; preds = %err_mc, %if.end115, %do.end, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end115 ], [ %call, %do.end ], [ %call, %do.body.cleanup_crit_edge ], [ %ret.2, %err_mc ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_usb_start_feed(ptr nocapture noundef readonly %dvbdmxfeed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %0 = load i32, ptr @dvb_usb_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %1 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %pid, align 4
  %conv = zext i16 %2 to i32
  %type = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %conv, i32 noundef %4) #7
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call fastcc i32 @dvb_usb_ctrl_feed(ptr noundef %dvbdmxfeed, i32 noundef 1)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_usb_stop_feed(ptr nocapture noundef readonly %dvbdmxfeed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %0 = load i32, ptr @dvb_usb_debug, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %1 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %pid, align 4
  %conv = zext i16 %2 to i32
  %type = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 4
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %conv, i32 noundef %4) #7
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  %call3 = tail call fastcc i32 @dvb_usb_ctrl_feed(ptr noundef %dvbdmxfeed, i32 noundef 0)
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_net_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usb_adapter_dvb_exit(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %do.body

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %2 = load i32, ptr @dvb_usb_debug, align 4
  %and1 = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %do.body.do.end5_crit_edge, label %do.end

do.body.do.end5_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end5

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #7
  br label %do.end5

do.end5:                                          ; preds = %do.end, %do.body.do.end5_crit_edge
  %dvb_net = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 8
  tail call void @dvb_net_release(ptr noundef %dvb_net) #4
  %demux = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 7
  %close = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 7, i32 0, i32 4
  %3 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %close, align 8
  %call8 = tail call i32 %4(ptr noundef %demux) #4
  %dmxdev = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 6
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #4
  tail call void @dvb_dmx_release(ptr noundef %demux) #4
  %mdev.i = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 5, i32 12
  %5 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdev.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end5.dvb_usb_media_device_unregister.exit_crit_edge, label %if.end.i

do.end5.dvb_usb_media_device_unregister.exit_crit_edge: ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %dvb_usb_media_device_unregister.exit

if.end.i:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #6
  %mdev_lock.i = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 5, i32 11
  tail call void @mutex_lock_nested(ptr noundef %mdev_lock.i, i32 noundef 0) #4
  %7 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdev.i, align 4
  tail call void @media_device_unregister(ptr noundef %8) #4
  %9 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mdev.i, align 4
  tail call void @media_device_cleanup(ptr noundef %10) #4
  %11 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdev.i, align 4
  tail call void @kfree(ptr noundef %12) #4
  %13 = ptrtoint ptr %mdev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %mdev.i, align 4
  tail call void @mutex_unlock(ptr noundef %mdev_lock.i) #4
  br label %dvb_usb_media_device_unregister.exit

dvb_usb_media_device_unregister.exit:             ; preds = %if.end.i, %do.end5.dvb_usb_media_device_unregister.exit_crit_edge
  %dvb_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 5
  %call10 = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adap) #4
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 8
  %and12 = and i32 %15, -2
  store i32 %and12, ptr %state, align 8
  br label %if.end13

if.end13:                                         ; preds = %dvb_usb_media_device_unregister.exit, %entry.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usb_adapter_frontend_init(ptr noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %num_frontends = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_frontends, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp145 = icmp sgt i32 %1, 0
  br i1 %cmp145, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dvb_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 5
  %num_frontends_initialized = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %if.end83.for.body_crit_edge, %for.body.lr.ph
  %i.0146 = phi i32 [ 0, %for.body.lr.ph ], [ %inc84, %if.end83.for.body_crit_edge ]
  %frontend_attach = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 1, i32 3, i32 %i.0146, i32 5
  %2 = ptrtoint ptr %frontend_attach to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %frontend_attach, align 4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adap, align 8
  %desc = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 3
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %id, align 4
  %conv = zext i8 %11 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %9, i32 noundef %conv, i32 noundef %i.0146) #7
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call7 = tail call i32 %3(ptr noundef %adap) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx8 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9, i32 %i.0146
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx8, align 8
  %cmp10 = icmp eq ptr %13, null
  br i1 %cmp10, label %lor.lhs.false.if.then12_crit_edge, label %if.end25

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end.if.then12_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0146)
  %cmp13 = icmp eq i32 %i.0146, 0
  br i1 %cmp13, label %do.end18, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap, align 8
  %desc21 = getelementptr inbounds %struct.dvb_usb_device, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %desc21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc21, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %19) #7
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false
  %id29 = getelementptr inbounds %struct.dvb_frontend, ptr %13, i32 0, i32 10
  %20 = ptrtoint ptr %id29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %i.0146, ptr %id29, align 4
  %21 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx8, align 8
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %22, i32 0, i32 1, i32 5
  %23 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init, align 4
  %fe_init = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9, i32 %i.0146, i32 1
  %25 = ptrtoint ptr %fe_init to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %fe_init, align 4
  store ptr @dvb_usb_fe_wakeup, ptr %init, align 4
  %26 = load ptr, ptr %arrayidx8, align 8
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %26, i32 0, i32 1, i32 6
  %27 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sleep, align 4
  %fe_sleep = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9, i32 %i.0146, i32 2
  %29 = ptrtoint ptr %fe_sleep to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %fe_sleep, align 8
  store ptr @dvb_usb_fe_sleep, ptr %sleep, align 4
  %30 = load ptr, ptr %arrayidx8, align 8
  %call54 = tail call i32 @dvb_register_frontend(ptr noundef %dvb_adap, ptr noundef %30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end71, label %do.end59

do.end59:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %i.0146) #7
  %31 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx8, align 8
  tail call void @dvb_frontend_detach(ptr noundef %32) #4
  %33 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %arrayidx8, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0146)
  %cmp68 = icmp eq i32 %i.0146, 0
  %. = select i1 %cmp68, i32 -19, i32 0
  br label %cleanup

if.end71:                                         ; preds = %if.end25
  %tuner_attach = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 1, i32 3, i32 %i.0146, i32 6
  %34 = ptrtoint ptr %tuner_attach to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tuner_attach, align 4
  %cmp75.not = icmp eq ptr %35, null
  br i1 %cmp75.not, label %if.end71.if.end83_crit_edge, label %if.then77

if.end71.if.end83_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end83

if.then77:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  %call82 = tail call i32 %35(ptr noundef %adap) #4
  br label %if.end83

if.end83:                                         ; preds = %if.then77, %if.end71.if.end83_crit_edge
  %36 = ptrtoint ptr %num_frontends_initialized to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_frontends_initialized, align 4
  %inc = add i32 %37, 1
  store i32 %inc, ptr %num_frontends_initialized, align 4
  %inc84 = add nuw nsw i32 %i.0146, 1
  %38 = ptrtoint ptr %num_frontends to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_frontends, align 4
  %cmp = icmp slt i32 %inc84, %39
  br i1 %cmp, label %if.end83.for.body_crit_edge, label %if.end83.for.end_crit_edge

if.end83.for.end_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end83.for.body_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end83.for.end_crit_edge, %entry.for.end_crit_edge
  %dvb_adap85 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 5
  %call86 = tail call i32 @dvb_create_media_graph(ptr noundef %dvb_adap85, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end89:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %mdev.i = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 5, i32 12
  %40 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mdev.i, align 4
  %call.i = tail call i32 @__media_device_register(ptr noundef %41, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %for.end.cleanup_crit_edge, %do.end59, %do.end18, %if.then12.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call.i, %if.end89 ], [ 0, %do.end18 ], [ 0, %if.then12.cleanup_crit_edge ], [ %., %do.end59 ], [ %call86, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_usb_fe_wakeup(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call = tail call i32 @dvb_usb_device_power_ctrl(ptr noundef %5, i32 noundef 1) #4
  %6 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dvb, align 4
  %priv.i = getelementptr inbounds %struct.dvb_adapter, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 4
  %frontend_ctrl.i = getelementptr inbounds %struct.dvb_usb_adapter, ptr %9, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %frontend_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %frontend_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %cond.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

cond.true.i:                                      ; preds = %entry
  %call.i = tail call i32 %11(ptr noundef %fe, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %phi.cmp.i = icmp slt i32 %call.i, 0
  br i1 %phi.cmp.i, label %do.end.i, label %cond.true.i.if.end.i_crit_edge

cond.true.i.if.end.i_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

do.end.i:                                         ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #7
  br label %dvb_usb_set_active_fe.exit

if.end.i:                                         ; preds = %cond.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %id.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %12 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.i, align 4
  %active_fe.i = getelementptr inbounds %struct.dvb_usb_adapter, ptr %9, i32 0, i32 10
  %14 = ptrtoint ptr %active_fe.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %active_fe.i, align 8
  br label %dvb_usb_set_active_fe.exit

dvb_usb_set_active_fe.exit:                       ; preds = %if.end.i, %do.end.i
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %fe_init = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 9, i32 %16, i32 1
  %17 = ptrtoint ptr %fe_init to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fe_init, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %dvb_usb_set_active_fe.exit.if.end_crit_edge, label %if.then

dvb_usb_set_active_fe.exit.if.end_crit_edge:      ; preds = %dvb_usb_set_active_fe.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %dvb_usb_set_active_fe.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 %18(ptr noundef %fe) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %dvb_usb_set_active_fe.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_usb_fe_sleep(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %fe_sleep = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 9, i32 %5, i32 2
  %6 = ptrtoint ptr %fe_sleep to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fe_sleep, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 %7(ptr noundef %fe) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %8 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvb, align 4
  %priv.i = getelementptr inbounds %struct.dvb_adapter, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv.i, align 4
  %frontend_ctrl.i = getelementptr inbounds %struct.dvb_usb_adapter, ptr %11, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %frontend_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %frontend_ctrl.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.dvb_usb_set_active_fe.exit_crit_edge, label %cond.true.i

if.end.dvb_usb_set_active_fe.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %dvb_usb_set_active_fe.exit

cond.true.i:                                      ; preds = %if.end
  %call.i = tail call i32 %13(ptr noundef %fe, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %phi.cmp.i = icmp slt i32 %call.i, 0
  br i1 %phi.cmp.i, label %do.end.i, label %cond.true.i.dvb_usb_set_active_fe.exit_crit_edge

cond.true.i.dvb_usb_set_active_fe.exit_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dvb_usb_set_active_fe.exit

do.end.i:                                         ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67) #7
  br label %dvb_usb_set_active_fe.exit

dvb_usb_set_active_fe.exit:                       ; preds = %do.end.i, %cond.true.i.dvb_usb_set_active_fe.exit_crit_edge, %if.end.dvb_usb_set_active_fe.exit_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %call6 = tail call i32 @dvb_usb_device_power_ctrl(ptr noundef %15, i32 noundef 0) #4
  ret i32 %call6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_create_media_graph(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usb_adapter_frontend_exit(ptr nocapture noundef %adap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %num_frontends_initialized = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 11
  %0 = ptrtoint ptr %num_frontends_initialized to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_frontends_initialized, align 4
  %i.017 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.017)
  %cmp18 = icmp sgt i32 %i.017, -1
  br i1 %cmp18, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %i.0, %for.inc.for.body_crit_edge ], [ %i.017, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9, i32 %i.019
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %cmp1.not = icmp eq ptr %3, null
  br i1 %cmp1.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %3) #4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 8
  tail call void @dvb_frontend_detach(ptr noundef %5) #4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %i.0 = add i32 %i.019, -1
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %6 = ptrtoint ptr %num_frontends_initialized to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %num_frontends_initialized, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__media_device_usb_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_usb_ctrl_feed(ptr nocapture noundef readonly %dvbdmxfeed, i32 noundef %onoff) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %active_fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %active_fe to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %active_fe, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp slt i32 %5, 0
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %num_frontends_initialized = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %num_frontends_initialized to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_frontends_initialized, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3.not = icmp slt i32 %5, %7
  br i1 %cmp3.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %feedcount = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %feedcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %feedcount, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %cond = select i1 %tobool.not, i32 -1, i32 1
  %add = add i32 %9, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp6 = icmp eq i32 %add, 0
  br i1 %cmp6, label %do.body, label %if.end5.if.end35_crit_edge

if.end5.if.end35_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

do.body:                                          ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %10 = load i32, ptr @dvb_usb_debug, align 4
  %and = and i32 %10, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %do.body.do.end13_crit_edge, label %do.end

do.body.do.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end13

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #7
  br label %do.end13

do.end13:                                         ; preds = %do.end, %do.body.do.end13_crit_edge
  %11 = ptrtoint ptr %active_fe to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %active_fe, align 8
  %stream = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 9, i32 %12, i32 3
  %call15 = tail call i32 @usb_urb_kill(ptr noundef %stream) #4
  %13 = ptrtoint ptr %active_fe to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %active_fe, align 8
  %streaming_ctrl = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 1, i32 3, i32 %14, i32 2
  %15 = ptrtoint ptr %streaming_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %streaming_ctrl, align 4
  %cmp18.not = icmp eq ptr %16, null
  br i1 %cmp18.not, label %do.end13.if.end35_crit_edge, label %if.then19

do.end13.if.end35_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then19:                                        ; preds = %do.end13
  %call25 = tail call i32 %16(ptr noundef nonnull %3, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end30, label %if.then19.if.end35_crit_edge

if.then19.if.end35_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

do.end30:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #6
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #7
  br label %cleanup

if.end35:                                         ; preds = %if.then19.if.end35_crit_edge, %do.end13.if.end35_crit_edge, %if.end5.if.end35_crit_edge
  %17 = ptrtoint ptr %feedcount to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %feedcount, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %18 = load i32, ptr @dvb_usb_debug, align 4
  %and38 = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end35.do.end57_crit_edge, label %do.end43

if.end35.do.end57_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end57

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %active_fe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %active_fe, align 8
  %pid_filtering = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 9, i32 %20, i32 4
  %21 = ptrtoint ptr %pid_filtering to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pid_filtering, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool48.not = icmp eq i32 %22, 0
  %cond49 = select i1 %tobool48.not, ptr @.str.47, ptr @.str.46
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %23 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %pid, align 4
  %conv = zext i16 %24 to i32
  %index = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 16
  %25 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index, align 8
  %cond53 = select i1 %tobool.not, ptr @.str.49, ptr @.str.48
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef nonnull %cond49, i32 noundef %conv, i32 noundef %conv, i32 noundef %26, ptr noundef nonnull %cond53) #7
  br label %do.end57

do.end57:                                         ; preds = %do.end43, %if.end35.do.end57_crit_edge
  %27 = ptrtoint ptr %active_fe to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %active_fe, align 8
  %arrayidx61 = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 1, i32 3, i32 %28
  %29 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx61, align 4
  %and62 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %do.end57.if.end85_crit_edge, label %land.lhs.true

do.end57.if.end85_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

land.lhs.true:                                    ; preds = %do.end57
  %pid_filtering67 = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 9, i32 %28, i32 4
  %31 = ptrtoint ptr %pid_filtering67 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pid_filtering67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool68.not = icmp eq i32 %32, 0
  br i1 %tobool68.not, label %land.lhs.true.if.end85_crit_edge, label %land.lhs.true69

land.lhs.true.if.end85_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

land.lhs.true69:                                  ; preds = %land.lhs.true
  %pid_filter = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 1, i32 3, i32 %28, i32 4
  %33 = ptrtoint ptr %pid_filter to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pid_filter, align 4
  %cmp74.not = icmp eq ptr %34, null
  br i1 %cmp74.not, label %land.lhs.true69.if.end85_crit_edge, label %if.then76

land.lhs.true69.if.end85_crit_edge:               ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end85

if.then76:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #6
  %index82 = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 16
  %35 = ptrtoint ptr %index82 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index82, align 8
  %pid83 = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %37 = ptrtoint ptr %pid83 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %pid83, align 4
  %call84 = tail call i32 %34(ptr noundef nonnull %3, i32 noundef %36, i16 noundef zeroext %38, i32 noundef %onoff) #4
  br label %if.end85

if.end85:                                         ; preds = %if.then76, %land.lhs.true69.if.end85_crit_edge, %land.lhs.true.if.end85_crit_edge, %do.end57.if.end85_crit_edge
  %39 = ptrtoint ptr %feedcount to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %feedcount, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %onoff)
  %cmp87 = icmp eq i32 %40, %onoff
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp91 = icmp sgt i32 %40, 0
  %or.cond = and i1 %cmp87, %cmp91
  br i1 %or.cond, label %do.body94, label %if.end85.cleanup_crit_edge

if.end85.cleanup_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body94:                                        ; preds = %if.end85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %41 = load i32, ptr @dvb_usb_debug, align 4
  %and95 = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %do.body94.do.end105_crit_edge, label %do.end100

do.body94.do.end105_crit_edge:                    ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end105

do.end100:                                        ; preds = %do.body94
  call void @__sanitizer_cov_trace_pc() #6
  %call102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51) #7
  br label %do.end105

do.end105:                                        ; preds = %do.end100, %do.body94.do.end105_crit_edge
  %42 = ptrtoint ptr %active_fe to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %active_fe, align 8
  %arrayidx109 = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 1, i32 3, i32 %43
  %44 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx109, align 4
  %46 = and i32 %45, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %.not = icmp eq i32 %46, 3
  br i1 %.not, label %land.lhs.true121, label %do.end105.do.body149_crit_edge

do.end105.do.body149_crit_edge:                   ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body149

land.lhs.true121:                                 ; preds = %do.end105
  %pid_filter_ctrl = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 1, i32 3, i32 %43, i32 3
  %47 = ptrtoint ptr %pid_filter_ctrl to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pid_filter_ctrl, align 4
  %cmp126.not = icmp eq ptr %48, null
  br i1 %cmp126.not, label %land.lhs.true121.do.body149_crit_edge, label %if.then128

land.lhs.true121.do.body149_crit_edge:            ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body149

if.then128:                                       ; preds = %land.lhs.true121
  %pid_filtering137 = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 9, i32 %43, i32 4
  %49 = ptrtoint ptr %pid_filtering137 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %pid_filtering137, align 4
  %call138 = tail call i32 %48(ptr noundef nonnull %3, i32 noundef %50) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %cmp139 = icmp slt i32 %call138, 0
  br i1 %cmp139, label %do.end144, label %if.then128.do.body149_crit_edge

if.then128.do.body149_crit_edge:                  ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body149

do.end144:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #6
  %call146 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54) #7
  br label %cleanup

do.body149:                                       ; preds = %if.then128.do.body149_crit_edge, %land.lhs.true121.do.body149_crit_edge, %do.end105.do.body149_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %51 = load i32, ptr @dvb_usb_debug, align 4
  %and150 = and i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and150)
  %tobool151.not = icmp eq i32 %and150, 0
  br i1 %tobool151.not, label %do.body149.do.end160_crit_edge, label %do.end155

do.body149.do.end160_crit_edge:                   ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end160

do.end155:                                        ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #6
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57) #7
  br label %do.end160

do.end160:                                        ; preds = %do.end155, %do.body149.do.end160_crit_edge
  %52 = ptrtoint ptr %active_fe to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %active_fe, align 8
  %streaming_ctrl165 = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 1, i32 3, i32 %53, i32 2
  %54 = ptrtoint ptr %streaming_ctrl165 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %streaming_ctrl165, align 4
  %cmp166.not = icmp eq ptr %55, null
  br i1 %cmp166.not, label %do.end160.do.body185_crit_edge, label %if.then168

do.end160.do.body185_crit_edge:                   ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body185

if.then168:                                       ; preds = %do.end160
  %call174 = tail call i32 %55(ptr noundef nonnull %3, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %cmp175 = icmp slt i32 %call174, 0
  br i1 %cmp175, label %do.end180, label %if.then168.do.body185_crit_edge

if.then168.do.body185_crit_edge:                  ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body185

do.end180:                                        ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #6
  %call182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60) #7
  br label %cleanup

do.body185:                                       ; preds = %if.then168.do.body185_crit_edge, %do.end160.do.body185_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %56 = load i32, ptr @dvb_usb_debug, align 4
  %and186 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and186)
  %tobool187.not = icmp eq i32 %and186, 0
  br i1 %tobool187.not, label %do.body185.do.end196_crit_edge, label %do.end191

do.body185.do.end196_crit_edge:                   ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end196

do.end191:                                        ; preds = %do.body185
  call void @__sanitizer_cov_trace_pc() #6
  %call193 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63) #7
  br label %do.end196

do.end196:                                        ; preds = %do.end191, %do.body185.do.end196_crit_edge
  %57 = ptrtoint ptr %active_fe to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %active_fe, align 8
  %stream200 = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 9, i32 %58, i32 3
  %call201 = tail call i32 @usb_urb_submit(ptr noundef %stream200) #4
  br label %cleanup

cleanup:                                          ; preds = %do.end196, %do.end180, %do.end144, %if.end85.cleanup_crit_edge, %do.end30, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %do.end30 ], [ %call138, %do.end144 ], [ %call174, %do.end180 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %do.end196 ], [ 0, %if.end85.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_submit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_power_ctrl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 153, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dvb_usb_adapter_dvb_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dvb_usb_adapter_dvb_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 160, i32 3}
!8 = !{ptr @dvb_usb_adapter_dvb_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @dvb_usb_adapter_dvb_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 166, i32 4}
!12 = !{ptr @dvb_usb_adapter_dvb_init._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @dvb_usb_adapter_dvb_init._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 168, i32 4}
!16 = !{ptr @dvb_usb_adapter_dvb_init._entry.9, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @dvb_usb_adapter_dvb_init._entry_ptr.11, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 185, i32 3}
!20 = !{ptr @dvb_usb_adapter_dvb_init._entry.12, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @dvb_usb_adapter_dvb_init._entry_ptr.14, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 193, i32 3}
!24 = !{ptr @dvb_usb_adapter_dvb_init._entry.15, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @dvb_usb_adapter_dvb_init._entry_ptr.17, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.19, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 199, i32 3}
!28 = !{ptr @dvb_usb_adapter_dvb_init._entry.18, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @dvb_usb_adapter_dvb_init._entry_ptr.20, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 221, i32 3}
!32 = !{ptr @.str.22, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @dvb_usb_adapter_dvb_exit._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @dvb_usb_adapter_dvb_exit._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 284, i32 4}
!37 = !{ptr @.str.24, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @dvb_usb_adapter_frontend_init._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @dvb_usb_adapter_frontend_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 294, i32 5}
!42 = !{ptr @dvb_usb_adapter_frontend_init._entry.25, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @dvb_usb_adapter_frontend_init._entry_ptr.27, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.29, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 309, i32 4}
!46 = !{ptr @dvb_usb_adapter_frontend_init._entry.28, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @dvb_usb_adapter_frontend_init._entry_ptr.30, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.31, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 110, i32 2}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 114, i32 2}
!52 = !{ptr @.str.33, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.34, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.35, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @dvb_usb_media_device_init._entry, !51, !"_entry", i1 false, i1 false}
!56 = !{ptr @dvb_usb_media_device_init._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.36, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 88, i32 2}
!59 = !{ptr @.str.37, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @dvb_usb_start_feed._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @dvb_usb_start_feed._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 31, i32 3}
!64 = !{ptr @.str.39, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @dvb_usb_ctrl_feed._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @dvb_usb_ctrl_feed._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 37, i32 5}
!69 = !{ptr @dvb_usb_ctrl_feed._entry.40, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @dvb_usb_ctrl_feed._entry_ptr.42, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.44, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 46, i32 2}
!73 = !{ptr @dvb_usb_ctrl_feed._entry.43, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @dvb_usb_ctrl_feed._entry_ptr.45, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.46, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.47, !72, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.48, !72, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.49, !72, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.51, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 59, i32 3}
!81 = !{ptr @dvb_usb_ctrl_feed._entry.50, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @dvb_usb_ctrl_feed._entry_ptr.52, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.54, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 67, i32 5}
!85 = !{ptr @dvb_usb_ctrl_feed._entry.53, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @dvb_usb_ctrl_feed._entry_ptr.55, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.57, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 71, i32 3}
!89 = !{ptr @dvb_usb_ctrl_feed._entry.56, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @dvb_usb_ctrl_feed._entry_ptr.58, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.60, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 75, i32 5}
!93 = !{ptr @dvb_usb_ctrl_feed._entry.59, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @dvb_usb_ctrl_feed._entry_ptr.61, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.63, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 80, i32 3}
!97 = !{ptr @dvb_usb_ctrl_feed._entry.62, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @dvb_usb_ctrl_feed._entry_ptr.64, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.65, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 95, i32 2}
!101 = !{ptr @.str.66, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @dvb_usb_stop_feed._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @dvb_usb_stop_feed._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.67, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-dvb.c", i32 241, i32 3}
!106 = !{ptr @.str.68, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @dvb_usb_set_active_fe._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @dvb_usb_set_active_fe._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
