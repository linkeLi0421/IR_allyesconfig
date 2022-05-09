; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb-v2/dvb_usb_core.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dvb_usbv2_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_usbv2_probe\09\09\09\09"
module asm "\09.long\09__crc_dvb_usbv2_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_usbv2_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_usbv2_probe\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_usbv2_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_usbv2_disconnect\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_usbv2_disconnect\09\09\09\09"
module asm "\09.long\09__crc_dvb_usbv2_disconnect\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_usbv2_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_usbv2_disconnect\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_usbv2_disconnect:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_usbv2_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_usbv2_suspend\09\09\09\09"
module asm "\09.long\09__crc_dvb_usbv2_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_usbv2_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_usbv2_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_usbv2_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_usbv2_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_usbv2_resume\09\09\09\09"
module asm "\09.long\09__crc_dvb_usbv2_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_usbv2_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_usbv2_resume\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_usbv2_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_usbv2_reset_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_usbv2_reset_resume\09\09\09\09"
module asm "\09.long\09__crc_dvb_usbv2_reset_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_usbv2_reset_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_usbv2_reset_resume\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_usbv2_reset_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.dvb_usb_device = type { ptr, ptr, ptr, i8, ptr, ptr, %struct.dvb_usb_rc, i32, %struct.mutex, %struct.mutex, %struct.i2c_adapter, [2 x %struct.dvb_usb_adapter], ptr, [64 x i8], %struct.delayed_work, ptr }
%struct.dvb_usb_rc = type { ptr, i64, ptr, ptr, i32, i32, i8, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.dvb_usb_adapter = type { ptr, %struct.usb_data_stream, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x ptr], [3 x ptr], [3 x ptr] }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i8, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.usb_data_stream_properties = type { i8, i8, i8, %union.anon.124 }
%union.anon.124 = type { %struct.anon.126 }
%struct.anon.126 = type { i32, i32, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_usb_driver_info = type { ptr, ptr, ptr }
%struct.dvb_usb_device_properties = type { ptr, ptr, ptr, i8, i32, i8, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_usb_adapter_properties = type { i8, i8, ptr, ptr, %struct.usb_data_stream_properties }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.140], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.140 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.141 }>
%union.anon.141 = type { i64 }
%struct.dvb_demux_feed = type { %union.anon.138, %union.anon.139, ptr, ptr, i32, i32, i16, i64, ptr, i32, i32, i32, i32, i8, i16, %struct.list_head, i32 }
%union.anon.138 = type { %struct.dmx_section_feed }
%struct.dmx_section_feed = type { i32, ptr, ptr, i32, i32, ptr, [4284 x i8], i16, i16, i16, ptr, ptr, ptr, ptr, ptr }
%union.anon.139 = type { ptr }

@__param_str_disable_rc_polling = internal constant [30 x i8] c"dvb_usb_v2.disable_rc_polling\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usbv2_disable_rc_polling = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_rc_polling = internal constant %struct.kernel_param { ptr @__param_str_disable_rc_polling, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usbv2_disable_rc_polling } }, section "__param", align 4
@__UNIQUE_ID_disable_rc_pollingtype386 = internal constant [43 x i8] c"dvb_usb_v2.parmtype=disable_rc_polling:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_rc_polling387 = internal constant [79 x i8] c"dvb_usb_v2.parm=disable_rc_polling:disable remote control polling (default: 0)\00", section ".modinfo", align 1
@__param_str_force_pid_filter_usage = internal constant [34 x i8] c"dvb_usb_v2.force_pid_filter_usage\00", align 1
@dvb_usb_force_pid_filter_usage = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_force_pid_filter_usage = internal constant %struct.kernel_param { ptr @__param_str_force_pid_filter_usage, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_force_pid_filter_usage } }, section "__param", align 4
@__UNIQUE_ID_force_pid_filter_usagetype388 = internal constant [47 x i8] c"dvb_usb_v2.parmtype=force_pid_filter_usage:int\00", section ".modinfo", align 1
@__UNIQUE_ID_force_pid_filter_usage389 = internal constant [106 x i8] c"dvb_usb_v2.parm=force_pid_filter_usage:force all DVB USB devices to use a PID filter, if any (default: 0)\00", section ".modinfo", align 1
@dvb_usbv2_probe.__UNIQUE_ID_ddebug427 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dvb_usb_v2\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_usbv2_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/media/usb/dvb-usb-v2/dvb_usb_core.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: bInterfaceNumber=%d\0A\00", [39 x i8] zeroinitializer }, align 32
@dvb_usbv2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 902, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: driver_info failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@dvb_usbv2_probe._entry_ptr = internal global ptr @dvb_usbv2_probe._entry, section ".printk_index", align 4
@dvb_usbv2_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 909, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: kzalloc() failed\0A\00", [42 x i8] zeroinitializer }, align 32
@dvb_usbv2_probe._entry_ptr.9 = internal global ptr @dvb_usbv2_probe._entry.7, section ".printk_index", align 4
@dvb_usbv2_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&d->usb_mutex\00", [18 x i8] zeroinitializer }, align 32
@dvb_usbv2_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&d->i2c_mutex\00", [18 x i8] zeroinitializer }, align 32
@dvb_usbv2_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 933, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@dvb_usbv2_probe._entry_ptr.14 = internal global ptr @dvb_usbv2_probe._entry.13, section ".printk_index", align 4
@dvb_usbv2_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 951, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: found a '%s' in cold state\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@dvb_usbv2_probe._entry_ptr.18 = internal global ptr @dvb_usbv2_probe._entry.15, section ".printk_index", align 4
@dvb_usbv2_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 979, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: found a '%s' in warm state\0A\00", [32 x i8] zeroinitializer }, align 32
@dvb_usbv2_probe._entry_ptr.21 = internal global ptr @dvb_usbv2_probe._entry.19, section ".printk_index", align 4
@dvb_usbv2_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 987, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: '%s' successfully initialized and connected\0A\00", [47 x i8] zeroinitializer }, align 32
@dvb_usbv2_probe._entry_ptr.24 = internal global ptr @dvb_usbv2_probe._entry.22, section ".printk_index", align 4
@dvb_usbv2_probe.__UNIQUE_ID_ddebug428 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.25, i8 0, i8 -6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: failed=%d\0A\00", [17 x i8] zeroinitializer }, align 32
@__kstrtab_dvb_usbv2_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_usbv2_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_usbv2_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_usbv2_probe to i32), ptr @__kstrtab_dvb_usbv2_probe, ptr @__kstrtabns_dvb_usbv2_probe }, section "___ksymtab+dvb_usbv2_probe", align 4
@dvb_usbv2_disconnect.__UNIQUE_ID_ddebug429 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.2, ptr @.str.3, i8 0, i8 -3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb_usbv2_disconnect\00", [43 x i8] zeroinitializer }, align 32
@dvb_usbv2_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.26, ptr @.str.2, i32 1027, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016%s: '%s:%s' successfully deinitialized and disconnected\0A\00", [37 x i8] zeroinitializer }, align 32
@dvb_usbv2_disconnect._entry_ptr = internal global ptr @dvb_usbv2_disconnect._entry, section ".printk_index", align 4
@__kstrtab_dvb_usbv2_disconnect = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_usbv2_disconnect = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_usbv2_disconnect = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_usbv2_disconnect to i32), ptr @__kstrtab_dvb_usbv2_disconnect, ptr @__kstrtabns_dvb_usbv2_disconnect }, section "___ksymtab+dvb_usbv2_disconnect", align 4
@dvb_usbv2_suspend.__UNIQUE_ID_ddebug430 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 1, i8 3, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb_usbv2_suspend\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s:\0A\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_dvb_usbv2_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_usbv2_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_usbv2_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_usbv2_suspend to i32), ptr @__kstrtab_dvb_usbv2_suspend, ptr @__kstrtabns_dvb_usbv2_suspend }, section "___ksymtab+dvb_usbv2_suspend", align 4
@dvb_usbv2_resume.__UNIQUE_ID_ddebug432 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.2, ptr @.str.29, i8 1, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dvb_usbv2_resume\00", [47 x i8] zeroinitializer }, align 32
@__kstrtab_dvb_usbv2_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_usbv2_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_usbv2_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_usbv2_resume to i32), ptr @__kstrtab_dvb_usbv2_resume, ptr @__kstrtabns_dvb_usbv2_resume }, section "___ksymtab+dvb_usbv2_resume", align 4
@dvb_usbv2_reset_resume.__UNIQUE_ID_ddebug433 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.31, ptr @.str.2, ptr @.str.29, i8 1, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb_usbv2_reset_resume\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_dvb_usbv2_reset_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_usbv2_reset_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_usbv2_reset_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_usbv2_reset_resume to i32), ptr @__kstrtab_dvb_usbv2_reset_resume, ptr @__kstrtabns_dvb_usbv2_reset_resume }, section "___ksymtab+dvb_usbv2_reset_resume", align 4
@__UNIQUE_ID_version434 = internal constant [23 x i8] c"dvb_usb_v2.version=2.0\00", section ".modinfo", align 1
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str, ptr @.str.33 }, section "__modver", align 4
@__UNIQUE_ID_author435 = internal constant [66 x i8] c"dvb_usb_v2.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author436 = internal constant [49 x i8] c"dvb_usb_v2.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description437 = internal constant [38 x i8] c"dvb_usb_v2.description=DVB USB common\00", section ".modinfo", align 1
@__UNIQUE_ID_file438 = internal constant [56 x i8] c"dvb_usb_v2.file=drivers/media/usb/dvb-usb-v2/dvb_usb_v2\00", section ".modinfo", align 1
@__UNIQUE_ID_license439 = internal constant [23 x i8] c"dvb_usb_v2.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dvb_usbv2_download_firmware.__UNIQUE_ID_ddebug390 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.29, i8 0, i8 6, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dvb_usbv2_download_firmware\00", [36 x i8] zeroinitializer }, align 32
@dvb_usbv2_download_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.34, ptr @.str.2, i32 38, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [124 x i8], [36 x i8] } { [124 x i8] c"%s: Did not find the firmware file '%s' (status %d). You can use <kernel_dir>/scripts/get_dvb_firmware to get the firmware\0A\00", [36 x i8] zeroinitializer }, align 32
@dvb_usbv2_download_firmware._entry_ptr = internal global ptr @dvb_usbv2_download_firmware._entry, section ".printk_index", align 4
@dvb_usbv2_download_firmware._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str.2, i32 43, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: downloading firmware from file '%s'\0A\00", [55 x i8] zeroinitializer }, align 32
@dvb_usbv2_download_firmware._entry_ptr.38 = internal global ptr @dvb_usbv2_download_firmware._entry.36, section ".printk_index", align 4
@dvb_usbv2_download_firmware.__UNIQUE_ID_ddebug391 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.2, ptr @.str.25, i8 0, i8 13, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dvb_usbv2_init.__UNIQUE_ID_ddebug425 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.29, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_usbv2_init\00", [17 x i8] zeroinitializer }, align 32
@dvb_usbv2_init.__UNIQUE_ID_ddebug426 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.25, i8 0, i8 -35, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dvb_usbv2_i2c_init.__UNIQUE_ID_ddebug392 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.29, i8 0, i8 14, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dvb_usbv2_i2c_init\00", [45 x i8] zeroinitializer }, align 32
@dvb_usbv2_i2c_init.__UNIQUE_ID_ddebug393 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.2, ptr @.str.25, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dvb_usbv2_adapter_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 768, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"%s: this USB2.0 device cannot be run on a USB1.1 port (it lacks a hardware PID filter)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb_usbv2_adapter_init\00", [41 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_init._entry_ptr = internal global ptr @dvb_usbv2_adapter_init._entry, section ".printk_index", align 4
@dvb_usbv2_adapter_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 777, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"%s: will use the device's hardware PID filter (table count: %d)\0A\00", [63 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_init._entry_ptr.45 = internal global ptr @dvb_usbv2_adapter_init._entry.43, section ".printk_index", align 4
@dvb_usbv2_adapter_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 783, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s: will pass the complete MPEG2 transport stream to the software demuxer\0A\00", [53 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_init._entry_ptr.48 = internal global ptr @dvb_usbv2_adapter_init._entry.46, section ".printk_index", align 4
@dvb_usbv2_adapter_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.2, i32 792, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: PID filter enabled by module option\0A\00", [55 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_init._entry_ptr.51 = internal global ptr @dvb_usbv2_adapter_init._entry.49, section ".printk_index", align 4
@dvb_usbv2_adapter_init.__UNIQUE_ID_ddebug422 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.25, i8 0, i8 -52, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dvb_usbv2_adapter_stream_init.__UNIQUE_ID_ddebug398 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 56, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dvb_usbv2_adapter_stream_init\00", [34 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: adap=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_dvb_init.__UNIQUE_ID_ddebug404 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.53, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb_usbv2_adapter_dvb_init\00", [37 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_dvb_init.__UNIQUE_ID_ddebug405 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: dvb_register_adapter() failed=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_dvb_init.__UNIQUE_ID_ddebug406 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.56, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: dvb_usbv2_media_device_init() failed=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_dvb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.54, ptr @.str.2, i32 463, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: MAC address: %pM\0A\00", [42 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_dvb_init._entry_ptr = internal global ptr @dvb_usbv2_adapter_dvb_init._entry, section ".printk_index", align 4
@dvb_usbv2_adapter_dvb_init._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.2, i32 477, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: dvb_dmx_init() failed=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_dvb_init._entry_ptr.60 = internal global ptr @dvb_usbv2_adapter_dvb_init._entry.58, section ".printk_index", align 4
@dvb_usbv2_adapter_dvb_init._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.2, i32 487, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: dvb_dmxdev_init() failed=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_dvb_init._entry_ptr.63 = internal global ptr @dvb_usbv2_adapter_dvb_init._entry.61, section ".printk_index", align 4
@dvb_usbv2_adapter_dvb_init._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.54, ptr @.str.2, i32 494, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: dvb_net_init() failed=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_dvb_init._entry_ptr.66 = internal global ptr @dvb_usbv2_adapter_dvb_init._entry.64, section ".printk_index", align 4
@dvb_usbv2_media_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 403, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"media controller created\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dvb_usbv2_media_device_init\00", [36 x i8] zeroinitializer }, align 32
@dvb_usbv2_media_device_init._entry_ptr = internal global ptr @dvb_usbv2_media_device_init._entry, section ".printk_index", align 4
@dvb_usb_start_feed.__UNIQUE_ID_ddebug400 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.70, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dvb_usb_start_feed\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"%s: adap=%d active_fe=%d feed_type=%d setting pid [%s]: %04x (%04d) at index %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@dvb_usb_start_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.69, ptr @.str.2, i32 275, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: get_stream_config() failed=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@dvb_usb_start_feed._entry_ptr = internal global ptr @dvb_usb_start_feed._entry, section ".printk_index", align 4
@dvb_usb_start_feed._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.69, ptr @.str.2, i32 302, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: pid_filter_ctrl() failed=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@dvb_usb_start_feed._entry_ptr.76 = internal global ptr @dvb_usb_start_feed._entry.74, section ".printk_index", align 4
@dvb_usb_start_feed._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.69, ptr @.str.2, i32 311, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: streaming_ctrl() failed=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@dvb_usb_start_feed._entry_ptr.79 = internal global ptr @dvb_usb_start_feed._entry.77, section ".printk_index", align 4
@dvb_usb_start_feed._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.69, ptr @.str.2, i32 321, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: pid_filter() failed=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@dvb_usb_start_feed._entry_ptr.82 = internal global ptr @dvb_usb_start_feed._entry.80, section ".printk_index", align 4
@dvb_usb_start_feed.__UNIQUE_ID_ddebug401 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.69, ptr @.str.2, ptr @.str.25, i8 0, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@dvb_usb_stop_feed.__UNIQUE_ID_ddebug402 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.70, i8 0, i8 84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dvb_usb_stop_feed\00", [46 x i8] zeroinitializer }, align 32
@dvb_usb_stop_feed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.84, ptr @.str.2, i32 349, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@dvb_usb_stop_feed._entry_ptr = internal global ptr @dvb_usb_stop_feed._entry, section ".printk_index", align 4
@dvb_usb_stop_feed._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.84, ptr @.str.2, i32 362, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@dvb_usb_stop_feed._entry_ptr.86 = internal global ptr @dvb_usb_stop_feed._entry.85, section ".printk_index", align 4
@dvb_usb_stop_feed._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.84, ptr @.str.2, i32 371, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@dvb_usb_stop_feed._entry_ptr.88 = internal global ptr @dvb_usb_stop_feed._entry.87, section ".printk_index", align 4
@dvb_usb_stop_feed.__UNIQUE_ID_ddebug403 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.2, ptr @.str.25, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug414 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.53, i8 0, i8 -97, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dvb_usbv2_adapter_frontend_init\00", [32 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug415 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 0, i8 -95, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: frontend_attach() failed=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug416 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.91, i8 0, i8 -94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: frontend_attach() do not exists\0A\00", [59 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_frontend_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.89, ptr @.str.2, i32 668, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: frontend%d registration failed\0A\00", [60 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_frontend_init._entry_ptr = internal global ptr @dvb_usbv2_adapter_frontend_init._entry, section ".printk_index", align 4
@dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug417 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.93, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: tuner_attach() failed=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug418 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.2, ptr @.str.25, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dvb_usb_fe_init.__UNIQUE_ID_ddebug410 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.95, i8 0, i8 -117, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_usb_fe_init\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: adap=%d fe=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@dvb_usb_fe_init.__UNIQUE_ID_ddebug411 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.94, ptr @.str.2, ptr @.str.96, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: ret=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@dvb_usb_fe_sleep.__UNIQUE_ID_ddebug412 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.2, ptr @.str.95, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dvb_usb_fe_sleep\00", [47 x i8] zeroinitializer }, align 32
@dvb_usb_fe_sleep.__UNIQUE_ID_ddebug413 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.97, ptr @.str.2, ptr @.str.96, i8 0, i8 -99, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dvb_usbv2_remote_init.__UNIQUE_ID_ddebug395 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.2, ptr @.str.29, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dvb_usbv2_remote_init\00", [42 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"/ir0\00", [27 x i8] zeroinitializer }, align 32
@dvb_usbv2_remote_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.100 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&d->rc_query_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@dvb_usbv2_remote_init.__key.101 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&d->rc_query_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@dvb_usbv2_remote_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.98, ptr @.str.2, i32 171, ptr @.str.17, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: schedule remote query interval to %d msecs\0A\00", [48 x i8] zeroinitializer }, align 32
@dvb_usbv2_remote_init._entry_ptr = internal global ptr @dvb_usbv2_remote_init._entry, section ".printk_index", align 4
@dvb_usbv2_remote_init.__UNIQUE_ID_ddebug396 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.2, ptr @.str.25, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@dvb_usb_read_remote_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 110, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: rc.query() failed=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dvb_usb_read_remote_control\00", [36 x i8] zeroinitializer }, align 32
@dvb_usb_read_remote_control._entry_ptr = internal global ptr @dvb_usb_read_remote_control._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@dvb_usbv2_exit.__UNIQUE_ID_ddebug424 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.2, ptr @.str.29, i8 0, i8 -46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_usbv2_exit\00", [17 x i8] zeroinitializer }, align 32
@dvb_usbv2_remote_exit.__UNIQUE_ID_ddebug397 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.108, ptr @.str.2, ptr @.str.29, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dvb_usbv2_remote_exit\00", [42 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_exit.__UNIQUE_ID_ddebug423 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.109, ptr @.str.2, ptr @.str.29, i8 0, i8 -51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb_usbv2_adapter_exit\00", [41 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_dvb_exit.__UNIQUE_ID_ddebug407 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.110, ptr @.str.2, ptr @.str.53, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb_usbv2_adapter_dvb_exit\00", [37 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_stream_exit.__UNIQUE_ID_ddebug399 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.2, ptr @.str.53, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dvb_usbv2_adapter_stream_exit\00", [34 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_frontend_exit.__UNIQUE_ID_ddebug419 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.2, ptr @.str.53, i8 0, i8 -78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dvb_usbv2_adapter_frontend_exit\00", [32 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_frontend_exit.__UNIQUE_ID_ddebug420 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.2, ptr @.str.113, i8 0, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: tuner_detach() failed=%d\0A\00", [34 x i8] zeroinitializer }, align 32
@dvb_usbv2_adapter_frontend_exit.__UNIQUE_ID_ddebug421 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.112, ptr @.str.2, ptr @.str.114, i8 0, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: frontend_detach() failed=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@dvb_usbv2_i2c_exit.__UNIQUE_ID_ddebug394 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.2, ptr @.str.29, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dvb_usbv2_i2c_exit\00", [45 x i8] zeroinitializer }, align 32
@dvb_usbv2_resume_common.__UNIQUE_ID_ddebug431 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.116, ptr @.str.2, ptr @.str.29, i8 1, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dvb_usbv2_resume_common\00", [40 x i8] zeroinitializer }, align 32
@dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug408 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.2, ptr @.str.118, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dvb_usbv2_device_power_ctrl\00", [36 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s: power=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug409 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.117, ptr @.str.2, ptr @.str.25, i8 0, i8 -119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.120 = private unnamed_addr constant [29 x i8] c"dvb_usbv2_disable_rc_polling\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 12, i32 12 }
@___asan_gen_.123 = private unnamed_addr constant [31 x i8] c"dvb_usb_force_pid_filter_usage\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 16, i32 12 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 898, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 902, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 909, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 926, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 927, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 932, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 949, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 978, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 985, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1001, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1012, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1026, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1037, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1097, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1107, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1122, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 27, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 36, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 42, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 852, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 59, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 766, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 774, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 781, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 790, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 223, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 437, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 442, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 451, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 462, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 476, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 486, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 493, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 403, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 247, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 273, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 300, i32 4 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 309, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 320, i32 4 }
@___asan_gen_.355 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.355, i32 73, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 334, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 348, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 360, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 369, i32 4 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 636, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 644, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 650, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 666, i32 4 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 678, i32 4 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 558, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 588, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 597, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 123, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 146, i32 22 }
@___asan_gen_.411 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 167, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 169, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.424, i32 912, i32 31 }
@___asan_gen_.426 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 109, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 840, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 185, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 823, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 514, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 235, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 714, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 726, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 734, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 83, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 1067, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.469 = private constant [47 x i8] c"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c\00", align 1
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.469, i32 539, i32 3 }
@llvm.compiler.used = appending global [163 x ptr] [ptr @__UNIQUE_ID_author435, ptr @__UNIQUE_ID_author436, ptr @__UNIQUE_ID_description437, ptr @__UNIQUE_ID_disable_rc_polling387, ptr @__UNIQUE_ID_disable_rc_pollingtype386, ptr @__UNIQUE_ID_file438, ptr @__UNIQUE_ID_force_pid_filter_usage389, ptr @__UNIQUE_ID_force_pid_filter_usagetype388, ptr @__UNIQUE_ID_license439, ptr @__UNIQUE_ID_version434, ptr @__ksymtab_dvb_usbv2_disconnect, ptr @__ksymtab_dvb_usbv2_probe, ptr @__ksymtab_dvb_usbv2_reset_resume, ptr @__ksymtab_dvb_usbv2_resume, ptr @__ksymtab_dvb_usbv2_suspend, ptr @__modver_attr, ptr @__param_disable_rc_polling, ptr @__param_force_pid_filter_usage, ptr @dvb_usb_read_remote_control._entry, ptr @dvb_usb_read_remote_control._entry_ptr, ptr @dvb_usb_start_feed._entry, ptr @dvb_usb_start_feed._entry.74, ptr @dvb_usb_start_feed._entry.77, ptr @dvb_usb_start_feed._entry.80, ptr @dvb_usb_start_feed._entry_ptr, ptr @dvb_usb_start_feed._entry_ptr.76, ptr @dvb_usb_start_feed._entry_ptr.79, ptr @dvb_usb_start_feed._entry_ptr.82, ptr @dvb_usb_stop_feed._entry, ptr @dvb_usb_stop_feed._entry.85, ptr @dvb_usb_stop_feed._entry.87, ptr @dvb_usb_stop_feed._entry_ptr, ptr @dvb_usb_stop_feed._entry_ptr.86, ptr @dvb_usb_stop_feed._entry_ptr.88, ptr @dvb_usbv2_adapter_dvb_init._entry, ptr @dvb_usbv2_adapter_dvb_init._entry.58, ptr @dvb_usbv2_adapter_dvb_init._entry.61, ptr @dvb_usbv2_adapter_dvb_init._entry.64, ptr @dvb_usbv2_adapter_dvb_init._entry_ptr, ptr @dvb_usbv2_adapter_dvb_init._entry_ptr.60, ptr @dvb_usbv2_adapter_dvb_init._entry_ptr.63, ptr @dvb_usbv2_adapter_dvb_init._entry_ptr.66, ptr @dvb_usbv2_adapter_frontend_init._entry, ptr @dvb_usbv2_adapter_frontend_init._entry_ptr, ptr @dvb_usbv2_adapter_init._entry, ptr @dvb_usbv2_adapter_init._entry.43, ptr @dvb_usbv2_adapter_init._entry.46, ptr @dvb_usbv2_adapter_init._entry.49, ptr @dvb_usbv2_adapter_init._entry_ptr, ptr @dvb_usbv2_adapter_init._entry_ptr.45, ptr @dvb_usbv2_adapter_init._entry_ptr.48, ptr @dvb_usbv2_adapter_init._entry_ptr.51, ptr @dvb_usbv2_disconnect._entry, ptr @dvb_usbv2_disconnect._entry_ptr, ptr @dvb_usbv2_download_firmware._entry, ptr @dvb_usbv2_download_firmware._entry.36, ptr @dvb_usbv2_download_firmware._entry_ptr, ptr @dvb_usbv2_download_firmware._entry_ptr.38, ptr @dvb_usbv2_media_device_init._entry, ptr @dvb_usbv2_media_device_init._entry_ptr, ptr @dvb_usbv2_probe._entry, ptr @dvb_usbv2_probe._entry.13, ptr @dvb_usbv2_probe._entry.15, ptr @dvb_usbv2_probe._entry.19, ptr @dvb_usbv2_probe._entry.22, ptr @dvb_usbv2_probe._entry.7, ptr @dvb_usbv2_probe._entry_ptr, ptr @dvb_usbv2_probe._entry_ptr.14, ptr @dvb_usbv2_probe._entry_ptr.18, ptr @dvb_usbv2_probe._entry_ptr.21, ptr @dvb_usbv2_probe._entry_ptr.24, ptr @dvb_usbv2_probe._entry_ptr.9, ptr @dvb_usbv2_remote_init._entry, ptr @dvb_usbv2_remote_init._entry_ptr, ptr @dvb_usbv2_disable_rc_polling, ptr @dvb_usb_force_pid_filter_usage, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @dvb_usbv2_probe.__key, ptr @.str.10, ptr @dvb_usbv2_probe.__key.11, ptr @.str.12, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @dvb_usbv2_remote_init.__key, ptr @.str.100, ptr @dvb_usbv2_remote_init.__key.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], section "llvm.metadata"
@0 = internal global [117 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_disable_rc_polling to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_force_pid_filter_usage to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_download_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_download_firmware._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_adapter_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_adapter_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_adapter_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_adapter_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_adapter_dvb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_adapter_dvb_init._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_adapter_dvb_init._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_adapter_dvb_init._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_media_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_start_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_start_feed._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_start_feed._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_start_feed._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_stop_feed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_stop_feed._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_stop_feed._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_adapter_frontend_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_remote_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_remote_init.__key.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usbv2_remote_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_read_remote_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usbv2_probe(ptr noundef %intf, ptr nocapture noundef readonly %id) #0 align 64 {
entry:
  %name71 = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  %driver_info1 = getelementptr inbounds %struct.usb_device_id, ptr %id, i32 0, i32 12
  %2 = ptrtoint ptr %driver_info1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_info1, align 4
  %4 = inttoptr i32 %3 to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_probe.__UNIQUE_ID_ddebug427, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_probe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %5 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_probe.__UNIQUE_ID_ddebug427, ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = ptrtoint ptr %driver_info1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_info1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %do.end10, label %if.end12

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str) #12
  br label %do.body129

