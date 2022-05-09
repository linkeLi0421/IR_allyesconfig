; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/pctv452e.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/pctv452e.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_usb_adapter_properties = type { i32, ptr, i32, [3 x %struct.dvb_usb_adapter_fe_properties] }
%struct.dvb_usb_adapter_fe_properties = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.usb_data_stream_properties, i32 }
%struct.usb_data_stream_properties = type { i32, i32, i32, %union.anon.131 }
%union.anon.131 = type { %struct.anon.133 }
%struct.anon.133 = type { i32, i32, i32 }
%struct.anon.134 = type { i32, %struct.dvb_rc_legacy, %struct.dvb_rc }
%struct.dvb_rc_legacy = type { ptr, i32, ptr, i32 }
%struct.dvb_rc = type { ptr, i64, i64, i32, ptr, ptr, ptr, i32, i8, i32 }
%struct.dvb_usb_device_description = type { ptr, [15 x ptr], [15 x ptr] }
%struct.stb0899_config = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.isl6423_config = type { i32, i32, i8, i8 }
%struct.stb0899_s1_reg = type { i16, i8 }
%struct.stb0899_s2_reg = type { i16, i32, i32 }
%struct.stb0899_postproc = type { i16, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.stb6100_config = type { i8, i32 }
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
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.dvb_ca_en50221 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pctv452e_state = type { %struct.dvb_ca_en50221, %struct.mutex, i8, i8, i16 }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__param_str_debug = internal constant [23 x i8] c"dvb_usb_pctv452e.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [36 x i8] c"dvb_usb_pctv452e.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [65 x i8] c"dvb_usb_pctv452e.parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@__param_str_adapter_nr = internal constant [28 x i8] c"dvb_usb_pctv452e.adapter_nr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adapter_nr = internal constant %struct.kparam_array { i32 16, i32 2, ptr null, ptr @param_ops_short, ptr @adapter_nr }, align 4
@__param_adapter_nr = internal constant %struct.kernel_param { ptr @__param_str_adapter_nr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @__param_arr_adapter_nr } }, section "__param", align 4
@__UNIQUE_ID_adapter_nrtype388 = internal constant [52 x i8] c"dvb_usb_pctv452e.parmtype=adapter_nr:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_adapter_nr389 = internal constant [53 x i8] c"dvb_usb_pctv452e.parm=adapter_nr:DVB adapter numbers\00", section ".modinfo", align 1
@__initcall__kmod_dvb_usb_pctv452e__390_1100_pctv452e_usb_driver_init6 = internal global ptr @pctv452e_usb_driver_init, section ".initcall6.init", align 4
@pctv452e_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str.1, ptr @pctv452e_usb_probe, ptr @pctv452e_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pctv452e_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_pctv452e_usb_driver_exit = internal global ptr @pctv452e_usb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author391 = internal constant [57 x i8] c"dvb_usb_pctv452e.author=Dominik Kuhlen <dkuhlen@gmx.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_author392 = internal constant [65 x i8] c"dvb_usb_pctv452e.author=Andre Weidemann <Andre.Weidemann@web.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author393 = internal constant [61 x i8] c"dvb_usb_pctv452e.author=Michael H. Schimek <mschimek@gmx.at>\00", section ".modinfo", align 1
@__UNIQUE_ID_description394 = internal constant [84 x i8] c"dvb_usb_pctv452e.description=Pinnacle PCTV HDTV USB DVB / TT connect S2-3600 Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file395 = internal constant [65 x i8] c"dvb_usb_pctv452e.file=drivers/media/usb/dvb-usb/dvb-usb-pctv452e\00", section ".modinfo", align 1
@__UNIQUE_ID_license396 = internal constant [29 x i8] c"dvb_usb_pctv452e.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@adapter_nr = internal global { [16 x i16], [32 x i8] } { [16 x i16] [i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1], [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dvb_usb_pctv452e\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pctv452e\00", [23 x i8] zeroinitializer }, align 32
@pctv452e_usb_table = internal global { [4 x %struct.usb_device_id], [32 x i8] } { [4 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 8964, i16 543, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2888, i16 12295, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 2888, i16 12298, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rc-dib0700-rc5\00", [17 x i8] zeroinitializer }, align 32
@pctv452e_i2c_algo = internal global { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @pctv452e_i2c_xfer, ptr null, ptr null, ptr null, ptr @pctv452e_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCTV HDTV USB\00", [18 x i8] zeroinitializer }, align 32
@pctv452e_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> } { i32 1, i32 0, ptr null, ptr null, i32 0, i32 148, ptr null, ptr null, i32 1, [2 x %struct.dvb_usb_adapter_properties] [%struct.dvb_usb_adapter_properties { i32 0, ptr null, i32 1, [3 x %struct.dvb_usb_adapter_fe_properties] [%struct.dvb_usb_adapter_fe_properties { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @pctv452e_frontend_attach, ptr @pctv452e_tuner_attach, %struct.usb_data_stream_properties { i32 2, i32 4, i32 2, %union.anon.131 { %struct.anon.133 { i32 4, i32 940, i32 1 } } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer] }, %struct.dvb_usb_adapter_properties zeroinitializer], ptr @pctv452e_power_ctrl, ptr null, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.2, i64 0, i64 4, i32 0, ptr null, ptr null, ptr @pctv452e_rc_query, i32 100, i8 0, i32 0 } }, ptr @pctv452e_i2c_algo, i32 1, i32 0, i32 1, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [11 x %struct.dvb_usb_device_description] }> <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> } { ptr @.str.3, [15 x ptr] zeroinitializer, <{ ptr, [14 x ptr] }> <{ ptr @pctv452e_usb_table, [14 x ptr] zeroinitializer }> }, [11 x %struct.dvb_usb_device_description] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb0899_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stb0899_attach\00", [42 x i8] zeroinitializer }, align 32
@stb0899_config = internal global { %struct.stb0899_config, [36 x i8] } { %struct.stb0899_config { ptr @pctv452e_init_dev, ptr @stb0899_s2_init_2, ptr @pctv452e_init_s1_demod, ptr @stb0899_s2_init_4, ptr @stb0899_s1_init_5, ptr @pctv45e_postproc, i32 -1, i32 27000000, i8 104, i8 0, i8 4, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 76500000, i32 99000000, i32 3, i32 32, i32 10, i32 20, i32 6, i32 1125, i32 758, i32 1350, i32 1664100, i32 28, i32 15, i32 30, i32 70, ptr @stb6100_set_frequency, ptr @stb6100_get_frequency, ptr @stb6100_set_bandwidth, ptr @stb6100_get_bandwidth, ptr null }, [36 x i8] zeroinitializer }, align 32
@pctv452e_frontend_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 917, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stb0899_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pctv452e_frontend_attach\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/usb/dvb-usb/pctv452e.c\00", [59 x i8] zeroinitializer }, align 32
@pctv452e_frontend_attach._entry_ptr = internal global ptr @pctv452e_frontend_attach._entry, section ".printk_index", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lnbp22_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:lnbp22_attach\00", [43 x i8] zeroinitializer }, align 32
@pctv452e_frontend_attach._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 926, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol lnbp22_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@pctv452e_frontend_attach._entry_ptr.14 = internal global ptr @pctv452e_frontend_attach._entry.12, section ".printk_index", align 4
@pctv452e_frontend_attach._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.9, i32 927, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013pctv452e: Cannot attach lnbp22\0A\0A\00", [61 x i8] zeroinitializer }, align 32
@pctv452e_frontend_attach._entry_ptr.17 = internal global ptr @pctv452e_frontend_attach._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"isl6423_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:isl6423_attach\00", [42 x i8] zeroinitializer }, align 32
@pctv452e_isl6423_config = internal global { %struct.isl6423_config, [20 x i8] } { %struct.isl6423_config { i32 1, i32 1, i8 8, i8 1 }, [20 x i8] zeroinitializer }, align 32
@pctv452e_frontend_attach._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.8, ptr @.str.9, i32 934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol isl6423_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@pctv452e_frontend_attach._entry_ptr.22 = internal global ptr @pctv452e_frontend_attach._entry.20, section ".printk_index", align 4
@pctv452e_frontend_attach._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.8, ptr @.str.9, i32 935, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013pctv452e: Cannot attach isl6423\0A\0A\00", [60 x i8] zeroinitializer }, align 32
@pctv452e_frontend_attach._entry_ptr.25 = internal global ptr @pctv452e_frontend_attach._entry.23, section ".printk_index", align 4
@pctv452e_init_dev = internal constant { [65 x %struct.stb0899_s1_reg], [92 x i8] } { [65 x %struct.stb0899_s1_reg] [%struct.stb0899_s1_reg { i16 -3936, i8 38 }, %struct.stb0899_s1_reg { i16 -3935, i8 -128 }, %struct.stb0899_s1_reg { i16 -3932, i8 4 }, %struct.stb0899_s1_reg { i16 -3931, i8 32 }, %struct.stb0899_s1_reg { i16 -3930, i8 0 }, %struct.stb0899_s1_reg { i16 -3929, i8 0 }, %struct.stb0899_s1_reg { i16 -3927, i8 -103 }, %struct.stb0899_s1_reg { i16 -3926, i8 -123 }, %struct.stb0899_s1_reg { i16 -3824, i8 17 }, %struct.stb0899_s1_reg { i16 -3823, i8 10 }, %struct.stb0899_s1_reg { i16 -3822, i8 5 }, %struct.stb0899_s1_reg { i16 -3821, i8 0 }, %struct.stb0899_s1_reg { i16 -3820, i8 0 }, %struct.stb0899_s1_reg { i16 -3812, i8 0 }, %struct.stb0899_s1_reg { i16 -3811, i8 0 }, %struct.stb0899_s1_reg { i16 -3804, i8 -13 }, %struct.stb0899_s1_reg { i16 -3803, i8 -4 }, %struct.stb0899_s1_reg { i16 -3802, i8 -1 }, %struct.stb0899_s1_reg { i16 -3801, i8 -1 }, %struct.stb0899_s1_reg { i16 -3799, i8 -120 }, %struct.stb0899_s1_reg { i16 -3798, i8 88 }, %struct.stb0899_s1_reg { i16 -3776, i8 -126 }, %struct.stb0899_s1_reg { i16 -3775, i8 -126 }, %struct.stb0899_s1_reg { i16 -3774, i8 -126 }, %struct.stb0899_s1_reg { i16 -3773, i8 -126 }, %struct.stb0899_s1_reg { i16 -3772, i8 -126 }, %struct.stb0899_s1_reg { i16 -3771, i8 -126 }, %struct.stb0899_s1_reg { i16 -3770, i8 -126 }, %struct.stb0899_s1_reg { i16 -3769, i8 -126 }, %struct.stb0899_s1_reg { i16 -3768, i8 -126 }, %struct.stb0899_s1_reg { i16 -3767, i8 -126 }, %struct.stb0899_s1_reg { i16 -3766, i8 -126 }, %struct.stb0899_s1_reg { i16 -3765, i8 -126 }, %struct.stb0899_s1_reg { i16 -3764, i8 -126 }, %struct.stb0899_s1_reg { i16 -3763, i8 -126 }, %struct.stb0899_s1_reg { i16 -3762, i8 -126 }, %struct.stb0899_s1_reg { i16 -3761, i8 -126 }, %struct.stb0899_s1_reg { i16 -3760, i8 -126 }, %struct.stb0899_s1_reg { i16 -3759, i8 -126 }, %struct.stb0899_s1_reg { i16 -3758, i8 -126 }, %struct.stb0899_s1_reg { i16 -3757, i8 -126 }, %struct.stb0899_s1_reg { i16 -3756, i8 -126 }, %struct.stb0899_s1_reg { i16 -3755, i8 -72 }, %struct.stb0899_s1_reg { i16 -3754, i8 -70 }, %struct.stb0899_s1_reg { i16 -3753, i8 28 }, %struct.stb0899_s1_reg { i16 -3752, i8 -126 }, %struct.stb0899_s1_reg { i16 -3751, i8 -111 }, %struct.stb0899_s1_reg { i16 -3750, i8 -126 }, %struct.stb0899_s1_reg { i16 -3749, i8 126 }, %struct.stb0899_s1_reg { i16 -3748, i8 -126 }, %struct.stb0899_s1_reg { i16 -3747, i8 -126 }, %struct.stb0899_s1_reg { i16 -3746, i8 -126 }, %struct.stb0899_s1_reg { i16 -3745, i8 32 }, %struct.stb0899_s1_reg { i16 -3661, i8 21 }, %struct.stb0899_s1_reg { i16 -3658, i8 0 }, %struct.stb0899_s1_reg { i16 -3657, i8 0 }, %struct.stb0899_s1_reg { i16 -3656, i8 0 }, %struct.stb0899_s1_reg { i16 -3646, i8 32 }, %struct.stb0899_s1_reg { i16 -3645, i8 0 }, %struct.stb0899_s1_reg { i16 -3583, i8 10 }, %struct.stb0899_s1_reg { i16 -3018, i8 0 }, %struct.stb0899_s1_reg { i16 -3017, i8 0 }, %struct.stb0899_s1_reg { i16 -3026, i8 0 }, %struct.stb0899_s1_reg { i16 -239, i8 64 }, %struct.stb0899_s1_reg { i16 -1, i8 -1 }], [92 x i8] zeroinitializer }, align 32
@stb0899_s2_init_2 = internal constant { [177 x %struct.stb0899_s2_reg], [532 x i8] } { [177 x %struct.stb0899_s2_reg] [%struct.stb0899_s2_reg { i16 -3328, i32 0, i32 259 }, %struct.stb0899_s2_reg { i16 -3324, i32 0, i32 1053940310 }, %struct.stb0899_s2_reg { i16 -3320, i32 0, i32 16384 }, %struct.stb0899_s2_reg { i16 -3316, i32 0, i32 10974 }, %struct.stb0899_s2_reg { i16 -3312, i32 0, i32 444 }, %struct.stb0899_s2_reg { i16 -3308, i32 0, i32 512 }, %struct.stb0899_s2_reg { i16 -3300, i32 0, i32 15 }, %struct.stb0899_s2_reg { i16 -3296, i32 0, i32 66800160 }, %struct.stb0899_s2_reg { i16 -3292, i32 0, i32 2100375 }, %struct.stb0899_s2_reg { i16 -3288, i32 0, i32 22 }, %struct.stb0899_s2_reg { i16 -3284, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3272, i32 0, i32 1053857718 }, %struct.stb0899_s2_reg { i16 -3268, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 0, i32 258792449 }, %struct.stb0899_s2_reg { i16 -3256, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3252, i32 0, i32 14739 }, %struct.stb0899_s2_reg { i16 -3248, i32 0, i32 867439 }, %struct.stb0899_s2_reg { i16 -3244, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3240, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3236, i32 0, i32 37282702 }, %struct.stb0899_s2_reg { i16 -3232, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3228, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3224, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3220, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3204, i32 0, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 32, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 32, i32 1074200576 }, %struct.stb0899_s2_reg { i16 -3240, i32 32, i32 1 }, %struct.stb0899_s2_reg { i16 -3236, i32 32, i32 2 }, %struct.stb0899_s2_reg { i16 -3232, i32 32, i32 0 }, %struct.stb0899_s2_reg { i16 -3228, i32 32, i32 65025 }, %struct.stb0899_s2_reg { i16 -3224, i32 32, i32 0 }, %struct.stb0899_s2_reg { i16 -3220, i32 32, i32 1 }, %struct.stb0899_s2_reg { i16 -3212, i32 32, i32 20487 }, %struct.stb0899_s2_reg { i16 -3208, i32 32, i32 2 }, %struct.stb0899_s2_reg { i16 -3328, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3324, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3320, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3316, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3304, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3300, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3296, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3292, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3288, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3284, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3272, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3268, i32 64, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 64, i32 65280 }, %struct.stb0899_s2_reg { i16 -3260, i32 64, i32 256 }, %struct.stb0899_s2_reg { i16 -3256, i32 64, i32 65025 }, %struct.stb0899_s2_reg { i16 -3252, i32 64, i32 1278 }, %struct.stb0899_s2_reg { i16 -3248, i32 64, i32 53223 }, %struct.stb0899_s2_reg { i16 -3244, i32 64, i32 48838 }, %struct.stb0899_s2_reg { i16 -3240, i32 64, i32 49855 }, %struct.stb0899_s2_reg { i16 -3236, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3232, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3228, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3224, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3220, i32 64, i32 49600 }, %struct.stb0899_s2_reg { i16 -3216, i32 64, i32 49344 }, %struct.stb0899_s2_reg { i16 -3212, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3208, i32 64, i32 49601 }, %struct.stb0899_s2_reg { i16 -3204, i32 64, i32 49345 }, %struct.stb0899_s2_reg { i16 -3328, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3324, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3320, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3316, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3312, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3308, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3304, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3300, i32 96, i32 49344 }, %struct.stb0899_s2_reg { i16 -3296, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3292, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3288, i32 96, i32 49344 }, %struct.stb0899_s2_reg { i16 -3284, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3280, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3276, i32 96, i32 49598 }, %struct.stb0899_s2_reg { i16 -3272, i32 96, i32 49609 }, %struct.stb0899_s2_reg { i16 -3268, i32 96, i32 49370 }, %struct.stb0899_s2_reg { i16 -3264, i32 96, i32 49338 }, %struct.stb0899_s2_reg { i16 -3260, i32 96, i32 49604 }, %struct.stb0899_s2_reg { i16 -3256, i32 96, i32 49599 }, %struct.stb0899_s2_reg { i16 -3252, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3248, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3244, i32 96, i32 49345 }, %struct.stb0899_s2_reg { i16 -3240, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3236, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3232, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3228, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3224, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3220, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3216, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3212, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3208, i32 96, i32 49601 }, %struct.stb0899_s2_reg { i16 -3204, i32 96, i32 49600 }, %struct.stb0899_s2_reg { i16 -3328, i32 1024, i32 1 }, %struct.stb0899_s2_reg { i16 -3324, i32 1024, i32 22100 }, %struct.stb0899_s2_reg { i16 -3316, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 1024, i32 131097 }, %struct.stb0899_s2_reg { i16 -3308, i32 1024, i32 4928055 }, %struct.stb0899_s2_reg { i16 -3304, i32 1024, i32 253207 }, %struct.stb0899_s2_reg { i16 -3300, i32 1024, i32 32776 }, %struct.stb0899_s2_reg { i16 -3296, i32 1024, i32 2765062 }, %struct.stb0899_s2_reg { i16 -3292, i32 1024, i32 398346 }, %struct.stb0899_s2_reg { i16 -3288, i32 1024, i32 32768 }, %struct.stb0899_s2_reg { i16 -3284, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 1024, i32 1137 }, %struct.stb0899_s2_reg { i16 -3252, i32 1024, i32 24839269 }, %struct.stb0899_s2_reg { i16 -3248, i32 1024, i32 2 }, %struct.stb0899_s2_reg { i16 -3244, i32 1024, i32 1664100 }, %struct.stb0899_s2_reg { i16 -3240, i32 1024, i32 1539 }, %struct.stb0899_s2_reg { i16 -3236, i32 1024, i32 33842790 }, %struct.stb0899_s2_reg { i16 -3232, i32 1024, i32 268723587 }, %struct.stb0899_s2_reg { i16 -3228, i32 1024, i32 66564 }, %struct.stb0899_s2_reg { i16 -3224, i32 1024, i32 174730 }, %struct.stb0899_s2_reg { i16 -3220, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3216, i32 1024, i32 1 }, %struct.stb0899_s2_reg { i16 -3212, i32 1024, i32 1280 }, %struct.stb0899_s2_reg { i16 -3208, i32 1024, i32 2662560 }, %struct.stb0899_s2_reg { i16 -3204, i32 1024, i32 0 }, %struct.stb0899_s2_reg { i16 -3320, i32 1088, i32 8391703 }, %struct.stb0899_s2_reg { i16 -3316, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 1088, i32 346114 }, %struct.stb0899_s2_reg { i16 -3296, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3292, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3288, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3284, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 1088, i32 1024 }, %struct.stb0899_s2_reg { i16 -3272, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3268, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3256, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3248, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3244, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3240, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3236, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3232, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3228, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3224, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3220, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3216, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3212, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3208, i32 1088, i32 0 }, %struct.stb0899_s2_reg { i16 -3328, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3324, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3320, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3316, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3312, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3308, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3304, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3300, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3296, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3292, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3288, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3280, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3276, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3272, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3268, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3264, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3260, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3256, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3252, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3248, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3244, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -3240, i32 1120, i32 0 }, %struct.stb0899_s2_reg { i16 -1, i32 -1, i32 -1 }], [532 x i8] zeroinitializer }, align 32
@pctv452e_init_s1_demod = internal constant { [130 x %struct.stb0899_s1_reg], [152 x i8] } { [130 x %struct.stb0899_s1_reg] [%struct.stb0899_s1_reg { i16 -3058, i8 0 }, %struct.stb0899_s1_reg { i16 -3056, i8 -55 }, %struct.stb0899_s1_reg { i16 -3054, i8 1 }, %struct.stb0899_s1_reg { i16 -3053, i8 16 }, %struct.stb0899_s1_reg { i16 -3049, i8 35 }, %struct.stb0899_s1_reg { i16 -3048, i8 78 }, %struct.stb0899_s1_reg { i16 -3047, i8 52 }, %struct.stb0899_s1_reg { i16 -3046, i8 -124 }, %struct.stb0899_s1_reg { i16 -3045, i8 -9 }, %struct.stb0899_s1_reg { i16 -3044, i8 -121 }, %struct.stb0899_s1_reg { i16 -3043, i8 -108 }, %struct.stb0899_s1_reg { i16 -3042, i8 65 }, %struct.stb0899_s1_reg { i16 -3041, i8 -15 }, %struct.stb0899_s1_reg { i16 -3040, i8 -29 }, %struct.stb0899_s1_reg { i16 -3035, i8 -76 }, %struct.stb0899_s1_reg { i16 -3034, i8 16 }, %struct.stb0899_s1_reg { i16 -3033, i8 48 }, %struct.stb0899_s1_reg { i16 -3032, i8 -3 }, %struct.stb0899_s1_reg { i16 -3031, i8 -1 }, %struct.stb0899_s1_reg { i16 -3030, i8 12 }, %struct.stb0899_s1_reg { i16 -3029, i8 15 }, %struct.stb0899_s1_reg { i16 -3028, i8 108 }, %struct.stb0899_s1_reg { i16 -3026, i8 -128 }, %struct.stb0899_s1_reg { i16 -3018, i8 6 }, %struct.stb0899_s1_reg { i16 -3017, i8 0 }, %struct.stb0899_s1_reg { i16 -3016, i8 48 }, %struct.stb0899_s1_reg { i16 -3015, i8 127 }, %struct.stb0899_s1_reg { i16 -3014, i8 0 }, %struct.stb0899_s1_reg { i16 -3013, i8 -68 }, %struct.stb0899_s1_reg { i16 -3010, i8 -22 }, %struct.stb0899_s1_reg { i16 -3009, i8 49 }, %struct.stb0899_s1_reg { i16 -3008, i8 43 }, %struct.stb0899_s1_reg { i16 -3007, i8 -128 }, %struct.stb0899_s1_reg { i16 -3004, i8 29 }, %struct.stb0899_s1_reg { i16 -3003, i8 -90 }, %struct.stb0899_s1_reg { i16 -3002, i8 47 }, %struct.stb0899_s1_reg { i16 -3001, i8 104 }, %struct.stb0899_s1_reg { i16 -3000, i8 64 }, %struct.stb0899_s1_reg { i16 -2996, i8 47 }, %struct.stb0899_s1_reg { i16 -2995, i8 104 }, %struct.stb0899_s1_reg { i16 -2994, i8 64 }, %struct.stb0899_s1_reg { i16 -2848, i8 2 }, %struct.stb0899_s1_reg { i16 -2847, i8 -1 }, %struct.stb0899_s1_reg { i16 -2846, i8 4 }, %struct.stb0899_s1_reg { i16 -2845, i8 5 }, %struct.stb0899_s1_reg { i16 -2844, i8 2 }, %struct.stb0899_s1_reg { i16 -2843, i8 -3 }, %struct.stb0899_s1_reg { i16 -2842, i8 3 }, %struct.stb0899_s1_reg { i16 -2841, i8 7 }, %struct.stb0899_s1_reg { i16 -2840, i8 8 }, %struct.stb0899_s1_reg { i16 -2839, i8 -11 }, %struct.stb0899_s1_reg { i16 -2804, i8 0 }, %struct.stb0899_s1_reg { i16 -2803, i8 0 }, %struct.stb0899_s1_reg { i16 -2801, i8 -122 }, %struct.stb0899_s1_reg { i16 -2781, i8 42 }, %struct.stb0899_s1_reg { i16 -2780, i8 0 }, %struct.stb0899_s1_reg { i16 -2779, i8 0 }, %struct.stb0899_s1_reg { i16 -2778, i8 0 }, %struct.stb0899_s1_reg { i16 -2777, i8 0 }, %struct.stb0899_s1_reg { i16 -2776, i8 10 }, %struct.stb0899_s1_reg { i16 -2775, i8 -83 }, %struct.stb0899_s1_reg { i16 -2768, i8 6 }, %struct.stb0899_s1_reg { i16 -2765, i8 1 }, %struct.stb0899_s1_reg { i16 -2764, i8 -80 }, %struct.stb0899_s1_reg { i16 -2763, i8 122 }, %struct.stb0899_s1_reg { i16 -2762, i8 88 }, %struct.stb0899_s1_reg { i16 -2761, i8 56 }, %struct.stb0899_s1_reg { i16 -2760, i8 52 }, %struct.stb0899_s1_reg { i16 -2759, i8 36 }, %struct.stb0899_s1_reg { i16 -2756, i8 -1 }, %struct.stb0899_s1_reg { i16 -2755, i8 25 }, %struct.stb0899_s1_reg { i16 -2744, i8 -79 }, %struct.stb0899_s1_reg { i16 -2743, i8 66 }, %struct.stb0899_s1_reg { i16 -2742, i8 65 }, %struct.stb0899_s1_reg { i16 -2741, i8 18 }, %struct.stb0899_s1_reg { i16 -2740, i8 12 }, %struct.stb0899_s1_reg { i16 -2739, i8 0 }, %struct.stb0899_s1_reg { i16 -2738, i8 0 }, %struct.stb0899_s1_reg { i16 -2737, i8 105 }, %struct.stb0899_s1_reg { i16 -2736, i8 0 }, %struct.stb0899_s1_reg { i16 -2735, i8 2 }, %struct.stb0899_s1_reg { i16 -2734, i8 0 }, %struct.stb0899_s1_reg { i16 -2733, i8 0 }, %struct.stb0899_s1_reg { i16 -2726, i8 27 }, %struct.stb0899_s1_reg { i16 -2725, i8 -77 }, %struct.stb0899_s1_reg { i16 -2724, i8 0 }, %struct.stb0899_s1_reg { i16 -2723, i8 0 }, %struct.stb0899_s1_reg { i16 -2722, i8 -68 }, %struct.stb0899_s1_reg { i16 -2721, i8 -52 }, %struct.stb0899_s1_reg { i16 -2720, i8 -67 }, %struct.stb0899_s1_reg { i16 -2719, i8 -112 }, %struct.stb0899_s1_reg { i16 -2700, i8 -74 }, %struct.stb0899_s1_reg { i16 -2699, i8 -107 }, %struct.stb0899_s1_reg { i16 -2698, i8 -115 }, %struct.stb0899_s1_reg { i16 -2693, i8 39 }, %struct.stb0899_s1_reg { i16 -2692, i8 3 }, %struct.stb0899_s1_reg { i16 -2685, i8 92 }, %struct.stb0899_s1_reg { i16 -2676, i8 25 }, %struct.stb0899_s1_reg { i16 -2560, i8 72 }, %struct.stb0899_s1_reg { i16 -2559, i8 0 }, %struct.stb0899_s1_reg { i16 -2558, i8 0 }, %struct.stb0899_s1_reg { i16 -2557, i8 0 }, %struct.stb0899_s1_reg { i16 -2556, i8 119 }, %struct.stb0899_s1_reg { i16 -2555, i8 0 }, %struct.stb0899_s1_reg { i16 -2554, i8 0 }, %struct.stb0899_s1_reg { i16 -2553, i8 0 }, %struct.stb0899_s1_reg { i16 -2552, i8 0 }, %struct.stb0899_s1_reg { i16 -2551, i8 0 }, %struct.stb0899_s1_reg { i16 -2550, i8 0 }, %struct.stb0899_s1_reg { i16 -2549, i8 0 }, %struct.stb0899_s1_reg { i16 -2548, i8 0 }, %struct.stb0899_s1_reg { i16 -2547, i8 0 }, %struct.stb0899_s1_reg { i16 -2546, i8 0 }, %struct.stb0899_s1_reg { i16 -2545, i8 0 }, %struct.stb0899_s1_reg { i16 -2544, i8 -16 }, %struct.stb0899_s1_reg { i16 -2543, i8 2 }, %struct.stb0899_s1_reg { i16 -2542, i8 69 }, %struct.stb0899_s1_reg { i16 -2541, i8 96 }, %struct.stb0899_s1_reg { i16 -2540, i8 -29 }, %struct.stb0899_s1_reg { i16 -2539, i8 0 }, %struct.stb0899_s1_reg { i16 -2538, i8 71 }, %struct.stb0899_s1_reg { i16 -2537, i8 5 }, %struct.stb0899_s1_reg { i16 -2536, i8 24 }, %struct.stb0899_s1_reg { i16 -2535, i8 25 }, %struct.stb0899_s1_reg { i16 -2534, i8 43 }, %struct.stb0899_s1_reg { i16 -2533, i8 0 }, %struct.stb0899_s1_reg { i16 -2532, i8 1 }, %struct.stb0899_s1_reg { i16 -2531, i8 0 }, %struct.stb0899_s1_reg { i16 -2530, i8 0 }, %struct.stb0899_s1_reg { i16 -1, i8 -1 }], [152 x i8] zeroinitializer }, align 32
@stb0899_s2_init_4 = internal constant { [21 x %struct.stb0899_s2_reg], [36 x i8] } { [21 x %struct.stb0899_s2_reg] [%struct.stb0899_s2_reg { i16 -1532, i32 0, i32 8 }, %struct.stb0899_s2_reg { i16 -1528, i32 0, i32 180 }, %struct.stb0899_s2_reg { i16 -1520, i32 0, i32 1205 }, %struct.stb0899_s2_reg { i16 -1516, i32 0, i32 2891 }, %struct.stb0899_s2_reg { i16 -1508, i32 0, i32 120 }, %struct.stb0899_s2_reg { i16 -1504, i32 0, i32 480 }, %struct.stb0899_s2_reg { i16 -1500, i32 0, i32 43200 }, %struct.stb0899_s2_reg { i16 -1496, i32 0, i32 12 }, %struct.stb0899_s2_reg { i16 -1536, i32 2048, i32 1 }, %struct.stb0899_s2_reg { i16 -1532, i32 2048, i32 13 }, %struct.stb0899_s2_reg { i16 -1528, i32 2048, i32 64 }, %struct.stb0899_s2_reg { i16 -1524, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1520, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1516, i32 2048, i32 8 }, %struct.stb0899_s2_reg { i16 -1512, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1508, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1504, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1500, i32 2048, i32 8 }, %struct.stb0899_s2_reg { i16 -1496, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1480, i32 2048, i32 0 }, %struct.stb0899_s2_reg { i16 -1, i32 -1, i32 -1 }], [36 x i8] zeroinitializer }, align 32
@stb0899_s1_init_5 = internal constant { [38 x %struct.stb0899_s1_reg], [40 x i8] } { [38 x %struct.stb0899_s1_reg] [%struct.stb0899_s1_reg { i16 -240, i8 0 }, %struct.stb0899_s1_reg { i16 -239, i8 0 }, %struct.stb0899_s1_reg { i16 -238, i8 0 }, %struct.stb0899_s1_reg { i16 -237, i8 0 }, %struct.stb0899_s1_reg { i16 -236, i8 0 }, %struct.stb0899_s1_reg { i16 -235, i8 0 }, %struct.stb0899_s1_reg { i16 -234, i8 0 }, %struct.stb0899_s1_reg { i16 -233, i8 0 }, %struct.stb0899_s1_reg { i16 -228, i8 0 }, %struct.stb0899_s1_reg { i16 -227, i8 0 }, %struct.stb0899_s1_reg { i16 -226, i8 0 }, %struct.stb0899_s1_reg { i16 -220, i8 0 }, %struct.stb0899_s1_reg { i16 -219, i8 0 }, %struct.stb0899_s1_reg { i16 -216, i8 0 }, %struct.stb0899_s1_reg { i16 -192, i8 0 }, %struct.stb0899_s1_reg { i16 -191, i8 0 }, %struct.stb0899_s1_reg { i16 -190, i8 0 }, %struct.stb0899_s1_reg { i16 -184, i8 0 }, %struct.stb0899_s1_reg { i16 -183, i8 0 }, %struct.stb0899_s1_reg { i16 -182, i8 0 }, %struct.stb0899_s1_reg { i16 -181, i8 0 }, %struct.stb0899_s1_reg { i16 -180, i8 0 }, %struct.stb0899_s1_reg { i16 -179, i8 0 }, %struct.stb0899_s1_reg { i16 -176, i8 0 }, %struct.stb0899_s1_reg { i16 -175, i8 0 }, %struct.stb0899_s1_reg { i16 -174, i8 0 }, %struct.stb0899_s1_reg { i16 -173, i8 0 }, %struct.stb0899_s1_reg { i16 -172, i8 0 }, %struct.stb0899_s1_reg { i16 -171, i8 0 }, %struct.stb0899_s1_reg { i16 -170, i8 0 }, %struct.stb0899_s1_reg { i16 -168, i8 0 }, %struct.stb0899_s1_reg { i16 -167, i8 0 }, %struct.stb0899_s1_reg { i16 -166, i8 0 }, %struct.stb0899_s1_reg { i16 -164, i8 0 }, %struct.stb0899_s1_reg { i16 -163, i8 0 }, %struct.stb0899_s1_reg { i16 -173, i8 0 }, %struct.stb0899_s1_reg { i16 -4096, i8 -127 }, %struct.stb0899_s1_reg { i16 -1, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@pctv45e_postproc = internal global { [2 x %struct.stb0899_postproc], [24 x i8] } { [2 x %struct.stb0899_postproc] [%struct.stb0899_postproc { i16 -3775, i8 1 }, %struct.stb0899_postproc zeroinitializer], [24 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.28, i32 44, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: Invalid parameter\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_set_frequency\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/dvb-frontends/stb6100_cfg.h\00", [54 x i8] zeroinitializer }, align 32
@stb6100_set_frequency._entry_ptr = internal global ptr @stb6100_set_frequency._entry, section ".printk_index", align 4
@stb6100_get_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.29, ptr @.str.28, i32 22, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_get_frequency\00", [42 x i8] zeroinitializer }, align 32
@stb6100_get_frequency._entry_ptr = internal global ptr @stb6100_get_frequency._entry, section ".printk_index", align 4
@stb6100_set_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.30, ptr @.str.28, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_set_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@stb6100_set_bandwidth._entry_ptr = internal global ptr @stb6100_set_bandwidth._entry, section ".printk_index", align 4
@stb6100_get_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.31, ptr @.str.28, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stb6100_get_bandwidth\00", [42 x i8] zeroinitializer }, align 32
@stb6100_get_bandwidth._entry_ptr = internal global ptr @stb6100_get_bandwidth._entry, section ".printk_index", align 4
@tt3650_ci_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&state->ca_mutex\00", [47 x i8] zeroinitializer }, align 32
@tt3650_ci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.9, i32 403, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013pctv452e: Cannot initialize CI: Error %d.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tt3650_ci_init\00", [17 x i8] zeroinitializer }, align 32
@tt3650_ci_init._entry_ptr = internal global ptr @tt3650_ci_init._entry, section ".printk_index", align 4
@tt3650_ci_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.9, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016pctv452e: CI initialized.\0A\00", [35 x i8] zeroinitializer }, align 32
@tt3650_ci_init._entry_ptr.37 = internal global ptr @tt3650_ci_init._entry.35, section ".printk_index", align 4
@tt3650_ci_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.9, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013pctv452e: %s: transfer data invalid\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tt3650_ci_msg\00", [18 x i8] zeroinitializer }, align 32
@tt3650_ci_msg._entry_ptr = internal global ptr @tt3650_ci_msg._entry, section ".printk_index", align 4
@tt3650_ci_msg._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.9, i32 150, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013pctv452e: CI error %d; %02X %02X %02X -> %*ph.\0A\00", [46 x i8] zeroinitializer }, align 32
@tt3650_ci_msg._entry_ptr.42 = internal global ptr @tt3650_ci_msg._entry.40, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tt3650_ci_set_video_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.9, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013pctv452e: CI not %sabled.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tt3650_ci_set_video_port\00", [39 x i8] zeroinitializer }, align 32
@tt3650_ci_set_video_port._entry_ptr = internal global ptr @tt3650_ci_set_video_port._entry, section ".printk_index", align 4
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stb6100_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:stb6100_attach\00", [42 x i8] zeroinitializer }, align 32
@stb6100_config = internal global { %struct.stb6100_config, [24 x i8] } { %struct.stb6100_config { i8 96, i32 27000000 }, [24 x i8] zeroinitializer }, align 32
@pctv452e_tuner_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.9, i32 946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol stb6100_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pctv452e_tuner_attach\00", [42 x i8] zeroinitializer }, align 32
@pctv452e_tuner_attach._entry_ptr = internal global ptr @pctv452e_tuner_attach._entry, section ".printk_index", align 4
@pctv452e_tuner_attach._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.9, i32 947, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013pctv452e: %s failed\0A\0A\00", [40 x i8] zeroinitializer }, align 32
@pctv452e_tuner_attach._entry_ptr.53 = internal global ptr @pctv452e_tuner_attach._entry.51, section ".printk_index", align 4
@pctv452e_power_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.9, i32 521, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016pctv452e: %s: %d\0A\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pctv452e_power_ctrl\00", [44 x i8] zeroinitializer }, align 32
@pctv452e_power_ctrl._entry_ptr = internal global ptr @pctv452e_power_ctrl._entry, section ".printk_index", align 4
@pctv452e_power_ctrl._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.9, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016pctv452e: %s: Warning set interface returned: %d\0A\0A\00", [43 x i8] zeroinitializer }, align 32
@pctv452e_power_ctrl._entry_ptr.58 = internal global ptr @pctv452e_power_ctrl._entry.56, section ".printk_index", align 4
@pctv452e_rc_query._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.9, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016pctv452e: %s: read: %2d: %*ph: \0A\00", [61 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pctv452e_rc_query\00", [46 x i8] zeroinitializer }, align 32
@pctv452e_rc_query._entry_ptr = internal global ptr @pctv452e_rc_query._entry, section ".printk_index", align 4
@pctv452e_rc_query._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.9, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016pctv452e:  %02x\0A\00", [45 x i8] zeroinitializer }, align 32
@pctv452e_rc_query._entry_ptr.63 = internal global ptr @pctv452e_rc_query._entry.61, section ".printk_index", align 4
@pctv452e_rc_query._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.9, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\016pctv452e: \0A\0A\00", [17 x i8] zeroinitializer }, align 32
@pctv452e_rc_query._entry_ptr.66 = internal global ptr @pctv452e_rc_query._entry.64, section ".printk_index", align 4
@pctv452e_rc_query._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.60, ptr @.str.9, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016pctv452e: %s: cmd=0x%02x sys=0x%02x\0A\0A\00", [56 x i8] zeroinitializer }, align 32
@pctv452e_rc_query._entry_ptr.69 = internal global ptr @pctv452e_rc_query._entry.67, section ".printk_index", align 4
@pctv452e_i2c_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.9, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013pctv452e: I2C error %d; %02X %02X  %02X %02X %02X -> %*ph\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pctv452e_i2c_msg\00", [47 x i8] zeroinitializer }, align 32
@pctv452e_i2c_msg._entry_ptr = internal global ptr @pctv452e_i2c_msg._entry, section ".printk_index", align 4
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rc-tt-1500\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Technotrend TT Connect S2-3600\00", [33 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Technotrend TT Connect S2-3650-CI\00", [62 x i8] zeroinitializer }, align 32
@tt_connect_s2_3600_properties = internal global { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [10 x %struct.dvb_usb_device_description] }> }, [504 x i8] } { { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [10 x %struct.dvb_usb_device_description] }> } { i32 1, i32 0, ptr null, ptr null, i32 0, i32 148, ptr null, ptr null, i32 1, [2 x %struct.dvb_usb_adapter_properties] [%struct.dvb_usb_adapter_properties { i32 0, ptr null, i32 1, [3 x %struct.dvb_usb_adapter_fe_properties] [%struct.dvb_usb_adapter_fe_properties { i32 0, i32 0, ptr null, ptr null, ptr null, ptr @pctv452e_frontend_attach, ptr @pctv452e_tuner_attach, %struct.usb_data_stream_properties { i32 2, i32 4, i32 2, %union.anon.131 { %struct.anon.133 { i32 64, i32 940, i32 1 } } }, i32 0 }, %struct.dvb_usb_adapter_fe_properties zeroinitializer, %struct.dvb_usb_adapter_fe_properties zeroinitializer] }, %struct.dvb_usb_adapter_properties zeroinitializer], ptr @pctv452e_power_ctrl, ptr @pctv452e_read_mac_address, ptr null, %struct.anon.134 { i32 0, %struct.dvb_rc_legacy zeroinitializer, %struct.dvb_rc { ptr @.str.72, i64 0, i64 4, i32 0, ptr null, ptr null, ptr @pctv452e_rc_query, i32 100, i8 0, i32 0 } }, ptr @pctv452e_i2c_algo, i32 1, i32 0, i32 2, <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> }, [10 x %struct.dvb_usb_device_description] }> <{ { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> } { ptr @.str.73, [15 x ptr] zeroinitializer, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @pctv452e_usb_table, i64 24), [14 x ptr] zeroinitializer }> }, { ptr, [15 x ptr], <{ ptr, [14 x ptr] }> } { ptr @.str.74, [15 x ptr] zeroinitializer, <{ ptr, [14 x ptr] }> <{ ptr getelementptr (i8, ptr @pctv452e_usb_table, i64 48), [14 x ptr] zeroinitializer }> }, [10 x %struct.dvb_usb_device_description] zeroinitializer }> }, [504 x i8] zeroinitializer }, align 32
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 29, i32 12 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"pctv452e_usb_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1093, i32 26 }
@___asan_gen_.82 = private unnamed_addr constant [11 x i8] c"adapter_nr\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 33, i32 1 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1100, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1094, i32 16 }
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"pctv452e_usb_table\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 954, i32 29 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 972, i32 15 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"pctv452e_i2c_algo\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 907, i32 29 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1007, i32 13 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"pctv452e_properties\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 963, i32 41 }
@___asan_gen_.112 = private unnamed_addr constant [15 x i8] c"stb0899_config\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 855, i32 30 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 916, i32 21 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 924, i32 7 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 927, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant [24 x i8] c"pctv452e_isl6423_config\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 87, i32 30 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 931, i32 13 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 935, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [18 x i8] c"pctv452e_init_dev\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 654, i32 36 }
@___asan_gen_.169 = private unnamed_addr constant [18 x i8] c"stb0899_s2_init_2\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 13, i32 37 }
@___asan_gen_.172 = private unnamed_addr constant [23 x i8] c"pctv452e_init_s1_demod\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 722, i32 36 }
@___asan_gen_.175 = private unnamed_addr constant [18 x i8] c"stb0899_s2_init_4\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 195, i32 36 }
@___asan_gen_.178 = private unnamed_addr constant [18 x i8] c"stb0899_s1_init_5\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [45 x i8] c"../drivers/media/dvb-frontends/stb0899_cfg.h\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.179, i32 219, i32 36 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"pctv45e_postproc\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 82, i32 32 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 44, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 22, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 82, i32 4 }
@___asan_gen_.212 = private unnamed_addr constant [45 x i8] c"../drivers/media/dvb-frontends/stb6100_cfg.h\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 60, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 385, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 403, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 408, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 116, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 149, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 274, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [15 x i8] c"stb6100_config\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 901, i32 30 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 945, i32 6 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 947, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 521, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 538, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 593, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 595, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 597, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 604, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 465, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1025, i32 15 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1061, i32 13 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1065, i32 13 }
@___asan_gen_.349 = private unnamed_addr constant [30 x i8] c"tt_connect_s2_3600_properties\00", align 1
@___asan_gen_.350 = private constant [40 x i8] c"../drivers/media/usb/dvb-usb/pctv452e.c\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.350, i32 1015, i32 41 }
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_adapter_nr389, ptr @__UNIQUE_ID_adapter_nrtype388, ptr @__UNIQUE_ID_author391, ptr @__UNIQUE_ID_author392, ptr @__UNIQUE_ID_author393, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description394, ptr @__UNIQUE_ID_file395, ptr @__UNIQUE_ID_license396, ptr @__exitcall_pctv452e_usb_driver_exit, ptr @__initcall__kmod_dvb_usb_pctv452e__390_1100_pctv452e_usb_driver_init6, ptr @__param_adapter_nr, ptr @__param_debug, ptr @pctv452e_frontend_attach._entry, ptr @pctv452e_frontend_attach._entry.12, ptr @pctv452e_frontend_attach._entry.15, ptr @pctv452e_frontend_attach._entry.20, ptr @pctv452e_frontend_attach._entry.23, ptr @pctv452e_frontend_attach._entry_ptr, ptr @pctv452e_frontend_attach._entry_ptr.14, ptr @pctv452e_frontend_attach._entry_ptr.17, ptr @pctv452e_frontend_attach._entry_ptr.22, ptr @pctv452e_frontend_attach._entry_ptr.25, ptr @pctv452e_i2c_msg._entry, ptr @pctv452e_i2c_msg._entry_ptr, ptr @pctv452e_power_ctrl._entry, ptr @pctv452e_power_ctrl._entry.56, ptr @pctv452e_power_ctrl._entry_ptr, ptr @pctv452e_power_ctrl._entry_ptr.58, ptr @pctv452e_rc_query._entry, ptr @pctv452e_rc_query._entry.61, ptr @pctv452e_rc_query._entry.64, ptr @pctv452e_rc_query._entry.67, ptr @pctv452e_rc_query._entry_ptr, ptr @pctv452e_rc_query._entry_ptr.63, ptr @pctv452e_rc_query._entry_ptr.66, ptr @pctv452e_rc_query._entry_ptr.69, ptr @pctv452e_tuner_attach._entry, ptr @pctv452e_tuner_attach._entry.51, ptr @pctv452e_tuner_attach._entry_ptr, ptr @pctv452e_tuner_attach._entry_ptr.53, ptr @pctv452e_usb_driver_exit, ptr @stb6100_get_bandwidth._entry, ptr @stb6100_get_bandwidth._entry_ptr, ptr @stb6100_get_frequency._entry, ptr @stb6100_get_frequency._entry_ptr, ptr @stb6100_set_bandwidth._entry, ptr @stb6100_set_bandwidth._entry_ptr, ptr @stb6100_set_frequency._entry, ptr @stb6100_set_frequency._entry_ptr, ptr @tt3650_ci_init._entry, ptr @tt3650_ci_init._entry.35, ptr @tt3650_ci_init._entry_ptr, ptr @tt3650_ci_init._entry_ptr.37, ptr @tt3650_ci_msg._entry, ptr @tt3650_ci_msg._entry.40, ptr @tt3650_ci_msg._entry_ptr, ptr @tt3650_ci_msg._entry_ptr.42, ptr @tt3650_ci_set_video_port._entry, ptr @tt3650_ci_set_video_port._entry_ptr, ptr @debug, ptr @pctv452e_usb_driver, ptr @adapter_nr, ptr @.str, ptr @.str.1, ptr @pctv452e_usb_table, ptr @.str.2, ptr @pctv452e_i2c_algo, ptr @.str.3, ptr @pctv452e_properties, ptr @.str.5, ptr @.str.6, ptr @stb0899_config, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @pctv452e_isl6423_config, ptr @.str.21, ptr @.str.24, ptr @pctv452e_init_dev, ptr @stb0899_s2_init_2, ptr @pctv452e_init_s1_demod, ptr @stb0899_s2_init_4, ptr @stb0899_s1_init_5, ptr @pctv45e_postproc, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @tt3650_ci_init.__key, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @stb6100_config, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @tt_connect_s2_3600_properties], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adapter_nr to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_usb_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_config to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_frontend_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_frontend_attach._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_frontend_attach._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_isl6423_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_frontend_attach._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_frontend_attach._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_init_dev to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_s2_init_2 to i32), i32 2124, i32 2656, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_init_s1_demod to i32), i32 520, i32 672, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_s2_init_4 to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb0899_s1_init_5 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv45e_postproc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_set_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_get_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_msg._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt3650_ci_set_video_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stb6100_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_tuner_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_tuner_attach._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_power_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_power_ctrl._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_rc_query._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_rc_query._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_rc_query._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_rc_query._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pctv452e_i2c_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tt_connect_s2_3600_properties to i32), i32 1992, i32 2496, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pctv452e_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @pctv452e_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pctv452e_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usb_deregister(ptr noundef nonnull @pctv452e_usb_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pctv452e_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @pctv452e_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @dvb_usb_device_init(ptr noundef %intf, ptr noundef nonnull @tt_connect_s2_3600_properties, ptr noundef null, ptr noundef null, ptr noundef nonnull @adapter_nr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  %spec.select = select i1 %cmp2, i32 0, i32 -19
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pctv452e_usb_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  %buf.i.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.tt3650_ci_uninit.exit_crit_edge, label %if.end.i

entry.tt3650_ci_uninit.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tt3650_ci_uninit.exit

if.end.i:                                         ; preds = %entry
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %cmp1.i = icmp eq ptr %3, null
  br i1 %cmp1.i, label %if.end.i.tt3650_ci_uninit.exit_crit_edge, label %if.end3.i

if.end.i.tt3650_ci_uninit.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tt3650_ci_uninit.exit

if.end3.i:                                        ; preds = %if.end.i
  %data.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %cmp4.i = icmp eq ptr %5, null
  br i1 %cmp4.i, label %if.end3.i.tt3650_ci_uninit.exit_crit_edge, label %if.end6.i

if.end3.i.tt3650_ci_uninit.exit_crit_edge:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tt3650_ci_uninit.exit

if.end6.i:                                        ; preds = %if.end3.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i.i) #7
  %6 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %buf.i.i, align 1
  %priv.i.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 18
  %7 = ptrtoint ptr %priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i.i.i, align 8
  %ca_mutex.i.i.i = getelementptr inbounds %struct.pctv452e_state, ptr %8, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex.i.i.i, i32 noundef 0) #7
  %call.i.i.i = call fastcc i32 @tt3650_ci_msg(ptr noundef nonnull %5, i8 noundef zeroext 70, ptr noundef nonnull %buf.i.i, i32 noundef 1, i32 noundef 1) #7
  call void @mutex_unlock(ptr noundef %ca_mutex.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp2.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp2.i.i, label %if.end6.i.tt3650_ci_set_video_port.exit.i_crit_edge, label %if.end5.i.i

if.end6.i.tt3650_ci_set_video_port.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tt3650_ci_set_video_port.exit.i

if.end5.i.i:                                      ; preds = %if.end6.i
  %9 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp8.not.i.i = icmp eq i8 %10, 0
  br i1 %cmp8.not.i.i, label %if.end5.i.i.tt3650_ci_set_video_port.exit.i_crit_edge, label %do.end13.i.i

if.end5.i.i.tt3650_ci_set_video_port.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tt3650_ci_set_video_port.exit.i

do.end13.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.46) #10
  br label %tt3650_ci_set_video_port.exit.i

