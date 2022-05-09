; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/umt-010.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/umt-010.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
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
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.132 = type { i32 }
%struct.dvb_usb_adapter_fe_properties = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.usb_data_stream_properties, i32 }
%struct.usb_data_stream_properties = type { i32, i32, i32, %union.anon.131 }
%union.anon.131 = type { %struct.anon.133 }
%struct.anon.133 = type { i32, i32, i32 }
%struct.dvb_usb_adapter_properties = type { i32, ptr, i32, [3 x %struct.dvb_usb_adapter_fe_properties] }
%struct.anon.134 = type { i32, %struct.dvb_rc_legacy, %struct.dvb_rc }
%struct.dvb_rc_legacy = type { ptr, i32, ptr, i32 }
%struct.dvb_rc = type { ptr, i64, i64, i32, ptr, ptr, ptr, i32, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mt352_config = type { i8, i32, i32, i32, ptr }
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
%struct.dvb_usb_device_description = type { ptr, [15 x ptr], [15 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dvb_usb_adapter = type { ptr, %struct.dvb_usb_adapter_properties, i32, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x %struct.dvb_usb_fe_adapter], i32, i32, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_usb_fe_adapter = type { ptr, ptr, ptr, %struct.usb_data_stream, i32, i32, ptr }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i32, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.124], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.124 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.125 }>
%union.anon.125 = type { i64 }

@__param_str_adapter_nr = internal constant [27 x i8] c"dvb_usb_umt_010.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype386 = internal constant [51 x i8] c"dvb_usb_umt_010.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr387 = internal constant [52 x i8] c"dvb_usb_umt_010.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_umt_010__388_143_umt_driver_init6 = internal global ptr @umt_driver_init, section ".initcall6.init", align 4
@umt_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @umt_probe, ptr @dvb_usb_device_exit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @umt_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_umt_driver_exit = internal global ptr @umt_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author389 = internal constant [71 x i8] c"dvb_usb_umt_010.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description390 = internal constant [75 x i8] c"dvb_usb_umt_010.description=Driver for HanfTek UMT 010 USB2.0 DVB-T device\00", section ".modinfo", align 1
@__UNIQUE_ID_version391 = internal constant [28 x i8] c"dvb_usb_umt_010.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dvb_usb_umt_010\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file392 = internal constant [63 x i8] c"dvb_usb_umt_010.file=drivers/media/usb/dvb-usb/dvb-usb-umt-010\00", section ".modinfo", align 1
@__UNIQUE_ID_license393 = internal constant [28 x i8] c"dvb_usb_umt_010.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@umt_table = internal global { [3 x %struct.usb_device_id], [56 x i8] } { [3 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 5620, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 5620, i16 21, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dvb-usb-umt-010-02.fw\00", [42 x i8] zeroinitializer }, align 32
@dibusb_i2c_algo = external dso_local global %struct.i2c_algorithm, align 4
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Hanftek UMT-010 DVB-T USB2.0\00", [35 x i8] zeroinitializer }, align 32
@umt_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }>, ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> } { i32 1, i32 3, ptr null, ptr @.str.3, i32 0, i32 0, ptr null, ptr null, i32 1, <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> }, %struct.dvb_usb_adapter_properties }> <{ { i32, ptr, i32, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> } { i32 24, ptr null, i32 1, <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 }, %struct.dvb_usb_adapter_fe_properties, %struct.dvb_usb_adapter_fe_properties }> <{ { i32, i32, ptr, ptr, ptr, ptr, ptr, { i32, i32, i32, { %struct.anon.132, [8 x i8] } }, i32 } { i32 0, i32 0, ptr @dibusb2_0_streaming_ctrl, ptr null, ptr null, ptr @umt_mt352_frontend_attach, ptr @umt_tuner_attach, { i32, i32, i32, { %struct.anon.132, [8 x i8] } } { i32 1, i32 10, i32 6, { %struct.anon.132, [8 x i8] } { %struct.anon.132 { i32 512 }, [8 x i8] undef } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer }> }, %struct.dvb_usb_adapter_properties zeroinitializer }>, ptr @dibusb_power_ctrl, ptr null, ptr null, %struct.anon.134 zeroinitializer, ptr @dibusb_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] }> <{ { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> } { ptr @.str.4, <{ ptr, [14 x ptr] }> <{ ptr @umt_table, [14 x ptr] zeroinitializer }>, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @umt_table, i64 24), [14 x ptr] zeroinitializer }> }, [11 x { ptr, <{ ptr, [14 x ptr] }>, <{ ptr, [14 x ptr] }> }] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt352_attach\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"symbol:mt352_attach\00", [44 x i8] zeroinitializer }, align 32
@umt_mt352_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013DVB: Unable to find symbol mt352_attach()\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"umt_mt352_frontend_attach\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/usb/dvb-usb/umt-010.c\00", [60 x i8] zeroinitializer }, align 32
@umt_mt352_frontend_attach._entry_ptr = internal global ptr @umt_mt352_frontend_attach._entry, section ".printk_index", align 4
@umt_mt352_demod_init.mt352_clock_config = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\89\B8-", [29 x i8] zeroinitializer }, align 32
@umt_mt352_demod_init.mt352_reset = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"P\80", [30 x i8] zeroinitializer }, align 32
@umt_mt352_demod_init.mt352_mclk_ratio = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8B\00", [30 x i8] zeroinitializer }, align 32
@umt_mt352_demod_init.mt352_adc_ctl_1_cfg = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\8E@", [30 x i8] zeroinitializer }, align 32
@umt_mt352_demod_init.mt352_agc_cfg = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"g\10\A0", [29 x i8] zeroinitializer }, align 32
@umt_mt352_demod_init.mt352_sec_agc_cfg1 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"j\FF", [30 x i8] zeroinitializer }, align 32
@umt_mt352_demod_init.mt352_sec_agc_cfg2 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"m\FF", [30 x i8] zeroinitializer }, align 32
@umt_mt352_demod_init.mt352_sec_agc_cfg3 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"p@", [30 x i8] zeroinitializer }, align 32
@umt_mt352_demod_init.mt352_sec_agc_cfg4 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"{\03", [30 x i8] zeroinitializer }, align 32
@umt_mt352_demod_init.mt352_sec_agc_cfg5 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"}\0F", [30 x i8] zeroinitializer }, align 32
@umt_mt352_demod_init.mt352_acq_ctl = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"SP", [30 x i8] zeroinitializer }, align 32
@umt_mt352_demod_init.mt352_input_freq_1 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"V1\06", [29 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dvb_pll_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:dvb_pll_attach\00", [42 x i8] zeroinitializer }, align 32
@umt_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.10, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol dvb_pll_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"umt_tuner_attach\00", [47 x i8] zeroinitializer }, align 32
@umt_tuner_attach._entry_ptr = internal global ptr @umt_tuner_attach._entry, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [11 x i8] c"umt_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 136, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 147, i32 1 }
@___asan_gen_.27 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 13, i32 1 }
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"umt_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 84, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 95, i32 14 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 129, i32 5 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"umt_properties\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 91, i32 41 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 60, i32 24 }
@___asan_gen_.60 = private unnamed_addr constant [19 x i8] c"mt352_clock_config\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 17, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"mt352_reset\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 18, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"mt352_mclk_ratio\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 19, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant [20 x i8] c"mt352_adc_ctl_1_cfg\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 20, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"mt352_agc_cfg\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 21, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [19 x i8] c"mt352_sec_agc_cfg1\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 23, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant [19 x i8] c"mt352_sec_agc_cfg2\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 24, i32 12 }
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"mt352_sec_agc_cfg3\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 25, i32 12 }
@___asan_gen_.84 = private unnamed_addr constant [19 x i8] c"mt352_sec_agc_cfg4\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 26, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [19 x i8] c"mt352_sec_agc_cfg5\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 27, i32 12 }
@___asan_gen_.90 = private unnamed_addr constant [14 x i8] c"mt352_acq_ctl\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 29, i32 12 }
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"mt352_input_freq_1\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 30, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [39 x i8] c"../drivers/media/usb/dvb-usb/umt-010.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 67, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_adapter_nr387, ptr @__UNIQUE_ID_adapter_nrtype386, ptr @__UNIQUE_ID_author389, ptr @__UNIQUE_ID_description390, ptr @__UNIQUE_ID_file392, ptr @__UNIQUE_ID_license393, ptr @__UNIQUE_ID_version391, ptr @__exitcall_umt_driver_exit, ptr @__initcall__kmod_dvb_usb_umt_010__388_143_umt_driver_init6, ptr @__modver_attr, ptr @__param_adapter_nr, ptr @umt_driver_exit, ptr @umt_mt352_frontend_attach._entry, ptr @umt_mt352_frontend_attach._entry_ptr, ptr @umt_tuner_attach._entry, ptr @umt_tuner_attach._entry_ptr, ptr @umt_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @adapter_nr, ptr @umt_table, ptr @.str.3, ptr @.str.4, ptr @umt_properties, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @umt_mt352_demod_init.mt352_clock_config, ptr @umt_mt352_demod_init.mt352_reset, ptr @umt_mt352_demod_init.mt352_mclk_ratio, ptr @umt_mt352_demod_init.mt352_adc_ctl_1_cfg, ptr @umt_mt352_demod_init.mt352_agc_cfg, ptr @umt_mt352_demod_init.mt352_sec_agc_cfg1, ptr @umt_mt352_demod_init.mt352_sec_agc_cfg2, ptr @umt_mt352_demod_init.mt352_sec_agc_cfg3, ptr @umt_mt352_demod_init.mt352_sec_agc_cfg4, ptr @umt_mt352_demod_init.mt352_sec_agc_cfg5, ptr @umt_mt352_demod_init.mt352_acq_ctl, ptr @umt_mt352_demod_init.mt352_input_freq_1, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umt_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umt_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umt_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umt_mt352_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umt_mt352_demod_init.mt352_clock_config to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umt_mt352_demod_init.mt352_reset to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umt_mt352_demod_init.mt352_mclk_ratio to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umt_mt352_demod_init.mt352_adc_ctl_1_cfg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umt_mt352_demod_init.mt352_agc_cfg to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umt_mt352_demod_init.mt352_sec_agc_cfg1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umt_mt352_demod_init.mt352_sec_agc_cfg2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umt_mt352_demod_init.mt352_sec_agc_cfg3 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umt_mt352_demod_init.mt352_sec_agc_cfg4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umt_mt352_demod_init.mt352_sec_agc_cfg5 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umt_mt352_demod_init.mt352_acq_ctl to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umt_mt352_demod_init.mt352_input_freq_1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @umt_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @umt_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @umt_driver, ptr noundef null, ptr noundef nonnull @.str.1) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @umt_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @usb_deregister(ptr noundef nonnull @umt_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @umt_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @umt_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  %. = select i1 %cmp, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibusb2_0_streaming_ctrl(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @umt_mt352_frontend_attach(ptr nocapture noundef %adap) #2 align 64 {
entry:
  %umt_config = alloca %struct.mt352_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %umt_config) #5
  %0 = call ptr @memset(ptr %umt_config, i32 0, i32 16)
  %demod_init = getelementptr inbounds %struct.mt352_config, ptr %umt_config, i32 0, i32 4
  %1 = ptrtoint ptr %demod_init to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @umt_mt352_demod_init, ptr %demod_init, align 4
  %2 = ptrtoint ptr %umt_config to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %umt_config, align 4
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.6) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.7) #5
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.6) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond14 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %3 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adap, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %4, i32 0, i32 8
  %call4 = call ptr %cond14(ptr noundef nonnull %umt_config, ptr noundef %i2c_adap) #5
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @__symbol_put(ptr noundef nonnull @.str.6) #5
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  %__r.0 = phi ptr [ null, %if.then5 ], [ %call4, %if.then.if.end7_crit_edge ], [ null, %do.end ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %5 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %__r.0, ptr %fe_adap, align 8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %umt_config) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @umt_tuner_attach(ptr nocapture noundef readonly %adap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.11) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.12) #5
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.11) #5
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond13 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %adap, i32 0, i32 9
  %0 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe_adap, align 8
  %call4 = tail call ptr %cond13(ptr noundef %1, i32 noundef 97, ptr noundef null, i32 noundef 7) #5
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__symbol_put(ptr noundef nonnull @.str.11) #5
  br label %if.end7

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then5, %if.then.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dibusb_power_ctrl(ptr noundef, i32 noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @umt_mt352_demod_init(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %write.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 9
  %0 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %write.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.mt352_write.exit_crit_edge, label %if.then.i

entry.mt352_write.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 %1(ptr noundef %fe, ptr noundef nonnull @umt_mt352_demod_init.mt352_clock_config, i32 noundef 3) #5
  br label %mt352_write.exit

mt352_write.exit:                                 ; preds = %if.then.i, %entry.mt352_write.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 429496000) #5
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %tobool.not.i24 = icmp eq ptr %4, null
  br i1 %tobool.not.i24, label %mt352_write.exit.mt352_write.exit77_crit_edge, label %mt352_write.exit27

mt352_write.exit.mt352_write.exit77_crit_edge:    ; preds = %mt352_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit77

mt352_write.exit27:                               ; preds = %mt352_write.exit
  %call.i25 = tail call i32 %4(ptr noundef %fe, ptr noundef nonnull @umt_mt352_demod_init.mt352_reset, i32 noundef 2) #5
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i29 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i29, label %mt352_write.exit27.mt352_write.exit77_crit_edge, label %mt352_write.exit32

mt352_write.exit27.mt352_write.exit77_crit_edge:  ; preds = %mt352_write.exit27
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit77

mt352_write.exit32:                               ; preds = %mt352_write.exit27
  %call.i30 = tail call i32 %.pr(ptr noundef %fe, ptr noundef nonnull @umt_mt352_demod_init.mt352_mclk_ratio, i32 noundef 2) #5
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr79 = load ptr, ptr %write.i, align 4
  %tobool.not.i34 = icmp eq ptr %.pr79, null
  br i1 %tobool.not.i34, label %mt352_write.exit32.mt352_write.exit77_crit_edge, label %mt352_write.exit37

mt352_write.exit32.mt352_write.exit77_crit_edge:  ; preds = %mt352_write.exit32
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit77

mt352_write.exit37:                               ; preds = %mt352_write.exit32
  %call.i35 = tail call i32 %.pr79(ptr noundef %fe, ptr noundef nonnull @umt_mt352_demod_init.mt352_adc_ctl_1_cfg, i32 noundef 2) #5
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr81.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i39 = icmp eq ptr %.pr81.pr, null
  br i1 %tobool.not.i39, label %mt352_write.exit37.mt352_write.exit77_crit_edge, label %mt352_write.exit42

mt352_write.exit37.mt352_write.exit77_crit_edge:  ; preds = %mt352_write.exit37
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit77

mt352_write.exit42:                               ; preds = %mt352_write.exit37
  %call.i40 = tail call i32 %.pr81.pr(ptr noundef %fe, ptr noundef nonnull @umt_mt352_demod_init.mt352_agc_cfg, i32 noundef 3) #5
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr83 = load ptr, ptr %write.i, align 4
  %tobool.not.i44 = icmp eq ptr %.pr83, null
  br i1 %tobool.not.i44, label %mt352_write.exit42.mt352_write.exit77_crit_edge, label %mt352_write.exit47

mt352_write.exit42.mt352_write.exit77_crit_edge:  ; preds = %mt352_write.exit42
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit77

mt352_write.exit47:                               ; preds = %mt352_write.exit42
  %call.i45 = tail call i32 %.pr83(ptr noundef %fe, ptr noundef nonnull @umt_mt352_demod_init.mt352_sec_agc_cfg1, i32 noundef 2) #5
  %9 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr85.pr.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i49 = icmp eq ptr %.pr85.pr.pr, null
  br i1 %tobool.not.i49, label %mt352_write.exit47.mt352_write.exit77_crit_edge, label %mt352_write.exit52

mt352_write.exit47.mt352_write.exit77_crit_edge:  ; preds = %mt352_write.exit47
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit77

mt352_write.exit52:                               ; preds = %mt352_write.exit47
  %call.i50 = tail call i32 %.pr85.pr.pr(ptr noundef %fe, ptr noundef nonnull @umt_mt352_demod_init.mt352_sec_agc_cfg2, i32 noundef 2) #5
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr87 = load ptr, ptr %write.i, align 4
  %tobool.not.i54 = icmp eq ptr %.pr87, null
  br i1 %tobool.not.i54, label %mt352_write.exit52.mt352_write.exit77_crit_edge, label %mt352_write.exit57

mt352_write.exit52.mt352_write.exit77_crit_edge:  ; preds = %mt352_write.exit52
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit77

mt352_write.exit57:                               ; preds = %mt352_write.exit52
  %call.i55 = tail call i32 %.pr87(ptr noundef %fe, ptr noundef nonnull @umt_mt352_demod_init.mt352_sec_agc_cfg3, i32 noundef 2) #5
  %11 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr89.pr.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i59 = icmp eq ptr %.pr89.pr.pr, null
  br i1 %tobool.not.i59, label %mt352_write.exit57.mt352_write.exit77_crit_edge, label %mt352_write.exit62

mt352_write.exit57.mt352_write.exit77_crit_edge:  ; preds = %mt352_write.exit57
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit77

mt352_write.exit62:                               ; preds = %mt352_write.exit57
  %call.i60 = tail call i32 %.pr89.pr.pr(ptr noundef %fe, ptr noundef nonnull @umt_mt352_demod_init.mt352_sec_agc_cfg4, i32 noundef 2) #5
  %12 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr91 = load ptr, ptr %write.i, align 4
  %tobool.not.i64 = icmp eq ptr %.pr91, null
  br i1 %tobool.not.i64, label %mt352_write.exit62.mt352_write.exit77_crit_edge, label %mt352_write.exit67

mt352_write.exit62.mt352_write.exit77_crit_edge:  ; preds = %mt352_write.exit62
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit77

mt352_write.exit67:                               ; preds = %mt352_write.exit62
  %call.i65 = tail call i32 %.pr91(ptr noundef %fe, ptr noundef nonnull @umt_mt352_demod_init.mt352_sec_agc_cfg5, i32 noundef 2) #5
  %13 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr93.pr.pr.pr = load ptr, ptr %write.i, align 4
  %tobool.not.i69 = icmp eq ptr %.pr93.pr.pr.pr, null
  br i1 %tobool.not.i69, label %mt352_write.exit67.mt352_write.exit77_crit_edge, label %mt352_write.exit72

mt352_write.exit67.mt352_write.exit77_crit_edge:  ; preds = %mt352_write.exit67
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit77

mt352_write.exit72:                               ; preds = %mt352_write.exit67
  %call.i70 = tail call i32 %.pr93.pr.pr.pr(ptr noundef %fe, ptr noundef nonnull @umt_mt352_demod_init.mt352_acq_ctl, i32 noundef 2) #5
  %14 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr95 = load ptr, ptr %write.i, align 4
  %tobool.not.i74 = icmp eq ptr %.pr95, null
  br i1 %tobool.not.i74, label %mt352_write.exit72.mt352_write.exit77_crit_edge, label %if.then.i76

mt352_write.exit72.mt352_write.exit77_crit_edge:  ; preds = %mt352_write.exit72
  call void @__sanitizer_cov_trace_pc() #7
  br label %mt352_write.exit77

if.then.i76:                                      ; preds = %mt352_write.exit72
  call void @__sanitizer_cov_trace_pc() #7
  %call.i75 = tail call i32 %.pr95(ptr noundef %fe, ptr noundef nonnull @umt_mt352_demod_init.mt352_input_freq_1, i32 noundef 3) #5
  br label %mt352_write.exit77

mt352_write.exit77:                               ; preds = %if.then.i76, %mt352_write.exit72.mt352_write.exit77_crit_edge, %mt352_write.exit67.mt352_write.exit77_crit_edge, %mt352_write.exit62.mt352_write.exit77_crit_edge, %mt352_write.exit57.mt352_write.exit77_crit_edge, %mt352_write.exit52.mt352_write.exit77_crit_edge, %mt352_write.exit47.mt352_write.exit77_crit_edge, %mt352_write.exit42.mt352_write.exit77_crit_edge, %mt352_write.exit37.mt352_write.exit77_crit_edge, %mt352_write.exit32.mt352_write.exit77_crit_edge, %mt352_write.exit27.mt352_write.exit77_crit_edge, %mt352_write.exit.mt352_write.exit77_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !69, !70}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__param_adapter_nr, !1, !"__param_adapter_nr", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 13, i32 1}
!2 = !{ptr @__UNIQUE_ID_adapter_nrtype386, !1, !"__UNIQUE_ID_adapter_nrtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_adapter_nr387, !1, !"__UNIQUE_ID_adapter_nr387", i1 false, i1 false}
!4 = !{ptr @__initcall__kmod_dvb_usb_umt_010__388_143_umt_driver_init6, !5, !"__initcall__kmod_dvb_usb_umt_010__388_143_umt_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 143, i32 1}
!6 = !{ptr @__exitcall_umt_driver_exit, !5, !"__exitcall_umt_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author389, !8, !"__UNIQUE_ID_author389", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 145, i32 1}
!9 = !{ptr @__UNIQUE_ID_description390, !10, !"__UNIQUE_ID_description390", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 146, i32 1}
!11 = !{ptr @__UNIQUE_ID_version391, !12, !"__UNIQUE_ID_version391", i1 false, i1 false}
!12 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 147, i32 1}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__modver_attr, !12, !"__modver_attr", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_file392, !18, !"__UNIQUE_ID_file392", i1 false, i1 false}
!18 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 148, i32 1}
!19 = !{ptr @__UNIQUE_ID_license393, !18, !"__UNIQUE_ID_license393", i1 false, i1 false}
!20 = !{ptr @__param_str_adapter_nr, !1, !"__param_str_adapter_nr", i1 false, i1 false}
!21 = !{ptr @__param_arr_adapter_nr, !1, !"__param_arr_adapter_nr", i1 false, i1 false}
!22 = !{ptr @adapter_nr, !1, !"adapter_nr", i1 false, i1 false}
!23 = !{ptr @umt_driver, !24, !"umt_driver", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 136, i32 26}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 95, i32 14}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 129, i32 5}
!29 = !{ptr @umt_properties, !30, !"umt_properties", i1 false, i1 false}
!30 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 91, i32 41}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 60, i32 24}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @umt_mt352_frontend_attach._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @umt_mt352_frontend_attach._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @umt_mt352_demod_init.mt352_clock_config, !40, !"mt352_clock_config", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 17, i32 12}
!41 = !{ptr @umt_mt352_demod_init.mt352_reset, !42, !"mt352_reset", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 18, i32 12}
!43 = !{ptr @umt_mt352_demod_init.mt352_mclk_ratio, !44, !"mt352_mclk_ratio", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 19, i32 12}
!45 = !{ptr @umt_mt352_demod_init.mt352_adc_ctl_1_cfg, !46, !"mt352_adc_ctl_1_cfg", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 20, i32 12}
!47 = !{ptr @umt_mt352_demod_init.mt352_agc_cfg, !48, !"mt352_agc_cfg", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 21, i32 12}
!49 = !{ptr @umt_mt352_demod_init.mt352_sec_agc_cfg1, !50, !"mt352_sec_agc_cfg1", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 23, i32 12}
!51 = !{ptr @umt_mt352_demod_init.mt352_sec_agc_cfg2, !52, !"mt352_sec_agc_cfg2", i1 false, i1 false}
!52 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 24, i32 12}
!53 = !{ptr @umt_mt352_demod_init.mt352_sec_agc_cfg3, !54, !"mt352_sec_agc_cfg3", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 25, i32 12}
!55 = !{ptr @umt_mt352_demod_init.mt352_sec_agc_cfg4, !56, !"mt352_sec_agc_cfg4", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 26, i32 12}
!57 = !{ptr @umt_mt352_demod_init.mt352_sec_agc_cfg5, !58, !"mt352_sec_agc_cfg5", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 27, i32 12}
!59 = !{ptr @umt_mt352_demod_init.mt352_acq_ctl, !60, !"mt352_acq_ctl", i1 false, i1 false}
!60 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 29, i32 12}
!61 = !{ptr @umt_mt352_demod_init.mt352_input_freq_1, !62, !"mt352_input_freq_1", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 30, i32 12}
!63 = !{ptr @.str.11, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 67, i32 2}
!65 = !{ptr @.str.12, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @umt_tuner_attach._entry, !64, !"_entry", i1 false, i1 false}
!69 = !{ptr @umt_tuner_attach._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @umt_table, !71, !"umt_table", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/dvb-usb/umt-010.c", i32 84, i32 29}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