if.end12:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 6352) #13
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str) #12
  br label %do.body129

if.end20:                                         ; preds = %if.end12
  %intf21 = getelementptr inbounds %struct.dvb_usb_device, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %intf21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %intf, ptr %intf21, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  %name22 = getelementptr inbounds %struct.dvb_usb_device, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %name22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %name22, align 4
  %rc_map = getelementptr inbounds %struct.dvb_usb_driver_info, ptr %4, i32 0, i32 1
  %16 = ptrtoint ptr %rc_map to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rc_map, align 4
  %rc_map23 = getelementptr inbounds %struct.dvb_usb_device, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %rc_map23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %rc_map23, align 8
  %udev24 = getelementptr inbounds %struct.dvb_usb_device, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %udev24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr.i, ptr %udev24, align 4
  %props = getelementptr inbounds %struct.dvb_usb_driver_info, ptr %4, i32 0, i32 2
  %20 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %props, align 4
  %22 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %call7.i.i, align 8
  %cur_altsetting26 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %23 = ptrtoint ptr %cur_altsetting26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cur_altsetting26, align 4
  %bInterfaceNumber28 = getelementptr inbounds %struct.usb_interface_descriptor, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %bInterfaceNumber28 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bInterfaceNumber28, align 2
  %bInterfaceNumber31 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %21, i32 0, i32 3
  %27 = ptrtoint ptr %bInterfaceNumber31 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %bInterfaceNumber31, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp.not = icmp eq i8 %26, %28
  br i1 %cmp.not, label %do.body36, label %if.end20.err_kfree_d_crit_edge

if.end20.err_kfree_d_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_kfree_d

do.body36:                                        ; preds = %if.end20
  %usb_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %call7.i.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %usb_mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @dvb_usbv2_probe.__key) #9
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %call7.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %i2c_mutex, ptr noundef nonnull @.str.12, ptr noundef nonnull @dvb_usbv2_probe.__key.11) #9
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call7.i.i, align 8
  %size_of_priv = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %size_of_priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %size_of_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool43.not = icmp eq i32 %32, 0
  br i1 %tobool43.not, label %do.body36.if.end57_crit_edge, label %if.end8.i.i

do.body36.if.end57_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.end8.i.i:                                      ; preds = %do.body36
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %32, i32 noundef 3520) #14
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %call7.i.i, i32 0, i32 15
  %33 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9.i.i, ptr %priv, align 8
  %tobool49.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool49.not, label %do.end53, label %if.end8.i.i.if.end57_crit_edge

if.end8.i.i.if.end57_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

do.end53:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %udev24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %udev24, align 4
  %dev55 = getelementptr inbounds %struct.usb_device, ptr %35, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str) #12
  br label %err_kfree_d

if.end57:                                         ; preds = %if.end8.i.i.if.end57_crit_edge, %do.body36.if.end57_crit_edge
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i.i, align 8
  %probe = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %probe to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %probe, align 4
  %tobool59.not = icmp eq ptr %39, null
  br i1 %tobool59.not, label %if.end57.if.end67_crit_edge, label %if.then60

if.end57.if.end67_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.then60:                                        ; preds = %if.end57
  %call63 = tail call i32 %39(ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.then60.if.end67_crit_edge, label %if.then60.err_kfree_priv_crit_edge

if.then60.err_kfree_priv_crit_edge:               ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_kfree_priv

if.then60.if.end67_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end67

if.end67:                                         ; preds = %if.then60.if.end67_crit_edge, %if.end57.if.end67_crit_edge
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call7.i.i, align 8
  %identify_state = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %identify_state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %identify_state, align 4
  %tobool69.not = icmp eq ptr %43, null
  br i1 %tobool69.not, label %if.end67.do.end106_crit_edge, label %if.then70

if.end67.do.end106_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end106

if.then70:                                        ; preds = %if.end67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name71) #9
  %44 = ptrtoint ptr %name71 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %name71, align 4
  %call74 = call i32 %43(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %name71) #9
  %45 = zext i32 %call74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call74, label %if.then70.cleanup.thread_crit_edge [
    i32 1, label %do.end80
    i32 0, label %if.then70.cleanup.thread212_crit_edge
  ]

if.then70.cleanup.thread212_crit_edge:            ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread212

if.then70.cleanup.thread_crit_edge:               ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

do.end80:                                         ; preds = %if.then70
  %46 = ptrtoint ptr %udev24 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %udev24, align 4
  %dev82 = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 15
  %48 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name22, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev82, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str, ptr noundef %49) #12
  %50 = ptrtoint ptr %name71 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %name71, align 4
  %tobool84.not = icmp eq ptr %51, null
  br i1 %tobool84.not, label %if.then85, label %do.end80.if.end87_crit_edge

do.end80.if.end87_crit_edge:                      ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.then85:                                        ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call7.i.i, align 8
  %firmware = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %53, i32 0, i32 11
  %54 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %firmware, align 4
  %56 = ptrtoint ptr %name71 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %name71, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.then85, %do.end80.if.end87_crit_edge
  %57 = ptrtoint ptr %name71 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name71, align 4
  %call88 = call fastcc i32 @dvb_usbv2_download_firmware(ptr noundef nonnull %call7.i.i, ptr noundef %58)
  %59 = zext i32 %call88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %call88, label %if.end87.cleanup.thread_crit_edge [
    i32 0, label %if.end87.cleanup.thread212_crit_edge
    i32 1, label %cleanup
  ]

if.end87.cleanup.thread212_crit_edge:             ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread212

if.end87.cleanup.thread_crit_edge:                ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread

cleanup.thread212:                                ; preds = %if.end87.cleanup.thread212_crit_edge, %if.then70.cleanup.thread212_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name71) #9
  br label %do.end106

cleanup.thread:                                   ; preds = %if.end87.cleanup.thread_crit_edge, %if.then70.cleanup.thread_crit_edge
  %ret.1.ph = phi i32 [ %call74, %if.then70.cleanup.thread_crit_edge ], [ %call88, %if.end87.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name71) #9
  br label %err_free_all

cleanup:                                          ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name71) #9
  br label %exit

do.end106:                                        ; preds = %cleanup.thread212, %if.end67.do.end106_crit_edge
  %60 = ptrtoint ptr %udev24 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %udev24, align 4
  %dev108 = getelementptr inbounds %struct.usb_device, ptr %61, i32 0, i32 15
  %62 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %name22, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev108, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str, ptr noundef %63) #12
  %call110 = call fastcc i32 @dvb_usbv2_init(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %do.end106.err_free_all_crit_edge, label %do.end117

do.end106.err_free_all_crit_edge:                 ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_free_all

do.end117:                                        ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %udev24 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %udev24, align 4
  %dev119 = getelementptr inbounds %struct.usb_device, ptr %65, i32 0, i32 15
  %66 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %name22, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev119, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str, ptr noundef %67) #12
  br label %exit

exit:                                             ; preds = %do.end117, %cleanup
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %68 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup146

err_free_all:                                     ; preds = %do.end106.err_free_all_crit_edge, %cleanup.thread
  %ret.2 = phi i32 [ %call110, %do.end106.err_free_all_crit_edge ], [ %ret.1.ph, %cleanup.thread ]
  call fastcc void @dvb_usbv2_exit(ptr noundef nonnull %call7.i.i)
  %69 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call7.i.i, align 8
  %disconnect = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %70, i32 0, i32 9
  %71 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %disconnect, align 4
  %tobool123.not = icmp eq ptr %72, null
  br i1 %tobool123.not, label %err_free_all.err_kfree_priv_crit_edge, label %if.then124

err_free_all.err_kfree_priv_crit_edge:            ; preds = %err_free_all
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_kfree_priv

if.then124:                                       ; preds = %err_free_all
  call void @__sanitizer_cov_trace_pc() #11
  call void %72(ptr noundef nonnull %call7.i.i) #9
  br label %err_kfree_priv

err_kfree_priv:                                   ; preds = %if.then124, %err_free_all.err_kfree_priv_crit_edge, %if.then60.err_kfree_priv_crit_edge
  %ret.3 = phi i32 [ %call63, %if.then60.err_kfree_priv_crit_edge ], [ %ret.2, %if.then124 ], [ %ret.2, %err_free_all.err_kfree_priv_crit_edge ]
  %priv128 = getelementptr inbounds %struct.dvb_usb_device, ptr %call7.i.i, i32 0, i32 15
  %73 = ptrtoint ptr %priv128 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv128, align 8
  call void @kfree(ptr noundef %74) #9
  br label %err_kfree_d

err_kfree_d:                                      ; preds = %err_kfree_priv, %do.end53, %if.end20.err_kfree_d_crit_edge
  %ret.4 = phi i32 [ %ret.3, %err_kfree_priv ], [ -12, %do.end53 ], [ -19, %if.end20.err_kfree_d_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %do.body129

do.body129:                                       ; preds = %err_kfree_d, %do.end18, %do.end10
  %ret.5 = phi i32 [ %ret.4, %err_kfree_d ], [ -12, %do.end18 ], [ -19, %do.end10 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_probe.__UNIQUE_ID_ddebug428, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_probe, %if.then141)) #9
          to label %cleanup146 [label %if.then141], !srcloc !312

if.then141:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_probe.__UNIQUE_ID_ddebug428, ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.1, i32 noundef %ret.5) #9
  br label %cleanup146

cleanup146:                                       ; preds = %if.then141, %do.body129, %exit
  %retval.0 = phi i32 [ 0, %exit ], [ %ret.5, %if.then141 ], [ %ret.5, %do.body129 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_usbv2_download_firmware(ptr noundef %d, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #9
  %0 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !313
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_download_firmware.__UNIQUE_ID_ddebug390, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_download_firmware, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %1 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %2, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_download_firmware.__UNIQUE_ID_ddebug390, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.34) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d, align 8
  %download_firmware = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %download_firmware to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %download_firmware, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %do.end.do.body27_crit_edge, label %if.end5

do.end.do.body27_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

if.end5:                                          ; preds = %do.end
  %udev6 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %7 = ptrtoint ptr %udev6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev6, align 4
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %call8 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %name, ptr noundef %dev7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  %9 = ptrtoint ptr %udev6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev6, align 4
  %dev14 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  br i1 %cmp, label %do.end12, label %do.end18

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %call8) #12
  br label %do.body27

do.end18:                                         ; preds = %if.end5
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev14, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str, ptr noundef %name) #12
  %11 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %d, align 8
  %download_firmware22 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %12, i32 0, i32 12
  %13 = ptrtoint ptr %download_firmware22 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %download_firmware22, align 4
  %15 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw, align 4
  %call23 = call i32 %14(ptr noundef %d, ptr noundef %16) #9
  %17 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end18.do.body27_crit_edge, label %do.end18.cleanup_crit_edge

do.end18.cleanup_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end18.do.body27_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body27

do.body27:                                        ; preds = %do.end18.do.body27_crit_edge, %do.end12, %do.end.do.body27_crit_edge
  %ret.0 = phi i32 [ %call8, %do.end12 ], [ %call23, %do.end18.do.body27_crit_edge ], [ -22, %do.end.do.body27_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_download_firmware.__UNIQUE_ID_ddebug391, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_download_firmware, %if.then39)) #9
          to label %cleanup [label %if.then39], !srcloc !312

if.then39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #11
  %udev40 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %19 = ptrtoint ptr %udev40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udev40, align 4
  %dev41 = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_download_firmware.__UNIQUE_ID_ddebug391, ptr noundef %dev41, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.34, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %do.body27, %do.end18.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %do.end18.cleanup_crit_edge ], [ %ret.0, %if.then39 ], [ %ret.0, %do.body27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_usbv2_init(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_init.__UNIQUE_ID_ddebug425, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_init, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_init.__UNIQUE_ID_ddebug425, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.39) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %powered1.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 7
  %2 = ptrtoint ptr %powered1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %powered1.i, align 8
  %dec.i = add i32 %3, 1
  store i32 %dec.i, ptr %powered1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec.i)
  %switch = icmp ult i32 %dec.i, 2
  br i1 %switch, label %do.body.i, label %do.end.dvb_usbv2_device_power_ctrl.exit_crit_edge

do.end.dvb_usbv2_device_power_ctrl.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_usbv2_device_power_ctrl.exit

do.body.i:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_init, %if.then10.i)) #9
          to label %do.end.i [label %if.then10.i], !srcloc !312

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %4 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug408, ptr noundef %dev.i, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.117, i32 noundef 1) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %do.body.i
  %6 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d, align 8
  %power_ctrl.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %7, i32 0, i32 17
  %8 = ptrtoint ptr %power_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %power_ctrl.i, align 4
  %tobool12.not.i = icmp eq ptr %9, null
  br i1 %tobool12.not.i, label %do.end.i.dvb_usbv2_device_power_ctrl.exit_crit_edge, label %if.then13.i

do.end.i.dvb_usbv2_device_power_ctrl.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_usbv2_device_power_ctrl.exit

if.then13.i:                                      ; preds = %do.end.i
  %call16.i = tail call i32 %9(ptr noundef %d, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %do.body22.i, label %if.then13.i.dvb_usbv2_device_power_ctrl.exit_crit_edge

if.then13.i.dvb_usbv2_device_power_ctrl.exit_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_usbv2_device_power_ctrl.exit

do.body22.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_init, %if.then34.i)) #9
          to label %dvb_usbv2_device_power_ctrl.exit [label %if.then34.i], !srcloc !312

if.then34.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  %udev35.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %10 = ptrtoint ptr %udev35.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev35.i, align 4
  %dev36.i = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug409, ptr noundef %dev36.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.117, i32 noundef %call16.i) #9
  br label %dvb_usbv2_device_power_ctrl.exit

dvb_usbv2_device_power_ctrl.exit:                 ; preds = %if.then34.i, %do.body22.i, %if.then13.i.dvb_usbv2_device_power_ctrl.exit_crit_edge, %do.end.i.dvb_usbv2_device_power_ctrl.exit_crit_edge, %do.end.dvb_usbv2_device_power_ctrl.exit_crit_edge
  %12 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %d, align 8
  %read_config = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %13, i32 0, i32 18
  %14 = ptrtoint ptr %read_config to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_config, align 4
  %tobool4.not = icmp eq ptr %15, null
  br i1 %tobool4.not, label %dvb_usbv2_device_power_ctrl.exit.if.end11_crit_edge, label %if.then5

dvb_usbv2_device_power_ctrl.exit.if.end11_crit_edge: ; preds = %dvb_usbv2_device_power_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then5:                                         ; preds = %dvb_usbv2_device_power_ctrl.exit
  %call8 = tail call i32 %15(ptr noundef %d) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.then5.err_crit_edge, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then5.err_crit_edge:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %dvb_usbv2_device_power_ctrl.exit.if.end11_crit_edge
  %call12 = tail call fastcc i32 @dvb_usbv2_i2c_init(ptr noundef %d)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.err_crit_edge, label %if.end15

if.end11.err_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end15:                                         ; preds = %if.end11
  %call16 = tail call fastcc i32 @dvb_usbv2_adapter_init(ptr noundef %d)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.err_crit_edge, label %if.end19

if.end15.err_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end19:                                         ; preds = %if.end15
  %16 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %d, align 8
  %init = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %17, i32 0, i32 26
  %18 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init, align 4
  %tobool21.not = icmp eq ptr %19, null
  br i1 %tobool21.not, label %if.end19.if.end29_crit_edge, label %if.then22

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then22:                                        ; preds = %if.end19
  %call25 = tail call i32 %19(ptr noundef %d) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then22.err_crit_edge, label %if.then22.if.end29_crit_edge