tt3650_ci_set_video_port.exit.i:                  ; preds = %do.end13.i.i, %if.end5.i.i.tt3650_ci_set_video_port.exit.i_crit_edge, %if.end6.i.tt3650_ci_set_video_port.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i.i) #7
  call void @dvb_ca_en50221_release(ptr noundef nonnull %3) #7
  %11 = call ptr @memset(ptr %3, i32 0, i32 52)
  br label %tt3650_ci_uninit.exit

tt3650_ci_uninit.exit:                            ; preds = %tt3650_ci_set_video_port.exit.i, %if.end3.i.tt3650_ci_uninit.exit_crit_edge, %if.end.i.tt3650_ci_uninit.exit_crit_edge, %entry.tt3650_ci_uninit.exit_crit_edge
  call void @dvb_usb_device_exit(ptr noundef %intf) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_device_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pctv452e_frontend_attach(ptr noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.5) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

cond.end:                                         ; preds = %entry
  %call1 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.6) #7
  %call2 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.5) #7
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %cond.end.if.then_crit_edge

cond.end.if.then_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %cond.end.if.then_crit_edge, %entry.if.then_crit_edge
  %cond121 = phi ptr [ %call2, %cond.end.if.then_crit_edge ], [ %call, %entry.if.then_crit_edge ]
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 8
  %call4 = tail call ptr %cond121(ptr noundef nonnull @stb0899_config, ptr noundef %i2c_adap) #7
  %cmp = icmp eq ptr %call4, null
  br i1 %cmp, label %if.then5, label %if.end14

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.5) #7
  br label %if.end7.thread

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  br label %if.end7.thread