if.then22.if.end29_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then22.err_crit_edge:                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end29:                                         ; preds = %if.then22.if.end29_crit_edge, %if.end19.if.end29_crit_edge
  %call30 = tail call fastcc i32 @dvb_usbv2_remote_init(ptr noundef %d)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.err_crit_edge, label %if.end33

if.end29.err_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end33:                                         ; preds = %if.end29
  %20 = ptrtoint ptr %powered1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %powered1.i, align 8
  %dec.i79 = add i32 %21, -1
  store i32 %dec.i79, ptr %powered1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i79)
  %cmp.i80 = icmp eq i32 %dec.i79, 0
  br i1 %cmp.i80, label %do.body.i83, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body.i83:                                      ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_init, %if.then10.i86)) #9
          to label %do.end.i89 [label %if.then10.i86], !srcloc !312

if.then10.i86:                                    ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #11
  %udev.i84 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %22 = ptrtoint ptr %udev.i84 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udev.i84, align 4
  %dev.i85 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug408, ptr noundef %dev.i85, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.117, i32 noundef 0) #9
  br label %do.end.i89

do.end.i89:                                       ; preds = %if.then10.i86, %do.body.i83
  %24 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %d, align 8
  %power_ctrl.i87 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %25, i32 0, i32 17
  %26 = ptrtoint ptr %power_ctrl.i87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %power_ctrl.i87, align 4
  %tobool12.not.i88 = icmp eq ptr %27, null
  br i1 %tobool12.not.i88, label %do.end.i89.cleanup_crit_edge, label %if.then13.i92

do.end.i89.cleanup_crit_edge:                     ; preds = %do.end.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13.i92:                                    ; preds = %do.end.i89
  %call16.i90 = tail call i32 %27(ptr noundef %d, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i90)
  %cmp17.i91 = icmp slt i32 %call16.i90, 0
  br i1 %cmp17.i91, label %do.body22.i93, label %if.then13.i92.cleanup_crit_edge

if.then13.i92.cleanup_crit_edge:                  ; preds = %if.then13.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body22.i93:                                    ; preds = %if.then13.i92
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_init, %if.then34.i96)) #9
          to label %cleanup [label %if.then34.i96], !srcloc !312

if.then34.i96:                                    ; preds = %do.body22.i93
  call void @__sanitizer_cov_trace_pc() #11
  %udev35.i94 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %28 = ptrtoint ptr %udev35.i94 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %udev35.i94, align 4
  %dev36.i95 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug409, ptr noundef %dev36.i95, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.117, i32 noundef %call16.i90) #9
  br label %cleanup

err:                                              ; preds = %if.end29.err_crit_edge, %if.then22.err_crit_edge, %if.end15.err_crit_edge, %if.end11.err_crit_edge, %if.then5.err_crit_edge
  %ret.0 = phi i32 [ %call8, %if.then5.err_crit_edge ], [ %call12, %if.end11.err_crit_edge ], [ %call16, %if.end15.err_crit_edge ], [ %call25, %if.then22.err_crit_edge ], [ %call30, %if.end29.err_crit_edge ]
  %30 = ptrtoint ptr %powered1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %powered1.i, align 8
  %dec.i100 = add i32 %31, -1
  store i32 %dec.i100, ptr %powered1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i100)
  %cmp.i101 = icmp eq i32 %dec.i100, 0
  br i1 %cmp.i101, label %do.body.i104, label %err.dvb_usbv2_device_power_ctrl.exit119_crit_edge

err.dvb_usbv2_device_power_ctrl.exit119_crit_edge: ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_usbv2_device_power_ctrl.exit119

do.body.i104:                                     ; preds = %err
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_init, %if.then10.i107)) #9
          to label %do.end.i110 [label %if.then10.i107], !srcloc !312

if.then10.i107:                                   ; preds = %do.body.i104
  call void @__sanitizer_cov_trace_pc() #11
  %udev.i105 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %32 = ptrtoint ptr %udev.i105 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %udev.i105, align 4
  %dev.i106 = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug408, ptr noundef %dev.i106, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.117, i32 noundef 0) #9
  br label %do.end.i110

do.end.i110:                                      ; preds = %if.then10.i107, %do.body.i104
  %34 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %d, align 8
  %power_ctrl.i108 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %power_ctrl.i108 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %power_ctrl.i108, align 4
  %tobool12.not.i109 = icmp eq ptr %37, null
  br i1 %tobool12.not.i109, label %do.end.i110.dvb_usbv2_device_power_ctrl.exit119_crit_edge, label %if.then13.i113

do.end.i110.dvb_usbv2_device_power_ctrl.exit119_crit_edge: ; preds = %do.end.i110
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_usbv2_device_power_ctrl.exit119

if.then13.i113:                                   ; preds = %do.end.i110
  %call16.i111 = tail call i32 %37(ptr noundef %d, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i111)
  %cmp17.i112 = icmp slt i32 %call16.i111, 0
  br i1 %cmp17.i112, label %do.body22.i114, label %if.then13.i113.dvb_usbv2_device_power_ctrl.exit119_crit_edge

if.then13.i113.dvb_usbv2_device_power_ctrl.exit119_crit_edge: ; preds = %if.then13.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_usbv2_device_power_ctrl.exit119

do.body22.i114:                                   ; preds = %if.then13.i113
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_init, %if.then34.i117)) #9
          to label %dvb_usbv2_device_power_ctrl.exit119 [label %if.then34.i117], !srcloc !312

if.then34.i117:                                   ; preds = %do.body22.i114
  call void @__sanitizer_cov_trace_pc() #11
  %udev35.i115 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %38 = ptrtoint ptr %udev35.i115 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %udev35.i115, align 4
  %dev36.i116 = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug409, ptr noundef %dev36.i116, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.117, i32 noundef %call16.i111) #9
  br label %dvb_usbv2_device_power_ctrl.exit119

dvb_usbv2_device_power_ctrl.exit119:              ; preds = %if.then34.i117, %do.body22.i114, %if.then13.i113.dvb_usbv2_device_power_ctrl.exit119_crit_edge, %do.end.i110.dvb_usbv2_device_power_ctrl.exit119_crit_edge, %err.dvb_usbv2_device_power_ctrl.exit119_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_init.__UNIQUE_ID_ddebug426, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_init, %if.then48)) #9
          to label %cleanup [label %if.then48], !srcloc !312

if.then48:                                        ; preds = %dvb_usbv2_device_power_ctrl.exit119
  call void @__sanitizer_cov_trace_pc() #11
  %udev49 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %40 = ptrtoint ptr %udev49 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %udev49, align 4
  %dev50 = getelementptr inbounds %struct.usb_device, ptr %41, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_init.__UNIQUE_ID_ddebug426, ptr noundef %dev50, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.39, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %dvb_usbv2_device_power_ctrl.exit119, %if.then34.i96, %do.body22.i93, %if.then13.i92.cleanup_crit_edge, %do.end.i89.cleanup_crit_edge, %if.end33.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then48 ], [ 0, %if.end33.cleanup_crit_edge ], [ 0, %do.end.i89.cleanup_crit_edge ], [ 0, %if.then13.i92.cleanup_crit_edge ], [ 0, %do.body22.i93 ], [ 0, %if.then34.i96 ], [ %ret.0, %dvb_usbv2_device_power_ctrl.exit119 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dvb_usbv2_exit(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_exit.__UNIQUE_ID_ddebug424, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_exit, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_exit.__UNIQUE_ID_ddebug424, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.107) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_remote_exit.__UNIQUE_ID_ddebug397, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_exit, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !312

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %2 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_remote_exit.__UNIQUE_ID_ddebug397, ptr noundef %dev.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.108) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end
  %rc_dev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 12
  %4 = ptrtoint ptr %rc_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rc_dev.i, align 8
  %tobool3.not.i = icmp eq ptr %5, null
  br i1 %tobool3.not.i, label %do.end.i.dvb_usbv2_remote_exit.exit_crit_edge, label %if.then4.i

do.end.i.dvb_usbv2_remote_exit.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_usbv2_remote_exit.exit

if.then4.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %rc_query_work.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14
  %call5.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %rc_query_work.i) #9
  %6 = ptrtoint ptr %rc_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rc_dev.i, align 8
  tail call void @rc_unregister_device(ptr noundef %7) #9
  %8 = ptrtoint ptr %rc_dev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rc_dev.i, align 8
  br label %dvb_usbv2_remote_exit.exit

dvb_usbv2_remote_exit.exit:                       ; preds = %if.then4.i, %do.end.i.dvb_usbv2_remote_exit.exit_crit_edge
  tail call fastcc void @dvb_usbv2_adapter_exit(ptr noundef %d)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_i2c_exit.__UNIQUE_ID_ddebug394, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_exit, %if.then.i3)) #9
          to label %do.end.i5 [label %if.then.i3], !srcloc !312

if.then.i3:                                       ; preds = %dvb_usbv2_remote_exit.exit
  call void @__sanitizer_cov_trace_pc() #11
  %udev.i1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %9 = ptrtoint ptr %udev.i1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev.i1, align 4
  %dev.i2 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_i2c_exit.__UNIQUE_ID_ddebug394, ptr noundef %dev.i2, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.115) #9
  br label %do.end.i5

do.end.i5:                                        ; preds = %if.then.i3, %dvb_usbv2_remote_exit.exit
  %algo.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 10, i32 2
  %11 = ptrtoint ptr %algo.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %algo.i, align 8
  %tobool3.not.i4 = icmp eq ptr %12, null
  br i1 %tobool3.not.i4, label %do.end.i5.dvb_usbv2_i2c_exit.exit_crit_edge, label %if.then4.i6

do.end.i5.dvb_usbv2_i2c_exit.exit_crit_edge:      ; preds = %do.end.i5
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_usbv2_i2c_exit.exit

if.then4.i6:                                      ; preds = %do.end.i5
  call void @__sanitizer_cov_trace_pc() #11
  %i2c_adap.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 10
  tail call void @i2c_del_adapter(ptr noundef %i2c_adap.i) #9
  br label %dvb_usbv2_i2c_exit.exit

dvb_usbv2_i2c_exit.exit:                          ; preds = %if.then4.i6, %do.end.i5.dvb_usbv2_i2c_exit.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dvb_usbv2_disconnect(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i39 = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call noalias ptr @kstrdup(ptr noundef %retval.0.i39, i32 noundef 3264) #9
  %name = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_disconnect.__UNIQUE_ID_ddebug429, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_disconnect, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev, align 4
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %12 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_disconnect.__UNIQUE_ID_ddebug429, ptr noundef %dev7, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.26, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %dev_name.exit
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %exit = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %exit to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %exit, align 4
  %tobool8.not = icmp eq ptr %19, null
  br i1 %tobool8.not, label %do.end.if.end12_crit_edge, label %if.then9

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %19(ptr noundef %1) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.end.if.end12_crit_edge
  tail call fastcc void @dvb_usbv2_exit(ptr noundef %1)
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  %disconnect = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %disconnect to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %disconnect, align 4
  %tobool15.not = icmp eq ptr %23, null
  br i1 %tobool15.not, label %if.end12.if.end19_crit_edge, label %if.then16

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %23(ptr noundef %1) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end12.if.end19_crit_edge
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv, align 8
  tail call void @kfree(ptr noundef %25) #9
  tail call void @kfree(ptr noundef %1) #9
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str, ptr noundef %9, ptr noundef %call2) #12
  tail call void @kfree(ptr noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usbv2_suspend(ptr nocapture noundef readonly %intf, [1 x i32] %msg.coerce) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_suspend.__UNIQUE_ID_ddebug430, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_suspend, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_suspend.__UNIQUE_ID_ddebug430, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %rc_polling_active = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rc_polling_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rc_polling_active, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not = icmp eq i8 %5, 0
  br i1 %tobool4.not, label %do.end.if.end7_crit_edge, label %if.then5

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %rc_query_work = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 14
  %call6 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %rc_query_work) #9
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  %active_fe8 = getelementptr %struct.dvb_usb_device, ptr %1, i32 0, i32 11, i32 1, i32 8
  %6 = ptrtoint ptr %active_fe8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %active_fe8, align 2
  %priv = getelementptr %struct.dvb_usb_device, ptr %1, i32 0, i32 11, i32 1, i32 10, i32 5
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 8
  %tobool11.not = icmp eq ptr %9, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %cmp12.not = icmp eq i8 %7, -1
  %or.cond = select i1 %tobool11.not, i1 true, i1 %cmp12.not
  br i1 %or.cond, label %if.end7.for.inc_crit_edge, label %if.then14

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then14:                                        ; preds = %if.end7
  %conv = sext i8 %7 to i32
  %arrayidx18 = getelementptr %struct.dvb_usb_device, ptr %1, i32 0, i32 11, i32 1, i32 14, i32 %conv
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx18, align 4
  %suspend_resume_active = getelementptr %struct.dvb_usb_device, ptr %1, i32 0, i32 11, i32 1, i32 4
  %12 = ptrtoint ptr %suspend_resume_active to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %suspend_resume_active, align 2
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %streaming_ctrl = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %14, i32 0, i32 25
  %15 = ptrtoint ptr %streaming_ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %streaming_ctrl, align 4
  %tobool21.not = icmp eq ptr %16, null
  br i1 %tobool21.not, label %if.then14.if.end26_crit_edge, label %if.then22

if.then14.if.end26_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then22:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = tail call i32 %16(ptr noundef %11, i32 noundef 0) #9
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.then14.if.end26_crit_edge
  %stream = getelementptr %struct.dvb_usb_device, ptr %1, i32 0, i32 11, i32 1, i32 1
  %call29 = tail call i32 @usb_urb_killv2(ptr noundef %stream) #9
  %call30 = tail call i32 @dvb_frontend_suspend(ptr noundef %11) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end26, %if.end7.for.inc_crit_edge
  %ret.1 = phi i32 [ %call30, %if.end26 ], [ 0, %if.end7.for.inc_crit_edge ]
  %active_fe8.1 = getelementptr %struct.dvb_usb_device, ptr %1, i32 0, i32 11, i32 0, i32 8
  %17 = ptrtoint ptr %active_fe8.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %active_fe8.1, align 2
  %priv.1 = getelementptr %struct.dvb_usb_device, ptr %1, i32 0, i32 11, i32 0, i32 10, i32 5
  %19 = ptrtoint ptr %priv.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.1, align 8
  %tobool11.not.1 = icmp eq ptr %20, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp12.not.1 = icmp eq i8 %18, -1
  %or.cond.1 = select i1 %tobool11.not.1, i1 true, i1 %cmp12.not.1
  br i1 %or.cond.1, label %for.inc.for.inc.1_crit_edge, label %if.then14.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then14.1:                                      ; preds = %for.inc
  %conv.1 = sext i8 %18 to i32
  %arrayidx18.1 = getelementptr %struct.dvb_usb_device, ptr %1, i32 0, i32 11, i32 0, i32 14, i32 %conv.1
  %21 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx18.1, align 4
  %suspend_resume_active.1 = getelementptr %struct.dvb_usb_device, ptr %1, i32 0, i32 11, i32 0, i32 4
  %23 = ptrtoint ptr %suspend_resume_active.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %suspend_resume_active.1, align 2
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  %streaming_ctrl.1 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %25, i32 0, i32 25
  %26 = ptrtoint ptr %streaming_ctrl.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %streaming_ctrl.1, align 4
  %tobool21.not.1 = icmp eq ptr %27, null
  br i1 %tobool21.not.1, label %if.then14.1.if.end26.1_crit_edge, label %if.then22.1

if.then14.1.if.end26.1_crit_edge:                 ; preds = %if.then14.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.1

if.then22.1:                                      ; preds = %if.then14.1
  call void @__sanitizer_cov_trace_pc() #11
  %call25.1 = tail call i32 %27(ptr noundef %22, i32 noundef 0) #9
  br label %if.end26.1

if.end26.1:                                       ; preds = %if.then22.1, %if.then14.1.if.end26.1_crit_edge
  %stream.1 = getelementptr %struct.dvb_usb_device, ptr %1, i32 0, i32 11, i32 0, i32 1
  %call29.1 = tail call i32 @usb_urb_killv2(ptr noundef %stream.1) #9
  %call30.1 = tail call i32 @dvb_frontend_suspend(ptr noundef %22) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end26.1, %for.inc.for.inc.1_crit_edge
  %ret.1.1 = phi i32 [ %call30.1, %if.end26.1 ], [ %ret.1, %for.inc.for.inc.1_crit_edge ]
  ret i32 %ret.1.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_killv2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_frontend_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usbv2_resume(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_resume.__UNIQUE_ID_ddebug432, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_resume, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_resume.__UNIQUE_ID_ddebug432, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call fastcc i32 @dvb_usbv2_resume_common(ptr noundef %1)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_usbv2_resume_common(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_resume_common.__UNIQUE_ID_ddebug431, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_resume_common, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_resume_common.__UNIQUE_ID_ddebug431, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.116) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %active_fe3 = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 0, i32 8
  %2 = ptrtoint ptr %active_fe3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active_fe3, align 2
  %priv = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 0, i32 10, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %tobool6.not = icmp eq ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp7.not = icmp eq i8 %3, -1
  %or.cond = select i1 %tobool6.not, i1 true, i1 %cmp7.not
  br i1 %or.cond, label %do.end.for.inc_crit_edge, label %if.then9

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then9:                                         ; preds = %do.end
  %conv = sext i8 %3 to i32
  %arrayidx13 = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 0, i32 14, i32 %conv
  %6 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx13, align 4
  %call14 = tail call i32 @dvb_frontend_resume(ptr noundef %7) #9
  %stream = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 0, i32 1
  %call17 = tail call i32 @usb_urb_submitv2(ptr noundef %stream, ptr noundef null) #9
  %8 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d, align 8
  %streaming_ctrl = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %streaming_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %streaming_ctrl, align 4
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %if.then9.if.end23_crit_edge, label %if.then19

if.then9.if.end23_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then19:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 %11(ptr noundef %7, i32 noundef 1) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.then9.if.end23_crit_edge
  %suspend_resume_active = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 0, i32 4
  %12 = ptrtoint ptr %suspend_resume_active to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %suspend_resume_active, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %do.end.for.inc_crit_edge
  %ret.1 = phi i32 [ %call14, %if.end23 ], [ 0, %do.end.for.inc_crit_edge ]
  %active_fe3.1 = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 1, i32 8
  %13 = ptrtoint ptr %active_fe3.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %active_fe3.1, align 2
  %priv.1 = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 1, i32 10, i32 5
  %15 = ptrtoint ptr %priv.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv.1, align 8
  %tobool6.not.1 = icmp eq ptr %16, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp7.not.1 = icmp eq i8 %14, -1
  %or.cond.1 = select i1 %tobool6.not.1, i1 true, i1 %cmp7.not.1
  br i1 %or.cond.1, label %for.inc.for.inc.1_crit_edge, label %if.then9.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then9.1:                                       ; preds = %for.inc
  %conv.1 = sext i8 %14 to i32
  %arrayidx13.1 = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 1, i32 14, i32 %conv.1
  %17 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx13.1, align 4
  %call14.1 = tail call i32 @dvb_frontend_resume(ptr noundef %18) #9
  %stream.1 = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 1, i32 1
  %call17.1 = tail call i32 @usb_urb_submitv2(ptr noundef %stream.1, ptr noundef null) #9
  %19 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %d, align 8
  %streaming_ctrl.1 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %20, i32 0, i32 25
  %21 = ptrtoint ptr %streaming_ctrl.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %streaming_ctrl.1, align 4
  %tobool18.not.1 = icmp eq ptr %22, null
  br i1 %tobool18.not.1, label %if.then9.1.if.end23.1_crit_edge, label %if.then19.1

if.then9.1.if.end23.1_crit_edge:                  ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.1

if.then19.1:                                      ; preds = %if.then9.1
  call void @__sanitizer_cov_trace_pc() #11
  %call22.1 = tail call i32 %22(ptr noundef %18, i32 noundef 1) #9
  br label %if.end23.1

if.end23.1:                                       ; preds = %if.then19.1, %if.then9.1.if.end23.1_crit_edge
  %suspend_resume_active.1 = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 1, i32 4
  %23 = ptrtoint ptr %suspend_resume_active.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %suspend_resume_active.1, align 2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end23.1, %for.inc.for.inc.1_crit_edge
  %ret.1.1 = phi i32 [ %call14.1, %if.end23.1 ], [ %ret.1, %for.inc.for.inc.1_crit_edge ]
  %rc_polling_active = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 3
  %24 = ptrtoint ptr %rc_polling_active to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rc_polling_active, align 4, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool27.not = icmp eq i8 %25, 0
  br i1 %tobool27.not, label %for.inc.1.if.end31_crit_edge, label %if.then28

for.inc.1.if.end31_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then28:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %rc_query_work = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14
  %interval = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6, i32 4
  %26 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %interval, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %27) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %rc_query_work, i32 noundef %call2.i) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %for.inc.1.if.end31_crit_edge
  ret i32 %ret.1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usbv2_reset_resume(ptr nocapture noundef readonly %intf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_reset_resume.__UNIQUE_ID_ddebug433, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_reset_resume, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_reset_resume.__UNIQUE_ID_ddebug433, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.31) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %powered1.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %powered1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %powered1.i, align 8
  %dec.i = add i32 %5, 1
  store i32 %dec.i, ptr %powered1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec.i)
  %switch = icmp ult i32 %dec.i, 2
  br i1 %switch, label %do.body.i, label %do.end.dvb_usbv2_device_power_ctrl.exit_crit_edge

do.end.dvb_usbv2_device_power_ctrl.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_usbv2_device_power_ctrl.exit

do.body.i:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_reset_resume, %if.then10.i)) #9
          to label %do.end.i [label %if.then10.i], !srcloc !312

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug408, ptr noundef %dev.i, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.117, i32 noundef 1) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %do.body.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %power_ctrl.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %9, i32 0, i32 17
  %10 = ptrtoint ptr %power_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %power_ctrl.i, align 4
  %tobool12.not.i = icmp eq ptr %11, null
  br i1 %tobool12.not.i, label %do.end.i.dvb_usbv2_device_power_ctrl.exit_crit_edge, label %if.then13.i

do.end.i.dvb_usbv2_device_power_ctrl.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_usbv2_device_power_ctrl.exit

if.then13.i:                                      ; preds = %do.end.i
  %call16.i = tail call i32 %11(ptr noundef %1, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %do.body22.i, label %if.then13.i.dvb_usbv2_device_power_ctrl.exit_crit_edge

if.then13.i.dvb_usbv2_device_power_ctrl.exit_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_usbv2_device_power_ctrl.exit

do.body22.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_reset_resume, %if.then34.i)) #9
          to label %dvb_usbv2_device_power_ctrl.exit [label %if.then34.i], !srcloc !312

if.then34.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  %udev35.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %udev35.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev35.i, align 4
  %dev36.i = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug409, ptr noundef %dev36.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.117, i32 noundef %call16.i) #9
  br label %dvb_usbv2_device_power_ctrl.exit

dvb_usbv2_device_power_ctrl.exit:                 ; preds = %if.then34.i, %do.body22.i, %if.then13.i.dvb_usbv2_device_power_ctrl.exit_crit_edge, %do.end.i.dvb_usbv2_device_power_ctrl.exit_crit_edge, %do.end.dvb_usbv2_device_power_ctrl.exit_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %init = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %15, i32 0, i32 26
  %16 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init, align 4
  %tobool5.not = icmp eq ptr %17, null
  br i1 %tobool5.not, label %dvb_usbv2_device_power_ctrl.exit.if.end10_crit_edge, label %if.then6

dvb_usbv2_device_power_ctrl.exit.if.end10_crit_edge: ; preds = %dvb_usbv2_device_power_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then6:                                         ; preds = %dvb_usbv2_device_power_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 %17(ptr noundef %1) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %dvb_usbv2_device_power_ctrl.exit.if.end10_crit_edge
  %call11 = tail call fastcc i32 @dvb_usbv2_resume_common(ptr noundef %1)
  %18 = ptrtoint ptr %powered1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %powered1.i, align 8
  %dec.i21 = add i32 %19, -1
  store i32 %dec.i21, ptr %powered1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i21)
  %cmp.i22 = icmp eq i32 %dec.i21, 0
  br i1 %cmp.i22, label %do.body.i25, label %if.end10.dvb_usbv2_device_power_ctrl.exit40_crit_edge

if.end10.dvb_usbv2_device_power_ctrl.exit40_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_usbv2_device_power_ctrl.exit40

do.body.i25:                                      ; preds = %if.end10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_reset_resume, %if.then10.i28)) #9
          to label %do.end.i31 [label %if.then10.i28], !srcloc !312

if.then10.i28:                                    ; preds = %do.body.i25
  call void @__sanitizer_cov_trace_pc() #11
  %udev.i26 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %udev.i26 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev.i26, align 4
  %dev.i27 = getelementptr inbounds %struct.usb_device, ptr %21, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug408, ptr noundef %dev.i27, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.117, i32 noundef 0) #9
  br label %do.end.i31

do.end.i31:                                       ; preds = %if.then10.i28, %do.body.i25
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  %power_ctrl.i29 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %23, i32 0, i32 17
  %24 = ptrtoint ptr %power_ctrl.i29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %power_ctrl.i29, align 4
  %tobool12.not.i30 = icmp eq ptr %25, null
  br i1 %tobool12.not.i30, label %do.end.i31.dvb_usbv2_device_power_ctrl.exit40_crit_edge, label %if.then13.i34

do.end.i31.dvb_usbv2_device_power_ctrl.exit40_crit_edge: ; preds = %do.end.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_usbv2_device_power_ctrl.exit40

if.then13.i34:                                    ; preds = %do.end.i31
  %call16.i32 = tail call i32 %25(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i32)
  %cmp17.i33 = icmp slt i32 %call16.i32, 0
  br i1 %cmp17.i33, label %do.body22.i35, label %if.then13.i34.dvb_usbv2_device_power_ctrl.exit40_crit_edge

if.then13.i34.dvb_usbv2_device_power_ctrl.exit40_crit_edge: ; preds = %if.then13.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %dvb_usbv2_device_power_ctrl.exit40

do.body22.i35:                                    ; preds = %if.then13.i34
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_reset_resume, %if.then34.i38)) #9
          to label %dvb_usbv2_device_power_ctrl.exit40 [label %if.then34.i38], !srcloc !312

if.then34.i38:                                    ; preds = %do.body22.i35
  call void @__sanitizer_cov_trace_pc() #11
  %udev35.i36 = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %udev35.i36 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %udev35.i36, align 4
  %dev36.i37 = getelementptr inbounds %struct.usb_device, ptr %27, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug409, ptr noundef %dev36.i37, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.117, i32 noundef %call16.i32) #9
  br label %dvb_usbv2_device_power_ctrl.exit40

dvb_usbv2_device_power_ctrl.exit40:               ; preds = %if.then34.i38, %do.body22.i35, %if.then13.i34.dvb_usbv2_device_power_ctrl.exit40_crit_edge, %do.end.i31.dvb_usbv2_device_power_ctrl.exit40_crit_edge, %if.end10.dvb_usbv2_device_power_ctrl.exit40_crit_edge
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_usbv2_i2c_init(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_i2c_init.__UNIQUE_ID_ddebug392, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_i2c_init, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_i2c_init.__UNIQUE_ID_ddebug392, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.40) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 8
  %i2c_algo = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %i2c_algo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c_algo, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 10
  %name = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 10, i32 12
  %name6 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 1
  %6 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name6, align 4
  %call7 = tail call i32 @strscpy(ptr noundef %name, ptr noundef %7, i32 noundef 48) #9
  %8 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d, align 8
  %i2c_algo9 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %9, i32 0, i32 13
  %10 = ptrtoint ptr %i2c_algo9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c_algo9, align 4
  %algo = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 10, i32 2
  %12 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %algo, align 8
  %udev11 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %13 = ptrtoint ptr %udev11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev11, align 4
  %dev12 = getelementptr inbounds %struct.usb_device, ptr %14, i32 0, i32 15
  %parent = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 10, i32 9, i32 1
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev12, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 10, i32 9, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %d, ptr %driver_data.i.i, align 4
  %call17 = tail call i32 @i2c_add_adapter(ptr noundef %i2c_adap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.then18, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %algo, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_i2c_init.__UNIQUE_ID_ddebug393, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_i2c_init, %if.then34)) #9
          to label %cleanup [label %if.then34], !srcloc !312

if.then34:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %udev11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev11, align 4
  %dev36 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_i2c_init.__UNIQUE_ID_ddebug393, ptr noundef %dev36, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.40, i32 noundef %call17) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.then18, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ %call17, %if.then34 ], [ %call17, %if.then18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_usbv2_adapter_init(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %d, align 8
  %num_adapters = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %num_adapters to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_adapters, align 4
  %get_adapter_count = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %get_adapter_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_adapter_count, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 %5(ptr noundef %d) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.do.body90_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then.do.body90_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body90

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %adapter_count.0 = phi i32 [ %3, %entry.if.end5_crit_edge ], [ %call, %if.then.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adapter_count.0)
  %cmp6148 = icmp sgt i32 %adapter_count.0, 0
  br i1 %cmp6148, label %for.body.lr.ph, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end5
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0149 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 %i.0149
  %conv = trunc i32 %i.0149 to i8
  %id = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 %i.0149, i32 2
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %id, align 4
  %7 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %d, align 8
  %arrayidx9 = getelementptr %struct.dvb_usb_device_properties, ptr %8, i32 0, i32 16, i32 %i.0149
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %arrayidx9, ptr %arrayidx, align 8
  %10 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %udev, align 4
  %speed = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp11 = icmp eq i32 %13, 2
  br i1 %cmp11, label %land.lhs.true, label %for.body.lor.lhs.false_crit_edge

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx9, align 4
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool15.not = icmp eq i8 %16, 0
  br i1 %tobool15.not, label %do.end, label %land.lhs.true22

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str) #12
  br label %do.body90

land.lhs.true22:                                  ; preds = %land.lhs.true
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx9, align 4
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool27.not = icmp eq i8 %19, 0
  br i1 %tobool27.not, label %land.lhs.true22.lor.lhs.false_crit_edge, label %land.lhs.true22.do.end36_crit_edge

land.lhs.true22.do.end36_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

land.lhs.true22.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true22.lor.lhs.false_crit_edge, %for.body.lor.lhs.false_crit_edge
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx9, align 4
  %22 = and i8 %21, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool32.not = icmp eq i8 %22, 0
  br i1 %tobool32.not, label %do.end46, label %lor.lhs.false.do.end36_crit_edge

lor.lhs.false.do.end36_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

do.end36:                                         ; preds = %lor.lhs.false.do.end36_crit_edge, %land.lhs.true22.do.end36_crit_edge
  %dev38 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  %pid_filter_count = getelementptr %struct.dvb_usb_device_properties, ptr %8, i32 0, i32 16, i32 %i.0149, i32 1
  %23 = ptrtoint ptr %pid_filter_count to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pid_filter_count, align 1
  %conv40 = zext i8 %24 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str, i32 noundef %conv40) #12
  %pid_filtering = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 %i.0149, i32 5
  %25 = ptrtoint ptr %pid_filtering to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %pid_filtering, align 1
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 8
  %pid_filter_count42 = getelementptr inbounds %struct.dvb_usb_adapter_properties, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %pid_filter_count42 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pid_filter_count42, align 1
  br label %if.end52

do.end46:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %dev48 = getelementptr inbounds %struct.usb_device, ptr %11, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev48, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str) #12
  %pid_filtering49 = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 %i.0149, i32 5
  %30 = ptrtoint ptr %pid_filtering49 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %pid_filtering49, align 1
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %do.end36
  %.sink = phi i8 [ %29, %do.end36 ], [ -1, %do.end46 ]
  %max_feed_count = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 %i.0149, i32 7
  %31 = ptrtoint ptr %max_feed_count to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink, ptr %max_feed_count, align 1
  %pid_filtering53 = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 %i.0149, i32 5
  %32 = ptrtoint ptr %pid_filtering53 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pid_filtering53, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool54.not = icmp eq i8 %33, 0
  br i1 %tobool54.not, label %land.lhs.true55, label %if.end52.if.end73_crit_edge

if.end52.if.end73_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

land.lhs.true55:                                  ; preds = %if.end52
  %34 = load i32, ptr @dvb_usb_force_pid_filter_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool56.not = icmp eq i32 %34, 0
  br i1 %tobool56.not, label %land.lhs.true55.if.end73_crit_edge, label %land.lhs.true57

land.lhs.true55.if.end73_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

land.lhs.true57:                                  ; preds = %land.lhs.true55
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx, align 8
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %36, align 4
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool62.not = icmp eq i8 %39, 0
  br i1 %tobool62.not, label %land.lhs.true57.if.end73_crit_edge, label %do.end66

land.lhs.true57.if.end73_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end73

do.end66:                                         ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %udev, align 4
  %dev68 = getelementptr inbounds %struct.usb_device, ptr %41, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev68, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str) #12
  %42 = ptrtoint ptr %pid_filtering53 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %pid_filtering53, align 1
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx, align 8
  %pid_filter_count71 = getelementptr inbounds %struct.dvb_usb_adapter_properties, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %pid_filter_count71 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pid_filter_count71, align 1
  %max_feed_count72 = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 %i.0149, i32 7
  %47 = ptrtoint ptr %max_feed_count72 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %max_feed_count72, align 1
  br label %if.end73

if.end73:                                         ; preds = %do.end66, %land.lhs.true57.if.end73_crit_edge, %land.lhs.true55.if.end73_crit_edge, %if.end52.if.end73_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_adapter_stream_init.__UNIQUE_ID_ddebug398, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_adapter_init, %if.then.i)) #9
          to label %dvb_usbv2_adapter_stream_init.exit [label %if.then.i], !srcloc !312

if.then.i:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %id, align 4
  %conv.i = zext i8 %49 to i32
  %.neg29.i = mul nsw i32 %conv.i, -2280
  %idx.neg.i = add nsw i32 %.neg29.i, -1616
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 %idx.neg.i
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr.i, i32 0, i32 5
  %50 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %udev.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %51, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_adapter_stream_init.__UNIQUE_ID_ddebug398, ptr noundef %dev.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.52, i32 noundef %conv.i) #9
  br label %dvb_usbv2_adapter_stream_init.exit

dvb_usbv2_adapter_stream_init.exit:               ; preds = %if.then.i, %if.end73
  %52 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %id, align 4
  %conv9.i = zext i8 %53 to i32
  %.neg.i = mul nsw i32 %conv9.i, -2280
  %idx.neg10.i = add nsw i32 %.neg.i, -1616
  %add.ptr11.i = getelementptr i8, ptr %arrayidx, i32 %idx.neg10.i
  %udev12.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr11.i, i32 0, i32 5
  %54 = ptrtoint ptr %udev12.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %udev12.i, align 4
  %stream.i = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 %i.0149, i32 1
  %56 = ptrtoint ptr %stream.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %stream.i, align 4
  %user_priv.i = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 %i.0149, i32 1, i32 11
  %57 = ptrtoint ptr %user_priv.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx, ptr %user_priv.i, align 4
  %complete.i = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 %i.0149, i32 1, i32 3
  %58 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @dvb_usb_data_complete, ptr %complete.i, align 4
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx, align 8
  %stream17.i = getelementptr inbounds %struct.dvb_usb_adapter_properties, ptr %60, i32 0, i32 4
  %call18.i = tail call i32 @usb_urb_initv2(ptr noundef %stream.i, ptr noundef %stream17.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool75.not = icmp eq i32 %call18.i, 0
  br i1 %tobool75.not, label %if.end77, label %dvb_usbv2_adapter_stream_init.exit.do.body90_crit_edge

dvb_usbv2_adapter_stream_init.exit.do.body90_crit_edge: ; preds = %dvb_usbv2_adapter_stream_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body90

if.end77:                                         ; preds = %dvb_usbv2_adapter_stream_init.exit
  %call78 = tail call fastcc i32 @dvb_usbv2_adapter_dvb_init(ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %if.end77.do.body90_crit_edge

if.end77.do.body90_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body90

if.end81:                                         ; preds = %if.end77
  %call82 = tail call fastcc i32 @dvb_usbv2_adapter_frontend_init(ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.end85, label %if.end81.do.body90_crit_edge

if.end81.do.body90_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body90

if.end85:                                         ; preds = %if.end81
  %arrayidx86 = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 %i.0149, i32 14, i32 1
  %61 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx86, align 4
  %tobool87.not = icmp eq ptr %62, null
  br i1 %tobool87.not, label %if.end85.for.inc_crit_edge, label %if.then88

if.end85.for.inc_crit_edge:                       ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %mfe_shared = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 %i.0149, i32 10, i32 8
  %63 = ptrtoint ptr %mfe_shared to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %mfe_shared, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then88, %if.end85.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0149, 1
  %exitcond.not = icmp eq i32 %inc, %adapter_count.0
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body90:                                        ; preds = %if.end81.do.body90_crit_edge, %if.end77.do.body90_crit_edge, %dvb_usbv2_adapter_stream_init.exit.do.body90_crit_edge, %do.end, %if.then.do.body90_crit_edge
  %ret.0 = phi i32 [ %call, %if.then.do.body90_crit_edge ], [ -19, %do.end ], [ %call82, %if.end81.do.body90_crit_edge ], [ %call78, %if.end77.do.body90_crit_edge ], [ %call18.i, %dvb_usbv2_adapter_stream_init.exit.do.body90_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_adapter_init.__UNIQUE_ID_ddebug422, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_adapter_init, %if.then95)) #9
          to label %cleanup [label %if.then95], !srcloc !312

if.then95:                                        ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #11
  %udev96 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %64 = ptrtoint ptr %udev96 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %udev96, align 4
  %dev97 = getelementptr inbounds %struct.usb_device, ptr %65, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_adapter_init.__UNIQUE_ID_ddebug422, ptr noundef %dev97, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.42, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %do.body90, %for.inc.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.then95 ], [ %ret.0, %do.body90 ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_usbv2_remote_init(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_remote_init.__UNIQUE_ID_ddebug395, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_remote_init, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %dev3 = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_remote_init.__UNIQUE_ID_ddebug395, ptr noundef %dev3, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.98) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr @dvb_usbv2_disable_rc_polling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %lor.lhs.false, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %3 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %d, align 8
  %get_rc_config = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %4, i32 0, i32 28
  %5 = ptrtoint ptr %get_rc_config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get_rc_config, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %rc_map = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %7 = ptrtoint ptr %rc_map to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rc_map, align 8
  %rc = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6
  %9 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %rc, align 8
  %10 = ptrtoint ptr %get_rc_config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %get_rc_config, align 4
  %call11 = tail call i32 %11(ptr noundef %d, ptr noundef %rc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end7.do.body85_crit_edge, label %if.end13

if.end7.do.body85_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body85

if.end13:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rc, align 8
  %tobool16.not = icmp eq ptr %13, null
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %driver_type = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6, i32 5
  %14 = ptrtoint ptr %driver_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_type, align 4
  %call20 = tail call ptr @rc_allocate_device(i32 noundef %15) #9
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %if.end18.do.body85_crit_edge, label %if.end23

if.end18.do.body85_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body85

if.end23:                                         ; preds = %if.end18
  %udev24 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %16 = ptrtoint ptr %udev24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev24, align 4
  %dev25 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  %parent = getelementptr inbounds %struct.device, ptr %call20, i32 0, i32 1
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev25, ptr %parent, align 8
  %name = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 1
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 4
  %device_name = getelementptr inbounds %struct.rc_dev, ptr %call20, i32 0, i32 3
  %21 = ptrtoint ptr %device_name to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %device_name, align 8
  %22 = load ptr, ptr %udev24, align 4
  %rc_phys = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 13
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 12
  %23 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %22, i32 0, i32 1
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %rc_phys, i32 noundef 64, ptr noundef nonnull @.str.104, ptr noundef %26, ptr noundef %devpath.i) #9
  %call31 = tail call i32 @strlcat(ptr noundef %rc_phys, ptr noundef nonnull @.str.99, i32 noundef 64) #9
  %input_phys = getelementptr inbounds %struct.rc_dev, ptr %call20, i32 0, i32 4
  %27 = ptrtoint ptr %input_phys to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %rc_phys, ptr %input_phys, align 4
  %28 = ptrtoint ptr %udev24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %udev24, align 4
  %input_id = getelementptr inbounds %struct.rc_dev, ptr %call20, i32 0, i32 5
  %30 = ptrtoint ptr %input_id to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 3, ptr %input_id, align 2
  %idVendor.i = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 16, i32 7
  %31 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %idVendor.i, align 8
  %33 = tail call i16 @llvm.bswap.i16(i16 %32) #9
  %vendor.i = getelementptr inbounds %struct.rc_dev, ptr %call20, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %vendor.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %vendor.i, align 2
  %idProduct.i = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 16, i32 8
  %35 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %idProduct.i, align 2
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #9
  %product.i = getelementptr inbounds %struct.rc_dev, ptr %call20, i32 0, i32 5, i32 2
  %38 = ptrtoint ptr %product.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %product.i, align 2
  %bcdDevice.i = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 16, i32 9
  %39 = ptrtoint ptr %bcdDevice.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %bcdDevice.i, align 4
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #9
  %version.i = getelementptr inbounds %struct.rc_dev, ptr %call20, i32 0, i32 5, i32 3
  %42 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %version.i, align 2
  %43 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %d, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %driver_name36 = getelementptr inbounds %struct.rc_dev, ptr %call20, i32 0, i32 6
  %47 = ptrtoint ptr %driver_name36 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %driver_name36, align 8
  %48 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rc, align 8
  %map_name39 = getelementptr inbounds %struct.rc_dev, ptr %call20, i32 0, i32 7
  %50 = ptrtoint ptr %map_name39 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %map_name39, align 4
  %allowed_protos = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6, i32 1
  %51 = ptrtoint ptr %allowed_protos to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %allowed_protos, align 8
  %allowed_protocols = getelementptr inbounds %struct.rc_dev, ptr %call20, i32 0, i32 16
  %53 = ptrtoint ptr %allowed_protocols to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %allowed_protocols, align 8
  %change_protocol = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6, i32 2
  %54 = ptrtoint ptr %change_protocol to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %change_protocol, align 8
  %change_protocol42 = getelementptr inbounds %struct.rc_dev, ptr %call20, i32 0, i32 47
  %56 = ptrtoint ptr %change_protocol42 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %change_protocol42, align 4
  %timeout = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6, i32 7
  %57 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %timeout, align 4
  %timeout44 = getelementptr inbounds %struct.rc_dev, ptr %call20, i32 0, i32 34
  %59 = ptrtoint ptr %timeout44 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %timeout44, align 4
  %priv = getelementptr inbounds %struct.rc_dev, ptr %call20, i32 0, i32 24
  %60 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %d, ptr %priv, align 4
  %call45 = tail call i32 @rc_register_device(ptr noundef nonnull %call20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rc_free_device(ptr noundef nonnull %call20) #9
  br label %do.body85

if.end48:                                         ; preds = %if.end23
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 12
  %61 = ptrtoint ptr %rc_dev to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call20, ptr %rc_dev, align 8
  %query = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6, i32 3
  %62 = ptrtoint ptr %query to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %query, align 4
  %tobool50.not = icmp eq ptr %63, null
  br i1 %tobool50.not, label %if.end48.cleanup_crit_edge, label %land.lhs.true

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end48
  %bulk_mode = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6, i32 6
  %64 = ptrtoint ptr %bulk_mode to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bulk_mode, align 8, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool52.not = icmp eq i8 %65, 0
  br i1 %tobool52.not, label %do.body55, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %rc_query_work = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14
  tail call void @__init_work(ptr noundef %rc_query_work, i32 noundef 0) #9
  %66 = ptrtoint ptr %rc_query_work to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -64, ptr %rc_query_work, align 4
  %lockdep_map = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.100, ptr noundef nonnull @dvb_usbv2_remote_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry62 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14, i32 0, i32 1
  %67 = ptrtoint ptr %entry62 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %entry62, ptr %entry62, align 4
  %prev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %entry62, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14, i32 0, i32 2
  %69 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @dvb_usb_read_remote_control, ptr %func, align 4
  %timer = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.102, ptr noundef nonnull @dvb_usbv2_remote_init.__key.101) #9
  %70 = ptrtoint ptr %udev24 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %udev24, align 4
  %dev77 = getelementptr inbounds %struct.usb_device, ptr %71, i32 0, i32 15
  %interval = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 6, i32 4
  %72 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %interval, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev77, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str, i32 noundef %73) #12
  %74 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %interval, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %75) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %76 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %76, ptr noundef %rc_query_work, i32 noundef %call2.i) #9
  %rc_polling_active = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 3
  %77 = ptrtoint ptr %rc_polling_active to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %rc_polling_active, align 4
  br label %cleanup