if.end7.thread:                                   ; preds = %do.end, %if.then5
  %fe_adap123 = getelementptr inbounds %struct.dvb_usb_adapter, ptr %a, i32 0, i32 9
  %2 = ptrtoint ptr %fe_adap123 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fe_adap123, align 8
  br label %cleanup

if.end14:                                         ; preds = %if.then
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %a, i32 0, i32 9
  %3 = ptrtoint ptr %fe_adap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %fe_adap, align 8
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %a, align 8
  %desc = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 8
  %warm_ids = getelementptr inbounds %struct.dvb_usb_device_description, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %warm_ids to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %warm_ids, align 4
  %idVendor = getelementptr inbounds %struct.usb_device_id, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %idVendor, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2888, i16 %11)
  %cmp17 = icmp eq i16 %11, 2888
  br i1 %cmp17, label %land.lhs.true, label %if.end14.if.else63_crit_edge

if.end14.if.else63_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else63

land.lhs.true:                                    ; preds = %if.end14
  %idProduct = getelementptr inbounds %struct.usb_device_id, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %idProduct, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 12298, i16 %13)
  %cmp20 = icmp eq i16 %13, 12298
  br i1 %cmp20, label %if.then22, label %land.lhs.true.if.else63_crit_edge

land.lhs.true.if.else63_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else63