do.body85:                                        ; preds = %if.then47, %if.end18.do.body85_crit_edge, %if.end7.do.body85_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end7.do.body85_crit_edge ], [ %call45, %if.then47 ], [ -12, %if.end18.do.body85_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_remote_init.__UNIQUE_ID_ddebug396, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_remote_init, %if.then97)) #9
          to label %cleanup [label %if.then97], !srcloc !312

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  %udev98 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %78 = ptrtoint ptr %udev98 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %udev98, align 4
  %dev99 = getelementptr inbounds %struct.usb_device, ptr %79, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_remote_init.__UNIQUE_ID_ddebug396, ptr noundef %dev99, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.98, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then97, %do.body85, %do.body55, %land.lhs.true.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ 0, %do.body55 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end48.cleanup_crit_edge ], [ %ret.0, %if.then97 ], [ %ret.0, %do.body85 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_usbv2_adapter_dvb_init(ptr noundef %adap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_adapter_dvb_init.__UNIQUE_ID_ddebug404, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_adapter_dvb_init, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv5 = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_adapter_dvb_init.__UNIQUE_ID_ddebug404, ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %conv5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dvb_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 10
  %name = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 1
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %owner = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %owner, align 4
  %udev6 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %12 = ptrtoint ptr %udev6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %udev6, align 4
  %dev7 = getelementptr inbounds %struct.usb_device, ptr %13, i32 0, i32 15
  %adapter_nr = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %adapter_nr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter_nr, align 4
  %call9 = tail call i32 @dvb_register_adapter(ptr noundef %dvb_adap, ptr noundef %7, ptr noundef %11, ptr noundef %dev7, ptr noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.body12, label %if.end30

do.body12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_adapter_dvb_init.__UNIQUE_ID_ddebug405, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_adapter_dvb_init, %if.then24)) #9
          to label %err_dvb_register_adapter [label %if.then24], !srcloc !312

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %udev6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev6, align 4
  %dev26 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_adapter_dvb_init.__UNIQUE_ID_ddebug405, ptr noundef %dev26, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.54, i32 noundef %call9) #9
  br label %err_dvb_register_adapter

if.end30:                                         ; preds = %do.end
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 10, i32 5
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %adap, ptr %priv, align 8
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %id, align 4
  %conv.i = zext i8 %20 to i32
  %.neg.i = mul nsw i32 %conv.i, -2280
  %idx.neg.i = add nsw i32 %.neg.i, -1616
  %add.ptr.i = getelementptr i8, ptr %adap, i32 %idx.neg.i
  %udev1.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr.i, i32 0, i32 5
  %21 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %udev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 608) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %do.body36, label %if.end54

do.body36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_adapter_dvb_init.__UNIQUE_ID_ddebug406, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_adapter_dvb_init, %if.then48)) #9
          to label %err_dvb_register_mc [label %if.then48], !srcloc !312

if.then48:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %udev6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %udev6, align 4
  %dev50 = getelementptr inbounds %struct.usb_device, ptr %25, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_adapter_dvb_init.__UNIQUE_ID_ddebug406, ptr noundef %dev50, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54, i32 noundef -12) #9
  br label %err_dvb_register_mc

if.end54:                                         ; preds = %if.end30
  %name.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr.i, i32 0, i32 1
  %26 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name.i, align 4
  tail call void @__media_device_usb_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %22, ptr noundef %27, ptr noundef nonnull @.str) #9
  %mdev1.i.i = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 10, i32 12
  %28 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i.i, ptr %mdev1.i.i, align 4
  %29 = ptrtoint ptr %udev1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udev1.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.67) #12
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 8
  %read_mac_address = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %32, i32 0, i32 19
  %33 = ptrtoint ptr %read_mac_address to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read_mac_address, align 4
  %tobool56.not = icmp eq ptr %34, null
  br i1 %tobool56.not, label %if.end54.if.end74_crit_edge, label %if.then57

if.end54.if.end74_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end74

if.then57:                                        ; preds = %if.end54
  %proposed_mac = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 10, i32 4
  %call61 = tail call i32 %34(ptr noundef %adap, ptr noundef %proposed_mac) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then57.err_dvb_dmx_init_crit_edge, label %do.end68

if.then57.err_dvb_dmx_init_crit_edge:             ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dvb_dmx_init

do.end68:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %udev6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %udev6, align 4
  %dev70 = getelementptr inbounds %struct.usb_device, ptr %36, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev70, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str, ptr noundef %proposed_mac) #12
  br label %if.end74

if.end74:                                         ; preds = %do.end68, %if.end54.if.end74_crit_edge
  %demux = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %37 = ptrtoint ptr %demux to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 5, ptr %demux, align 8
  %priv76 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12, i32 1
  %38 = ptrtoint ptr %priv76 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %adap, ptr %priv76, align 4
  %filternum = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12, i32 2
  %max_feed_count = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 7
  %39 = ptrtoint ptr %max_feed_count to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %max_feed_count, align 1
  %conv78 = zext i8 %40 to i32
  %41 = ptrtoint ptr %filternum to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv78, ptr %filternum, align 8
  %feednum = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12, i32 3
  %42 = ptrtoint ptr %feednum to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv78, ptr %feednum, align 4
  %start_feed = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12, i32 4
  %43 = ptrtoint ptr %start_feed to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @dvb_usb_start_feed, ptr %start_feed, align 8
  %stop_feed = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12, i32 5
  %44 = ptrtoint ptr %stop_feed to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @dvb_usb_stop_feed, ptr %stop_feed, align 4
  %write_to_decoder = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12, i32 6
  %45 = ptrtoint ptr %write_to_decoder to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %write_to_decoder, align 8
  %call88 = tail call i32 @dvb_dmx_init(ptr noundef %demux) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp slt i32 %call88, 0
  br i1 %cmp89, label %do.end94, label %if.end97

do.end94:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %udev6 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %udev6, align 4
  %dev96 = getelementptr inbounds %struct.usb_device, ptr %47, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev96, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str, i32 noundef %call88) #12
  br label %err_dvb_dmx_init

if.end97:                                         ; preds = %if.end74
  %48 = ptrtoint ptr %filternum to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %filternum, align 8
  %dmxdev = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 11
  %filternum100 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 11, i32 4
  %50 = ptrtoint ptr %filternum100 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %filternum100, align 8
  %demux104 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 11, i32 3
  %51 = ptrtoint ptr %demux104 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %demux, ptr %demux104, align 4
  %capabilities106 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 11, i32 5
  %52 = ptrtoint ptr %capabilities106 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %capabilities106, align 4
  %call109 = tail call i32 @dvb_dmxdev_init(ptr noundef %dmxdev, ptr noundef %dvb_adap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %cmp110 = icmp slt i32 %call109, 0
  br i1 %cmp110, label %do.end115, label %if.end118

do.end115:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %udev6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %udev6, align 4
  %dev117 = getelementptr inbounds %struct.usb_device, ptr %54, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev117, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str, i32 noundef %call109) #12
  br label %err_dvb_dmxdev_init

if.end118:                                        ; preds = %if.end97
  %dvb_net = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 13
  %call122 = tail call i32 @dvb_net_init(ptr noundef %dvb_adap, ptr noundef %dvb_net, ptr noundef %demux) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp123 = icmp slt i32 %call122, 0
  br i1 %cmp123, label %do.end128, label %if.end118.cleanup_crit_edge

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end128:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %udev6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %udev6, align 4
  %dev130 = getelementptr inbounds %struct.usb_device, ptr %56, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev130, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str, i32 noundef %call122) #12
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #9
  br label %err_dvb_dmxdev_init

err_dvb_dmxdev_init:                              ; preds = %do.end128, %do.end115
  %ret.0 = phi i32 [ %call109, %do.end115 ], [ %call122, %do.end128 ]
  tail call void @dvb_dmx_release(ptr noundef %demux) #9
  br label %err_dvb_dmx_init

err_dvb_dmx_init:                                 ; preds = %err_dvb_dmxdev_init, %do.end94, %if.then57.err_dvb_dmx_init_crit_edge
  %ret.1 = phi i32 [ %call61, %if.then57.err_dvb_dmx_init_crit_edge ], [ %call88, %do.end94 ], [ %ret.0, %err_dvb_dmxdev_init ]
  %57 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mdev1.i.i, align 4
  %tobool.not.i205 = icmp eq ptr %58, null
  br i1 %tobool.not.i205, label %err_dvb_dmx_init.err_dvb_register_mc_crit_edge, label %if.end.i206

err_dvb_dmx_init.err_dvb_register_mc_crit_edge:   ; preds = %err_dvb_dmx_init
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dvb_register_mc

if.end.i206:                                      ; preds = %err_dvb_dmx_init
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @media_device_unregister(ptr noundef nonnull %58) #9
  %59 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mdev1.i.i, align 4
  tail call void @media_device_cleanup(ptr noundef %60) #9
  %61 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mdev1.i.i, align 4
  tail call void @kfree(ptr noundef %62) #9
  %63 = ptrtoint ptr %mdev1.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %mdev1.i.i, align 4
  br label %err_dvb_register_mc

err_dvb_register_mc:                              ; preds = %if.end.i206, %err_dvb_dmx_init.err_dvb_register_mc_crit_edge, %if.then48, %do.body36
  %ret.2 = phi i32 [ -12, %if.then48 ], [ -12, %do.body36 ], [ %ret.1, %err_dvb_dmx_init.err_dvb_register_mc_crit_edge ], [ %ret.1, %if.end.i206 ]
  %call135 = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adap) #9
  br label %err_dvb_register_adapter

err_dvb_register_adapter:                         ; preds = %err_dvb_register_mc, %if.then24, %do.body12
  %ret.3 = phi i32 [ %call9, %if.then24 ], [ %ret.2, %err_dvb_register_mc ], [ %call9, %do.body12 ]
  %priv137 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 10, i32 5
  %64 = ptrtoint ptr %priv137 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %priv137, align 8
  br label %cleanup

cleanup:                                          ; preds = %err_dvb_register_adapter, %if.end118.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.3, %err_dvb_register_adapter ], [ 0, %if.end118.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dvb_usbv2_adapter_frontend_init(ptr noundef %adap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug414, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_adapter_frontend_init, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv5 = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug414, ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.89, i32 noundef %conv5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fe = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14
  %6 = call ptr @memset(ptr %fe, i32 0, i32 12)
  %active_fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 8
  %7 = ptrtoint ptr %active_fe to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %active_fe, align 2
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 8
  %frontend_attach = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %frontend_attach to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %frontend_attach, align 4
  %tobool6.not = icmp eq ptr %11, null
  br i1 %tobool6.not, label %do.body32, label %if.then7

if.then7:                                         ; preds = %do.end
  %call10 = tail call i32 %11(ptr noundef %adap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.body13, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then7
  %dvb_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 10
  %12 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fe, align 4
  %tobool54.not = icmp eq ptr %13, null
  br i1 %tobool54.not, label %for.cond.preheader.for.end_crit_edge, label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body13:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug415, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_adapter_frontend_init, %if.then25)) #9
          to label %err_dvb_frontend_detach [label %if.then25], !srcloc !312

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %udev26 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %14 = ptrtoint ptr %udev26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %udev26, align 4
  %dev27 = getelementptr inbounds %struct.usb_device, ptr %15, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug415, ptr noundef %dev27, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.89, i32 noundef %call10) #9
  br label %err_dvb_frontend_detach

do.body32:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug416, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_adapter_frontend_init, %if.then44)) #9
          to label %do.body147 [label %if.then44], !srcloc !312

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #11
  %udev45 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %16 = ptrtoint ptr %udev45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %udev45, align 4
  %dev46 = getelementptr inbounds %struct.usb_device, ptr %17, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug416, ptr noundef %dev46, ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.89) #9
  br label %do.body147

for.body:                                         ; preds = %for.cond.preheader
  %id57 = getelementptr inbounds %struct.dvb_frontend, ptr %13, i32 0, i32 10
  %18 = ptrtoint ptr %id57 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %id57, align 4
  %19 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fe, align 4
  %init = getelementptr inbounds %struct.dvb_frontend, ptr %20, i32 0, i32 1, i32 5
  %21 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init, align 4
  %arrayidx60 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 15, i32 0
  %23 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %arrayidx60, align 4
  store ptr @dvb_usb_fe_init, ptr %init, align 4
  %24 = load ptr, ptr %fe, align 4
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %24, i32 0, i32 1, i32 6
  %25 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sleep, align 4
  %arrayidx68 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 16, i32 0
  %27 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %arrayidx68, align 4
  store ptr @dvb_usb_fe_sleep, ptr %sleep, align 4
  %28 = load ptr, ptr %fe, align 4
  %call75 = tail call i32 @dvb_register_frontend(ptr noundef %dvb_adap, ptr noundef %28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %for.body.do.end81_crit_edge, label %if.end84

for.body.do.end81_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81

do.end81:                                         ; preds = %for.body.2.do.end81_crit_edge, %for.body.1.do.end81_crit_edge, %for.body.do.end81_crit_edge
  %i.0252.lcssa258 = phi i32 [ 0, %for.body.do.end81_crit_edge ], [ 1, %for.body.1.do.end81_crit_edge ], [ 2, %for.body.2.do.end81_crit_edge ]
  %call75.lcssa = phi i32 [ %call75, %for.body.do.end81_crit_edge ], [ %call75.1, %for.body.1.do.end81_crit_edge ], [ %call75.2, %for.body.2.do.end81_crit_edge ]
  %udev82 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %29 = ptrtoint ptr %udev82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udev82, align 4
  %dev83 = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev83, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str, i32 noundef %i.0252.lcssa258) #12
  br label %err_dvb_unregister_frontend

if.end84:                                         ; preds = %for.body
  %arrayidx.1 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %31 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.1, align 4
  %tobool54.not.1 = icmp eq ptr %32, null
  br i1 %tobool54.not.1, label %if.end84.for.end_crit_edge, label %for.body.1

if.end84.for.end_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.1:                                       ; preds = %if.end84
  %id57.1 = getelementptr inbounds %struct.dvb_frontend, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %id57.1 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %id57.1, align 4
  %34 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.1, align 4
  %init.1 = getelementptr inbounds %struct.dvb_frontend, ptr %35, i32 0, i32 1, i32 5
  %36 = ptrtoint ptr %init.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init.1, align 4
  %arrayidx60.1 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 15, i32 1
  %38 = ptrtoint ptr %arrayidx60.1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %arrayidx60.1, align 4
  store ptr @dvb_usb_fe_init, ptr %init.1, align 4
  %39 = load ptr, ptr %arrayidx.1, align 4
  %sleep.1 = getelementptr inbounds %struct.dvb_frontend, ptr %39, i32 0, i32 1, i32 6
  %40 = ptrtoint ptr %sleep.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sleep.1, align 4
  %arrayidx68.1 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 16, i32 1
  %42 = ptrtoint ptr %arrayidx68.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %arrayidx68.1, align 4
  store ptr @dvb_usb_fe_sleep, ptr %sleep.1, align 4
  %43 = load ptr, ptr %arrayidx.1, align 4
  %call75.1 = tail call i32 @dvb_register_frontend(ptr noundef %dvb_adap, ptr noundef %43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.1)
  %cmp76.1 = icmp slt i32 %call75.1, 0
  br i1 %cmp76.1, label %for.body.1.do.end81_crit_edge, label %if.end84.1

for.body.1.do.end81_crit_edge:                    ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81

if.end84.1:                                       ; preds = %for.body.1
  %arrayidx.2 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 2
  %44 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.2, align 4
  %tobool54.not.2 = icmp eq ptr %45, null
  br i1 %tobool54.not.2, label %if.end84.1.for.end_crit_edge, label %for.body.2

if.end84.1.for.end_crit_edge:                     ; preds = %if.end84.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.2:                                       ; preds = %if.end84.1
  %id57.2 = getelementptr inbounds %struct.dvb_frontend, ptr %45, i32 0, i32 10
  %46 = ptrtoint ptr %id57.2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %id57.2, align 4
  %47 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.2, align 4
  %init.2 = getelementptr inbounds %struct.dvb_frontend, ptr %48, i32 0, i32 1, i32 5
  %49 = ptrtoint ptr %init.2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init.2, align 4
  %arrayidx60.2 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 15, i32 2
  %51 = ptrtoint ptr %arrayidx60.2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %arrayidx60.2, align 4
  store ptr @dvb_usb_fe_init, ptr %init.2, align 4
  %52 = load ptr, ptr %arrayidx.2, align 4
  %sleep.2 = getelementptr inbounds %struct.dvb_frontend, ptr %52, i32 0, i32 1, i32 6
  %53 = ptrtoint ptr %sleep.2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sleep.2, align 4
  %arrayidx68.2 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 16, i32 2
  %55 = ptrtoint ptr %arrayidx68.2 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %arrayidx68.2, align 4
  store ptr @dvb_usb_fe_sleep, ptr %sleep.2, align 4
  %56 = load ptr, ptr %arrayidx.2, align 4
  %call75.2 = tail call i32 @dvb_register_frontend(ptr noundef %dvb_adap, ptr noundef %56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.2)
  %cmp76.2 = icmp slt i32 %call75.2, 0
  br i1 %cmp76.2, label %for.body.2.do.end81_crit_edge, label %for.body.2.for.end_crit_edge

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.2.do.end81_crit_edge:                    ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81

for.end:                                          ; preds = %for.body.2.for.end_crit_edge, %if.end84.1.for.end_crit_edge, %if.end84.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %count_registered.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ 1, %if.end84.for.end_crit_edge ], [ 2, %if.end84.1.for.end_crit_edge ], [ 3, %for.body.2.for.end_crit_edge ]
  %57 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %add.ptr, align 8
  %tuner_attach = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %58, i32 0, i32 22
  %59 = ptrtoint ptr %tuner_attach to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tuner_attach, align 4
  %tobool87.not = icmp eq ptr %60, null
  br i1 %tobool87.not, label %for.end.if.end114_crit_edge, label %if.then88

for.end.if.end114_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then88:                                        ; preds = %for.end
  %call91 = tail call i32 %60(ptr noundef %adap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %do.body95, label %if.then88.if.end114_crit_edge

if.then88.if.end114_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

do.body95:                                        ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug417, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_adapter_frontend_init, %if.then107)) #9
          to label %err_dvb_unregister_frontend [label %if.then107], !srcloc !312

if.then107:                                       ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #11
  %udev108 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %61 = ptrtoint ptr %udev108 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %udev108, align 4
  %dev109 = getelementptr inbounds %struct.usb_device, ptr %62, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug417, ptr noundef %dev109, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.89, i32 noundef %call91) #9
  br label %err_dvb_unregister_frontend

if.end114:                                        ; preds = %if.then88.if.end114_crit_edge, %for.end.if.end114_crit_edge
  %call116 = tail call i32 @dvb_create_media_graph(ptr noundef %dvb_adap, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %if.end114.err_dvb_unregister_frontend_crit_edge, label %if.end120

if.end114.err_dvb_unregister_frontend_crit_edge:  ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dvb_unregister_frontend

if.end120:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  %mdev.i = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 10, i32 12
  %63 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mdev.i, align 4
  %call.i = tail call i32 @__media_device_register(ptr noundef %64, ptr noundef null) #9
  br label %cleanup

err_dvb_unregister_frontend:                      ; preds = %if.end114.err_dvb_unregister_frontend_crit_edge, %if.then107, %do.body95, %do.end81
  %count_registered.0250 = phi i32 [ %i.0252.lcssa258, %do.end81 ], [ %count_registered.0.lcssa, %if.then107 ], [ %count_registered.0.lcssa, %if.end114.err_dvb_unregister_frontend_crit_edge ], [ %count_registered.0.lcssa, %do.body95 ]
  %ret.0 = phi i32 [ %call75.lcssa, %do.end81 ], [ %call91, %if.then107 ], [ %call116, %if.end114.err_dvb_unregister_frontend_crit_edge ], [ %call91, %do.body95 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count_registered.0250)
  %cmp123254.not = icmp eq i32 %count_registered.0250, 0
  br i1 %cmp123254.not, label %err_dvb_unregister_frontend.err_dvb_frontend_detach_crit_edge, label %for.body125

err_dvb_unregister_frontend.err_dvb_frontend_detach_crit_edge: ; preds = %err_dvb_unregister_frontend
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dvb_frontend_detach

for.body125:                                      ; preds = %err_dvb_unregister_frontend
  %i.1255 = add nsw i32 %count_registered.0250, -1
  %arrayidx127 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 %i.1255
  %65 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx127, align 4
  %call128 = tail call i32 @dvb_unregister_frontend(ptr noundef %66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count_registered.0250)
  %cmp123 = icmp ugt i32 %count_registered.0250, 1
  br i1 %cmp123, label %for.body125.1, label %for.body125.err_dvb_frontend_detach_crit_edge

for.body125.err_dvb_frontend_detach_crit_edge:    ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dvb_frontend_detach

for.body125.1:                                    ; preds = %for.body125
  %i.1255.1 = add nsw i32 %count_registered.0250, -2
  %arrayidx127.1 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 %i.1255.1
  %67 = ptrtoint ptr %arrayidx127.1 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx127.1, align 4
  %call128.1 = tail call i32 @dvb_unregister_frontend(ptr noundef %68) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.1255)
  %cmp123.1 = icmp ugt i32 %i.1255, 1
  br i1 %cmp123.1, label %for.body125.2, label %for.body125.1.err_dvb_frontend_detach_crit_edge

for.body125.1.err_dvb_frontend_detach_crit_edge:  ; preds = %for.body125.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_dvb_frontend_detach

for.body125.2:                                    ; preds = %for.body125.1
  call void @__sanitizer_cov_trace_pc() #11
  %i.1255.2 = add nsw i32 %count_registered.0250, -3
  %arrayidx127.2 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 %i.1255.2
  %69 = ptrtoint ptr %arrayidx127.2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx127.2, align 4
  %call128.2 = tail call i32 @dvb_unregister_frontend(ptr noundef %70) #9
  br label %err_dvb_frontend_detach

err_dvb_frontend_detach:                          ; preds = %for.body125.2, %for.body125.1.err_dvb_frontend_detach_crit_edge, %for.body125.err_dvb_frontend_detach_crit_edge, %err_dvb_unregister_frontend.err_dvb_frontend_detach_crit_edge, %if.then25, %do.body13
  %ret.1 = phi i32 [ %call10, %if.then25 ], [ %call10, %do.body13 ], [ %ret.0, %err_dvb_unregister_frontend.err_dvb_frontend_detach_crit_edge ], [ %ret.0, %for.body125.2 ], [ %ret.0, %for.body125.1.err_dvb_frontend_detach_crit_edge ], [ %ret.0, %for.body125.err_dvb_frontend_detach_crit_edge ]
  %arrayidx136 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 2
  %71 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx136, align 4
  %tobool137.not = icmp eq ptr %72, null
  br i1 %tobool137.not, label %err_dvb_frontend_detach.for.inc144_crit_edge, label %if.then138

err_dvb_frontend_detach.for.inc144_crit_edge:     ; preds = %err_dvb_frontend_detach
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc144

if.then138:                                       ; preds = %err_dvb_frontend_detach
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dvb_frontend_detach(ptr noundef nonnull %72) #9
  %73 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %arrayidx136, align 4
  br label %for.inc144

for.inc144:                                       ; preds = %if.then138, %err_dvb_frontend_detach.for.inc144_crit_edge
  %arrayidx136.1 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %74 = ptrtoint ptr %arrayidx136.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx136.1, align 4
  %tobool137.not.1 = icmp eq ptr %75, null
  br i1 %tobool137.not.1, label %for.inc144.for.inc144.1_crit_edge, label %if.then138.1

for.inc144.for.inc144.1_crit_edge:                ; preds = %for.inc144
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc144.1

if.then138.1:                                     ; preds = %for.inc144
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dvb_frontend_detach(ptr noundef nonnull %75) #9
  %76 = ptrtoint ptr %arrayidx136.1 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %arrayidx136.1, align 4
  br label %for.inc144.1

for.inc144.1:                                     ; preds = %if.then138.1, %for.inc144.for.inc144.1_crit_edge
  %77 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %fe, align 4
  %tobool137.not.2 = icmp eq ptr %78, null
  br i1 %tobool137.not.2, label %for.inc144.1.do.body147_crit_edge, label %if.then138.2

for.inc144.1.do.body147_crit_edge:                ; preds = %for.inc144.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body147

if.then138.2:                                     ; preds = %for.inc144.1
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dvb_frontend_detach(ptr noundef nonnull %78) #9
  %79 = ptrtoint ptr %fe to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %fe, align 4
  br label %do.body147

do.body147:                                       ; preds = %if.then138.2, %for.inc144.1.do.body147_crit_edge, %if.then44, %do.body32
  %ret.2 = phi i32 [ 0, %if.then44 ], [ 0, %do.body32 ], [ %ret.1, %if.then138.2 ], [ %ret.1, %for.inc144.1.do.body147_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug418, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_adapter_frontend_init, %if.then159)) #9
          to label %cleanup [label %if.then159], !srcloc !312

if.then159:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #11
  %udev160 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %80 = ptrtoint ptr %udev160 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %udev160, align 4
  %dev161 = getelementptr inbounds %struct.usb_device, ptr %81, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug418, ptr noundef %dev161, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.89, i32 noundef %ret.2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then159, %do.body147, %if.end120
  %retval.0 = phi i32 [ %call.i, %if.end120 ], [ %ret.2, %if.then159 ], [ %ret.2, %do.body147 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dvb_usb_data_complete(ptr nocapture noundef readonly %stream, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %user_priv = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 11
  %0 = ptrtoint ptr %user_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_priv, align 4
  %demux = getelementptr inbounds %struct.dvb_usb_adapter, ptr %1, i32 0, i32 12
  tail call void @dvb_dmx_swfilter(ptr noundef %demux, ptr noundef %buf, i32 noundef %len) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_initv2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_adapter(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_usb_start_feed(ptr nocapture noundef readonly %dvbdmxfeed) #0 align 64 {
entry:
  %stream_props = alloca %struct.usb_data_stream_properties, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %stream_props) #9
  %6 = call ptr @memset(ptr %stream_props, i32 255, i32 16)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usb_start_feed.__UNIQUE_ID_ddebug400, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usb_start_feed, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %id, align 4
  %conv5 = zext i8 %10 to i32
  %active_fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %active_fe to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %active_fe, align 2
  %conv6 = sext i8 %12 to i32
  %type = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 4
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  %pid_filtering = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 5
  %15 = ptrtoint ptr %pid_filtering to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pid_filtering, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool7.not = icmp eq i8 %16, 0
  %cond = select i1 %tobool7.not, ptr @.str.72, ptr @.str.71
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %17 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pid, align 4
  %conv9 = zext i16 %18 to i32
  %index = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 16
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usb_start_feed.__UNIQUE_ID_ddebug400, ptr noundef %dev, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.69, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %14, ptr noundef nonnull %cond, i32 noundef %conv9, i32 noundef %conv9, i32 noundef %20) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %state_bits = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 9
  tail call void @__might_sleep(ptr noundef nonnull @.str.83, i32 noundef 73) #9
  %21 = ptrtoint ptr %state_bits to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %state_bits, align 4
  %23 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %do.end.wait_on_bit.exit_crit_edge, label %if.end.i

do.end.wait_on_bit.exit_crit_edge:                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %wait_on_bit.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %state_bits, i32 noundef 0, ptr noundef nonnull @bit_wait, i32 noundef 2) #9
  br label %wait_on_bit.exit

wait_on_bit.exit:                                 ; preds = %if.end.i, %do.end.wait_on_bit.exit_crit_edge
  %active_fe13 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %active_fe13 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %active_fe13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp = icmp eq i8 %25, -1
  br i1 %cmp, label %wait_on_bit.exit.cleanup_crit_edge, label %if.end17

wait_on_bit.exit.cleanup_crit_edge:               ; preds = %wait_on_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %wait_on_bit.exit
  %feed_count = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 6
  %26 = ptrtoint ptr %feed_count to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %feed_count, align 8
  %inc = add i8 %27, 1
  store i8 %inc, ptr %feed_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp19.not = icmp eq i8 %27, 0
  br i1 %cmp19.not, label %if.end22, label %if.end17.skip_feed_start_crit_edge

if.end17.skip_feed_start_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_feed_start

if.end22:                                         ; preds = %if.end17
  tail call void @_set_bit(i32 noundef 2, ptr noundef %state_bits) #9
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 8
  %get_stream_config = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %29, i32 0, i32 29
  %30 = ptrtoint ptr %get_stream_config to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_stream_config, align 4
  %tobool24.not = icmp eq ptr %31, null
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %3, align 8
  %stream40 = getelementptr inbounds %struct.dvb_usb_adapter_properties, ptr %33, i32 0, i32 4
  %34 = call ptr @memcpy(ptr %stream_props, ptr %stream40, i32 16)
  br i1 %tobool24.not, label %if.end22.if.end41_crit_edge, label %if.then25

if.end22.if.end41_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then25:                                        ; preds = %if.end22
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr, align 8
  %get_stream_config28 = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %36, i32 0, i32 29
  %37 = ptrtoint ptr %get_stream_config28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %get_stream_config28, align 4
  %39 = ptrtoint ptr %active_fe13 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %active_fe13, align 2
  %idxprom = sext i8 %40 to i32
  %arrayidx = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 14, i32 %idxprom
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %ts_type = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 3
  %call30 = call i32 %38(ptr noundef %42, ptr noundef %ts_type, ptr noundef nonnull %stream_props) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then25.if.end41_crit_edge, label %do.end35

if.then25.if.end41_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

do.end35:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  %udev36 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %43 = ptrtoint ptr %udev36 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %udev36, align 4
  %dev37 = getelementptr inbounds %struct.usb_device, ptr %44, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str, i32 noundef %call30) #12
  br label %if.end41

if.end41:                                         ; preds = %do.end35, %if.then25.if.end41_crit_edge, %if.end22.if.end41_crit_edge
  %ret.0 = phi i32 [ %call30, %do.end35 ], [ 0, %if.then25.if.end41_crit_edge ], [ 0, %if.end22.if.end41_crit_edge ]
  %ts_type42 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 3
  %45 = ptrtoint ptr %ts_type42 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ts_type42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %switch.selectcmp = icmp eq i8 %46, 2
  %switch.select = select i1 %switch.selectcmp, ptr @dvb_usb_data_complete_raw, ptr @dvb_usb_data_complete
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %46)
  %switch.selectcmp201 = icmp eq i8 %46, 1
  %switch.select202 = select i1 %switch.selectcmp201, ptr @dvb_usb_data_complete_204, ptr %switch.select
  %complete50 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 1, i32 3
  %47 = ptrtoint ptr %complete50 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %switch.select202, ptr %complete50, align 4
  %stream51 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 1
  %call52 = call i32 @usb_urb_submitv2(ptr noundef %stream51, ptr noundef nonnull %stream_props) #9
  %pid_filtering53 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 5
  %48 = ptrtoint ptr %pid_filtering53 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pid_filtering53, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool54.not = icmp eq i8 %49, 0
  br i1 %tobool54.not, label %if.end41.if.end70_crit_edge, label %land.lhs.true

if.end41.if.end70_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

land.lhs.true:                                    ; preds = %if.end41
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 8
  %pid_filter_ctrl = getelementptr inbounds %struct.dvb_usb_adapter_properties, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %pid_filter_ctrl to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pid_filter_ctrl, align 4
  %tobool57.not = icmp eq ptr %53, null
  br i1 %tobool57.not, label %land.lhs.true.if.end70_crit_edge, label %if.then58

land.lhs.true.if.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then58:                                        ; preds = %land.lhs.true
  %call61 = call i32 %53(ptr noundef %3, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then58.if.end70_crit_edge, label %do.end66

if.then58.if.end70_crit_edge:                     ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

do.end66:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  %udev67 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %54 = ptrtoint ptr %udev67 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %udev67, align 4
  %dev68 = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str, i32 noundef %call61) #12
  br label %if.end70

if.end70:                                         ; preds = %do.end66, %if.then58.if.end70_crit_edge, %land.lhs.true.if.end70_crit_edge, %if.end41.if.end70_crit_edge
  %ret.1 = phi i32 [ %call61, %do.end66 ], [ 0, %if.then58.if.end70_crit_edge ], [ %ret.0, %land.lhs.true.if.end70_crit_edge ], [ %ret.0, %if.end41.if.end70_crit_edge ]
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr, align 8
  %streaming_ctrl = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %57, i32 0, i32 25
  %58 = ptrtoint ptr %streaming_ctrl to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %streaming_ctrl, align 4
  %tobool72.not = icmp eq ptr %59, null
  br i1 %tobool72.not, label %if.end70.skip_feed_start_crit_edge, label %if.then73

if.end70.skip_feed_start_crit_edge:               ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_feed_start

if.then73:                                        ; preds = %if.end70
  %60 = ptrtoint ptr %active_fe13 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %active_fe13, align 2
  %idxprom78 = sext i8 %61 to i32
  %arrayidx79 = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 14, i32 %idxprom78
  %62 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx79, align 4
  %call80 = call i32 %59(ptr noundef %63, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then73.skip_feed_start_crit_edge, label %do.end85

if.then73.skip_feed_start_crit_edge:              ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_feed_start

do.end85:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  %udev86 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %64 = ptrtoint ptr %udev86 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %udev86, align 4
  %dev87 = getelementptr inbounds %struct.usb_device, ptr %65, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev87, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str, i32 noundef %call80) #12
  br label %skip_feed_start

skip_feed_start:                                  ; preds = %do.end85, %if.then73.skip_feed_start_crit_edge, %if.end70.skip_feed_start_crit_edge, %if.end17.skip_feed_start_crit_edge
  %ret.2 = phi i32 [ 0, %if.end17.skip_feed_start_crit_edge ], [ %call80, %do.end85 ], [ 0, %if.then73.skip_feed_start_crit_edge ], [ %ret.1, %if.end70.skip_feed_start_crit_edge ]
  %pid_filtering90 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 5
  %66 = ptrtoint ptr %pid_filtering90 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %pid_filtering90, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool91.not = icmp eq i8 %67, 0
  br i1 %tobool91.not, label %skip_feed_start.if.end110_crit_edge, label %land.lhs.true93

skip_feed_start.if.end110_crit_edge:              ; preds = %skip_feed_start
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

land.lhs.true93:                                  ; preds = %skip_feed_start
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %3, align 8
  %pid_filter = getelementptr inbounds %struct.dvb_usb_adapter_properties, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %pid_filter to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pid_filter, align 4
  %tobool95.not = icmp eq ptr %71, null
  br i1 %tobool95.not, label %land.lhs.true93.if.end110_crit_edge, label %if.then96

land.lhs.true93.if.end110_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then96:                                        ; preds = %land.lhs.true93
  %index99 = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 16
  %72 = ptrtoint ptr %index99 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %index99, align 8
  %pid100 = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %74 = ptrtoint ptr %pid100 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %pid100, align 4
  %call101 = call i32 %71(ptr noundef %3, i32 noundef %73, i16 noundef zeroext %75, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then96.cleanup_crit_edge, label %if.end110.thread196

if.then96.cleanup_crit_edge:                      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end110.thread196:                              ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #11
  %udev107 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %76 = ptrtoint ptr %udev107 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %udev107, align 4
  %dev108 = getelementptr inbounds %struct.usb_device, ptr %77, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev108, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str, i32 noundef %call101) #12
  br label %do.body113

if.end110:                                        ; preds = %land.lhs.true93.if.end110_crit_edge, %skip_feed_start.if.end110_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool111.not = icmp eq i32 %ret.2, 0
  br i1 %tobool111.not, label %if.end110.cleanup_crit_edge, label %if.end110.do.body113_crit_edge

if.end110.do.body113_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body113

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body113:                                       ; preds = %if.end110.do.body113_crit_edge, %if.end110.thread196
  %ret.3199 = phi i32 [ %call101, %if.end110.thread196 ], [ %ret.2, %if.end110.do.body113_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usb_start_feed.__UNIQUE_ID_ddebug401, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usb_start_feed, %if.then125)) #9
          to label %cleanup [label %if.then125], !srcloc !312

if.then125:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #11
  %udev126 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %78 = ptrtoint ptr %udev126 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %udev126, align 4
  %dev127 = getelementptr inbounds %struct.usb_device, ptr %79, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usb_start_feed.__UNIQUE_ID_ddebug401, ptr noundef %dev127, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.69, i32 noundef %ret.3199) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then125, %do.body113, %if.end110.cleanup_crit_edge, %if.then96.cleanup_crit_edge, %wait_on_bit.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %wait_on_bit.exit.cleanup_crit_edge ], [ %ret.3199, %if.then125 ], [ 0, %if.end110.cleanup_crit_edge ], [ %ret.3199, %do.body113 ], [ 0, %if.then96.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %stream_props) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_usb_stop_feed(ptr nocapture noundef readonly %dvbdmxfeed) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demux = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 2
  %0 = ptrtoint ptr %demux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demux, align 4
  %priv = getelementptr inbounds %struct.dvb_demux, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usb_stop_feed.__UNIQUE_ID_ddebug402, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usb_stop_feed, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %conv5 = zext i8 %9 to i32
  %active_fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %active_fe to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active_fe, align 2
  %conv6 = sext i8 %11 to i32
  %type = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 4
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %pid_filtering = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %pid_filtering to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pid_filtering, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not = icmp eq i8 %15, 0
  %cond = select i1 %tobool7.not, ptr @.str.72, ptr @.str.71
  %pid = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %16 = ptrtoint ptr %pid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %pid, align 4
  %conv9 = zext i16 %17 to i32
  %index = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 16
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usb_stop_feed.__UNIQUE_ID_ddebug402, ptr noundef %dev, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.84, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %13, ptr noundef nonnull %cond, i32 noundef %conv9, i32 noundef %conv9, i32 noundef %19) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %active_fe12 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %active_fe12 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %active_fe12, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp = icmp eq i8 %21, -1
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end16

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %do.end
  %pid_filtering17 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %pid_filtering17 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pid_filtering17, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool18.not = icmp eq i8 %23, 0
  br i1 %tobool18.not, label %if.end16.if.end35_crit_edge, label %land.lhs.true

if.end16.if.end35_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true:                                    ; preds = %if.end16
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 8
  %pid_filter = getelementptr inbounds %struct.dvb_usb_adapter_properties, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %pid_filter to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pid_filter, align 4
  %tobool20.not = icmp eq ptr %27, null
  br i1 %tobool20.not, label %land.lhs.true.if.end35_crit_edge, label %if.then21

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then21:                                        ; preds = %land.lhs.true
  %index24 = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 16
  %28 = ptrtoint ptr %index24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index24, align 8
  %pid25 = getelementptr inbounds %struct.dvb_demux_feed, ptr %dvbdmxfeed, i32 0, i32 6
  %30 = ptrtoint ptr %pid25 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %pid25, align 4
  %call26 = tail call i32 %27(ptr noundef %3, i32 noundef %29, i16 noundef zeroext %31, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then21.if.end35_crit_edge, label %do.end31

if.then21.if.end35_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end31:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  %udev32 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %32 = ptrtoint ptr %udev32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %udev32, align 4
  %dev33 = getelementptr inbounds %struct.usb_device, ptr %33, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str, i32 noundef %call26) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end31, %if.then21.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %if.end16.if.end35_crit_edge
  %ret.0 = phi i32 [ %call26, %do.end31 ], [ 0, %if.then21.if.end35_crit_edge ], [ 0, %land.lhs.true.if.end35_crit_edge ], [ 0, %if.end16.if.end35_crit_edge ]
  %feed_count = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 6
  %34 = ptrtoint ptr %feed_count to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %feed_count, align 8
  %dec = add i8 %35, -1
  store i8 %dec, ptr %feed_count, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %cmp37.not = icmp eq i8 %dec, 0
  br i1 %cmp37.not, label %if.end40, label %if.end35.skip_feed_stop_crit_edge

if.end35.skip_feed_stop_crit_edge:                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_feed_stop

if.end40:                                         ; preds = %if.end35
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 8
  %streaming_ctrl = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %37, i32 0, i32 25
  %38 = ptrtoint ptr %streaming_ctrl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %streaming_ctrl, align 4
  %tobool42.not = icmp eq ptr %39, null
  br i1 %tobool42.not, label %if.end40.if.end56_crit_edge, label %if.then43

if.end40.if.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.then43:                                        ; preds = %if.end40
  %40 = ptrtoint ptr %active_fe12 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %active_fe12, align 2
  %idxprom = sext i8 %41 to i32
  %arrayidx = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 14, i32 %idxprom
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %call47 = tail call i32 %39(ptr noundef %43, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.then43.if.end56_crit_edge, label %do.end52

if.then43.if.end56_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

do.end52:                                         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #11
  %udev53 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %44 = ptrtoint ptr %udev53 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %udev53, align 4
  %dev54 = getelementptr inbounds %struct.usb_device, ptr %45, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str, i32 noundef %call47) #12
  br label %if.end56

if.end56:                                         ; preds = %do.end52, %if.then43.if.end56_crit_edge, %if.end40.if.end56_crit_edge
  %ret.1 = phi i32 [ %call47, %do.end52 ], [ 0, %if.then43.if.end56_crit_edge ], [ %ret.0, %if.end40.if.end56_crit_edge ]
  %46 = ptrtoint ptr %pid_filtering17 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pid_filtering17, align 1, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool58.not = icmp eq i8 %47, 0
  br i1 %tobool58.not, label %if.end56.if.end75_crit_edge, label %land.lhs.true60

if.end56.if.end75_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

land.lhs.true60:                                  ; preds = %if.end56
  %48 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %3, align 8
  %pid_filter_ctrl = getelementptr inbounds %struct.dvb_usb_adapter_properties, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %pid_filter_ctrl to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pid_filter_ctrl, align 4
  %tobool62.not = icmp eq ptr %51, null
  br i1 %tobool62.not, label %land.lhs.true60.if.end75_crit_edge, label %if.then63

land.lhs.true60.if.end75_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