if.then22:                                        ; preds = %land.lhs.true
  %call25 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #7
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %cond.end31, label %if.then22.if.then34_crit_edge

if.then22.if.then34_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

cond.end31:                                       ; preds = %if.then22
  %call29 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.11) #7
  %call30 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.10) #7
  %tobool33.not = icmp eq ptr %call30, null
  br i1 %tobool33.not, label %do.end48, label %cond.end31.if.then34_crit_edge

cond.end31.if.then34_crit_edge:                   ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then34

if.then34:                                        ; preds = %cond.end31.if.then34_crit_edge, %if.then22.if.then34_crit_edge
  %cond32128 = phi ptr [ %call30, %cond.end31.if.then34_crit_edge ], [ %call25, %if.then22.if.then34_crit_edge ]
  %14 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fe_adap, align 8
  %16 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %a, align 8
  %i2c_adap39 = getelementptr inbounds %struct.dvb_usb_device, ptr %17, i32 0, i32 8
  %call40 = tail call ptr %cond32128(ptr noundef %15, ptr noundef %i2c_adap39) #7
  %cmp41 = icmp eq ptr %call40, null
  br i1 %cmp41, label %if.then43, label %if.then34.if.end61_crit_edge

if.then34.if.end61_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61

if.then43:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.10) #7
  br label %do.end58

do.end48:                                         ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #9
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %do.end58

do.end58:                                         ; preds = %do.end48, %if.then43
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #10
  br label %if.end61

if.end61:                                         ; preds = %do.end58, %if.then34.if.end61_crit_edge
  %18 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %a, align 8
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %19, i32 0, i32 18
  %20 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %priv.i, align 8
  %ca_mutex.i = getelementptr inbounds %struct.pctv452e_state, ptr %21, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %ca_mutex.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @tt3650_ci_init.__key) #7
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %21, align 4
  %read_attribute_mem.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %read_attribute_mem.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @tt3650_ci_read_attribute_mem, ptr %read_attribute_mem.i, align 4
  %write_attribute_mem.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %write_attribute_mem.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @tt3650_ci_write_attribute_mem, ptr %write_attribute_mem.i, align 4
  %read_cam_control.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %21, i32 0, i32 3
  %25 = ptrtoint ptr %read_cam_control.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @tt3650_ci_read_cam_control, ptr %read_cam_control.i, align 4
  %write_cam_control.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %21, i32 0, i32 4
  %26 = ptrtoint ptr %write_cam_control.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @tt3650_ci_write_cam_control, ptr %write_cam_control.i, align 4
  %slot_reset.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %21, i32 0, i32 7
  %27 = ptrtoint ptr %slot_reset.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @tt3650_ci_slot_reset, ptr %slot_reset.i, align 4
  %slot_shutdown.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %21, i32 0, i32 8
  %28 = ptrtoint ptr %slot_shutdown.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @tt3650_ci_slot_shutdown, ptr %slot_shutdown.i, align 4
  %slot_ts_enable.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %21, i32 0, i32 9
  %29 = ptrtoint ptr %slot_ts_enable.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @tt3650_ci_slot_ts_enable, ptr %slot_ts_enable.i, align 4
  %poll_slot_status.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %21, i32 0, i32 10
  %30 = ptrtoint ptr %poll_slot_status.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @tt3650_ci_poll_slot_status, ptr %poll_slot_status.i, align 4
  %data.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %21, i32 0, i32 11
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %19, ptr %data.i, align 4
  %dvb_adap.i = getelementptr inbounds %struct.dvb_usb_adapter, ptr %a, i32 0, i32 5
  %call.i = tail call i32 @dvb_ca_en50221_init(ptr noundef %dvb_adap.i, ptr noundef %21, i32 noundef 0, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %do.end21.i, label %do.end16.i

do.end16.i:                                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %call17.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %call.i) #10
  %32 = call ptr @memset(ptr %21, i32 0, i32 52)
  br label %cleanup

do.end21.i:                                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.else63:                                        ; preds = %land.lhs.true.if.else63_crit_edge, %if.end14.if.else63_crit_edge
  %call66 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #7
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %cond.end72, label %if.else63.if.then75_crit_edge

if.else63.if.then75_crit_edge:                    ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then75

cond.end72:                                       ; preds = %if.else63
  %call70 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19) #7
  %call71 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.18) #7
  %tobool74.not = icmp eq ptr %call71, null
  br i1 %tobool74.not, label %do.end89, label %cond.end72.if.then75_crit_edge

cond.end72.if.then75_crit_edge:                   ; preds = %cond.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then75

if.then75:                                        ; preds = %cond.end72.if.then75_crit_edge, %if.else63.if.then75_crit_edge
  %cond73133 = phi ptr [ %call71, %cond.end72.if.then75_crit_edge ], [ %call66, %if.else63.if.then75_crit_edge ]
  %33 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fe_adap, align 8
  %35 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %a, align 8
  %i2c_adap80 = getelementptr inbounds %struct.dvb_usb_device, ptr %36, i32 0, i32 8
  %call81 = tail call ptr %cond73133(ptr noundef %34, ptr noundef %i2c_adap80, ptr noundef nonnull @pctv452e_isl6423_config) #7
  %cmp82 = icmp eq ptr %call81, null
  br i1 %cmp82, label %if.then84, label %if.then75.cleanup_crit_edge

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then84:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.18) #7
  br label %do.end99

do.end89:                                         ; preds = %cond.end72
  call void @__sanitizer_cov_trace_pc() #9
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %do.end99

do.end99:                                         ; preds = %do.end89, %if.then84
  %call101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end99, %if.then75.cleanup_crit_edge, %do.end21.i, %do.end16.i, %if.end7.thread
  %retval.0 = phi i32 [ 0, %do.end99 ], [ -19, %if.end7.thread ], [ 0, %do.end16.i ], [ 0, %do.end21.i ], [ 0, %if.then75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pctv452e_tuner_attach(ptr nocapture noundef readonly %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fe_adap = getelementptr inbounds %struct.dvb_usb_adapter, ptr %a, i32 0, i32 9
  %0 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe_adap, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %call = tail call ptr @__symbol_get(ptr noundef nonnull @.str.47) #7
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %cond.end, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

cond.end:                                         ; preds = %if.end
  %call2 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.48) #7
  %call3 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.47) #7
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %cond.end.if.then5_crit_edge

cond.end.if.then5_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5

if.then5:                                         ; preds = %cond.end.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %cond29 = phi ptr [ %call3, %cond.end.if.then5_crit_edge ], [ %call, %if.end.if.then5_crit_edge ]
  %2 = ptrtoint ptr %fe_adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fe_adap, align 8
  %4 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %a, align 8
  %i2c_adap = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 8
  %call9 = tail call ptr %cond29(ptr noundef %3, ptr noundef nonnull @stb6100_config, ptr noundef %i2c_adap) #7
  %cmp = icmp eq ptr %call9, null
  br i1 %cmp, label %if.then10, label %if.then5.return_crit_edge

if.then5.return_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then10:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__symbol_put(ptr noundef nonnull @.str.47) #7
  br label %do.end19

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49) #10
  br label %do.end19

do.end19:                                         ; preds = %do.end, %if.then10
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.50) #10
  br label %return

return:                                           ; preds = %do.end19, %if.then5.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -19, %do.end19 ], [ -19, %entry.return_crit_edge ], [ 0, %if.then5.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pctv452e_power_ctrl(ptr noundef %d, i32 noundef %i) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, i32 noundef %i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i)
  %tobool.not = icmp eq i32 %i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %initialized = getelementptr inbounds %struct.pctv452e_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %initialized, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 69) #11
  %tobool5.not = icmp eq ptr %call7.i, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %add.ptr = getelementptr i8, ptr %call7.i, i32 5
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %call8 = tail call i32 @usb_set_interface(ptr noundef %6, i32 noundef 0, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 0
  br i1 %cmp.not, label %if.end7.if.end15_crit_edge, label %do.end12

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.55, i32 noundef %call8) #10
  br label %if.end15