if.then63:                                        ; preds = %land.lhs.true60
  %call66 = tail call i32 %51(ptr noundef %3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then63.if.end75_crit_edge, label %do.end71

if.then63.if.end75_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end75

do.end71:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #11
  %udev72 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %52 = ptrtoint ptr %udev72 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %udev72, align 4
  %dev73 = getelementptr inbounds %struct.usb_device, ptr %53, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev73, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str, i32 noundef %call66) #12
  br label %if.end75

if.end75:                                         ; preds = %do.end71, %if.then63.if.end75_crit_edge, %land.lhs.true60.if.end75_crit_edge, %if.end56.if.end75_crit_edge
  %ret.2 = phi i32 [ %call66, %do.end71 ], [ 0, %if.then63.if.end75_crit_edge ], [ %ret.1, %land.lhs.true60.if.end75_crit_edge ], [ %ret.1, %if.end56.if.end75_crit_edge ]
  %stream = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 1
  %call76 = tail call i32 @usb_urb_killv2(ptr noundef %stream) #9
  %state_bits = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state_bits) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !315
  tail call void @wake_up_bit(ptr noundef %state_bits, i32 noundef 2) #9
  br label %skip_feed_stop

skip_feed_stop:                                   ; preds = %if.end75, %if.end35.skip_feed_stop_crit_edge
  %ret.3 = phi i32 [ %ret.0, %if.end35.skip_feed_stop_crit_edge ], [ %ret.2, %if.end75 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool84.not = icmp eq i32 %ret.3, 0
  br i1 %tobool84.not, label %skip_feed_stop.cleanup_crit_edge, label %do.body86

skip_feed_stop.cleanup_crit_edge:                 ; preds = %skip_feed_stop
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body86:                                        ; preds = %skip_feed_stop
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usb_stop_feed.__UNIQUE_ID_ddebug403, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usb_stop_feed, %if.then98)) #9
          to label %cleanup [label %if.then98], !srcloc !312

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  %udev99 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %54 = ptrtoint ptr %udev99 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %udev99, align 4
  %dev100 = getelementptr inbounds %struct.usb_device, ptr %55, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usb_stop_feed.__UNIQUE_ID_ddebug403, ptr noundef %dev100, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.84, i32 noundef %ret.3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %do.body86, %skip_feed_stop.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ %ret.3, %if.then98 ], [ 0, %skip_feed_stop.cleanup_crit_edge ], [ %ret.3, %do.body86 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmx_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_dmxdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_net_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmxdev_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__media_device_usb_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dvb_usb_data_complete_204(ptr nocapture noundef readonly %stream, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %user_priv = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 11
  %0 = ptrtoint ptr %user_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_priv, align 4
  %demux = getelementptr inbounds %struct.dvb_usb_adapter, ptr %1, i32 0, i32 12
  tail call void @dvb_dmx_swfilter_204(ptr noundef %demux, ptr noundef %buf, i32 noundef %len) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dvb_usb_data_complete_raw(ptr nocapture noundef readonly %stream, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %user_priv = getelementptr inbounds %struct.usb_data_stream, ptr %stream, i32 0, i32 11
  %0 = ptrtoint ptr %user_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_priv, align 4
  %demux = getelementptr inbounds %struct.dvb_usb_adapter, ptr %1, i32 0, i32 12
  tail call void @dvb_dmx_swfilter_raw(ptr noundef %demux, ptr noundef %buf, i32 noundef %len) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_submitv2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_204(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_dmx_swfilter_raw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @media_device_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_usb_fe_init(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usb_fe_init.__UNIQUE_ID_ddebug410, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usb_fe_init, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %conv5 = zext i8 %9 to i32
  %id6 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %10 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usb_fe_init.__UNIQUE_ID_ddebug410, ptr noundef %dev, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.94, i32 noundef %conv5, i32 noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %suspend_resume_active = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %suspend_resume_active to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %suspend_resume_active, align 2, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  br i1 %tobool7.not, label %if.then8, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %id9 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %14 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id9, align 4
  %conv10 = trunc i32 %15 to i8
  %active_fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %active_fe to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv10, ptr %active_fe, align 2
  %state_bits = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state_bits) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.end.if.end11_crit_edge
  %powered1.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 7
  %17 = ptrtoint ptr %powered1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %powered1.i, align 8
  %dec.i = add i32 %18, 1
  store i32 %dec.i, ptr %powered1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec.i)
  %switch = icmp ult i32 %dec.i, 2
  br i1 %switch, label %do.body.i, label %if.end11.if.end15_crit_edge

if.end11.if.end15_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.body.i:                                        ; preds = %if.end11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usb_fe_init, %if.then10.i)) #9
          to label %do.end.i [label %if.then10.i], !srcloc !312

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %19 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %udev.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %20, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug408, ptr noundef %dev.i, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.117, i32 noundef 1) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %do.body.i
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  %power_ctrl.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %power_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %power_ctrl.i, align 4
  %tobool12.not.i = icmp eq ptr %24, null
  br i1 %tobool12.not.i, label %do.end.i.if.end15_crit_edge, label %if.then13.i

do.end.i.if.end15_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13.i:                                      ; preds = %do.end.i
  %call16.i = tail call i32 %24(ptr noundef %add.ptr, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %do.body22.i, label %if.then13.i.if.end15_crit_edge

if.then13.i.if.end15_crit_edge:                   ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

do.body22.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usb_fe_init, %if.then34.i)) #9
          to label %err [label %if.then34.i], !srcloc !312

if.then34.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  %udev35.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %25 = ptrtoint ptr %udev35.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %udev35.i, align 4
  %dev36.i = getelementptr inbounds %struct.usb_device, ptr %26, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug409, ptr noundef %dev36.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.117, i32 noundef %call16.i) #9
  br label %err

if.end15:                                         ; preds = %if.then13.i.if.end15_crit_edge, %do.end.i.if.end15_crit_edge, %if.end11.if.end15_crit_edge
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr, align 8
  %frontend_ctrl = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %28, i32 0, i32 24
  %29 = ptrtoint ptr %frontend_ctrl to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %frontend_ctrl, align 4
  %tobool16.not = icmp eq ptr %30, null
  br i1 %tobool16.not, label %if.end15.if.end25_crit_edge, label %if.then17

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then17:                                        ; preds = %if.end15
  %call20 = tail call i32 %30(ptr noundef %fe, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then17.err_crit_edge, label %if.then17.if.end25_crit_edge

if.then17.if.end25_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then17.err_crit_edge:                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end25:                                         ; preds = %if.then17.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  %ret.0 = phi i32 [ %call20, %if.then17.if.end25_crit_edge ], [ 0, %if.end15.if.end25_crit_edge ]
  %id26 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %31 = ptrtoint ptr %id26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id26, align 4
  %arrayidx = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 15, i32 %32
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %tobool27.not = icmp eq ptr %34, null
  br i1 %tobool27.not, label %if.end25.err_crit_edge, label %if.then28

if.end25.err_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then28:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call i32 %34(ptr noundef %fe) #9
  br label %err

err:                                              ; preds = %if.then28, %if.end25.err_crit_edge, %if.then17.err_crit_edge, %if.then34.i, %do.body22.i
  %ret.1 = phi i32 [ %call20, %if.then17.err_crit_edge ], [ %call32, %if.then28 ], [ %ret.0, %if.end25.err_crit_edge ], [ %call16.i, %if.then34.i ], [ %call16.i, %do.body22.i ]
  %35 = ptrtoint ptr %suspend_resume_active to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %suspend_resume_active, align 2, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool39.not = icmp eq i8 %36, 0
  br i1 %tobool39.not, label %if.then40, label %err.do.body50_crit_edge

err.do.body50_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body50

if.then40:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  %state_bits41 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state_bits41) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !316
  tail call void @wake_up_bit(ptr noundef %state_bits41, i32 noundef 0) #9
  br label %do.body50

do.body50:                                        ; preds = %if.then40, %err.do.body50_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usb_fe_init.__UNIQUE_ID_ddebug411, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usb_fe_init, %if.then62)) #9
          to label %do.end67 [label %if.then62], !srcloc !312

if.then62:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %udev63 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %37 = ptrtoint ptr %udev63 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %udev63, align 4
  %dev64 = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usb_fe_init.__UNIQUE_ID_ddebug411, ptr noundef %dev64, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.94, i32 noundef %ret.1) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then62, %do.body50
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvb_usb_fe_sleep(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dvb = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %0 = ptrtoint ptr %dvb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvb, align 4
  %priv = getelementptr inbounds %struct.dvb_adapter, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv = zext i8 %5 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %3, i32 %idx.neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usb_fe_sleep.__UNIQUE_ID_ddebug412, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usb_fe_sleep, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id, align 4
  %conv5 = zext i8 %9 to i32
  %id6 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %10 = ptrtoint ptr %id6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usb_fe_sleep.__UNIQUE_ID_ddebug412, ptr noundef %dev, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.97, i32 noundef %conv5, i32 noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %suspend_resume_active = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %suspend_resume_active to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %suspend_resume_active, align 2, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  br i1 %tobool7.not, label %if.then8, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %do.end
  %state_bits = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 9
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state_bits) #9
  tail call void @__might_sleep(ptr noundef nonnull @.str.83, i32 noundef 73) #9
  %14 = ptrtoint ptr %state_bits to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state_bits, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.then8.if.end11_crit_edge, label %if.end.i

if.then8.if.end11_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.i:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %call3.i = tail call i32 @out_of_line_wait_on_bit(ptr noundef %state_bits, i32 noundef 2, ptr noundef nonnull @bit_wait, i32 noundef 2) #9
  br label %if.end11

if.end11:                                         ; preds = %if.end.i, %if.then8.if.end11_crit_edge, %do.end.if.end11_crit_edge
  %id12 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 10
  %17 = ptrtoint ptr %id12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id12, align 4
  %arrayidx = getelementptr %struct.dvb_usb_adapter, ptr %3, i32 0, i32 16, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %tobool13.not = icmp eq ptr %20, null
  br i1 %tobool13.not, label %if.end11.if.end22_crit_edge, label %if.then14

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then14:                                        ; preds = %if.end11
  %call18 = tail call i32 %20(ptr noundef %fe) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp = icmp slt i32 %call18, 0
  br i1 %cmp, label %if.then14.err_crit_edge, label %if.then14.if.end22_crit_edge

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then14.err_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end22:                                         ; preds = %if.then14.if.end22_crit_edge, %if.end11.if.end22_crit_edge
  %21 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr, align 8
  %frontend_ctrl = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %22, i32 0, i32 24
  %23 = ptrtoint ptr %frontend_ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %frontend_ctrl, align 4
  %tobool23.not = icmp eq ptr %24, null
  br i1 %tobool23.not, label %if.end22.if.end32_crit_edge, label %if.then24

if.end22.if.end32_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then24:                                        ; preds = %if.end22
  %call27 = tail call i32 %24(ptr noundef %fe, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then24.err_crit_edge, label %if.then24.if.end32_crit_edge

if.then24.if.end32_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then24.err_crit_edge:                          ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end32:                                         ; preds = %if.then24.if.end32_crit_edge, %if.end22.if.end32_crit_edge
  %powered1.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 7
  %25 = ptrtoint ptr %powered1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %powered1.i, align 8
  %dec.i = add i32 %26, -1
  store i32 %dec.i, ptr %powered1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end32.err_crit_edge

if.end32.err_crit_edge:                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

do.body.i:                                        ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug408, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usb_fe_sleep, %if.then10.i)) #9
          to label %do.end.i [label %if.then10.i], !srcloc !312

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %27 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %udev.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %28, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug408, ptr noundef %dev.i, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.117, i32 noundef 0) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then10.i, %do.body.i
  %29 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr, align 8
  %power_ctrl.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %power_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %power_ctrl.i, align 4
  %tobool12.not.i = icmp eq ptr %32, null
  br i1 %tobool12.not.i, label %do.end.i.err_crit_edge, label %if.then13.i

do.end.i.err_crit_edge:                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then13.i:                                      ; preds = %do.end.i
  %call16.i = tail call i32 %32(ptr noundef %add.ptr, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp17.i = icmp slt i32 %call16.i, 0
  br i1 %cmp17.i, label %do.body22.i, label %if.then13.i.err_crit_edge

if.then13.i.err_crit_edge:                        ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

do.body22.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug409, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usb_fe_sleep, %if.then34.i)) #9
          to label %err [label %if.then34.i], !srcloc !312

if.then34.i:                                      ; preds = %do.body22.i
  call void @__sanitizer_cov_trace_pc() #11
  %udev35.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %33 = ptrtoint ptr %udev35.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %udev35.i, align 4
  %dev36.i = getelementptr inbounds %struct.usb_device, ptr %34, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug409, ptr noundef %dev36.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.117, i32 noundef %call16.i) #9
  br label %err

err:                                              ; preds = %if.then34.i, %do.body22.i, %if.then13.i.err_crit_edge, %do.end.i.err_crit_edge, %if.end32.err_crit_edge, %if.then24.err_crit_edge, %if.then14.err_crit_edge
  %ret.0 = phi i32 [ %call18, %if.then14.err_crit_edge ], [ %call27, %if.then24.err_crit_edge ], [ 0, %do.end.i.err_crit_edge ], [ 0, %if.then13.i.err_crit_edge ], [ %call16.i, %if.then34.i ], [ %call16.i, %do.body22.i ], [ 0, %if.end32.err_crit_edge ]
  %35 = ptrtoint ptr %suspend_resume_active to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %suspend_resume_active, align 2, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool35.not = icmp eq i8 %36, 0
  br i1 %tobool35.not, label %if.then36, label %err.do.body46_crit_edge

err.do.body46_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body46

if.then36:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #11
  %active_fe = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 8
  %37 = ptrtoint ptr %active_fe to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %active_fe, align 2
  %state_bits37 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %3, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %state_bits37) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !317
  tail call void @wake_up_bit(ptr noundef %state_bits37, i32 noundef 1) #9
  br label %do.body46

do.body46:                                        ; preds = %if.then36, %err.do.body46_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usb_fe_sleep.__UNIQUE_ID_ddebug413, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usb_fe_sleep, %if.then58)) #9
          to label %do.end63 [label %if.then58], !srcloc !312

if.then58:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #11
  %udev59 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %38 = ptrtoint ptr %udev59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %udev59, align 4
  %dev60 = getelementptr inbounds %struct.usb_device, ptr %39, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usb_fe_sleep.__UNIQUE_ID_ddebug413, ptr noundef %dev60, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97, i32 noundef %ret.0) #9
  br label %do.end63

do.end63:                                         ; preds = %if.then58, %do.body46
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_register_frontend(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_create_media_graph(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_unregister_frontend(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_frontend_detach(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__media_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dvb_usb_read_remote_control(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -6244
  %0 = load i32, ptr @dvb_usbv2_disable_rc_polling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %bulk_mode = getelementptr i8, ptr %work, i32 -6188
  %1 = ptrtoint ptr %bulk_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bulk_mode, align 8, !range !314
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %rc_polling_active = getelementptr i8, ptr %work, i32 -6232
  %3 = ptrtoint ptr %rc_polling_active to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %rc_polling_active, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %query = getelementptr i8, ptr %work, i32 -6200
  %4 = ptrtoint ptr %query to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %query, align 4
  %call = tail call i32 %5(ptr noundef %add.ptr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.else.i

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr i8, ptr %work, i32 -6224
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str, i32 noundef %call) #12
  %rc_polling_active4 = getelementptr i8, ptr %work, i32 -6232
  %8 = ptrtoint ptr %rc_polling_active4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %rc_polling_active4, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %interval = getelementptr i8, ptr %work, i32 -6196
  %9 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %interval, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %10) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %11 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %11, ptr noundef %work, i32 noundef %call2.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dvb_usbv2_adapter_exit(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_adapter_exit.__UNIQUE_ID_ddebug423, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_adapter_exit, %if.then)) #9
          to label %for.body [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %1, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_adapter_exit.__UNIQUE_ID_ddebug423, ptr noundef %dev, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.109) #9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then, %entry
  %i.02 = phi i32 [ %dec, %for.inc.for.body_crit_edge ], [ 1, %entry ], [ 1, %if.then ]
  %arrayidx = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 %i.02
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 8
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then4:                                         ; preds = %for.body
  tail call fastcc void @dvb_usbv2_adapter_dvb_exit(ptr noundef %arrayidx)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_adapter_stream_exit.__UNIQUE_ID_ddebug399, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_adapter_exit, %if.then.i)) #9
          to label %dvb_usbv2_adapter_stream_exit.exit [label %if.then.i], !srcloc !312

if.then.i:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %id.i = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 %i.02, i32 2
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id.i, align 4
  %conv.i = zext i8 %5 to i32
  %.neg.i = mul nsw i32 %conv.i, -2280
  %idx.neg.i = add nsw i32 %.neg.i, -1616
  %add.ptr.i = getelementptr i8, ptr %arrayidx, i32 %idx.neg.i
  %udev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr.i, i32 0, i32 5
  %6 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev.i, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_adapter_stream_exit.__UNIQUE_ID_ddebug399, ptr noundef %dev.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.111, i32 noundef %conv.i) #9
  br label %dvb_usbv2_adapter_stream_exit.exit

dvb_usbv2_adapter_stream_exit.exit:               ; preds = %if.then.i, %if.then4
  %stream.i = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 %i.02, i32 1
  %call6.i = tail call i32 @usb_urb_exitv2(ptr noundef %stream.i) #9
  tail call fastcc void @dvb_usbv2_adapter_frontend_exit(ptr noundef %arrayidx)
  %mdev.i = getelementptr %struct.dvb_usb_device, ptr %d, i32 0, i32 11, i32 %i.02, i32 10, i32 12
  %8 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdev.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %dvb_usbv2_adapter_stream_exit.exit.for.inc_crit_edge, label %if.end.i

dvb_usbv2_adapter_stream_exit.exit.for.inc_crit_edge: ; preds = %dvb_usbv2_adapter_stream_exit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i:                                         ; preds = %dvb_usbv2_adapter_stream_exit.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @media_device_unregister(ptr noundef nonnull %9) #9
  %10 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev.i, align 4
  tail call void @media_device_cleanup(ptr noundef %11) #9
  %12 = ptrtoint ptr %mdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdev.i, align 4
  tail call void @kfree(ptr noundef %13) #9
  %14 = ptrtoint ptr %mdev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %mdev.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i, %dvb_usbv2_adapter_stream_exit.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dec = add nsw i32 %i.02, -1
  %cmp.not = icmp eq i32 %i.02, 0
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dvb_usbv2_adapter_dvb_exit(ptr noundef %adap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_adapter_dvb_exit.__UNIQUE_ID_ddebug407, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_adapter_dvb_exit, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_adapter_dvb_exit.__UNIQUE_ID_ddebug407, ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.110, i32 noundef %conv) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %priv = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 10, i32 5
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 8
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %do.end.if.end14_crit_edge, label %if.then7

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dvb_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 10
  %dvb_net = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 13
  tail call void @dvb_net_release(ptr noundef %dvb_net) #9
  %demux = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12
  %close = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 12, i32 0, i32 4
  %6 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %close, align 8
  %call10 = tail call i32 %7(ptr noundef %demux) #9
  %dmxdev = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 11
  tail call void @dvb_dmxdev_release(ptr noundef %dmxdev) #9
  tail call void @dvb_dmx_release(ptr noundef %demux) #9
  %call13 = tail call i32 @dvb_unregister_adapter(ptr noundef %dvb_adap) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then7, %do.end.if.end14_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dvb_usbv2_adapter_frontend_exit(ptr noundef %adap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 2
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  %.neg = mul nsw i32 %conv, -2280
  %idx.neg = add nsw i32 %.neg, -1616
  %add.ptr = getelementptr i8, ptr %adap, i32 %idx.neg
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_adapter_frontend_exit.__UNIQUE_ID_ddebug419, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_adapter_frontend_exit, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !312

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %2 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %udev, align 4
  %dev = getelementptr inbounds %struct.usb_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %id, align 4
  %conv5 = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_adapter_frontend_exit.__UNIQUE_ID_ddebug419, ptr noundef %dev, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.112, i32 noundef %conv5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %do.end.for.inc_crit_edge, label %if.then8

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %7) #9
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  tail call void @dvb_frontend_detach(ptr noundef %9) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %do.end.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %tobool7.not.1 = icmp eq ptr %11, null
  br i1 %tobool7.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then8.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1

if.then8.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %call11.1 = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %11) #9
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.1, align 4
  tail call void @dvb_frontend_detach(ptr noundef %13) #9
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then8.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 14, i32 0
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.2, align 4
  %tobool7.not.2 = icmp eq ptr %15, null
  br i1 %tobool7.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then8.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2

if.then8.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  %call11.2 = tail call i32 @dvb_unregister_frontend(ptr noundef nonnull %15) #9
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.2, align 4
  tail call void @dvb_frontend_detach(ptr noundef %17) #9
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then8.2, %for.inc.1.for.inc.2_crit_edge
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 8
  %tuner_detach = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %19, i32 0, i32 23
  %20 = ptrtoint ptr %tuner_detach to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tuner_detach, align 4
  %tobool15.not = icmp eq ptr %21, null
  br i1 %tobool15.not, label %for.inc.2.if.end42_crit_edge, label %if.then16

for.inc.2.if.end42_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then16:                                        ; preds = %for.inc.2
  %call19 = tail call i32 %21(ptr noundef %adap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.body23, label %if.then16.if.end42_crit_edge

if.then16.if.end42_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

do.body23:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_adapter_frontend_exit.__UNIQUE_ID_ddebug420, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_adapter_frontend_exit, %if.then35)) #9
          to label %if.end42 [label %if.then35], !srcloc !312

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  %udev36 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %22 = ptrtoint ptr %udev36 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udev36, align 4
  %dev37 = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_adapter_frontend_exit.__UNIQUE_ID_ddebug420, ptr noundef %dev37, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.112, i32 noundef %call19) #9
  br label %if.end42