if.end15:                                         ; preds = %do.end12, %if.end7.if.end15_crit_edge
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -86, ptr %call7.i, align 8
  %c = getelementptr inbounds %struct.pctv452e_state, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %c, align 4
  %inc = add i8 %9, 1
  store i8 %inc, ptr %c, align 4
  %arrayidx16 = getelementptr i8, ptr %call7.i, i32 1
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx16, align 1
  %arrayidx17 = getelementptr i8, ptr %call7.i, i32 2
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 21, ptr %arrayidx17, align 2
  %arrayidx18 = getelementptr i8, ptr %call7.i, i32 3
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr i8, ptr %call7.i, i32 4
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx19, align 4
  %call20 = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef nonnull %call7.i, i16 noundef zeroext 5, ptr noundef %add.ptr, i16 noundef zeroext 64, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end15.ret33_crit_edge

if.end15.ret33_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret33

if.end23:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %c, align 4
  %inc25 = add i8 %15, 1
  store i8 %inc25, ptr %c, align 4
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx16, align 1
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %arrayidx19, align 4
  %call28 = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef nonnull %call7.i, i16 noundef zeroext 5, ptr noundef %add.ptr, i16 noundef zeroext 64, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %if.end23.ret33_crit_edge

if.end23.ret33_crit_edge:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret33

if.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %initialized to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %initialized, align 1
  br label %ret33

ret33:                                            ; preds = %if.end31, %if.end23.ret33_crit_edge, %if.end15.ret33_crit_edge
  %ret.0 = phi i32 [ %call20, %if.end15.ret33_crit_edge ], [ %call28, %if.end23.ret33_crit_edge ], [ 0, %if.end31 ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %ret33, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %ret33 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -12, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pctv452e_rc_query(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 104) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call7.i, i32 40
  %c = getelementptr inbounds %struct.pctv452e_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %c, align 4
  %inc = add i8 %4, 1
  store i8 %inc, ptr %c, align 4
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -86, ptr %call7.i, align 8
  %arrayidx1 = getelementptr i8, ptr %call7.i, i32 1
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %4, ptr %arrayidx1, align 1
  %arrayidx2 = getelementptr i8, ptr %call7.i, i32 2
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 27, ptr %arrayidx2, align 2
  %arrayidx3 = getelementptr i8, ptr %call7.i, i32 3
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx3, align 1
  %call4 = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef nonnull %call7.i, i16 noundef zeroext 4, ptr noundef %add.ptr, i16 noundef zeroext 64, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp.not = icmp eq i32 %call4, 0
  br i1 %cmp.not, label %if.end6, label %if.end.ret65_crit_edge

if.end.ret65_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret65

if.end6:                                          ; preds = %if.end
  %9 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp7 = icmp sgt i32 %9, 3
  br i1 %cmp7, label %do.end, label %if.end6.if.end29_crit_edge

if.end6.if.end29_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end:                                           ; preds = %if.end6
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.60, i32 noundef 0, i32 noundef 3, ptr noundef %add.ptr) #10
  %arrayidx10 = getelementptr i8, ptr %call7.i, i32 43
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp11100.not = icmp eq i8 %11, 0
  br i1 %cmp11100.not, label %do.end.do.end26_crit_edge, label %do.end.land.rhs_crit_edge

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  br label %land.rhs

do.end.do.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

land.rhs:                                         ; preds = %do.end17.land.rhs_crit_edge, %do.end.land.rhs_crit_edge
  %i.0101 = phi i32 [ %inc23, %do.end17.land.rhs_crit_edge ], [ 0, %do.end.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %i.0101)
  %exitcond.not = icmp eq i32 %i.0101, 61
  br i1 %exitcond.not, label %land.rhs.do.end26_crit_edge, label %do.end17

land.rhs.do.end26_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

do.end17:                                         ; preds = %land.rhs
  %add = add nuw nsw i32 %i.0101, 3
  %arrayidx20 = getelementptr i8, ptr %add.ptr, i32 %add
  %12 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %13 to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %conv21) #10
  %inc23 = add nuw nsw i32 %i.0101, 1
  %14 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx10, align 1
  %conv = zext i8 %15 to i32
  %cmp11 = icmp ult i32 %inc23, %conv
  br i1 %cmp11, label %do.end17.land.rhs_crit_edge, label %do.end17.do.end26_crit_edge

do.end17.do.end26_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end26

do.end17.land.rhs_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

do.end26:                                         ; preds = %do.end17.do.end26_crit_edge, %land.rhs.do.end26_crit_edge, %do.end.do.end26_crit_edge
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #10
  br label %if.end29

if.end29:                                         ; preds = %do.end26, %if.end6.if.end29_crit_edge
  %arrayidx30 = getelementptr i8, ptr %call7.i, i32 43
  %16 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %17)
  %cmp32 = icmp eq i8 %17, 9
  br i1 %cmp32, label %land.lhs.true, label %if.end29.if.else_crit_edge

if.end29.if.else_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end29
  %arrayidx34 = getelementptr i8, ptr %call7.i, i32 52
  %18 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx34, align 4
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool36.not = icmp eq i8 %20, 0
  br i1 %tobool36.not, label %land.lhs.true.if.else_crit_edge, label %if.then37

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then37:                                        ; preds = %land.lhs.true
  %arrayidx38 = getelementptr i8, ptr %call7.i, i32 47
  %21 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %22 to i16
  %shl = shl nuw i16 %conv39, 8
  %arrayidx40 = getelementptr i8, ptr %call7.i, i32 46
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx40, align 2
  %conv41 = zext i8 %24 to i16
  %or = or i16 %shl, %conv41
  %last_rc_key = getelementptr inbounds %struct.pctv452e_state, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %last_rc_key to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %or, ptr %last_rc_key, align 2
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp43 = icmp sgt i32 %26, 2
  br i1 %cmp43, label %do.end48, label %if.then37.if.end55_crit_edge

if.then37.if.end55_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

do.end48:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx40, align 2
  %conv51 = zext i8 %28 to i32
  %29 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx38, align 1
  %conv53 = zext i8 %30 to i32
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.60, i32 noundef %conv51, i32 noundef %conv53) #10
  br label %if.end55

if.end55:                                         ; preds = %do.end48, %if.then37.if.end55_crit_edge
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %31 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rc_dev, align 8
  %33 = ptrtoint ptr %last_rc_key to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %last_rc_key, align 2
  %conv57 = zext i16 %34 to i64
  tail call void @rc_keydown(ptr noundef %32, i32 noundef 2, i64 noundef %conv57, i8 noundef zeroext 0) #7
  br label %ret65

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end29.if.else_crit_edge
  %last_rc_key58 = getelementptr inbounds %struct.pctv452e_state, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %last_rc_key58 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %last_rc_key58, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool59.not = icmp eq i16 %36, 0
  br i1 %tobool59.not, label %if.else.ret65_crit_edge, label %if.then60

if.else.ret65_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret65

if.then60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %rc_dev61 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %37 = ptrtoint ptr %rc_dev61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rc_dev61, align 8
  tail call void @rc_keyup(ptr noundef %38) #7
  %39 = ptrtoint ptr %last_rc_key58 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %last_rc_key58, align 2
  br label %ret65