if.end42:                                         ; preds = %if.then35, %do.body23, %if.then16.if.end42_crit_edge, %for.inc.2.if.end42_crit_edge
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %add.ptr, align 8
  %frontend_detach = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %25, i32 0, i32 21
  %26 = ptrtoint ptr %frontend_detach to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %frontend_detach, align 4
  %tobool44.not = icmp eq ptr %27, null
  br i1 %tobool44.not, label %if.end42.if.end71_crit_edge, label %if.then45

if.end42.if.end71_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

if.then45:                                        ; preds = %if.end42
  %call48 = tail call i32 %27(ptr noundef %adap) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.body52, label %if.then45.if.end71_crit_edge

if.then45.if.end71_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

do.body52:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dvb_usbv2_adapter_frontend_exit.__UNIQUE_ID_ddebug421, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dvb_usbv2_adapter_frontend_exit, %if.then64)) #9
          to label %if.end71 [label %if.then64], !srcloc !312

if.then64:                                        ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #11
  %udev65 = getelementptr inbounds %struct.dvb_usb_device, ptr %add.ptr, i32 0, i32 5
  %28 = ptrtoint ptr %udev65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %udev65, align 4
  %dev66 = getelementptr inbounds %struct.usb_device, ptr %29, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dvb_usbv2_adapter_frontend_exit.__UNIQUE_ID_ddebug421, ptr noundef %dev66, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.112, i32 noundef %call48) #9
  br label %if.end71

if.end71:                                         ; preds = %if.then64, %do.body52, %if.then45.if.end71_crit_edge, %if.end42.if.end71_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_net_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_urb_exitv2(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_frontend_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 117)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !53, !55, !56, !58, !59, !60, !62, !64, !65, !66, !68, !70, !71, !73, !75, !76, !78, !80, !81, !82, !83, !85, !87, !89, !91, !92, !94, !96, !97, !98, !100, !101, !103, !104, !105, !107, !108, !109, !111, !113, !114, !116, !118, !119, !121, !123, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !142, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !172, !173, !174, !176, !177, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !216, !217, !219, !220, !222, !223, !225, !226, !227, !229, !230, !232, !234, !235, !236, !238, !239, !241, !242, !244, !246, !247, !249, !251, !252, !253, !254, !256, !257, !258, !260, !262, !264, !265, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !281, !282, !284, !285, !287, !288, !290, !291, !293, !294, !296, !297, !299, !300, !301}
!llvm.module.flags = !{!303, !304, !305, !306, !307, !308, !309, !310}
!llvm.ident = !{!311}

!0 = !{ptr @__param_disable_rc_polling, !1, !"__param_disable_rc_polling", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 13, i32 1}
!2 = !{ptr @__UNIQUE_ID_disable_rc_pollingtype386, !1, !"__UNIQUE_ID_disable_rc_pollingtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_disable_rc_polling387, !4, !"__UNIQUE_ID_disable_rc_polling387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 14, i32 1}
!5 = !{ptr @__param_force_pid_filter_usage, !6, !"__param_force_pid_filter_usage", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 17, i32 1}
!7 = !{ptr @__UNIQUE_ID_force_pid_filter_usagetype388, !6, !"__UNIQUE_ID_force_pid_filter_usagetype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_force_pid_filter_usage389, !9, !"__UNIQUE_ID_force_pid_filter_usage389", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 19, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 898, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @dvb_usbv2_probe.__UNIQUE_ID_ddebug427, !11, !"__UNIQUE_ID_ddebug427", i1 false, i1 false}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 902, i32 3}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dvb_usbv2_probe._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @dvb_usbv2_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 909, i32 3}
!24 = !{ptr @dvb_usbv2_probe._entry.7, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @dvb_usbv2_probe._entry_ptr.9, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @dvb_usbv2_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 926, i32 2}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @dvb_usbv2_probe.__key.11, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 927, i32 2}
!31 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @dvb_usbv2_probe._entry.13, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 932, i32 4}
!34 = !{ptr @dvb_usbv2_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 949, i32 4}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @dvb_usbv2_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @dvb_usbv2_probe._entry_ptr.18, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 978, i32 2}
!42 = !{ptr @dvb_usbv2_probe._entry.19, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @dvb_usbv2_probe._entry_ptr.21, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 985, i32 2}
!46 = !{ptr @dvb_usbv2_probe._entry.22, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @dvb_usbv2_probe._entry_ptr.24, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 1001, i32 2}
!50 = !{ptr @dvb_usbv2_probe.__UNIQUE_ID_ddebug428, !49, !"__UNIQUE_ID_ddebug428", i1 false, i1 false}
!51 = !{ptr @__ksymtab_dvb_usbv2_probe, !52, !"__ksymtab_dvb_usbv2_probe", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 1004, i32 1}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 1012, i32 2}
!55 = !{ptr @dvb_usbv2_disconnect.__UNIQUE_ID_ddebug429, !54, !"__UNIQUE_ID_ddebug429", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 1026, i32 2}
!58 = !{ptr @dvb_usbv2_disconnect._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @dvb_usbv2_disconnect._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @__ksymtab_dvb_usbv2_disconnect, !61, !"__ksymtab_dvb_usbv2_disconnect", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 1030, i32 1}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 1037, i32 2}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @dvb_usbv2_suspend.__UNIQUE_ID_ddebug430, !63, !"__UNIQUE_ID_ddebug430", i1 false, i1 false}
!66 = !{ptr @__ksymtab_dvb_usbv2_suspend, !67, !"__ksymtab_dvb_usbv2_suspend", i1 false, i1 false}
!67 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 1061, i32 1}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 1097, i32 2}
!70 = !{ptr @dvb_usbv2_resume.__UNIQUE_ID_ddebug432, !69, !"__UNIQUE_ID_ddebug432", i1 false, i1 false}
!71 = !{ptr @__ksymtab_dvb_usbv2_resume, !72, !"__ksymtab_dvb_usbv2_resume", i1 false, i1 false}
!72 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 1101, i32 1}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 1107, i32 2}
!75 = !{ptr @dvb_usbv2_reset_resume.__UNIQUE_ID_ddebug433, !74, !"__UNIQUE_ID_ddebug433", i1 false, i1 false}
!76 = !{ptr @__ksymtab_dvb_usbv2_reset_resume, !77, !"__ksymtab_dvb_usbv2_reset_resume", i1 false, i1 false}
!77 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 1120, i32 1}
!78 = !{ptr @__UNIQUE_ID_version434, !79, !"__UNIQUE_ID_version434", i1 false, i1 false}
!79 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 1122, i32 1}
!80 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @__modver_attr, !79, !"__modver_attr", i1 false, i1 false}
!83 = !{ptr @__UNIQUE_ID_author435, !84, !"__UNIQUE_ID_author435", i1 false, i1 false}
!84 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 1123, i32 1}
!85 = !{ptr @__UNIQUE_ID_author436, !86, !"__UNIQUE_ID_author436", i1 false, i1 false}
!86 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 1124, i32 1}
!87 = !{ptr @__UNIQUE_ID_description437, !88, !"__UNIQUE_ID_description437", i1 false, i1 false}
!88 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 1125, i32 1}
!89 = !{ptr @__UNIQUE_ID_file438, !90, !"__UNIQUE_ID_file438", i1 false, i1 false}
!90 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 1126, i32 1}
!91 = !{ptr @__UNIQUE_ID_license439, !90, !"__UNIQUE_ID_license439", i1 false, i1 false}
!92 = !{ptr @dvb_usbv2_disable_rc_polling, !93, !"dvb_usbv2_disable_rc_polling", i1 false, i1 false}
!93 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 12, i32 12}
!94 = !{ptr @dvb_usb_force_pid_filter_usage, !95, !"dvb_usb_force_pid_filter_usage", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 16, i32 12}
!96 = !{ptr @__param_str_disable_rc_polling, !1, !"__param_str_disable_rc_polling", i1 false, i1 false}
!97 = !{ptr @__param_str_force_pid_filter_usage, !6, !"__param_str_force_pid_filter_usage", i1 false, i1 false}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 27, i32 2}
!100 = !{ptr @dvb_usbv2_download_firmware.__UNIQUE_ID_ddebug390, !99, !"__UNIQUE_ID_ddebug390", i1 false, i1 false}
!101 = !{ptr @.str.35, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 36, i32 3}
!103 = !{ptr @dvb_usbv2_download_firmware._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @dvb_usbv2_download_firmware._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.37, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 42, i32 2}
!107 = !{ptr @dvb_usbv2_download_firmware._entry.36, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @dvb_usbv2_download_firmware._entry_ptr.38, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @dvb_usbv2_download_firmware.__UNIQUE_ID_ddebug391, !110, !"__UNIQUE_ID_ddebug391", i1 false, i1 false}
!110 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 52, i32 2}
!111 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 852, i32 2}
!113 = !{ptr @dvb_usbv2_init.__UNIQUE_ID_ddebug425, !112, !"__UNIQUE_ID_ddebug425", i1 false, i1 false}
!114 = !{ptr @dvb_usbv2_init.__UNIQUE_ID_ddebug426, !115, !"__UNIQUE_ID_ddebug426", i1 false, i1 false}
!115 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 885, i32 2}
!116 = !{ptr @.str.40, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 59, i32 2}
!118 = !{ptr @dvb_usbv2_i2c_init.__UNIQUE_ID_ddebug392, !117, !"__UNIQUE_ID_ddebug392", i1 false, i1 false}
!119 = !{ptr @dvb_usbv2_i2c_init.__UNIQUE_ID_ddebug393, !120, !"__UNIQUE_ID_ddebug393", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 77, i32 2}
!121 = !{ptr @.str.41, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 766, i32 4}
!123 = !{ptr @.str.42, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @dvb_usbv2_adapter_init._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @dvb_usbv2_adapter_init._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.44, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 774, i32 4}
!128 = !{ptr @dvb_usbv2_adapter_init._entry.43, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @dvb_usbv2_adapter_init._entry_ptr.45, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 781, i32 4}
!132 = !{ptr @dvb_usbv2_adapter_init._entry.46, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @dvb_usbv2_adapter_init._entry_ptr.48, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 790, i32 4}
!136 = !{ptr @dvb_usbv2_adapter_init._entry.49, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @dvb_usbv2_adapter_init._entry_ptr.51, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @dvb_usbv2_adapter_init.__UNIQUE_ID_ddebug422, !139, !"__UNIQUE_ID_ddebug422", i1 false, i1 false}
!139 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 816, i32 2}
!140 = !{ptr @.str.52, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 223, i32 2}
!142 = !{ptr @.str.53, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @dvb_usbv2_adapter_stream_init.__UNIQUE_ID_ddebug398, !141, !"__UNIQUE_ID_ddebug398", i1 false, i1 false}
!144 = !{ptr @.str.54, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 437, i32 2}
!146 = !{ptr @dvb_usbv2_adapter_dvb_init.__UNIQUE_ID_ddebug404, !145, !"__UNIQUE_ID_ddebug404", i1 false, i1 false}
!147 = !{ptr @.str.55, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 442, i32 3}
!149 = !{ptr @dvb_usbv2_adapter_dvb_init.__UNIQUE_ID_ddebug405, !148, !"__UNIQUE_ID_ddebug405", i1 false, i1 false}
!150 = !{ptr @.str.56, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 451, i32 3}
!152 = !{ptr @dvb_usbv2_adapter_dvb_init.__UNIQUE_ID_ddebug406, !151, !"__UNIQUE_ID_ddebug406", i1 false, i1 false}
!153 = !{ptr @.str.57, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 462, i32 3}
!155 = !{ptr @dvb_usbv2_adapter_dvb_init._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @dvb_usbv2_adapter_dvb_init._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.59, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 476, i32 3}
!159 = !{ptr @dvb_usbv2_adapter_dvb_init._entry.58, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @dvb_usbv2_adapter_dvb_init._entry_ptr.60, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.62, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 486, i32 3}
!163 = !{ptr @dvb_usbv2_adapter_dvb_init._entry.61, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @dvb_usbv2_adapter_dvb_init._entry_ptr.63, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.65, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 493, i32 3}
!167 = !{ptr @dvb_usbv2_adapter_dvb_init._entry.64, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @dvb_usbv2_adapter_dvb_init._entry_ptr.66, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.67, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 403, i32 2}
!171 = !{ptr @.str.68, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @dvb_usbv2_media_device_init._entry, !170, !"_entry", i1 false, i1 false}
!173 = !{ptr @dvb_usbv2_media_device_init._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.69, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 247, i32 2}
!176 = !{ptr @.str.70, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @dvb_usb_start_feed.__UNIQUE_ID_ddebug400, !175, !"__UNIQUE_ID_ddebug400", i1 false, i1 false}
!178 = !{ptr @.str.71, !175, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @.str.73, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 273, i32 4}
!182 = !{ptr @dvb_usb_start_feed._entry, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @dvb_usb_start_feed._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.75, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 300, i32 4}
!186 = !{ptr @dvb_usb_start_feed._entry.74, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @dvb_usb_start_feed._entry_ptr.76, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.78, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 309, i32 4}
!190 = !{ptr @dvb_usb_start_feed._entry.77, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @dvb_usb_start_feed._entry_ptr.79, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.81, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 320, i32 4}
!194 = !{ptr @dvb_usb_start_feed._entry.80, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @dvb_usb_start_feed._entry_ptr.82, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @dvb_usb_start_feed.__UNIQUE_ID_ddebug401, !197, !"__UNIQUE_ID_ddebug401", i1 false, i1 false}
!197 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 325, i32 3}
!198 = !{ptr @.str.83, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../include/linux/wait_bit.h", i32 73, i32 2}
!200 = !{ptr @.str.84, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 334, i32 2}
!202 = !{ptr @dvb_usb_stop_feed.__UNIQUE_ID_ddebug402, !201, !"__UNIQUE_ID_ddebug402", i1 false, i1 false}
!203 = !{ptr @dvb_usb_stop_feed._entry, !204, !"_entry", i1 false, i1 false}
!204 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 348, i32 4}
!205 = !{ptr @dvb_usb_stop_feed._entry_ptr, !204, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @dvb_usb_stop_feed._entry.85, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 360, i32 4}
!208 = !{ptr @dvb_usb_stop_feed._entry_ptr.86, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @dvb_usb_stop_feed._entry.87, !210, !"_entry", i1 false, i1 false}
!210 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 369, i32 4}
!211 = !{ptr @dvb_usb_stop_feed._entry_ptr.88, !210, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @dvb_usb_stop_feed.__UNIQUE_ID_ddebug403, !213, !"__UNIQUE_ID_ddebug403", i1 false, i1 false}
!213 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 384, i32 3}
!214 = !{ptr @.str.89, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 636, i32 2}
!216 = !{ptr @dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug414, !215, !"__UNIQUE_ID_ddebug414", i1 false, i1 false}
!217 = !{ptr @.str.90, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 644, i32 4}
!219 = !{ptr @dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug415, !218, !"__UNIQUE_ID_ddebug415", i1 false, i1 false}
!220 = !{ptr @.str.91, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 650, i32 3}
!222 = !{ptr @dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug416, !221, !"__UNIQUE_ID_ddebug416", i1 false, i1 false}
!223 = !{ptr @.str.92, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 666, i32 4}
!225 = !{ptr @dvb_usbv2_adapter_frontend_init._entry, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @dvb_usbv2_adapter_frontend_init._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.93, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 678, i32 4}
!229 = !{ptr @dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug417, !228, !"__UNIQUE_ID_ddebug417", i1 false, i1 false}
!230 = !{ptr @dvb_usbv2_adapter_frontend_init.__UNIQUE_ID_ddebug418, !231, !"__UNIQUE_ID_ddebug418", i1 false, i1 false}
!231 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 705, i32 2}
!232 = !{ptr @.str.94, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 558, i32 2}
!234 = !{ptr @.str.95, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @dvb_usb_fe_init.__UNIQUE_ID_ddebug410, !233, !"__UNIQUE_ID_ddebug410", i1 false, i1 false}
!236 = !{ptr @.str.96, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 588, i32 2}
!238 = !{ptr @dvb_usb_fe_init.__UNIQUE_ID_ddebug411, !237, !"__UNIQUE_ID_ddebug411", i1 false, i1 false}
!239 = !{ptr @.str.97, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 597, i32 2}
!241 = !{ptr @dvb_usb_fe_sleep.__UNIQUE_ID_ddebug412, !240, !"__UNIQUE_ID_ddebug412", i1 false, i1 false}
!242 = !{ptr @dvb_usb_fe_sleep.__UNIQUE_ID_ddebug413, !243, !"__UNIQUE_ID_ddebug413", i1 false, i1 false}
!243 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 628, i32 2}
!244 = !{ptr @.str.98, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 123, i32 2}
!246 = !{ptr @dvb_usbv2_remote_init.__UNIQUE_ID_ddebug395, !245, !"__UNIQUE_ID_ddebug395", i1 false, i1 false}
!247 = !{ptr @.str.99, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 146, i32 22}
!249 = !{ptr @dvb_usbv2_remote_init.__key, !250, !"__key", i1 false, i1 false}
!250 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 167, i32 3}
!251 = !{ptr @.str.100, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @dvb_usbv2_remote_init.__key.101, !250, !"__key", i1 false, i1 false}
!253 = !{ptr @.str.102, !250, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.103, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 169, i32 3}
!256 = !{ptr @dvb_usbv2_remote_init._entry, !255, !"_entry", i1 false, i1 false}
!257 = !{ptr @dvb_usbv2_remote_init._entry_ptr, !255, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @dvb_usbv2_remote_init.__UNIQUE_ID_ddebug396, !259, !"__UNIQUE_ID_ddebug396", i1 false, i1 false}
!259 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 179, i32 2}
!260 = !{ptr @.str.104, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../include/linux/usb.h", i32 912, i32 31}
!262 = !{ptr @.str.105, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 109, i32 3}
!264 = !{ptr @.str.106, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @dvb_usb_read_remote_control._entry, !263, !"_entry", i1 false, i1 false}
!266 = !{ptr @dvb_usb_read_remote_control._entry_ptr, !263, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.107, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 840, i32 2}
!269 = !{ptr @dvb_usbv2_exit.__UNIQUE_ID_ddebug424, !268, !"__UNIQUE_ID_ddebug424", i1 false, i1 false}
!270 = !{ptr @.str.108, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 185, i32 2}
!272 = !{ptr @dvb_usbv2_remote_exit.__UNIQUE_ID_ddebug397, !271, !"__UNIQUE_ID_ddebug397", i1 false, i1 false}
!273 = !{ptr @.str.109, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 823, i32 2}
!275 = !{ptr @dvb_usbv2_adapter_exit.__UNIQUE_ID_ddebug423, !274, !"__UNIQUE_ID_ddebug423", i1 false, i1 false}
!276 = !{ptr @.str.110, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 514, i32 2}
!278 = !{ptr @dvb_usbv2_adapter_dvb_exit.__UNIQUE_ID_ddebug407, !277, !"__UNIQUE_ID_ddebug407", i1 false, i1 false}
!279 = !{ptr @.str.111, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 235, i32 2}
!281 = !{ptr @dvb_usbv2_adapter_stream_exit.__UNIQUE_ID_ddebug399, !280, !"__UNIQUE_ID_ddebug399", i1 false, i1 false}
!282 = !{ptr @.str.112, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 714, i32 2}
!284 = !{ptr @dvb_usbv2_adapter_frontend_exit.__UNIQUE_ID_ddebug419, !283, !"__UNIQUE_ID_ddebug419", i1 false, i1 false}
!285 = !{ptr @.str.113, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 726, i32 4}
!287 = !{ptr @dvb_usbv2_adapter_frontend_exit.__UNIQUE_ID_ddebug420, !286, !"__UNIQUE_ID_ddebug420", i1 false, i1 false}
!288 = !{ptr @.str.114, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 734, i32 4}
!290 = !{ptr @dvb_usbv2_adapter_frontend_exit.__UNIQUE_ID_ddebug421, !289, !"__UNIQUE_ID_ddebug421", i1 false, i1 false}
!291 = !{ptr @.str.115, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 83, i32 2}
!293 = !{ptr @dvb_usbv2_i2c_exit.__UNIQUE_ID_ddebug394, !292, !"__UNIQUE_ID_ddebug394", i1 false, i1 false}
!294 = !{ptr @.str.116, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 1067, i32 2}
!296 = !{ptr @dvb_usbv2_resume_common.__UNIQUE_ID_ddebug431, !295, !"__UNIQUE_ID_ddebug431", i1 false, i1 false}
!297 = !{ptr @.str.117, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 539, i32 3}
!299 = !{ptr @.str.118, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug408, !298, !"__UNIQUE_ID_ddebug408", i1 false, i1 false}
!301 = !{ptr @dvb_usbv2_device_power_ctrl.__UNIQUE_ID_ddebug409, !302, !"__UNIQUE_ID_ddebug409", i1 false, i1 false}
!302 = !{!"../drivers/media/usb/dvb-usb-v2/dvb_usb_core.c", i32 549, i32 2}
!303 = !{i32 1, !"wchar_size", i32 2}
!304 = !{i32 1, !"min_enum_size", i32 4}
!305 = !{i32 8, !"branch-target-enforcement", i32 0}
!306 = !{i32 8, !"sign-return-address", i32 0}
!307 = !{i32 8, !"sign-return-address-all", i32 0}
!308 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!309 = !{i32 7, !"uwtable", i32 1}
!310 = !{i32 7, !"frame-pointer", i32 2}
!311 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!312 = !{i64 2148974253, i64 2148974258, i64 2148974271, i64 2148974315, i64 2148974349, i64 2148974370}
!313 = !{!"auto-init"}
!314 = !{i8 0, i8 2}
!315 = !{i64 2158193075}
!316 = !{i64 2158232330}
!317 = !{i64 2158238713}