ret65:                                            ; preds = %if.then60, %if.else.ret65_crit_edge, %if.end55, %if.end.ret65_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %ret65, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %ret65 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_set_frequency(ptr noundef %fe, i32 noundef %frequency) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %0 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bandwidth_hz, align 4
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %frequency, ptr %dtv_property_cache, align 4
  store i32 0, ptr %bandwidth_hz, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %3 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %4(ptr noundef %fe) #7
  %5 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %bandwidth_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_get_frequency(ptr noundef %fe, ptr noundef %frequency) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 9
  %0 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_frequency, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %fe, ptr noundef %frequency) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.29) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_set_bandwidth(ptr noundef %fe, i32 noundef %bandwidth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %0 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dtv_property_cache, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %bandwidth, ptr %bandwidth_hz, align 4
  store i32 0, ptr %dtv_property_cache, align 4
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %3 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_params, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %4(ptr noundef %fe) #7
  %5 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.30) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stb6100_get_bandwidth(ptr noundef %fe, ptr noundef %bandwidth) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %get_bandwidth = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 10
  %0 = ptrtoint ptr %get_bandwidth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %get_bandwidth, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %entry
  %call = tail call i32 %1(ptr noundef %fe, ptr noundef %bandwidth) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.31) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt3650_ci_read_attribute_mem(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !195
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %3 = lshr i32 %address, 8
  %4 = trunc i32 %3 to i8
  %conv = and i8 %4, 15
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %buf, align 1
  %conv1 = trunc i32 %address to i8
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv1, ptr %2, align 1
  %data1.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %7 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data1.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  %ca_mutex.i = getelementptr inbounds %struct.pctv452e_state, ptr %10, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex.i, i32 noundef 0) #7
  %call.i = call fastcc i32 @tt3650_ci_msg(ptr noundef %8, i8 noundef zeroext 67, ptr noundef nonnull %buf, i32 noundef 2, i32 noundef 3) #7
  call void @mutex_unlock(ptr noundef %ca_mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %0, align 1
  %conv8 = zext i8 %12 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv8, %if.end6 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt3650_ci_write_attribute_mem(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %address, i8 noundef zeroext %value) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %2 = lshr i32 %address, 8
  %3 = trunc i32 %2 to i8
  %conv = and i8 %3, 15
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %buf, align 1
  %conv1 = trunc i32 %address to i8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv1, ptr %1, align 1
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %value, ptr %0, align 1
  %data1.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %7 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data1.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %8, i32 0, i32 18
  %9 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i, align 8
  %ca_mutex.i = getelementptr inbounds %struct.pctv452e_state, ptr %10, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex.i, i32 noundef 0) #7
  %call.i = call fastcc i32 @tt3650_ci_msg(ptr noundef %8, i8 noundef zeroext 68, ptr noundef nonnull %buf, i32 noundef 3, i32 noundef 3) #7
  call void @mutex_unlock(ptr noundef %ca_mutex.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt3650_ci_read_cam_control(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %0, align 1, !annotation !195
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = and i8 %address, 3
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %buf, align 1
  %data1.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %4 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %ca_mutex.i = getelementptr inbounds %struct.pctv452e_state, ptr %7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex.i, i32 noundef 0) #7
  %call.i = call fastcc i32 @tt3650_ci_msg(ptr noundef %5, i8 noundef zeroext 65, ptr noundef nonnull %buf, i32 noundef 1, i32 noundef 2) #7
  call void @mutex_unlock(ptr noundef %ca_mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2 = icmp slt i32 %call.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %0, align 1
  %conv7 = zext i8 %9 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv7, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt3650_ci_write_cam_control(ptr nocapture noundef readonly %ca, i32 noundef %slot, i8 noundef zeroext %address, i8 noundef zeroext %value) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %address, ptr %buf, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %value, ptr %0, align 1
  %data1.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %3 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data1.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  %ca_mutex.i = getelementptr inbounds %struct.pctv452e_state, ptr %6, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex.i, i32 noundef 0) #7
  %call.i = call fastcc i32 @tt3650_ci_msg(ptr noundef %4, i8 noundef zeroext 66, ptr noundef nonnull %buf, i32 noundef 2, i32 noundef 2) #7
  call void @mutex_unlock(ptr noundef %ca_mutex.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt3650_ci_slot_reset(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  %buf = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf, align 1
  %ca_mutex = getelementptr inbounds %struct.pctv452e_state, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex, i32 noundef 0) #7
  %call = call fastcc i32 @tt3650_ci_msg(ptr noundef %1, i8 noundef zeroext 69, ptr noundef nonnull %buf, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1.not = icmp eq i32 %call, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.failed_crit_edge

if.end.failed_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end3:                                          ; preds = %if.end
  call void @msleep(i32 noundef 500) #7
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %buf, align 1
  %call6 = call fastcc i32 @tt3650_ci_msg(ptr noundef %1, i8 noundef zeroext 69, ptr noundef nonnull %buf, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end9, label %if.end3.failed_crit_edge

if.end3.failed_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 500) #7
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %buf, align 1
  %call12 = call fastcc i32 @tt3650_ci_msg(ptr noundef %1, i8 noundef zeroext 70, ptr noundef nonnull %buf, i32 noundef 1, i32 noundef 1)
  br label %failed

failed:                                           ; preds = %if.end9, %if.end3.failed_crit_edge, %if.end.failed_crit_edge
  %ret.0 = phi i32 [ %call, %if.end.failed_crit_edge ], [ %call6, %if.end3.failed_crit_edge ], [ %call12, %if.end9 ]
  call void @mutex_unlock(ptr noundef %ca_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %failed, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %failed ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt3650_ci_slot_shutdown(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  %buf.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not.i = icmp eq i32 %slot, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.tt3650_ci_set_video_port.exit_crit_edge

entry.tt3650_ci_set_video_port.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tt3650_ci_set_video_port.exit

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %buf.i, align 1
  %data1.i.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %1 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data1.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i.i, align 8
  %ca_mutex.i.i = getelementptr inbounds %struct.pctv452e_state, ptr %4, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex.i.i, i32 noundef 0) #7
  %call.i.i = call fastcc i32 @tt3650_ci_msg(ptr noundef %2, i8 noundef zeroext 70, ptr noundef nonnull %buf.i, i32 noundef 1, i32 noundef 1) #7
  call void @mutex_unlock(ptr noundef %ca_mutex.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.end.i.tt3650_ci_set_video_port.exit_crit_edge, label %if.end5.i

if.end.i.tt3650_ci_set_video_port.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tt3650_ci_set_video_port.exit

if.end5.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp8.not.i = icmp eq i8 %6, 0
  br i1 %cmp8.not.i, label %if.end5.i.tt3650_ci_set_video_port.exit_crit_edge, label %do.end13.i

if.end5.i.tt3650_ci_set_video_port.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tt3650_ci_set_video_port.exit

do.end13.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.46) #10
  br label %tt3650_ci_set_video_port.exit

tt3650_ci_set_video_port.exit:                    ; preds = %do.end13.i, %if.end5.i.tt3650_ci_set_video_port.exit_crit_edge, %if.end.i.tt3650_ci_set_video_port.exit_crit_edge, %entry.tt3650_ci_set_video_port.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end13.i ], [ -22, %entry.tt3650_ci_set_video_port.exit_crit_edge ], [ %call.i.i, %if.end.i.tt3650_ci_set_video_port.exit_crit_edge ], [ 0, %if.end5.i.tt3650_ci_set_video_port.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt3650_ci_slot_ts_enable(ptr nocapture noundef readonly %ca, i32 noundef %slot) #2 align 64 {
entry:
  %buf.i = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not.i = icmp eq i32 %slot, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.tt3650_ci_set_video_port.exit_crit_edge

entry.tt3650_ci_set_video_port.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %tt3650_ci_set_video_port.exit

if.end.i:                                         ; preds = %entry
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %buf.i, align 1
  %data1.i.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %1 = ptrtoint ptr %data1.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data1.i.i, align 4
  %priv.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i.i, align 8
  %ca_mutex.i.i = getelementptr inbounds %struct.pctv452e_state, ptr %4, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex.i.i, i32 noundef 0) #7
  %call.i.i = call fastcc i32 @tt3650_ci_msg(ptr noundef %2, i8 noundef zeroext 70, ptr noundef nonnull %buf.i, i32 noundef 1, i32 noundef 1) #7
  call void @mutex_unlock(ptr noundef %ca_mutex.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i, label %if.end.i.tt3650_ci_set_video_port.exit_crit_edge, label %if.end5.i

if.end.i.tt3650_ci_set_video_port.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tt3650_ci_set_video_port.exit

if.end5.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp8.not.i = icmp eq i8 %6, 1
  br i1 %cmp8.not.i, label %if.end5.i.tt3650_ci_set_video_port.exit_crit_edge, label %do.end13.i

if.end5.i.tt3650_ci_set_video_port.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tt3650_ci_set_video_port.exit

do.end13.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.45) #10
  br label %tt3650_ci_set_video_port.exit

tt3650_ci_set_video_port.exit:                    ; preds = %do.end13.i, %if.end5.i.tt3650_ci_set_video_port.exit_crit_edge, %if.end.i.tt3650_ci_set_video_port.exit_crit_edge, %entry.tt3650_ci_set_video_port.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %do.end13.i ], [ -22, %entry.tt3650_ci_set_video_port.exit_crit_edge ], [ %call.i.i, %if.end.i.tt3650_ci_set_video_port.exit_crit_edge ], [ 0, %if.end5.i.tt3650_ci_set_video_port.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tt3650_ci_poll_slot_status(ptr nocapture noundef readonly %ca, i32 noundef %slot, i32 noundef %open) #2 align 64 {
entry:
  %buf = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #7
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !195
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slot)
  %cmp.not = icmp eq i32 %slot, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data1.i = getelementptr inbounds %struct.dvb_ca_en50221, ptr %ca, i32 0, i32 11
  %1 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data1.i, align 4
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %2, i32 0, i32 18
  %3 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv.i, align 8
  %ca_mutex.i = getelementptr inbounds %struct.pctv452e_state, ptr %4, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ca_mutex.i, i32 noundef 0) #7
  %call.i = call fastcc i32 @tt3650_ci_msg(ptr noundef %2, i8 noundef zeroext 64, ptr noundef nonnull %buf, i32 noundef 0, i32 noundef 1) #7
  call void @mutex_unlock(ptr noundef %ca_mutex.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.not = icmp eq i32 %call.i, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp4 = icmp eq i8 %6, 1
  %. = select i1 %cmp4, i32 5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %., %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_ca_en50221_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tt3650_ci_msg(ptr noundef %d, i8 noundef zeroext %cmd, ptr noundef %data, i32 noundef %write_len, i32 noundef %read_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tobool.not = icmp eq ptr %data, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 64) #11
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %c = getelementptr inbounds %struct.pctv452e_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %c, align 4
  %inc = add i8 %4, 1
  store i8 %inc, ptr %c, align 4
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -86, ptr %call7.i, align 8
  %arrayidx7 = getelementptr i8, ptr %call7.i, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %4, ptr %arrayidx7, align 1
  %arrayidx8 = getelementptr i8, ptr %call7.i, i32 2
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %cmd, ptr %arrayidx8, align 2
  %conv = trunc i32 %write_len to i8
  %arrayidx9 = getelementptr i8, ptr %call7.i, i32 3
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx9, align 1
  %add.ptr = getelementptr i8, ptr %call7.i, i32 4
  %9 = call ptr @memcpy(ptr %add.ptr, ptr %data, i32 %write_len)
  %10 = trunc i32 %write_len to i16
  %conv12 = add i16 %10, 4
  %call14 = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef nonnull %call7.i, i16 noundef zeroext %conv12, ptr noundef nonnull %call7.i, i16 noundef zeroext 64, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end18, label %if.end6.do.end34_crit_edge

if.end6.do.end34_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

if.end18:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %12)
  %cmp21.not = icmp eq i8 %12, 85
  br i1 %cmp21.not, label %lor.lhs.false23, label %if.end18.do.end34_crit_edge

if.end18.do.end34_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

lor.lhs.false23:                                  ; preds = %if.end18
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %14)
  %cmp27.not = icmp eq i8 %4, %14
  br i1 %cmp27.not, label %if.end30, label %lor.lhs.false23.do.end34_crit_edge

lor.lhs.false23.do.end34_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

if.end30:                                         ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #9
  %15 = call ptr @memcpy(ptr %data, ptr %add.ptr, i32 %read_len)
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

do.end34:                                         ; preds = %lor.lhs.false23.do.end34_crit_edge, %if.end18.do.end34_crit_edge, %if.end6.do.end34_crit_edge
  %ret.0 = phi i32 [ %call14, %if.end6.do.end34_crit_edge ], [ -5, %if.end18.do.end34_crit_edge ], [ -5, %lor.lhs.false23.do.end34_crit_edge ]
  %conv36 = zext i8 %4 to i32
  %conv37 = zext i8 %cmd to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %ret.0, i32 noundef 170, i32 noundef %conv36, i32 noundef %conv37, i32 noundef 3, ptr noundef nonnull %call7.i) #10
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %if.end30, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ %ret.0, %do.end34 ], [ 0, %if.end30 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_generic_rw(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_set_interface(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keydown(ptr noundef, i32 noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_keyup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pctv452e_i2c_xfer(ptr nocapture noundef readonly %adapter, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %adapter, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 7
  %call1 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup31_crit_edge, label %for.cond.preheader

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp251 = icmp sgt i32 %num, 0
  br i1 %cmp251, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.052 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.052
  %flags = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.052, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 4
  %conv12 = trunc i16 %6 to i8
  %buf14 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.052, i32 3
  %7 = ptrtoint ptr %buf14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buf14, align 4
  %len16 = getelementptr %struct.i2c_msg, ptr %msg, i32 %i.052, i32 2
  %9 = ptrtoint ptr %len16 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %len16, align 4
  %conv17 = trunc i16 %10 to i8
  %conv17. = select i1 %tobool.not, i8 %conv17, i8 0
  %.conv17 = select i1 %tobool.not, i8 0, i8 %conv17
  %. = select i1 %tobool.not, ptr %8, ptr null
  %.54 = select i1 %tobool.not, ptr null, ptr %8
  %call19 = tail call fastcc i32 @pctv452e_i2c_msg(ptr noundef %1, i8 noundef zeroext %conv12, ptr noundef %., i8 noundef zeroext %conv17., ptr noundef %.54, i8 noundef zeroext %.conv17)
  %conv20 = zext i8 %.conv17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call19, i32 %conv20)
  %cmp21 = icmp slt i32 %call19, %conv20
  br i1 %cmp21, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, %num
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %i.052, %for.body.for.end_crit_edge ], [ %num, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #7
  br label %cleanup31

cleanup31:                                        ; preds = %for.end, %entry.cleanup31_crit_edge
  %retval.0 = phi i32 [ %i.0.lcssa, %for.end ], [ -11, %entry.cleanup31_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pctv452e_i2c_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pctv452e_i2c_msg(ptr noundef %d, i8 noundef zeroext %addr, ptr nocapture noundef readonly %snd_buf, i8 noundef zeroext %snd_len, ptr nocapture noundef writeonly %rcv_buf, i8 noundef zeroext %rcv_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 18
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 64) #11
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %c = getelementptr inbounds %struct.pctv452e_state, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %c to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %c, align 4
  %inc = add i8 %4, 1
  store i8 %inc, ptr %c, align 4
  %conv = zext i8 %snd_len to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %snd_len)
  %cmp = icmp ugt i8 %snd_len, 57
  %.pre = zext i8 %rcv_len to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %rcv_len)
  %cmp3 = icmp ugt i8 %rcv_len, 57
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %if.end.do.end_crit_edge, label %if.end6

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -86, ptr %call7.i, align 8
  %arrayidx7 = getelementptr i8, ptr %call7.i, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %4, ptr %arrayidx7, align 1
  %arrayidx8 = getelementptr i8, ptr %call7.i, i32 2
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 49, ptr %arrayidx8, align 2
  %add = add nuw nsw i8 %snd_len, 3
  %arrayidx11 = getelementptr i8, ptr %call7.i, i32 3
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %add, ptr %arrayidx11, align 1
  %shl = shl i8 %addr, 1
  %arrayidx14 = getelementptr i8, ptr %call7.i, i32 4
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %shl, ptr %arrayidx14, align 4
  %arrayidx15 = getelementptr i8, ptr %call7.i, i32 5
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %snd_len, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr i8, ptr %call7.i, i32 6
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %rcv_len, ptr %arrayidx16, align 2
  %add.ptr = getelementptr i8, ptr %call7.i, i32 7
  %12 = call ptr @memcpy(ptr %add.ptr, ptr %snd_buf, i32 %conv)
  %13 = zext i8 %snd_len to i16
  %conv20 = add nuw nsw i16 %13, 7
  %call21 = tail call i32 @dvb_usb_generic_rw(ptr noundef %d, ptr noundef nonnull %call7.i, i16 noundef zeroext %conv20, ptr noundef nonnull %call7.i, i16 noundef zeroext 64, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end6.do.end_crit_edge, label %if.end25

if.end6.do.end_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end25:                                         ; preds = %if.end6
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %15)
  %cmp28.not = icmp eq i8 %15, 85
  br i1 %cmp28.not, label %lor.lhs.false30, label %if.end25.do.end_crit_edge

if.end25.do.end_crit_edge:                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false30:                                  ; preds = %if.end25
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %17)
  %cmp34.not = icmp eq i8 %4, %17
  br i1 %cmp34.not, label %if.end37, label %lor.lhs.false30.do.end_crit_edge

lor.lhs.false30.do.end_crit_edge:                 ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end37:                                         ; preds = %lor.lhs.false30
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx15, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %snd_len)
  %cmp41 = icmp ult i8 %19, %snd_len
  br i1 %cmp41, label %if.end37.do.end_crit_edge, label %lor.lhs.false43

if.end37.do.end_crit_edge:                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false43:                                  ; preds = %if.end37
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx16, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %rcv_len)
  %cmp47 = icmp ult i8 %21, %rcv_len
  br i1 %cmp47, label %lor.lhs.false43.do.end_crit_edge, label %if.end50

lor.lhs.false43.do.end_crit_edge:                 ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end50:                                         ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #9
  %22 = call ptr @memcpy(ptr %rcv_buf, ptr %add.ptr, i32 %.pre)
  br label %cleanup.sink.split

do.end:                                           ; preds = %lor.lhs.false43.do.end_crit_edge, %if.end37.do.end_crit_edge, %lor.lhs.false30.do.end_crit_edge, %if.end25.do.end_crit_edge, %if.end6.do.end_crit_edge, %if.end.do.end_crit_edge
  %ret.0 = phi i32 [ %call21, %if.end6.do.end_crit_edge ], [ -5, %lor.lhs.false30.do.end_crit_edge ], [ -5, %if.end25.do.end_crit_edge ], [ -121, %lor.lhs.false43.do.end_crit_edge ], [ -121, %if.end37.do.end_crit_edge ], [ -22, %if.end.do.end_crit_edge ]
  %conv54 = zext i8 %4 to i32
  %conv55 = zext i8 %addr to i32
  %shl56 = shl nuw nsw i32 %conv55, 1
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %ret.0, i32 noundef 170, i32 noundef %conv54, i32 noundef %shl56, i32 noundef %conv, i32 noundef %.pre, i32 noundef 7, ptr noundef nonnull %call7.i) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %if.end50
  %retval.0.ph = phi i32 [ %.pre, %if.end50 ], [ %ret.0, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pctv452e_read_mac_address(ptr noundef %d, ptr noundef %mac) #2 align 64 {
entry:
  %mem_addr = alloca [2 x i8], align 2
  %encoded_mac = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mem_addr) #7
  %0 = ptrtoint ptr %mem_addr to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 8140, ptr %mem_addr, align 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %encoded_mac) #7
  %i2c_mutex = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 7
  %1 = call ptr @memset(ptr %encoded_mac, i32 255, i32 20)
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %i2c_mutex, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.failed_crit_edge, label %if.end

entry.failed_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i8, ptr %mem_addr, i32 1
  %call2 = call fastcc i32 @pctv452e_i2c_msg(ptr noundef %d, i8 noundef zeroext 80, ptr noundef %add.ptr, i8 noundef zeroext 1, ptr noundef nonnull %encoded_mac, i8 noundef zeroext 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -121, i32 %call2)
  %cmp3 = icmp eq i32 %call2, -121
  br i1 %cmp3, label %if.then4, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = call fastcc i32 @pctv452e_i2c_msg(ptr noundef %d, i8 noundef zeroext 81, ptr noundef nonnull %mem_addr, i8 noundef zeroext 2, ptr noundef nonnull %encoded_mac, i8 noundef zeroext 20)
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  %ret.0 = phi i32 [ %call7, %if.then4 ], [ %call2, %if.end.if.end8_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %i2c_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %ret.0)
  %cmp10.not = icmp eq i32 %ret.0, 20
  br i1 %cmp10.not, label %if.end12, label %if.end8.failed_crit_edge

if.end8.failed_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end12:                                         ; preds = %if.end8
  %call14 = call i32 @ttpci_eeprom_decode_mac(ptr noundef %mac, ptr noundef nonnull %encoded_mac) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %if.end12.cleanup_crit_edge, label %if.end12.failed_crit_edge

if.end12.failed_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %failed

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

failed:                                           ; preds = %if.end12.failed_crit_edge, %if.end8.failed_crit_edge, %entry.failed_crit_edge
  %ret.1 = phi i32 [ -11, %entry.failed_crit_edge ], [ %ret.0, %if.end8.failed_crit_edge ], [ %call14, %if.end12.failed_crit_edge ]
  %2 = call ptr @memset(ptr %mac, i32 0, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end12.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %failed ], [ 0, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %encoded_mac) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mem_addr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ttpci_eeprom_decode_mac(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_usb_device_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dvb_ca_en50221_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !9, !11, !12, !14, !16, !18, !20, !22, !23, !25, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !63, !64, !66, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !105, !106, !107, !108, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !126, !127, !128, !130, !132, !133, !134, !135, !136, !137, !139, !140, !141, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !169, !171, !173, !174, !175, !176, !178, !180, !182, !184}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 30, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 31, i32 1}
!5 = !{ptr @__param_adapter_nr, !6, !"__param_adapter_nr", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 33, i32 1}
!7 = !{ptr @__UNIQUE_ID_adapter_nrtype388, !6, !"__UNIQUE_ID_adapter_nrtype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_adapter_nr389, !6, !"__UNIQUE_ID_adapter_nr389", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_dvb_usb_pctv452e__390_1100_pctv452e_usb_driver_init6, !10, !"__initcall__kmod_dvb_usb_pctv452e__390_1100_pctv452e_usb_driver_init6", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 1100, i32 1}
!11 = !{ptr @__exitcall_pctv452e_usb_driver_exit, !10, !"__exitcall_pctv452e_usb_driver_exit", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author391, !13, !"__UNIQUE_ID_author391", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 1102, i32 1}
!14 = !{ptr @__UNIQUE_ID_author392, !15, !"__UNIQUE_ID_author392", i1 false, i1 false}
!15 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 1103, i32 1}
!16 = !{ptr @__UNIQUE_ID_author393, !17, !"__UNIQUE_ID_author393", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 1104, i32 1}
!18 = !{ptr @__UNIQUE_ID_description394, !19, !"__UNIQUE_ID_description394", i1 false, i1 false}
!19 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 1105, i32 1}
!20 = !{ptr @__UNIQUE_ID_file395, !21, !"__UNIQUE_ID_file395", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 1106, i32 1}
!22 = !{ptr @__UNIQUE_ID_license396, !21, !"__UNIQUE_ID_license396", i1 false, i1 false}
!23 = !{ptr @debug, !24, !"debug", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 29, i32 12}
!25 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!26 = !{ptr @__param_str_adapter_nr, !6, !"__param_str_adapter_nr", i1 false, i1 false}
!27 = !{ptr @__param_arr_adapter_nr, !6, !"__param_arr_adapter_nr", i1 false, i1 false}
!28 = !{ptr @adapter_nr, !6, !"adapter_nr", i1 false, i1 false}
!29 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.1, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 1094, i32 16}
!32 = !{ptr @pctv452e_usb_driver, !33, !"pctv452e_usb_driver", i1 false, i1 false}
!33 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 1093, i32 26}
!34 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 972, i32 15}
!36 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 1007, i32 13}
!38 = !{ptr @pctv452e_properties, !39, !"pctv452e_properties", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 963, i32 41}
!40 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 916, i32 21}
!42 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @pctv452e_frontend_attach._entry, !41, !"_entry", i1 false, i1 false}
!47 = !{ptr @pctv452e_frontend_attach._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 924, i32 7}
!50 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @pctv452e_frontend_attach._entry.12, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @pctv452e_frontend_attach._entry_ptr.14, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 927, i32 4}
!56 = !{ptr @pctv452e_frontend_attach._entry.15, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pctv452e_frontend_attach._entry_ptr.17, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 931, i32 13}
!60 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @pctv452e_frontend_attach._entry.20, !59, !"_entry", i1 false, i1 false}
!63 = !{ptr @pctv452e_frontend_attach._entry_ptr.22, !59, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 935, i32 3}
!66 = !{ptr @pctv452e_frontend_attach._entry.23, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @pctv452e_frontend_attach._entry_ptr.25, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @stb0899_config, !69, !"stb0899_config", i1 false, i1 false}
!69 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 855, i32 30}
!70 = !{ptr @pctv452e_init_dev, !71, !"pctv452e_init_dev", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 654, i32 36}
!72 = !{ptr @stb0899_s2_init_2, !73, !"stb0899_s2_init_2", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/stb0899_cfg.h", i32 13, i32 37}
!74 = !{ptr @pctv452e_init_s1_demod, !75, !"pctv452e_init_s1_demod", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 722, i32 36}
!76 = !{ptr @stb0899_s2_init_4, !77, !"stb0899_s2_init_4", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/stb0899_cfg.h", i32 195, i32 36}
!78 = !{ptr @stb0899_s1_init_5, !79, !"stb0899_s1_init_5", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/stb0899_cfg.h", i32 219, i32 36}
!80 = !{ptr @pctv45e_postproc, !81, !"pctv45e_postproc", i1 false, i1 false}
!81 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 82, i32 32}
!82 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 44, i32 4}
!84 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @stb6100_set_frequency._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @stb6100_set_frequency._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 22, i32 4}
!90 = !{ptr @stb6100_get_frequency._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @stb6100_get_frequency._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 82, i32 4}
!94 = !{ptr @stb6100_set_bandwidth._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @stb6100_set_bandwidth._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/dvb-frontends/stb6100_cfg.h", i32 60, i32 4}
!98 = !{ptr @stb6100_get_bandwidth._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @stb6100_get_bandwidth._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @tt3650_ci_init.__key, !101, !"__key", i1 false, i1 false}
!101 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 385, i32 2}
!102 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 403, i32 3}
!105 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @tt3650_ci_init._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @tt3650_ci_init._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 408, i32 2}
!110 = !{ptr @tt3650_ci_init._entry.35, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @tt3650_ci_init._entry_ptr.37, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 116, i32 3}
!114 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @tt3650_ci_msg._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @tt3650_ci_msg._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.41, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 149, i32 2}
!119 = !{ptr @tt3650_ci_msg._entry.40, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @tt3650_ci_msg._entry_ptr.42, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.43, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 274, i32 3}
!123 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @tt3650_ci_set_video_port._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @tt3650_ci_set_video_port._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.45, !122, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @.str.46, !122, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @pctv452e_isl6423_config, !129, !"pctv452e_isl6423_config", i1 false, i1 false}
!129 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 87, i32 30}
!130 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 945, i32 6}
!132 = !{ptr @.str.48, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @.str.50, !131, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @pctv452e_tuner_attach._entry, !131, !"_entry", i1 false, i1 false}
!136 = !{ptr @pctv452e_tuner_attach._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.52, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 947, i32 3}
!139 = !{ptr @pctv452e_tuner_attach._entry.51, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @pctv452e_tuner_attach._entry_ptr.53, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @stb6100_config, !142, !"stb6100_config", i1 false, i1 false}
!142 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 901, i32 30}
!143 = !{ptr @.str.54, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 521, i32 2}
!145 = !{ptr @.str.55, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @pctv452e_power_ctrl._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @pctv452e_power_ctrl._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.57, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 538, i32 3}
!150 = !{ptr @pctv452e_power_ctrl._entry.56, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @pctv452e_power_ctrl._entry_ptr.58, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.59, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 593, i32 3}
!154 = !{ptr @.str.60, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @pctv452e_rc_query._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @pctv452e_rc_query._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 595, i32 4}
!159 = !{ptr @pctv452e_rc_query._entry.61, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @pctv452e_rc_query._entry_ptr.63, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.65, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 597, i32 3}
!163 = !{ptr @pctv452e_rc_query._entry.64, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @pctv452e_rc_query._entry_ptr.66, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.68, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 604, i32 4}
!167 = !{ptr @pctv452e_rc_query._entry.67, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @pctv452e_rc_query._entry_ptr.69, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @pctv452e_i2c_algo, !170, !"pctv452e_i2c_algo", i1 false, i1 false}
!170 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 907, i32 29}
!171 = !{ptr @.str.70, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 465, i32 2}
!173 = !{ptr @.str.71, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @pctv452e_i2c_msg._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @pctv452e_i2c_msg._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.72, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 1025, i32 15}
!178 = !{ptr @.str.73, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 1061, i32 13}
!180 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 1065, i32 13}
!182 = !{ptr @tt_connect_s2_3600_properties, !183, !"tt_connect_s2_3600_properties", i1 false, i1 false}
!183 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 1015, i32 41}
!184 = !{ptr @pctv452e_usb_table, !185, !"pctv452e_usb_table", i1 false, i1 false}
!185 = !{!"../drivers/media/usb/dvb-usb/pctv452e.c", i32 954, i32 29}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 1, !"min_enum_size", i32 4}
!188 = !{i32 8, !"branch-target-enforcement", i32 0}
!189 = !{i32 8, !"sign-return-address", i32 0}
!190 = !{i32 8, !"sign-return-address-all", i32 0}
!191 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!195 = !{!"auto-init"}
